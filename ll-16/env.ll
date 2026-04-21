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
@dev_debug = internal unnamed_addr global i1 false, align 1, !dbg !636
@report_signal_handling = internal unnamed_addr global i1 false, align 1, !dbg !637
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
@sig_mask_changed = internal unnamed_addr global i1 false, align 1, !dbg !638
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
@usvars_alloc = internal global i64 0, align 8, !dbg !531
@usvars = internal unnamed_addr global ptr null, align 8, !dbg !533
@.str.93 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !536
@.str.94 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1, !dbg !538
@block_signals = internal global %struct.__sigset_t zeroinitializer, align 8, !dbg !545
@unblock_signals = internal global %struct.__sigset_t zeroinitializer, align 8, !dbg !555
@.str.95 = private unnamed_addr constant [26 x i8] c"failed to block signal %d\00", align 1, !dbg !540
@.str.96 = private unnamed_addr constant [15 x i8] c"split -S:  %s\0A\00", align 1, !dbg !557
@.str.97 = private unnamed_addr constant [14 x i8] c" into:    %s\0A\00", align 1, !dbg !559
@.str.98 = private unnamed_addr constant [14 x i8] c"     &    %s\0A\00", align 1, !dbg !561
@.str.99 = private unnamed_addr constant [48 x i8] c"'\\c' must not appear in double-quoted -S string\00", align 1, !dbg !563
@.str.100 = private unnamed_addr constant [41 x i8] c"invalid backslash at end of string in -S\00", align 1, !dbg !568
@.str.101 = private unnamed_addr constant [29 x i8] c"invalid sequence '\\%c' in -S\00", align 1, !dbg !573
@.str.102 = private unnamed_addr constant [53 x i8] c"only ${VARNAME} expansion is supported, error at: %s\00", align 1, !dbg !578
@.str.103 = private unnamed_addr constant [25 x i8] c"expanding ${%s} into %s\0A\00", align 1, !dbg !583
@.str.104 = private unnamed_addr constant [34 x i8] c"replacing ${%s} with null string\0A\00", align 1, !dbg !588
@.str.105 = private unnamed_addr constant [34 x i8] c"no terminating quote in -S string\00", align 1, !dbg !593
@vnlen = internal global i64 0, align 8, !dbg !595
@varname = internal unnamed_addr global ptr null, align 8, !dbg !597
@.str.106 = private unnamed_addr constant [14 x i8] c"unset:    %s\0A\00", align 1, !dbg !599
@.str.107 = private unnamed_addr constant [16 x i8] c"cannot unset %s\00", align 1, !dbg !601
@.str.108 = private unnamed_addr constant [42 x i8] c"failed to get signal action for signal %d\00", align 1, !dbg !603
@.str.109 = private unnamed_addr constant [42 x i8] c"failed to set signal action for signal %d\00", align 1, !dbg !608
@.str.110 = private unnamed_addr constant [6 x i8] c"SIG%d\00", align 1, !dbg !610
@.str.111 = private unnamed_addr constant [30 x i8] c"Reset signal %s (%d) to %s%s\0A\00", align 1, !dbg !612
@.str.112 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1, !dbg !614
@.str.113 = private unnamed_addr constant [7 x i8] c"IGNORE\00", align 1, !dbg !616
@.str.114 = private unnamed_addr constant [19 x i8] c" (failure ignored)\00", align 1, !dbg !618
@.str.115 = private unnamed_addr constant [34 x i8] c"failed to get signal process mask\00", align 1, !dbg !620
@.str.116 = private unnamed_addr constant [6 x i8] c"BLOCK\00", align 1, !dbg !622
@.str.117 = private unnamed_addr constant [8 x i8] c"UNBLOCK\00", align 1, !dbg !624
@.str.118 = private unnamed_addr constant [31 x i8] c"signal %s (%d) mask set to %s\0A\00", align 1, !dbg !626
@.str.119 = private unnamed_addr constant [34 x i8] c"failed to set signal process mask\00", align 1, !dbg !631
@.str.120 = private unnamed_addr constant [21 x i8] c"%-10s (%2d): %s%s%s\0A\00", align 1, !dbg !633
@.str.48 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1, !dbg !639
@.str.1.49 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1, !dbg !642
@.str.52 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !644
@Version = dso_local local_unnamed_addr global ptr @.str.52, align 8, !dbg !647
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !651
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !664
@.str.57 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !656
@.str.1.58 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !658
@.str.2.59 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !660
@.str.3.60 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !662
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !666
@stderr = external local_unnamed_addr global ptr, align 8
@.str.72 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !672
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !709
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !674
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !699
@.str.1.78 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !701
@.str.2.80 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !703
@.str.3.79 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !705
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !707
@.str.4.73 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !711
@.str.5.74 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !713
@.str.6.75 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !715
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !720
@.str.121 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !726
@.str.1.122 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !728
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !730
@.str.125 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !761
@.str.1.126 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !764
@.str.2.127 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !766
@.str.3.128 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !768
@.str.4.129 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !770
@.str.5.130 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !772
@.str.6.131 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !774
@.str.7.132 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !776
@.str.8.133 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !778
@.str.9.134 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !780
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.125, ptr @.str.1.126, ptr @.str.2.127, ptr @.str.3.128, ptr @.str.4.129, ptr @.str.5.130, ptr @.str.6.131, ptr @.str.7.132, ptr @.str.8.133, ptr @.str.9.134, ptr null], align 8, !dbg !782
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !793
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !807
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !845
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !852
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !809
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !854
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !797
@.str.10.137 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !814
@.str.11.135 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !816
@.str.12.138 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !818
@.str.13.136 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !820
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !822
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 4, !dbg !860
@.str.147 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1, !dbg !866
@.str.1.148 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1, !dbg !868
@.str.2.151 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1, !dbg !870
@.str.152 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !880
@.str.1.153 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !883
@.str.2.154 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !885
@.str.3.155 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !887
@.str.4.156 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !889
@.str.5.157 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !891
@.str.6.158 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !896
@.str.7.159 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !898
@.str.8.160 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !900
@.str.9.161 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !902
@.str.10.162 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !907
@.str.11.163 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !912
@.str.12.164 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !917
@.str.13.165 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !919
@.str.14.166 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !924
@.str.15.167 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !926
@.str.16.168 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !931
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.173 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !933
@.str.18.174 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !935
@.str.19.175 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !937
@.str.20.176 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !939
@.str.21.177 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !941
@.str.22.178 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !943
@.str.23.179 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !945
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !947
@exit_failure = dso_local global i32 1, align 4, !dbg !955
@.str.198 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !961
@.str.1.196 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !964
@.str.2.197 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !966
@.str.209 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !968
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !971
@.str.214 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !986
@.str.1.215 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !989

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1062 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1064, metadata !DIExpression()), !dbg !1065
  %2 = icmp eq i32 %0, 0, !dbg !1066
  br i1 %2, label %8, label %3, !dbg !1068

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1069, !tbaa !1071
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !1069
  %6 = load ptr, ptr @program_name, align 8, !dbg !1069, !tbaa !1071
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !1069
  br label %53, !dbg !1069

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !1075
  %10 = load ptr, ptr @program_name, align 8, !dbg !1075, !tbaa !1071
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #40, !dbg !1075
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !1077
  %13 = load ptr, ptr @stdout, align 8, !dbg !1077, !tbaa !1071
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1077
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #40, !dbg !1078
  %16 = load ptr, ptr @stdout, align 8, !dbg !1078, !tbaa !1071
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1078
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !1082
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !1082
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !1083
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !1083
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !1084
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !1084
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !1085
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1085
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !1086
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1086
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #40, !dbg !1087
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1087
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #40, !dbg !1088
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1088
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #40, !dbg !1089
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !1089
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #40, !dbg !1090
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !1090
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #40, !dbg !1091
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !1091
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #40, !dbg !1092
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !1092
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #40, !dbg !1093
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !1093
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #40, !dbg !1094
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !1094
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #40, !dbg !1095
  %32 = load ptr, ptr @stdout, align 8, !dbg !1095, !tbaa !1071
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !1095
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #40, !dbg !1096
  %35 = load ptr, ptr @stdout, align 8, !dbg !1096, !tbaa !1071
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !1096
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1097, metadata !DIExpression()), !dbg !1102
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.71, i32 noundef 5) #40, !dbg !1104
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.3) #40, !dbg !1104
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1105, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1115, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata ptr poison, metadata !1115, metadata !DIExpression()), !dbg !1120
  tail call void @emit_bug_reporting_address() #40, !dbg !1122
  %39 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !1123
  call void @llvm.dbg.value(metadata ptr %39, metadata !1118, metadata !DIExpression()), !dbg !1120
  %40 = icmp eq ptr %39, null, !dbg !1124
  br i1 %40, label %48, label %41, !dbg !1126

41:                                               ; preds = %8
  %42 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(4) @.str.75, i64 noundef 3) #41, !dbg !1127
  %43 = icmp eq i32 %42, 0, !dbg !1127
  br i1 %43, label %48, label %44, !dbg !1128

44:                                               ; preds = %41
  %45 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.76, i32 noundef 5) #40, !dbg !1129
  %46 = load ptr, ptr @stdout, align 8, !dbg !1129, !tbaa !1071
  %47 = tail call i32 @fputs_unlocked(ptr noundef %45, ptr noundef %46), !dbg !1129
  br label %48, !dbg !1131

48:                                               ; preds = %8, %41, %44
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1115, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1119, metadata !DIExpression()), !dbg !1120
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #40, !dbg !1132
  %50 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %49, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.3) #40, !dbg !1132
  %51 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #40, !dbg !1133
  %52 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %51, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.79) #40, !dbg !1133
  br label %53

53:                                               ; preds = %48, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !1134
  unreachable, !dbg !1134
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1135 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1139 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1145 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1148 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !304 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !308, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata ptr %0, metadata !309, metadata !DIExpression()), !dbg !1151
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1152, !tbaa !1153
  %3 = icmp eq i32 %2, -1, !dbg !1155
  br i1 %3, label %4, label %16, !dbg !1156

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.44) #40, !dbg !1157
  call void @llvm.dbg.value(metadata ptr %5, metadata !310, metadata !DIExpression()), !dbg !1158
  %6 = icmp eq ptr %5, null, !dbg !1159
  br i1 %6, label %14, label %7, !dbg !1160

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1161, !tbaa !1162
  %9 = icmp eq i8 %8, 0, !dbg !1161
  br i1 %9, label %14, label %10, !dbg !1163

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1164, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata ptr @.str.45, metadata !1170, metadata !DIExpression()), !dbg !1171
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.45) #41, !dbg !1173
  %12 = icmp eq i32 %11, 0, !dbg !1174
  %13 = zext i1 %12 to i32, !dbg !1163
  br label %14, !dbg !1163

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1175, !tbaa !1153
  br label %16, !dbg !1176

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1177
  %18 = icmp eq i32 %17, 0, !dbg !1177
  br i1 %18, label %22, label %19, !dbg !1179

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1180, !tbaa !1071
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1180
  br label %122, !dbg !1182

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !313, metadata !DIExpression()), !dbg !1151
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.46) #41, !dbg !1183
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1184
  call void @llvm.dbg.value(metadata ptr %24, metadata !314, metadata !DIExpression()), !dbg !1151
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !1185
  call void @llvm.dbg.value(metadata ptr %25, metadata !315, metadata !DIExpression()), !dbg !1151
  %26 = icmp eq ptr %25, null, !dbg !1186
  br i1 %26, label %54, label %27, !dbg !1187

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1188
  br i1 %28, label %54, label %29, !dbg !1189

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !316, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 0, metadata !320, metadata !DIExpression()), !dbg !1190
  %30 = icmp ult ptr %24, %25, !dbg !1191
  br i1 %30, label %31, label %52, !dbg !1192

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !1151
  %33 = load ptr, ptr %32, align 8, !tbaa !1071
  br label %34, !dbg !1192

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !316, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %36, metadata !320, metadata !DIExpression()), !dbg !1190
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1193
  call void @llvm.dbg.value(metadata ptr %37, metadata !316, metadata !DIExpression()), !dbg !1190
  %38 = load i8, ptr %35, align 1, !dbg !1193, !tbaa !1162
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1193
  %41 = load i16, ptr %40, align 2, !dbg !1193, !tbaa !1194
  %42 = freeze i16 %41, !dbg !1196
  %43 = lshr i16 %42, 13, !dbg !1196
  %44 = and i16 %43, 1, !dbg !1196
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1197
  call void @llvm.dbg.value(metadata i64 %46, metadata !320, metadata !DIExpression()), !dbg !1190
  %47 = icmp ult ptr %37, %25, !dbg !1191
  %48 = icmp ult i64 %46, 2, !dbg !1198
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1198
  br i1 %49, label %34, label %50, !dbg !1192, !llvm.loop !1199

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1201
  br i1 %51, label %52, label %54, !dbg !1203

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1203

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !1151
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !313, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata ptr %55, metadata !315, metadata !DIExpression()), !dbg !1151
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.47) #41, !dbg !1204
  call void @llvm.dbg.value(metadata i64 %57, metadata !321, metadata !DIExpression()), !dbg !1151
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1205
  call void @llvm.dbg.value(metadata ptr %58, metadata !322, metadata !DIExpression()), !dbg !1151
  br label %59, !dbg !1206

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !1151
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !313, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata ptr %60, metadata !322, metadata !DIExpression()), !dbg !1151
  %62 = load i8, ptr %60, align 1, !dbg !1207, !tbaa !1162
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !1208

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1209
  %65 = load i8, ptr %64, align 1, !dbg !1212, !tbaa !1162
  %66 = icmp ne i8 %65, 45, !dbg !1213
  %67 = select i1 %66, i1 %61, i1 false, !dbg !1214
  br label %68, !dbg !1214

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !313, metadata !DIExpression()), !dbg !1151
  %70 = tail call ptr @__ctype_b_loc() #43, !dbg !1215
  %71 = load ptr, ptr %70, align 8, !dbg !1215, !tbaa !1071
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1215
  %74 = load i16, ptr %73, align 2, !dbg !1215, !tbaa !1194
  %75 = and i16 %74, 8192, !dbg !1215
  %76 = icmp eq i16 %75, 0, !dbg !1215
  br i1 %76, label %90, label %77, !dbg !1217

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1218
  br i1 %78, label %92, label %79, !dbg !1221

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1222
  %81 = load i8, ptr %80, align 1, !dbg !1222, !tbaa !1162
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1222
  %84 = load i16, ptr %83, align 2, !dbg !1222, !tbaa !1194
  %85 = and i16 %84, 8192, !dbg !1222
  %86 = icmp eq i16 %85, 0, !dbg !1222
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !1223
  br i1 %89, label %90, label %92, !dbg !1223

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1224
  call void @llvm.dbg.value(metadata ptr %91, metadata !322, metadata !DIExpression()), !dbg !1151
  br label %59, !dbg !1206, !llvm.loop !1225

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1227
  %94 = load ptr, ptr @stdout, align 8, !dbg !1227, !tbaa !1071
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1227
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1164, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1164, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1164, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1164, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1164, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1164, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1164, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1164, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1164, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1164, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !378, metadata !DIExpression()), !dbg !1151
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.61, i64 noundef 6) #41, !dbg !1248
  %97 = icmp eq i32 %96, 0, !dbg !1248
  br i1 %97, label %101, label %98, !dbg !1250

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.62, i64 noundef 9) #41, !dbg !1251
  %100 = icmp eq i32 %99, 0, !dbg !1251
  br i1 %100, label %101, label %104, !dbg !1252

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1253
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #40, !dbg !1253
  br label %107, !dbg !1255

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1256
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #40, !dbg !1256
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1258, !tbaa !1071
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.67, ptr noundef %108), !dbg !1258
  %110 = load ptr, ptr @stdout, align 8, !dbg !1259, !tbaa !1071
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.68, ptr noundef %110), !dbg !1259
  %112 = ptrtoint ptr %60 to i64, !dbg !1260
  %113 = sub i64 %112, %93, !dbg !1260
  %114 = load ptr, ptr @stdout, align 8, !dbg !1260, !tbaa !1071
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1260
  %116 = load ptr, ptr @stdout, align 8, !dbg !1261, !tbaa !1071
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.69, ptr noundef %116), !dbg !1261
  %118 = load ptr, ptr @stdout, align 8, !dbg !1262, !tbaa !1071
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.70, ptr noundef %118), !dbg !1262
  %120 = load ptr, ptr @stdout, align 8, !dbg !1263, !tbaa !1071
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1263
  br label %122, !dbg !1264

122:                                              ; preds = %107, %19
  ret void, !dbg !1264
}

; Function Attrs: nounwind
declare !dbg !1265 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1269 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1273 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1275 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1278 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1281 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1284 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1287 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1293 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1294 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !223 {
  %3 = alloca %struct.__sigset_t, align 8
  %4 = alloca %struct.sigaction, align 8
  %5 = alloca [19 x i8], align 1
  %6 = alloca %struct.__sigset_t, align 8
  %7 = alloca [19 x i8], align 1
  %8 = alloca %struct.sigaction, align 8
  %9 = alloca [19 x i8], align 1
  %10 = alloca %struct.splitbuf, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !228, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata ptr %1, metadata !229, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 0, metadata !230, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 0, metadata !232, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata ptr null, metadata !233, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata ptr null, metadata !234, metadata !DIExpression()), !dbg !1300
  %11 = load ptr, ptr %1, align 8, !dbg !1301, !tbaa !1071
  tail call void @set_program_name(ptr noundef %11) #40, !dbg !1302
  %12 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.19) #40, !dbg !1303
  %13 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #40, !dbg !1304
  %14 = tail call ptr @textdomain(ptr noundef nonnull @.str.20) #40, !dbg !1305
  call void @llvm.dbg.value(metadata i32 125, metadata !1306, metadata !DIExpression()), !dbg !1309
  store volatile i32 125, ptr @exit_failure, align 4, !dbg !1311, !tbaa !1153
  %15 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1313
  %16 = tail call noalias nonnull dereferenceable(260) ptr @xmalloc(i64 noundef 260) #44, !dbg !1314
  store ptr %16, ptr @signals, align 8, !dbg !1320, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 0, metadata !1317, metadata !DIExpression()), !dbg !1321
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %16, i8 0, i64 260, i1 false), !dbg !1322, !tbaa !1162
  call void @llvm.dbg.value(metadata i64 poison, metadata !1317, metadata !DIExpression()), !dbg !1321
  %17 = getelementptr inbounds %struct.splitbuf, ptr %10, i64 0, i32 1
  %18 = getelementptr inbounds %struct.splitbuf, ptr %10, i64 0, i32 2
  %19 = getelementptr inbounds %struct.splitbuf, ptr %10, i64 0, i32 3
  %20 = getelementptr inbounds %struct.splitbuf, ptr %10, i64 0, i32 4
  br label %21, !dbg !1324

21:                                               ; preds = %29, %2
  %22 = phi i32 [ %0, %2 ], [ %30, %29 ]
  %23 = phi ptr [ %1, %2 ], [ %31, %29 ]
  %24 = phi ptr [ null, %2 ], [ %32, %29 ], !dbg !1325
  %25 = phi ptr [ null, %2 ], [ %33, %29 ], !dbg !1326
  %26 = phi i1 [ false, %2 ], [ %34, %29 ]
  %27 = phi i1 [ false, %2 ], [ %35, %29 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !230, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 poison, metadata !232, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata ptr %25, metadata !233, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata ptr %24, metadata !234, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i32 %22, metadata !228, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata ptr %23, metadata !229, metadata !DIExpression()), !dbg !1300
  %28 = call i32 @getopt_long(i32 noundef %22, ptr noundef %23, ptr noundef nonnull @shortopts, ptr noundef nonnull @longopts, ptr noundef null) #40, !dbg !1327
  call void @llvm.dbg.value(metadata i32 %28, metadata !235, metadata !DIExpression()), !dbg !1300
  switch i32 %28, label %366 [
    i32 -1, label %367
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
    i32 32, label %356
    i32 9, label %356
    i32 10, label %356
    i32 11, label %356
    i32 12, label %356
    i32 13, label %356
    i32 -2, label %359
    i32 -3, label %360
  ], !dbg !1324

29:                                               ; preds = %21, %347, %62, %61, %59, %57, %54, %53, %52, %47, %36
  %30 = phi i32 [ %355, %347 ], [ %22, %62 ], [ %22, %61 ], [ %22, %59 ], [ %22, %57 ], [ %22, %54 ], [ %22, %53 ], [ %22, %52 ], [ %22, %47 ], [ %22, %21 ], [ %22, %36 ]
  %31 = phi ptr [ %277, %347 ], [ %23, %62 ], [ %23, %61 ], [ %23, %59 ], [ %23, %57 ], [ %23, %54 ], [ %23, %53 ], [ %23, %52 ], [ %23, %47 ], [ %23, %21 ], [ %23, %36 ]
  %32 = phi ptr [ %24, %347 ], [ %24, %62 ], [ %24, %61 ], [ %24, %59 ], [ %24, %57 ], [ %24, %54 ], [ %24, %53 ], [ %24, %52 ], [ %24, %47 ], [ %24, %21 ], [ %37, %36 ]
  %33 = phi ptr [ %25, %347 ], [ %63, %62 ], [ %25, %61 ], [ %25, %59 ], [ %25, %57 ], [ %25, %54 ], [ %25, %53 ], [ %25, %52 ], [ %25, %47 ], [ %25, %21 ], [ %25, %36 ]
  %34 = phi i1 [ %26, %347 ], [ %26, %62 ], [ %26, %61 ], [ %26, %59 ], [ %26, %57 ], [ %26, %54 ], [ true, %53 ], [ %26, %52 ], [ %26, %47 ], [ %26, %21 ], [ %26, %36 ]
  %35 = phi i1 [ %27, %347 ], [ %27, %62 ], [ %27, %61 ], [ %27, %59 ], [ %27, %57 ], [ %27, %54 ], [ %27, %53 ], [ %27, %52 ], [ %27, %47 ], [ true, %21 ], [ %27, %36 ]
  br label %21, !dbg !1300, !llvm.loop !1328

36:                                               ; preds = %21
  %37 = load ptr, ptr @optarg, align 8, !dbg !1330, !tbaa !1071
  call void @llvm.dbg.value(metadata ptr %37, metadata !234, metadata !DIExpression()), !dbg !1300
  br label %29, !dbg !1333

38:                                               ; preds = %21
  %39 = load ptr, ptr @optarg, align 8, !dbg !1334, !tbaa !1071
  call void @llvm.dbg.value(metadata ptr %39, metadata !1335, metadata !DIExpression()), !dbg !1338
  %40 = load i64, ptr @usvars_used, align 8, !dbg !1340, !tbaa !1342
  %41 = load i64, ptr @usvars_alloc, align 8, !dbg !1344, !tbaa !1342
  %42 = icmp eq i64 %40, %41, !dbg !1345
  %43 = load ptr, ptr @usvars, align 8, !dbg !1338, !tbaa !1071
  br i1 %42, label %44, label %47, !dbg !1346

44:                                               ; preds = %38
  %45 = call nonnull ptr @xpalloc(ptr noundef %43, ptr noundef nonnull @usvars_alloc, i64 noundef 1, i64 noundef -1, i64 noundef 8) #40, !dbg !1347
  store ptr %45, ptr @usvars, align 8, !dbg !1348, !tbaa !1071
  %46 = load i64, ptr @usvars_used, align 8, !dbg !1349, !tbaa !1342
  br label %47, !dbg !1350

47:                                               ; preds = %38, %44
  %48 = phi i64 [ %46, %44 ], [ %40, %38 ], !dbg !1349
  %49 = phi ptr [ %45, %44 ], [ %43, %38 ], !dbg !1351
  %50 = add nsw i64 %48, 1, !dbg !1349
  store i64 %50, ptr @usvars_used, align 8, !dbg !1349, !tbaa !1342
  %51 = getelementptr inbounds ptr, ptr %49, i64 %48, !dbg !1351
  store ptr %39, ptr %51, align 8, !dbg !1352, !tbaa !1071
  br label %29, !dbg !1353

52:                                               ; preds = %21
  store i1 true, ptr @dev_debug, align 1, !dbg !1354
  br label %29, !dbg !1355

53:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i8 1, metadata !232, metadata !DIExpression()), !dbg !1300
  br label %29, !dbg !1356

54:                                               ; preds = %21
  %55 = load ptr, ptr @optarg, align 8, !dbg !1357, !tbaa !1071
  call fastcc void @parse_signal_action_params(ptr noundef %55, i1 noundef true), !dbg !1358
  %56 = load ptr, ptr @optarg, align 8, !dbg !1359, !tbaa !1071
  call fastcc void @parse_block_signal_params(ptr noundef %56, i1 noundef false), !dbg !1360
  br label %29, !dbg !1361

57:                                               ; preds = %21
  %58 = load ptr, ptr @optarg, align 8, !dbg !1362, !tbaa !1071
  call fastcc void @parse_signal_action_params(ptr noundef %58, i1 noundef false), !dbg !1363
  br label %29, !dbg !1364

59:                                               ; preds = %21
  %60 = load ptr, ptr @optarg, align 8, !dbg !1365, !tbaa !1071
  call fastcc void @parse_block_signal_params(ptr noundef %60, i1 noundef true), !dbg !1366
  br label %29, !dbg !1367

61:                                               ; preds = %21
  store i1 true, ptr @report_signal_handling, align 1, !dbg !1368
  br label %29, !dbg !1369

62:                                               ; preds = %21
  %63 = load ptr, ptr @optarg, align 8, !dbg !1370, !tbaa !1071
  call void @llvm.dbg.value(metadata ptr %63, metadata !233, metadata !DIExpression()), !dbg !1300
  br label %29, !dbg !1371

64:                                               ; preds = %21
  %65 = load ptr, ptr @optarg, align 8, !dbg !1372, !tbaa !1071
  call void @llvm.dbg.value(metadata ptr %65, metadata !1373, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata ptr @optind, metadata !1379, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata ptr undef, metadata !1380, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata ptr undef, metadata !1381, metadata !DIExpression()), !dbg !1389
  %66 = load i32, ptr @optind, align 4, !dbg !1391, !tbaa !1153
  %67 = sub nsw i32 %22, %66, !dbg !1392
  call void @llvm.dbg.value(metadata i32 %67, metadata !1382, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata ptr %65, metadata !1393, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i32 %67, metadata !1398, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata ptr undef, metadata !1399, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8 0, metadata !1400, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8 0, metadata !1401, metadata !DIExpression()), !dbg !1417
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #40, !dbg !1419
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1402, metadata !DIExpression()), !dbg !1420
  %68 = add nsw i32 %67, 2, !dbg !1421
  %69 = sext i32 %68 to i64, !dbg !1422
  %70 = call noalias nonnull ptr @xnmalloc(i64 noundef %69, i64 noundef 16) #45, !dbg !1423
  store ptr %70, ptr %10, align 8, !dbg !1424, !tbaa !1425
  store i32 1, ptr %17, align 8, !dbg !1428, !tbaa !1429
  store i64 %69, ptr %18, align 8, !dbg !1430, !tbaa !1431
  store i32 %67, ptr %19, align 8, !dbg !1432, !tbaa !1433
  store i8 1, ptr %20, align 4, !dbg !1434, !tbaa !1435
  %71 = getelementptr inbounds ptr, ptr %70, i64 1, !dbg !1436
  store ptr null, ptr %71, align 8, !dbg !1437, !tbaa !1071
  br label %72, !dbg !1438

72:                                               ; preds = %106, %64
  %73 = phi ptr [ %65, %64 ], [ %107, %106 ]
  %74 = phi i1 [ false, %64 ], [ %108, %106 ]
  %75 = phi i1 [ false, %64 ], [ %109, %106 ]
  br label %76, !dbg !1438

76:                                               ; preds = %72, %210
  %77 = phi ptr [ %73, %72 ], [ %212, %210 ]
  %78 = phi i1 [ %75, %72 ], [ false, %210 ]
  %79 = select i1 %78, i1 true, i1 %74
  br label %80, !dbg !1438

80:                                               ; preds = %76, %233
  %81 = phi ptr [ %244, %233 ], [ %77, %76 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1401, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8 poison, metadata !1400, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata ptr %81, metadata !1393, metadata !DIExpression()), !dbg !1417
  %82 = load i8, ptr %81, align 1, !dbg !1439, !tbaa !1162
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
  ], !dbg !1438

83:                                               ; preds = %80
  br i1 %74, label %214, label %84, !dbg !1440

84:                                               ; preds = %83
  %85 = xor i1 %78, true, !dbg !1441
  call void @llvm.dbg.value(metadata i1 %85, metadata !1401, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1417
  call fastcc void @check_start_new_arg(ptr noundef nonnull %10), !dbg !1442
  %86 = getelementptr inbounds i8, ptr %81, i64 1, !dbg !1443
  call void @llvm.dbg.value(metadata ptr %86, metadata !1393, metadata !DIExpression()), !dbg !1417
  br label %106, !dbg !1444

87:                                               ; preds = %80
  br i1 %78, label %214, label %88, !dbg !1445

88:                                               ; preds = %87
  %89 = xor i1 %74, true, !dbg !1446
  call void @llvm.dbg.value(metadata i1 %89, metadata !1400, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1417
  call fastcc void @check_start_new_arg(ptr noundef nonnull %10), !dbg !1447
  %90 = getelementptr inbounds i8, ptr %81, i64 1, !dbg !1448
  call void @llvm.dbg.value(metadata ptr %90, metadata !1393, metadata !DIExpression()), !dbg !1417
  br label %106, !dbg !1449

91:                                               ; preds = %80, %80, %80, %80, %80, %80
  br i1 %79, label %214, label %92, !dbg !1450

92:                                               ; preds = %91
  store i8 1, ptr %20, align 4, !dbg !1452, !tbaa !1435
  %93 = call i64 @strspn(ptr noundef nonnull %81, ptr noundef nonnull @.str.42) #41, !dbg !1453
  %94 = getelementptr inbounds i8, ptr %81, i64 %93, !dbg !1454
  call void @llvm.dbg.value(metadata ptr %94, metadata !1393, metadata !DIExpression()), !dbg !1417
  br label %106, !dbg !1455

95:                                               ; preds = %80
  %96 = load i8, ptr %20, align 4, !dbg !1456, !tbaa !1435, !range !1458, !noundef !1080
  %97 = icmp eq i8 %96, 0, !dbg !1456
  br i1 %97, label %214, label %249, !dbg !1459

98:                                               ; preds = %80
  %99 = getelementptr inbounds i8, ptr %81, i64 1
  %100 = load i8, ptr %99, align 1, !dbg !1460, !tbaa !1162
  br i1 %78, label %101, label %102, !dbg !1461

101:                                              ; preds = %98
  switch i8 %100, label %214 [
    i8 39, label %213
    i8 92, label %213
  ], !dbg !1463

102:                                              ; preds = %98
  call void @llvm.dbg.value(metadata ptr %99, metadata !1393, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8 %100, metadata !1410, metadata !DIExpression()), !dbg !1464
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
  ], !dbg !1465

103:                                              ; preds = %102
  br i1 %74, label %214, label %104, !dbg !1466

104:                                              ; preds = %103
  %105 = getelementptr inbounds i8, ptr %81, i64 2, !dbg !1468
  call void @llvm.dbg.value(metadata ptr %105, metadata !1393, metadata !DIExpression()), !dbg !1417
  store i8 1, ptr %20, align 4, !dbg !1471, !tbaa !1435
  br label %106, !dbg !1472

106:                                              ; preds = %104, %92, %88, %84
  %107 = phi ptr [ %86, %84 ], [ %90, %88 ], [ %94, %92 ], [ %105, %104 ]
  %108 = phi i1 [ false, %84 ], [ %89, %88 ], [ false, %92 ], [ false, %104 ]
  %109 = phi i1 [ %85, %84 ], [ false, %88 ], [ false, %92 ], [ false, %104 ]
  br label %72, !dbg !1438, !llvm.loop !1473

110:                                              ; preds = %102
  br i1 %74, label %111, label %249, !dbg !1475

111:                                              ; preds = %110
  %112 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.99, i32 noundef 5) #40, !dbg !1476
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %112) #40, !dbg !1476
  unreachable, !dbg !1476

113:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i8 10, metadata !1410, metadata !DIExpression()), !dbg !1464
  br label %214, !dbg !1478

114:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i8 13, metadata !1410, metadata !DIExpression()), !dbg !1464
  br label %214, !dbg !1479

115:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i8 9, metadata !1410, metadata !DIExpression()), !dbg !1464
  br label %214, !dbg !1480

116:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i8 11, metadata !1410, metadata !DIExpression()), !dbg !1464
  br label %214, !dbg !1481

117:                                              ; preds = %102
  %118 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.100, i32 noundef 5) #40, !dbg !1482
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %118) #40, !dbg !1482
  unreachable, !dbg !1482

119:                                              ; preds = %102
  %120 = zext i8 %100 to i32, !dbg !1483
  %121 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.101, i32 noundef 5) #40, !dbg !1484
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %121, i32 noundef %120) #40, !dbg !1484
  unreachable, !dbg !1484

122:                                              ; preds = %80
  br i1 %78, label %214, label %123, !dbg !1485

123:                                              ; preds = %122
  call void @llvm.dbg.value(metadata ptr %81, metadata !1486, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata ptr %81, metadata !1493, metadata !DIExpression()), !dbg !1501
  %124 = getelementptr inbounds i8, ptr %81, i64 1, !dbg !1503
  %125 = load i8, ptr %124, align 1, !dbg !1503, !tbaa !1162
  %126 = icmp eq i8 %125, 123, !dbg !1504
  br i1 %126, label %127, label %154, !dbg !1505

127:                                              ; preds = %123
  %128 = getelementptr inbounds i8, ptr %81, i64 2, !dbg !1506
  %129 = load i8, ptr %128, align 1, !dbg !1506, !tbaa !1162
  call void @llvm.dbg.value(metadata i8 %129, metadata !1507, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1513
  switch i8 %129, label %154 [
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
  ], !dbg !1515

130:                                              ; preds = %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127
  %131 = getelementptr inbounds i8, ptr %81, i64 3, !dbg !1516
  call void @llvm.dbg.value(metadata ptr %131, metadata !1498, metadata !DIExpression()), !dbg !1517
  br label %132, !dbg !1518

132:                                              ; preds = %139, %130
  %133 = phi ptr [ %131, %130 ], [ %140, %139 ], !dbg !1517
  call void @llvm.dbg.value(metadata ptr %133, metadata !1498, metadata !DIExpression()), !dbg !1517
  %134 = load i8, ptr %133, align 1, !dbg !1519, !tbaa !1162
  %135 = zext i8 %134 to i32, !dbg !1519
  %136 = call i1 @c_isalnum(i32 noundef %135), !dbg !1520
  br i1 %136, label %139, label %137, !dbg !1521

137:                                              ; preds = %132
  %138 = load i8, ptr %133, align 1, !dbg !1522, !tbaa !1162
  switch i8 %138, label %154 [
    i8 95, label %139
    i8 125, label %141
  ], !dbg !1518

139:                                              ; preds = %137, %132
  %140 = getelementptr inbounds i8, ptr %133, i64 1, !dbg !1523
  call void @llvm.dbg.value(metadata ptr %140, metadata !1498, metadata !DIExpression()), !dbg !1517
  br label %132, !dbg !1518, !llvm.loop !1524

141:                                              ; preds = %137
  call void @llvm.dbg.value(metadata ptr %133, metadata !1489, metadata !DIExpression()), !dbg !1491
  %142 = ptrtoint ptr %133 to i64, !dbg !1526
  %143 = ptrtoint ptr %81 to i64, !dbg !1526
  %144 = sub i64 %142, %143, !dbg !1526
  %145 = add nsw i64 %144, -2, !dbg !1527
  call void @llvm.dbg.value(metadata i64 %145, metadata !1490, metadata !DIExpression()), !dbg !1491
  %146 = load i64, ptr @vnlen, align 8, !dbg !1528, !tbaa !1342
  %147 = icmp slt i64 %145, %146, !dbg !1530
  %148 = load ptr, ptr @varname, align 8, !dbg !1491, !tbaa !1071
  br i1 %147, label %156, label %149, !dbg !1531

149:                                              ; preds = %141
  call void @free(ptr noundef %148) #40, !dbg !1532
  %150 = load i64, ptr @vnlen, align 8, !dbg !1534, !tbaa !1342
  %151 = xor i64 %150, -1, !dbg !1535
  %152 = add i64 %144, %151, !dbg !1535
  %153 = call nonnull ptr @xpalloc(ptr noundef null, ptr noundef nonnull @vnlen, i64 noundef %152, i64 noundef -1, i64 noundef 1) #40, !dbg !1536
  store ptr %153, ptr @varname, align 8, !dbg !1537, !tbaa !1071
  br label %156, !dbg !1538

154:                                              ; preds = %127, %123, %137
  call void @llvm.dbg.value(metadata ptr null, metadata !1412, metadata !DIExpression()), !dbg !1539
  %155 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.102, i32 noundef 5) #40, !dbg !1540
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %155, ptr noundef nonnull %81) #40, !dbg !1540
  unreachable, !dbg !1540

156:                                              ; preds = %149, %141
  %157 = phi ptr [ %153, %149 ], [ %148, %141 ], !dbg !1542
  call void @llvm.dbg.value(metadata ptr %157, metadata !1543, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata ptr %128, metadata !1550, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 %145, metadata !1551, metadata !DIExpression()), !dbg !1552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %157, ptr noundef nonnull align 1 %128, i64 noundef %145, i1 noundef false) #40, !dbg !1554
  %158 = getelementptr inbounds i8, ptr %157, i64 %145, !dbg !1555
  store i8 0, ptr %158, align 1, !dbg !1556, !tbaa !1162
  call void @llvm.dbg.value(metadata ptr %157, metadata !1412, metadata !DIExpression()), !dbg !1539
  %159 = call ptr @getenv(ptr noundef nonnull %157) #40, !dbg !1557
  call void @llvm.dbg.value(metadata ptr %159, metadata !1415, metadata !DIExpression()), !dbg !1539
  %160 = icmp eq ptr %159, null, !dbg !1558
  br i1 %160, label %205, label %161, !dbg !1560

161:                                              ; preds = %156
  call fastcc void @check_start_new_arg(ptr noundef nonnull %10), !dbg !1561
  %162 = load i1, ptr @dev_debug, align 1, !dbg !1563
  br i1 %162, label %163, label %167, !dbg !1566

163:                                              ; preds = %161
  %164 = load ptr, ptr @stderr, align 8, !dbg !1563, !tbaa !1071
  %165 = call ptr @quote(ptr noundef nonnull %159) #40, !dbg !1563
  %166 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %164, i32 noundef 1, ptr noundef nonnull @.str.103, ptr noundef nonnull %157, ptr noundef %165) #40, !dbg !1563
  br label %167, !dbg !1563

167:                                              ; preds = %163, %161
  call void @llvm.dbg.value(metadata ptr %159, metadata !1415, metadata !DIExpression()), !dbg !1539
  %168 = load i8, ptr %159, align 1, !dbg !1567, !tbaa !1162
  %169 = icmp eq i8 %168, 0, !dbg !1570
  br i1 %169, label %210, label %170, !dbg !1570

170:                                              ; preds = %167
  %171 = load i32, ptr %17, align 8, !dbg !1571, !tbaa !1429
  br label %172, !dbg !1570

172:                                              ; preds = %191, %170
  %173 = phi i32 [ %199, %191 ], [ %171, %170 ], !dbg !1571
  %174 = phi i8 [ %203, %191 ], [ %168, %170 ]
  %175 = phi ptr [ %202, %191 ], [ %159, %170 ]
  call void @llvm.dbg.value(metadata ptr %175, metadata !1415, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata ptr %10, metadata !1577, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i8 %174, metadata !1578, metadata !DIExpression()), !dbg !1581
  %176 = load ptr, ptr %10, align 8, !dbg !1582, !tbaa !1425
  %177 = sext i32 %173 to i64, !dbg !1583
  %178 = getelementptr inbounds ptr, ptr %176, i64 %177, !dbg !1583
  %179 = load ptr, ptr %178, align 8, !dbg !1583, !tbaa !1071
  %180 = ptrtoint ptr %179 to i64, !dbg !1584
  call void @llvm.dbg.value(metadata i64 %180, metadata !1579, metadata !DIExpression()), !dbg !1581
  %181 = load i64, ptr %18, align 8, !dbg !1585, !tbaa !1431
  %182 = shl i64 %181, 3, !dbg !1587
  %183 = icmp ugt i64 %182, %180, !dbg !1588
  br i1 %183, label %191, label %184, !dbg !1589

184:                                              ; preds = %172
  call void @llvm.dbg.value(metadata ptr %10, metadata !1590, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i64 %181, metadata !1595, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i64 %180, metadata !1596, metadata !DIExpression()), !dbg !1597
  %185 = call nonnull ptr @xpalloc(ptr noundef nonnull %176, ptr noundef nonnull %18, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !1599
  store ptr %185, ptr %10, align 8, !dbg !1600, !tbaa !1425
  %186 = load i64, ptr %18, align 8, !dbg !1601, !tbaa !1431
  %187 = getelementptr inbounds ptr, ptr %185, i64 %186, !dbg !1602
  %188 = getelementptr inbounds ptr, ptr %185, i64 %181, !dbg !1603
  call void @llvm.dbg.value(metadata ptr %187, metadata !1604, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata ptr %188, metadata !1609, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %180, metadata !1610, metadata !DIExpression()), !dbg !1611
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %187, ptr noundef nonnull align 1 %188, i64 noundef %180, i1 noundef false) #40, !dbg !1613
  %189 = load ptr, ptr %10, align 8, !dbg !1614, !tbaa !1425
  %190 = load i64, ptr %18, align 8, !dbg !1615, !tbaa !1431
  br label %191, !dbg !1616

191:                                              ; preds = %184, %172
  %192 = phi i64 [ %190, %184 ], [ %181, %172 ], !dbg !1615
  %193 = phi ptr [ %189, %184 ], [ %176, %172 ], !dbg !1614
  %194 = getelementptr inbounds ptr, ptr %193, i64 %192, !dbg !1617
  %195 = getelementptr inbounds i8, ptr %194, i64 %180, !dbg !1618
  store i8 %174, ptr %195, align 1, !dbg !1619, !tbaa !1162
  %196 = add nsw i64 %180, 1, !dbg !1620
  %197 = inttoptr i64 %196 to ptr, !dbg !1621
  %198 = load ptr, ptr %10, align 8, !dbg !1622, !tbaa !1425
  %199 = load i32, ptr %17, align 8, !dbg !1623, !tbaa !1429
  %200 = sext i32 %199 to i64, !dbg !1624
  %201 = getelementptr inbounds ptr, ptr %198, i64 %200, !dbg !1624
  store ptr %197, ptr %201, align 8, !dbg !1625, !tbaa !1071
  %202 = getelementptr inbounds i8, ptr %175, i64 1, !dbg !1626
  call void @llvm.dbg.value(metadata ptr %202, metadata !1415, metadata !DIExpression()), !dbg !1539
  %203 = load i8, ptr %202, align 1, !dbg !1567, !tbaa !1162
  %204 = icmp eq i8 %203, 0, !dbg !1570
  br i1 %204, label %210, label %172, !dbg !1570, !llvm.loop !1627

205:                                              ; preds = %156
  %206 = load i1, ptr @dev_debug, align 1, !dbg !1629
  br i1 %206, label %207, label %210, !dbg !1632

207:                                              ; preds = %205
  %208 = load ptr, ptr @stderr, align 8, !dbg !1629, !tbaa !1071
  %209 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %208, i32 noundef 1, ptr noundef nonnull @.str.104, ptr noundef nonnull %157) #40, !dbg !1629
  br label %210, !dbg !1629

210:                                              ; preds = %191, %207, %205, %167
  %211 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %81, i32 noundef 125) #41, !dbg !1633
  %212 = getelementptr inbounds i8, ptr %211, i64 1, !dbg !1634
  call void @llvm.dbg.value(metadata ptr %212, metadata !1393, metadata !DIExpression()), !dbg !1417
  br label %76

213:                                              ; preds = %102, %102, %102, %102, %102, %101, %101
  br label %214, !dbg !1635

214:                                              ; preds = %213, %122, %116, %115, %114, %113, %103, %102, %101, %95, %91, %87, %83, %80
  %215 = phi ptr [ %81, %122 ], [ %99, %116 ], [ %99, %115 ], [ %99, %114 ], [ %99, %113 ], [ %81, %95 ], [ %81, %91 ], [ %81, %87 ], [ %81, %83 ], [ %81, %80 ], [ %81, %101 ], [ %99, %103 ], [ %99, %213 ], [ %99, %102 ]
  %216 = phi i8 [ 36, %122 ], [ 11, %116 ], [ 9, %115 ], [ 13, %114 ], [ 10, %113 ], [ 35, %95 ], [ %82, %91 ], [ 34, %87 ], [ 39, %83 ], [ %82, %80 ], [ 92, %101 ], [ 32, %103 ], [ %100, %213 ], [ 12, %102 ], !dbg !1464
  call void @llvm.dbg.value(metadata i8 %216, metadata !1410, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata ptr %215, metadata !1393, metadata !DIExpression()), !dbg !1417
  call fastcc void @check_start_new_arg(ptr noundef nonnull %10), !dbg !1635
  call void @llvm.dbg.value(metadata ptr %10, metadata !1577, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 %216, metadata !1578, metadata !DIExpression()), !dbg !1636
  %217 = load ptr, ptr %10, align 8, !dbg !1638, !tbaa !1425
  %218 = load i32, ptr %17, align 8, !dbg !1639, !tbaa !1429
  %219 = sext i32 %218 to i64, !dbg !1640
  %220 = getelementptr inbounds ptr, ptr %217, i64 %219, !dbg !1640
  %221 = load ptr, ptr %220, align 8, !dbg !1640, !tbaa !1071
  %222 = ptrtoint ptr %221 to i64, !dbg !1641
  call void @llvm.dbg.value(metadata i64 %222, metadata !1579, metadata !DIExpression()), !dbg !1636
  %223 = load i64, ptr %18, align 8, !dbg !1642, !tbaa !1431
  %224 = shl i64 %223, 3, !dbg !1643
  %225 = icmp ugt i64 %224, %222, !dbg !1644
  br i1 %225, label %233, label %226, !dbg !1645

226:                                              ; preds = %214
  call void @llvm.dbg.value(metadata ptr %10, metadata !1590, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i64 %223, metadata !1595, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i64 %222, metadata !1596, metadata !DIExpression()), !dbg !1646
  %227 = call nonnull ptr @xpalloc(ptr noundef nonnull %217, ptr noundef nonnull %18, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !1648
  store ptr %227, ptr %10, align 8, !dbg !1649, !tbaa !1425
  %228 = load i64, ptr %18, align 8, !dbg !1650, !tbaa !1431
  %229 = getelementptr inbounds ptr, ptr %227, i64 %228, !dbg !1651
  %230 = getelementptr inbounds ptr, ptr %227, i64 %223, !dbg !1652
  call void @llvm.dbg.value(metadata ptr %229, metadata !1604, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata ptr %230, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %222, metadata !1610, metadata !DIExpression()), !dbg !1653
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %229, ptr noundef nonnull align 1 %230, i64 noundef %222, i1 noundef false) #40, !dbg !1655
  %231 = load ptr, ptr %10, align 8, !dbg !1656, !tbaa !1425
  %232 = load i64, ptr %18, align 8, !dbg !1657, !tbaa !1431
  br label %233, !dbg !1658

233:                                              ; preds = %226, %214
  %234 = phi i64 [ %232, %226 ], [ %223, %214 ], !dbg !1657
  %235 = phi ptr [ %231, %226 ], [ %217, %214 ], !dbg !1656
  %236 = getelementptr inbounds ptr, ptr %235, i64 %234, !dbg !1659
  %237 = getelementptr inbounds i8, ptr %236, i64 %222, !dbg !1660
  store i8 %216, ptr %237, align 1, !dbg !1661, !tbaa !1162
  %238 = add nsw i64 %222, 1, !dbg !1662
  %239 = inttoptr i64 %238 to ptr, !dbg !1663
  %240 = load ptr, ptr %10, align 8, !dbg !1664, !tbaa !1425
  %241 = load i32, ptr %17, align 8, !dbg !1665, !tbaa !1429
  %242 = sext i32 %241 to i64, !dbg !1666
  %243 = getelementptr inbounds ptr, ptr %240, i64 %242, !dbg !1666
  store ptr %239, ptr %243, align 8, !dbg !1667, !tbaa !1071
  %244 = getelementptr inbounds i8, ptr %215, i64 1, !dbg !1668
  call void @llvm.dbg.value(metadata ptr %244, metadata !1393, metadata !DIExpression()), !dbg !1417
  br label %80, !dbg !1474

245:                                              ; preds = %80
  %246 = select i1 %74, i1 true, i1 %78, !dbg !1669
  br i1 %246, label %247, label %249, !dbg !1669

247:                                              ; preds = %245
  %248 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.105, i32 noundef 5) #40, !dbg !1671
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %248) #40, !dbg !1671
  unreachable, !dbg !1671

249:                                              ; preds = %95, %245, %110
  call void @llvm.dbg.label(metadata !1416), !dbg !1672
  call void @llvm.dbg.value(metadata ptr %10, metadata !1577, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i8 0, metadata !1578, metadata !DIExpression()), !dbg !1673
  %250 = load ptr, ptr %10, align 8, !dbg !1675, !tbaa !1425
  %251 = load i32, ptr %17, align 8, !dbg !1676, !tbaa !1429
  %252 = sext i32 %251 to i64, !dbg !1677
  %253 = getelementptr inbounds ptr, ptr %250, i64 %252, !dbg !1677
  %254 = load ptr, ptr %253, align 8, !dbg !1677, !tbaa !1071
  %255 = ptrtoint ptr %254 to i64, !dbg !1678
  call void @llvm.dbg.value(metadata i64 %255, metadata !1579, metadata !DIExpression()), !dbg !1673
  %256 = load i64, ptr %18, align 8, !dbg !1679, !tbaa !1431
  %257 = shl i64 %256, 3, !dbg !1680
  %258 = icmp ugt i64 %257, %255, !dbg !1681
  br i1 %258, label %266, label %259, !dbg !1682

259:                                              ; preds = %249
  call void @llvm.dbg.value(metadata ptr %10, metadata !1590, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %256, metadata !1595, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %255, metadata !1596, metadata !DIExpression()), !dbg !1683
  %260 = call nonnull ptr @xpalloc(ptr noundef nonnull %250, ptr noundef nonnull %18, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !1685
  store ptr %260, ptr %10, align 8, !dbg !1686, !tbaa !1425
  %261 = load i64, ptr %18, align 8, !dbg !1687, !tbaa !1431
  %262 = getelementptr inbounds ptr, ptr %260, i64 %261, !dbg !1688
  %263 = getelementptr inbounds ptr, ptr %260, i64 %256, !dbg !1689
  call void @llvm.dbg.value(metadata ptr %262, metadata !1604, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata ptr %263, metadata !1609, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 %255, metadata !1610, metadata !DIExpression()), !dbg !1690
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %262, ptr noundef nonnull align 1 %263, i64 noundef %255, i1 noundef false) #40, !dbg !1692
  %264 = load ptr, ptr %10, align 8, !dbg !1693, !tbaa !1425
  %265 = load i64, ptr %18, align 8, !dbg !1694, !tbaa !1431
  br label %266, !dbg !1695

266:                                              ; preds = %259, %249
  %267 = phi i64 [ %265, %259 ], [ %256, %249 ], !dbg !1694
  %268 = phi ptr [ %264, %259 ], [ %250, %249 ], !dbg !1693
  %269 = getelementptr inbounds ptr, ptr %268, i64 %267, !dbg !1696
  %270 = getelementptr inbounds i8, ptr %269, i64 %255, !dbg !1697
  store i8 0, ptr %270, align 1, !dbg !1698, !tbaa !1162
  %271 = add nsw i64 %255, 1, !dbg !1699
  %272 = inttoptr i64 %271 to ptr, !dbg !1700
  %273 = load ptr, ptr %10, align 8, !dbg !1701, !tbaa !1425
  %274 = load i32, ptr %17, align 8, !dbg !1702, !tbaa !1429
  %275 = sext i32 %274 to i64, !dbg !1703
  %276 = getelementptr inbounds ptr, ptr %273, i64 %275, !dbg !1703
  store ptr %272, ptr %276, align 8, !dbg !1704, !tbaa !1071
  call void @llvm.dbg.value(metadata ptr %10, metadata !1705, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i32 %274, metadata !1710, metadata !DIExpression()), !dbg !1715
  %277 = load ptr, ptr %10, align 8, !dbg !1717, !tbaa !1425
  call void @llvm.dbg.value(metadata ptr %277, metadata !1711, metadata !DIExpression()), !dbg !1715
  %278 = load i64, ptr %18, align 8, !dbg !1718, !tbaa !1431
  %279 = getelementptr inbounds ptr, ptr %277, i64 %278, !dbg !1719
  call void @llvm.dbg.value(metadata ptr %279, metadata !1712, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i32 1, metadata !1713, metadata !DIExpression()), !dbg !1720
  %280 = icmp sgt i32 %274, 1, !dbg !1721
  br i1 %280, label %283, label %281, !dbg !1723

281:                                              ; preds = %266
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #40, !dbg !1724
  call void @llvm.dbg.value(metadata ptr %277, metadata !1384, metadata !DIExpression()), !dbg !1389
  %282 = load ptr, ptr %23, align 8, !dbg !1725, !tbaa !1071
  store ptr %282, ptr %277, align 8, !dbg !1726, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 %274, metadata !1383, metadata !DIExpression()), !dbg !1389
  br label %347, !dbg !1727

283:                                              ; preds = %266
  %284 = zext i32 %274 to i64, !dbg !1721
  %285 = add nsw i64 %284, -1, !dbg !1723
  %286 = icmp ult i32 %274, 5, !dbg !1723
  br i1 %286, label %305, label %287, !dbg !1723

287:                                              ; preds = %283
  %288 = and i64 %285, -4, !dbg !1723
  %289 = or i64 %288, 1, !dbg !1723
  br label %290, !dbg !1723

290:                                              ; preds = %290, %287
  %291 = phi i64 [ 0, %287 ], [ %301, %290 ]
  %292 = or i64 %291, 1, !dbg !1723
  %293 = getelementptr inbounds ptr, ptr %277, i64 %292, !dbg !1728
  %294 = load <2 x ptr>, ptr %293, align 8, !dbg !1728, !tbaa !1071
  %295 = getelementptr inbounds ptr, ptr %293, i64 2, !dbg !1728
  %296 = load <2 x ptr>, ptr %295, align 8, !dbg !1728, !tbaa !1071
  %297 = ptrtoint <2 x ptr> %294 to <2 x i64>, !dbg !1729
  %298 = ptrtoint <2 x ptr> %296 to <2 x i64>, !dbg !1729
  %299 = getelementptr inbounds i8, ptr %279, <2 x i64> %297, !dbg !1729
  %300 = getelementptr inbounds i8, ptr %279, <2 x i64> %298, !dbg !1729
  store <2 x ptr> %299, ptr %293, align 8, !dbg !1730, !tbaa !1071
  store <2 x ptr> %300, ptr %295, align 8, !dbg !1730, !tbaa !1071
  %301 = add nuw i64 %291, 4
  %302 = icmp eq i64 %301, %288
  br i1 %302, label %303, label %290, !llvm.loop !1731

303:                                              ; preds = %290
  %304 = icmp eq i64 %285, %288, !dbg !1723
  br i1 %304, label %315, label %305, !dbg !1723

305:                                              ; preds = %283, %303
  %306 = phi i64 [ 1, %283 ], [ %289, %303 ]
  br label %307, !dbg !1723

307:                                              ; preds = %305, %307
  %308 = phi i64 [ %313, %307 ], [ %306, %305 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !1713, metadata !DIExpression()), !dbg !1720
  %309 = getelementptr inbounds ptr, ptr %277, i64 %308, !dbg !1728
  %310 = load ptr, ptr %309, align 8, !dbg !1728, !tbaa !1071
  %311 = ptrtoint ptr %310 to i64, !dbg !1729
  %312 = getelementptr inbounds i8, ptr %279, i64 %311, !dbg !1735
  store ptr %312, ptr %309, align 8, !dbg !1730, !tbaa !1071
  %313 = add nuw nsw i64 %308, 1, !dbg !1736
  call void @llvm.dbg.value(metadata i64 %313, metadata !1713, metadata !DIExpression()), !dbg !1720
  %314 = icmp eq i64 %313, %284, !dbg !1721
  br i1 %314, label %315, label %307, !dbg !1723, !llvm.loop !1737

315:                                              ; preds = %307, %303
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #40, !dbg !1724
  call void @llvm.dbg.value(metadata ptr %277, metadata !1384, metadata !DIExpression()), !dbg !1389
  %316 = load ptr, ptr %23, align 8, !dbg !1725, !tbaa !1071
  store ptr %316, ptr %277, align 8, !dbg !1726, !tbaa !1071
  %317 = load i1, ptr @dev_debug, align 1, !dbg !1738
  call void @llvm.dbg.value(metadata i32 %274, metadata !1383, metadata !DIExpression()), !dbg !1389
  br i1 %317, label %318, label %347, !dbg !1727

318:                                              ; preds = %315
  %319 = load ptr, ptr @stderr, align 8, !dbg !1739, !tbaa !1071
  %320 = call ptr @quote(ptr noundef %65) #40, !dbg !1739
  %321 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %319, i32 noundef 1, ptr noundef nonnull @.str.96, ptr noundef %320) #40, !dbg !1739
  %322 = load i1, ptr @dev_debug, align 1, !dbg !1742
  br i1 %322, label %323, label %329, !dbg !1745

323:                                              ; preds = %318
  %324 = load ptr, ptr @stderr, align 8, !dbg !1742, !tbaa !1071
  %325 = getelementptr inbounds ptr, ptr %277, i64 1, !dbg !1742
  %326 = load ptr, ptr %325, align 8, !dbg !1742, !tbaa !1071
  %327 = call ptr @quote(ptr noundef %326) #40, !dbg !1742
  %328 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %324, i32 noundef 1, ptr noundef nonnull @.str.97, ptr noundef %327) #40, !dbg !1742
  br label %329, !dbg !1742

329:                                              ; preds = %323, %318
  call void @llvm.dbg.value(metadata i32 2, metadata !1385, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i32 %274, metadata !1383, metadata !DIExpression()), !dbg !1389
  %330 = icmp sgt i32 %274, 2, !dbg !1747
  br i1 %330, label %331, label %347, !dbg !1749

331:                                              ; preds = %329
  %332 = load i1, ptr @dev_debug, align 1, !dbg !1750
  br label %333, !dbg !1749

333:                                              ; preds = %343, %331
  %334 = phi i1 [ %332, %331 ], [ %344, %343 ], !dbg !1750
  %335 = phi i64 [ 2, %331 ], [ %345, %343 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1385, metadata !DIExpression()), !dbg !1746
  br i1 %334, label %336, label %343, !dbg !1753

336:                                              ; preds = %333
  %337 = load ptr, ptr @stderr, align 8, !dbg !1750, !tbaa !1071
  %338 = getelementptr inbounds ptr, ptr %277, i64 %335, !dbg !1750
  %339 = load ptr, ptr %338, align 8, !dbg !1750, !tbaa !1071
  %340 = call ptr @quote(ptr noundef %339) #40, !dbg !1750
  %341 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %337, i32 noundef 1, ptr noundef nonnull @.str.98, ptr noundef %340) #40, !dbg !1750
  %342 = load i1, ptr @dev_debug, align 1, !dbg !1750
  br label %343, !dbg !1750

343:                                              ; preds = %336, %333
  %344 = phi i1 [ false, %333 ], [ %342, %336 ]
  %345 = add nuw nsw i64 %335, 1, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %345, metadata !1385, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i32 %274, metadata !1383, metadata !DIExpression()), !dbg !1389
  %346 = icmp eq i64 %345, %284, !dbg !1747
  br i1 %346, label %347, label %333, !dbg !1749, !llvm.loop !1755

347:                                              ; preds = %343, %281, %315, %329
  call void @llvm.dbg.value(metadata i32 %274, metadata !1383, metadata !DIExpression()), !dbg !1389
  %348 = getelementptr inbounds ptr, ptr %277, i64 %275, !dbg !1757
  %349 = load i32, ptr @optind, align 4, !dbg !1758, !tbaa !1153
  %350 = sext i32 %349 to i64, !dbg !1759
  %351 = getelementptr inbounds ptr, ptr %23, i64 %350, !dbg !1759
  %352 = add nsw i32 %67, 1, !dbg !1760
  %353 = sext i32 %352 to i64, !dbg !1761
  %354 = shl nsw i64 %353, 3, !dbg !1762
  call void @llvm.dbg.value(metadata ptr %348, metadata !1543, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata ptr %351, metadata !1550, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i64 %354, metadata !1551, metadata !DIExpression()), !dbg !1763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %348, ptr noundef nonnull align 1 %351, i64 noundef %354, i1 noundef false) #40, !dbg !1765
  %355 = add nsw i32 %274, %67, !dbg !1766
  store i32 0, ptr @optind, align 4, !dbg !1767, !tbaa !1153
  br label %29, !dbg !1768

356:                                              ; preds = %21, %21, %21, %21, %21, %21
  %357 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #40, !dbg !1769
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %357, i32 noundef %28) #40, !dbg !1769
  %358 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #40, !dbg !1770
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %358) #40, !dbg !1770
  call void @usage(i32 noundef 125) #46, !dbg !1771
  unreachable, !dbg !1771

359:                                              ; preds = %21
  call void @usage(i32 noundef 0) #46, !dbg !1772
  unreachable, !dbg !1772

360:                                              ; preds = %21
  %361 = load ptr, ptr @stdout, align 8, !dbg !1773, !tbaa !1071
  %362 = load ptr, ptr @Version, align 8, !dbg !1773, !tbaa !1071
  %363 = call ptr @proper_name_lite(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.25) #40, !dbg !1773
  %364 = call ptr @proper_name_lite(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.26) #40, !dbg !1773
  %365 = call ptr @proper_name_lite(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.27) #40, !dbg !1773
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %361, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.24, ptr noundef %362, ptr noundef %363, ptr noundef %364, ptr noundef %365, ptr noundef null) #40, !dbg !1773
  call void @exit(i32 noundef 0) #42, !dbg !1773
  unreachable, !dbg !1773

366:                                              ; preds = %21
  call void @usage(i32 noundef 125) #46, !dbg !1774
  unreachable, !dbg !1774

367:                                              ; preds = %21
  %368 = load i32, ptr @optind, align 4, !dbg !1775, !tbaa !1153
  call void @llvm.dbg.value(metadata i32 %22, metadata !228, metadata !DIExpression()), !dbg !1300
  %369 = icmp slt i32 %368, %22, !dbg !1777
  br i1 %369, label %370, label %378, !dbg !1778

370:                                              ; preds = %367
  call void @llvm.dbg.value(metadata ptr %23, metadata !229, metadata !DIExpression()), !dbg !1300
  %371 = sext i32 %368 to i64, !dbg !1779
  %372 = getelementptr inbounds ptr, ptr %23, i64 %371, !dbg !1779
  %373 = load ptr, ptr %372, align 8, !dbg !1779, !tbaa !1071
  call void @llvm.dbg.value(metadata ptr %373, metadata !1164, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !1170, metadata !DIExpression()), !dbg !1780
  %374 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %373, ptr noundef nonnull dereferenceable(2) @.str.28) #41, !dbg !1782
  %375 = icmp eq i32 %374, 0, !dbg !1783
  br i1 %375, label %376, label %378, !dbg !1784

376:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !230, metadata !DIExpression()), !dbg !1300
  %377 = add nsw i32 %368, 1, !dbg !1785
  store i32 %377, ptr @optind, align 4, !dbg !1785, !tbaa !1153
  call void @llvm.dbg.value(metadata i8 poison, metadata !230, metadata !DIExpression()), !dbg !1300
  br label %379, !dbg !1787

378:                                              ; preds = %370, %367
  call void @llvm.dbg.value(metadata i8 poison, metadata !230, metadata !DIExpression()), !dbg !1300
  br i1 %27, label %379, label %385, !dbg !1787

379:                                              ; preds = %376, %378
  %380 = load i1, ptr @dev_debug, align 1, !dbg !1788
  br i1 %380, label %381, label %384, !dbg !1793

381:                                              ; preds = %379
  %382 = load ptr, ptr @stderr, align 8, !dbg !1788, !tbaa !1071
  %383 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %382, i32 noundef 1, ptr noundef nonnull @.str.29) #40, !dbg !1788
  br label %384, !dbg !1788

384:                                              ; preds = %381, %379
  store ptr @main.dummy_environ, ptr @environ, align 8, !dbg !1794, !tbaa !1071
  br label %415, !dbg !1795

385:                                              ; preds = %378
  call void @llvm.dbg.value(metadata i64 0, metadata !1796, metadata !DIExpression()), !dbg !1800
  %386 = load i64, ptr @usvars_used, align 8, !dbg !1802, !tbaa !1342
  %387 = icmp sgt i64 %386, 0, !dbg !1804
  br i1 %387, label %388, label %415, !dbg !1805

388:                                              ; preds = %385, %411
  %389 = phi i64 [ %412, %411 ], [ 0, %385 ]
  call void @llvm.dbg.value(metadata i64 %389, metadata !1796, metadata !DIExpression()), !dbg !1800
  %390 = load i1, ptr @dev_debug, align 1, !dbg !1806
  br i1 %390, label %391, label %397, !dbg !1810

391:                                              ; preds = %388
  %392 = load ptr, ptr @stderr, align 8, !dbg !1806, !tbaa !1071
  %393 = load ptr, ptr @usvars, align 8, !dbg !1806, !tbaa !1071
  %394 = getelementptr inbounds ptr, ptr %393, i64 %389, !dbg !1806
  %395 = load ptr, ptr %394, align 8, !dbg !1806, !tbaa !1071
  %396 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %392, i32 noundef 1, ptr noundef nonnull @.str.106, ptr noundef %395) #40, !dbg !1806
  br label %397, !dbg !1806

397:                                              ; preds = %391, %388
  %398 = load ptr, ptr @usvars, align 8, !dbg !1811, !tbaa !1071
  %399 = getelementptr inbounds ptr, ptr %398, i64 %389, !dbg !1811
  %400 = load ptr, ptr %399, align 8, !dbg !1811, !tbaa !1071
  %401 = call i32 @unsetenv(ptr noundef %400) #40, !dbg !1813
  %402 = icmp eq i32 %401, 0, !dbg !1813
  br i1 %402, label %411, label %403, !dbg !1814

403:                                              ; preds = %397
  %404 = tail call ptr @__errno_location() #43, !dbg !1815
  %405 = load i32, ptr %404, align 4, !dbg !1815, !tbaa !1153
  %406 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.107, i32 noundef 5) #40, !dbg !1815
  %407 = load ptr, ptr @usvars, align 8, !dbg !1815, !tbaa !1071
  %408 = getelementptr inbounds ptr, ptr %407, i64 %389, !dbg !1815
  %409 = load ptr, ptr %408, align 8, !dbg !1815, !tbaa !1071
  %410 = call ptr @quote(ptr noundef %409) #40, !dbg !1815
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %405, ptr noundef %406, ptr noundef %410) #40, !dbg !1815
  unreachable, !dbg !1815

411:                                              ; preds = %397
  %412 = add nuw nsw i64 %389, 1, !dbg !1816
  call void @llvm.dbg.value(metadata i64 %412, metadata !1796, metadata !DIExpression()), !dbg !1800
  %413 = load i64, ptr @usvars_used, align 8, !dbg !1802, !tbaa !1342
  %414 = icmp slt i64 %412, %413, !dbg !1804
  br i1 %414, label %388, label %415, !dbg !1805, !llvm.loop !1817

415:                                              ; preds = %411, %385, %384
  %416 = load i32, ptr @optind, align 4, !dbg !1819, !tbaa !1153
  call void @llvm.dbg.value(metadata i32 %22, metadata !228, metadata !DIExpression()), !dbg !1300
  %417 = icmp slt i32 %416, %22, !dbg !1820
  br i1 %417, label %418, label %454, !dbg !1821

418:                                              ; preds = %415, %447
  %419 = phi i32 [ %449, %447 ], [ %416, %415 ]
  call void @llvm.dbg.value(metadata ptr %23, metadata !229, metadata !DIExpression()), !dbg !1300
  %420 = sext i32 %419 to i64, !dbg !1822
  %421 = getelementptr inbounds ptr, ptr %23, i64 %420, !dbg !1822
  %422 = load ptr, ptr %421, align 8, !dbg !1822, !tbaa !1071
  %423 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %422, i32 noundef 61) #41, !dbg !1823
  call void @llvm.dbg.value(metadata ptr %423, metadata !236, metadata !DIExpression()), !dbg !1300
  %424 = icmp eq ptr %423, null, !dbg !1821
  br i1 %424, label %451, label %425, !dbg !1824

425:                                              ; preds = %418
  %426 = load i1, ptr @dev_debug, align 1, !dbg !1825
  br i1 %426, label %427, label %434, !dbg !1829

427:                                              ; preds = %425
  %428 = load ptr, ptr @stderr, align 8, !dbg !1825, !tbaa !1071
  %429 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %428, i32 noundef 1, ptr noundef nonnull @.str.30, ptr noundef %422) #40, !dbg !1825
  %430 = load i32, ptr @optind, align 4, !dbg !1830, !tbaa !1153
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds ptr, ptr %23, i64 %431
  %433 = load ptr, ptr %432, align 8, !dbg !1832, !tbaa !1071
  br label %434, !dbg !1825

434:                                              ; preds = %427, %425
  %435 = phi ptr [ %433, %427 ], [ %422, %425 ], !dbg !1832
  call void @llvm.dbg.value(metadata ptr %23, metadata !229, metadata !DIExpression()), !dbg !1300
  %436 = call i32 @putenv(ptr noundef %435) #40, !dbg !1833
  %437 = icmp eq i32 %436, 0, !dbg !1833
  br i1 %437, label %447, label %438, !dbg !1834

438:                                              ; preds = %434
  store i8 0, ptr %423, align 1, !dbg !1835, !tbaa !1162
  %439 = tail call ptr @__errno_location() #43, !dbg !1837
  %440 = load i32, ptr %439, align 4, !dbg !1837, !tbaa !1153
  %441 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #40, !dbg !1837
  call void @llvm.dbg.value(metadata ptr %23, metadata !229, metadata !DIExpression()), !dbg !1300
  %442 = load i32, ptr @optind, align 4, !dbg !1837, !tbaa !1153
  %443 = sext i32 %442 to i64, !dbg !1837
  %444 = getelementptr inbounds ptr, ptr %23, i64 %443, !dbg !1837
  %445 = load ptr, ptr %444, align 8, !dbg !1837, !tbaa !1071
  %446 = call ptr @quote(ptr noundef %445) #40, !dbg !1837
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %440, ptr noundef %441, ptr noundef %446) #40, !dbg !1837
  unreachable, !dbg !1837

447:                                              ; preds = %434
  %448 = load i32, ptr @optind, align 4, !dbg !1838, !tbaa !1153
  %449 = add nsw i32 %448, 1, !dbg !1838
  store i32 %449, ptr @optind, align 4, !dbg !1838, !tbaa !1153
  call void @llvm.dbg.value(metadata i32 %22, metadata !228, metadata !DIExpression()), !dbg !1300
  %450 = icmp slt i32 %449, %22, !dbg !1820
  br i1 %450, label %418, label %454, !dbg !1821, !llvm.loop !1839

451:                                              ; preds = %418
  call void @llvm.dbg.value(metadata i32 %22, metadata !228, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i1 true, metadata !237, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1300
  br i1 %26, label %452, label %475, !dbg !1841

452:                                              ; preds = %451
  %453 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #40, !dbg !1843
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %453) #40, !dbg !1843
  call void @usage(i32 noundef 125) #46, !dbg !1845
  unreachable, !dbg !1845

454:                                              ; preds = %447, %415
  call void @llvm.dbg.value(metadata i32 %22, metadata !228, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i1 false, metadata !237, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1300
  %455 = icmp eq ptr %25, null, !dbg !1846
  br i1 %455, label %458, label %456, !dbg !1848

456:                                              ; preds = %454
  %457 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #40, !dbg !1849
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %457) #40, !dbg !1849
  call void @usage(i32 noundef 125) #46, !dbg !1851
  unreachable, !dbg !1851

458:                                              ; preds = %454
  %459 = icmp eq ptr %24, null, !dbg !1852
  br i1 %459, label %462, label %460, !dbg !1854

460:                                              ; preds = %458
  %461 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #40, !dbg !1855
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %461) #40, !dbg !1855
  call void @usage(i32 noundef 125) #46, !dbg !1857
  unreachable, !dbg !1857

462:                                              ; preds = %458
  %463 = load ptr, ptr @environ, align 8, !dbg !1858, !tbaa !1071
  call void @llvm.dbg.value(metadata ptr %463, metadata !238, metadata !DIExpression()), !dbg !1859
  %464 = load ptr, ptr %463, align 8, !dbg !1860, !tbaa !1071
  %465 = icmp eq ptr %464, null, !dbg !1861
  br i1 %465, label %693, label %466, !dbg !1861

466:                                              ; preds = %462
  %467 = select i1 %26, i32 0, i32 10
  br label %468, !dbg !1861

468:                                              ; preds = %466, %468
  %469 = phi ptr [ %464, %466 ], [ %473, %468 ]
  %470 = phi ptr [ %463, %466 ], [ %471, %468 ]
  call void @llvm.dbg.value(metadata ptr %470, metadata !238, metadata !DIExpression()), !dbg !1859
  %471 = getelementptr inbounds ptr, ptr %470, i64 1, !dbg !1862
  call void @llvm.dbg.value(metadata ptr %471, metadata !238, metadata !DIExpression()), !dbg !1859
  %472 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull %469, i32 noundef %467) #40, !dbg !1862
  %473 = load ptr, ptr %471, align 8, !dbg !1860, !tbaa !1071
  %474 = icmp eq ptr %473, null, !dbg !1861
  br i1 %474, label %693, label %468, !dbg !1861, !llvm.loop !1863

475:                                              ; preds = %451
  %476 = icmp eq ptr %25, null, !dbg !1846
  %477 = icmp eq ptr %24, null, !dbg !1852
  call void @llvm.dbg.value(metadata i32 1, metadata !1864, metadata !DIExpression()), !dbg !1965
  br label %478, !dbg !1967

478:                                              ; preds = %527, %475
  %479 = phi i64 [ 1, %475 ], [ %528, %527 ]
  call void @llvm.dbg.value(metadata i64 %479, metadata !1864, metadata !DIExpression()), !dbg !1965
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %8) #40, !dbg !1968
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1868, metadata !DIExpression()), !dbg !1969
  %480 = load ptr, ptr @signals, align 8, !dbg !1970, !tbaa !1071
  %481 = getelementptr inbounds i32, ptr %480, i64 %479, !dbg !1970
  %482 = load i32, ptr %481, align 4, !dbg !1970, !tbaa !1162
  switch i32 %482, label %483 [
    i32 0, label %527
    i32 2, label %484
    i32 4, label %484
  ], !dbg !1972

483:                                              ; preds = %478
  br label %484, !dbg !1973

484:                                              ; preds = %483, %478, %478
  %485 = phi i1 [ false, %483 ], [ true, %478 ], [ true, %478 ]
  call void @llvm.dbg.value(metadata i1 %485, metadata !1959, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1974
  %486 = add i32 %482, -1, !dbg !1975
  %487 = icmp ult i32 %486, 2, !dbg !1975
  call void @llvm.dbg.value(metadata i1 %487, metadata !1960, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1974
  %488 = trunc i64 %479 to i32, !dbg !1976
  %489 = call i32 @sigaction(i32 noundef %488, ptr noundef null, ptr noundef nonnull %8) #40, !dbg !1976
  call void @llvm.dbg.value(metadata i32 %489, metadata !1961, metadata !DIExpression()), !dbg !1974
  %490 = icmp eq i32 %489, 0, !dbg !1977
  %491 = or i1 %485, %490, !dbg !1979
  br i1 %491, label %497, label %492, !dbg !1979

492:                                              ; preds = %484
  %493 = trunc i64 %479 to i32, !dbg !1976
  %494 = tail call ptr @__errno_location() #43, !dbg !1980
  %495 = load i32, ptr %494, align 4, !dbg !1980, !tbaa !1153
  %496 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.108, i32 noundef 5) #40, !dbg !1980
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %495, ptr noundef %496, i32 noundef %493) #40, !dbg !1980
  unreachable, !dbg !1980

497:                                              ; preds = %484
  br i1 %490, label %498, label %510, !dbg !1981

498:                                              ; preds = %497
  %499 = select i1 %487, ptr null, ptr inttoptr (i64 1 to ptr), !dbg !1982
  store ptr %499, ptr %8, align 8, !dbg !1985, !tbaa !1162
  %500 = call i32 @sigaction(i32 noundef %488, ptr noundef nonnull %8, ptr noundef null) #40, !dbg !1986
  call void @llvm.dbg.value(metadata i32 %500, metadata !1961, metadata !DIExpression()), !dbg !1974
  %501 = icmp eq i32 %500, 0, !dbg !1987
  %502 = or i1 %485, %501, !dbg !1989
  %503 = xor i1 %501, true, !dbg !1989
  %504 = zext i1 %503 to i32, !dbg !1989
  br i1 %502, label %510, label %505, !dbg !1989

505:                                              ; preds = %498
  %506 = trunc i64 %479 to i32, !dbg !1976
  %507 = tail call ptr @__errno_location() #43, !dbg !1990
  %508 = load i32, ptr %507, align 4, !dbg !1990, !tbaa !1153
  %509 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.109, i32 noundef 5) #40, !dbg !1990
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %508, ptr noundef %509, i32 noundef %506) #40, !dbg !1990
  unreachable, !dbg !1990

510:                                              ; preds = %498, %497
  %511 = phi i32 [ %489, %497 ], [ %504, %498 ], !dbg !1974
  call void @llvm.dbg.value(metadata i32 %511, metadata !1961, metadata !DIExpression()), !dbg !1974
  %512 = load i1, ptr @dev_debug, align 1, !dbg !1991
  br i1 %512, label %513, label %527, !dbg !1992

513:                                              ; preds = %510
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %9) #40, !dbg !1993
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1962, metadata !DIExpression()), !dbg !1994
  %514 = call i32 @sig2str(i32 noundef %488, ptr noundef nonnull %9) #40, !dbg !1995
  %515 = icmp eq i32 %514, 0, !dbg !1997
  br i1 %515, label %518, label %516, !dbg !1998

516:                                              ; preds = %513
  %517 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %9, i64 noundef 19, i32 noundef 1, i64 noundef 19, ptr noundef nonnull @.str.110, i32 noundef %488) #40, !dbg !1999
  br label %518, !dbg !1999

518:                                              ; preds = %516, %513
  %519 = load i1, ptr @dev_debug, align 1, !dbg !2000
  br i1 %519, label %520, label %526, !dbg !2003

520:                                              ; preds = %518
  %521 = load ptr, ptr @stderr, align 8, !dbg !2000, !tbaa !1071
  %522 = select i1 %487, ptr @.str.112, ptr @.str.113, !dbg !2000
  %523 = icmp eq i32 %511, 0, !dbg !2000
  %524 = select i1 %523, ptr @.str.19, ptr @.str.114, !dbg !2000
  %525 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %521, i32 noundef 1, ptr noundef nonnull @.str.111, ptr noundef nonnull %9, i32 noundef %488, ptr noundef nonnull %522, ptr noundef nonnull %524) #40, !dbg !2000
  br label %526, !dbg !2000

526:                                              ; preds = %520, %518
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %9) #40, !dbg !2004
  br label %527, !dbg !2005

527:                                              ; preds = %526, %510, %478
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %8) #40, !dbg !2006
  %528 = add nuw nsw i64 %479, 1, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %528, metadata !1864, metadata !DIExpression()), !dbg !1965
  %529 = icmp eq i64 %528, 65, !dbg !2008
  br i1 %529, label %530, label %478, !dbg !1967, !llvm.loop !2009

530:                                              ; preds = %527
  %531 = load i1, ptr @sig_mask_changed, align 1, !dbg !2011
  br i1 %531, label %532, label %576, !dbg !2013

532:                                              ; preds = %530
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #40, !dbg !2014
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2017, metadata !DIExpression()), !dbg !2027
  %533 = call i32 @sigemptyset(ptr noundef nonnull %6) #40, !dbg !2028
  %534 = call i32 @sigprocmask(i32 noundef 0, ptr noundef null, ptr noundef nonnull %6) #40, !dbg !2029
  %535 = icmp eq i32 %534, 0, !dbg !2029
  br i1 %535, label %543, label %536, !dbg !2031

536:                                              ; preds = %532
  %537 = tail call ptr @__errno_location() #43, !dbg !2032
  %538 = load i32, ptr %537, align 4, !dbg !2032, !tbaa !1153
  %539 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.115, i32 noundef 5) #40, !dbg !2032
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %538, ptr noundef %539) #40, !dbg !2032
  unreachable, !dbg !2032

540:                                              ; preds = %568
  %541 = call i32 @sigprocmask(i32 noundef 2, ptr noundef nonnull %6, ptr noundef null) #40, !dbg !2033
  %542 = icmp eq i32 %541, 0, !dbg !2033
  br i1 %542, label %575, label %571, !dbg !2035

543:                                              ; preds = %532, %568
  %544 = phi i32 [ %569, %568 ], [ 1, %532 ]
  call void @llvm.dbg.value(metadata i32 %544, metadata !2018, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata ptr null, metadata !2020, metadata !DIExpression()), !dbg !2037
  %545 = call i32 @sigismember(ptr noundef nonnull @block_signals, i32 noundef %544) #40, !dbg !2038
  %546 = icmp eq i32 %545, 0, !dbg !2038
  br i1 %546, label %549, label %547, !dbg !2040

547:                                              ; preds = %543
  %548 = call i32 @sigaddset(ptr noundef nonnull %6, i32 noundef %544) #40, !dbg !2041
  call void @llvm.dbg.value(metadata ptr @.str.116, metadata !2020, metadata !DIExpression()), !dbg !2037
  br label %554, !dbg !2043

549:                                              ; preds = %543
  %550 = call i32 @sigismember(ptr noundef nonnull @unblock_signals, i32 noundef %544) #40, !dbg !2044
  %551 = icmp eq i32 %550, 0, !dbg !2044
  br i1 %551, label %568, label %552, !dbg !2046

552:                                              ; preds = %549
  %553 = call i32 @sigdelset(ptr noundef nonnull %6, i32 noundef %544) #40, !dbg !2047
  call void @llvm.dbg.value(metadata ptr @.str.117, metadata !2020, metadata !DIExpression()), !dbg !2037
  br label %554, !dbg !2049

554:                                              ; preds = %552, %547
  %555 = phi ptr [ @.str.117, %552 ], [ @.str.116, %547 ], !dbg !2037
  call void @llvm.dbg.value(metadata ptr %555, metadata !2020, metadata !DIExpression()), !dbg !2037
  %556 = load i1, ptr @dev_debug, align 1, !dbg !2050
  br i1 %556, label %557, label %568, !dbg !2051

557:                                              ; preds = %554
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %7) #40, !dbg !2052
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2023, metadata !DIExpression()), !dbg !2053
  %558 = call i32 @sig2str(i32 noundef %544, ptr noundef nonnull %7) #40, !dbg !2054
  %559 = icmp eq i32 %558, 0, !dbg !2056
  br i1 %559, label %562, label %560, !dbg !2057

560:                                              ; preds = %557
  %561 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %7, i64 noundef 19, i32 noundef 1, i64 noundef 19, ptr noundef nonnull @.str.110, i32 noundef %544) #40, !dbg !2058
  br label %562, !dbg !2058

562:                                              ; preds = %560, %557
  %563 = load i1, ptr @dev_debug, align 1, !dbg !2059
  br i1 %563, label %564, label %567, !dbg !2062

564:                                              ; preds = %562
  %565 = load ptr, ptr @stderr, align 8, !dbg !2059, !tbaa !1071
  %566 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %565, i32 noundef 1, ptr noundef nonnull @.str.118, ptr noundef nonnull %7, i32 noundef %544, ptr noundef nonnull %555) #40, !dbg !2059
  br label %567, !dbg !2059

567:                                              ; preds = %564, %562
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %7) #40, !dbg !2063
  br label %568, !dbg !2064

568:                                              ; preds = %567, %554, %549
  %569 = add nuw nsw i32 %544, 1, !dbg !2065
  call void @llvm.dbg.value(metadata i32 %569, metadata !2018, metadata !DIExpression()), !dbg !2036
  %570 = icmp eq i32 %569, 65, !dbg !2066
  br i1 %570, label %540, label %543, !dbg !2067, !llvm.loop !2068

571:                                              ; preds = %540
  %572 = tail call ptr @__errno_location() #43, !dbg !2070
  %573 = load i32, ptr %572, align 4, !dbg !2070, !tbaa !1153
  %574 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.119, i32 noundef 5) #40, !dbg !2070
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %573, ptr noundef %574) #40, !dbg !2070
  unreachable, !dbg !2070

575:                                              ; preds = %540
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #40, !dbg !2071
  br label %576, !dbg !2072

576:                                              ; preds = %575, %530
  %577 = load i1, ptr @report_signal_handling, align 1, !dbg !2073
  br i1 %577, label %578, label %616, !dbg !2075

578:                                              ; preds = %576
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #40, !dbg !2076
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2079, metadata !DIExpression()), !dbg !2090
  %579 = call i32 @sigemptyset(ptr noundef nonnull %3) #40, !dbg !2091
  %580 = call i32 @sigprocmask(i32 noundef 0, ptr noundef null, ptr noundef nonnull %3) #40, !dbg !2092
  %581 = icmp eq i32 %580, 0, !dbg !2092
  br i1 %581, label %586, label %582, !dbg !2094

582:                                              ; preds = %578
  %583 = tail call ptr @__errno_location() #43, !dbg !2095
  %584 = load i32, ptr %583, align 4, !dbg !2095, !tbaa !1153
  %585 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.115, i32 noundef 5) #40, !dbg !2095
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %584, ptr noundef %585) #40, !dbg !2095
  unreachable, !dbg !2095

586:                                              ; preds = %578, %612
  %587 = phi i32 [ %613, %612 ], [ 1, %578 ]
  call void @llvm.dbg.value(metadata i32 %587, metadata !2080, metadata !DIExpression()), !dbg !2096
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %4) #40, !dbg !2097
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2082, metadata !DIExpression()), !dbg !2098
  %588 = call i32 @sigaction(i32 noundef %587, ptr noundef null, ptr noundef nonnull %4) #40, !dbg !2099
  %589 = icmp eq i32 %588, 0, !dbg !2099
  br i1 %589, label %590, label %612, !dbg !2101

590:                                              ; preds = %586
  %591 = load ptr, ptr %4, align 8, !dbg !2102, !tbaa !1162
  %592 = icmp eq ptr %591, inttoptr (i64 1 to ptr), !dbg !2103
  %593 = select i1 %592, ptr @.str.113, ptr @.str.19, !dbg !2104
  call void @llvm.dbg.value(metadata ptr %593, metadata !2085, metadata !DIExpression()), !dbg !2105
  %594 = call i32 @sigismember(ptr noundef nonnull %3, i32 noundef %587) #40, !dbg !2106
  %595 = icmp eq i32 %594, 0, !dbg !2106
  %596 = select i1 %595, ptr @.str.19, ptr @.str.116, !dbg !2106
  call void @llvm.dbg.value(metadata ptr %596, metadata !2086, metadata !DIExpression()), !dbg !2105
  %597 = load i8, ptr %593, align 1, !dbg !2107, !tbaa !1162
  %598 = icmp eq i8 %597, 0, !dbg !2107
  %599 = load i8, ptr %596, align 1, !dbg !2108
  %600 = icmp eq i8 %599, 0, !dbg !2108
  %601 = select i1 %598, i1 true, i1 %600, !dbg !2107
  %602 = select i1 %601, ptr @.str.19, ptr @.str.93, !dbg !2107
  call void @llvm.dbg.value(metadata ptr %602, metadata !2087, metadata !DIExpression()), !dbg !2105
  %603 = select i1 %598, i1 %600, i1 false, !dbg !2109
  br i1 %603, label %612, label %604, !dbg !2109

604:                                              ; preds = %590
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %5) #40, !dbg !2111
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2088, metadata !DIExpression()), !dbg !2112
  %605 = call i32 @sig2str(i32 noundef %587, ptr noundef nonnull %5) #40, !dbg !2113
  %606 = icmp eq i32 %605, 0, !dbg !2115
  br i1 %606, label %609, label %607, !dbg !2116

607:                                              ; preds = %604
  %608 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %5, i64 noundef 19, i32 noundef 1, i64 noundef 19, ptr noundef nonnull @.str.110, i32 noundef %587) #40, !dbg !2117
  br label %609, !dbg !2117

609:                                              ; preds = %607, %604
  %610 = load ptr, ptr @stderr, align 8, !dbg !2118, !tbaa !1071
  %611 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %610, i32 noundef 1, ptr noundef nonnull @.str.120, ptr noundef nonnull %5, i32 noundef %587, ptr noundef nonnull %596, ptr noundef nonnull %602, ptr noundef nonnull %593) #40, !dbg !2118
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %5) #40, !dbg !2119
  br label %612, !dbg !2119

612:                                              ; preds = %609, %590, %586
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %4) #40, !dbg !2119
  %613 = add nuw nsw i32 %587, 1, !dbg !2120
  call void @llvm.dbg.value(metadata i32 %613, metadata !2080, metadata !DIExpression()), !dbg !2096
  %614 = icmp eq i32 %613, 65, !dbg !2121
  br i1 %614, label %615, label %586, !dbg !2122, !llvm.loop !2123

615:                                              ; preds = %612
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #40, !dbg !2125
  br label %616, !dbg !2126

616:                                              ; preds = %615, %576
  br i1 %476, label %631, label %617, !dbg !2127

617:                                              ; preds = %616
  %618 = load i1, ptr @dev_debug, align 1, !dbg !2128
  br i1 %618, label %619, label %623, !dbg !2133

619:                                              ; preds = %617
  %620 = load ptr, ptr @stderr, align 8, !dbg !2128, !tbaa !1071
  %621 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %25) #40, !dbg !2128
  %622 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %620, i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef %621) #40, !dbg !2128
  br label %623, !dbg !2128

623:                                              ; preds = %619, %617
  %624 = call i32 @chdir(ptr noundef nonnull %25) #40, !dbg !2134
  %625 = icmp eq i32 %624, 0, !dbg !2136
  br i1 %625, label %631, label %626, !dbg !2137

626:                                              ; preds = %623
  %627 = tail call ptr @__errno_location() #43, !dbg !2138
  %628 = load i32, ptr %627, align 4, !dbg !2138, !tbaa !1153
  %629 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #40, !dbg !2138
  %630 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %25) #40, !dbg !2138
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %628, ptr noundef %629, ptr noundef %630) #40, !dbg !2138
  unreachable, !dbg !2138

631:                                              ; preds = %623, %616
  call void @llvm.dbg.value(metadata ptr %23, metadata !229, metadata !DIExpression()), !dbg !1300
  %632 = load i32, ptr @optind, align 4, !dbg !2139, !tbaa !1153
  %633 = sext i32 %632 to i64, !dbg !2140
  %634 = getelementptr inbounds ptr, ptr %23, i64 %633, !dbg !2140
  %635 = load ptr, ptr %634, align 8, !dbg !2140, !tbaa !1071
  call void @llvm.dbg.value(metadata ptr %635, metadata !243, metadata !DIExpression()), !dbg !1300
  br i1 %477, label %648, label %636, !dbg !2141

636:                                              ; preds = %631
  %637 = load i1, ptr @dev_debug, align 1, !dbg !2142
  br i1 %637, label %638, label %644, !dbg !2147

638:                                              ; preds = %636
  %639 = load ptr, ptr @stderr, align 8, !dbg !2142, !tbaa !1071
  %640 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %24) #40, !dbg !2142
  %641 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %639, i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef %640) #40, !dbg !2142
  %642 = load i32, ptr @optind, align 4, !dbg !2148, !tbaa !1153
  %643 = sext i32 %642 to i64, !dbg !2149
  br label %644, !dbg !2142

644:                                              ; preds = %638, %636
  %645 = phi i64 [ %643, %638 ], [ %633, %636 ], !dbg !2149
  %646 = phi i32 [ %642, %638 ], [ %632, %636 ], !dbg !2148
  call void @llvm.dbg.value(metadata ptr %23, metadata !229, metadata !DIExpression()), !dbg !1300
  %647 = getelementptr inbounds ptr, ptr %23, i64 %645, !dbg !2149
  store ptr %24, ptr %647, align 8, !dbg !2150, !tbaa !1071
  br label %648, !dbg !2151

648:                                              ; preds = %644, %631
  %649 = phi i32 [ %646, %644 ], [ %632, %631 ]
  %650 = load i1, ptr @dev_debug, align 1, !dbg !2152
  br i1 %650, label %651, label %679, !dbg !2153

651:                                              ; preds = %648
  %652 = load ptr, ptr @stderr, align 8, !dbg !2154, !tbaa !1071
  %653 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %652, i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef %635) #40, !dbg !2154
  %654 = load i32, ptr @optind, align 4, !dbg !2157, !tbaa !1153
  call void @llvm.dbg.value(metadata i32 %654, metadata !244, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i32 %22, metadata !228, metadata !DIExpression()), !dbg !1300
  %655 = icmp slt i32 %654, %22, !dbg !2159
  br i1 %655, label %656, label %679, !dbg !2161

656:                                              ; preds = %651
  %657 = sext i32 %654 to i64, !dbg !2161
  %658 = load i1, ptr @dev_debug, align 1, !dbg !2162
  br label %659, !dbg !2161

659:                                              ; preds = %656, %672
  %660 = phi i1 [ %658, %656 ], [ %673, %672 ], !dbg !2162
  %661 = phi i64 [ %657, %656 ], [ %674, %672 ]
  call void @llvm.dbg.value(metadata i64 %661, metadata !244, metadata !DIExpression()), !dbg !2158
  br i1 %660, label %662, label %672, !dbg !2165

662:                                              ; preds = %659
  %663 = load ptr, ptr @stderr, align 8, !dbg !2162, !tbaa !1071
  %664 = load i32, ptr @optind, align 4, !dbg !2162, !tbaa !1153
  %665 = trunc i64 %661 to i32, !dbg !2162
  %666 = sub nsw i32 %665, %664, !dbg !2162
  call void @llvm.dbg.value(metadata ptr %23, metadata !229, metadata !DIExpression()), !dbg !1300
  %667 = getelementptr inbounds ptr, ptr %23, i64 %661, !dbg !2162
  %668 = load ptr, ptr %667, align 8, !dbg !2162, !tbaa !1071
  %669 = call ptr @quote(ptr noundef %668) #40, !dbg !2162
  %670 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %663, i32 noundef 1, ptr noundef nonnull @.str.40, i32 noundef %666, ptr noundef %669) #40, !dbg !2162
  %671 = load i1, ptr @dev_debug, align 1, !dbg !2162
  br label %672, !dbg !2162

672:                                              ; preds = %659, %662
  %673 = phi i1 [ false, %659 ], [ %671, %662 ]
  %674 = add nsw i64 %661, 1, !dbg !2166
  call void @llvm.dbg.value(metadata i64 %674, metadata !244, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i32 %22, metadata !228, metadata !DIExpression()), !dbg !1300
  %675 = trunc i64 %674 to i32, !dbg !2159
  %676 = icmp eq i32 %22, %675, !dbg !2159
  br i1 %676, label %677, label %659, !dbg !2161, !llvm.loop !2167

677:                                              ; preds = %672
  %678 = load i32, ptr @optind, align 4, !dbg !2169, !tbaa !1153
  br label %679, !dbg !2169

679:                                              ; preds = %677, %651, %648
  %680 = phi i32 [ %678, %677 ], [ %654, %651 ], [ %649, %648 ], !dbg !2169
  call void @llvm.dbg.value(metadata ptr %23, metadata !229, metadata !DIExpression()), !dbg !1300
  %681 = sext i32 %680 to i64, !dbg !2170
  %682 = getelementptr inbounds ptr, ptr %23, i64 %681, !dbg !2170
  %683 = call i32 @execvp(ptr noundef %635, ptr noundef %682) #40, !dbg !2171
  %684 = tail call ptr @__errno_location() #43, !dbg !2172
  %685 = load i32, ptr %684, align 4, !dbg !2172, !tbaa !1153
  %686 = icmp eq i32 %685, 2, !dbg !2173
  call void @llvm.dbg.value(metadata i32 poison, metadata !248, metadata !DIExpression()), !dbg !1300
  %687 = call ptr @quote(ptr noundef %635) #40, !dbg !2174
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %685, ptr noundef nonnull @.str.41, ptr noundef %687) #40, !dbg !2174
  br i1 %686, label %688, label %693, !dbg !2175

688:                                              ; preds = %679
  %689 = call ptr @strpbrk(ptr noundef %635, ptr noundef nonnull @.str.42) #41, !dbg !2177
  %690 = icmp eq ptr %689, null, !dbg !2177
  br i1 %690, label %693, label %691, !dbg !2178

691:                                              ; preds = %688
  %692 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #40, !dbg !2179
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %692) #40, !dbg !2179
  br label %693, !dbg !2179

693:                                              ; preds = %468, %462, %679, %688, %691
  %694 = phi i32 [ 127, %691 ], [ 127, %688 ], [ 126, %679 ], [ 0, %462 ], [ 0, %468 ], !dbg !1300
  ret i32 %694, !dbg !2180
}

; Function Attrs: nounwind
declare !dbg !2181 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2184 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2185 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nounwind
declare !dbg !2188 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @parse_signal_action_params(ptr noundef %0, i1 noundef %1) unnamed_addr #10 !dbg !2192 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2196, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i1 %1, metadata !2197, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2206
  %3 = icmp eq ptr %0, null, !dbg !2207
  br i1 %3, label %4, label %25, !dbg !2208

4:                                                ; preds = %2
  %5 = select i1 %1, i32 2, i32 4
  %6 = load ptr, ptr @signals, align 8, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 1, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 1, metadata !2198, metadata !DIExpression()), !dbg !2209
  %7 = getelementptr inbounds i32, ptr %6, i64 1, !dbg !2210
  call void @llvm.dbg.value(metadata i64 2, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 2, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 3, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 3, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 4, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 4, metadata !2198, metadata !DIExpression()), !dbg !2209
  %8 = insertelement <4 x i32> poison, i32 %5, i64 0, !dbg !2212
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !2212
  store <4 x i32> %9, ptr %7, align 4, !dbg !2212, !tbaa !1162
  call void @llvm.dbg.value(metadata i64 5, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 5, metadata !2198, metadata !DIExpression()), !dbg !2209
  %10 = getelementptr inbounds i32, ptr %6, i64 5, !dbg !2210
  call void @llvm.dbg.value(metadata i64 6, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 6, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 7, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 7, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 8, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 8, metadata !2198, metadata !DIExpression()), !dbg !2209
  store <4 x i32> %9, ptr %10, align 4, !dbg !2212, !tbaa !1162
  call void @llvm.dbg.value(metadata i64 9, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 9, metadata !2198, metadata !DIExpression()), !dbg !2209
  %11 = getelementptr inbounds i32, ptr %6, i64 9, !dbg !2210
  call void @llvm.dbg.value(metadata i64 10, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 10, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 11, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 11, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 12, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 12, metadata !2198, metadata !DIExpression()), !dbg !2209
  store <4 x i32> %9, ptr %11, align 4, !dbg !2212, !tbaa !1162
  call void @llvm.dbg.value(metadata i64 13, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 13, metadata !2198, metadata !DIExpression()), !dbg !2209
  %12 = getelementptr inbounds i32, ptr %6, i64 13, !dbg !2210
  call void @llvm.dbg.value(metadata i64 14, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 14, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 15, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 15, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 16, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 16, metadata !2198, metadata !DIExpression()), !dbg !2209
  store <4 x i32> %9, ptr %12, align 4, !dbg !2212, !tbaa !1162
  call void @llvm.dbg.value(metadata i64 17, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 17, metadata !2198, metadata !DIExpression()), !dbg !2209
  %13 = getelementptr inbounds i32, ptr %6, i64 17, !dbg !2210
  call void @llvm.dbg.value(metadata i64 18, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 18, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 19, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 19, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 20, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 20, metadata !2198, metadata !DIExpression()), !dbg !2209
  store <4 x i32> %9, ptr %13, align 4, !dbg !2212, !tbaa !1162
  call void @llvm.dbg.value(metadata i64 21, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 21, metadata !2198, metadata !DIExpression()), !dbg !2209
  %14 = getelementptr inbounds i32, ptr %6, i64 21, !dbg !2210
  call void @llvm.dbg.value(metadata i64 22, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 22, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 23, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 23, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 24, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 24, metadata !2198, metadata !DIExpression()), !dbg !2209
  store <4 x i32> %9, ptr %14, align 4, !dbg !2212, !tbaa !1162
  call void @llvm.dbg.value(metadata i64 25, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 25, metadata !2198, metadata !DIExpression()), !dbg !2209
  %15 = getelementptr inbounds i32, ptr %6, i64 25, !dbg !2210
  call void @llvm.dbg.value(metadata i64 26, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 26, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 27, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 27, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 28, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 28, metadata !2198, metadata !DIExpression()), !dbg !2209
  store <4 x i32> %9, ptr %15, align 4, !dbg !2212, !tbaa !1162
  call void @llvm.dbg.value(metadata i64 29, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 29, metadata !2198, metadata !DIExpression()), !dbg !2209
  %16 = getelementptr inbounds i32, ptr %6, i64 29, !dbg !2210
  call void @llvm.dbg.value(metadata i64 30, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 30, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 31, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 31, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 32, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 32, metadata !2198, metadata !DIExpression()), !dbg !2209
  store <4 x i32> %9, ptr %16, align 4, !dbg !2212, !tbaa !1162
  call void @llvm.dbg.value(metadata i64 33, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 33, metadata !2198, metadata !DIExpression()), !dbg !2209
  %17 = getelementptr inbounds i32, ptr %6, i64 33, !dbg !2210
  call void @llvm.dbg.value(metadata i64 34, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 34, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 35, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 35, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 36, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 36, metadata !2198, metadata !DIExpression()), !dbg !2209
  store <4 x i32> %9, ptr %17, align 4, !dbg !2212, !tbaa !1162
  call void @llvm.dbg.value(metadata i64 37, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 37, metadata !2198, metadata !DIExpression()), !dbg !2209
  %18 = getelementptr inbounds i32, ptr %6, i64 37, !dbg !2210
  call void @llvm.dbg.value(metadata i64 38, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 38, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 39, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 39, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 40, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 40, metadata !2198, metadata !DIExpression()), !dbg !2209
  store <4 x i32> %9, ptr %18, align 4, !dbg !2212, !tbaa !1162
  call void @llvm.dbg.value(metadata i64 41, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 41, metadata !2198, metadata !DIExpression()), !dbg !2209
  %19 = getelementptr inbounds i32, ptr %6, i64 41, !dbg !2210
  call void @llvm.dbg.value(metadata i64 42, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 42, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 43, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 43, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 44, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 44, metadata !2198, metadata !DIExpression()), !dbg !2209
  store <4 x i32> %9, ptr %19, align 4, !dbg !2212, !tbaa !1162
  call void @llvm.dbg.value(metadata i64 45, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 45, metadata !2198, metadata !DIExpression()), !dbg !2209
  %20 = getelementptr inbounds i32, ptr %6, i64 45, !dbg !2210
  call void @llvm.dbg.value(metadata i64 46, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 46, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 47, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 47, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 48, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 48, metadata !2198, metadata !DIExpression()), !dbg !2209
  store <4 x i32> %9, ptr %20, align 4, !dbg !2212, !tbaa !1162
  call void @llvm.dbg.value(metadata i64 49, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 49, metadata !2198, metadata !DIExpression()), !dbg !2209
  %21 = getelementptr inbounds i32, ptr %6, i64 49, !dbg !2210
  call void @llvm.dbg.value(metadata i64 50, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 50, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 51, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 51, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 52, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 52, metadata !2198, metadata !DIExpression()), !dbg !2209
  store <4 x i32> %9, ptr %21, align 4, !dbg !2212, !tbaa !1162
  call void @llvm.dbg.value(metadata i64 53, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 53, metadata !2198, metadata !DIExpression()), !dbg !2209
  %22 = getelementptr inbounds i32, ptr %6, i64 53, !dbg !2210
  call void @llvm.dbg.value(metadata i64 54, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 54, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 55, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 55, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 56, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 56, metadata !2198, metadata !DIExpression()), !dbg !2209
  store <4 x i32> %9, ptr %22, align 4, !dbg !2212, !tbaa !1162
  call void @llvm.dbg.value(metadata i64 57, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 57, metadata !2198, metadata !DIExpression()), !dbg !2209
  %23 = getelementptr inbounds i32, ptr %6, i64 57, !dbg !2210
  call void @llvm.dbg.value(metadata i64 58, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 58, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 59, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 59, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 60, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 60, metadata !2198, metadata !DIExpression()), !dbg !2209
  store <4 x i32> %9, ptr %23, align 4, !dbg !2212, !tbaa !1162
  call void @llvm.dbg.value(metadata i64 61, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 61, metadata !2198, metadata !DIExpression()), !dbg !2209
  %24 = getelementptr inbounds i32, ptr %6, i64 61, !dbg !2210
  call void @llvm.dbg.value(metadata i64 62, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 62, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 63, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 63, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 64, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 64, metadata !2198, metadata !DIExpression()), !dbg !2209
  store <4 x i32> %9, ptr %24, align 4, !dbg !2212, !tbaa !1162
  call void @llvm.dbg.value(metadata i64 65, metadata !2198, metadata !DIExpression()), !dbg !2209
  br label %49, !dbg !2213

25:                                               ; preds = %2
  %26 = tail call noalias nonnull ptr @xstrdup(ptr noundef nonnull %0) #40, !dbg !2214
  call void @llvm.dbg.value(metadata ptr %26, metadata !2202, metadata !DIExpression()), !dbg !2206
  %27 = tail call ptr @strtok(ptr noundef nonnull %26, ptr noundef nonnull @.str.93) #40, !dbg !2215
  call void @llvm.dbg.value(metadata ptr %27, metadata !2203, metadata !DIExpression()), !dbg !2206
  %28 = icmp eq ptr %27, null, !dbg !2216
  br i1 %28, label %48, label %29, !dbg !2216

29:                                               ; preds = %25
  %30 = select i1 %1, i32 1, i32 3
  br label %31, !dbg !2216

31:                                               ; preds = %29, %42
  %32 = phi ptr [ %27, %29 ], [ %46, %42 ]
  call void @llvm.dbg.value(metadata ptr %32, metadata !2203, metadata !DIExpression()), !dbg !2206
  %33 = tail call i32 @operand2sig(ptr noundef nonnull %32) #40, !dbg !2217
  call void @llvm.dbg.value(metadata i32 %33, metadata !2204, metadata !DIExpression()), !dbg !2218
  %34 = icmp eq i32 %33, 0, !dbg !2219
  br i1 %34, label %35, label %38, !dbg !2221

35:                                               ; preds = %31
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.94, i32 noundef 5) #40, !dbg !2222
  %37 = tail call ptr @quote(ptr noundef nonnull %32) #40, !dbg !2222
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %36, ptr noundef %37) #40, !dbg !2222
  br label %40, !dbg !2223

38:                                               ; preds = %31
  %39 = icmp slt i32 %33, 1, !dbg !2224
  br i1 %39, label %40, label %42, !dbg !2223

40:                                               ; preds = %38, %35
  %41 = load volatile i32, ptr @exit_failure, align 4, !dbg !2226, !tbaa !1153
  tail call void @usage(i32 noundef %41) #46, !dbg !2227
  unreachable, !dbg !2227

42:                                               ; preds = %38
  %43 = load ptr, ptr @signals, align 8, !dbg !2228, !tbaa !1071
  %44 = zext i32 %33 to i64
  %45 = getelementptr inbounds i32, ptr %43, i64 %44, !dbg !2228
  store i32 %30, ptr %45, align 4, !dbg !2229, !tbaa !1162
  %46 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.93) #40, !dbg !2230
  call void @llvm.dbg.value(metadata ptr %46, metadata !2203, metadata !DIExpression()), !dbg !2206
  %47 = icmp eq ptr %46, null, !dbg !2216
  br i1 %47, label %48, label %31, !dbg !2216, !llvm.loop !2231

48:                                               ; preds = %42, %25
  tail call void @free(ptr noundef nonnull %26) #40, !dbg !2233
  br label %49, !dbg !2213

49:                                               ; preds = %4, %48
  ret void, !dbg !2213
}

; Function Attrs: nounwind uwtable
define internal fastcc void @parse_block_signal_params(ptr noundef %0, i1 noundef %1) unnamed_addr #10 !dbg !2234 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2236, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i1 %1, metadata !2237, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2242
  %3 = icmp eq ptr %0, null, !dbg !2243
  br i1 %3, label %9, label %4, !dbg !2245

4:                                                ; preds = %2
  %5 = load i1, ptr @sig_mask_changed, align 1, !dbg !2246
  br i1 %5, label %14, label %6, !dbg !2248

6:                                                ; preds = %4
  %7 = tail call i32 @sigemptyset(ptr noundef nonnull @block_signals) #40, !dbg !2249
  %8 = tail call i32 @sigemptyset(ptr noundef nonnull @unblock_signals) #40, !dbg !2251
  br label %14, !dbg !2252

9:                                                ; preds = %2
  %10 = select i1 %1, ptr @block_signals, ptr @unblock_signals, !dbg !2253
  %11 = tail call i32 @sigfillset(ptr noundef nonnull %10) #40, !dbg !2255
  %12 = select i1 %1, ptr @unblock_signals, ptr @block_signals, !dbg !2256
  %13 = tail call i32 @sigemptyset(ptr noundef nonnull %12) #40, !dbg !2257
  store i1 true, ptr @sig_mask_changed, align 1, !dbg !2258
  br label %46, !dbg !2259

14:                                               ; preds = %4, %6
  store i1 true, ptr @sig_mask_changed, align 1, !dbg !2258
  %15 = tail call noalias nonnull ptr @xstrdup(ptr noundef nonnull %0) #40, !dbg !2260
  call void @llvm.dbg.value(metadata ptr %15, metadata !2238, metadata !DIExpression()), !dbg !2242
  %16 = tail call ptr @strtok(ptr noundef nonnull %15, ptr noundef nonnull @.str.93) #40, !dbg !2261
  call void @llvm.dbg.value(metadata ptr %16, metadata !2239, metadata !DIExpression()), !dbg !2242
  %17 = icmp eq ptr %16, null, !dbg !2262
  br i1 %17, label %45, label %18, !dbg !2262

18:                                               ; preds = %14
  %19 = select i1 %1, ptr @block_signals, ptr @unblock_signals
  %20 = select i1 %1, ptr @unblock_signals, ptr @block_signals
  br label %21, !dbg !2262

21:                                               ; preds = %18, %42
  %22 = phi ptr [ %16, %18 ], [ %43, %42 ]
  call void @llvm.dbg.value(metadata ptr %22, metadata !2239, metadata !DIExpression()), !dbg !2242
  %23 = tail call i32 @operand2sig(ptr noundef nonnull %22) #40, !dbg !2263
  call void @llvm.dbg.value(metadata i32 %23, metadata !2240, metadata !DIExpression()), !dbg !2264
  %24 = icmp eq i32 %23, 0, !dbg !2265
  br i1 %24, label %25, label %28, !dbg !2267

25:                                               ; preds = %21
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.94, i32 noundef 5) #40, !dbg !2268
  %27 = tail call ptr @quote(ptr noundef nonnull %22) #40, !dbg !2268
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %26, ptr noundef %27) #40, !dbg !2268
  br label %30, !dbg !2269

28:                                               ; preds = %21
  %29 = icmp slt i32 %23, 1, !dbg !2270
  br i1 %29, label %30, label %32, !dbg !2269

30:                                               ; preds = %28, %25
  %31 = load volatile i32, ptr @exit_failure, align 4, !dbg !2272, !tbaa !1153
  tail call void @usage(i32 noundef %31) #46, !dbg !2273
  unreachable, !dbg !2273

32:                                               ; preds = %28
  %33 = tail call i32 @sigaddset(ptr noundef nonnull %19, i32 noundef %23) #40, !dbg !2274
  %34 = icmp eq i32 %33, -1, !dbg !2276
  br i1 %34, label %35, label %40, !dbg !2277

35:                                               ; preds = %32
  br i1 %1, label %36, label %42, !dbg !2278

36:                                               ; preds = %35
  %37 = tail call ptr @__errno_location() #43, !dbg !2280
  %38 = load i32, ptr %37, align 4, !dbg !2280, !tbaa !1153
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.95, i32 noundef 5) #40, !dbg !2280
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %38, ptr noundef %39, i32 noundef %23) #40, !dbg !2280
  unreachable, !dbg !2280

40:                                               ; preds = %32
  %41 = tail call i32 @sigdelset(ptr noundef nonnull %20, i32 noundef %23) #40, !dbg !2282
  br label %42

42:                                               ; preds = %35, %40
  %43 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.93) #40, !dbg !2283
  call void @llvm.dbg.value(metadata ptr %43, metadata !2239, metadata !DIExpression()), !dbg !2242
  %44 = icmp eq ptr %43, null, !dbg !2262
  br i1 %44, label %45, label %21, !dbg !2262, !llvm.loop !2284

45:                                               ; preds = %42, %14
  tail call void @free(ptr noundef nonnull %15) #40, !dbg !2286
  br label %46, !dbg !2287

46:                                               ; preds = %9, %45
  ret void, !dbg !2287
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @check_start_new_arg(ptr noundef %0) unnamed_addr #10 !dbg !2288 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2290, metadata !DIExpression()), !dbg !2294
  %2 = getelementptr inbounds %struct.splitbuf, ptr %0, i64 0, i32 4, !dbg !2295
  %3 = load i8, ptr %2, align 4, !dbg !2295, !tbaa !1435, !range !1458, !noundef !1080
  %4 = icmp eq i8 %3, 0, !dbg !2295
  br i1 %4, label %57, label %5, !dbg !2296

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %0, metadata !1577, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i8 0, metadata !1578, metadata !DIExpression()), !dbg !2297
  %6 = load ptr, ptr %0, align 8, !dbg !2299, !tbaa !1425
  %7 = getelementptr inbounds %struct.splitbuf, ptr %0, i64 0, i32 1, !dbg !2300
  %8 = load i32, ptr %7, align 8, !dbg !2300, !tbaa !1429
  %9 = sext i32 %8 to i64, !dbg !2301
  %10 = getelementptr inbounds ptr, ptr %6, i64 %9, !dbg !2301
  %11 = load ptr, ptr %10, align 8, !dbg !2301, !tbaa !1071
  %12 = ptrtoint ptr %11 to i64, !dbg !2302
  call void @llvm.dbg.value(metadata i64 %12, metadata !1579, metadata !DIExpression()), !dbg !2297
  %13 = getelementptr inbounds %struct.splitbuf, ptr %0, i64 0, i32 2, !dbg !2303
  %14 = load i64, ptr %13, align 8, !dbg !2303, !tbaa !1431
  %15 = shl i64 %14, 3, !dbg !2304
  %16 = icmp ugt i64 %15, %12, !dbg !2305
  br i1 %16, label %24, label %17, !dbg !2306

17:                                               ; preds = %5
  call void @llvm.dbg.value(metadata ptr %0, metadata !1590, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i64 %14, metadata !1595, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i64 %12, metadata !1596, metadata !DIExpression()), !dbg !2307
  %18 = tail call nonnull ptr @xpalloc(ptr noundef nonnull %6, ptr noundef nonnull %13, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !2309
  store ptr %18, ptr %0, align 8, !dbg !2310, !tbaa !1425
  %19 = load i64, ptr %13, align 8, !dbg !2311, !tbaa !1431
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19, !dbg !2312
  %21 = getelementptr inbounds ptr, ptr %18, i64 %14, !dbg !2313
  call void @llvm.dbg.value(metadata ptr %20, metadata !1604, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata ptr %21, metadata !1609, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i64 %12, metadata !1610, metadata !DIExpression()), !dbg !2314
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %20, ptr noundef nonnull align 1 %21, i64 noundef %12, i1 noundef false) #40, !dbg !2316
  %22 = load ptr, ptr %0, align 8, !dbg !2317, !tbaa !1425
  %23 = load i64, ptr %13, align 8, !dbg !2318, !tbaa !1431
  br label %24, !dbg !2319

24:                                               ; preds = %5, %17
  %25 = phi i64 [ %23, %17 ], [ %14, %5 ], !dbg !2318
  %26 = phi ptr [ %22, %17 ], [ %6, %5 ], !dbg !2317
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25, !dbg !2320
  %28 = getelementptr inbounds i8, ptr %27, i64 %12, !dbg !2321
  store i8 0, ptr %28, align 1, !dbg !2322, !tbaa !1162
  %29 = add nsw i64 %12, 1, !dbg !2323
  %30 = inttoptr i64 %29 to ptr, !dbg !2324
  %31 = load ptr, ptr %0, align 8, !dbg !2325, !tbaa !1425
  %32 = load i32, ptr %7, align 8, !dbg !2326, !tbaa !1429
  %33 = sext i32 %32 to i64, !dbg !2327
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33, !dbg !2327
  store ptr %30, ptr %34, align 8, !dbg !2328, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 %32, metadata !2291, metadata !DIExpression()), !dbg !2329
  %35 = load i64, ptr %13, align 8, !dbg !2330, !tbaa !1431
  %36 = getelementptr inbounds %struct.splitbuf, ptr %0, i64 0, i32 3, !dbg !2332
  %37 = load i32, ptr %36, align 8, !dbg !2332, !tbaa !1433
  %38 = add i32 %32, 1, !dbg !2333
  %39 = add i32 %38, %37, !dbg !2334
  %40 = sext i32 %39 to i64, !dbg !2335
  %41 = icmp sgt i64 %35, %40, !dbg !2336
  br i1 %41, label %51, label %42, !dbg !2337

42:                                               ; preds = %24
  call void @llvm.dbg.value(metadata ptr %0, metadata !1590, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %35, metadata !1595, metadata !DIExpression()), !dbg !2338
  %43 = load ptr, ptr %0, align 8, !dbg !2340, !tbaa !1425
  %44 = getelementptr inbounds ptr, ptr %43, i64 %33, !dbg !2341
  %45 = load ptr, ptr %44, align 8, !dbg !2341, !tbaa !1071
  %46 = ptrtoint ptr %45 to i64, !dbg !2342
  call void @llvm.dbg.value(metadata i64 %46, metadata !1596, metadata !DIExpression()), !dbg !2338
  %47 = tail call nonnull ptr @xpalloc(ptr noundef %43, ptr noundef nonnull %13, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !2343
  store ptr %47, ptr %0, align 8, !dbg !2344, !tbaa !1425
  %48 = load i64, ptr %13, align 8, !dbg !2345, !tbaa !1431
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48, !dbg !2346
  %50 = getelementptr inbounds ptr, ptr %47, i64 %35, !dbg !2347
  call void @llvm.dbg.value(metadata ptr %49, metadata !1604, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata ptr %50, metadata !1609, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i64 %46, metadata !1610, metadata !DIExpression()), !dbg !2348
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %49, ptr noundef nonnull align 1 %50, i64 noundef %46, i1 noundef false) #40, !dbg !2350
  br label %51, !dbg !2351

51:                                               ; preds = %42, %24
  %52 = load ptr, ptr %0, align 8, !dbg !2352, !tbaa !1425
  %53 = getelementptr inbounds ptr, ptr %52, i64 %33, !dbg !2353
  %54 = load ptr, ptr %53, align 8, !dbg !2353, !tbaa !1071
  %55 = sext i32 %38 to i64, !dbg !2354
  %56 = getelementptr inbounds ptr, ptr %52, i64 %55, !dbg !2354
  store ptr %54, ptr %56, align 8, !dbg !2355, !tbaa !1071
  store i32 %38, ptr %7, align 8, !dbg !2356, !tbaa !1429
  store i8 0, ptr %2, align 4, !dbg !2357, !tbaa !1435
  br label %57, !dbg !2358

57:                                               ; preds = %51, %1
  ret void, !dbg !2359
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2360 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nofree nounwind
declare !dbg !2363 noundef i32 @unsetenv(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !2366 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2370 i32 @putenv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2373 i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !2381 i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: nounwind
declare !dbg !2384 i32 @sigemptyset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2388 i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2395 i32 @sigismember(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2398 i32 @sigaddset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2401 i32 @sigdelset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2402 i32 @chdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !2404 i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2407 ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2408 i32 @sigfillset(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2409 ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local i32 @operand2sig(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2413 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2415, metadata !DIExpression()), !dbg !2426
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #40, !dbg !2427
  %4 = load i8, ptr %0, align 1, !dbg !2428, !tbaa !1162
  %5 = zext i8 %4 to i32, !dbg !2428
  call void @llvm.dbg.value(metadata i32 %5, metadata !2429, metadata !DIExpression()), !dbg !2432
  %6 = add nsw i32 %5, -48, !dbg !2434
  %7 = icmp ult i32 %6, 10, !dbg !2434
  br i1 %7, label %8, label %36, !dbg !2435

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #40, !dbg !2436
  %9 = tail call ptr @__errno_location() #43, !dbg !2437
  store i32 0, ptr %9, align 4, !dbg !2438, !tbaa !1153
  call void @llvm.dbg.value(metadata ptr %3, metadata !2417, metadata !DIExpression(DW_OP_deref)), !dbg !2439
  %10 = call i64 @strtol(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 10) #40, !dbg !2440
  %11 = freeze i64 %10, !dbg !2441
  call void @llvm.dbg.value(metadata i64 %10, metadata !2420, metadata !DIExpression()), !dbg !2439
  %12 = trunc i64 %11 to i32, !dbg !2441
  call void @llvm.dbg.value(metadata i32 %12, metadata !2421, metadata !DIExpression()), !dbg !2439
  %13 = load ptr, ptr %3, align 8, !dbg !2442, !tbaa !1071
  call void @llvm.dbg.value(metadata ptr %13, metadata !2417, metadata !DIExpression()), !dbg !2439
  %14 = icmp eq ptr %13, %0, !dbg !2443
  br i1 %14, label %27, label %15, !dbg !2444

15:                                               ; preds = %8
  %16 = load i8, ptr %13, align 1, !dbg !2445, !tbaa !1162
  %17 = icmp eq i8 %16, 0, !dbg !2445
  br i1 %17, label %18, label %27, !dbg !2446

18:                                               ; preds = %15
  %19 = load i32, ptr %9, align 4, !dbg !2447, !tbaa !1153
  %20 = icmp eq i32 %19, 0, !dbg !2447
  %21 = add i64 %11, 2147483648
  %22 = icmp ult i64 %21, 4294967296
  %23 = and i1 %22, %20, !dbg !2448
  br i1 %23, label %24, label %27, !dbg !2448

24:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i32 %12, metadata !2416, metadata !DIExpression()), !dbg !2426
  %25 = icmp eq i32 %12, -1, !dbg !2449
  %26 = icmp slt i32 %12, 255, !dbg !2451
  br i1 %26, label %27, label %30, !dbg !2451

27:                                               ; preds = %8, %15, %18, %24
  %28 = phi i1 [ %25, %24 ], [ true, %18 ], [ true, %15 ], [ true, %8 ]
  %29 = phi i32 [ %12, %24 ], [ -1, %18 ], [ -1, %15 ], [ -1, %8 ]
  br label %30, !dbg !2451

30:                                               ; preds = %24, %27
  %31 = phi i1 [ %28, %27 ], [ %25, %24 ]
  %32 = phi i32 [ %29, %27 ], [ %12, %24 ]
  %33 = phi i32 [ 127, %27 ], [ 255, %24 ]
  %34 = select i1 %31, i32 -1, i32 %33, !dbg !2451
  %35 = and i32 %34, %32, !dbg !2451
  store i32 %35, ptr %2, align 4, !dbg !2439, !tbaa !1153
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40, !dbg !2452
  br label %73, !dbg !2453

36:                                               ; preds = %1
  %37 = tail call noalias nonnull ptr @xstrdup(ptr noundef nonnull %0) #40, !dbg !2454
  call void @llvm.dbg.value(metadata ptr %37, metadata !2422, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata ptr %37, metadata !2424, metadata !DIExpression()), !dbg !2456
  %38 = load i8, ptr %37, align 1, !dbg !2457, !tbaa !1162
  %39 = icmp eq i8 %38, 0, !dbg !2459
  br i1 %39, label %40, label %43, !dbg !2459

40:                                               ; preds = %51, %36
  call void @llvm.dbg.value(metadata ptr %2, metadata !2416, metadata !DIExpression(DW_OP_deref)), !dbg !2426
  %41 = call i32 @str2sig(ptr noundef nonnull %37, ptr noundef nonnull %2) #40, !dbg !2460
  %42 = icmp eq i32 %41, 0, !dbg !2462
  br i1 %42, label %71, label %55, !dbg !2463

43:                                               ; preds = %36, %51
  %44 = phi i8 [ %53, %51 ], [ %38, %36 ]
  %45 = phi ptr [ %52, %51 ], [ %37, %36 ]
  call void @llvm.dbg.value(metadata ptr %45, metadata !2424, metadata !DIExpression()), !dbg !2456
  %46 = zext i8 %44 to i32, !dbg !2464
  %47 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.48, i32 %46, i64 27), !dbg !2466
  %48 = icmp eq ptr %47, null, !dbg !2466
  br i1 %48, label %51, label %49, !dbg !2467

49:                                               ; preds = %43
  %50 = add i8 %44, -32, !dbg !2468
  store i8 %50, ptr %45, align 1, !dbg !2468, !tbaa !1162
  br label %51, !dbg !2469

51:                                               ; preds = %43, %49
  %52 = getelementptr inbounds i8, ptr %45, i64 1, !dbg !2470
  call void @llvm.dbg.value(metadata ptr %52, metadata !2424, metadata !DIExpression()), !dbg !2456
  %53 = load i8, ptr %52, align 1, !dbg !2457, !tbaa !1162
  %54 = icmp eq i8 %53, 0, !dbg !2459
  br i1 %54, label %40, label %43, !dbg !2459, !llvm.loop !2471

55:                                               ; preds = %40
  %56 = load i8, ptr %37, align 1, !dbg !2473, !tbaa !1162
  %57 = icmp eq i8 %56, 83, !dbg !2474
  br i1 %57, label %58, label %70, !dbg !2475

58:                                               ; preds = %55
  %59 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !2476
  %60 = load i8, ptr %59, align 1, !dbg !2476, !tbaa !1162
  %61 = icmp eq i8 %60, 73, !dbg !2477
  br i1 %61, label %62, label %70, !dbg !2478

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %37, i64 2, !dbg !2479
  %64 = load i8, ptr %63, align 1, !dbg !2479, !tbaa !1162
  %65 = icmp eq i8 %64, 71, !dbg !2480
  br i1 %65, label %66, label %70, !dbg !2481

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %37, i64 3, !dbg !2482
  call void @llvm.dbg.value(metadata ptr %2, metadata !2416, metadata !DIExpression(DW_OP_deref)), !dbg !2426
  %68 = call i32 @str2sig(ptr noundef nonnull %67, ptr noundef nonnull %2) #40, !dbg !2483
  %69 = icmp eq i32 %68, 0, !dbg !2484
  br i1 %69, label %71, label %70, !dbg !2485

70:                                               ; preds = %66, %62, %58, %55
  call void @llvm.dbg.value(metadata i32 -1, metadata !2416, metadata !DIExpression()), !dbg !2426
  store i32 -1, ptr %2, align 4, !dbg !2486, !tbaa !1153
  br label %71, !dbg !2487

71:                                               ; preds = %70, %66, %40
  call void @free(ptr noundef nonnull %37) #40, !dbg !2488
  %72 = load i32, ptr %2, align 4, !dbg !2489, !tbaa !1153
  br label %73

73:                                               ; preds = %71, %30
  %74 = phi i32 [ %72, %71 ], [ %35, %30 ], !dbg !2489
  call void @llvm.dbg.value(metadata i32 %74, metadata !2416, metadata !DIExpression()), !dbg !2426
  %75 = icmp ugt i32 %74, 64, !dbg !2491
  br i1 %75, label %76, label %79, !dbg !2491

76:                                               ; preds = %73
  %77 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.49, i32 noundef 5) #40, !dbg !2492
  %78 = call ptr @quote(ptr noundef nonnull %0) #40, !dbg !2492
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %77, ptr noundef %78) #40, !dbg !2492
  br label %79, !dbg !2494

79:                                               ; preds = %73, %76
  %80 = phi i32 [ -1, %76 ], [ %74, %73 ], !dbg !2426
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #40, !dbg !2495
  ret i32 %80, !dbg !2495
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2496 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i1 @c_isalnum(i32 noundef %0) local_unnamed_addr #18 !dbg !2500 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2502, metadata !DIExpression()), !dbg !2503
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
  ], !dbg !2504

2:                                                ; preds = %1
  br label %3, !dbg !2505

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !2507
  ret i1 %4, !dbg !2508
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i1 @c_isalpha(i32 noundef %0) local_unnamed_addr #18 !dbg !2509 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2511, metadata !DIExpression()), !dbg !2512
  %2 = add i32 %0, -65, !dbg !2513
  %3 = icmp ult i32 %2, 58, !dbg !2513
  %4 = zext i32 %2 to i58, !dbg !2513
  %5 = lshr i58 -4227858433, %4, !dbg !2513
  %6 = and i58 %5, 1, !dbg !2513
  %7 = icmp ne i58 %6, 0, !dbg !2513
  %8 = select i1 %3, i1 %7, i1 false, !dbg !2513
  ret i1 %8, !dbg !2514
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i1 @c_isascii(i32 noundef %0) local_unnamed_addr #18 !dbg !2515 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2517, metadata !DIExpression()), !dbg !2518
  %2 = icmp ult i32 %0, 128, !dbg !2519
  ret i1 %2, !dbg !2520
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i1 @c_isblank(i32 noundef %0) local_unnamed_addr #18 !dbg !2521 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2523, metadata !DIExpression()), !dbg !2524
  %2 = icmp eq i32 %0, 32, !dbg !2525
  %3 = icmp eq i32 %0, 9, !dbg !2526
  %4 = or i1 %2, %3, !dbg !2526
  ret i1 %4, !dbg !2527
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i1 @c_iscntrl(i32 noundef %0) local_unnamed_addr #18 !dbg !2528 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2530, metadata !DIExpression()), !dbg !2531
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
  ], !dbg !2532

2:                                                ; preds = %1
  br label %3, !dbg !2533

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !2535
  ret i1 %4, !dbg !2536
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i1 @c_isdigit(i32 noundef %0) local_unnamed_addr #18 !dbg !2537 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2539, metadata !DIExpression()), !dbg !2540
  %2 = add i32 %0, -48, !dbg !2541
  %3 = icmp ult i32 %2, 10, !dbg !2541
  ret i1 %3, !dbg !2542
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i1 @c_isgraph(i32 noundef %0) local_unnamed_addr #18 !dbg !2543 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2545, metadata !DIExpression()), !dbg !2546
  %2 = add i32 %0, -33, !dbg !2547
  %3 = icmp ult i32 %2, 94, !dbg !2547
  ret i1 %3, !dbg !2548
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i1 @c_islower(i32 noundef %0) local_unnamed_addr #18 !dbg !2549 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2551, metadata !DIExpression()), !dbg !2552
  %2 = add i32 %0, -97, !dbg !2553
  %3 = icmp ult i32 %2, 26, !dbg !2553
  ret i1 %3, !dbg !2554
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i1 @c_isprint(i32 noundef %0) local_unnamed_addr #18 !dbg !2555 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2557, metadata !DIExpression()), !dbg !2558
  %2 = add i32 %0, -32, !dbg !2559
  %3 = icmp ult i32 %2, 95, !dbg !2559
  ret i1 %3, !dbg !2560
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i1 @c_ispunct(i32 noundef %0) local_unnamed_addr #18 !dbg !2561 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2563, metadata !DIExpression()), !dbg !2564
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
  ], !dbg !2565

2:                                                ; preds = %1
  br label %3, !dbg !2566

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !2568
  ret i1 %4, !dbg !2569
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i1 @c_isspace(i32 noundef %0) local_unnamed_addr #18 !dbg !2570 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2572, metadata !DIExpression()), !dbg !2573
  %2 = icmp ult i32 %0, 33, !dbg !2574
  %3 = zext i32 %0 to i33, !dbg !2574
  %4 = lshr i33 -4294951424, %3, !dbg !2574
  %5 = and i33 %4, 1, !dbg !2574
  %6 = icmp ne i33 %5, 0, !dbg !2574
  %7 = select i1 %2, i1 %6, i1 false, !dbg !2574
  ret i1 %7, !dbg !2575
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i1 @c_isupper(i32 noundef %0) local_unnamed_addr #18 !dbg !2576 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2578, metadata !DIExpression()), !dbg !2579
  %2 = add i32 %0, -65, !dbg !2580
  %3 = icmp ult i32 %2, 26, !dbg !2580
  ret i1 %3, !dbg !2581
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i1 @c_isxdigit(i32 noundef %0) local_unnamed_addr #18 !dbg !2582 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2584, metadata !DIExpression()), !dbg !2585
  %2 = add i32 %0, -48, !dbg !2586
  %3 = icmp ult i32 %2, 55, !dbg !2586
  %4 = zext i32 %2 to i55, !dbg !2586
  %5 = lshr i55 -562949945162753, %4, !dbg !2586
  %6 = and i55 %5, 1, !dbg !2586
  %7 = icmp ne i55 %6, 0, !dbg !2586
  %8 = select i1 %3, i1 %7, i1 false, !dbg !2586
  ret i1 %8, !dbg !2587
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @c_tolower(i32 noundef %0) local_unnamed_addr #18 !dbg !2588 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2592, metadata !DIExpression()), !dbg !2593
  %2 = add i32 %0, -65, !dbg !2594
  %3 = icmp ult i32 %2, 26, !dbg !2594
  %4 = add nsw i32 %0, 32, !dbg !2594
  %5 = select i1 %3, i32 %4, i32 %0, !dbg !2594
  ret i32 %5, !dbg !2595
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @c_toupper(i32 noundef %0) local_unnamed_addr #18 !dbg !2596 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2598, metadata !DIExpression()), !dbg !2599
  %2 = add i32 %0, -97, !dbg !2600
  %3 = icmp ult i32 %2, 26, !dbg !2600
  %4 = add nsw i32 %0, -32, !dbg !2600
  %5 = select i1 %3, i32 %4, i32 %0, !dbg !2600
  ret i32 %5, !dbg !2601
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #19 !dbg !2602 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2604, metadata !DIExpression()), !dbg !2605
  store ptr %0, ptr @file_name, align 8, !dbg !2606, !tbaa !1071
  ret void, !dbg !2607
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #19 !dbg !2608 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2612, metadata !DIExpression()), !dbg !2613
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !2614, !tbaa !2615
  ret void, !dbg !2616
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2617 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2622, !tbaa !1071
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !2623
  %3 = icmp eq i32 %2, 0, !dbg !2624
  br i1 %3, label %22, label %4, !dbg !2625

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !2626, !tbaa !2615, !range !1458, !noundef !1080
  %6 = icmp eq i8 %5, 0, !dbg !2626
  br i1 %6, label %11, label %7, !dbg !2627

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !2628
  %9 = load i32, ptr %8, align 4, !dbg !2628, !tbaa !1153
  %10 = icmp eq i32 %9, 32, !dbg !2629
  br i1 %10, label %22, label %11, !dbg !2630

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.1.58, i32 noundef 5) #40, !dbg !2631
  call void @llvm.dbg.value(metadata ptr %12, metadata !2619, metadata !DIExpression()), !dbg !2632
  %13 = load ptr, ptr @file_name, align 8, !dbg !2633, !tbaa !1071
  %14 = icmp eq ptr %13, null, !dbg !2633
  %15 = tail call ptr @__errno_location() #43, !dbg !2635
  %16 = load i32, ptr %15, align 4, !dbg !2635, !tbaa !1153
  br i1 %14, label %19, label %17, !dbg !2636

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !2637
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.59, ptr noundef %18, ptr noundef %12) #40, !dbg !2637
  br label %20, !dbg !2637

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.60, ptr noundef %12) #40, !dbg !2638
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2639, !tbaa !1153
  tail call void @_exit(i32 noundef %21) #42, !dbg !2640
  unreachable, !dbg !2640

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2641, !tbaa !1071
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !2643
  %25 = icmp eq i32 %24, 0, !dbg !2644
  br i1 %25, label %28, label %26, !dbg !2645

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2646, !tbaa !1153
  tail call void @_exit(i32 noundef %27) #42, !dbg !2647
  unreachable, !dbg !2647

28:                                               ; preds = %22
  ret void, !dbg !2648
}

; Function Attrs: noreturn
declare !dbg !2649 void @_exit(i32 noundef) local_unnamed_addr #20

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #21 !dbg !2650 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2654, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i32 %1, metadata !2655, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata ptr %2, metadata !2656, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2657, metadata !DIExpression()), !dbg !2659
  tail call fastcc void @flush_stdout(), !dbg !2660
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2661, !tbaa !1071
  %7 = icmp eq ptr %6, null, !dbg !2661
  br i1 %7, label %9, label %8, !dbg !2663

8:                                                ; preds = %4
  tail call void %6() #40, !dbg !2664
  br label %13, !dbg !2664

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2665, !tbaa !1071
  %11 = tail call ptr @getprogname() #41, !dbg !2665
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.72, ptr noundef %11) #40, !dbg !2665
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !2667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2667, !tbaa.struct !2668
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2667
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !2667
  ret void, !dbg !2669
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2670 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2672, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i32 1, metadata !2674, metadata !DIExpression()), !dbg !2677
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !2680
  %2 = icmp slt i32 %1, 0, !dbg !2681
  br i1 %2, label %6, label %3, !dbg !2682

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2683, !tbaa !1071
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !2683
  br label %6, !dbg !2683

6:                                                ; preds = %3, %0
  ret void, !dbg !2684
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2685 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2687, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 %1, metadata !2688, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %2, metadata !2689, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2690, metadata !DIExpression()), !dbg !2692
  %7 = load ptr, ptr @stderr, align 8, !dbg !2693, !tbaa !1071
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !2694, !noalias !2738
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2742
  call void @llvm.dbg.value(metadata ptr %7, metadata !2734, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata ptr %2, metadata !2735, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2736, metadata !DIExpression()), !dbg !2744
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #40, !dbg !2694
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !2694, !noalias !2738
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2745, !tbaa !1153
  %10 = add i32 %9, 1, !dbg !2745
  store i32 %10, ptr @error_message_count, align 4, !dbg !2745, !tbaa !1153
  %11 = icmp eq i32 %1, 0, !dbg !2746
  br i1 %11, label %21, label %12, !dbg !2748

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2749, metadata !DIExpression()), !dbg !2757
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !2759
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2753, metadata !DIExpression()), !dbg !2760
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !2761
  call void @llvm.dbg.value(metadata ptr %13, metadata !2752, metadata !DIExpression()), !dbg !2757
  %14 = icmp eq ptr %13, null, !dbg !2762
  br i1 %14, label %15, label %17, !dbg !2764

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.73, ptr noundef nonnull @.str.5.74, i32 noundef 5) #40, !dbg !2765
  call void @llvm.dbg.value(metadata ptr %16, metadata !2752, metadata !DIExpression()), !dbg !2757
  br label %17, !dbg !2766

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2757
  call void @llvm.dbg.value(metadata ptr %18, metadata !2752, metadata !DIExpression()), !dbg !2757
  %19 = load ptr, ptr @stderr, align 8, !dbg !2767, !tbaa !1071
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.75, ptr noundef %18) #40, !dbg !2767
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !2768
  br label %21, !dbg !2769

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2770, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 10, metadata !2771, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata ptr %22, metadata !2777, metadata !DIExpression()), !dbg !2778
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2780
  %24 = load ptr, ptr %23, align 8, !dbg !2780, !tbaa !2781
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2780
  %26 = load ptr, ptr %25, align 8, !dbg !2780, !tbaa !2783
  %27 = icmp ult ptr %24, %26, !dbg !2780
  br i1 %27, label %30, label %28, !dbg !2780, !prof !2784

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #40, !dbg !2780
  br label %32, !dbg !2780

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2780
  store ptr %31, ptr %23, align 8, !dbg !2780, !tbaa !2781
  store i8 10, ptr %24, align 1, !dbg !2780, !tbaa !1162
  br label %32, !dbg !2780

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2785, !tbaa !1071
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #40, !dbg !2785
  %35 = icmp eq i32 %0, 0, !dbg !2786
  br i1 %35, label %37, label %36, !dbg !2788

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #42, !dbg !2789
  unreachable, !dbg !2789

37:                                               ; preds = %32
  ret void, !dbg !2790
}

declare !dbg !2791 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2794 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2797 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2800 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2803 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2807 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2811, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 %1, metadata !2812, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata ptr %2, metadata !2813, metadata !DIExpression()), !dbg !2815
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #40, !dbg !2816
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2814, metadata !DIExpression()), !dbg !2817
  call void @llvm.va_start(ptr nonnull %4), !dbg !2818
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !2819
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2819, !tbaa.struct !2668
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #47, !dbg !2819
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !2819
  call void @llvm.va_end(ptr nonnull %4), !dbg !2820
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #40, !dbg !2821
  ret void, !dbg !2821
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #22

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #21 !dbg !676 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !693, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 %1, metadata !694, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata ptr %2, metadata !695, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 %3, metadata !696, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata ptr %4, metadata !697, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.declare(metadata ptr %5, metadata !698, metadata !DIExpression()), !dbg !2823
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2824, !tbaa !1153
  %9 = icmp eq i32 %8, 0, !dbg !2824
  br i1 %9, label %24, label %10, !dbg !2826

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2827, !tbaa !1153
  %12 = icmp eq i32 %11, %3, !dbg !2830
  br i1 %12, label %13, label %23, !dbg !2831

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2832, !tbaa !1071
  %15 = icmp eq ptr %14, %2, !dbg !2833
  br i1 %15, label %37, label %16, !dbg !2834

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2835
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2836
  br i1 %19, label %20, label %23, !dbg !2836

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2837
  %22 = icmp eq i32 %21, 0, !dbg !2838
  br i1 %22, label %37, label %23, !dbg !2839

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2840, !tbaa !1071
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2841, !tbaa !1153
  br label %24, !dbg !2842

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2843
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2844, !tbaa !1071
  %26 = icmp eq ptr %25, null, !dbg !2844
  br i1 %26, label %28, label %27, !dbg !2846

27:                                               ; preds = %24
  tail call void %25() #40, !dbg !2847
  br label %32, !dbg !2847

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2848, !tbaa !1071
  %30 = tail call ptr @getprogname() #41, !dbg !2848
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.78, ptr noundef %30) #40, !dbg !2848
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2850, !tbaa !1071
  %34 = icmp eq ptr %2, null, !dbg !2850
  %35 = select i1 %34, ptr @.str.3.79, ptr @.str.2.80, !dbg !2850
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #40, !dbg !2850
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !2851
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2851, !tbaa.struct !2668
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2851
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !2851
  br label %37, !dbg !2852

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2852
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2853 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2857, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i32 %1, metadata !2858, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata ptr %2, metadata !2859, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i32 %3, metadata !2860, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata ptr %4, metadata !2861, metadata !DIExpression()), !dbg !2863
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !2864
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2862, metadata !DIExpression()), !dbg !2865
  call void @llvm.va_start(ptr nonnull %6), !dbg !2866
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !2867
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2867, !tbaa.struct !2668
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #47, !dbg !2867
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !2867
  call void @llvm.va_end(ptr nonnull %6), !dbg !2868
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !2869
  ret void, !dbg !2869
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #23 !dbg !2870 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2873, !tbaa !1071
  ret ptr %1, !dbg !2874
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #24 !dbg !2875 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2877, metadata !DIExpression()), !dbg !2880
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2881
  call void @llvm.dbg.value(metadata ptr %2, metadata !2878, metadata !DIExpression()), !dbg !2880
  %3 = icmp eq ptr %2, null, !dbg !2882
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2882
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2882
  call void @llvm.dbg.value(metadata ptr %5, metadata !2879, metadata !DIExpression()), !dbg !2880
  %6 = ptrtoint ptr %5 to i64, !dbg !2883
  %7 = ptrtoint ptr %0 to i64, !dbg !2883
  %8 = sub i64 %6, %7, !dbg !2883
  %9 = icmp sgt i64 %8, 6, !dbg !2885
  br i1 %9, label %10, label %19, !dbg !2886

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2887
  call void @llvm.dbg.value(metadata ptr %11, metadata !2888, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata ptr @.str.121, metadata !2893, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i64 7, metadata !2894, metadata !DIExpression()), !dbg !2895
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.121, i64 7), !dbg !2897
  %13 = icmp eq i32 %12, 0, !dbg !2898
  br i1 %13, label %14, label %19, !dbg !2899

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2877, metadata !DIExpression()), !dbg !2880
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.122, i64 noundef 3) #41, !dbg !2900
  %16 = icmp eq i32 %15, 0, !dbg !2903
  %17 = select i1 %16, i64 3, i64 0, !dbg !2904
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2904
  br label %19, !dbg !2904

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2880
  call void @llvm.dbg.value(metadata ptr %21, metadata !2879, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata ptr %20, metadata !2877, metadata !DIExpression()), !dbg !2880
  store ptr %20, ptr @program_name, align 8, !dbg !2905, !tbaa !1071
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2906, !tbaa !1071
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2907, !tbaa !1071
  ret void, !dbg !2908
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2909 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !732 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !739, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata ptr %1, metadata !740, metadata !DIExpression()), !dbg !2910
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2911
  call void @llvm.dbg.value(metadata ptr %5, metadata !741, metadata !DIExpression()), !dbg !2910
  %6 = icmp eq ptr %5, %0, !dbg !2912
  br i1 %6, label %7, label %14, !dbg !2914

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2915
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2916
  call void @llvm.dbg.declare(metadata ptr %4, metadata !747, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata ptr %4, metadata !2918, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata ptr %4, metadata !2927, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 0, metadata !2932, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i64 8, metadata !2933, metadata !DIExpression()), !dbg !2934
  store i64 0, ptr %4, align 8, !dbg !2936
  call void @llvm.dbg.value(metadata ptr %3, metadata !742, metadata !DIExpression(DW_OP_deref)), !dbg !2910
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2937
  %9 = icmp eq i64 %8, 2, !dbg !2939
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !742, metadata !DIExpression()), !dbg !2910
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2940
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2910
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2941
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2941
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2910
  ret ptr %15, !dbg !2941
}

; Function Attrs: nounwind
declare !dbg !2942 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2948 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2953, metadata !DIExpression()), !dbg !2956
  %2 = tail call ptr @__errno_location() #43, !dbg !2957
  %3 = load i32, ptr %2, align 4, !dbg !2957, !tbaa !1153
  call void @llvm.dbg.value(metadata i32 %3, metadata !2954, metadata !DIExpression()), !dbg !2956
  %4 = icmp eq ptr %0, null, !dbg !2958
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2958
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #48, !dbg !2959
  call void @llvm.dbg.value(metadata ptr %6, metadata !2955, metadata !DIExpression()), !dbg !2956
  store i32 %3, ptr %2, align 4, !dbg !2960, !tbaa !1153
  ret ptr %6, !dbg !2961
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #25 !dbg !2962 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2968, metadata !DIExpression()), !dbg !2969
  %2 = icmp eq ptr %0, null, !dbg !2970
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2970
  %4 = load i32, ptr %3, align 8, !dbg !2971, !tbaa !2972
  ret i32 %4, !dbg !2974
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2975 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2979, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 %1, metadata !2980, metadata !DIExpression()), !dbg !2981
  %3 = icmp eq ptr %0, null, !dbg !2982
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2982
  store i32 %1, ptr %4, align 8, !dbg !2983, !tbaa !2972
  ret void, !dbg !2984
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #27 !dbg !2985 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2989, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8 %1, metadata !2990, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i32 %2, metadata !2991, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8 %1, metadata !2992, metadata !DIExpression()), !dbg !2997
  %4 = icmp eq ptr %0, null, !dbg !2998
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2998
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2999
  %7 = lshr i8 %1, 5, !dbg !3000
  %8 = zext i8 %7 to i64, !dbg !3000
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !3001
  call void @llvm.dbg.value(metadata ptr %9, metadata !2993, metadata !DIExpression()), !dbg !2997
  %10 = and i8 %1, 31, !dbg !3002
  %11 = zext i8 %10 to i32, !dbg !3002
  call void @llvm.dbg.value(metadata i32 %11, metadata !2995, metadata !DIExpression()), !dbg !2997
  %12 = load i32, ptr %9, align 4, !dbg !3003, !tbaa !1153
  %13 = lshr i32 %12, %11, !dbg !3004
  %14 = and i32 %13, 1, !dbg !3005
  call void @llvm.dbg.value(metadata i32 %14, metadata !2996, metadata !DIExpression()), !dbg !2997
  %15 = xor i32 %13, %2, !dbg !3006
  %16 = and i32 %15, 1, !dbg !3006
  %17 = shl nuw i32 %16, %11, !dbg !3007
  %18 = xor i32 %17, %12, !dbg !3008
  store i32 %18, ptr %9, align 4, !dbg !3008, !tbaa !1153
  ret i32 %14, !dbg !3009
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #27 !dbg !3010 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3014, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 %1, metadata !3015, metadata !DIExpression()), !dbg !3017
  %3 = icmp eq ptr %0, null, !dbg !3018
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3020
  call void @llvm.dbg.value(metadata ptr %4, metadata !3014, metadata !DIExpression()), !dbg !3017
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !3021
  %6 = load i32, ptr %5, align 4, !dbg !3021, !tbaa !3022
  call void @llvm.dbg.value(metadata i32 %6, metadata !3016, metadata !DIExpression()), !dbg !3017
  store i32 %1, ptr %5, align 4, !dbg !3023, !tbaa !3022
  ret i32 %6, !dbg !3024
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3025 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3029, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata ptr %1, metadata !3030, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata ptr %2, metadata !3031, metadata !DIExpression()), !dbg !3032
  %4 = icmp eq ptr %0, null, !dbg !3033
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3035
  call void @llvm.dbg.value(metadata ptr %5, metadata !3029, metadata !DIExpression()), !dbg !3032
  store i32 10, ptr %5, align 8, !dbg !3036, !tbaa !2972
  %6 = icmp ne ptr %1, null, !dbg !3037
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3039
  br i1 %8, label %10, label %9, !dbg !3039

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3040
  unreachable, !dbg !3040

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3041
  store ptr %1, ptr %11, align 8, !dbg !3042, !tbaa !3043
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3044
  store ptr %2, ptr %12, align 8, !dbg !3045, !tbaa !3046
  ret void, !dbg !3047
}

; Function Attrs: noreturn nounwind
declare !dbg !3048 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3049 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3053, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i64 %1, metadata !3054, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata ptr %2, metadata !3055, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i64 %3, metadata !3056, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata ptr %4, metadata !3057, metadata !DIExpression()), !dbg !3061
  %6 = icmp eq ptr %4, null, !dbg !3062
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !3062
  call void @llvm.dbg.value(metadata ptr %7, metadata !3058, metadata !DIExpression()), !dbg !3061
  %8 = tail call ptr @__errno_location() #43, !dbg !3063
  %9 = load i32, ptr %8, align 4, !dbg !3063, !tbaa !1153
  call void @llvm.dbg.value(metadata i32 %9, metadata !3059, metadata !DIExpression()), !dbg !3061
  %10 = load i32, ptr %7, align 8, !dbg !3064, !tbaa !2972
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !3065
  %12 = load i32, ptr %11, align 4, !dbg !3065, !tbaa !3022
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !3066
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !3067
  %15 = load ptr, ptr %14, align 8, !dbg !3067, !tbaa !3043
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !3068
  %17 = load ptr, ptr %16, align 8, !dbg !3068, !tbaa !3046
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !3069
  call void @llvm.dbg.value(metadata i64 %18, metadata !3060, metadata !DIExpression()), !dbg !3061
  store i32 %9, ptr %8, align 4, !dbg !3070, !tbaa !1153
  ret i64 %18, !dbg !3071
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !3072 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3078, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %1, metadata !3079, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr %2, metadata !3080, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %3, metadata !3081, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i32 %4, metadata !3082, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i32 %5, metadata !3083, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr %6, metadata !3084, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr %7, metadata !3085, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr %8, metadata !3086, metadata !DIExpression()), !dbg !3140
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !3141
  %17 = icmp eq i64 %16, 1, !dbg !3142
  call void @llvm.dbg.value(metadata i1 %17, metadata !3087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3140
  call void @llvm.dbg.value(metadata i64 0, metadata !3088, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 0, metadata !3089, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr null, metadata !3090, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 0, metadata !3091, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 0, metadata !3092, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i32 %5, metadata !3093, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3140
  call void @llvm.dbg.value(metadata i8 0, metadata !3094, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 1, metadata !3095, metadata !DIExpression()), !dbg !3140
  %18 = and i32 %5, 2, !dbg !3143
  %19 = icmp ne i32 %18, 0, !dbg !3143
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !3143

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !3144
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !3145
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !3146
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !3079, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 poison, metadata !3095, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 poison, metadata !3094, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 poison, metadata !3093, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 poison, metadata !3092, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %34, metadata !3091, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr %33, metadata !3090, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %32, metadata !3089, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 0, metadata !3088, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %31, metadata !3081, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr %30, metadata !3086, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr %29, metadata !3085, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i32 %28, metadata !3082, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.label(metadata !3133), !dbg !3147
  call void @llvm.dbg.value(metadata i8 0, metadata !3096, metadata !DIExpression()), !dbg !3140
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
  ], !dbg !3148

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3093, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i32 5, metadata !3082, metadata !DIExpression()), !dbg !3140
  br label %102, !dbg !3149

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3093, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i32 5, metadata !3082, metadata !DIExpression()), !dbg !3140
  br i1 %36, label %102, label %42, !dbg !3149

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !3150
  br i1 %43, label %102, label %44, !dbg !3154

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !3150, !tbaa !1162
  br label %102, !dbg !3150

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.135, metadata !828, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i32 %28, metadata !829, metadata !DIExpression()), !dbg !3155
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.136, ptr noundef nonnull @.str.11.135, i32 noundef 5) #40, !dbg !3159
  call void @llvm.dbg.value(metadata ptr %46, metadata !830, metadata !DIExpression()), !dbg !3155
  %47 = icmp eq ptr %46, @.str.11.135, !dbg !3160
  br i1 %47, label %48, label %57, !dbg !3162

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !3163
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !3164
  call void @llvm.dbg.declare(metadata ptr %13, metadata !832, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata ptr %13, metadata !3166, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata ptr %13, metadata !3174, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i32 0, metadata !3177, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i64 8, metadata !3178, metadata !DIExpression()), !dbg !3179
  store i64 0, ptr %13, align 8, !dbg !3181
  call void @llvm.dbg.value(metadata ptr %12, metadata !831, metadata !DIExpression(DW_OP_deref)), !dbg !3155
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !3182
  %50 = icmp eq i64 %49, 3, !dbg !3184
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !831, metadata !DIExpression()), !dbg !3155
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !3185
  %54 = icmp eq i32 %28, 9, !dbg !3185
  %55 = select i1 %54, ptr @.str.10.137, ptr @.str.12.138, !dbg !3185
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !3185
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !3186
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !3186
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !3155
  call void @llvm.dbg.value(metadata ptr %58, metadata !3085, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr @.str.12.138, metadata !828, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i32 %28, metadata !829, metadata !DIExpression()), !dbg !3187
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.136, ptr noundef nonnull @.str.12.138, i32 noundef 5) #40, !dbg !3189
  call void @llvm.dbg.value(metadata ptr %59, metadata !830, metadata !DIExpression()), !dbg !3187
  %60 = icmp eq ptr %59, @.str.12.138, !dbg !3190
  br i1 %60, label %61, label %70, !dbg !3191

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !3192
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !3193
  call void @llvm.dbg.declare(metadata ptr %11, metadata !832, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata ptr %11, metadata !3166, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata ptr %11, metadata !3174, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i32 0, metadata !3177, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i64 8, metadata !3178, metadata !DIExpression()), !dbg !3197
  store i64 0, ptr %11, align 8, !dbg !3199
  call void @llvm.dbg.value(metadata ptr %10, metadata !831, metadata !DIExpression(DW_OP_deref)), !dbg !3187
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !3200
  %63 = icmp eq i64 %62, 3, !dbg !3201
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !831, metadata !DIExpression()), !dbg !3187
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !3202
  %67 = icmp eq i32 %28, 9, !dbg !3202
  %68 = select i1 %67, ptr @.str.10.137, ptr @.str.12.138, !dbg !3202
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !3202
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !3203
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !3203
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !3086, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr %71, metadata !3085, metadata !DIExpression()), !dbg !3140
  br i1 %36, label %88, label %73, !dbg !3204

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !3097, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i64 0, metadata !3088, metadata !DIExpression()), !dbg !3140
  %74 = load i8, ptr %71, align 1, !dbg !3206, !tbaa !1162
  %75 = icmp eq i8 %74, 0, !dbg !3208
  br i1 %75, label %88, label %76, !dbg !3208

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !3097, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i64 %79, metadata !3088, metadata !DIExpression()), !dbg !3140
  %80 = icmp ult i64 %79, %39, !dbg !3209
  br i1 %80, label %81, label %83, !dbg !3212

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !3209
  store i8 %77, ptr %82, align 1, !dbg !3209, !tbaa !1162
  br label %83, !dbg !3209

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !3212
  call void @llvm.dbg.value(metadata i64 %84, metadata !3088, metadata !DIExpression()), !dbg !3140
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !3213
  call void @llvm.dbg.value(metadata ptr %85, metadata !3097, metadata !DIExpression()), !dbg !3205
  %86 = load i8, ptr %85, align 1, !dbg !3206, !tbaa !1162
  %87 = icmp eq i8 %86, 0, !dbg !3208
  br i1 %87, label %88, label %76, !dbg !3208, !llvm.loop !3214

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !3216
  call void @llvm.dbg.value(metadata i64 %89, metadata !3088, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 1, metadata !3092, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr %72, metadata !3090, metadata !DIExpression()), !dbg !3140
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #41, !dbg !3217
  call void @llvm.dbg.value(metadata i64 %90, metadata !3091, metadata !DIExpression()), !dbg !3140
  br label %102, !dbg !3218

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !3092, metadata !DIExpression()), !dbg !3140
  br label %93, !dbg !3219

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3093, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 poison, metadata !3092, metadata !DIExpression()), !dbg !3140
  br i1 %36, label %102, label %96, !dbg !3220

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3093, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 poison, metadata !3092, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i32 2, metadata !3082, metadata !DIExpression()), !dbg !3140
  br label %102, !dbg !3221

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3093, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 poison, metadata !3092, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i32 2, metadata !3082, metadata !DIExpression()), !dbg !3140
  br i1 %36, label %102, label %96, !dbg !3221

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !3222
  br i1 %98, label %102, label %99, !dbg !3226

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !3222, !tbaa !1162
  br label %102, !dbg !3222

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !3093, metadata !DIExpression()), !dbg !3140
  br label %102, !dbg !3227

101:                                              ; preds = %27
  call void @abort() #42, !dbg !3228
  unreachable, !dbg !3228

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !3216
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.137, %42 ], [ @.str.10.137, %44 ], [ @.str.10.137, %41 ], [ %33, %27 ], [ @.str.12.138, %96 ], [ @.str.12.138, %99 ], [ @.str.12.138, %95 ], [ @.str.10.137, %40 ], [ @.str.12.138, %93 ], [ @.str.12.138, %92 ], !dbg !3140
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !3140
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3093, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 poison, metadata !3092, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %108, metadata !3091, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr %107, metadata !3090, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %106, metadata !3088, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr %105, metadata !3086, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr %104, metadata !3085, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i32 %103, metadata !3082, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 0, metadata !3102, metadata !DIExpression()), !dbg !3229
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
  br label %122, !dbg !3230

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !3216
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !3144
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !3231
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !3079, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %129, metadata !3102, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 poison, metadata !3096, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 poison, metadata !3095, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 poison, metadata !3094, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %125, metadata !3089, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %124, metadata !3088, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %123, metadata !3081, metadata !DIExpression()), !dbg !3140
  %131 = icmp eq i64 %123, -1, !dbg !3232
  br i1 %131, label %132, label %136, !dbg !3233

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3234
  %134 = load i8, ptr %133, align 1, !dbg !3234, !tbaa !1162
  %135 = icmp eq i8 %134, 0, !dbg !3235
  br i1 %135, label %579, label %138, !dbg !3236

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !3237
  br i1 %137, label %579, label %138, !dbg !3236

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !3104, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 0, metadata !3107, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 0, metadata !3108, metadata !DIExpression()), !dbg !3238
  br i1 %114, label %139, label %152, !dbg !3239

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !3241
  %141 = select i1 %131, i1 %115, i1 false, !dbg !3242
  br i1 %141, label %142, label %144, !dbg !3242

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !3243
  call void @llvm.dbg.value(metadata i64 %143, metadata !3081, metadata !DIExpression()), !dbg !3140
  br label %144, !dbg !3244

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !3244
  call void @llvm.dbg.value(metadata i64 %145, metadata !3081, metadata !DIExpression()), !dbg !3140
  %146 = icmp ugt i64 %140, %145, !dbg !3245
  br i1 %146, label %152, label %147, !dbg !3246

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3247
  call void @llvm.dbg.value(metadata ptr %148, metadata !3248, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata ptr %107, metadata !3251, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i64 %108, metadata !3252, metadata !DIExpression()), !dbg !3253
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !3255
  %150 = icmp eq i32 %149, 0, !dbg !3256
  %151 = and i1 %150, %110, !dbg !3257
  br i1 %151, label %630, label %152, !dbg !3257

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3104, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %153, metadata !3081, metadata !DIExpression()), !dbg !3140
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3258
  %156 = load i8, ptr %155, align 1, !dbg !3258, !tbaa !1162
  call void @llvm.dbg.value(metadata i8 %156, metadata !3109, metadata !DIExpression()), !dbg !3238
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
  ], !dbg !3259

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !3260

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !3261

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !3107, metadata !DIExpression()), !dbg !3238
  %160 = select i1 %111, i1 true, i1 %128, !dbg !3265
  br i1 %160, label %177, label %161, !dbg !3265

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !3267
  br i1 %162, label %163, label %165, !dbg !3271

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3267
  store i8 39, ptr %164, align 1, !dbg !3267, !tbaa !1162
  br label %165, !dbg !3267

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !3271
  call void @llvm.dbg.value(metadata i64 %166, metadata !3088, metadata !DIExpression()), !dbg !3140
  %167 = icmp ult i64 %166, %130, !dbg !3272
  br i1 %167, label %168, label %170, !dbg !3275

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !3272
  store i8 36, ptr %169, align 1, !dbg !3272, !tbaa !1162
  br label %170, !dbg !3272

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !3275
  call void @llvm.dbg.value(metadata i64 %171, metadata !3088, metadata !DIExpression()), !dbg !3140
  %172 = icmp ult i64 %171, %130, !dbg !3276
  br i1 %172, label %173, label %175, !dbg !3279

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !3276
  store i8 39, ptr %174, align 1, !dbg !3276, !tbaa !1162
  br label %175, !dbg !3276

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !3279
  call void @llvm.dbg.value(metadata i64 %176, metadata !3088, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 1, metadata !3096, metadata !DIExpression()), !dbg !3140
  br label %177, !dbg !3280

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !3140
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3096, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %178, metadata !3088, metadata !DIExpression()), !dbg !3140
  %180 = icmp ult i64 %178, %130, !dbg !3281
  br i1 %180, label %181, label %183, !dbg !3284

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !3281
  store i8 92, ptr %182, align 1, !dbg !3281, !tbaa !1162
  br label %183, !dbg !3281

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !3284
  call void @llvm.dbg.value(metadata i64 %184, metadata !3088, metadata !DIExpression()), !dbg !3140
  br i1 %111, label %185, label %482, !dbg !3285

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !3287
  %187 = icmp ult i64 %186, %153, !dbg !3288
  br i1 %187, label %188, label %439, !dbg !3289

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !3290
  %190 = load i8, ptr %189, align 1, !dbg !3290, !tbaa !1162
  %191 = add i8 %190, -48, !dbg !3291
  %192 = icmp ult i8 %191, 10, !dbg !3291
  br i1 %192, label %193, label %439, !dbg !3291

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !3292
  br i1 %194, label %195, label %197, !dbg !3296

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !3292
  store i8 48, ptr %196, align 1, !dbg !3292, !tbaa !1162
  br label %197, !dbg !3292

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !3296
  call void @llvm.dbg.value(metadata i64 %198, metadata !3088, metadata !DIExpression()), !dbg !3140
  %199 = icmp ult i64 %198, %130, !dbg !3297
  br i1 %199, label %200, label %202, !dbg !3300

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !3297
  store i8 48, ptr %201, align 1, !dbg !3297, !tbaa !1162
  br label %202, !dbg !3297

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !3300
  call void @llvm.dbg.value(metadata i64 %203, metadata !3088, metadata !DIExpression()), !dbg !3140
  br label %439, !dbg !3301

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !3302

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !3303

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !3304

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !3306

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !3308
  %210 = icmp ult i64 %209, %153, !dbg !3309
  br i1 %210, label %211, label %439, !dbg !3310

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !3311
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !3312
  %214 = load i8, ptr %213, align 1, !dbg !3312, !tbaa !1162
  %215 = icmp eq i8 %214, 63, !dbg !3313
  br i1 %215, label %216, label %439, !dbg !3314

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !3315
  %218 = load i8, ptr %217, align 1, !dbg !3315, !tbaa !1162
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
  ], !dbg !3316

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !3317

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !3109, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %209, metadata !3102, metadata !DIExpression()), !dbg !3229
  %221 = icmp ult i64 %124, %130, !dbg !3319
  br i1 %221, label %222, label %224, !dbg !3322

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3319
  store i8 63, ptr %223, align 1, !dbg !3319, !tbaa !1162
  br label %224, !dbg !3319

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !3322
  call void @llvm.dbg.value(metadata i64 %225, metadata !3088, metadata !DIExpression()), !dbg !3140
  %226 = icmp ult i64 %225, %130, !dbg !3323
  br i1 %226, label %227, label %229, !dbg !3326

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !3323
  store i8 34, ptr %228, align 1, !dbg !3323, !tbaa !1162
  br label %229, !dbg !3323

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !3326
  call void @llvm.dbg.value(metadata i64 %230, metadata !3088, metadata !DIExpression()), !dbg !3140
  %231 = icmp ult i64 %230, %130, !dbg !3327
  br i1 %231, label %232, label %234, !dbg !3330

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !3327
  store i8 34, ptr %233, align 1, !dbg !3327, !tbaa !1162
  br label %234, !dbg !3327

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !3330
  call void @llvm.dbg.value(metadata i64 %235, metadata !3088, metadata !DIExpression()), !dbg !3140
  %236 = icmp ult i64 %235, %130, !dbg !3331
  br i1 %236, label %237, label %239, !dbg !3334

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !3331
  store i8 63, ptr %238, align 1, !dbg !3331, !tbaa !1162
  br label %239, !dbg !3331

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !3334
  call void @llvm.dbg.value(metadata i64 %240, metadata !3088, metadata !DIExpression()), !dbg !3140
  br label %439, !dbg !3335

241:                                              ; preds = %152
  br label %251, !dbg !3336

242:                                              ; preds = %152
  br label %251, !dbg !3337

243:                                              ; preds = %152
  br label %249, !dbg !3338

244:                                              ; preds = %152
  br label %249, !dbg !3339

245:                                              ; preds = %152
  br label %251, !dbg !3340

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !3341

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !3342

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !3345

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !3347
  call void @llvm.dbg.label(metadata !3134), !dbg !3348
  br i1 %119, label %621, label %251, !dbg !3349

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !3347
  call void @llvm.dbg.label(metadata !3136), !dbg !3351
  br i1 %109, label %493, label %450, !dbg !3352

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !3353

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !3354, !tbaa !1162
  %256 = icmp eq i8 %255, 0, !dbg !3356
  br i1 %256, label %257, label %439, !dbg !3357

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !3358
  br i1 %258, label %259, label %439, !dbg !3360

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !3108, metadata !DIExpression()), !dbg !3238
  br label %260, !dbg !3361

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3108, metadata !DIExpression()), !dbg !3238
  br i1 %116, label %262, label %439, !dbg !3362

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !3364

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !3094, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 1, metadata !3108, metadata !DIExpression()), !dbg !3238
  br i1 %116, label %264, label %439, !dbg !3365

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !3366

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !3369
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !3371
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !3371
  %270 = select i1 %268, i64 %130, i64 0, !dbg !3371
  call void @llvm.dbg.value(metadata i64 %270, metadata !3079, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %269, metadata !3089, metadata !DIExpression()), !dbg !3140
  %271 = icmp ult i64 %124, %270, !dbg !3372
  br i1 %271, label %272, label %274, !dbg !3375

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3372
  store i8 39, ptr %273, align 1, !dbg !3372, !tbaa !1162
  br label %274, !dbg !3372

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !3375
  call void @llvm.dbg.value(metadata i64 %275, metadata !3088, metadata !DIExpression()), !dbg !3140
  %276 = icmp ult i64 %275, %270, !dbg !3376
  br i1 %276, label %277, label %279, !dbg !3379

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !3376
  store i8 92, ptr %278, align 1, !dbg !3376, !tbaa !1162
  br label %279, !dbg !3376

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !3379
  call void @llvm.dbg.value(metadata i64 %280, metadata !3088, metadata !DIExpression()), !dbg !3140
  %281 = icmp ult i64 %280, %270, !dbg !3380
  br i1 %281, label %282, label %284, !dbg !3383

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !3380
  store i8 39, ptr %283, align 1, !dbg !3380, !tbaa !1162
  br label %284, !dbg !3380

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !3383
  call void @llvm.dbg.value(metadata i64 %285, metadata !3088, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 0, metadata !3096, metadata !DIExpression()), !dbg !3140
  br label %439, !dbg !3384

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !3385

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !3110, metadata !DIExpression()), !dbg !3386
  %288 = tail call ptr @__ctype_b_loc() #43, !dbg !3387
  %289 = load ptr, ptr %288, align 8, !dbg !3387, !tbaa !1071
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !3387
  %292 = load i16, ptr %291, align 2, !dbg !3387, !tbaa !1194
  %293 = and i16 %292, 16384, !dbg !3387
  %294 = icmp ne i16 %293, 0, !dbg !3389
  call void @llvm.dbg.value(metadata i1 %294, metadata !3113, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3386
  br label %337, !dbg !3390

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !3391
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3114, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata ptr %14, metadata !3166, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata ptr %14, metadata !3174, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i32 0, metadata !3177, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i64 8, metadata !3178, metadata !DIExpression()), !dbg !3395
  store i64 0, ptr %14, align 8, !dbg !3397
  call void @llvm.dbg.value(metadata i64 0, metadata !3110, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8 1, metadata !3113, metadata !DIExpression()), !dbg !3386
  %296 = icmp eq i64 %153, -1, !dbg !3398
  br i1 %296, label %297, label %299, !dbg !3400

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !3401
  call void @llvm.dbg.value(metadata i64 %298, metadata !3081, metadata !DIExpression()), !dbg !3140
  br label %299, !dbg !3402

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !3238
  call void @llvm.dbg.value(metadata i64 %300, metadata !3081, metadata !DIExpression()), !dbg !3140
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !3403
  %301 = sub i64 %300, %129, !dbg !3404
  call void @llvm.dbg.value(metadata ptr %15, metadata !3117, metadata !DIExpression(DW_OP_deref)), !dbg !3405
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #40, !dbg !3406
  call void @llvm.dbg.value(metadata i64 %302, metadata !3121, metadata !DIExpression()), !dbg !3405
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !3407

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !3110, metadata !DIExpression()), !dbg !3386
  %304 = icmp ugt i64 %300, %129, !dbg !3408
  br i1 %304, label %306, label %332, !dbg !3410

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !3113, metadata !DIExpression()), !dbg !3386
  br label %332, !dbg !3411

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !3110, metadata !DIExpression()), !dbg !3386
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !3413
  %310 = load i8, ptr %309, align 1, !dbg !3413, !tbaa !1162
  %311 = icmp eq i8 %310, 0, !dbg !3410
  br i1 %311, label %332, label %312, !dbg !3414

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !3415
  call void @llvm.dbg.value(metadata i64 %313, metadata !3110, metadata !DIExpression()), !dbg !3386
  %314 = add i64 %313, %129, !dbg !3416
  %315 = icmp eq i64 %313, %301, !dbg !3408
  br i1 %315, label %332, label %306, !dbg !3410, !llvm.loop !3417

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !3418
  %319 = and i1 %318, %110, !dbg !3418
  call void @llvm.dbg.value(metadata i64 1, metadata !3122, metadata !DIExpression()), !dbg !3419
  br i1 %319, label %320, label %328, !dbg !3418

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !3122, metadata !DIExpression()), !dbg !3419
  %322 = add i64 %321, %129, !dbg !3420
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !3422
  %324 = load i8, ptr %323, align 1, !dbg !3422, !tbaa !1162
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !3423

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !3424
  call void @llvm.dbg.value(metadata i64 %326, metadata !3122, metadata !DIExpression()), !dbg !3419
  %327 = icmp eq i64 %326, %302, !dbg !3425
  br i1 %327, label %328, label %320, !dbg !3426, !llvm.loop !3427

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !3429, !tbaa !1153
  call void @llvm.dbg.value(metadata i32 %329, metadata !3117, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i32 %329, metadata !3431, metadata !DIExpression()), !dbg !3439
  %330 = call i32 @iswprint(i32 noundef %329) #40, !dbg !3441
  %331 = icmp ne i32 %330, 0, !dbg !3442
  call void @llvm.dbg.value(metadata i8 poison, metadata !3113, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i64 %302, metadata !3110, metadata !DIExpression()), !dbg !3386
  br label %332, !dbg !3443

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3113, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i64 %333, metadata !3110, metadata !DIExpression()), !dbg !3386
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3444
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3445
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !3113, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i64 0, metadata !3110, metadata !DIExpression()), !dbg !3386
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3444
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3445
  call void @llvm.dbg.label(metadata !3139), !dbg !3446
  %336 = select i1 %109, i32 4, i32 2, !dbg !3447
  br label %626, !dbg !3447

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !3238
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !3449
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3113, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i64 %339, metadata !3110, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i64 %338, metadata !3081, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i1 %340, metadata !3108, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3238
  %341 = icmp ult i64 %339, 2, !dbg !3450
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !3451
  br i1 %343, label %439, label %344, !dbg !3451

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !3452
  call void @llvm.dbg.value(metadata i64 %345, metadata !3130, metadata !DIExpression()), !dbg !3453
  br label %346, !dbg !3454

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !3140
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !3229
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !3455
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !3238
  call void @llvm.dbg.value(metadata i8 %352, metadata !3109, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 %351, metadata !3107, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 poison, metadata !3104, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %349, metadata !3102, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 poison, metadata !3096, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %347, metadata !3088, metadata !DIExpression()), !dbg !3140
  br i1 %342, label %397, label %353, !dbg !3456

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !3461

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !3107, metadata !DIExpression()), !dbg !3238
  %355 = select i1 %111, i1 true, i1 %348, !dbg !3464
  br i1 %355, label %372, label %356, !dbg !3464

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !3466
  br i1 %357, label %358, label %360, !dbg !3470

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3466
  store i8 39, ptr %359, align 1, !dbg !3466, !tbaa !1162
  br label %360, !dbg !3466

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !3470
  call void @llvm.dbg.value(metadata i64 %361, metadata !3088, metadata !DIExpression()), !dbg !3140
  %362 = icmp ult i64 %361, %130, !dbg !3471
  br i1 %362, label %363, label %365, !dbg !3474

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !3471
  store i8 36, ptr %364, align 1, !dbg !3471, !tbaa !1162
  br label %365, !dbg !3471

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !3474
  call void @llvm.dbg.value(metadata i64 %366, metadata !3088, metadata !DIExpression()), !dbg !3140
  %367 = icmp ult i64 %366, %130, !dbg !3475
  br i1 %367, label %368, label %370, !dbg !3478

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !3475
  store i8 39, ptr %369, align 1, !dbg !3475, !tbaa !1162
  br label %370, !dbg !3475

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !3478
  call void @llvm.dbg.value(metadata i64 %371, metadata !3088, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 1, metadata !3096, metadata !DIExpression()), !dbg !3140
  br label %372, !dbg !3479

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !3140
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3096, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %373, metadata !3088, metadata !DIExpression()), !dbg !3140
  %375 = icmp ult i64 %373, %130, !dbg !3480
  br i1 %375, label %376, label %378, !dbg !3483

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !3480
  store i8 92, ptr %377, align 1, !dbg !3480, !tbaa !1162
  br label %378, !dbg !3480

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !3483
  call void @llvm.dbg.value(metadata i64 %379, metadata !3088, metadata !DIExpression()), !dbg !3140
  %380 = icmp ult i64 %379, %130, !dbg !3484
  br i1 %380, label %381, label %385, !dbg !3487

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !3484
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !3484
  store i8 %383, ptr %384, align 1, !dbg !3484, !tbaa !1162
  br label %385, !dbg !3484

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !3487
  call void @llvm.dbg.value(metadata i64 %386, metadata !3088, metadata !DIExpression()), !dbg !3140
  %387 = icmp ult i64 %386, %130, !dbg !3488
  br i1 %387, label %388, label %393, !dbg !3491

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !3488
  %391 = or i8 %390, 48, !dbg !3488
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3488
  store i8 %391, ptr %392, align 1, !dbg !3488, !tbaa !1162
  br label %393, !dbg !3488

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !3491
  call void @llvm.dbg.value(metadata i64 %394, metadata !3088, metadata !DIExpression()), !dbg !3140
  %395 = and i8 %352, 7, !dbg !3492
  %396 = or i8 %395, 48, !dbg !3493
  call void @llvm.dbg.value(metadata i8 %396, metadata !3109, metadata !DIExpression()), !dbg !3238
  br label %404, !dbg !3494

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !3495

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !3496
  br i1 %399, label %400, label %402, !dbg !3501

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3496
  store i8 92, ptr %401, align 1, !dbg !3496, !tbaa !1162
  br label %402, !dbg !3496

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !3501
  call void @llvm.dbg.value(metadata i64 %403, metadata !3088, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 0, metadata !3104, metadata !DIExpression()), !dbg !3238
  br label %404, !dbg !3502

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !3140
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !3238
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !3238
  call void @llvm.dbg.value(metadata i8 %409, metadata !3109, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 %408, metadata !3107, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 poison, metadata !3104, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 poison, metadata !3096, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %405, metadata !3088, metadata !DIExpression()), !dbg !3140
  %410 = add i64 %349, 1, !dbg !3503
  %411 = icmp ugt i64 %345, %410, !dbg !3505
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !3506

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !3507
  %415 = select i1 %406, i1 %414, i1 false, !dbg !3507
  br i1 %415, label %416, label %427, !dbg !3507

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !3510
  br i1 %417, label %418, label %420, !dbg !3514

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !3510
  store i8 39, ptr %419, align 1, !dbg !3510, !tbaa !1162
  br label %420, !dbg !3510

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !3514
  call void @llvm.dbg.value(metadata i64 %421, metadata !3088, metadata !DIExpression()), !dbg !3140
  %422 = icmp ult i64 %421, %130, !dbg !3515
  br i1 %422, label %423, label %425, !dbg !3518

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !3515
  store i8 39, ptr %424, align 1, !dbg !3515, !tbaa !1162
  br label %425, !dbg !3515

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !3518
  call void @llvm.dbg.value(metadata i64 %426, metadata !3088, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 0, metadata !3096, metadata !DIExpression()), !dbg !3140
  br label %427, !dbg !3519

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !3520
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3096, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %428, metadata !3088, metadata !DIExpression()), !dbg !3140
  %430 = icmp ult i64 %428, %130, !dbg !3521
  br i1 %430, label %431, label %433, !dbg !3524

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !3521
  store i8 %409, ptr %432, align 1, !dbg !3521, !tbaa !1162
  br label %433, !dbg !3521

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !3524
  call void @llvm.dbg.value(metadata i64 %434, metadata !3088, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %410, metadata !3102, metadata !DIExpression()), !dbg !3229
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !3525
  %436 = load i8, ptr %435, align 1, !dbg !3525, !tbaa !1162
  call void @llvm.dbg.value(metadata i8 %436, metadata !3109, metadata !DIExpression()), !dbg !3238
  br label %346, !dbg !3526, !llvm.loop !3527

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !3109, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i1 %340, metadata !3108, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3238
  call void @llvm.dbg.value(metadata i8 %408, metadata !3107, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 poison, metadata !3104, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %349, metadata !3102, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 poison, metadata !3096, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %405, metadata !3088, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %338, metadata !3081, metadata !DIExpression()), !dbg !3140
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !3530
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !3140
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !3144
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !3229
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !3238
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !3079, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 %448, metadata !3109, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 poison, metadata !3108, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 poison, metadata !3107, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 poison, metadata !3104, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %445, metadata !3102, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 poison, metadata !3096, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 poison, metadata !3094, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %442, metadata !3089, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %441, metadata !3088, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %440, metadata !3081, metadata !DIExpression()), !dbg !3140
  br i1 %112, label %461, label %450, !dbg !3531

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
  br i1 %121, label %462, label %482, !dbg !3533

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !3534

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
  %473 = lshr i8 %464, 5, !dbg !3535
  %474 = zext i8 %473 to i64, !dbg !3535
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !3536
  %476 = load i32, ptr %475, align 4, !dbg !3536, !tbaa !1153
  %477 = and i8 %464, 31, !dbg !3537
  %478 = zext i8 %477 to i32, !dbg !3537
  %479 = shl nuw i32 1, %478, !dbg !3538
  %480 = and i32 %476, %479, !dbg !3538
  %481 = icmp eq i32 %480, 0, !dbg !3538
  br i1 %481, label %482, label %493, !dbg !3539

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
  br i1 %154, label %493, label %529, !dbg !3540

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !3530
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !3140
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !3144
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !3541
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !3238
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !3079, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 %501, metadata !3109, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 poison, metadata !3108, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %499, metadata !3102, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 poison, metadata !3096, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 poison, metadata !3094, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %496, metadata !3089, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %495, metadata !3088, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %494, metadata !3081, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.label(metadata !3137), !dbg !3542
  br i1 %110, label %621, label %503, !dbg !3543

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !3107, metadata !DIExpression()), !dbg !3238
  %504 = select i1 %111, i1 true, i1 %498, !dbg !3545
  br i1 %504, label %521, label %505, !dbg !3545

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !3547
  br i1 %506, label %507, label %509, !dbg !3551

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !3547
  store i8 39, ptr %508, align 1, !dbg !3547, !tbaa !1162
  br label %509, !dbg !3547

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !3551
  call void @llvm.dbg.value(metadata i64 %510, metadata !3088, metadata !DIExpression()), !dbg !3140
  %511 = icmp ult i64 %510, %502, !dbg !3552
  br i1 %511, label %512, label %514, !dbg !3555

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !3552
  store i8 36, ptr %513, align 1, !dbg !3552, !tbaa !1162
  br label %514, !dbg !3552

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !3555
  call void @llvm.dbg.value(metadata i64 %515, metadata !3088, metadata !DIExpression()), !dbg !3140
  %516 = icmp ult i64 %515, %502, !dbg !3556
  br i1 %516, label %517, label %519, !dbg !3559

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !3556
  store i8 39, ptr %518, align 1, !dbg !3556, !tbaa !1162
  br label %519, !dbg !3556

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !3559
  call void @llvm.dbg.value(metadata i64 %520, metadata !3088, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 1, metadata !3096, metadata !DIExpression()), !dbg !3140
  br label %521, !dbg !3560

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !3238
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3096, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %522, metadata !3088, metadata !DIExpression()), !dbg !3140
  %524 = icmp ult i64 %522, %502, !dbg !3561
  br i1 %524, label %525, label %527, !dbg !3564

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3561
  store i8 92, ptr %526, align 1, !dbg !3561, !tbaa !1162
  br label %527, !dbg !3561

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !3564
  call void @llvm.dbg.value(metadata i64 %502, metadata !3079, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 %501, metadata !3109, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 poison, metadata !3108, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 poison, metadata !3107, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %499, metadata !3102, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 poison, metadata !3096, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 poison, metadata !3094, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %496, metadata !3089, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %528, metadata !3088, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %494, metadata !3081, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.label(metadata !3138), !dbg !3565
  br label %553, !dbg !3566

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !3530
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !3140
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !3144
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !3541
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !3569
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !3079, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 %538, metadata !3109, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 poison, metadata !3108, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 poison, metadata !3107, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %535, metadata !3102, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 poison, metadata !3096, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 poison, metadata !3094, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %532, metadata !3089, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %531, metadata !3088, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %530, metadata !3081, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.label(metadata !3138), !dbg !3565
  %540 = xor i1 %534, true, !dbg !3566
  %541 = select i1 %540, i1 true, i1 %536, !dbg !3566
  br i1 %541, label %553, label %542, !dbg !3566

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !3570
  br i1 %543, label %544, label %546, !dbg !3574

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !3570
  store i8 39, ptr %545, align 1, !dbg !3570, !tbaa !1162
  br label %546, !dbg !3570

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !3574
  call void @llvm.dbg.value(metadata i64 %547, metadata !3088, metadata !DIExpression()), !dbg !3140
  %548 = icmp ult i64 %547, %539, !dbg !3575
  br i1 %548, label %549, label %551, !dbg !3578

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !3575
  store i8 39, ptr %550, align 1, !dbg !3575, !tbaa !1162
  br label %551, !dbg !3575

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !3578
  call void @llvm.dbg.value(metadata i64 %552, metadata !3088, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 0, metadata !3096, metadata !DIExpression()), !dbg !3140
  br label %553, !dbg !3579

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !3238
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3096, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %561, metadata !3088, metadata !DIExpression()), !dbg !3140
  %563 = icmp ult i64 %561, %554, !dbg !3580
  br i1 %563, label %564, label %566, !dbg !3583

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !3580
  store i8 %555, ptr %565, align 1, !dbg !3580, !tbaa !1162
  br label %566, !dbg !3580

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3583
  call void @llvm.dbg.value(metadata i64 %567, metadata !3088, metadata !DIExpression()), !dbg !3140
  %568 = select i1 %556, i1 %127, i1 false, !dbg !3584
  call void @llvm.dbg.value(metadata i8 poison, metadata !3095, metadata !DIExpression()), !dbg !3140
  br label %569, !dbg !3585

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !3530
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !3140
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !3144
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !3541
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !3079, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %576, metadata !3102, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 poison, metadata !3096, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 poison, metadata !3095, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 poison, metadata !3094, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %572, metadata !3089, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %571, metadata !3088, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %570, metadata !3081, metadata !DIExpression()), !dbg !3140
  %578 = add i64 %576, 1, !dbg !3586
  call void @llvm.dbg.value(metadata i64 %578, metadata !3102, metadata !DIExpression()), !dbg !3229
  br label %122, !dbg !3587, !llvm.loop !3588

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !3079, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 poison, metadata !3095, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 poison, metadata !3094, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %125, metadata !3089, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %124, metadata !3088, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %123, metadata !3081, metadata !DIExpression()), !dbg !3140
  %580 = icmp ne i64 %124, 0, !dbg !3590
  %581 = xor i1 %110, true, !dbg !3592
  %582 = or i1 %580, %581, !dbg !3592
  %583 = or i1 %582, %111, !dbg !3592
  br i1 %583, label %584, label %621, !dbg !3592

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !3593
  %586 = xor i1 %126, true, !dbg !3593
  %587 = select i1 %585, i1 true, i1 %586, !dbg !3593
  br i1 %587, label %595, label %588, !dbg !3593

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !3595

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !3597
  br label %636, !dbg !3599

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !3600
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !3602
  br i1 %594, label %27, label %595, !dbg !3602

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !3603
  %598 = or i1 %597, %596, !dbg !3605
  br i1 %598, label %614, label %599, !dbg !3605

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !3090, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %124, metadata !3088, metadata !DIExpression()), !dbg !3140
  %600 = load i8, ptr %107, align 1, !dbg !3606, !tbaa !1162
  %601 = icmp eq i8 %600, 0, !dbg !3609
  br i1 %601, label %614, label %602, !dbg !3609

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !3090, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %605, metadata !3088, metadata !DIExpression()), !dbg !3140
  %606 = icmp ult i64 %605, %130, !dbg !3610
  br i1 %606, label %607, label %609, !dbg !3613

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !3610
  store i8 %603, ptr %608, align 1, !dbg !3610, !tbaa !1162
  br label %609, !dbg !3610

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !3613
  call void @llvm.dbg.value(metadata i64 %610, metadata !3088, metadata !DIExpression()), !dbg !3140
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !3614
  call void @llvm.dbg.value(metadata ptr %611, metadata !3090, metadata !DIExpression()), !dbg !3140
  %612 = load i8, ptr %611, align 1, !dbg !3606, !tbaa !1162
  %613 = icmp eq i8 %612, 0, !dbg !3609
  br i1 %613, label %614, label %602, !dbg !3609, !llvm.loop !3615

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !3216
  call void @llvm.dbg.value(metadata i64 %615, metadata !3088, metadata !DIExpression()), !dbg !3140
  %616 = icmp ult i64 %615, %130, !dbg !3617
  br i1 %616, label %617, label %636, !dbg !3619

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !3620
  store i8 0, ptr %618, align 1, !dbg !3621, !tbaa !1162
  br label %636, !dbg !3620

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !3139), !dbg !3446
  %620 = icmp eq i32 %103, 2, !dbg !3622
  br i1 %620, label %626, label %630, !dbg !3447

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !3139), !dbg !3446
  %624 = icmp eq i32 %103, 2, !dbg !3622
  %625 = select i1 %109, i32 4, i32 2, !dbg !3447
  br i1 %624, label %626, label %630, !dbg !3447

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !3447

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !3082, metadata !DIExpression()), !dbg !3140
  %634 = and i32 %5, -3, !dbg !3623
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !3624
  br label %636, !dbg !3625

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !3626
}

; Function Attrs: nounwind
declare !dbg !3627 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3630 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3633 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3635 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3639, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata i64 %1, metadata !3640, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata ptr %2, metadata !3641, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata ptr %0, metadata !3643, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i64 %1, metadata !3648, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata ptr null, metadata !3649, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata ptr %2, metadata !3650, metadata !DIExpression()), !dbg !3656
  %4 = icmp eq ptr %2, null, !dbg !3658
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3658
  call void @llvm.dbg.value(metadata ptr %5, metadata !3651, metadata !DIExpression()), !dbg !3656
  %6 = tail call ptr @__errno_location() #43, !dbg !3659
  %7 = load i32, ptr %6, align 4, !dbg !3659, !tbaa !1153
  call void @llvm.dbg.value(metadata i32 %7, metadata !3652, metadata !DIExpression()), !dbg !3656
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3660
  %9 = load i32, ptr %8, align 4, !dbg !3660, !tbaa !3022
  %10 = or i32 %9, 1, !dbg !3661
  call void @llvm.dbg.value(metadata i32 %10, metadata !3653, metadata !DIExpression()), !dbg !3656
  %11 = load i32, ptr %5, align 8, !dbg !3662, !tbaa !2972
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3663
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3664
  %14 = load ptr, ptr %13, align 8, !dbg !3664, !tbaa !3043
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3665
  %16 = load ptr, ptr %15, align 8, !dbg !3665, !tbaa !3046
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3666
  %18 = add i64 %17, 1, !dbg !3667
  call void @llvm.dbg.value(metadata i64 %18, metadata !3654, metadata !DIExpression()), !dbg !3656
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !3668
  call void @llvm.dbg.value(metadata ptr %19, metadata !3655, metadata !DIExpression()), !dbg !3656
  %20 = load i32, ptr %5, align 8, !dbg !3669, !tbaa !2972
  %21 = load ptr, ptr %13, align 8, !dbg !3670, !tbaa !3043
  %22 = load ptr, ptr %15, align 8, !dbg !3671, !tbaa !3046
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3672
  store i32 %7, ptr %6, align 4, !dbg !3673, !tbaa !1153
  ret ptr %19, !dbg !3674
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3644 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3643, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i64 %1, metadata !3648, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata ptr %2, metadata !3649, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata ptr %3, metadata !3650, metadata !DIExpression()), !dbg !3675
  %5 = icmp eq ptr %3, null, !dbg !3676
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3676
  call void @llvm.dbg.value(metadata ptr %6, metadata !3651, metadata !DIExpression()), !dbg !3675
  %7 = tail call ptr @__errno_location() #43, !dbg !3677
  %8 = load i32, ptr %7, align 4, !dbg !3677, !tbaa !1153
  call void @llvm.dbg.value(metadata i32 %8, metadata !3652, metadata !DIExpression()), !dbg !3675
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3678
  %10 = load i32, ptr %9, align 4, !dbg !3678, !tbaa !3022
  %11 = icmp eq ptr %2, null, !dbg !3679
  %12 = zext i1 %11 to i32, !dbg !3679
  %13 = or i32 %10, %12, !dbg !3680
  call void @llvm.dbg.value(metadata i32 %13, metadata !3653, metadata !DIExpression()), !dbg !3675
  %14 = load i32, ptr %6, align 8, !dbg !3681, !tbaa !2972
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3682
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3683
  %17 = load ptr, ptr %16, align 8, !dbg !3683, !tbaa !3043
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3684
  %19 = load ptr, ptr %18, align 8, !dbg !3684, !tbaa !3046
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3685
  %21 = add i64 %20, 1, !dbg !3686
  call void @llvm.dbg.value(metadata i64 %21, metadata !3654, metadata !DIExpression()), !dbg !3675
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !3687
  call void @llvm.dbg.value(metadata ptr %22, metadata !3655, metadata !DIExpression()), !dbg !3675
  %23 = load i32, ptr %6, align 8, !dbg !3688, !tbaa !2972
  %24 = load ptr, ptr %16, align 8, !dbg !3689, !tbaa !3043
  %25 = load ptr, ptr %18, align 8, !dbg !3690, !tbaa !3046
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3691
  store i32 %8, ptr %7, align 4, !dbg !3692, !tbaa !1153
  br i1 %11, label %28, label %27, !dbg !3693

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3694, !tbaa !1342
  br label %28, !dbg !3696

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3697
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3698 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3703, !tbaa !1071
  call void @llvm.dbg.value(metadata ptr %1, metadata !3700, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 1, metadata !3701, metadata !DIExpression()), !dbg !3705
  %2 = load i32, ptr @nslots, align 4, !tbaa !1153
  call void @llvm.dbg.value(metadata i32 1, metadata !3701, metadata !DIExpression()), !dbg !3705
  %3 = icmp sgt i32 %2, 1, !dbg !3706
  br i1 %3, label %4, label %6, !dbg !3708

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3706
  br label %10, !dbg !3708

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3709
  %8 = load ptr, ptr %7, align 8, !dbg !3709, !tbaa !3711
  %9 = icmp eq ptr %8, @slot0, !dbg !3713
  br i1 %9, label %17, label %16, !dbg !3714

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3701, metadata !DIExpression()), !dbg !3705
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3715
  %13 = load ptr, ptr %12, align 8, !dbg !3715, !tbaa !3711
  tail call void @free(ptr noundef %13) #40, !dbg !3716
  %14 = add nuw nsw i64 %11, 1, !dbg !3717
  call void @llvm.dbg.value(metadata i64 %14, metadata !3701, metadata !DIExpression()), !dbg !3705
  %15 = icmp eq i64 %14, %5, !dbg !3706
  br i1 %15, label %6, label %10, !dbg !3708, !llvm.loop !3718

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !3720
  store i64 256, ptr @slotvec0, align 8, !dbg !3722, !tbaa !3723
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3724, !tbaa !3711
  br label %17, !dbg !3725

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3726
  br i1 %18, label %20, label %19, !dbg !3728

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !3729
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3731, !tbaa !1071
  br label %20, !dbg !3732

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3733, !tbaa !1153
  ret void, !dbg !3734
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3735 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3737, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata ptr %1, metadata !3738, metadata !DIExpression()), !dbg !3739
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3740
  ret ptr %3, !dbg !3741
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3742 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3746, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata ptr %1, metadata !3747, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i64 %2, metadata !3748, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata ptr %3, metadata !3749, metadata !DIExpression()), !dbg !3762
  %6 = tail call ptr @__errno_location() #43, !dbg !3763
  %7 = load i32, ptr %6, align 4, !dbg !3763, !tbaa !1153
  call void @llvm.dbg.value(metadata i32 %7, metadata !3750, metadata !DIExpression()), !dbg !3762
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3764, !tbaa !1071
  call void @llvm.dbg.value(metadata ptr %8, metadata !3751, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3752, metadata !DIExpression()), !dbg !3762
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3765
  br i1 %9, label %10, label %11, !dbg !3765

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !3767
  unreachable, !dbg !3767

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3768, !tbaa !1153
  %13 = icmp sgt i32 %12, %0, !dbg !3769
  br i1 %13, label %32, label %14, !dbg !3770

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3771
  call void @llvm.dbg.value(metadata i1 %15, metadata !3753, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3772
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3773
  %16 = sext i32 %12 to i64, !dbg !3774
  call void @llvm.dbg.value(metadata i64 %16, metadata !3756, metadata !DIExpression()), !dbg !3772
  store i64 %16, ptr %5, align 8, !dbg !3775, !tbaa !1342
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3776
  %18 = add nuw nsw i32 %0, 1, !dbg !3777
  %19 = sub i32 %18, %12, !dbg !3778
  %20 = sext i32 %19 to i64, !dbg !3779
  call void @llvm.dbg.value(metadata ptr %5, metadata !3756, metadata !DIExpression(DW_OP_deref)), !dbg !3772
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3780
  call void @llvm.dbg.value(metadata ptr %21, metadata !3751, metadata !DIExpression()), !dbg !3762
  store ptr %21, ptr @slotvec, align 8, !dbg !3781, !tbaa !1071
  br i1 %15, label %22, label %23, !dbg !3782

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3783, !tbaa.struct !3785
  br label %23, !dbg !3786

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3787, !tbaa !1153
  %25 = sext i32 %24 to i64, !dbg !3788
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3788
  %27 = load i64, ptr %5, align 8, !dbg !3789, !tbaa !1342
  call void @llvm.dbg.value(metadata i64 %27, metadata !3756, metadata !DIExpression()), !dbg !3772
  %28 = sub nsw i64 %27, %25, !dbg !3790
  %29 = shl i64 %28, 4, !dbg !3791
  call void @llvm.dbg.value(metadata ptr %26, metadata !3174, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata i32 0, metadata !3177, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata i64 %29, metadata !3178, metadata !DIExpression()), !dbg !3792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3794
  %30 = load i64, ptr %5, align 8, !dbg !3795, !tbaa !1342
  call void @llvm.dbg.value(metadata i64 %30, metadata !3756, metadata !DIExpression()), !dbg !3772
  %31 = trunc i64 %30 to i32, !dbg !3795
  store i32 %31, ptr @nslots, align 4, !dbg !3796, !tbaa !1153
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3797
  br label %32, !dbg !3798

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3762
  call void @llvm.dbg.value(metadata ptr %33, metadata !3751, metadata !DIExpression()), !dbg !3762
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3799
  %36 = load i64, ptr %35, align 8, !dbg !3800, !tbaa !3723
  call void @llvm.dbg.value(metadata i64 %36, metadata !3757, metadata !DIExpression()), !dbg !3801
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3802
  %38 = load ptr, ptr %37, align 8, !dbg !3802, !tbaa !3711
  call void @llvm.dbg.value(metadata ptr %38, metadata !3759, metadata !DIExpression()), !dbg !3801
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3803
  %40 = load i32, ptr %39, align 4, !dbg !3803, !tbaa !3022
  %41 = or i32 %40, 1, !dbg !3804
  call void @llvm.dbg.value(metadata i32 %41, metadata !3760, metadata !DIExpression()), !dbg !3801
  %42 = load i32, ptr %3, align 8, !dbg !3805, !tbaa !2972
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3806
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3807
  %45 = load ptr, ptr %44, align 8, !dbg !3807, !tbaa !3043
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3808
  %47 = load ptr, ptr %46, align 8, !dbg !3808, !tbaa !3046
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3809
  call void @llvm.dbg.value(metadata i64 %48, metadata !3761, metadata !DIExpression()), !dbg !3801
  %49 = icmp ugt i64 %36, %48, !dbg !3810
  br i1 %49, label %60, label %50, !dbg !3812

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3813
  call void @llvm.dbg.value(metadata i64 %51, metadata !3757, metadata !DIExpression()), !dbg !3801
  store i64 %51, ptr %35, align 8, !dbg !3815, !tbaa !3723
  %52 = icmp eq ptr %38, @slot0, !dbg !3816
  br i1 %52, label %54, label %53, !dbg !3818

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3819
  br label %54, !dbg !3819

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !3820
  call void @llvm.dbg.value(metadata ptr %55, metadata !3759, metadata !DIExpression()), !dbg !3801
  store ptr %55, ptr %37, align 8, !dbg !3821, !tbaa !3711
  %56 = load i32, ptr %3, align 8, !dbg !3822, !tbaa !2972
  %57 = load ptr, ptr %44, align 8, !dbg !3823, !tbaa !3043
  %58 = load ptr, ptr %46, align 8, !dbg !3824, !tbaa !3046
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3825
  br label %60, !dbg !3826

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3801
  call void @llvm.dbg.value(metadata ptr %61, metadata !3759, metadata !DIExpression()), !dbg !3801
  store i32 %7, ptr %6, align 4, !dbg !3827, !tbaa !1153
  ret ptr %61, !dbg !3828
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3829 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3833, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata ptr %1, metadata !3834, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i64 %2, metadata !3835, metadata !DIExpression()), !dbg !3836
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3837
  ret ptr %4, !dbg !3838
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3839 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3841, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i32 0, metadata !3737, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata ptr %0, metadata !3738, metadata !DIExpression()), !dbg !3843
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3845
  ret ptr %2, !dbg !3846
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3847 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3851, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i64 %1, metadata !3852, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i32 0, metadata !3833, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata ptr %0, metadata !3834, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i64 %1, metadata !3835, metadata !DIExpression()), !dbg !3854
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3856
  ret ptr %3, !dbg !3857
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3858 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3862, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i32 %1, metadata !3863, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata ptr %2, metadata !3864, metadata !DIExpression()), !dbg !3866
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3867
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3865, metadata !DIExpression()), !dbg !3868
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3869), !dbg !3872
  call void @llvm.dbg.value(metadata i32 %1, metadata !3873, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3878, metadata !DIExpression()), !dbg !3881
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3881, !alias.scope !3869
  %5 = icmp eq i32 %1, 10, !dbg !3882
  br i1 %5, label %6, label %7, !dbg !3884

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3885, !noalias !3869
  unreachable, !dbg !3885

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3886, !tbaa !2972, !alias.scope !3869
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3887
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3888
  ret ptr %8, !dbg !3889
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3890 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3894, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i32 %1, metadata !3895, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata ptr %2, metadata !3896, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i64 %3, metadata !3897, metadata !DIExpression()), !dbg !3899
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3900
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3898, metadata !DIExpression()), !dbg !3901
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3902), !dbg !3905
  call void @llvm.dbg.value(metadata i32 %1, metadata !3873, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3878, metadata !DIExpression()), !dbg !3908
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3908, !alias.scope !3902
  %6 = icmp eq i32 %1, 10, !dbg !3909
  br i1 %6, label %7, label %8, !dbg !3910

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3911, !noalias !3902
  unreachable, !dbg !3911

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3912, !tbaa !2972, !alias.scope !3902
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3913
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3914
  ret ptr %9, !dbg !3915
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3916 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3920, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata ptr %1, metadata !3921, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i32 %0, metadata !3863, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata ptr %1, metadata !3864, metadata !DIExpression()), !dbg !3923
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3925
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3865, metadata !DIExpression()), !dbg !3926
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3927), !dbg !3930
  call void @llvm.dbg.value(metadata i32 %0, metadata !3873, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3878, metadata !DIExpression()), !dbg !3933
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3933, !alias.scope !3927
  %4 = icmp eq i32 %0, 10, !dbg !3934
  br i1 %4, label %5, label %6, !dbg !3935

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3936, !noalias !3927
  unreachable, !dbg !3936

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3937, !tbaa !2972, !alias.scope !3927
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3938
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3939
  ret ptr %7, !dbg !3940
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3941 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3945, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata ptr %1, metadata !3946, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i64 %2, metadata !3947, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i32 0, metadata !3894, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata i32 %0, metadata !3895, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata ptr %1, metadata !3896, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata i64 %2, metadata !3897, metadata !DIExpression()), !dbg !3949
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3951
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3898, metadata !DIExpression()), !dbg !3952
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3953), !dbg !3956
  call void @llvm.dbg.value(metadata i32 %0, metadata !3873, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3878, metadata !DIExpression()), !dbg !3959
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3959, !alias.scope !3953
  %5 = icmp eq i32 %0, 10, !dbg !3960
  br i1 %5, label %6, label %7, !dbg !3961

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3962, !noalias !3953
  unreachable, !dbg !3962

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3963, !tbaa !2972, !alias.scope !3953
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3964
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3965
  ret ptr %8, !dbg !3966
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3967 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3971, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata i64 %1, metadata !3972, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata i8 %2, metadata !3973, metadata !DIExpression()), !dbg !3975
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3976
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3974, metadata !DIExpression()), !dbg !3977
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3978, !tbaa.struct !3979
  call void @llvm.dbg.value(metadata ptr %4, metadata !2989, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i8 %2, metadata !2990, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i32 1, metadata !2991, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i8 %2, metadata !2992, metadata !DIExpression()), !dbg !3980
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3982
  %6 = lshr i8 %2, 5, !dbg !3983
  %7 = zext i8 %6 to i64, !dbg !3983
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3984
  call void @llvm.dbg.value(metadata ptr %8, metadata !2993, metadata !DIExpression()), !dbg !3980
  %9 = and i8 %2, 31, !dbg !3985
  %10 = zext i8 %9 to i32, !dbg !3985
  call void @llvm.dbg.value(metadata i32 %10, metadata !2995, metadata !DIExpression()), !dbg !3980
  %11 = load i32, ptr %8, align 4, !dbg !3986, !tbaa !1153
  %12 = lshr i32 %11, %10, !dbg !3987
  call void @llvm.dbg.value(metadata i32 %12, metadata !2996, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3980
  %13 = and i32 %12, 1, !dbg !3988
  %14 = xor i32 %13, 1, !dbg !3988
  %15 = shl nuw i32 %14, %10, !dbg !3989
  %16 = xor i32 %15, %11, !dbg !3990
  store i32 %16, ptr %8, align 4, !dbg !3990, !tbaa !1153
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3991
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3992
  ret ptr %17, !dbg !3993
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3994 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3998, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i8 %1, metadata !3999, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata ptr %0, metadata !3971, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 -1, metadata !3972, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i8 %1, metadata !3973, metadata !DIExpression()), !dbg !4001
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !4003
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3974, metadata !DIExpression()), !dbg !4004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4005, !tbaa.struct !3979
  call void @llvm.dbg.value(metadata ptr %3, metadata !2989, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i8 %1, metadata !2990, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i32 1, metadata !2991, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i8 %1, metadata !2992, metadata !DIExpression()), !dbg !4006
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !4008
  %5 = lshr i8 %1, 5, !dbg !4009
  %6 = zext i8 %5 to i64, !dbg !4009
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !4010
  call void @llvm.dbg.value(metadata ptr %7, metadata !2993, metadata !DIExpression()), !dbg !4006
  %8 = and i8 %1, 31, !dbg !4011
  %9 = zext i8 %8 to i32, !dbg !4011
  call void @llvm.dbg.value(metadata i32 %9, metadata !2995, metadata !DIExpression()), !dbg !4006
  %10 = load i32, ptr %7, align 4, !dbg !4012, !tbaa !1153
  %11 = lshr i32 %10, %9, !dbg !4013
  call void @llvm.dbg.value(metadata i32 %11, metadata !2996, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4006
  %12 = and i32 %11, 1, !dbg !4014
  %13 = xor i32 %12, 1, !dbg !4014
  %14 = shl nuw i32 %13, %9, !dbg !4015
  %15 = xor i32 %14, %10, !dbg !4016
  store i32 %15, ptr %7, align 4, !dbg !4016, !tbaa !1153
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !4017
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !4018
  ret ptr %16, !dbg !4019
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !4020 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4022, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata ptr %0, metadata !3998, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i8 58, metadata !3999, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata ptr %0, metadata !3971, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i64 -1, metadata !3972, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i8 58, metadata !3973, metadata !DIExpression()), !dbg !4026
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !4028
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3974, metadata !DIExpression()), !dbg !4029
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4030, !tbaa.struct !3979
  call void @llvm.dbg.value(metadata ptr %2, metadata !2989, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i8 58, metadata !2990, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i32 1, metadata !2991, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i8 58, metadata !2992, metadata !DIExpression()), !dbg !4031
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !4033
  call void @llvm.dbg.value(metadata ptr %3, metadata !2993, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i32 26, metadata !2995, metadata !DIExpression()), !dbg !4031
  %4 = load i32, ptr %3, align 4, !dbg !4034, !tbaa !1153
  call void @llvm.dbg.value(metadata i32 %4, metadata !2996, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4031
  %5 = or i32 %4, 67108864, !dbg !4035
  store i32 %5, ptr %3, align 4, !dbg !4035, !tbaa !1153
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !4036
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !4037
  ret ptr %6, !dbg !4038
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4039 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4041, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i64 %1, metadata !4042, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata ptr %0, metadata !3971, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i64 %1, metadata !3972, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i8 58, metadata !3973, metadata !DIExpression()), !dbg !4044
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !4046
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3974, metadata !DIExpression()), !dbg !4047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4048, !tbaa.struct !3979
  call void @llvm.dbg.value(metadata ptr %3, metadata !2989, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i8 58, metadata !2990, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i32 1, metadata !2991, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i8 58, metadata !2992, metadata !DIExpression()), !dbg !4049
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !4051
  call void @llvm.dbg.value(metadata ptr %4, metadata !2993, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i32 26, metadata !2995, metadata !DIExpression()), !dbg !4049
  %5 = load i32, ptr %4, align 4, !dbg !4052, !tbaa !1153
  call void @llvm.dbg.value(metadata i32 %5, metadata !2996, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4049
  %6 = or i32 %5, 67108864, !dbg !4053
  store i32 %6, ptr %4, align 4, !dbg !4053, !tbaa !1153
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !4054
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !4055
  ret ptr %7, !dbg !4056
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4057 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3878, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4063
  call void @llvm.dbg.value(metadata i32 %0, metadata !4059, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata i32 %1, metadata !4060, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata ptr %2, metadata !4061, metadata !DIExpression()), !dbg !4065
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !4066
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4062, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i32 %1, metadata !3873, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i32 0, metadata !3878, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4068
  %5 = icmp eq i32 %1, 10, !dbg !4069
  br i1 %5, label %6, label %7, !dbg !4070

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !4071, !noalias !4072
  unreachable, !dbg !4071

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3878, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4068
  store i32 %1, ptr %4, align 8, !dbg !4075, !tbaa.struct !3979
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !4075
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !4075
  call void @llvm.dbg.value(metadata ptr %4, metadata !2989, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata i8 58, metadata !2990, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata i32 1, metadata !2991, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata i8 58, metadata !2992, metadata !DIExpression()), !dbg !4076
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !4078
  call void @llvm.dbg.value(metadata ptr %9, metadata !2993, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata i32 26, metadata !2995, metadata !DIExpression()), !dbg !4076
  %10 = load i32, ptr %9, align 4, !dbg !4079, !tbaa !1153
  call void @llvm.dbg.value(metadata i32 %10, metadata !2996, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4076
  %11 = or i32 %10, 67108864, !dbg !4080
  store i32 %11, ptr %9, align 4, !dbg !4080, !tbaa !1153
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4081
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !4082
  ret ptr %12, !dbg !4083
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4084 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4088, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata ptr %1, metadata !4089, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata ptr %2, metadata !4090, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata ptr %3, metadata !4091, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i32 %0, metadata !4093, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata ptr %1, metadata !4098, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata ptr %2, metadata !4099, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata ptr %3, metadata !4100, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 -1, metadata !4101, metadata !DIExpression()), !dbg !4103
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !4105
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4102, metadata !DIExpression()), !dbg !4106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4107, !tbaa.struct !3979
  call void @llvm.dbg.value(metadata ptr %5, metadata !3029, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata ptr %1, metadata !3030, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata ptr %2, metadata !3031, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata ptr %5, metadata !3029, metadata !DIExpression()), !dbg !4108
  store i32 10, ptr %5, align 8, !dbg !4110, !tbaa !2972
  %6 = icmp ne ptr %1, null, !dbg !4111
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4112
  br i1 %8, label %10, label %9, !dbg !4112

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !4113
  unreachable, !dbg !4113

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4114
  store ptr %1, ptr %11, align 8, !dbg !4115, !tbaa !3043
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4116
  store ptr %2, ptr %12, align 8, !dbg !4117, !tbaa !3046
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4118
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !4119
  ret ptr %13, !dbg !4120
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4094 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4093, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata ptr %1, metadata !4098, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata ptr %2, metadata !4099, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata ptr %3, metadata !4100, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata i64 %4, metadata !4101, metadata !DIExpression()), !dbg !4121
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !4122
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4102, metadata !DIExpression()), !dbg !4123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4124, !tbaa.struct !3979
  call void @llvm.dbg.value(metadata ptr %6, metadata !3029, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata ptr %1, metadata !3030, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata ptr %2, metadata !3031, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata ptr %6, metadata !3029, metadata !DIExpression()), !dbg !4125
  store i32 10, ptr %6, align 8, !dbg !4127, !tbaa !2972
  %7 = icmp ne ptr %1, null, !dbg !4128
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4129
  br i1 %9, label %11, label %10, !dbg !4129

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !4130
  unreachable, !dbg !4130

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4131
  store ptr %1, ptr %12, align 8, !dbg !4132, !tbaa !3043
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4133
  store ptr %2, ptr %13, align 8, !dbg !4134, !tbaa !3046
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4135
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !4136
  ret ptr %14, !dbg !4137
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4138 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4142, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata ptr %1, metadata !4143, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata ptr %2, metadata !4144, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i32 0, metadata !4088, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata ptr %0, metadata !4089, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata ptr %1, metadata !4090, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata ptr %2, metadata !4091, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i32 0, metadata !4093, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %0, metadata !4098, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %1, metadata !4099, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %2, metadata !4100, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i64 -1, metadata !4101, metadata !DIExpression()), !dbg !4148
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !4150
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4102, metadata !DIExpression()), !dbg !4151
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4152, !tbaa.struct !3979
  call void @llvm.dbg.value(metadata ptr %4, metadata !3029, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata ptr %0, metadata !3030, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata ptr %1, metadata !3031, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata ptr %4, metadata !3029, metadata !DIExpression()), !dbg !4153
  store i32 10, ptr %4, align 8, !dbg !4155, !tbaa !2972
  %5 = icmp ne ptr %0, null, !dbg !4156
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4157
  br i1 %7, label %9, label %8, !dbg !4157

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !4158
  unreachable, !dbg !4158

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4159
  store ptr %0, ptr %10, align 8, !dbg !4160, !tbaa !3043
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4161
  store ptr %1, ptr %11, align 8, !dbg !4162, !tbaa !3046
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4163
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !4164
  ret ptr %12, !dbg !4165
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4166 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4170, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.value(metadata ptr %1, metadata !4171, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.value(metadata ptr %2, metadata !4172, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.value(metadata i64 %3, metadata !4173, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.value(metadata i32 0, metadata !4093, metadata !DIExpression()), !dbg !4175
  call void @llvm.dbg.value(metadata ptr %0, metadata !4098, metadata !DIExpression()), !dbg !4175
  call void @llvm.dbg.value(metadata ptr %1, metadata !4099, metadata !DIExpression()), !dbg !4175
  call void @llvm.dbg.value(metadata ptr %2, metadata !4100, metadata !DIExpression()), !dbg !4175
  call void @llvm.dbg.value(metadata i64 %3, metadata !4101, metadata !DIExpression()), !dbg !4175
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !4177
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4102, metadata !DIExpression()), !dbg !4178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4179, !tbaa.struct !3979
  call void @llvm.dbg.value(metadata ptr %5, metadata !3029, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata ptr %0, metadata !3030, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata ptr %1, metadata !3031, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata ptr %5, metadata !3029, metadata !DIExpression()), !dbg !4180
  store i32 10, ptr %5, align 8, !dbg !4182, !tbaa !2972
  %6 = icmp ne ptr %0, null, !dbg !4183
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4184
  br i1 %8, label %10, label %9, !dbg !4184

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !4185
  unreachable, !dbg !4185

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4186
  store ptr %0, ptr %11, align 8, !dbg !4187, !tbaa !3043
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4188
  store ptr %1, ptr %12, align 8, !dbg !4189, !tbaa !3046
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4190
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !4191
  ret ptr %13, !dbg !4192
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4193 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4197, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata ptr %1, metadata !4198, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata i64 %2, metadata !4199, metadata !DIExpression()), !dbg !4200
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4201
  ret ptr %4, !dbg !4202
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4203 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4207, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i64 %1, metadata !4208, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i32 0, metadata !4197, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata ptr %0, metadata !4198, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i64 %1, metadata !4199, metadata !DIExpression()), !dbg !4210
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4212
  ret ptr %3, !dbg !4213
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4214 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4218, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata ptr %1, metadata !4219, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i32 %0, metadata !4197, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata ptr %1, metadata !4198, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i64 -1, metadata !4199, metadata !DIExpression()), !dbg !4221
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4223
  ret ptr %3, !dbg !4224
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4225 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4227, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.value(metadata i32 0, metadata !4218, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.value(metadata ptr %0, metadata !4219, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.value(metadata i32 0, metadata !4197, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata ptr %0, metadata !4198, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i64 -1, metadata !4199, metadata !DIExpression()), !dbg !4231
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4233
  ret ptr %2, !dbg !4234
}

; Function Attrs: nounwind uwtable
define dso_local i32 @str2sig(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 !dbg !4235 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4239, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata ptr %1, metadata !4240, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata ptr %0, metadata !4242, metadata !DIExpression()), !dbg !4263
  %6 = load i8, ptr %0, align 1, !dbg !4265, !tbaa !1162
  %7 = zext i8 %6 to i32, !dbg !4265
  %8 = add nsw i32 %7, -48, !dbg !4265
  %9 = icmp ult i32 %8, 10, !dbg !4265
  br i1 %9, label %10, label %18, !dbg !4266

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #40, !dbg !4267
  call void @llvm.dbg.value(metadata ptr %3, metadata !4245, metadata !DIExpression(DW_OP_deref)), !dbg !4268
  %11 = call i64 @strtol(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 10) #40, !dbg !4269
  call void @llvm.dbg.value(metadata i64 %11, metadata !4248, metadata !DIExpression()), !dbg !4268
  %12 = load ptr, ptr %3, align 8, !dbg !4270, !tbaa !1071
  call void @llvm.dbg.value(metadata ptr %12, metadata !4245, metadata !DIExpression()), !dbg !4268
  %13 = load i8, ptr %12, align 1, !dbg !4272, !tbaa !1162
  %14 = icmp ne i8 %13, 0, !dbg !4272
  %15 = icmp sgt i64 %11, 64
  %16 = select i1 %14, i1 true, i1 %15, !dbg !4273
  %17 = trunc i64 %11 to i32, !dbg !4273
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40, !dbg !4274
  br i1 %16, label %74, label %75

18:                                               ; preds = %2, %23
  %19 = phi i64 [ %24, %23 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !4249, metadata !DIExpression()), !dbg !4275
  %20 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %19, i32 1, !dbg !4276
  call void @llvm.dbg.value(metadata ptr %20, metadata !4279, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata ptr %0, metadata !4282, metadata !DIExpression()), !dbg !4283
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4285
  %22 = icmp eq i32 %21, 0, !dbg !4286
  br i1 %22, label %26, label %23, !dbg !4287

23:                                               ; preds = %18
  %24 = add nuw nsw i64 %19, 1, !dbg !4288
  call void @llvm.dbg.value(metadata i64 %24, metadata !4249, metadata !DIExpression()), !dbg !4275
  %25 = icmp eq i64 %24, 35, !dbg !4289
  br i1 %25, label %30, label %18, !dbg !4290, !llvm.loop !4291

26:                                               ; preds = %18
  %27 = and i64 %19, 4294967295, !dbg !4293
  %28 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %27, !dbg !4294
  %29 = load i32, ptr %28, align 4, !dbg !4295, !tbaa !4296
  br label %75

30:                                               ; preds = %23
  %31 = tail call i32 @__libc_current_sigrtmin() #40, !dbg !4298
  call void @llvm.dbg.value(metadata i32 %31, metadata !4252, metadata !DIExpression()), !dbg !4299
  %32 = tail call i32 @__libc_current_sigrtmax() #40, !dbg !4300
  call void @llvm.dbg.value(metadata i32 %32, metadata !4254, metadata !DIExpression()), !dbg !4299
  %33 = icmp sgt i32 %31, 0, !dbg !4301
  br i1 %33, label %34, label %53, !dbg !4302

34:                                               ; preds = %30
  %35 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.147, i64 noundef 5) #41, !dbg !4303
  %36 = icmp eq i32 %35, 0, !dbg !4304
  br i1 %36, label %37, label %53, !dbg !4305

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !4306
  %38 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !4307
  call void @llvm.dbg.value(metadata ptr %4, metadata !4255, metadata !DIExpression(DW_OP_deref)), !dbg !4308
  %39 = call i64 @strtol(ptr noundef nonnull %38, ptr noundef nonnull %4, i32 noundef 10) #40, !dbg !4309
  call void @llvm.dbg.value(metadata i64 %39, metadata !4258, metadata !DIExpression()), !dbg !4308
  %40 = load ptr, ptr %4, align 8, !dbg !4310, !tbaa !1071
  call void @llvm.dbg.value(metadata ptr %40, metadata !4255, metadata !DIExpression()), !dbg !4308
  %41 = load i8, ptr %40, align 1, !dbg !4312, !tbaa !1162
  %42 = icmp eq i8 %41, 0, !dbg !4312
  %43 = icmp sgt i64 %39, -1
  %44 = select i1 %42, i1 %43, i1 false, !dbg !4313
  br i1 %44, label %45, label %49, !dbg !4313

45:                                               ; preds = %37
  %46 = sub nsw i32 %32, %31, !dbg !4314
  %47 = sext i32 %46 to i64, !dbg !4315
  %48 = icmp sgt i64 %39, %47, !dbg !4316
  br i1 %48, label %49, label %50, !dbg !4317

49:                                               ; preds = %45, %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !4318
  br label %74

50:                                               ; preds = %45
  %51 = trunc i64 %39 to i32, !dbg !4319
  %52 = add i32 %31, %51, !dbg !4319
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !4318
  br label %75

53:                                               ; preds = %34, %30
  %54 = icmp sgt i32 %32, 0, !dbg !4320
  br i1 %54, label %55, label %74, !dbg !4321

55:                                               ; preds = %53
  %56 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.1.148, i64 noundef 5) #41, !dbg !4322
  %57 = icmp eq i32 %56, 0, !dbg !4323
  br i1 %57, label %58, label %74, !dbg !4324

58:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !4325
  %59 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !4326
  call void @llvm.dbg.value(metadata ptr %5, metadata !4259, metadata !DIExpression(DW_OP_deref)), !dbg !4327
  %60 = call i64 @strtol(ptr noundef nonnull %59, ptr noundef nonnull %5, i32 noundef 10) #40, !dbg !4328
  call void @llvm.dbg.value(metadata i64 %60, metadata !4262, metadata !DIExpression()), !dbg !4327
  %61 = load ptr, ptr %5, align 8, !dbg !4329, !tbaa !1071
  call void @llvm.dbg.value(metadata ptr %61, metadata !4259, metadata !DIExpression()), !dbg !4327
  %62 = load i8, ptr %61, align 1, !dbg !4331, !tbaa !1162
  %63 = icmp eq i8 %62, 0, !dbg !4331
  br i1 %63, label %64, label %70, !dbg !4332

64:                                               ; preds = %58
  %65 = sub nsw i32 %31, %32, !dbg !4333
  %66 = sext i32 %65 to i64, !dbg !4334
  %67 = icmp sge i64 %60, %66, !dbg !4335
  %68 = icmp slt i64 %60, 1
  %69 = and i1 %67, %68, !dbg !4336
  br i1 %69, label %71, label %70, !dbg !4336

70:                                               ; preds = %64, %58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !4337
  br label %74

71:                                               ; preds = %64
  %72 = trunc i64 %60 to i32, !dbg !4338
  %73 = add i32 %32, %72, !dbg !4338
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !4337
  br label %75

74:                                               ; preds = %70, %55, %53, %49, %10
  br label %75, !dbg !4339

75:                                               ; preds = %10, %26, %50, %71, %74
  %76 = phi i32 [ %17, %10 ], [ -1, %74 ], [ %29, %26 ], [ %52, %50 ], [ %73, %71 ], !dbg !4263
  store i32 %76, ptr %1, align 4, !dbg !4340, !tbaa !1153
  %77 = ashr i32 %76, 31, !dbg !4341
  ret i32 %77, !dbg !4342
}

; Function Attrs: nounwind
declare !dbg !4343 i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4346 i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @sig2str(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4347 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4351, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata ptr %1, metadata !4352, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i32 0, metadata !4353, metadata !DIExpression()), !dbg !4361
  br label %3, !dbg !4362

3:                                                ; preds = %2, %8
  %4 = phi i64 [ 0, %2 ], [ %9, %8 ]
  call void @llvm.dbg.value(metadata i64 %4, metadata !4353, metadata !DIExpression()), !dbg !4361
  %5 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %4, !dbg !4363
  %6 = load i32, ptr %5, align 4, !dbg !4366, !tbaa !4296
  %7 = icmp eq i32 %6, %0, !dbg !4367
  br i1 %7, label %11, label %8, !dbg !4368

8:                                                ; preds = %3
  %9 = add nuw nsw i64 %4, 1, !dbg !4369
  call void @llvm.dbg.value(metadata i64 %9, metadata !4353, metadata !DIExpression()), !dbg !4361
  %10 = icmp eq i64 %9, 35, !dbg !4370
  br i1 %10, label %15, label %3, !dbg !4362, !llvm.loop !4371

11:                                               ; preds = %3
  %12 = and i64 %4, 4294967295, !dbg !4373
  %13 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %12, i32 1, !dbg !4374
  call void @llvm.dbg.value(metadata ptr %1, metadata !4376, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata ptr %13, metadata !4379, metadata !DIExpression()), !dbg !4380
  %14 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %13), !dbg !4382
  br label %33

15:                                               ; preds = %8
  %16 = tail call i32 @__libc_current_sigrtmin() #40, !dbg !4383
  call void @llvm.dbg.value(metadata i32 %16, metadata !4355, metadata !DIExpression()), !dbg !4384
  %17 = tail call i32 @__libc_current_sigrtmax() #40, !dbg !4385
  call void @llvm.dbg.value(metadata i32 %17, metadata !4357, metadata !DIExpression()), !dbg !4384
  %18 = icmp sgt i32 %16, %0, !dbg !4386
  %19 = icmp slt i32 %17, %0
  %20 = select i1 %18, i1 true, i1 %19, !dbg !4388
  br i1 %20, label %33, label %21, !dbg !4388

21:                                               ; preds = %15
  %22 = sub nsw i32 %17, %16, !dbg !4389
  %23 = sdiv i32 %22, 2, !dbg !4391
  %24 = add nsw i32 %23, %16, !dbg !4392
  %25 = icmp slt i32 %24, %0, !dbg !4393
  call void @llvm.dbg.value(metadata ptr %1, metadata !4376, metadata !DIExpression()), !dbg !4394
  call void @llvm.dbg.value(metadata ptr %1, metadata !4376, metadata !DIExpression()), !dbg !4397
  %26 = select i1 %25, ptr @.str.1.148, ptr @.str.147
  %27 = select i1 %25, i32 %17, i32 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) %26, i64 6, i1 false), !dbg !4400
  call void @llvm.dbg.value(metadata i32 %27, metadata !4358, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata !DIArgList(i32 %0, i32 %27), metadata !4359, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4384
  %28 = icmp eq i32 %27, %0, !dbg !4401
  br i1 %28, label %33, label %29, !dbg !4403

29:                                               ; preds = %21
  %30 = sub nsw i32 %0, %27, !dbg !4404
  call void @llvm.dbg.value(metadata i32 %30, metadata !4359, metadata !DIExpression()), !dbg !4384
  %31 = getelementptr inbounds i8, ptr %1, i64 5, !dbg !4405
  %32 = tail call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %31, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.2.151, i32 noundef %30) #40, !dbg !4405
  br label %33, !dbg !4405

33:                                               ; preds = %11, %15, %29, %21
  %34 = phi i32 [ 0, %11 ], [ -1, %15 ], [ 0, %29 ], [ 0, %21 ], !dbg !4360
  ret i32 %34, !dbg !4406
}

; Function Attrs: nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias nocapture readonly) #29

; Function Attrs: nofree
declare !dbg !4407 i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4410 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4449, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata ptr %1, metadata !4450, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata ptr %2, metadata !4451, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata ptr %3, metadata !4452, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata ptr %4, metadata !4453, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata i64 %5, metadata !4454, metadata !DIExpression()), !dbg !4455
  %7 = icmp eq ptr %1, null, !dbg !4456
  br i1 %7, label %10, label %8, !dbg !4458

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.152, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !4459
  br label %12, !dbg !4459

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.153, ptr noundef %2, ptr noundef %3) #40, !dbg !4460
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.3.155, i32 noundef 5) #40, !dbg !4461
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !4461
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.156, ptr noundef %0), !dbg !4462
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.5.157, i32 noundef 5) #40, !dbg !4463
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.158) #40, !dbg !4463
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.156, ptr noundef %0), !dbg !4464
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
  ], !dbg !4465

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.7.159, i32 noundef 5) #40, !dbg !4466
  %21 = load ptr, ptr %4, align 8, !dbg !4466, !tbaa !1071
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !4466
  br label %147, !dbg !4468

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.8.160, i32 noundef 5) #40, !dbg !4469
  %25 = load ptr, ptr %4, align 8, !dbg !4469, !tbaa !1071
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4469
  %27 = load ptr, ptr %26, align 8, !dbg !4469, !tbaa !1071
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !4469
  br label %147, !dbg !4470

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.9.161, i32 noundef 5) #40, !dbg !4471
  %31 = load ptr, ptr %4, align 8, !dbg !4471, !tbaa !1071
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4471
  %33 = load ptr, ptr %32, align 8, !dbg !4471, !tbaa !1071
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4471
  %35 = load ptr, ptr %34, align 8, !dbg !4471, !tbaa !1071
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !4471
  br label %147, !dbg !4472

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.10.162, i32 noundef 5) #40, !dbg !4473
  %39 = load ptr, ptr %4, align 8, !dbg !4473, !tbaa !1071
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4473
  %41 = load ptr, ptr %40, align 8, !dbg !4473, !tbaa !1071
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4473
  %43 = load ptr, ptr %42, align 8, !dbg !4473, !tbaa !1071
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4473
  %45 = load ptr, ptr %44, align 8, !dbg !4473, !tbaa !1071
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !4473
  br label %147, !dbg !4474

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.11.163, i32 noundef 5) #40, !dbg !4475
  %49 = load ptr, ptr %4, align 8, !dbg !4475, !tbaa !1071
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4475
  %51 = load ptr, ptr %50, align 8, !dbg !4475, !tbaa !1071
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4475
  %53 = load ptr, ptr %52, align 8, !dbg !4475, !tbaa !1071
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4475
  %55 = load ptr, ptr %54, align 8, !dbg !4475, !tbaa !1071
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4475
  %57 = load ptr, ptr %56, align 8, !dbg !4475, !tbaa !1071
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !4475
  br label %147, !dbg !4476

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.12.164, i32 noundef 5) #40, !dbg !4477
  %61 = load ptr, ptr %4, align 8, !dbg !4477, !tbaa !1071
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4477
  %63 = load ptr, ptr %62, align 8, !dbg !4477, !tbaa !1071
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4477
  %65 = load ptr, ptr %64, align 8, !dbg !4477, !tbaa !1071
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4477
  %67 = load ptr, ptr %66, align 8, !dbg !4477, !tbaa !1071
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4477
  %69 = load ptr, ptr %68, align 8, !dbg !4477, !tbaa !1071
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4477
  %71 = load ptr, ptr %70, align 8, !dbg !4477, !tbaa !1071
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !4477
  br label %147, !dbg !4478

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.13.165, i32 noundef 5) #40, !dbg !4479
  %75 = load ptr, ptr %4, align 8, !dbg !4479, !tbaa !1071
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4479
  %77 = load ptr, ptr %76, align 8, !dbg !4479, !tbaa !1071
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4479
  %79 = load ptr, ptr %78, align 8, !dbg !4479, !tbaa !1071
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4479
  %81 = load ptr, ptr %80, align 8, !dbg !4479, !tbaa !1071
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4479
  %83 = load ptr, ptr %82, align 8, !dbg !4479, !tbaa !1071
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4479
  %85 = load ptr, ptr %84, align 8, !dbg !4479, !tbaa !1071
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4479
  %87 = load ptr, ptr %86, align 8, !dbg !4479, !tbaa !1071
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !4479
  br label %147, !dbg !4480

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.14.166, i32 noundef 5) #40, !dbg !4481
  %91 = load ptr, ptr %4, align 8, !dbg !4481, !tbaa !1071
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4481
  %93 = load ptr, ptr %92, align 8, !dbg !4481, !tbaa !1071
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4481
  %95 = load ptr, ptr %94, align 8, !dbg !4481, !tbaa !1071
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4481
  %97 = load ptr, ptr %96, align 8, !dbg !4481, !tbaa !1071
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4481
  %99 = load ptr, ptr %98, align 8, !dbg !4481, !tbaa !1071
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4481
  %101 = load ptr, ptr %100, align 8, !dbg !4481, !tbaa !1071
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4481
  %103 = load ptr, ptr %102, align 8, !dbg !4481, !tbaa !1071
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4481
  %105 = load ptr, ptr %104, align 8, !dbg !4481, !tbaa !1071
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !4481
  br label %147, !dbg !4482

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.15.167, i32 noundef 5) #40, !dbg !4483
  %109 = load ptr, ptr %4, align 8, !dbg !4483, !tbaa !1071
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4483
  %111 = load ptr, ptr %110, align 8, !dbg !4483, !tbaa !1071
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4483
  %113 = load ptr, ptr %112, align 8, !dbg !4483, !tbaa !1071
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4483
  %115 = load ptr, ptr %114, align 8, !dbg !4483, !tbaa !1071
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4483
  %117 = load ptr, ptr %116, align 8, !dbg !4483, !tbaa !1071
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4483
  %119 = load ptr, ptr %118, align 8, !dbg !4483, !tbaa !1071
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4483
  %121 = load ptr, ptr %120, align 8, !dbg !4483, !tbaa !1071
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4483
  %123 = load ptr, ptr %122, align 8, !dbg !4483, !tbaa !1071
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4483
  %125 = load ptr, ptr %124, align 8, !dbg !4483, !tbaa !1071
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !4483
  br label %147, !dbg !4484

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.16.168, i32 noundef 5) #40, !dbg !4485
  %129 = load ptr, ptr %4, align 8, !dbg !4485, !tbaa !1071
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4485
  %131 = load ptr, ptr %130, align 8, !dbg !4485, !tbaa !1071
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4485
  %133 = load ptr, ptr %132, align 8, !dbg !4485, !tbaa !1071
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4485
  %135 = load ptr, ptr %134, align 8, !dbg !4485, !tbaa !1071
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4485
  %137 = load ptr, ptr %136, align 8, !dbg !4485, !tbaa !1071
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4485
  %139 = load ptr, ptr %138, align 8, !dbg !4485, !tbaa !1071
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4485
  %141 = load ptr, ptr %140, align 8, !dbg !4485, !tbaa !1071
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4485
  %143 = load ptr, ptr %142, align 8, !dbg !4485, !tbaa !1071
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4485
  %145 = load ptr, ptr %144, align 8, !dbg !4485, !tbaa !1071
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !4485
  br label %147, !dbg !4486

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4487
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4488 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4492, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata ptr %1, metadata !4493, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata ptr %2, metadata !4494, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata ptr %3, metadata !4495, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata ptr %4, metadata !4496, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i64 0, metadata !4497, metadata !DIExpression()), !dbg !4498
  br label %6, !dbg !4499

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4501
  call void @llvm.dbg.value(metadata i64 %7, metadata !4497, metadata !DIExpression()), !dbg !4498
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4502
  %9 = load ptr, ptr %8, align 8, !dbg !4502, !tbaa !1071
  %10 = icmp eq ptr %9, null, !dbg !4504
  %11 = add i64 %7, 1, !dbg !4505
  call void @llvm.dbg.value(metadata i64 %11, metadata !4497, metadata !DIExpression()), !dbg !4498
  br i1 %10, label %12, label %6, !dbg !4504, !llvm.loop !4506

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4508
  ret void, !dbg !4509
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4510 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4525, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata ptr %1, metadata !4526, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata ptr %2, metadata !4527, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata ptr %3, metadata !4528, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4529, metadata !DIExpression()), !dbg !4534
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !4535
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4531, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata i64 0, metadata !4530, metadata !DIExpression()), !dbg !4533
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4530, metadata !DIExpression()), !dbg !4533
  %10 = icmp sgt i32 %9, -1, !dbg !4537
  br i1 %10, label %18, label %11, !dbg !4537

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4537
  store i32 %12, ptr %7, align 8, !dbg !4537
  %13 = icmp ult i32 %9, -7, !dbg !4537
  br i1 %13, label %14, label %18, !dbg !4537

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4537
  %16 = sext i32 %9 to i64, !dbg !4537
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4537
  br label %22, !dbg !4537

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4537
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4537
  store ptr %21, ptr %4, align 8, !dbg !4537
  br label %22, !dbg !4537

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4537
  %25 = load ptr, ptr %24, align 8, !dbg !4537
  store ptr %25, ptr %6, align 8, !dbg !4540, !tbaa !1071
  %26 = icmp eq ptr %25, null, !dbg !4541
  br i1 %26, label %197, label %27, !dbg !4542

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !4530, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i64 1, metadata !4530, metadata !DIExpression()), !dbg !4533
  %28 = icmp sgt i32 %23, -1, !dbg !4537
  br i1 %28, label %36, label %29, !dbg !4537

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4537
  store i32 %30, ptr %7, align 8, !dbg !4537
  %31 = icmp ult i32 %23, -7, !dbg !4537
  br i1 %31, label %32, label %36, !dbg !4537

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4537
  %34 = sext i32 %23 to i64, !dbg !4537
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4537
  br label %40, !dbg !4537

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4537
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4537
  store ptr %39, ptr %4, align 8, !dbg !4537
  br label %40, !dbg !4537

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4537
  %43 = load ptr, ptr %42, align 8, !dbg !4537
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4543
  store ptr %43, ptr %44, align 8, !dbg !4540, !tbaa !1071
  %45 = icmp eq ptr %43, null, !dbg !4541
  br i1 %45, label %197, label %46, !dbg !4542

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4530, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i64 2, metadata !4530, metadata !DIExpression()), !dbg !4533
  %47 = icmp sgt i32 %41, -1, !dbg !4537
  br i1 %47, label %55, label %48, !dbg !4537

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4537
  store i32 %49, ptr %7, align 8, !dbg !4537
  %50 = icmp ult i32 %41, -7, !dbg !4537
  br i1 %50, label %51, label %55, !dbg !4537

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4537
  %53 = sext i32 %41 to i64, !dbg !4537
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4537
  br label %59, !dbg !4537

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4537
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4537
  store ptr %58, ptr %4, align 8, !dbg !4537
  br label %59, !dbg !4537

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4537
  %62 = load ptr, ptr %61, align 8, !dbg !4537
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4543
  store ptr %62, ptr %63, align 8, !dbg !4540, !tbaa !1071
  %64 = icmp eq ptr %62, null, !dbg !4541
  br i1 %64, label %197, label %65, !dbg !4542

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !4530, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i64 3, metadata !4530, metadata !DIExpression()), !dbg !4533
  %66 = icmp sgt i32 %60, -1, !dbg !4537
  br i1 %66, label %74, label %67, !dbg !4537

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4537
  store i32 %68, ptr %7, align 8, !dbg !4537
  %69 = icmp ult i32 %60, -7, !dbg !4537
  br i1 %69, label %70, label %74, !dbg !4537

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4537
  %72 = sext i32 %60 to i64, !dbg !4537
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4537
  br label %78, !dbg !4537

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4537
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4537
  store ptr %77, ptr %4, align 8, !dbg !4537
  br label %78, !dbg !4537

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4537
  %81 = load ptr, ptr %80, align 8, !dbg !4537
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4543
  store ptr %81, ptr %82, align 8, !dbg !4540, !tbaa !1071
  %83 = icmp eq ptr %81, null, !dbg !4541
  br i1 %83, label %197, label %84, !dbg !4542

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !4530, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i64 4, metadata !4530, metadata !DIExpression()), !dbg !4533
  %85 = icmp sgt i32 %79, -1, !dbg !4537
  br i1 %85, label %93, label %86, !dbg !4537

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4537
  store i32 %87, ptr %7, align 8, !dbg !4537
  %88 = icmp ult i32 %79, -7, !dbg !4537
  br i1 %88, label %89, label %93, !dbg !4537

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4537
  %91 = sext i32 %79 to i64, !dbg !4537
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4537
  br label %97, !dbg !4537

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4537
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4537
  store ptr %96, ptr %4, align 8, !dbg !4537
  br label %97, !dbg !4537

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4537
  %100 = load ptr, ptr %99, align 8, !dbg !4537
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4543
  store ptr %100, ptr %101, align 8, !dbg !4540, !tbaa !1071
  %102 = icmp eq ptr %100, null, !dbg !4541
  br i1 %102, label %197, label %103, !dbg !4542

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !4530, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i64 5, metadata !4530, metadata !DIExpression()), !dbg !4533
  %104 = icmp sgt i32 %98, -1, !dbg !4537
  br i1 %104, label %112, label %105, !dbg !4537

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4537
  store i32 %106, ptr %7, align 8, !dbg !4537
  %107 = icmp ult i32 %98, -7, !dbg !4537
  br i1 %107, label %108, label %112, !dbg !4537

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4537
  %110 = sext i32 %98 to i64, !dbg !4537
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4537
  br label %116, !dbg !4537

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4537
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4537
  store ptr %115, ptr %4, align 8, !dbg !4537
  br label %116, !dbg !4537

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4537
  %119 = load ptr, ptr %118, align 8, !dbg !4537
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4543
  store ptr %119, ptr %120, align 8, !dbg !4540, !tbaa !1071
  %121 = icmp eq ptr %119, null, !dbg !4541
  br i1 %121, label %197, label %122, !dbg !4542

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !4530, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i64 6, metadata !4530, metadata !DIExpression()), !dbg !4533
  %123 = icmp sgt i32 %117, -1, !dbg !4537
  br i1 %123, label %131, label %124, !dbg !4537

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4537
  store i32 %125, ptr %7, align 8, !dbg !4537
  %126 = icmp ult i32 %117, -7, !dbg !4537
  br i1 %126, label %127, label %131, !dbg !4537

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4537
  %129 = sext i32 %117 to i64, !dbg !4537
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4537
  br label %135, !dbg !4537

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4537
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4537
  store ptr %134, ptr %4, align 8, !dbg !4537
  br label %135, !dbg !4537

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4537
  %138 = load ptr, ptr %137, align 8, !dbg !4537
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4543
  store ptr %138, ptr %139, align 8, !dbg !4540, !tbaa !1071
  %140 = icmp eq ptr %138, null, !dbg !4541
  br i1 %140, label %197, label %141, !dbg !4542

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !4530, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i64 7, metadata !4530, metadata !DIExpression()), !dbg !4533
  %142 = icmp sgt i32 %136, -1, !dbg !4537
  br i1 %142, label %150, label %143, !dbg !4537

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4537
  store i32 %144, ptr %7, align 8, !dbg !4537
  %145 = icmp ult i32 %136, -7, !dbg !4537
  br i1 %145, label %146, label %150, !dbg !4537

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4537
  %148 = sext i32 %136 to i64, !dbg !4537
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4537
  br label %154, !dbg !4537

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4537
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4537
  store ptr %153, ptr %4, align 8, !dbg !4537
  br label %154, !dbg !4537

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4537
  %157 = load ptr, ptr %156, align 8, !dbg !4537
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4543
  store ptr %157, ptr %158, align 8, !dbg !4540, !tbaa !1071
  %159 = icmp eq ptr %157, null, !dbg !4541
  br i1 %159, label %197, label %160, !dbg !4542

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !4530, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i64 8, metadata !4530, metadata !DIExpression()), !dbg !4533
  %161 = icmp sgt i32 %155, -1, !dbg !4537
  br i1 %161, label %169, label %162, !dbg !4537

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4537
  store i32 %163, ptr %7, align 8, !dbg !4537
  %164 = icmp ult i32 %155, -7, !dbg !4537
  br i1 %164, label %165, label %169, !dbg !4537

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4537
  %167 = sext i32 %155 to i64, !dbg !4537
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4537
  br label %173, !dbg !4537

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4537
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4537
  store ptr %172, ptr %4, align 8, !dbg !4537
  br label %173, !dbg !4537

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4537
  %176 = load ptr, ptr %175, align 8, !dbg !4537
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4543
  store ptr %176, ptr %177, align 8, !dbg !4540, !tbaa !1071
  %178 = icmp eq ptr %176, null, !dbg !4541
  br i1 %178, label %197, label %179, !dbg !4542

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !4530, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i64 9, metadata !4530, metadata !DIExpression()), !dbg !4533
  %180 = icmp sgt i32 %174, -1, !dbg !4537
  br i1 %180, label %188, label %181, !dbg !4537

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4537
  store i32 %182, ptr %7, align 8, !dbg !4537
  %183 = icmp ult i32 %174, -7, !dbg !4537
  br i1 %183, label %184, label %188, !dbg !4537

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4537
  %186 = sext i32 %174 to i64, !dbg !4537
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4537
  br label %191, !dbg !4537

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4537
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4537
  store ptr %190, ptr %4, align 8, !dbg !4537
  br label %191, !dbg !4537

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4537
  %193 = load ptr, ptr %192, align 8, !dbg !4537
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4543
  store ptr %193, ptr %194, align 8, !dbg !4540, !tbaa !1071
  %195 = icmp eq ptr %193, null, !dbg !4541
  %196 = select i1 %195, i64 9, i64 10, !dbg !4542
  br label %197, !dbg !4542

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4544
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4545
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !4546
  ret void, !dbg !4546
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4547 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4551, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr %1, metadata !4552, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr %2, metadata !4553, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr %3, metadata !4554, metadata !DIExpression()), !dbg !4556
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !4557
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4555, metadata !DIExpression()), !dbg !4558
  call void @llvm.va_start(ptr nonnull %5), !dbg !4559
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !4560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4560, !tbaa.struct !2668
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4560
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !4560
  call void @llvm.va_end(ptr nonnull %5), !dbg !4561
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !4562
  ret void, !dbg !4562
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4563 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4564, !tbaa !1071
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.156, ptr noundef %1), !dbg !4564
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.17.173, i32 noundef 5) #40, !dbg !4565
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.174) #40, !dbg !4565
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.19.175, i32 noundef 5) #40, !dbg !4566
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.176, ptr noundef nonnull @.str.21.177) #40, !dbg !4566
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.22.178, i32 noundef 5) #40, !dbg !4567
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.179) #40, !dbg !4567
  ret void, !dbg !4568
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4569 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4574, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i64 %1, metadata !4575, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i64 %2, metadata !4576, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata ptr %0, metadata !4578, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.value(metadata i64 %1, metadata !4581, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.value(metadata i64 %2, metadata !4582, metadata !DIExpression()), !dbg !4583
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4585
  call void @llvm.dbg.value(metadata ptr %4, metadata !4586, metadata !DIExpression()), !dbg !4591
  %5 = icmp eq ptr %4, null, !dbg !4593
  br i1 %5, label %6, label %7, !dbg !4595

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4596
  unreachable, !dbg !4596

7:                                                ; preds = %3
  ret ptr %4, !dbg !4597
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4579 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4578, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata i64 %1, metadata !4581, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata i64 %2, metadata !4582, metadata !DIExpression()), !dbg !4598
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4599
  call void @llvm.dbg.value(metadata ptr %4, metadata !4586, metadata !DIExpression()), !dbg !4600
  %5 = icmp eq ptr %4, null, !dbg !4602
  br i1 %5, label %6, label %7, !dbg !4603

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4604
  unreachable, !dbg !4604

7:                                                ; preds = %3
  ret ptr %4, !dbg !4605
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4606 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4610, metadata !DIExpression()), !dbg !4611
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4612
  call void @llvm.dbg.value(metadata ptr %2, metadata !4586, metadata !DIExpression()), !dbg !4613
  %3 = icmp eq ptr %2, null, !dbg !4615
  br i1 %3, label %4, label %5, !dbg !4616

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4617
  unreachable, !dbg !4617

5:                                                ; preds = %1
  ret ptr %2, !dbg !4618
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4619 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4620 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4624, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.value(metadata i64 %0, metadata !4626, metadata !DIExpression()), !dbg !4630
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4632
  call void @llvm.dbg.value(metadata ptr %2, metadata !4586, metadata !DIExpression()), !dbg !4633
  %3 = icmp eq ptr %2, null, !dbg !4635
  br i1 %3, label %4, label %5, !dbg !4636

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4637
  unreachable, !dbg !4637

5:                                                ; preds = %1
  ret ptr %2, !dbg !4638
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4639 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4643, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata i64 %0, metadata !4610, metadata !DIExpression()), !dbg !4645
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4647
  call void @llvm.dbg.value(metadata ptr %2, metadata !4586, metadata !DIExpression()), !dbg !4648
  %3 = icmp eq ptr %2, null, !dbg !4650
  br i1 %3, label %4, label %5, !dbg !4651

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4652
  unreachable, !dbg !4652

5:                                                ; preds = %1
  ret ptr %2, !dbg !4653
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4654 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4658, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.value(metadata i64 %1, metadata !4659, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.value(metadata ptr %0, metadata !4661, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.value(metadata i64 %1, metadata !4665, metadata !DIExpression()), !dbg !4666
  %3 = icmp eq i64 %1, 0, !dbg !4668
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4668
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #48, !dbg !4669
  call void @llvm.dbg.value(metadata ptr %5, metadata !4586, metadata !DIExpression()), !dbg !4670
  %6 = icmp eq ptr %5, null, !dbg !4672
  br i1 %6, label %7, label %8, !dbg !4673

7:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4674
  unreachable, !dbg !4674

8:                                                ; preds = %2
  ret ptr %5, !dbg !4675
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4676 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4677 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4681, metadata !DIExpression()), !dbg !4683
  call void @llvm.dbg.value(metadata i64 %1, metadata !4682, metadata !DIExpression()), !dbg !4683
  call void @llvm.dbg.value(metadata ptr %0, metadata !4684, metadata !DIExpression()), !dbg !4688
  call void @llvm.dbg.value(metadata i64 %1, metadata !4687, metadata !DIExpression()), !dbg !4688
  call void @llvm.dbg.value(metadata ptr %0, metadata !4661, metadata !DIExpression()), !dbg !4690
  call void @llvm.dbg.value(metadata i64 %1, metadata !4665, metadata !DIExpression()), !dbg !4690
  %3 = icmp eq i64 %1, 0, !dbg !4692
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4692
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #48, !dbg !4693
  call void @llvm.dbg.value(metadata ptr %5, metadata !4586, metadata !DIExpression()), !dbg !4694
  %6 = icmp eq ptr %5, null, !dbg !4696
  br i1 %6, label %7, label %8, !dbg !4697

7:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4698
  unreachable, !dbg !4698

8:                                                ; preds = %2
  ret ptr %5, !dbg !4699
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4700 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4704, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata i64 %1, metadata !4705, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata i64 %2, metadata !4706, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata ptr %0, metadata !4708, metadata !DIExpression()), !dbg !4713
  call void @llvm.dbg.value(metadata i64 %1, metadata !4711, metadata !DIExpression()), !dbg !4713
  call void @llvm.dbg.value(metadata i64 %2, metadata !4712, metadata !DIExpression()), !dbg !4713
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4715
  call void @llvm.dbg.value(metadata ptr %4, metadata !4586, metadata !DIExpression()), !dbg !4716
  %5 = icmp eq ptr %4, null, !dbg !4718
  br i1 %5, label %6, label %7, !dbg !4719

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4720
  unreachable, !dbg !4720

7:                                                ; preds = %3
  ret ptr %4, !dbg !4721
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4722 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4726, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.value(metadata i64 %1, metadata !4727, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.value(metadata ptr null, metadata !4578, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata i64 %0, metadata !4581, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata i64 %1, metadata !4582, metadata !DIExpression()), !dbg !4729
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4731
  call void @llvm.dbg.value(metadata ptr %3, metadata !4586, metadata !DIExpression()), !dbg !4732
  %4 = icmp eq ptr %3, null, !dbg !4734
  br i1 %4, label %5, label %6, !dbg !4735

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4736
  unreachable, !dbg !4736

6:                                                ; preds = %2
  ret ptr %3, !dbg !4737
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4738 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4742, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata i64 %1, metadata !4743, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata ptr null, metadata !4704, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.value(metadata i64 %0, metadata !4705, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.value(metadata i64 %1, metadata !4706, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.value(metadata ptr null, metadata !4708, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i64 %0, metadata !4711, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i64 %1, metadata !4712, metadata !DIExpression()), !dbg !4747
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4749
  call void @llvm.dbg.value(metadata ptr %3, metadata !4586, metadata !DIExpression()), !dbg !4750
  %4 = icmp eq ptr %3, null, !dbg !4752
  br i1 %4, label %5, label %6, !dbg !4753

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4754
  unreachable, !dbg !4754

6:                                                ; preds = %2
  ret ptr %3, !dbg !4755
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4756 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4760, metadata !DIExpression()), !dbg !4762
  call void @llvm.dbg.value(metadata ptr %1, metadata !4761, metadata !DIExpression()), !dbg !4762
  call void @llvm.dbg.value(metadata ptr %0, metadata !1013, metadata !DIExpression()), !dbg !4763
  call void @llvm.dbg.value(metadata ptr %1, metadata !1014, metadata !DIExpression()), !dbg !4763
  call void @llvm.dbg.value(metadata i64 1, metadata !1015, metadata !DIExpression()), !dbg !4763
  %3 = load i64, ptr %1, align 8, !dbg !4765, !tbaa !1342
  call void @llvm.dbg.value(metadata i64 %3, metadata !1016, metadata !DIExpression()), !dbg !4763
  %4 = icmp eq ptr %0, null, !dbg !4766
  br i1 %4, label %5, label %8, !dbg !4768

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4769
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4772
  br label %15, !dbg !4772

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4773
  %10 = add nuw i64 %9, 1, !dbg !4773
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4773
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4773
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4773
  call void @llvm.dbg.value(metadata i64 %13, metadata !1016, metadata !DIExpression()), !dbg !4763
  br i1 %12, label %14, label %15, !dbg !4776

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !4777
  unreachable, !dbg !4777

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4763
  call void @llvm.dbg.value(metadata i64 %16, metadata !1016, metadata !DIExpression()), !dbg !4763
  call void @llvm.dbg.value(metadata ptr %0, metadata !4578, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata i64 %16, metadata !4581, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata i64 1, metadata !4582, metadata !DIExpression()), !dbg !4778
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !4780
  call void @llvm.dbg.value(metadata ptr %17, metadata !4586, metadata !DIExpression()), !dbg !4781
  %18 = icmp eq ptr %17, null, !dbg !4783
  br i1 %18, label %19, label %20, !dbg !4784

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !4785
  unreachable, !dbg !4785

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !1013, metadata !DIExpression()), !dbg !4763
  store i64 %16, ptr %1, align 8, !dbg !4786, !tbaa !1342
  ret ptr %17, !dbg !4787
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1008 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1013, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata ptr %1, metadata !1014, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i64 %2, metadata !1015, metadata !DIExpression()), !dbg !4788
  %4 = load i64, ptr %1, align 8, !dbg !4789, !tbaa !1342
  call void @llvm.dbg.value(metadata i64 %4, metadata !1016, metadata !DIExpression()), !dbg !4788
  %5 = icmp eq ptr %0, null, !dbg !4790
  br i1 %5, label %6, label %13, !dbg !4791

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4792
  br i1 %7, label %8, label %20, !dbg !4793

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4794
  call void @llvm.dbg.value(metadata i64 %9, metadata !1016, metadata !DIExpression()), !dbg !4788
  %10 = icmp ugt i64 %2, 128, !dbg !4796
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4797
  call void @llvm.dbg.value(metadata i64 %12, metadata !1016, metadata !DIExpression()), !dbg !4788
  br label %20, !dbg !4798

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4799
  %15 = add nuw i64 %14, 1, !dbg !4799
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4799
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4799
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4799
  call void @llvm.dbg.value(metadata i64 %18, metadata !1016, metadata !DIExpression()), !dbg !4788
  br i1 %17, label %19, label %20, !dbg !4800

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !4801
  unreachable, !dbg !4801

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4788
  call void @llvm.dbg.value(metadata i64 %21, metadata !1016, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata ptr %0, metadata !4578, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i64 %21, metadata !4581, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i64 %2, metadata !4582, metadata !DIExpression()), !dbg !4802
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !4804
  call void @llvm.dbg.value(metadata ptr %22, metadata !4586, metadata !DIExpression()), !dbg !4805
  %23 = icmp eq ptr %22, null, !dbg !4807
  br i1 %23, label %24, label %25, !dbg !4808

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !4809
  unreachable, !dbg !4809

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !1013, metadata !DIExpression()), !dbg !4788
  store i64 %21, ptr %1, align 8, !dbg !4810, !tbaa !1342
  ret ptr %22, !dbg !4811
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !1020 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1025, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata ptr %1, metadata !1026, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i64 %2, metadata !1027, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i64 %3, metadata !1028, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i64 %4, metadata !1029, metadata !DIExpression()), !dbg !4812
  %6 = load i64, ptr %1, align 8, !dbg !4813, !tbaa !1342
  call void @llvm.dbg.value(metadata i64 %6, metadata !1030, metadata !DIExpression()), !dbg !4812
  %7 = ashr i64 %6, 1, !dbg !4814
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4814
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4814
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4814
  call void @llvm.dbg.value(metadata i64 %10, metadata !1031, metadata !DIExpression()), !dbg !4812
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4816
  call void @llvm.dbg.value(metadata i64 %11, metadata !1031, metadata !DIExpression()), !dbg !4812
  %12 = icmp sgt i64 %3, -1, !dbg !4817
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4819
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4819
  call void @llvm.dbg.value(metadata i64 %15, metadata !1031, metadata !DIExpression()), !dbg !4812
  %16 = icmp slt i64 %4, 0, !dbg !4820
  br i1 %16, label %17, label %30, !dbg !4820

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4820
  br i1 %18, label %19, label %24, !dbg !4820

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4820
  %21 = udiv i64 9223372036854775807, %20, !dbg !4820
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4820
  br i1 %23, label %46, label %43, !dbg !4820

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4820
  br i1 %25, label %43, label %26, !dbg !4820

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4820
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4820
  %29 = icmp ult i64 %28, %15, !dbg !4820
  br i1 %29, label %46, label %43, !dbg !4820

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4820
  br i1 %31, label %43, label %32, !dbg !4820

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4820
  br i1 %33, label %34, label %40, !dbg !4820

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4820
  br i1 %35, label %43, label %36, !dbg !4820

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4820
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4820
  %39 = icmp ult i64 %38, %4, !dbg !4820
  br i1 %39, label %46, label %43, !dbg !4820

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4820
  br i1 %42, label %46, label %43, !dbg !4820

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !1032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4812
  %44 = mul i64 %15, %4, !dbg !4820
  call void @llvm.dbg.value(metadata i64 %44, metadata !1032, metadata !DIExpression()), !dbg !4812
  %45 = icmp slt i64 %44, 128, !dbg !4820
  br i1 %45, label %46, label %52, !dbg !4820

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !1033, metadata !DIExpression()), !dbg !4812
  %48 = sdiv i64 %47, %4, !dbg !4821
  call void @llvm.dbg.value(metadata i64 %48, metadata !1031, metadata !DIExpression()), !dbg !4812
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4824
  call void @llvm.dbg.value(metadata i64 %51, metadata !1032, metadata !DIExpression()), !dbg !4812
  br label %52, !dbg !4825

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4812
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4812
  call void @llvm.dbg.value(metadata i64 %54, metadata !1032, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i64 %53, metadata !1031, metadata !DIExpression()), !dbg !4812
  %55 = icmp eq ptr %0, null, !dbg !4826
  br i1 %55, label %56, label %57, !dbg !4828

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4829, !tbaa !1342
  br label %57, !dbg !4830

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4831
  %59 = icmp slt i64 %58, %2, !dbg !4833
  br i1 %59, label %60, label %97, !dbg !4834

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4835
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4835
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4835
  call void @llvm.dbg.value(metadata i64 %63, metadata !1031, metadata !DIExpression()), !dbg !4812
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4836
  br i1 %66, label %96, label %67, !dbg !4836

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4837

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4837
  br i1 %69, label %70, label %75, !dbg !4837

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4837
  %72 = udiv i64 9223372036854775807, %71, !dbg !4837
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4837
  br i1 %74, label %96, label %94, !dbg !4837

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4837
  br i1 %76, label %94, label %77, !dbg !4837

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4837
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4837
  %80 = icmp ult i64 %79, %63, !dbg !4837
  br i1 %80, label %96, label %94, !dbg !4837

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4837
  br i1 %82, label %94, label %83, !dbg !4837

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4837
  br i1 %84, label %85, label %91, !dbg !4837

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4837
  br i1 %86, label %94, label %87, !dbg !4837

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4837
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4837
  %90 = icmp ult i64 %89, %4, !dbg !4837
  br i1 %90, label %96, label %94, !dbg !4837

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4837
  br i1 %93, label %96, label %94, !dbg !4837

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !1032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4812
  %95 = mul i64 %63, %4, !dbg !4837
  call void @llvm.dbg.value(metadata i64 %95, metadata !1032, metadata !DIExpression()), !dbg !4812
  br label %97, !dbg !4838

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #42, !dbg !4839
  unreachable, !dbg !4839

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4812
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4812
  call void @llvm.dbg.value(metadata i64 %99, metadata !1032, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i64 %98, metadata !1031, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata ptr %0, metadata !4658, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i64 %99, metadata !4659, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata ptr %0, metadata !4661, metadata !DIExpression()), !dbg !4842
  call void @llvm.dbg.value(metadata i64 %99, metadata !4665, metadata !DIExpression()), !dbg !4842
  %100 = icmp eq i64 %99, 0, !dbg !4844
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4844
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #48, !dbg !4845
  call void @llvm.dbg.value(metadata ptr %102, metadata !4586, metadata !DIExpression()), !dbg !4846
  %103 = icmp eq ptr %102, null, !dbg !4848
  br i1 %103, label %104, label %105, !dbg !4849

104:                                              ; preds = %97
  tail call void @xalloc_die() #42, !dbg !4850
  unreachable, !dbg !4850

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !1025, metadata !DIExpression()), !dbg !4812
  store i64 %98, ptr %1, align 8, !dbg !4851, !tbaa !1342
  ret ptr %102, !dbg !4852
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4853 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4855, metadata !DIExpression()), !dbg !4856
  call void @llvm.dbg.value(metadata i64 %0, metadata !4857, metadata !DIExpression()), !dbg !4861
  call void @llvm.dbg.value(metadata i64 1, metadata !4860, metadata !DIExpression()), !dbg !4861
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !4863
  call void @llvm.dbg.value(metadata ptr %2, metadata !4586, metadata !DIExpression()), !dbg !4864
  %3 = icmp eq ptr %2, null, !dbg !4866
  br i1 %3, label %4, label %5, !dbg !4867

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4868
  unreachable, !dbg !4868

5:                                                ; preds = %1
  ret ptr %2, !dbg !4869
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4870 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4858 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4857, metadata !DIExpression()), !dbg !4871
  call void @llvm.dbg.value(metadata i64 %1, metadata !4860, metadata !DIExpression()), !dbg !4871
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !4872
  call void @llvm.dbg.value(metadata ptr %3, metadata !4586, metadata !DIExpression()), !dbg !4873
  %4 = icmp eq ptr %3, null, !dbg !4875
  br i1 %4, label %5, label %6, !dbg !4876

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4877
  unreachable, !dbg !4877

6:                                                ; preds = %2
  ret ptr %3, !dbg !4878
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4879 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4881, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i64 %0, metadata !4883, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.value(metadata i64 1, metadata !4886, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.value(metadata i64 %0, metadata !4889, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata i64 1, metadata !4892, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata i64 %0, metadata !4889, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata i64 1, metadata !4892, metadata !DIExpression()), !dbg !4893
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !4895
  call void @llvm.dbg.value(metadata ptr %2, metadata !4586, metadata !DIExpression()), !dbg !4896
  %3 = icmp eq ptr %2, null, !dbg !4898
  br i1 %3, label %4, label %5, !dbg !4899

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4900
  unreachable, !dbg !4900

5:                                                ; preds = %1
  ret ptr %2, !dbg !4901
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4884 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4883, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata i64 %1, metadata !4886, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata i64 %0, metadata !4889, metadata !DIExpression()), !dbg !4903
  call void @llvm.dbg.value(metadata i64 %1, metadata !4892, metadata !DIExpression()), !dbg !4903
  call void @llvm.dbg.value(metadata i64 %0, metadata !4889, metadata !DIExpression()), !dbg !4903
  call void @llvm.dbg.value(metadata i64 %1, metadata !4892, metadata !DIExpression()), !dbg !4903
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !4905
  call void @llvm.dbg.value(metadata ptr %3, metadata !4586, metadata !DIExpression()), !dbg !4906
  %4 = icmp eq ptr %3, null, !dbg !4908
  br i1 %4, label %5, label %6, !dbg !4909

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4910
  unreachable, !dbg !4910

6:                                                ; preds = %2
  ret ptr %3, !dbg !4911
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4912 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4916, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata i64 %1, metadata !4917, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata i64 %1, metadata !4610, metadata !DIExpression()), !dbg !4919
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4921
  call void @llvm.dbg.value(metadata ptr %3, metadata !4586, metadata !DIExpression()), !dbg !4922
  %4 = icmp eq ptr %3, null, !dbg !4924
  br i1 %4, label %5, label %6, !dbg !4925

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4926
  unreachable, !dbg !4926

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4927, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata ptr %0, metadata !4930, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i64 %1, metadata !4931, metadata !DIExpression()), !dbg !4932
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4934
  ret ptr %3, !dbg !4935
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4936 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4940, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.value(metadata i64 %1, metadata !4941, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.value(metadata i64 %1, metadata !4624, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.value(metadata i64 %1, metadata !4626, metadata !DIExpression()), !dbg !4945
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4947
  call void @llvm.dbg.value(metadata ptr %3, metadata !4586, metadata !DIExpression()), !dbg !4948
  %4 = icmp eq ptr %3, null, !dbg !4950
  br i1 %4, label %5, label %6, !dbg !4951

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4952
  unreachable, !dbg !4952

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4927, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata ptr %0, metadata !4930, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata i64 %1, metadata !4931, metadata !DIExpression()), !dbg !4953
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4955
  ret ptr %3, !dbg !4956
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4957 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4961, metadata !DIExpression()), !dbg !4964
  call void @llvm.dbg.value(metadata i64 %1, metadata !4962, metadata !DIExpression()), !dbg !4964
  %3 = add nsw i64 %1, 1, !dbg !4965
  call void @llvm.dbg.value(metadata i64 %3, metadata !4624, metadata !DIExpression()), !dbg !4966
  call void @llvm.dbg.value(metadata i64 %3, metadata !4626, metadata !DIExpression()), !dbg !4968
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4970
  call void @llvm.dbg.value(metadata ptr %4, metadata !4586, metadata !DIExpression()), !dbg !4971
  %5 = icmp eq ptr %4, null, !dbg !4973
  br i1 %5, label %6, label %7, !dbg !4974

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4975
  unreachable, !dbg !4975

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4963, metadata !DIExpression()), !dbg !4964
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4976
  store i8 0, ptr %8, align 1, !dbg !4977, !tbaa !1162
  call void @llvm.dbg.value(metadata ptr %4, metadata !4927, metadata !DIExpression()), !dbg !4978
  call void @llvm.dbg.value(metadata ptr %0, metadata !4930, metadata !DIExpression()), !dbg !4978
  call void @llvm.dbg.value(metadata i64 %1, metadata !4931, metadata !DIExpression()), !dbg !4978
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4980
  ret ptr %4, !dbg !4981
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4982 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4984, metadata !DIExpression()), !dbg !4985
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4986
  %3 = add i64 %2, 1, !dbg !4987
  call void @llvm.dbg.value(metadata ptr %0, metadata !4916, metadata !DIExpression()), !dbg !4988
  call void @llvm.dbg.value(metadata i64 %3, metadata !4917, metadata !DIExpression()), !dbg !4988
  call void @llvm.dbg.value(metadata i64 %3, metadata !4610, metadata !DIExpression()), !dbg !4990
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4992
  call void @llvm.dbg.value(metadata ptr %4, metadata !4586, metadata !DIExpression()), !dbg !4993
  %5 = icmp eq ptr %4, null, !dbg !4995
  br i1 %5, label %6, label %7, !dbg !4996

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4997
  unreachable, !dbg !4997

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4927, metadata !DIExpression()), !dbg !4998
  call void @llvm.dbg.value(metadata ptr %0, metadata !4930, metadata !DIExpression()), !dbg !4998
  call void @llvm.dbg.value(metadata i64 %3, metadata !4931, metadata !DIExpression()), !dbg !4998
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !5000
  ret ptr %4, !dbg !5001
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !5002 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !5007, !tbaa !1153
  call void @llvm.dbg.value(metadata i32 %1, metadata !5004, metadata !DIExpression()), !dbg !5008
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.196, ptr noundef nonnull @.str.2.197, i32 noundef 5) #40, !dbg !5007
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.198, ptr noundef %2) #40, !dbg !5007
  %3 = icmp eq i32 %1, 0, !dbg !5007
  tail call void @llvm.assume(i1 %3), !dbg !5007
  tail call void @abort() #42, !dbg !5009
  unreachable, !dbg !5009
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !5010 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5048, metadata !DIExpression()), !dbg !5053
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !5054
  call void @llvm.dbg.value(metadata i1 poison, metadata !5049, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5053
  call void @llvm.dbg.value(metadata ptr %0, metadata !5055, metadata !DIExpression()), !dbg !5058
  %3 = load i32, ptr %0, align 8, !dbg !5060, !tbaa !5061
  %4 = and i32 %3, 32, !dbg !5062
  %5 = icmp eq i32 %4, 0, !dbg !5062
  call void @llvm.dbg.value(metadata i1 %5, metadata !5051, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5053
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !5063
  %7 = icmp eq i32 %6, 0, !dbg !5064
  call void @llvm.dbg.value(metadata i1 %7, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5053
  br i1 %5, label %8, label %18, !dbg !5065

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5067
  call void @llvm.dbg.value(metadata i1 %9, metadata !5049, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5053
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5068
  %11 = xor i1 %7, true, !dbg !5068
  %12 = sext i1 %11 to i32, !dbg !5068
  br i1 %10, label %21, label %13, !dbg !5068

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !5069
  %15 = load i32, ptr %14, align 4, !dbg !5069, !tbaa !1153
  %16 = icmp ne i32 %15, 9, !dbg !5070
  %17 = sext i1 %16 to i32, !dbg !5071
  br label %21, !dbg !5071

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5072

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !5074
  store i32 0, ptr %20, align 4, !dbg !5076, !tbaa !1153
  br label %21, !dbg !5074

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5053
  ret i32 %22, !dbg !5077
}

; Function Attrs: nounwind
declare !dbg !5078 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !5082 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5120, metadata !DIExpression()), !dbg !5124
  call void @llvm.dbg.value(metadata i32 0, metadata !5121, metadata !DIExpression()), !dbg !5124
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !5125
  call void @llvm.dbg.value(metadata i32 %2, metadata !5122, metadata !DIExpression()), !dbg !5124
  %3 = icmp slt i32 %2, 0, !dbg !5126
  br i1 %3, label %4, label %6, !dbg !5128

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5129
  br label %24, !dbg !5130

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !5131
  %8 = icmp eq i32 %7, 0, !dbg !5131
  br i1 %8, label %13, label %9, !dbg !5133

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !5134
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !5135
  %12 = icmp eq i64 %11, -1, !dbg !5136
  br i1 %12, label %16, label %13, !dbg !5137

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !5138
  %15 = icmp eq i32 %14, 0, !dbg !5138
  br i1 %15, label %16, label %18, !dbg !5139

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !5121, metadata !DIExpression()), !dbg !5124
  call void @llvm.dbg.value(metadata i32 0, metadata !5123, metadata !DIExpression()), !dbg !5124
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5140
  call void @llvm.dbg.value(metadata i32 %17, metadata !5123, metadata !DIExpression()), !dbg !5124
  br label %24, !dbg !5141

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !5142
  %20 = load i32, ptr %19, align 4, !dbg !5142, !tbaa !1153
  call void @llvm.dbg.value(metadata i32 %20, metadata !5121, metadata !DIExpression()), !dbg !5124
  call void @llvm.dbg.value(metadata i32 0, metadata !5123, metadata !DIExpression()), !dbg !5124
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5140
  call void @llvm.dbg.value(metadata i32 %21, metadata !5123, metadata !DIExpression()), !dbg !5124
  %22 = icmp eq i32 %20, 0, !dbg !5143
  br i1 %22, label %24, label %23, !dbg !5141

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !5145, !tbaa !1153
  call void @llvm.dbg.value(metadata i32 -1, metadata !5123, metadata !DIExpression()), !dbg !5124
  br label %24, !dbg !5147

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !5124
  ret i32 %25, !dbg !5148
}

; Function Attrs: nofree nounwind
declare !dbg !5149 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !5150 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !5151 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !5152 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !5155 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5193, metadata !DIExpression()), !dbg !5194
  %2 = icmp eq ptr %0, null, !dbg !5195
  br i1 %2, label %6, label %3, !dbg !5197

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !5198
  %5 = icmp eq i32 %4, 0, !dbg !5198
  br i1 %5, label %6, label %8, !dbg !5199

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !5200
  br label %16, !dbg !5201

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !5202, metadata !DIExpression()), !dbg !5207
  %9 = load i32, ptr %0, align 8, !dbg !5209, !tbaa !5061
  %10 = and i32 %9, 256, !dbg !5211
  %11 = icmp eq i32 %10, 0, !dbg !5211
  br i1 %11, label %14, label %12, !dbg !5212

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !5213
  br label %14, !dbg !5213

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !5214
  br label %16, !dbg !5215

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !5194
  ret i32 %17, !dbg !5216
}

; Function Attrs: nofree nounwind
declare !dbg !5217 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5218 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5257, metadata !DIExpression()), !dbg !5263
  call void @llvm.dbg.value(metadata i64 %1, metadata !5258, metadata !DIExpression()), !dbg !5263
  call void @llvm.dbg.value(metadata i32 %2, metadata !5259, metadata !DIExpression()), !dbg !5263
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !5264
  %5 = load ptr, ptr %4, align 8, !dbg !5264, !tbaa !5265
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !5266
  %7 = load ptr, ptr %6, align 8, !dbg !5266, !tbaa !5267
  %8 = icmp eq ptr %5, %7, !dbg !5268
  br i1 %8, label %9, label %27, !dbg !5269

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !5270
  %11 = load ptr, ptr %10, align 8, !dbg !5270, !tbaa !2781
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !5271
  %13 = load ptr, ptr %12, align 8, !dbg !5271, !tbaa !5272
  %14 = icmp eq ptr %11, %13, !dbg !5273
  br i1 %14, label %15, label %27, !dbg !5274

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !5275
  %17 = load ptr, ptr %16, align 8, !dbg !5275, !tbaa !5276
  %18 = icmp eq ptr %17, null, !dbg !5277
  br i1 %18, label %19, label %27, !dbg !5278

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !5279
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !5280
  call void @llvm.dbg.value(metadata i64 %21, metadata !5260, metadata !DIExpression()), !dbg !5281
  %22 = icmp eq i64 %21, -1, !dbg !5282
  br i1 %22, label %29, label %23, !dbg !5284

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !5285, !tbaa !5061
  %25 = and i32 %24, -17, !dbg !5285
  store i32 %25, ptr %0, align 8, !dbg !5285, !tbaa !5061
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !5286
  store i64 %21, ptr %26, align 8, !dbg !5287, !tbaa !5288
  br label %29, !dbg !5289

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !5290
  br label %29, !dbg !5291

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !5263
  ret i32 %30, !dbg !5292
}

; Function Attrs: nofree nounwind
declare !dbg !5293 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5296 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5301, metadata !DIExpression()), !dbg !5306
  call void @llvm.dbg.value(metadata ptr %1, metadata !5302, metadata !DIExpression()), !dbg !5306
  call void @llvm.dbg.value(metadata i64 %2, metadata !5303, metadata !DIExpression()), !dbg !5306
  call void @llvm.dbg.value(metadata ptr %3, metadata !5304, metadata !DIExpression()), !dbg !5306
  %5 = icmp eq ptr %1, null, !dbg !5307
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5309
  %7 = select i1 %5, ptr @.str.209, ptr %1, !dbg !5309
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5309
  call void @llvm.dbg.value(metadata i64 %8, metadata !5303, metadata !DIExpression()), !dbg !5306
  call void @llvm.dbg.value(metadata ptr %7, metadata !5302, metadata !DIExpression()), !dbg !5306
  call void @llvm.dbg.value(metadata ptr %6, metadata !5301, metadata !DIExpression()), !dbg !5306
  %9 = icmp eq ptr %3, null, !dbg !5310
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5312
  call void @llvm.dbg.value(metadata ptr %10, metadata !5304, metadata !DIExpression()), !dbg !5306
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #40, !dbg !5313
  call void @llvm.dbg.value(metadata i64 %11, metadata !5305, metadata !DIExpression()), !dbg !5306
  %12 = icmp ult i64 %11, -3, !dbg !5314
  br i1 %12, label %13, label %17, !dbg !5316

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #41, !dbg !5317
  %15 = icmp eq i32 %14, 0, !dbg !5317
  br i1 %15, label %16, label %29, !dbg !5318

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5319, metadata !DIExpression()), !dbg !5324
  call void @llvm.dbg.value(metadata ptr %10, metadata !5326, metadata !DIExpression()), !dbg !5331
  call void @llvm.dbg.value(metadata i32 0, metadata !5329, metadata !DIExpression()), !dbg !5331
  call void @llvm.dbg.value(metadata i64 8, metadata !5330, metadata !DIExpression()), !dbg !5331
  store i64 0, ptr %10, align 1, !dbg !5333
  br label %29, !dbg !5334

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5335
  br i1 %18, label %19, label %20, !dbg !5337

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !5338
  unreachable, !dbg !5338

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5339

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #40, !dbg !5341
  br i1 %23, label %29, label %24, !dbg !5342

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5343
  br i1 %25, label %29, label %26, !dbg !5346

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5347, !tbaa !1162
  %28 = zext i8 %27 to i32, !dbg !5348
  store i32 %28, ptr %6, align 4, !dbg !5349, !tbaa !1153
  br label %29, !dbg !5350

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5306
  ret i64 %30, !dbg !5351
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5352 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !5358 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5360, metadata !DIExpression()), !dbg !5364
  call void @llvm.dbg.value(metadata i64 %1, metadata !5361, metadata !DIExpression()), !dbg !5364
  call void @llvm.dbg.value(metadata i64 %2, metadata !5362, metadata !DIExpression()), !dbg !5364
  %4 = icmp eq i64 %2, 0, !dbg !5365
  br i1 %4, label %8, label %5, !dbg !5365

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5365
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5365
  br i1 %7, label %13, label %8, !dbg !5365

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5363, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5364
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5363, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5364
  %9 = mul i64 %2, %1, !dbg !5365
  call void @llvm.dbg.value(metadata i64 %9, metadata !5363, metadata !DIExpression()), !dbg !5364
  call void @llvm.dbg.value(metadata ptr %0, metadata !5367, metadata !DIExpression()), !dbg !5371
  call void @llvm.dbg.value(metadata i64 %9, metadata !5370, metadata !DIExpression()), !dbg !5371
  %10 = icmp eq i64 %9, 0, !dbg !5373
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5373
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #48, !dbg !5374
  br label %15, !dbg !5375

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5363, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5364
  %14 = tail call ptr @__errno_location() #43, !dbg !5376
  store i32 12, ptr %14, align 4, !dbg !5378, !tbaa !1153
  br label %15, !dbg !5379

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5364
  ret ptr %16, !dbg !5380
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5381 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5383, metadata !DIExpression()), !dbg !5388
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !5389
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5384, metadata !DIExpression()), !dbg !5390
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !5391
  %4 = icmp eq i32 %3, 0, !dbg !5391
  br i1 %4, label %5, label %12, !dbg !5393

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5394, metadata !DIExpression()), !dbg !5398
  call void @llvm.dbg.value(metadata ptr @.str.214, metadata !5397, metadata !DIExpression()), !dbg !5398
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.214, i64 2), !dbg !5401
  %7 = icmp eq i32 %6, 0, !dbg !5402
  br i1 %7, label %11, label %8, !dbg !5403

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5394, metadata !DIExpression()), !dbg !5404
  call void @llvm.dbg.value(metadata ptr @.str.1.215, metadata !5397, metadata !DIExpression()), !dbg !5404
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.215, i64 6), !dbg !5406
  %10 = icmp eq i32 %9, 0, !dbg !5407
  br i1 %10, label %11, label %12, !dbg !5408

11:                                               ; preds = %8, %5
  br label %12, !dbg !5409

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5388
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !5410
  ret i1 %13, !dbg !5410
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5411 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5415, metadata !DIExpression()), !dbg !5418
  call void @llvm.dbg.value(metadata ptr %1, metadata !5416, metadata !DIExpression()), !dbg !5418
  call void @llvm.dbg.value(metadata i64 %2, metadata !5417, metadata !DIExpression()), !dbg !5418
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !5419
  ret i32 %4, !dbg !5420
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5421 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5425, metadata !DIExpression()), !dbg !5426
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !5427
  ret ptr %2, !dbg !5428
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5429 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5431, metadata !DIExpression()), !dbg !5433
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5434
  call void @llvm.dbg.value(metadata ptr %2, metadata !5432, metadata !DIExpression()), !dbg !5433
  ret ptr %2, !dbg !5435
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5436 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5438, metadata !DIExpression()), !dbg !5445
  call void @llvm.dbg.value(metadata ptr %1, metadata !5439, metadata !DIExpression()), !dbg !5445
  call void @llvm.dbg.value(metadata i64 %2, metadata !5440, metadata !DIExpression()), !dbg !5445
  call void @llvm.dbg.value(metadata i32 %0, metadata !5431, metadata !DIExpression()), !dbg !5446
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5448
  call void @llvm.dbg.value(metadata ptr %4, metadata !5432, metadata !DIExpression()), !dbg !5446
  call void @llvm.dbg.value(metadata ptr %4, metadata !5441, metadata !DIExpression()), !dbg !5445
  %5 = icmp eq ptr %4, null, !dbg !5449
  br i1 %5, label %6, label %9, !dbg !5450

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5451
  br i1 %7, label %19, label %8, !dbg !5454

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5455, !tbaa !1162
  br label %19, !dbg !5456

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !5457
  call void @llvm.dbg.value(metadata i64 %10, metadata !5442, metadata !DIExpression()), !dbg !5458
  %11 = icmp ult i64 %10, %2, !dbg !5459
  br i1 %11, label %12, label %14, !dbg !5461

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5462
  call void @llvm.dbg.value(metadata ptr %1, metadata !5464, metadata !DIExpression()), !dbg !5469
  call void @llvm.dbg.value(metadata ptr %4, metadata !5467, metadata !DIExpression()), !dbg !5469
  call void @llvm.dbg.value(metadata i64 %13, metadata !5468, metadata !DIExpression()), !dbg !5469
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #40, !dbg !5471
  br label %19, !dbg !5472

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5473
  br i1 %15, label %19, label %16, !dbg !5476

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5477
  call void @llvm.dbg.value(metadata ptr %1, metadata !5464, metadata !DIExpression()), !dbg !5479
  call void @llvm.dbg.value(metadata ptr %4, metadata !5467, metadata !DIExpression()), !dbg !5479
  call void @llvm.dbg.value(metadata i64 %17, metadata !5468, metadata !DIExpression()), !dbg !5479
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !5481
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5482
  store i8 0, ptr %18, align 1, !dbg !5483, !tbaa !1162
  br label %19, !dbg !5484

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5485
  ret i32 %20, !dbg !5486
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
attributes #17 = { nofree nounwind willreturn memory(argmem: read) }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { nocallback nofree nosync nounwind willreturn }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
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
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }
attributes #46 = { noreturn }
attributes #47 = { cold }
attributes #48 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!105, !991, !649, !993, !653, !668, !957, !995, !722, !736, !784, !862, !997, !949, !1004, !1035, !1037, !1039, !1041, !1043, !973, !1045, !1048, !1050, !1052}
!llvm.ident = !{!1054, !1054, !1054, !1054, !1054, !1054, !1054, !1054, !1054, !1054, !1054, !1054, !1054, !1054, !1054, !1054, !1054, !1054, !1054, !1054, !1054, !1054, !1054, !1054, !1054}
!llvm.module.flags = !{!1055, !1056, !1057, !1058, !1059, !1060, !1061}

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
!104 = distinct !DIGlobalVariable(name: "shortopts", scope: !105, file: !2, line: 76, type: !635, isLocal: true, isDefinition: true)
!105 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, retainedTypes: !162, globals: !180, splitDebugInlining: false, nameTableKind: None)
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
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !167, line: 46, baseType: !168)
!167 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!180 = !{!0, !7, !12, !17, !22, !27, !32, !37, !39, !41, !46, !51, !56, !61, !66, !71, !76, !78, !83, !88, !93, !98, !181, !186, !191, !196, !201, !206, !211, !216, !221, !250, !252, !254, !259, !261, !263, !268, !270, !275, !280, !282, !284, !289, !294, !296, !298, !300, !302, !383, !385, !387, !389, !394, !396, !398, !400, !402, !404, !406, !408, !410, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !438, !440, !442, !444, !446, !451, !453, !458, !460, !462, !464, !469, !474, !479, !103, !482, !484, !489, !491, !493, !495, !497, !499, !501, !506, !508, !510, !512, !514, !526, !531, !533, !536, !538, !540, !545, !555, !557, !559, !561, !563, !568, !573, !578, !583, !588, !593, !595, !597, !599, !601, !603, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !631, !633}
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
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !167, line: 35, baseType: !174)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(name: "usvars_alloc", scope: !105, file: !2, line: 41, type: !528, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(name: "usvars", scope: !105, file: !2, line: 40, type: !535, isLocal: true, isDefinition: true)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !2, line: 570, type: !213, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !2, line: 576, type: !486, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !2, line: 669, type: !542, isLocal: true, isDefinition: true)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !543)
!543 = !{!544}
!544 = !DISubrange(count: 26)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(name: "block_signals", scope: !105, file: !2, line: 62, type: !547, isLocal: true, isDefinition: true)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !548, line: 7, baseType: !549)
!548 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "c2b978aaf49d5c0e2b1e9c2e1b7f7848")
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !550, line: 8, baseType: !551)
!550 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "acc6b14c0967857fec362a8d433e1cf2")
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !550, line: 5, size: 1024, elements: !552)
!552 = !{!553}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !551, file: !550, line: 7, baseType: !554, size: 1024)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 1024, elements: !204)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(name: "unblock_signals", scope: !105, file: !2, line: 65, type: !547, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !2, line: 538, type: !277, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !2, line: 539, type: !193, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !2, line: 541, type: !193, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !2, line: 441, type: !565, isLocal: true, isDefinition: true)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !566)
!566 = !{!567}
!567 = !DISubrange(count: 48)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !2, line: 452, type: !570, isLocal: true, isDefinition: true)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 41)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !2, line: 456, type: !575, isLocal: true, isDefinition: true)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !576)
!576 = !{!577}
!577 = !DISubrange(count: 29)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !2, line: 470, type: !580, isLocal: true, isDefinition: true)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 53)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !2, line: 478, type: !585, isLocal: true, isDefinition: true)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 25)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !2, line: 483, type: !590, isLocal: true, isDefinition: true)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 34)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !2, line: 496, type: !590, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(name: "vnlen", scope: !105, file: !2, line: 49, type: !528, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(name: "varname", scope: !105, file: !2, line: 48, type: !163, isLocal: true, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !2, line: 198, type: !193, isLocal: true, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !2, line: 201, type: !203, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !2, line: 607, type: !605, isLocal: true, isDefinition: true)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 42)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !2, line: 615, type: !605, isLocal: true, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !2, line: 623, type: !391, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !2, line: 624, type: !272, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !2, line: 624, type: !412, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !2, line: 624, type: !291, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !2, line: 624, type: !486, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !2, line: 691, type: !590, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !2, line: 700, type: !391, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !2, line: 705, type: !412, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !2, line: 713, type: !628, isLocal: true, isDefinition: true)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 31)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !2, line: 719, type: !590, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !2, line: 747, type: !503, isLocal: true, isDefinition: true)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 152, elements: !487)
!636 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!637 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!638 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !641, line: 72, type: !466, isLocal: true, isDefinition: true)
!641 = !DIFile(filename: "src/operand2sig.c", directory: "/src", checksumkind: CSK_MD5, checksum: "46beb430284fcb3f5c7434dd479a51b3")
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !641, line: 87, type: !486, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !646, line: 3, type: !277, isLocal: true, isDefinition: true)
!646 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(name: "Version", scope: !649, file: !646, line: 3, type: !169, isLocal: false, isDefinition: true)
!649 = distinct !DICompileUnit(language: DW_LANG_C11, file: !646, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !650, splitDebugInlining: false, nameTableKind: None)
!650 = !{!644, !647}
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(name: "file_name", scope: !653, file: !654, line: 45, type: !169, isLocal: true, isDefinition: true)
!653 = distinct !DICompileUnit(language: DW_LANG_C11, file: !654, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !655, splitDebugInlining: false, nameTableKind: None)
!654 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!655 = !{!656, !658, !660, !662, !651, !664}
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !654, line: 121, type: !291, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !654, line: 121, type: !476, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !654, line: 123, type: !291, isLocal: true, isDefinition: true)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !654, line: 126, type: !286, isLocal: true, isDefinition: true)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !653, file: !654, line: 55, type: !231, isLocal: true, isDefinition: true)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !668, file: !669, line: 66, type: !717, isLocal: false, isDefinition: true)
!668 = distinct !DICompileUnit(language: DW_LANG_C11, file: !669, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !670, globals: !671, splitDebugInlining: false, nameTableKind: None)
!669 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!670 = !{!164, !171}
!671 = !{!672, !674, !699, !701, !703, !705, !666, !707, !709, !711, !713, !715}
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !669, line: 272, type: !265, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(name: "old_file_name", scope: !676, file: !669, line: 304, type: !169, isLocal: true, isDefinition: true)
!676 = distinct !DISubprogram(name: "verror_at_line", scope: !669, file: !669, line: 298, type: !677, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !692)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !122, !122, !169, !109, !169, !679}
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !680, line: 52, baseType: !681)
!680 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !682, line: 14, baseType: !683)
!682 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !684, baseType: !685)
!684 = !DIFile(filename: "lib/error.c", directory: "/src")
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !686)
!686 = !{!687, !688, !689, !690, !691}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !685, file: !684, baseType: !164, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !685, file: !684, baseType: !164, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !685, file: !684, baseType: !164, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !685, file: !684, baseType: !122, size: 32, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !685, file: !684, baseType: !122, size: 32, offset: 224)
!692 = !{!693, !694, !695, !696, !697, !698}
!693 = !DILocalVariable(name: "status", arg: 1, scope: !676, file: !669, line: 298, type: !122)
!694 = !DILocalVariable(name: "errnum", arg: 2, scope: !676, file: !669, line: 298, type: !122)
!695 = !DILocalVariable(name: "file_name", arg: 3, scope: !676, file: !669, line: 298, type: !169)
!696 = !DILocalVariable(name: "line_number", arg: 4, scope: !676, file: !669, line: 298, type: !109)
!697 = !DILocalVariable(name: "message", arg: 5, scope: !676, file: !669, line: 298, type: !169)
!698 = !DILocalVariable(name: "args", arg: 6, scope: !676, file: !669, line: 298, type: !679)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(name: "old_line_number", scope: !676, file: !669, line: 305, type: !109, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !669, line: 338, type: !19, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !669, line: 346, type: !412, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !669, line: 346, type: !213, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(name: "error_message_count", scope: !668, file: !669, line: 69, type: !109, isLocal: false, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !668, file: !669, line: 295, type: !122, isLocal: false, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !669, line: 208, type: !291, isLocal: true, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !669, line: 208, type: !503, isLocal: true, isDefinition: true)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !669, line: 214, type: !265, isLocal: true, isDefinition: true)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{null}
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(name: "program_name", scope: !722, file: !723, line: 31, type: !169, isLocal: false, isDefinition: true)
!722 = distinct !DICompileUnit(language: DW_LANG_C11, file: !723, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !724, globals: !725, splitDebugInlining: false, nameTableKind: None)
!723 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!724 = !{!163}
!725 = !{!720, !726, !728}
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !723, line: 46, type: !412, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !723, line: 49, type: !19, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(name: "utf07FF", scope: !732, file: !733, line: 46, type: !760, isLocal: true, isDefinition: true)
!732 = distinct !DISubprogram(name: "proper_name_lite", scope: !733, file: !733, line: 38, type: !734, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !738)
!733 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!734 = !DISubroutineType(types: !735)
!735 = !{!169, !169, !169}
!736 = distinct !DICompileUnit(language: DW_LANG_C11, file: !733, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !737, splitDebugInlining: false, nameTableKind: None)
!737 = !{!730}
!738 = !{!739, !740, !741, !742, !747}
!739 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !732, file: !733, line: 38, type: !169)
!740 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !732, file: !733, line: 38, type: !169)
!741 = !DILocalVariable(name: "translation", scope: !732, file: !733, line: 40, type: !169)
!742 = !DILocalVariable(name: "w", scope: !732, file: !733, line: 47, type: !743)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !744, line: 37, baseType: !745)
!744 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !353, line: 57, baseType: !746)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !353, line: 42, baseType: !109)
!747 = !DILocalVariable(name: "mbs", scope: !732, file: !733, line: 48, type: !748)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !749, line: 6, baseType: !750)
!749 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !751, line: 21, baseType: !752)
!751 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !751, line: 13, size: 64, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !752, file: !751, line: 15, baseType: !122, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !752, file: !751, line: 20, baseType: !756, size: 32, offset: 32)
!756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !752, file: !751, line: 16, size: 32, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !756, file: !751, line: 18, baseType: !109, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !756, file: !751, line: 19, baseType: !19, size: 32)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 16, elements: !214)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !763, line: 78, type: !412, isLocal: true, isDefinition: true)
!763 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(scope: null, file: !763, line: 79, type: !391, isLocal: true, isDefinition: true)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(scope: null, file: !763, line: 80, type: !208, isLocal: true, isDefinition: true)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(scope: null, file: !763, line: 81, type: !208, isLocal: true, isDefinition: true)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(scope: null, file: !763, line: 82, type: !374, isLocal: true, isDefinition: true)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(scope: null, file: !763, line: 83, type: !213, isLocal: true, isDefinition: true)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(scope: null, file: !763, line: 84, type: !412, isLocal: true, isDefinition: true)
!776 = !DIGlobalVariableExpression(var: !777, expr: !DIExpression())
!777 = distinct !DIGlobalVariable(scope: null, file: !763, line: 85, type: !291, isLocal: true, isDefinition: true)
!778 = !DIGlobalVariableExpression(var: !779, expr: !DIExpression())
!779 = distinct !DIGlobalVariable(scope: null, file: !763, line: 86, type: !291, isLocal: true, isDefinition: true)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(scope: null, file: !763, line: 87, type: !412, isLocal: true, isDefinition: true)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !784, file: !763, line: 76, type: !856, isLocal: false, isDefinition: true)
!784 = distinct !DICompileUnit(language: DW_LANG_C11, file: !763, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !785, retainedTypes: !791, globals: !792, splitDebugInlining: false, nameTableKind: None)
!785 = !{!126, !786, !140}
!786 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !127, line: 254, baseType: !109, size: 32, elements: !787)
!787 = !{!788, !789, !790}
!788 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!789 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!790 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!791 = !{!122, !165, !166}
!792 = !{!761, !764, !766, !768, !770, !772, !774, !776, !778, !780, !782, !793, !797, !807, !809, !814, !816, !818, !820, !822, !845, !852, !854}
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !784, file: !763, line: 92, type: !795, isLocal: false, isDefinition: true)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !796, size: 320, elements: !96)
!796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !784, file: !763, line: 1040, type: !799, isLocal: false, isDefinition: true)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !763, line: 56, size: 448, elements: !800)
!800 = !{!801, !802, !803, !805, !806}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !799, file: !763, line: 59, baseType: !126, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !799, file: !763, line: 62, baseType: !122, size: 32, offset: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !799, file: !763, line: 66, baseType: !804, size: 256, offset: 64)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 256, elements: !413)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !799, file: !763, line: 69, baseType: !169, size: 64, offset: 320)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !799, file: !763, line: 72, baseType: !169, size: 64, offset: 384)
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !784, file: !763, line: 107, type: !799, isLocal: true, isDefinition: true)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(name: "slot0", scope: !784, file: !763, line: 831, type: !811, isLocal: true, isDefinition: true)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !812)
!812 = !{!813}
!813 = !DISubrange(count: 256)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(scope: null, file: !763, line: 321, type: !213, isLocal: true, isDefinition: true)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(scope: null, file: !763, line: 357, type: !213, isLocal: true, isDefinition: true)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(scope: null, file: !763, line: 358, type: !213, isLocal: true, isDefinition: true)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(scope: null, file: !763, line: 199, type: !291, isLocal: true, isDefinition: true)
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(name: "quote", scope: !824, file: !763, line: 228, type: !843, isLocal: true, isDefinition: true)
!824 = distinct !DISubprogram(name: "gettext_quote", scope: !763, file: !763, line: 197, type: !825, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !827)
!825 = !DISubroutineType(types: !826)
!826 = !{!169, !169, !126}
!827 = !{!828, !829, !830, !831, !832}
!828 = !DILocalVariable(name: "msgid", arg: 1, scope: !824, file: !763, line: 197, type: !169)
!829 = !DILocalVariable(name: "s", arg: 2, scope: !824, file: !763, line: 197, type: !126)
!830 = !DILocalVariable(name: "translation", scope: !824, file: !763, line: 199, type: !169)
!831 = !DILocalVariable(name: "w", scope: !824, file: !763, line: 229, type: !743)
!832 = !DILocalVariable(name: "mbs", scope: !824, file: !763, line: 230, type: !833)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !749, line: 6, baseType: !834)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !751, line: 21, baseType: !835)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !751, line: 13, size: 64, elements: !836)
!836 = !{!837, !838}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !835, file: !751, line: 15, baseType: !122, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !835, file: !751, line: 20, baseType: !839, size: 32, offset: 32)
!839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !835, file: !751, line: 16, size: 32, elements: !840)
!840 = !{!841, !842}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !839, file: !751, line: 18, baseType: !109, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !839, file: !751, line: 19, baseType: !19, size: 32)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 64, elements: !844)
!844 = !{!215, !21}
!845 = !DIGlobalVariableExpression(var: !846, expr: !DIExpression())
!846 = distinct !DIGlobalVariable(name: "slotvec", scope: !784, file: !763, line: 834, type: !847, isLocal: true, isDefinition: true)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !763, line: 823, size: 128, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !848, file: !763, line: 825, baseType: !166, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !848, file: !763, line: 826, baseType: !163, size: 64, offset: 64)
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(name: "nslots", scope: !784, file: !763, line: 832, type: !122, isLocal: true, isDefinition: true)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(name: "slotvec0", scope: !784, file: !763, line: 833, type: !848, isLocal: true, isDefinition: true)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !857, size: 704, elements: !858)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!858 = !{!859}
!859 = !DISubrange(count: 11)
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(name: "numname_table", scope: !862, file: !863, line: 43, type: !872, isLocal: true, isDefinition: true)
!862 = distinct !DICompileUnit(language: DW_LANG_C11, file: !863, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !864, globals: !865, splitDebugInlining: false, nameTableKind: None)
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
!897 = distinct !DIGlobalVariable(scope: null, file: !882, line: 88, type: !590, isLocal: true, isDefinition: true)
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
!925 = distinct !DIGlobalVariable(scope: null, file: !882, line: 150, type: !565, isLocal: true, isDefinition: true)
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
!946 = distinct !DIGlobalVariable(scope: null, file: !882, line: 259, type: !575, isLocal: true, isDefinition: true)
!947 = !DIGlobalVariableExpression(var: !948, expr: !DIExpression())
!948 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !949, file: !950, line: 26, type: !952, isLocal: false, isDefinition: true)
!949 = distinct !DICompileUnit(language: DW_LANG_C11, file: !950, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !951, splitDebugInlining: false, nameTableKind: None)
!950 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!951 = !{!947}
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 376, elements: !953)
!953 = !{!954}
!954 = !DISubrange(count: 47)
!955 = !DIGlobalVariableExpression(var: !956, expr: !DIExpression())
!956 = distinct !DIGlobalVariable(name: "exit_failure", scope: !957, file: !958, line: 24, type: !960, isLocal: false, isDefinition: true)
!957 = distinct !DICompileUnit(language: DW_LANG_C11, file: !958, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !959, splitDebugInlining: false, nameTableKind: None)
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
!973 = distinct !DICompileUnit(language: DW_LANG_C11, file: !970, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !974, globals: !975, splitDebugInlining: false, nameTableKind: None)
!974 = !{!164, !166, !171}
!975 = !{!968, !971}
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !749, line: 6, baseType: !977)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !751, line: 21, baseType: !978)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !751, line: 13, size: 64, elements: !979)
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !978, file: !751, line: 15, baseType: !122, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !978, file: !751, line: 20, baseType: !982, size: 32, offset: 32)
!982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !978, file: !751, line: 16, size: 32, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !982, file: !751, line: 18, baseType: !109, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !982, file: !751, line: 19, baseType: !19, size: 32)
!986 = !DIGlobalVariableExpression(var: !987, expr: !DIExpression())
!987 = distinct !DIGlobalVariable(scope: null, file: !988, line: 35, type: !213, isLocal: true, isDefinition: true)
!988 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!989 = !DIGlobalVariableExpression(var: !990, expr: !DIExpression())
!990 = distinct !DIGlobalVariable(scope: null, file: !988, line: 35, type: !391, isLocal: true, isDefinition: true)
!991 = distinct !DICompileUnit(language: DW_LANG_C11, file: !641, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !992, splitDebugInlining: false, nameTableKind: None)
!992 = !{!639, !642}
!993 = distinct !DICompileUnit(language: DW_LANG_C11, file: !994, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!994 = !DIFile(filename: "lib/c-ctype.c", directory: "/src", checksumkind: CSK_MD5, checksum: "245df19f202f37bba31cfa46647ceb93")
!995 = distinct !DICompileUnit(language: DW_LANG_C11, file: !996, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!996 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!997 = distinct !DICompileUnit(language: DW_LANG_C11, file: !882, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !998, retainedTypes: !1002, globals: !1003, splitDebugInlining: false, nameTableKind: None)
!998 = !{!999}
!999 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !882, line: 40, baseType: !109, size: 32, elements: !1000)
!1000 = !{!1001}
!1001 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!1002 = !{!164}
!1003 = !{!880, !883, !885, !887, !889, !891, !896, !898, !900, !902, !907, !912, !917, !919, !924, !926, !931, !933, !935, !937, !939, !941, !943, !945}
!1004 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1005, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1006, retainedTypes: !1034, splitDebugInlining: false, nameTableKind: None)
!1005 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!1006 = !{!1007, !1019}
!1007 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1008, file: !1005, line: 188, baseType: !109, size: 32, elements: !1017)
!1008 = distinct !DISubprogram(name: "x2nrealloc", scope: !1005, file: !1005, line: 176, type: !1009, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !1012)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!164, !164, !1011, !166}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!1012 = !{!1013, !1014, !1015, !1016}
!1013 = !DILocalVariable(name: "p", arg: 1, scope: !1008, file: !1005, line: 176, type: !164)
!1014 = !DILocalVariable(name: "pn", arg: 2, scope: !1008, file: !1005, line: 176, type: !1011)
!1015 = !DILocalVariable(name: "s", arg: 3, scope: !1008, file: !1005, line: 176, type: !166)
!1016 = !DILocalVariable(name: "n", scope: !1008, file: !1005, line: 178, type: !166)
!1017 = !{!1018}
!1018 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!1019 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1020, file: !1005, line: 228, baseType: !109, size: 32, elements: !1017)
!1020 = distinct !DISubprogram(name: "xpalloc", scope: !1005, file: !1005, line: 223, type: !1021, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !1024)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!164, !164, !1023, !528, !530, !528}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!1024 = !{!1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033}
!1025 = !DILocalVariable(name: "pa", arg: 1, scope: !1020, file: !1005, line: 223, type: !164)
!1026 = !DILocalVariable(name: "pn", arg: 2, scope: !1020, file: !1005, line: 223, type: !1023)
!1027 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !1020, file: !1005, line: 223, type: !528)
!1028 = !DILocalVariable(name: "n_max", arg: 4, scope: !1020, file: !1005, line: 223, type: !530)
!1029 = !DILocalVariable(name: "s", arg: 5, scope: !1020, file: !1005, line: 223, type: !528)
!1030 = !DILocalVariable(name: "n0", scope: !1020, file: !1005, line: 230, type: !528)
!1031 = !DILocalVariable(name: "n", scope: !1020, file: !1005, line: 237, type: !528)
!1032 = !DILocalVariable(name: "nbytes", scope: !1020, file: !1005, line: 248, type: !528)
!1033 = !DILocalVariable(name: "adjusted_nbytes", scope: !1020, file: !1005, line: 252, type: !528)
!1034 = !{!163, !164, !231, !174, !168}
!1035 = distinct !DICompileUnit(language: DW_LANG_C11, file: !963, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1036, splitDebugInlining: false, nameTableKind: None)
!1036 = !{!961, !964, !966}
!1037 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1038, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1038 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1039 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1040, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1040 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!1041 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1042, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1002, splitDebugInlining: false, nameTableKind: None)
!1042 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!1043 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1044, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1002, splitDebugInlining: false, nameTableKind: None)
!1044 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!1045 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1046, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1047, splitDebugInlining: false, nameTableKind: None)
!1046 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1047 = !{!231, !168, !164}
!1048 = distinct !DICompileUnit(language: DW_LANG_C11, file: !988, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1049, splitDebugInlining: false, nameTableKind: None)
!1049 = !{!986, !989}
!1050 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1051, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1051 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1052 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1053, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1002, splitDebugInlining: false, nameTableKind: None)
!1053 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1054 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!1055 = !{i32 7, !"Dwarf Version", i32 5}
!1056 = !{i32 2, !"Debug Info Version", i32 3}
!1057 = !{i32 1, !"wchar_size", i32 4}
!1058 = !{i32 8, !"PIC Level", i32 2}
!1059 = !{i32 7, !"PIE Level", i32 2}
!1060 = !{i32 7, !"uwtable", i32 2}
!1061 = !{i32 7, !"frame-pointer", i32 1}
!1062 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 107, type: !178, scopeLine: 108, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1063)
!1063 = !{!1064}
!1064 = !DILocalVariable(name: "status", arg: 1, scope: !1062, file: !2, line: 107, type: !122)
!1065 = !DILocation(line: 0, scope: !1062)
!1066 = !DILocation(line: 109, column: 14, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 109, column: 7)
!1068 = !DILocation(line: 109, column: 7, scope: !1062)
!1069 = !DILocation(line: 110, column: 5, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 110, column: 5)
!1071 = !{!1072, !1072, i64 0}
!1072 = !{!"any pointer", !1073, i64 0}
!1073 = !{!"omnipotent char", !1074, i64 0}
!1074 = !{!"Simple C/C++ TBAA"}
!1075 = !DILocation(line: 113, column: 7, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 112, column: 5)
!1077 = !DILocation(line: 116, column: 7, scope: !1076)
!1078 = !DILocation(line: 736, column: 3, scope: !1079, inlinedAt: !1081)
!1079 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !108, file: !108, line: 734, type: !718, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1080)
!1080 = !{}
!1081 = distinct !DILocation(line: 120, column: 7, scope: !1076)
!1082 = !DILocation(line: 122, column: 7, scope: !1076)
!1083 = !DILocation(line: 126, column: 7, scope: !1076)
!1084 = !DILocation(line: 130, column: 7, scope: !1076)
!1085 = !DILocation(line: 134, column: 7, scope: !1076)
!1086 = !DILocation(line: 138, column: 7, scope: !1076)
!1087 = !DILocation(line: 142, column: 7, scope: !1076)
!1088 = !DILocation(line: 147, column: 7, scope: !1076)
!1089 = !DILocation(line: 151, column: 7, scope: !1076)
!1090 = !DILocation(line: 155, column: 7, scope: !1076)
!1091 = !DILocation(line: 159, column: 7, scope: !1076)
!1092 = !DILocation(line: 163, column: 7, scope: !1076)
!1093 = !DILocation(line: 167, column: 7, scope: !1076)
!1094 = !DILocation(line: 168, column: 7, scope: !1076)
!1095 = !DILocation(line: 169, column: 7, scope: !1076)
!1096 = !DILocation(line: 173, column: 7, scope: !1076)
!1097 = !DILocalVariable(name: "program", arg: 1, scope: !1098, file: !108, line: 824, type: !169)
!1098 = distinct !DISubprogram(name: "emit_exec_status", scope: !108, file: !108, line: 824, type: !1099, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1101)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !169}
!1101 = !{!1097}
!1102 = !DILocation(line: 0, scope: !1098, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 179, column: 7, scope: !1076)
!1104 = !DILocation(line: 826, column: 7, scope: !1098, inlinedAt: !1103)
!1105 = !DILocalVariable(name: "program", arg: 1, scope: !1106, file: !108, line: 836, type: !169)
!1106 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !108, file: !108, line: 836, type: !1099, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1107)
!1107 = !{!1105, !1108, !1115, !1116, !1118, !1119}
!1108 = !DILocalVariable(name: "infomap", scope: !1106, file: !108, line: 838, type: !1109)
!1109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1110, size: 896, elements: !292)
!1110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1111)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1106, file: !108, line: 838, size: 128, elements: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1111, file: !108, line: 838, baseType: !169, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1111, file: !108, line: 838, baseType: !169, size: 64, offset: 64)
!1115 = !DILocalVariable(name: "node", scope: !1106, file: !108, line: 848, type: !169)
!1116 = !DILocalVariable(name: "map_prog", scope: !1106, file: !108, line: 849, type: !1117)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1118 = !DILocalVariable(name: "lc_messages", scope: !1106, file: !108, line: 861, type: !169)
!1119 = !DILocalVariable(name: "url_program", scope: !1106, file: !108, line: 874, type: !169)
!1120 = !DILocation(line: 0, scope: !1106, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 180, column: 7, scope: !1076)
!1122 = !DILocation(line: 857, column: 3, scope: !1106, inlinedAt: !1121)
!1123 = !DILocation(line: 861, column: 29, scope: !1106, inlinedAt: !1121)
!1124 = !DILocation(line: 862, column: 7, scope: !1125, inlinedAt: !1121)
!1125 = distinct !DILexicalBlock(scope: !1106, file: !108, line: 862, column: 7)
!1126 = !DILocation(line: 862, column: 19, scope: !1125, inlinedAt: !1121)
!1127 = !DILocation(line: 862, column: 22, scope: !1125, inlinedAt: !1121)
!1128 = !DILocation(line: 862, column: 7, scope: !1106, inlinedAt: !1121)
!1129 = !DILocation(line: 868, column: 7, scope: !1130, inlinedAt: !1121)
!1130 = distinct !DILexicalBlock(scope: !1125, file: !108, line: 863, column: 5)
!1131 = !DILocation(line: 870, column: 5, scope: !1130, inlinedAt: !1121)
!1132 = !DILocation(line: 875, column: 3, scope: !1106, inlinedAt: !1121)
!1133 = !DILocation(line: 877, column: 3, scope: !1106, inlinedAt: !1121)
!1134 = !DILocation(line: 182, column: 3, scope: !1062)
!1135 = !DISubprogram(name: "dcgettext", scope: !1136, file: !1136, line: 51, type: !1137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1136 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!163, !169, !169, !122}
!1139 = !DISubprogram(name: "__fprintf_chk", scope: !1140, file: !1140, line: 93, type: !1141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1140 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!122, !1143, !122, !1144, null}
!1143 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !326)
!1144 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !169)
!1145 = !DISubprogram(name: "__printf_chk", scope: !1140, file: !1140, line: 95, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!122, !122, !1144, null}
!1148 = !DISubprogram(name: "fputs_unlocked", scope: !680, file: !680, line: 691, type: !1149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!122, !1144, !1143}
!1151 = !DILocation(line: 0, scope: !304)
!1152 = !DILocation(line: 581, column: 7, scope: !312)
!1153 = !{!1154, !1154, i64 0}
!1154 = !{!"int", !1073, i64 0}
!1155 = !DILocation(line: 581, column: 19, scope: !312)
!1156 = !DILocation(line: 581, column: 7, scope: !304)
!1157 = !DILocation(line: 585, column: 26, scope: !311)
!1158 = !DILocation(line: 0, scope: !311)
!1159 = !DILocation(line: 586, column: 23, scope: !311)
!1160 = !DILocation(line: 586, column: 28, scope: !311)
!1161 = !DILocation(line: 586, column: 32, scope: !311)
!1162 = !{!1073, !1073, i64 0}
!1163 = !DILocation(line: 586, column: 38, scope: !311)
!1164 = !DILocalVariable(name: "__s1", arg: 1, scope: !1165, file: !1166, line: 1359, type: !169)
!1165 = distinct !DISubprogram(name: "streq", scope: !1166, file: !1166, line: 1359, type: !1167, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1169)
!1166 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!231, !169, !169}
!1169 = !{!1164, !1170}
!1170 = !DILocalVariable(name: "__s2", arg: 2, scope: !1165, file: !1166, line: 1359, type: !169)
!1171 = !DILocation(line: 0, scope: !1165, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 586, column: 41, scope: !311)
!1173 = !DILocation(line: 1361, column: 11, scope: !1165, inlinedAt: !1172)
!1174 = !DILocation(line: 1361, column: 10, scope: !1165, inlinedAt: !1172)
!1175 = !DILocation(line: 586, column: 19, scope: !311)
!1176 = !DILocation(line: 587, column: 5, scope: !311)
!1177 = !DILocation(line: 588, column: 7, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !304, file: !108, line: 588, column: 7)
!1179 = !DILocation(line: 588, column: 7, scope: !304)
!1180 = !DILocation(line: 590, column: 7, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1178, file: !108, line: 589, column: 5)
!1182 = !DILocation(line: 591, column: 7, scope: !1181)
!1183 = !DILocation(line: 595, column: 37, scope: !304)
!1184 = !DILocation(line: 595, column: 35, scope: !304)
!1185 = !DILocation(line: 596, column: 29, scope: !304)
!1186 = !DILocation(line: 597, column: 8, scope: !319)
!1187 = !DILocation(line: 597, column: 7, scope: !304)
!1188 = !DILocation(line: 604, column: 24, scope: !318)
!1189 = !DILocation(line: 604, column: 12, scope: !319)
!1190 = !DILocation(line: 0, scope: !317)
!1191 = !DILocation(line: 610, column: 16, scope: !317)
!1192 = !DILocation(line: 610, column: 7, scope: !317)
!1193 = !DILocation(line: 611, column: 21, scope: !317)
!1194 = !{!1195, !1195, i64 0}
!1195 = !{!"short", !1073, i64 0}
!1196 = !DILocation(line: 611, column: 19, scope: !317)
!1197 = !DILocation(line: 611, column: 16, scope: !317)
!1198 = !DILocation(line: 610, column: 30, scope: !317)
!1199 = distinct !{!1199, !1192, !1193, !1200}
!1200 = !{!"llvm.loop.mustprogress"}
!1201 = !DILocation(line: 612, column: 18, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !317, file: !108, line: 612, column: 11)
!1203 = !DILocation(line: 612, column: 11, scope: !317)
!1204 = !DILocation(line: 620, column: 23, scope: !304)
!1205 = !DILocation(line: 625, column: 39, scope: !304)
!1206 = !DILocation(line: 626, column: 3, scope: !304)
!1207 = !DILocation(line: 626, column: 10, scope: !304)
!1208 = !DILocation(line: 626, column: 21, scope: !304)
!1209 = !DILocation(line: 628, column: 44, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !108, line: 628, column: 11)
!1211 = distinct !DILexicalBlock(scope: !304, file: !108, line: 627, column: 5)
!1212 = !DILocation(line: 628, column: 32, scope: !1210)
!1213 = !DILocation(line: 628, column: 49, scope: !1210)
!1214 = !DILocation(line: 628, column: 11, scope: !1211)
!1215 = !DILocation(line: 630, column: 11, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1211, file: !108, line: 630, column: 11)
!1217 = !DILocation(line: 630, column: 11, scope: !1211)
!1218 = !DILocation(line: 632, column: 26, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !108, line: 632, column: 15)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !108, line: 631, column: 9)
!1221 = !DILocation(line: 632, column: 34, scope: !1219)
!1222 = !DILocation(line: 632, column: 37, scope: !1219)
!1223 = !DILocation(line: 632, column: 15, scope: !1220)
!1224 = !DILocation(line: 640, column: 16, scope: !1211)
!1225 = distinct !{!1225, !1206, !1226, !1200}
!1226 = !DILocation(line: 641, column: 5, scope: !304)
!1227 = !DILocation(line: 644, column: 3, scope: !304)
!1228 = !DILocation(line: 0, scope: !1165, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 648, column: 31, scope: !304)
!1230 = !DILocation(line: 0, scope: !1165, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 649, column: 31, scope: !304)
!1232 = !DILocation(line: 0, scope: !1165, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 650, column: 31, scope: !304)
!1234 = !DILocation(line: 0, scope: !1165, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 651, column: 31, scope: !304)
!1236 = !DILocation(line: 0, scope: !1165, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 652, column: 31, scope: !304)
!1238 = !DILocation(line: 0, scope: !1165, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 653, column: 31, scope: !304)
!1240 = !DILocation(line: 0, scope: !1165, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 654, column: 31, scope: !304)
!1242 = !DILocation(line: 0, scope: !1165, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 655, column: 31, scope: !304)
!1244 = !DILocation(line: 0, scope: !1165, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 656, column: 31, scope: !304)
!1246 = !DILocation(line: 0, scope: !1165, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 657, column: 31, scope: !304)
!1248 = !DILocation(line: 663, column: 7, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !304, file: !108, line: 663, column: 7)
!1250 = !DILocation(line: 664, column: 7, scope: !1249)
!1251 = !DILocation(line: 664, column: 10, scope: !1249)
!1252 = !DILocation(line: 663, column: 7, scope: !304)
!1253 = !DILocation(line: 669, column: 7, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1249, file: !108, line: 665, column: 5)
!1255 = !DILocation(line: 671, column: 5, scope: !1254)
!1256 = !DILocation(line: 676, column: 7, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1249, file: !108, line: 673, column: 5)
!1258 = !DILocation(line: 679, column: 3, scope: !304)
!1259 = !DILocation(line: 683, column: 3, scope: !304)
!1260 = !DILocation(line: 686, column: 3, scope: !304)
!1261 = !DILocation(line: 688, column: 3, scope: !304)
!1262 = !DILocation(line: 691, column: 3, scope: !304)
!1263 = !DILocation(line: 695, column: 3, scope: !304)
!1264 = !DILocation(line: 696, column: 1, scope: !304)
!1265 = !DISubprogram(name: "setlocale", scope: !1266, file: !1266, line: 122, type: !1267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1266 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!163, !122, !169}
!1269 = !DISubprogram(name: "strncmp", scope: !1270, file: !1270, line: 159, type: !1271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1270 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!122, !169, !169, !166}
!1273 = !DISubprogram(name: "exit", scope: !1274, file: !1274, line: 624, type: !178, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1274 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1275 = !DISubprogram(name: "getenv", scope: !1274, file: !1274, line: 641, type: !1276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!163, !169}
!1278 = !DISubprogram(name: "strcmp", scope: !1270, file: !1270, line: 156, type: !1279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!122, !169, !169}
!1281 = !DISubprogram(name: "strspn", scope: !1270, file: !1270, line: 297, type: !1282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!168, !169, !169}
!1284 = !DISubprogram(name: "strchr", scope: !1270, file: !1270, line: 246, type: !1285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!163, !169, !122}
!1287 = !DISubprogram(name: "__ctype_b_loc", scope: !141, file: !141, line: 79, type: !1288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!1290}
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!1293 = !DISubprogram(name: "strcspn", scope: !1270, file: !1270, line: 293, type: !1282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1294 = !DISubprogram(name: "fwrite_unlocked", scope: !680, file: !680, line: 704, type: !1295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!166, !1297, !166, !166, !1143}
!1297 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1298)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1300 = !DILocation(line: 0, scope: !223)
!1301 = !DILocation(line: 772, column: 21, scope: !223)
!1302 = !DILocation(line: 772, column: 3, scope: !223)
!1303 = !DILocation(line: 773, column: 3, scope: !223)
!1304 = !DILocation(line: 774, column: 3, scope: !223)
!1305 = !DILocation(line: 775, column: 3, scope: !223)
!1306 = !DILocalVariable(name: "status", arg: 1, scope: !1307, file: !108, line: 102, type: !122)
!1307 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !108, file: !108, line: 102, type: !178, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1308)
!1308 = !{!1306}
!1309 = !DILocation(line: 0, scope: !1307, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 777, column: 3, scope: !223)
!1311 = !DILocation(line: 105, column: 18, scope: !1312, inlinedAt: !1310)
!1312 = distinct !DILexicalBlock(scope: !1307, file: !108, line: 104, column: 7)
!1313 = !DILocation(line: 778, column: 3, scope: !223)
!1314 = !DILocation(line: 755, column: 13, scope: !1315, inlinedAt: !1319)
!1315 = distinct !DISubprogram(name: "initialize_signals", scope: !2, file: !2, line: 753, type: !718, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1316)
!1316 = !{!1317}
!1317 = !DILocalVariable(name: "i", scope: !1318, file: !2, line: 757, type: !122)
!1318 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 757, column: 3)
!1319 = distinct !DILocation(line: 780, column: 3, scope: !223)
!1320 = !DILocation(line: 755, column: 11, scope: !1315, inlinedAt: !1319)
!1321 = !DILocation(line: 0, scope: !1318, inlinedAt: !1319)
!1322 = !DILocation(line: 758, column: 16, scope: !1323, inlinedAt: !1319)
!1323 = distinct !DILexicalBlock(scope: !1318, file: !2, line: 757, column: 3)
!1324 = !DILocation(line: 783, column: 3, scope: !223)
!1325 = !DILocation(line: 769, column: 9, scope: !223)
!1326 = !DILocation(line: 768, column: 15, scope: !223)
!1327 = !DILocation(line: 783, column: 18, scope: !223)
!1328 = distinct !{!1328, !1324, !1329, !1200}
!1329 = !DILocation(line: 835, column: 5, scope: !223)
!1330 = !DILocation(line: 788, column: 19, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 786, column: 9)
!1332 = distinct !DILexicalBlock(scope: !223, file: !2, line: 784, column: 5)
!1333 = !DILocation(line: 789, column: 11, scope: !1331)
!1334 = !DILocation(line: 794, column: 29, scope: !1331)
!1335 = !DILocalVariable(name: "var", arg: 1, scope: !1336, file: !2, line: 186, type: !169)
!1336 = distinct !DISubprogram(name: "append_unset_var", scope: !2, file: !2, line: 186, type: !1099, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1337)
!1337 = !{!1335}
!1338 = !DILocation(line: 0, scope: !1336, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 794, column: 11, scope: !1331)
!1340 = !DILocation(line: 188, column: 7, scope: !1341, inlinedAt: !1339)
!1341 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 188, column: 7)
!1342 = !{!1343, !1343, i64 0}
!1343 = !{!"long", !1073, i64 0}
!1344 = !DILocation(line: 188, column: 22, scope: !1341, inlinedAt: !1339)
!1345 = !DILocation(line: 188, column: 19, scope: !1341, inlinedAt: !1339)
!1346 = !DILocation(line: 188, column: 7, scope: !1336, inlinedAt: !1339)
!1347 = !DILocation(line: 189, column: 14, scope: !1341, inlinedAt: !1339)
!1348 = !DILocation(line: 189, column: 12, scope: !1341, inlinedAt: !1339)
!1349 = !DILocation(line: 190, column: 21, scope: !1336, inlinedAt: !1339)
!1350 = !DILocation(line: 189, column: 5, scope: !1341, inlinedAt: !1339)
!1351 = !DILocation(line: 190, column: 3, scope: !1336, inlinedAt: !1339)
!1352 = !DILocation(line: 190, column: 25, scope: !1336, inlinedAt: !1339)
!1353 = !DILocation(line: 795, column: 11, scope: !1331)
!1354 = !DILocation(line: 797, column: 21, scope: !1331)
!1355 = !DILocation(line: 798, column: 11, scope: !1331)
!1356 = !DILocation(line: 801, column: 11, scope: !1331)
!1357 = !DILocation(line: 803, column: 39, scope: !1331)
!1358 = !DILocation(line: 803, column: 11, scope: !1331)
!1359 = !DILocation(line: 804, column: 38, scope: !1331)
!1360 = !DILocation(line: 804, column: 11, scope: !1331)
!1361 = !DILocation(line: 805, column: 11, scope: !1331)
!1362 = !DILocation(line: 807, column: 39, scope: !1331)
!1363 = !DILocation(line: 807, column: 11, scope: !1331)
!1364 = !DILocation(line: 808, column: 11, scope: !1331)
!1365 = !DILocation(line: 810, column: 38, scope: !1331)
!1366 = !DILocation(line: 810, column: 11, scope: !1331)
!1367 = !DILocation(line: 811, column: 11, scope: !1331)
!1368 = !DILocation(line: 813, column: 34, scope: !1331)
!1369 = !DILocation(line: 814, column: 11, scope: !1331)
!1370 = !DILocation(line: 816, column: 20, scope: !1331)
!1371 = !DILocation(line: 817, column: 11, scope: !1331)
!1372 = !DILocation(line: 819, column: 31, scope: !1331)
!1373 = !DILocalVariable(name: "str", arg: 1, scope: !1374, file: !2, line: 526, type: !169)
!1374 = distinct !DISubprogram(name: "parse_split_string", scope: !2, file: !2, line: 526, type: !1375, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1378)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{null, !169, !524, !524, !1377}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!1378 = !{!1373, !1379, !1380, !1381, !1382, !1383, !1384, !1385}
!1379 = !DILocalVariable(name: "orig_optind", arg: 2, scope: !1374, file: !2, line: 526, type: !524)
!1380 = !DILocalVariable(name: "orig_argc", arg: 3, scope: !1374, file: !2, line: 527, type: !524)
!1381 = !DILocalVariable(name: "orig_argv", arg: 4, scope: !1374, file: !2, line: 527, type: !1377)
!1382 = !DILocalVariable(name: "extra_argc", scope: !1374, file: !2, line: 529, type: !122)
!1383 = !DILocalVariable(name: "newargc", scope: !1374, file: !2, line: 529, type: !122)
!1384 = !DILocalVariable(name: "newargv", scope: !1374, file: !2, line: 530, type: !226)
!1385 = !DILocalVariable(name: "i", scope: !1386, file: !2, line: 540, type: !122)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 540, column: 7)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !2, line: 537, column: 5)
!1388 = distinct !DILexicalBlock(scope: !1374, file: !2, line: 536, column: 7)
!1389 = !DILocation(line: 0, scope: !1374, inlinedAt: !1390)
!1390 = distinct !DILocation(line: 819, column: 11, scope: !1331)
!1391 = !DILocation(line: 529, column: 33, scope: !1374, inlinedAt: !1390)
!1392 = !DILocation(line: 529, column: 31, scope: !1374, inlinedAt: !1390)
!1393 = !DILocalVariable(name: "str", arg: 1, scope: !1394, file: !2, line: 366, type: !169)
!1394 = distinct !DISubprogram(name: "build_argv", scope: !2, file: !2, line: 366, type: !1395, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1397)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!226, !169, !122, !524}
!1397 = !{!1393, !1398, !1399, !1400, !1401, !1402, !1410, !1412, !1415, !1416}
!1398 = !DILocalVariable(name: "extra_argc", arg: 2, scope: !1394, file: !2, line: 366, type: !122)
!1399 = !DILocalVariable(name: "argc", arg: 3, scope: !1394, file: !2, line: 366, type: !524)
!1400 = !DILocalVariable(name: "dq", scope: !1394, file: !2, line: 368, type: !231)
!1401 = !DILocalVariable(name: "sq", scope: !1394, file: !2, line: 368, type: !231)
!1402 = !DILocalVariable(name: "ss", scope: !1394, file: !2, line: 369, type: !1403)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "splitbuf", file: !2, line: 256, size: 256, elements: !1404)
!1404 = !{!1405, !1406, !1407, !1408, !1409}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1403, file: !2, line: 275, baseType: !226, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1403, file: !2, line: 276, baseType: !122, size: 32, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "half_alloc", scope: !1403, file: !2, line: 277, baseType: !528, size: 64, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "extra_argc", scope: !1403, file: !2, line: 280, baseType: !122, size: 32, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "sep", scope: !1403, file: !2, line: 284, baseType: !231, size: 8, offset: 224)
!1410 = !DILocalVariable(name: "newc", scope: !1411, file: !2, line: 382, type: !4)
!1411 = distinct !DILexicalBlock(scope: !1394, file: !2, line: 381, column: 5)
!1412 = !DILocalVariable(name: "n", scope: !1413, file: !2, line: 468, type: !163)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 467, column: 11)
!1414 = distinct !DILexicalBlock(scope: !1411, file: !2, line: 385, column: 9)
!1415 = !DILocalVariable(name: "v", scope: !1413, file: !2, line: 474, type: !163)
!1416 = !DILabel(scope: !1394, name: "eos", file: !2, line: 498)
!1417 = !DILocation(line: 0, scope: !1394, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 530, column: 20, scope: !1374, inlinedAt: !1390)
!1419 = !DILocation(line: 369, column: 3, scope: !1394, inlinedAt: !1418)
!1420 = !DILocation(line: 369, column: 19, scope: !1394, inlinedAt: !1418)
!1421 = !DILocation(line: 370, column: 34, scope: !1394, inlinedAt: !1418)
!1422 = !DILocation(line: 370, column: 23, scope: !1394, inlinedAt: !1418)
!1423 = !DILocation(line: 370, column: 13, scope: !1394, inlinedAt: !1418)
!1424 = !DILocation(line: 370, column: 11, scope: !1394, inlinedAt: !1418)
!1425 = !{!1426, !1072, i64 0}
!1426 = !{!"splitbuf", !1072, i64 0, !1154, i64 8, !1343, i64 16, !1154, i64 24, !1427, i64 28}
!1427 = !{!"_Bool", !1073, i64 0}
!1428 = !DILocation(line: 371, column: 11, scope: !1394, inlinedAt: !1418)
!1429 = !{!1426, !1154, i64 8}
!1430 = !DILocation(line: 372, column: 17, scope: !1394, inlinedAt: !1418)
!1431 = !{!1426, !1343, i64 16}
!1432 = !DILocation(line: 373, column: 17, scope: !1394, inlinedAt: !1418)
!1433 = !{!1426, !1154, i64 24}
!1434 = !DILocation(line: 374, column: 10, scope: !1394, inlinedAt: !1418)
!1435 = !{!1426, !1427, i64 28}
!1436 = !DILocation(line: 375, column: 3, scope: !1394, inlinedAt: !1418)
!1437 = !DILocation(line: 375, column: 20, scope: !1394, inlinedAt: !1418)
!1438 = !DILocation(line: 380, column: 3, scope: !1394, inlinedAt: !1418)
!1439 = !DILocation(line: 380, column: 10, scope: !1394, inlinedAt: !1418)
!1440 = !DILocation(line: 387, column: 15, scope: !1414, inlinedAt: !1418)
!1441 = !DILocation(line: 389, column: 16, scope: !1414, inlinedAt: !1418)
!1442 = !DILocation(line: 390, column: 11, scope: !1414, inlinedAt: !1418)
!1443 = !DILocation(line: 391, column: 11, scope: !1414, inlinedAt: !1418)
!1444 = !DILocation(line: 392, column: 11, scope: !1414, inlinedAt: !1418)
!1445 = !DILocation(line: 395, column: 15, scope: !1414, inlinedAt: !1418)
!1446 = !DILocation(line: 397, column: 16, scope: !1414, inlinedAt: !1418)
!1447 = !DILocation(line: 398, column: 11, scope: !1414, inlinedAt: !1418)
!1448 = !DILocation(line: 399, column: 11, scope: !1414, inlinedAt: !1418)
!1449 = !DILocation(line: 400, column: 11, scope: !1414, inlinedAt: !1418)
!1450 = !DILocation(line: 404, column: 18, scope: !1451, inlinedAt: !1418)
!1451 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 404, column: 15)
!1452 = !DILocation(line: 406, column: 18, scope: !1414, inlinedAt: !1418)
!1453 = !DILocation(line: 407, column: 18, scope: !1414, inlinedAt: !1418)
!1454 = !DILocation(line: 407, column: 15, scope: !1414, inlinedAt: !1418)
!1455 = !DILocation(line: 408, column: 11, scope: !1414, inlinedAt: !1418)
!1456 = !DILocation(line: 411, column: 19, scope: !1457, inlinedAt: !1418)
!1457 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 411, column: 15)
!1458 = !{i8 0, i8 2}
!1459 = !DILocation(line: 411, column: 15, scope: !1414, inlinedAt: !1418)
!1460 = !DILocation(line: 0, scope: !1414, inlinedAt: !1418)
!1461 = !DILocation(line: 418, column: 18, scope: !1462, inlinedAt: !1418)
!1462 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 418, column: 15)
!1463 = !DILocation(line: 418, column: 36, scope: !1462, inlinedAt: !1418)
!1464 = !DILocation(line: 0, scope: !1411, inlinedAt: !1418)
!1465 = !DILocation(line: 423, column: 11, scope: !1414, inlinedAt: !1418)
!1466 = !DILocation(line: 430, column: 19, scope: !1467, inlinedAt: !1418)
!1467 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 424, column: 13)
!1468 = !DILocation(line: 432, column: 19, scope: !1469, inlinedAt: !1418)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !2, line: 431, column: 17)
!1470 = distinct !DILexicalBlock(scope: !1467, file: !2, line: 430, column: 19)
!1471 = !DILocation(line: 433, column: 26, scope: !1469, inlinedAt: !1418)
!1472 = !DILocation(line: 434, column: 19, scope: !1469, inlinedAt: !1418)
!1473 = distinct !{!1473, !1438, !1474, !1200}
!1474 = !DILocation(line: 493, column: 5, scope: !1394, inlinedAt: !1418)
!1475 = !DILocation(line: 440, column: 19, scope: !1467, inlinedAt: !1418)
!1476 = !DILocation(line: 441, column: 17, scope: !1477, inlinedAt: !1418)
!1477 = distinct !DILexicalBlock(scope: !1467, file: !2, line: 440, column: 19)
!1478 = !DILocation(line: 446, column: 36, scope: !1467, inlinedAt: !1418)
!1479 = !DILocation(line: 447, column: 36, scope: !1467, inlinedAt: !1418)
!1480 = !DILocation(line: 448, column: 36, scope: !1467, inlinedAt: !1418)
!1481 = !DILocation(line: 449, column: 36, scope: !1467, inlinedAt: !1418)
!1482 = !DILocation(line: 452, column: 15, scope: !1467, inlinedAt: !1418)
!1483 = !DILocation(line: 423, column: 19, scope: !1414, inlinedAt: !1418)
!1484 = !DILocation(line: 456, column: 15, scope: !1467, inlinedAt: !1418)
!1485 = !DILocation(line: 463, column: 15, scope: !1414, inlinedAt: !1418)
!1486 = !DILocalVariable(name: "str", arg: 1, scope: !1487, file: !2, line: 233, type: !169)
!1487 = distinct !DISubprogram(name: "extract_varname", scope: !2, file: !2, line: 233, type: !1276, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1488)
!1488 = !{!1486, !1489, !1490}
!1489 = !DILocalVariable(name: "p", scope: !1487, file: !2, line: 235, type: !169)
!1490 = !DILocalVariable(name: "i", scope: !1487, file: !2, line: 241, type: !528)
!1491 = !DILocation(line: 0, scope: !1487, inlinedAt: !1492)
!1492 = distinct !DILocation(line: 468, column: 23, scope: !1413, inlinedAt: !1418)
!1493 = !DILocalVariable(name: "str", arg: 1, scope: !1494, file: !2, line: 213, type: !169)
!1494 = distinct !DISubprogram(name: "scan_varname", scope: !2, file: !2, line: 213, type: !1495, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1497)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!169, !169}
!1497 = !{!1493, !1498}
!1498 = !DILocalVariable(name: "end", scope: !1499, file: !2, line: 217, type: !169)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 216, column: 5)
!1500 = distinct !DILexicalBlock(scope: !1494, file: !2, line: 215, column: 7)
!1501 = !DILocation(line: 0, scope: !1494, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 235, column: 19, scope: !1487, inlinedAt: !1492)
!1503 = !DILocation(line: 215, column: 7, scope: !1500, inlinedAt: !1502)
!1504 = !DILocation(line: 215, column: 14, scope: !1500, inlinedAt: !1502)
!1505 = !DILocation(line: 215, column: 21, scope: !1500, inlinedAt: !1502)
!1506 = !DILocation(line: 215, column: 36, scope: !1500, inlinedAt: !1502)
!1507 = !DILocalVariable(name: "c", arg: 1, scope: !1508, file: !1509, line: 183, type: !122)
!1508 = distinct !DISubprogram(name: "c_isalpha", scope: !1509, file: !1509, line: 183, type: !1510, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1512)
!1509 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!231, !122}
!1512 = !{!1507}
!1513 = !DILocation(line: 0, scope: !1508, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 215, column: 25, scope: !1500, inlinedAt: !1502)
!1515 = !DILocation(line: 185, column: 3, scope: !1508, inlinedAt: !1514)
!1516 = !DILocation(line: 217, column: 29, scope: !1499, inlinedAt: !1502)
!1517 = !DILocation(line: 0, scope: !1499, inlinedAt: !1502)
!1518 = !DILocation(line: 218, column: 7, scope: !1499, inlinedAt: !1502)
!1519 = !DILocation(line: 218, column: 25, scope: !1499, inlinedAt: !1502)
!1520 = !DILocation(line: 218, column: 14, scope: !1499, inlinedAt: !1502)
!1521 = !DILocation(line: 218, column: 31, scope: !1499, inlinedAt: !1502)
!1522 = !DILocation(line: 218, column: 34, scope: !1499, inlinedAt: !1502)
!1523 = !DILocation(line: 219, column: 9, scope: !1499, inlinedAt: !1502)
!1524 = distinct !{!1524, !1518, !1525, !1200}
!1525 = !DILocation(line: 219, column: 11, scope: !1499, inlinedAt: !1502)
!1526 = !DILocation(line: 241, column: 15, scope: !1487, inlinedAt: !1492)
!1527 = !DILocation(line: 241, column: 21, scope: !1487, inlinedAt: !1492)
!1528 = !DILocation(line: 243, column: 12, scope: !1529, inlinedAt: !1492)
!1529 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 243, column: 7)
!1530 = !DILocation(line: 243, column: 9, scope: !1529, inlinedAt: !1492)
!1531 = !DILocation(line: 243, column: 7, scope: !1487, inlinedAt: !1492)
!1532 = !DILocation(line: 245, column: 7, scope: !1533, inlinedAt: !1492)
!1533 = distinct !DILexicalBlock(scope: !1529, file: !2, line: 244, column: 5)
!1534 = !DILocation(line: 246, column: 48, scope: !1533, inlinedAt: !1492)
!1535 = !DILocation(line: 246, column: 46, scope: !1533, inlinedAt: !1492)
!1536 = !DILocation(line: 246, column: 17, scope: !1533, inlinedAt: !1492)
!1537 = !DILocation(line: 246, column: 15, scope: !1533, inlinedAt: !1492)
!1538 = !DILocation(line: 247, column: 5, scope: !1533, inlinedAt: !1492)
!1539 = !DILocation(line: 0, scope: !1413, inlinedAt: !1418)
!1540 = !DILocation(line: 470, column: 15, scope: !1541, inlinedAt: !1418)
!1541 = distinct !DILexicalBlock(scope: !1413, file: !2, line: 469, column: 17)
!1542 = !DILocation(line: 249, column: 11, scope: !1487, inlinedAt: !1492)
!1543 = !DILocalVariable(name: "__dest", arg: 1, scope: !1544, file: !1545, line: 26, type: !1548)
!1544 = distinct !DISubprogram(name: "memcpy", scope: !1545, file: !1545, line: 26, type: !1546, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1549)
!1545 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!164, !1548, !1297, !166}
!1548 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !164)
!1549 = !{!1543, !1550, !1551}
!1550 = !DILocalVariable(name: "__src", arg: 2, scope: !1544, file: !1545, line: 26, type: !1297)
!1551 = !DILocalVariable(name: "__len", arg: 3, scope: !1544, file: !1545, line: 26, type: !166)
!1552 = !DILocation(line: 0, scope: !1544, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 249, column: 3, scope: !1487, inlinedAt: !1492)
!1554 = !DILocation(line: 29, column: 10, scope: !1544, inlinedAt: !1553)
!1555 = !DILocation(line: 250, column: 3, scope: !1487, inlinedAt: !1492)
!1556 = !DILocation(line: 250, column: 14, scope: !1487, inlinedAt: !1492)
!1557 = !DILocation(line: 474, column: 23, scope: !1413, inlinedAt: !1418)
!1558 = !DILocation(line: 475, column: 17, scope: !1559, inlinedAt: !1418)
!1559 = distinct !DILexicalBlock(scope: !1413, file: !2, line: 475, column: 17)
!1560 = !DILocation(line: 475, column: 17, scope: !1413, inlinedAt: !1418)
!1561 = !DILocation(line: 477, column: 17, scope: !1562, inlinedAt: !1418)
!1562 = distinct !DILexicalBlock(scope: !1559, file: !2, line: 476, column: 15)
!1563 = !DILocation(line: 478, column: 17, scope: !1564, inlinedAt: !1418)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !2, line: 478, column: 17)
!1565 = distinct !DILexicalBlock(scope: !1562, file: !2, line: 478, column: 17)
!1566 = !DILocation(line: 478, column: 17, scope: !1565, inlinedAt: !1418)
!1567 = !DILocation(line: 479, column: 24, scope: !1568, inlinedAt: !1418)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !2, line: 479, column: 17)
!1569 = distinct !DILexicalBlock(scope: !1562, file: !2, line: 479, column: 17)
!1570 = !DILocation(line: 479, column: 17, scope: !1569, inlinedAt: !1418)
!1571 = !DILocation(line: 303, column: 48, scope: !1572, inlinedAt: !1580)
!1572 = distinct !DISubprogram(name: "splitbuf_append_byte", scope: !2, file: !2, line: 301, type: !1573, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1576)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !1575, !4}
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1576 = !{!1577, !1578, !1579}
!1577 = !DILocalVariable(name: "ss", arg: 1, scope: !1572, file: !2, line: 301, type: !1575)
!1578 = !DILocalVariable(name: "c", arg: 2, scope: !1572, file: !2, line: 301, type: !4)
!1579 = !DILocalVariable(name: "string_bytes", scope: !1572, file: !2, line: 303, type: !528)
!1580 = distinct !DILocation(line: 480, column: 19, scope: !1568, inlinedAt: !1418)
!1581 = !DILocation(line: 0, scope: !1572, inlinedAt: !1580)
!1582 = !DILocation(line: 303, column: 39, scope: !1572, inlinedAt: !1580)
!1583 = !DILocation(line: 303, column: 35, scope: !1572, inlinedAt: !1580)
!1584 = !DILocation(line: 303, column: 24, scope: !1572, inlinedAt: !1580)
!1585 = !DILocation(line: 304, column: 11, scope: !1586, inlinedAt: !1580)
!1586 = distinct !DILexicalBlock(scope: !1572, file: !2, line: 304, column: 7)
!1587 = !DILocation(line: 304, column: 22, scope: !1586, inlinedAt: !1580)
!1588 = !DILocation(line: 304, column: 41, scope: !1586, inlinedAt: !1580)
!1589 = !DILocation(line: 304, column: 7, scope: !1572, inlinedAt: !1580)
!1590 = !DILocalVariable(name: "ss", arg: 1, scope: !1591, file: !2, line: 290, type: !1575)
!1591 = distinct !DISubprogram(name: "splitbuf_grow", scope: !2, file: !2, line: 290, type: !1592, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1594)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{null, !1575}
!1594 = !{!1590, !1595, !1596}
!1595 = !DILocalVariable(name: "old_half_alloc", scope: !1591, file: !2, line: 292, type: !528)
!1596 = !DILocalVariable(name: "string_bytes", scope: !1591, file: !2, line: 293, type: !528)
!1597 = !DILocation(line: 0, scope: !1591, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 305, column: 5, scope: !1586, inlinedAt: !1580)
!1599 = !DILocation(line: 294, column: 14, scope: !1591, inlinedAt: !1598)
!1600 = !DILocation(line: 294, column: 12, scope: !1591, inlinedAt: !1598)
!1601 = !DILocation(line: 296, column: 27, scope: !1591, inlinedAt: !1598)
!1602 = !DILocation(line: 296, column: 21, scope: !1591, inlinedAt: !1598)
!1603 = !DILocation(line: 296, column: 48, scope: !1591, inlinedAt: !1598)
!1604 = !DILocalVariable(name: "__dest", arg: 1, scope: !1605, file: !1545, line: 34, type: !164)
!1605 = distinct !DISubprogram(name: "memmove", scope: !1545, file: !1545, line: 34, type: !1606, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1608)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!164, !164, !1298, !166}
!1608 = !{!1604, !1609, !1610}
!1609 = !DILocalVariable(name: "__src", arg: 2, scope: !1605, file: !1545, line: 34, type: !1298)
!1610 = !DILocalVariable(name: "__len", arg: 3, scope: !1605, file: !1545, line: 34, type: !166)
!1611 = !DILocation(line: 0, scope: !1605, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 296, column: 3, scope: !1591, inlinedAt: !1598)
!1613 = !DILocation(line: 36, column: 10, scope: !1605, inlinedAt: !1612)
!1614 = !DILocation(line: 306, column: 18, scope: !1572, inlinedAt: !1580)
!1615 = !DILocation(line: 306, column: 29, scope: !1572, inlinedAt: !1580)
!1616 = !DILocation(line: 305, column: 5, scope: !1586, inlinedAt: !1580)
!1617 = !DILocation(line: 306, column: 23, scope: !1572, inlinedAt: !1580)
!1618 = !DILocation(line: 306, column: 3, scope: !1572, inlinedAt: !1580)
!1619 = !DILocation(line: 306, column: 56, scope: !1572, inlinedAt: !1580)
!1620 = !DILocation(line: 307, column: 58, scope: !1572, inlinedAt: !1580)
!1621 = !DILocation(line: 307, column: 24, scope: !1572, inlinedAt: !1580)
!1622 = !DILocation(line: 307, column: 7, scope: !1572, inlinedAt: !1580)
!1623 = !DILocation(line: 307, column: 16, scope: !1572, inlinedAt: !1580)
!1624 = !DILocation(line: 307, column: 3, scope: !1572, inlinedAt: !1580)
!1625 = !DILocation(line: 307, column: 22, scope: !1572, inlinedAt: !1580)
!1626 = !DILocation(line: 479, column: 29, scope: !1568, inlinedAt: !1418)
!1627 = distinct !{!1627, !1570, !1628, !1200}
!1628 = !DILocation(line: 480, column: 48, scope: !1569, inlinedAt: !1418)
!1629 = !DILocation(line: 483, column: 15, scope: !1630, inlinedAt: !1418)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !2, line: 483, column: 15)
!1631 = distinct !DILexicalBlock(scope: !1559, file: !2, line: 483, column: 15)
!1632 = !DILocation(line: 483, column: 15, scope: !1631, inlinedAt: !1418)
!1633 = !DILocation(line: 485, column: 19, scope: !1413, inlinedAt: !1418)
!1634 = !DILocation(line: 485, column: 37, scope: !1413, inlinedAt: !1418)
!1635 = !DILocation(line: 490, column: 7, scope: !1411, inlinedAt: !1418)
!1636 = !DILocation(line: 0, scope: !1572, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 491, column: 7, scope: !1411, inlinedAt: !1418)
!1638 = !DILocation(line: 303, column: 39, scope: !1572, inlinedAt: !1637)
!1639 = !DILocation(line: 303, column: 48, scope: !1572, inlinedAt: !1637)
!1640 = !DILocation(line: 303, column: 35, scope: !1572, inlinedAt: !1637)
!1641 = !DILocation(line: 303, column: 24, scope: !1572, inlinedAt: !1637)
!1642 = !DILocation(line: 304, column: 11, scope: !1586, inlinedAt: !1637)
!1643 = !DILocation(line: 304, column: 22, scope: !1586, inlinedAt: !1637)
!1644 = !DILocation(line: 304, column: 41, scope: !1586, inlinedAt: !1637)
!1645 = !DILocation(line: 304, column: 7, scope: !1572, inlinedAt: !1637)
!1646 = !DILocation(line: 0, scope: !1591, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 305, column: 5, scope: !1586, inlinedAt: !1637)
!1648 = !DILocation(line: 294, column: 14, scope: !1591, inlinedAt: !1647)
!1649 = !DILocation(line: 294, column: 12, scope: !1591, inlinedAt: !1647)
!1650 = !DILocation(line: 296, column: 27, scope: !1591, inlinedAt: !1647)
!1651 = !DILocation(line: 296, column: 21, scope: !1591, inlinedAt: !1647)
!1652 = !DILocation(line: 296, column: 48, scope: !1591, inlinedAt: !1647)
!1653 = !DILocation(line: 0, scope: !1605, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 296, column: 3, scope: !1591, inlinedAt: !1647)
!1655 = !DILocation(line: 36, column: 10, scope: !1605, inlinedAt: !1654)
!1656 = !DILocation(line: 306, column: 18, scope: !1572, inlinedAt: !1637)
!1657 = !DILocation(line: 306, column: 29, scope: !1572, inlinedAt: !1637)
!1658 = !DILocation(line: 305, column: 5, scope: !1586, inlinedAt: !1637)
!1659 = !DILocation(line: 306, column: 23, scope: !1572, inlinedAt: !1637)
!1660 = !DILocation(line: 306, column: 3, scope: !1572, inlinedAt: !1637)
!1661 = !DILocation(line: 306, column: 56, scope: !1572, inlinedAt: !1637)
!1662 = !DILocation(line: 307, column: 58, scope: !1572, inlinedAt: !1637)
!1663 = !DILocation(line: 307, column: 24, scope: !1572, inlinedAt: !1637)
!1664 = !DILocation(line: 307, column: 7, scope: !1572, inlinedAt: !1637)
!1665 = !DILocation(line: 307, column: 16, scope: !1572, inlinedAt: !1637)
!1666 = !DILocation(line: 307, column: 3, scope: !1572, inlinedAt: !1637)
!1667 = !DILocation(line: 307, column: 22, scope: !1572, inlinedAt: !1637)
!1668 = !DILocation(line: 492, column: 7, scope: !1411, inlinedAt: !1418)
!1669 = !DILocation(line: 495, column: 10, scope: !1670, inlinedAt: !1418)
!1670 = distinct !DILexicalBlock(scope: !1394, file: !2, line: 495, column: 7)
!1671 = !DILocation(line: 496, column: 5, scope: !1670, inlinedAt: !1418)
!1672 = !DILocation(line: 498, column: 2, scope: !1394, inlinedAt: !1418)
!1673 = !DILocation(line: 0, scope: !1572, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 499, column: 3, scope: !1394, inlinedAt: !1418)
!1675 = !DILocation(line: 303, column: 39, scope: !1572, inlinedAt: !1674)
!1676 = !DILocation(line: 303, column: 48, scope: !1572, inlinedAt: !1674)
!1677 = !DILocation(line: 303, column: 35, scope: !1572, inlinedAt: !1674)
!1678 = !DILocation(line: 303, column: 24, scope: !1572, inlinedAt: !1674)
!1679 = !DILocation(line: 304, column: 11, scope: !1586, inlinedAt: !1674)
!1680 = !DILocation(line: 304, column: 22, scope: !1586, inlinedAt: !1674)
!1681 = !DILocation(line: 304, column: 41, scope: !1586, inlinedAt: !1674)
!1682 = !DILocation(line: 304, column: 7, scope: !1572, inlinedAt: !1674)
!1683 = !DILocation(line: 0, scope: !1591, inlinedAt: !1684)
!1684 = distinct !DILocation(line: 305, column: 5, scope: !1586, inlinedAt: !1674)
!1685 = !DILocation(line: 294, column: 14, scope: !1591, inlinedAt: !1684)
!1686 = !DILocation(line: 294, column: 12, scope: !1591, inlinedAt: !1684)
!1687 = !DILocation(line: 296, column: 27, scope: !1591, inlinedAt: !1684)
!1688 = !DILocation(line: 296, column: 21, scope: !1591, inlinedAt: !1684)
!1689 = !DILocation(line: 296, column: 48, scope: !1591, inlinedAt: !1684)
!1690 = !DILocation(line: 0, scope: !1605, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 296, column: 3, scope: !1591, inlinedAt: !1684)
!1692 = !DILocation(line: 36, column: 10, scope: !1605, inlinedAt: !1691)
!1693 = !DILocation(line: 306, column: 18, scope: !1572, inlinedAt: !1674)
!1694 = !DILocation(line: 306, column: 29, scope: !1572, inlinedAt: !1674)
!1695 = !DILocation(line: 305, column: 5, scope: !1586, inlinedAt: !1674)
!1696 = !DILocation(line: 306, column: 23, scope: !1572, inlinedAt: !1674)
!1697 = !DILocation(line: 306, column: 3, scope: !1572, inlinedAt: !1674)
!1698 = !DILocation(line: 306, column: 56, scope: !1572, inlinedAt: !1674)
!1699 = !DILocation(line: 307, column: 58, scope: !1572, inlinedAt: !1674)
!1700 = !DILocation(line: 307, column: 24, scope: !1572, inlinedAt: !1674)
!1701 = !DILocation(line: 307, column: 7, scope: !1572, inlinedAt: !1674)
!1702 = !DILocation(line: 307, column: 16, scope: !1572, inlinedAt: !1674)
!1703 = !DILocation(line: 307, column: 3, scope: !1572, inlinedAt: !1674)
!1704 = !DILocation(line: 307, column: 22, scope: !1572, inlinedAt: !1674)
!1705 = !DILocalVariable(name: "ss", arg: 1, scope: !1706, file: !2, line: 330, type: !1575)
!1706 = distinct !DISubprogram(name: "splitbuf_finishup", scope: !2, file: !2, line: 330, type: !1707, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1709)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!226, !1575}
!1709 = !{!1705, !1710, !1711, !1712, !1713}
!1710 = !DILocalVariable(name: "argc", scope: !1706, file: !2, line: 332, type: !122)
!1711 = !DILocalVariable(name: "argv", scope: !1706, file: !2, line: 333, type: !226)
!1712 = !DILocalVariable(name: "stringbase", scope: !1706, file: !2, line: 334, type: !163)
!1713 = !DILocalVariable(name: "i", scope: !1714, file: !2, line: 335, type: !122)
!1714 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 335, column: 3)
!1715 = !DILocation(line: 0, scope: !1706, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 501, column: 10, scope: !1394, inlinedAt: !1418)
!1717 = !DILocation(line: 333, column: 21, scope: !1706, inlinedAt: !1716)
!1718 = !DILocation(line: 334, column: 47, scope: !1706, inlinedAt: !1716)
!1719 = !DILocation(line: 334, column: 41, scope: !1706, inlinedAt: !1716)
!1720 = !DILocation(line: 0, scope: !1714, inlinedAt: !1716)
!1721 = !DILocation(line: 335, column: 21, scope: !1722, inlinedAt: !1716)
!1722 = distinct !DILexicalBlock(scope: !1714, file: !2, line: 335, column: 3)
!1723 = !DILocation(line: 335, column: 3, scope: !1714, inlinedAt: !1716)
!1724 = !DILocation(line: 502, column: 1, scope: !1394, inlinedAt: !1418)
!1725 = !DILocation(line: 533, column: 14, scope: !1374, inlinedAt: !1390)
!1726 = !DILocation(line: 533, column: 12, scope: !1374, inlinedAt: !1390)
!1727 = !DILocation(line: 536, column: 17, scope: !1388, inlinedAt: !1390)
!1728 = !DILocation(line: 336, column: 39, scope: !1722, inlinedAt: !1716)
!1729 = !DILocation(line: 336, column: 28, scope: !1722, inlinedAt: !1716)
!1730 = !DILocation(line: 336, column: 13, scope: !1722, inlinedAt: !1716)
!1731 = distinct !{!1731, !1723, !1732, !1200, !1733, !1734}
!1732 = !DILocation(line: 336, column: 45, scope: !1714, inlinedAt: !1716)
!1733 = !{!"llvm.loop.isvectorized", i32 1}
!1734 = !{!"llvm.loop.unroll.runtime.disable"}
!1735 = !DILocation(line: 336, column: 26, scope: !1722, inlinedAt: !1716)
!1736 = !DILocation(line: 335, column: 30, scope: !1722, inlinedAt: !1716)
!1737 = distinct !{!1737, !1723, !1732, !1200, !1734, !1733}
!1738 = !DILocation(line: 536, column: 7, scope: !1388, inlinedAt: !1390)
!1739 = !DILocation(line: 538, column: 7, scope: !1740, inlinedAt: !1390)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 538, column: 7)
!1741 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 538, column: 7)
!1742 = !DILocation(line: 539, column: 7, scope: !1743, inlinedAt: !1390)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !2, line: 539, column: 7)
!1744 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 539, column: 7)
!1745 = !DILocation(line: 539, column: 7, scope: !1744, inlinedAt: !1390)
!1746 = !DILocation(line: 0, scope: !1386, inlinedAt: !1390)
!1747 = !DILocation(line: 540, column: 25, scope: !1748, inlinedAt: !1390)
!1748 = distinct !DILexicalBlock(scope: !1386, file: !2, line: 540, column: 7)
!1749 = !DILocation(line: 540, column: 7, scope: !1386, inlinedAt: !1390)
!1750 = !DILocation(line: 541, column: 9, scope: !1751, inlinedAt: !1390)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !2, line: 541, column: 9)
!1752 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 541, column: 9)
!1753 = !DILocation(line: 541, column: 9, scope: !1752, inlinedAt: !1390)
!1754 = !DILocation(line: 540, column: 37, scope: !1748, inlinedAt: !1390)
!1755 = distinct !{!1755, !1749, !1756, !1200}
!1756 = !DILocation(line: 541, column: 9, scope: !1386, inlinedAt: !1390)
!1757 = !DILocation(line: 546, column: 19, scope: !1374, inlinedAt: !1390)
!1758 = !DILocation(line: 546, column: 43, scope: !1374, inlinedAt: !1390)
!1759 = !DILocation(line: 546, column: 41, scope: !1374, inlinedAt: !1390)
!1760 = !DILocation(line: 547, column: 23, scope: !1374, inlinedAt: !1390)
!1761 = !DILocation(line: 547, column: 11, scope: !1374, inlinedAt: !1390)
!1762 = !DILocation(line: 547, column: 28, scope: !1374, inlinedAt: !1390)
!1763 = !DILocation(line: 0, scope: !1544, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 546, column: 3, scope: !1374, inlinedAt: !1390)
!1765 = !DILocation(line: 29, column: 10, scope: !1544, inlinedAt: !1764)
!1766 = !DILocation(line: 550, column: 24, scope: !1374, inlinedAt: !1390)
!1767 = !DILocation(line: 552, column: 16, scope: !1374, inlinedAt: !1390)
!1768 = !DILocation(line: 820, column: 11, scope: !1331)
!1769 = !DILocation(line: 826, column: 11, scope: !1331)
!1770 = !DILocation(line: 827, column: 11, scope: !1331)
!1771 = !DILocation(line: 828, column: 11, scope: !1331)
!1772 = !DILocation(line: 830, column: 9, scope: !1331)
!1773 = !DILocation(line: 831, column: 9, scope: !1331)
!1774 = !DILocation(line: 833, column: 11, scope: !1331)
!1775 = !DILocation(line: 837, column: 7, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !223, file: !2, line: 837, column: 7)
!1777 = !DILocation(line: 837, column: 14, scope: !1776)
!1778 = !DILocation(line: 837, column: 21, scope: !1776)
!1779 = !DILocation(line: 837, column: 31, scope: !1776)
!1780 = !DILocation(line: 0, scope: !1165, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 837, column: 24, scope: !1776)
!1782 = !DILocation(line: 1361, column: 11, scope: !1165, inlinedAt: !1781)
!1783 = !DILocation(line: 1361, column: 10, scope: !1165, inlinedAt: !1781)
!1784 = !DILocation(line: 837, column: 7, scope: !223)
!1785 = !DILocation(line: 840, column: 7, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1776, file: !2, line: 838, column: 5)
!1787 = !DILocation(line: 843, column: 7, scope: !223)
!1788 = !DILocation(line: 845, column: 7, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !2, line: 845, column: 7)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !2, line: 845, column: 7)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !2, line: 844, column: 5)
!1792 = distinct !DILexicalBlock(scope: !223, file: !2, line: 843, column: 7)
!1793 = !DILocation(line: 845, column: 7, scope: !1790)
!1794 = !DILocation(line: 847, column: 15, scope: !1791)
!1795 = !DILocation(line: 848, column: 5, scope: !1791)
!1796 = !DILocalVariable(name: "i", scope: !1797, file: !2, line: 196, type: !528)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !2, line: 196, column: 3)
!1798 = distinct !DISubprogram(name: "unset_envvars", scope: !2, file: !2, line: 194, type: !718, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1799)
!1799 = !{!1796}
!1800 = !DILocation(line: 0, scope: !1797, inlinedAt: !1801)
!1801 = distinct !DILocation(line: 850, column: 5, scope: !1792)
!1802 = !DILocation(line: 196, column: 25, scope: !1803, inlinedAt: !1801)
!1803 = distinct !DILexicalBlock(scope: !1797, file: !2, line: 196, column: 3)
!1804 = !DILocation(line: 196, column: 23, scope: !1803, inlinedAt: !1801)
!1805 = !DILocation(line: 196, column: 3, scope: !1797, inlinedAt: !1801)
!1806 = !DILocation(line: 198, column: 7, scope: !1807, inlinedAt: !1801)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !2, line: 198, column: 7)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !2, line: 198, column: 7)
!1809 = distinct !DILexicalBlock(scope: !1803, file: !2, line: 197, column: 5)
!1810 = !DILocation(line: 198, column: 7, scope: !1808, inlinedAt: !1801)
!1811 = !DILocation(line: 200, column: 21, scope: !1812, inlinedAt: !1801)
!1812 = distinct !DILexicalBlock(scope: !1809, file: !2, line: 200, column: 11)
!1813 = !DILocation(line: 200, column: 11, scope: !1812, inlinedAt: !1801)
!1814 = !DILocation(line: 200, column: 11, scope: !1809, inlinedAt: !1801)
!1815 = !DILocation(line: 201, column: 9, scope: !1812, inlinedAt: !1801)
!1816 = !DILocation(line: 196, column: 38, scope: !1803, inlinedAt: !1801)
!1817 = distinct !{!1817, !1805, !1818, !1200}
!1818 = !DILocation(line: 203, column: 5, scope: !1797, inlinedAt: !1801)
!1819 = !DILocation(line: 853, column: 10, scope: !223)
!1820 = !DILocation(line: 853, column: 17, scope: !223)
!1821 = !DILocation(line: 853, column: 24, scope: !223)
!1822 = !DILocation(line: 853, column: 41, scope: !223)
!1823 = !DILocation(line: 853, column: 33, scope: !223)
!1824 = !DILocation(line: 853, column: 3, scope: !223)
!1825 = !DILocation(line: 855, column: 7, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !2, line: 855, column: 7)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !2, line: 855, column: 7)
!1828 = distinct !DILexicalBlock(scope: !223, file: !2, line: 854, column: 5)
!1829 = !DILocation(line: 855, column: 7, scope: !1827)
!1830 = !DILocation(line: 857, column: 24, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1828, file: !2, line: 857, column: 11)
!1832 = !DILocation(line: 857, column: 19, scope: !1831)
!1833 = !DILocation(line: 857, column: 11, scope: !1831)
!1834 = !DILocation(line: 857, column: 11, scope: !1828)
!1835 = !DILocation(line: 859, column: 15, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1831, file: !2, line: 858, column: 9)
!1837 = !DILocation(line: 860, column: 11, scope: !1836)
!1838 = !DILocation(line: 863, column: 13, scope: !1828)
!1839 = distinct !{!1839, !1824, !1840, !1200}
!1840 = !DILocation(line: 864, column: 5, scope: !223)
!1841 = !DILocation(line: 868, column: 32, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !223, file: !2, line: 868, column: 7)
!1843 = !DILocation(line: 870, column: 7, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1842, file: !2, line: 869, column: 5)
!1845 = !DILocation(line: 871, column: 7, scope: !1844)
!1846 = !DILocation(line: 874, column: 7, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !223, file: !2, line: 874, column: 7)
!1848 = !DILocation(line: 874, column: 14, scope: !1847)
!1849 = !DILocation(line: 876, column: 7, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1847, file: !2, line: 875, column: 5)
!1851 = !DILocation(line: 877, column: 7, scope: !1850)
!1852 = !DILocation(line: 880, column: 7, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !223, file: !2, line: 880, column: 7)
!1854 = !DILocation(line: 880, column: 13, scope: !1853)
!1855 = !DILocation(line: 882, column: 7, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1853, file: !2, line: 881, column: 5)
!1857 = !DILocation(line: 883, column: 7, scope: !1856)
!1858 = !DILocation(line: 889, column: 24, scope: !239)
!1859 = !DILocation(line: 0, scope: !239)
!1860 = !DILocation(line: 890, column: 14, scope: !239)
!1861 = !DILocation(line: 890, column: 7, scope: !239)
!1862 = !DILocation(line: 891, column: 9, scope: !239)
!1863 = distinct !{!1863, !1861, !1862, !1200}
!1864 = !DILocalVariable(name: "i", scope: !1865, file: !2, line: 591, type: !122)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !2, line: 591, column: 3)
!1866 = distinct !DISubprogram(name: "reset_signal_handlers", scope: !2, file: !2, line: 589, type: !718, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1867)
!1867 = !{!1864, !1868, !1959, !1960, !1961, !1962}
!1868 = !DILocalVariable(name: "act", scope: !1869, file: !2, line: 593, type: !1871)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !2, line: 592, column: 5)
!1870 = distinct !DILexicalBlock(scope: !1865, file: !2, line: 591, column: 3)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1872, line: 27, size: 1216, elements: !1873)
!1872 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/sigaction.h", directory: "", checksumkind: CSK_MD5, checksum: "95401d18e887df415f59d7a2cb411c28")
!1873 = !{!1874, !1956, !1957, !1958}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !1871, file: !1872, line: 38, baseType: !1875, size: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1871, file: !1872, line: 31, size: 64, elements: !1876)
!1876 = !{!1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1875, file: !1872, line: 34, baseType: !175, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !1875, file: !1872, line: 36, baseType: !1879, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{null, !122, !1882, !164}
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !1884, line: 124, baseType: !1885)
!1884 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/siginfo_t.h", directory: "", checksumkind: CSK_MD5, checksum: "023cf7b0ef843da262cf07900eda0ac5")
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1884, line: 36, size: 1024, elements: !1886)
!1886 = !{!1887, !1888, !1889, !1890, !1891}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1885, file: !1884, line: 38, baseType: !122, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1885, file: !1884, line: 40, baseType: !122, size: 32, offset: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1885, file: !1884, line: 42, baseType: !122, size: 32, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1885, file: !1884, line: 48, baseType: !122, size: 32, offset: 96)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1885, file: !1884, line: 123, baseType: !1892, size: 896, offset: 128)
!1892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1885, file: !1884, line: 51, size: 896, elements: !1893)
!1893 = !{!1894, !1896, !1903, !1915, !1921, !1930, !1945, !1950}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !1892, file: !1884, line: 53, baseType: !1895, size: 896)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 896, elements: !905)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1892, file: !1884, line: 60, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !1884, line: 56, size: 64, elements: !1898)
!1898 = !{!1899, !1901}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1897, file: !1884, line: 58, baseType: !1900, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !353, line: 154, baseType: !122)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1897, file: !1884, line: 59, baseType: !1902, size: 32, offset: 32)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !353, line: 146, baseType: !109)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1892, file: !1884, line: 68, baseType: !1904, size: 128)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !1884, line: 63, size: 128, elements: !1905)
!1905 = !{!1906, !1907, !1908}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !1904, file: !1884, line: 65, baseType: !122, size: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !1904, file: !1884, line: 66, baseType: !122, size: 32, offset: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1904, file: !1884, line: 67, baseType: !1909, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigval_t", file: !1910, line: 30, baseType: !1911)
!1910 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__sigval_t.h", directory: "", checksumkind: CSK_MD5, checksum: "bc7605d16e396c16f725f8da13f6eb20")
!1911 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1910, line: 24, size: 64, elements: !1912)
!1912 = !{!1913, !1914}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1911, file: !1910, line: 26, baseType: !122, size: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1911, file: !1910, line: 27, baseType: !164, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1892, file: !1884, line: 76, baseType: !1916, size: 128)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !1884, line: 71, size: 128, elements: !1917)
!1917 = !{!1918, !1919, !1920}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1916, file: !1884, line: 73, baseType: !1900, size: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1916, file: !1884, line: 74, baseType: !1902, size: 32, offset: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1916, file: !1884, line: 75, baseType: !1909, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1892, file: !1884, line: 86, baseType: !1922, size: 256)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !1884, line: 79, size: 256, elements: !1923)
!1923 = !{!1924, !1925, !1926, !1927, !1929}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1922, file: !1884, line: 81, baseType: !1900, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1922, file: !1884, line: 82, baseType: !1902, size: 32, offset: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !1922, file: !1884, line: 83, baseType: !122, size: 32, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !1922, file: !1884, line: 84, baseType: !1928, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !353, line: 156, baseType: !174)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !1922, file: !1884, line: 85, baseType: !1928, size: 64, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1892, file: !1884, line: 105, baseType: !1931, size: 256)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !1884, line: 89, size: 256, elements: !1932)
!1932 = !{!1933, !1934, !1936}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !1931, file: !1884, line: 91, baseType: !164, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !1931, file: !1884, line: 93, baseType: !1935, size: 16, offset: 64)
!1935 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_bounds", scope: !1931, file: !1884, line: 104, baseType: !1937, size: 128, offset: 128)
!1937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1931, file: !1884, line: 94, size: 128, elements: !1938)
!1938 = !{!1939, !1944}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1937, file: !1884, line: 101, baseType: !1940, size: 128)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1937, file: !1884, line: 97, size: 128, elements: !1941)
!1941 = !{!1942, !1943}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1940, file: !1884, line: 99, baseType: !164, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1940, file: !1884, line: 100, baseType: !164, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1937, file: !1884, line: 103, baseType: !746, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1892, file: !1884, line: 112, baseType: !1946, size: 128)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !1884, line: 108, size: 128, elements: !1947)
!1947 = !{!1948, !1949}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !1946, file: !1884, line: 110, baseType: !174, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !1946, file: !1884, line: 111, baseType: !122, size: 32, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1892, file: !1884, line: 121, baseType: !1951, size: 128)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !1884, line: 116, size: 128, elements: !1952)
!1952 = !{!1953, !1954, !1955}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1951, file: !1884, line: 118, baseType: !164, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1951, file: !1884, line: 119, baseType: !122, size: 32, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1951, file: !1884, line: 120, baseType: !109, size: 32, offset: 96)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1871, file: !1872, line: 46, baseType: !549, size: 1024, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1871, file: !1872, line: 49, baseType: !122, size: 32, offset: 1088)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1871, file: !1872, line: 52, baseType: !717, size: 64, offset: 1152)
!1959 = !DILocalVariable(name: "ignore_errors", scope: !1869, file: !2, line: 598, type: !231)
!1960 = !DILocalVariable(name: "set_to_default", scope: !1869, file: !2, line: 601, type: !231)
!1961 = !DILocalVariable(name: "sig_err", scope: !1869, file: !2, line: 604, type: !122)
!1962 = !DILocalVariable(name: "signame", scope: !1963, file: !2, line: 621, type: !486)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !2, line: 620, column: 9)
!1964 = distinct !DILexicalBlock(scope: !1869, file: !2, line: 619, column: 11)
!1965 = !DILocation(line: 0, scope: !1865, inlinedAt: !1966)
!1966 = distinct !DILocation(line: 895, column: 3, scope: !223)
!1967 = !DILocation(line: 591, column: 3, scope: !1865, inlinedAt: !1966)
!1968 = !DILocation(line: 593, column: 7, scope: !1869, inlinedAt: !1966)
!1969 = !DILocation(line: 593, column: 24, scope: !1869, inlinedAt: !1966)
!1970 = !DILocation(line: 595, column: 11, scope: !1971, inlinedAt: !1966)
!1971 = distinct !DILexicalBlock(scope: !1869, file: !2, line: 595, column: 11)
!1972 = !DILocation(line: 595, column: 11, scope: !1869, inlinedAt: !1966)
!1973 = !DILocation(line: 599, column: 29, scope: !1869, inlinedAt: !1966)
!1974 = !DILocation(line: 0, scope: !1869, inlinedAt: !1966)
!1975 = !DILocation(line: 602, column: 30, scope: !1869, inlinedAt: !1966)
!1976 = !DILocation(line: 604, column: 21, scope: !1869, inlinedAt: !1966)
!1977 = !DILocation(line: 606, column: 11, scope: !1978, inlinedAt: !1966)
!1978 = distinct !DILexicalBlock(scope: !1869, file: !2, line: 606, column: 11)
!1979 = !DILocation(line: 606, column: 19, scope: !1978, inlinedAt: !1966)
!1980 = !DILocation(line: 607, column: 9, scope: !1978, inlinedAt: !1966)
!1981 = !DILocation(line: 610, column: 11, scope: !1869, inlinedAt: !1966)
!1982 = !DILocation(line: 612, column: 28, scope: !1983, inlinedAt: !1966)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !2, line: 611, column: 9)
!1984 = distinct !DILexicalBlock(scope: !1869, file: !2, line: 610, column: 11)
!1985 = !DILocation(line: 612, column: 26, scope: !1983, inlinedAt: !1966)
!1986 = !DILocation(line: 613, column: 21, scope: !1983, inlinedAt: !1966)
!1987 = !DILocation(line: 614, column: 15, scope: !1988, inlinedAt: !1966)
!1988 = distinct !DILexicalBlock(scope: !1983, file: !2, line: 614, column: 15)
!1989 = !DILocation(line: 614, column: 23, scope: !1988, inlinedAt: !1966)
!1990 = !DILocation(line: 615, column: 13, scope: !1988, inlinedAt: !1966)
!1991 = !DILocation(line: 619, column: 11, scope: !1964, inlinedAt: !1966)
!1992 = !DILocation(line: 619, column: 11, scope: !1869, inlinedAt: !1966)
!1993 = !DILocation(line: 621, column: 11, scope: !1963, inlinedAt: !1966)
!1994 = !DILocation(line: 621, column: 16, scope: !1963, inlinedAt: !1966)
!1995 = !DILocation(line: 622, column: 15, scope: !1996, inlinedAt: !1966)
!1996 = distinct !DILexicalBlock(scope: !1963, file: !2, line: 622, column: 15)
!1997 = !DILocation(line: 622, column: 36, scope: !1996, inlinedAt: !1966)
!1998 = !DILocation(line: 622, column: 15, scope: !1963, inlinedAt: !1966)
!1999 = !DILocation(line: 623, column: 13, scope: !1996, inlinedAt: !1966)
!2000 = !DILocation(line: 624, column: 11, scope: !2001, inlinedAt: !1966)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !2, line: 624, column: 11)
!2002 = distinct !DILexicalBlock(scope: !1963, file: !2, line: 624, column: 11)
!2003 = !DILocation(line: 624, column: 11, scope: !2002, inlinedAt: !1966)
!2004 = !DILocation(line: 628, column: 9, scope: !1964, inlinedAt: !1966)
!2005 = !DILocation(line: 628, column: 9, scope: !1963, inlinedAt: !1966)
!2006 = !DILocation(line: 629, column: 5, scope: !1870, inlinedAt: !1966)
!2007 = !DILocation(line: 591, column: 39, scope: !1870, inlinedAt: !1966)
!2008 = !DILocation(line: 591, column: 21, scope: !1870, inlinedAt: !1966)
!2009 = distinct !{!2009, !1967, !2010, !1200}
!2010 = !DILocation(line: 629, column: 5, scope: !1865, inlinedAt: !1966)
!2011 = !DILocation(line: 896, column: 7, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !223, file: !2, line: 896, column: 7)
!2013 = !DILocation(line: 896, column: 7, scope: !223)
!2014 = !DILocation(line: 686, column: 3, scope: !2015, inlinedAt: !2026)
!2015 = distinct !DISubprogram(name: "set_signal_proc_mask", scope: !2, file: !2, line: 683, type: !718, scopeLine: 684, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2016)
!2016 = !{!2017, !2018, !2020, !2023}
!2017 = !DILocalVariable(name: "set", scope: !2015, file: !2, line: 686, type: !547)
!2018 = !DILocalVariable(name: "i", scope: !2019, file: !2, line: 693, type: !122)
!2019 = distinct !DILexicalBlock(scope: !2015, file: !2, line: 693, column: 3)
!2020 = !DILocalVariable(name: "debug_act", scope: !2021, file: !2, line: 695, type: !169)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !2, line: 694, column: 5)
!2022 = distinct !DILexicalBlock(scope: !2019, file: !2, line: 693, column: 3)
!2023 = !DILocalVariable(name: "signame", scope: !2024, file: !2, line: 710, type: !486)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !2, line: 709, column: 9)
!2025 = distinct !DILexicalBlock(scope: !2021, file: !2, line: 708, column: 11)
!2026 = distinct !DILocation(line: 897, column: 5, scope: !2012)
!2027 = !DILocation(line: 686, column: 12, scope: !2015, inlinedAt: !2026)
!2028 = !DILocation(line: 688, column: 3, scope: !2015, inlinedAt: !2026)
!2029 = !DILocation(line: 690, column: 7, scope: !2030, inlinedAt: !2026)
!2030 = distinct !DILexicalBlock(scope: !2015, file: !2, line: 690, column: 7)
!2031 = !DILocation(line: 690, column: 7, scope: !2015, inlinedAt: !2026)
!2032 = !DILocation(line: 691, column: 5, scope: !2030, inlinedAt: !2026)
!2033 = !DILocation(line: 718, column: 7, scope: !2034, inlinedAt: !2026)
!2034 = distinct !DILexicalBlock(scope: !2015, file: !2, line: 718, column: 7)
!2035 = !DILocation(line: 718, column: 7, scope: !2015, inlinedAt: !2026)
!2036 = !DILocation(line: 0, scope: !2019, inlinedAt: !2026)
!2037 = !DILocation(line: 0, scope: !2021, inlinedAt: !2026)
!2038 = !DILocation(line: 697, column: 11, scope: !2039, inlinedAt: !2026)
!2039 = distinct !DILexicalBlock(scope: !2021, file: !2, line: 697, column: 11)
!2040 = !DILocation(line: 697, column: 11, scope: !2021, inlinedAt: !2026)
!2041 = !DILocation(line: 699, column: 11, scope: !2042, inlinedAt: !2026)
!2042 = distinct !DILexicalBlock(scope: !2039, file: !2, line: 698, column: 9)
!2043 = !DILocation(line: 701, column: 9, scope: !2042, inlinedAt: !2026)
!2044 = !DILocation(line: 702, column: 16, scope: !2045, inlinedAt: !2026)
!2045 = distinct !DILexicalBlock(scope: !2039, file: !2, line: 702, column: 16)
!2046 = !DILocation(line: 702, column: 16, scope: !2039, inlinedAt: !2026)
!2047 = !DILocation(line: 704, column: 11, scope: !2048, inlinedAt: !2026)
!2048 = distinct !DILexicalBlock(scope: !2045, file: !2, line: 703, column: 9)
!2049 = !DILocation(line: 706, column: 9, scope: !2048, inlinedAt: !2026)
!2050 = !DILocation(line: 708, column: 11, scope: !2025, inlinedAt: !2026)
!2051 = !DILocation(line: 708, column: 21, scope: !2025, inlinedAt: !2026)
!2052 = !DILocation(line: 710, column: 11, scope: !2024, inlinedAt: !2026)
!2053 = !DILocation(line: 710, column: 16, scope: !2024, inlinedAt: !2026)
!2054 = !DILocation(line: 711, column: 15, scope: !2055, inlinedAt: !2026)
!2055 = distinct !DILexicalBlock(scope: !2024, file: !2, line: 711, column: 15)
!2056 = !DILocation(line: 711, column: 36, scope: !2055, inlinedAt: !2026)
!2057 = !DILocation(line: 711, column: 15, scope: !2024, inlinedAt: !2026)
!2058 = !DILocation(line: 712, column: 13, scope: !2055, inlinedAt: !2026)
!2059 = !DILocation(line: 713, column: 11, scope: !2060, inlinedAt: !2026)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !2, line: 713, column: 11)
!2061 = distinct !DILexicalBlock(scope: !2024, file: !2, line: 713, column: 11)
!2062 = !DILocation(line: 713, column: 11, scope: !2061, inlinedAt: !2026)
!2063 = !DILocation(line: 715, column: 9, scope: !2025, inlinedAt: !2026)
!2064 = !DILocation(line: 715, column: 9, scope: !2024, inlinedAt: !2026)
!2065 = !DILocation(line: 693, column: 39, scope: !2022, inlinedAt: !2026)
!2066 = !DILocation(line: 693, column: 21, scope: !2022, inlinedAt: !2026)
!2067 = !DILocation(line: 693, column: 3, scope: !2019, inlinedAt: !2026)
!2068 = distinct !{!2068, !2067, !2069, !1200}
!2069 = !DILocation(line: 716, column: 5, scope: !2019, inlinedAt: !2026)
!2070 = !DILocation(line: 719, column: 5, scope: !2034, inlinedAt: !2026)
!2071 = !DILocation(line: 720, column: 1, scope: !2015, inlinedAt: !2026)
!2072 = !DILocation(line: 897, column: 5, scope: !2012)
!2073 = !DILocation(line: 899, column: 7, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !223, file: !2, line: 899, column: 7)
!2075 = !DILocation(line: 899, column: 7, scope: !223)
!2076 = !DILocation(line: 725, column: 3, scope: !2077, inlinedAt: !2089)
!2077 = distinct !DISubprogram(name: "list_signal_handling", scope: !2, file: !2, line: 723, type: !718, scopeLine: 724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2078)
!2078 = !{!2079, !2080, !2082, !2085, !2086, !2087, !2088}
!2079 = !DILocalVariable(name: "set", scope: !2077, file: !2, line: 725, type: !547)
!2080 = !DILocalVariable(name: "i", scope: !2081, file: !2, line: 731, type: !122)
!2081 = distinct !DILexicalBlock(scope: !2077, file: !2, line: 731, column: 3)
!2082 = !DILocalVariable(name: "act", scope: !2083, file: !2, line: 733, type: !1871)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !2, line: 732, column: 5)
!2084 = distinct !DILexicalBlock(scope: !2081, file: !2, line: 731, column: 3)
!2085 = !DILocalVariable(name: "ignored", scope: !2083, file: !2, line: 737, type: !169)
!2086 = !DILocalVariable(name: "blocked", scope: !2083, file: !2, line: 738, type: !169)
!2087 = !DILocalVariable(name: "connect", scope: !2083, file: !2, line: 739, type: !169)
!2088 = !DILocalVariable(name: "signame", scope: !2083, file: !2, line: 744, type: !486)
!2089 = distinct !DILocation(line: 900, column: 5, scope: !2074)
!2090 = !DILocation(line: 725, column: 12, scope: !2077, inlinedAt: !2089)
!2091 = !DILocation(line: 727, column: 3, scope: !2077, inlinedAt: !2089)
!2092 = !DILocation(line: 728, column: 7, scope: !2093, inlinedAt: !2089)
!2093 = distinct !DILexicalBlock(scope: !2077, file: !2, line: 728, column: 7)
!2094 = !DILocation(line: 728, column: 7, scope: !2077, inlinedAt: !2089)
!2095 = !DILocation(line: 729, column: 5, scope: !2093, inlinedAt: !2089)
!2096 = !DILocation(line: 0, scope: !2081, inlinedAt: !2089)
!2097 = !DILocation(line: 733, column: 7, scope: !2083, inlinedAt: !2089)
!2098 = !DILocation(line: 733, column: 24, scope: !2083, inlinedAt: !2089)
!2099 = !DILocation(line: 734, column: 11, scope: !2100, inlinedAt: !2089)
!2100 = distinct !DILexicalBlock(scope: !2083, file: !2, line: 734, column: 11)
!2101 = !DILocation(line: 734, column: 11, scope: !2083, inlinedAt: !2089)
!2102 = !DILocation(line: 737, column: 33, scope: !2083, inlinedAt: !2089)
!2103 = !DILocation(line: 737, column: 44, scope: !2083, inlinedAt: !2089)
!2104 = !DILocation(line: 737, column: 29, scope: !2083, inlinedAt: !2089)
!2105 = !DILocation(line: 0, scope: !2083, inlinedAt: !2089)
!2106 = !DILocation(line: 738, column: 29, scope: !2083, inlinedAt: !2089)
!2107 = !DILocation(line: 739, column: 29, scope: !2083, inlinedAt: !2089)
!2108 = !DILocation(line: 739, column: 38, scope: !2083, inlinedAt: !2089)
!2109 = !DILocation(line: 741, column: 22, scope: !2110, inlinedAt: !2089)
!2110 = distinct !DILexicalBlock(scope: !2083, file: !2, line: 741, column: 11)
!2111 = !DILocation(line: 744, column: 7, scope: !2083, inlinedAt: !2089)
!2112 = !DILocation(line: 744, column: 12, scope: !2083, inlinedAt: !2089)
!2113 = !DILocation(line: 745, column: 11, scope: !2114, inlinedAt: !2089)
!2114 = distinct !DILexicalBlock(scope: !2083, file: !2, line: 745, column: 11)
!2115 = !DILocation(line: 745, column: 32, scope: !2114, inlinedAt: !2089)
!2116 = !DILocation(line: 745, column: 11, scope: !2083, inlinedAt: !2089)
!2117 = !DILocation(line: 746, column: 9, scope: !2114, inlinedAt: !2089)
!2118 = !DILocation(line: 747, column: 7, scope: !2083, inlinedAt: !2089)
!2119 = !DILocation(line: 749, column: 5, scope: !2084, inlinedAt: !2089)
!2120 = !DILocation(line: 731, column: 39, scope: !2084, inlinedAt: !2089)
!2121 = !DILocation(line: 731, column: 21, scope: !2084, inlinedAt: !2089)
!2122 = !DILocation(line: 731, column: 3, scope: !2081, inlinedAt: !2089)
!2123 = distinct !{!2123, !2122, !2124, !1200}
!2124 = !DILocation(line: 749, column: 5, scope: !2081, inlinedAt: !2089)
!2125 = !DILocation(line: 750, column: 1, scope: !2077, inlinedAt: !2089)
!2126 = !DILocation(line: 900, column: 5, scope: !2074)
!2127 = !DILocation(line: 902, column: 7, scope: !223)
!2128 = !DILocation(line: 904, column: 7, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !2, line: 904, column: 7)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !2, line: 904, column: 7)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !2, line: 903, column: 5)
!2132 = distinct !DILexicalBlock(scope: !223, file: !2, line: 902, column: 7)
!2133 = !DILocation(line: 904, column: 7, scope: !2130)
!2134 = !DILocation(line: 906, column: 11, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2131, file: !2, line: 906, column: 11)
!2136 = !DILocation(line: 906, column: 26, scope: !2135)
!2137 = !DILocation(line: 906, column: 11, scope: !2131)
!2138 = !DILocation(line: 907, column: 9, scope: !2135)
!2139 = !DILocation(line: 911, column: 24, scope: !223)
!2140 = !DILocation(line: 911, column: 19, scope: !223)
!2141 = !DILocation(line: 912, column: 7, scope: !223)
!2142 = !DILocation(line: 914, column: 7, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !2, line: 914, column: 7)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !2, line: 914, column: 7)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !2, line: 913, column: 5)
!2146 = distinct !DILexicalBlock(scope: !223, file: !2, line: 912, column: 7)
!2147 = !DILocation(line: 914, column: 7, scope: !2144)
!2148 = !DILocation(line: 915, column: 12, scope: !2145)
!2149 = !DILocation(line: 915, column: 7, scope: !2145)
!2150 = !DILocation(line: 915, column: 20, scope: !2145)
!2151 = !DILocation(line: 916, column: 5, scope: !2145)
!2152 = !DILocation(line: 918, column: 7, scope: !247)
!2153 = !DILocation(line: 918, column: 7, scope: !223)
!2154 = !DILocation(line: 920, column: 7, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !2, line: 920, column: 7)
!2156 = distinct !DILexicalBlock(scope: !246, file: !2, line: 920, column: 7)
!2157 = !DILocation(line: 921, column: 18, scope: !245)
!2158 = !DILocation(line: 0, scope: !245)
!2159 = !DILocation(line: 921, column: 27, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !245, file: !2, line: 921, column: 7)
!2161 = !DILocation(line: 921, column: 7, scope: !245)
!2162 = !DILocation(line: 922, column: 9, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 922, column: 9)
!2164 = distinct !DILexicalBlock(scope: !2160, file: !2, line: 922, column: 9)
!2165 = !DILocation(line: 922, column: 9, scope: !2164)
!2166 = !DILocation(line: 921, column: 34, scope: !2160)
!2167 = distinct !{!2167, !2161, !2168, !1200}
!2168 = !DILocation(line: 922, column: 9, scope: !245)
!2169 = !DILocation(line: 925, column: 26, scope: !223)
!2170 = !DILocation(line: 925, column: 21, scope: !223)
!2171 = !DILocation(line: 925, column: 3, scope: !223)
!2172 = !DILocation(line: 927, column: 21, scope: !223)
!2173 = !DILocation(line: 927, column: 27, scope: !223)
!2174 = !DILocation(line: 928, column: 3, scope: !223)
!2175 = !DILocation(line: 930, column: 34, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !223, file: !2, line: 930, column: 7)
!2177 = !DILocation(line: 930, column: 37, scope: !2176)
!2178 = !DILocation(line: 930, column: 7, scope: !223)
!2179 = !DILocation(line: 931, column: 5, scope: !2176)
!2180 = !DILocation(line: 934, column: 1, scope: !223)
!2181 = !DISubprogram(name: "bindtextdomain", scope: !1136, file: !1136, line: 86, type: !2182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!163, !169, !169}
!2184 = !DISubprogram(name: "textdomain", scope: !1136, file: !1136, line: 82, type: !1276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2185 = !DISubprogram(name: "atexit", scope: !1274, file: !1274, line: 602, type: !2186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!122, !717}
!2188 = !DISubprogram(name: "getopt_long", scope: !519, file: !519, line: 66, type: !2189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!122, !122, !241, !169, !2191, !524}
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!2192 = distinct !DISubprogram(name: "parse_signal_action_params", scope: !2, file: !2, line: 556, type: !2193, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2195)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{null, !169, !231}
!2195 = !{!2196, !2197, !2198, !2202, !2203, !2204}
!2196 = !DILocalVariable(name: "arg", arg: 1, scope: !2192, file: !2, line: 556, type: !169)
!2197 = !DILocalVariable(name: "set_default", arg: 2, scope: !2192, file: !2, line: 556, type: !231)
!2198 = !DILocalVariable(name: "i", scope: !2199, file: !2, line: 563, type: !122)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !2, line: 563, column: 7)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !2, line: 559, column: 5)
!2201 = distinct !DILexicalBlock(scope: !2192, file: !2, line: 558, column: 7)
!2202 = !DILocalVariable(name: "optarg_writable", scope: !2192, file: !2, line: 568, type: !163)
!2203 = !DILocalVariable(name: "opt_sig", scope: !2192, file: !2, line: 570, type: !163)
!2204 = !DILocalVariable(name: "signum", scope: !2205, file: !2, line: 573, type: !122)
!2205 = distinct !DILexicalBlock(scope: !2192, file: !2, line: 572, column: 5)
!2206 = !DILocation(line: 0, scope: !2192)
!2207 = !DILocation(line: 558, column: 9, scope: !2201)
!2208 = !DILocation(line: 558, column: 7, scope: !2192)
!2209 = !DILocation(line: 0, scope: !2199)
!2210 = !DILocation(line: 564, column: 9, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2199, file: !2, line: 563, column: 7)
!2212 = !DILocation(line: 564, column: 20, scope: !2211)
!2213 = !DILocation(line: 586, column: 1, scope: !2192)
!2214 = !DILocation(line: 568, column: 27, scope: !2192)
!2215 = !DILocation(line: 570, column: 19, scope: !2192)
!2216 = !DILocation(line: 571, column: 3, scope: !2192)
!2217 = !DILocation(line: 573, column: 20, scope: !2205)
!2218 = !DILocation(line: 0, scope: !2205)
!2219 = !DILocation(line: 575, column: 18, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2205, file: !2, line: 575, column: 11)
!2221 = !DILocation(line: 575, column: 11, scope: !2205)
!2222 = !DILocation(line: 576, column: 9, scope: !2220)
!2223 = !DILocation(line: 577, column: 11, scope: !2205)
!2224 = !DILocation(line: 577, column: 18, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2205, file: !2, line: 577, column: 11)
!2226 = !DILocation(line: 578, column: 16, scope: !2225)
!2227 = !DILocation(line: 578, column: 9, scope: !2225)
!2228 = !DILocation(line: 580, column: 7, scope: !2205)
!2229 = !DILocation(line: 580, column: 23, scope: !2205)
!2230 = !DILocation(line: 582, column: 17, scope: !2205)
!2231 = distinct !{!2231, !2216, !2232, !1200}
!2232 = !DILocation(line: 583, column: 5, scope: !2192)
!2233 = !DILocation(line: 585, column: 3, scope: !2192)
!2234 = distinct !DISubprogram(name: "parse_block_signal_params", scope: !2, file: !2, line: 634, type: !2193, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2235)
!2235 = !{!2236, !2237, !2238, !2239, !2240}
!2236 = !DILocalVariable(name: "arg", arg: 1, scope: !2234, file: !2, line: 634, type: !169)
!2237 = !DILocalVariable(name: "block", arg: 2, scope: !2234, file: !2, line: 634, type: !231)
!2238 = !DILocalVariable(name: "optarg_writable", scope: !2234, file: !2, line: 654, type: !163)
!2239 = !DILocalVariable(name: "opt_sig", scope: !2234, file: !2, line: 656, type: !163)
!2240 = !DILocalVariable(name: "signum", scope: !2241, file: !2, line: 659, type: !122)
!2241 = distinct !DILexicalBlock(scope: !2234, file: !2, line: 658, column: 5)
!2242 = !DILocation(line: 0, scope: !2234)
!2243 = !DILocation(line: 636, column: 9, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2234, file: !2, line: 636, column: 7)
!2245 = !DILocation(line: 636, column: 7, scope: !2234)
!2246 = !DILocation(line: 642, column: 14, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2244, file: !2, line: 642, column: 12)
!2248 = !DILocation(line: 642, column: 12, scope: !2244)
!2249 = !DILocation(line: 645, column: 7, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2247, file: !2, line: 643, column: 5)
!2251 = !DILocation(line: 646, column: 7, scope: !2250)
!2252 = !DILocation(line: 647, column: 5, scope: !2250)
!2253 = !DILocation(line: 639, column: 19, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2244, file: !2, line: 637, column: 5)
!2255 = !DILocation(line: 639, column: 7, scope: !2254)
!2256 = !DILocation(line: 640, column: 20, scope: !2254)
!2257 = !DILocation(line: 640, column: 7, scope: !2254)
!2258 = !DILocation(line: 649, column: 20, scope: !2234)
!2259 = !DILocation(line: 651, column: 7, scope: !2234)
!2260 = !DILocation(line: 654, column: 27, scope: !2234)
!2261 = !DILocation(line: 656, column: 19, scope: !2234)
!2262 = !DILocation(line: 657, column: 3, scope: !2234)
!2263 = !DILocation(line: 659, column: 20, scope: !2241)
!2264 = !DILocation(line: 0, scope: !2241)
!2265 = !DILocation(line: 661, column: 18, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2241, file: !2, line: 661, column: 11)
!2267 = !DILocation(line: 661, column: 11, scope: !2241)
!2268 = !DILocation(line: 662, column: 9, scope: !2266)
!2269 = !DILocation(line: 663, column: 11, scope: !2241)
!2270 = !DILocation(line: 663, column: 18, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2241, file: !2, line: 663, column: 11)
!2272 = !DILocation(line: 664, column: 16, scope: !2271)
!2273 = !DILocation(line: 664, column: 9, scope: !2271)
!2274 = !DILocation(line: 666, column: 11, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2241, file: !2, line: 666, column: 11)
!2276 = !DILocation(line: 666, column: 73, scope: !2275)
!2277 = !DILocation(line: 666, column: 11, scope: !2241)
!2278 = !DILocation(line: 668, column: 15, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2275, file: !2, line: 667, column: 9)
!2280 = !DILocation(line: 669, column: 13, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2279, file: !2, line: 668, column: 15)
!2282 = !DILocation(line: 674, column: 9, scope: !2275)
!2283 = !DILocation(line: 676, column: 17, scope: !2241)
!2284 = distinct !{!2284, !2262, !2285, !1200}
!2285 = !DILocation(line: 677, column: 5, scope: !2234)
!2286 = !DILocation(line: 679, column: 3, scope: !2234)
!2287 = !DILocation(line: 680, column: 1, scope: !2234)
!2288 = distinct !DISubprogram(name: "check_start_new_arg", scope: !2, file: !2, line: 313, type: !1592, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2289)
!2289 = !{!2290, !2291}
!2290 = !DILocalVariable(name: "ss", arg: 1, scope: !2288, file: !2, line: 313, type: !1575)
!2291 = !DILocalVariable(name: "argc", scope: !2292, file: !2, line: 318, type: !122)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !2, line: 316, column: 5)
!2293 = distinct !DILexicalBlock(scope: !2288, file: !2, line: 315, column: 7)
!2294 = !DILocation(line: 0, scope: !2288)
!2295 = !DILocation(line: 315, column: 11, scope: !2293)
!2296 = !DILocation(line: 315, column: 7, scope: !2288)
!2297 = !DILocation(line: 0, scope: !1572, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 317, column: 7, scope: !2292)
!2299 = !DILocation(line: 303, column: 39, scope: !1572, inlinedAt: !2298)
!2300 = !DILocation(line: 303, column: 48, scope: !1572, inlinedAt: !2298)
!2301 = !DILocation(line: 303, column: 35, scope: !1572, inlinedAt: !2298)
!2302 = !DILocation(line: 303, column: 24, scope: !1572, inlinedAt: !2298)
!2303 = !DILocation(line: 304, column: 11, scope: !1586, inlinedAt: !2298)
!2304 = !DILocation(line: 304, column: 22, scope: !1586, inlinedAt: !2298)
!2305 = !DILocation(line: 304, column: 41, scope: !1586, inlinedAt: !2298)
!2306 = !DILocation(line: 304, column: 7, scope: !1572, inlinedAt: !2298)
!2307 = !DILocation(line: 0, scope: !1591, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 305, column: 5, scope: !1586, inlinedAt: !2298)
!2309 = !DILocation(line: 294, column: 14, scope: !1591, inlinedAt: !2308)
!2310 = !DILocation(line: 294, column: 12, scope: !1591, inlinedAt: !2308)
!2311 = !DILocation(line: 296, column: 27, scope: !1591, inlinedAt: !2308)
!2312 = !DILocation(line: 296, column: 21, scope: !1591, inlinedAt: !2308)
!2313 = !DILocation(line: 296, column: 48, scope: !1591, inlinedAt: !2308)
!2314 = !DILocation(line: 0, scope: !1605, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 296, column: 3, scope: !1591, inlinedAt: !2308)
!2316 = !DILocation(line: 36, column: 10, scope: !1605, inlinedAt: !2315)
!2317 = !DILocation(line: 306, column: 18, scope: !1572, inlinedAt: !2298)
!2318 = !DILocation(line: 306, column: 29, scope: !1572, inlinedAt: !2298)
!2319 = !DILocation(line: 305, column: 5, scope: !1586, inlinedAt: !2298)
!2320 = !DILocation(line: 306, column: 23, scope: !1572, inlinedAt: !2298)
!2321 = !DILocation(line: 306, column: 3, scope: !1572, inlinedAt: !2298)
!2322 = !DILocation(line: 306, column: 56, scope: !1572, inlinedAt: !2298)
!2323 = !DILocation(line: 307, column: 58, scope: !1572, inlinedAt: !2298)
!2324 = !DILocation(line: 307, column: 24, scope: !1572, inlinedAt: !2298)
!2325 = !DILocation(line: 307, column: 7, scope: !1572, inlinedAt: !2298)
!2326 = !DILocation(line: 307, column: 16, scope: !1572, inlinedAt: !2298)
!2327 = !DILocation(line: 307, column: 3, scope: !1572, inlinedAt: !2298)
!2328 = !DILocation(line: 307, column: 22, scope: !1572, inlinedAt: !2298)
!2329 = !DILocation(line: 0, scope: !2292)
!2330 = !DILocation(line: 319, column: 15, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2292, file: !2, line: 319, column: 11)
!2332 = !DILocation(line: 319, column: 40, scope: !2331)
!2333 = !DILocation(line: 319, column: 34, scope: !2331)
!2334 = !DILocation(line: 319, column: 51, scope: !2331)
!2335 = !DILocation(line: 319, column: 29, scope: !2331)
!2336 = !DILocation(line: 319, column: 26, scope: !2331)
!2337 = !DILocation(line: 319, column: 11, scope: !2292)
!2338 = !DILocation(line: 0, scope: !1591, inlinedAt: !2339)
!2339 = distinct !DILocation(line: 320, column: 9, scope: !2331)
!2340 = !DILocation(line: 293, column: 39, scope: !1591, inlinedAt: !2339)
!2341 = !DILocation(line: 293, column: 35, scope: !1591, inlinedAt: !2339)
!2342 = !DILocation(line: 293, column: 24, scope: !1591, inlinedAt: !2339)
!2343 = !DILocation(line: 294, column: 14, scope: !1591, inlinedAt: !2339)
!2344 = !DILocation(line: 294, column: 12, scope: !1591, inlinedAt: !2339)
!2345 = !DILocation(line: 296, column: 27, scope: !1591, inlinedAt: !2339)
!2346 = !DILocation(line: 296, column: 21, scope: !1591, inlinedAt: !2339)
!2347 = !DILocation(line: 296, column: 48, scope: !1591, inlinedAt: !2339)
!2348 = !DILocation(line: 0, scope: !1605, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 296, column: 3, scope: !1591, inlinedAt: !2339)
!2350 = !DILocation(line: 36, column: 10, scope: !1605, inlinedAt: !2349)
!2351 = !DILocation(line: 320, column: 9, scope: !2331)
!2352 = !DILocation(line: 321, column: 32, scope: !2292)
!2353 = !DILocation(line: 321, column: 28, scope: !2292)
!2354 = !DILocation(line: 321, column: 7, scope: !2292)
!2355 = !DILocation(line: 321, column: 26, scope: !2292)
!2356 = !DILocation(line: 322, column: 16, scope: !2292)
!2357 = !DILocation(line: 323, column: 15, scope: !2292)
!2358 = !DILocation(line: 324, column: 5, scope: !2292)
!2359 = !DILocation(line: 325, column: 1, scope: !2288)
!2360 = !DISubprogram(name: "free", scope: !1274, file: !1274, line: 555, type: !2361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{null, !164}
!2363 = !DISubprogram(name: "unsetenv", scope: !1274, file: !1274, line: 664, type: !2364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!122, !169}
!2366 = !DISubprogram(name: "__errno_location", scope: !2367, file: !2367, line: 37, type: !2368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2367 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!524}
!2370 = !DISubprogram(name: "putenv", scope: !1274, file: !1274, line: 654, type: !2371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!122, !163}
!2373 = !DISubprogram(name: "sigaction", scope: !176, file: !176, line: 243, type: !2374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!122, !122, !2376, !2379}
!2376 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2377)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1871)
!2379 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2380)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!2381 = !DISubprogram(name: "__builtin___snprintf_chk", scope: !2, file: !2, line: 623, type: !2382, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!122, !163, !168, !122, !168, !169, null}
!2384 = !DISubprogram(name: "sigemptyset", scope: !176, file: !176, line: 199, type: !2385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!122, !2387}
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!2388 = !DISubprogram(name: "sigprocmask", scope: !176, file: !176, line: 232, type: !2389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!122, !122, !2391, !2394}
!2391 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2392)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!2394 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2387)
!2395 = !DISubprogram(name: "sigismember", scope: !176, file: !176, line: 211, type: !2396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!122, !2392, !122}
!2398 = !DISubprogram(name: "sigaddset", scope: !176, file: !176, line: 205, type: !2399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!122, !2387, !122}
!2401 = !DISubprogram(name: "sigdelset", scope: !176, file: !176, line: 208, type: !2399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2402 = !DISubprogram(name: "chdir", scope: !2403, file: !2403, line: 517, type: !2364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2403 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2404 = !DISubprogram(name: "execvp", scope: !2403, file: !2403, line: 599, type: !2405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!122, !169, !241}
!2407 = !DISubprogram(name: "strpbrk", scope: !1270, file: !1270, line: 323, type: !2182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2408 = !DISubprogram(name: "sigfillset", scope: !176, file: !176, line: 202, type: !2385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2409 = !DISubprogram(name: "strtok", scope: !1270, file: !1270, line: 356, type: !2410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!163, !2412, !1144}
!2412 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !163)
!2413 = distinct !DISubprogram(name: "operand2sig", scope: !641, file: !641, line: 36, type: !2364, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !2414)
!2414 = !{!2415, !2416, !2417, !2420, !2421, !2422, !2424}
!2415 = !DILocalVariable(name: "operand", arg: 1, scope: !2413, file: !641, line: 36, type: !169)
!2416 = !DILocalVariable(name: "signum", scope: !2413, file: !641, line: 38, type: !122)
!2417 = !DILocalVariable(name: "endp", scope: !2418, file: !641, line: 53, type: !163)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !641, line: 41, column: 5)
!2419 = distinct !DILexicalBlock(scope: !2413, file: !641, line: 40, column: 7)
!2420 = !DILocalVariable(name: "l", scope: !2418, file: !641, line: 54, type: !174)
!2421 = !DILocalVariable(name: "i", scope: !2418, file: !641, line: 55, type: !122)
!2422 = !DILocalVariable(name: "upcased", scope: !2423, file: !641, line: 70, type: !163)
!2423 = distinct !DILexicalBlock(scope: !2419, file: !641, line: 67, column: 5)
!2424 = !DILocalVariable(name: "p", scope: !2425, file: !641, line: 71, type: !163)
!2425 = distinct !DILexicalBlock(scope: !2423, file: !641, line: 71, column: 7)
!2426 = !DILocation(line: 0, scope: !2413)
!2427 = !DILocation(line: 38, column: 3, scope: !2413)
!2428 = !DILocation(line: 40, column: 18, scope: !2419)
!2429 = !DILocalVariable(name: "c", arg: 1, scope: !2430, file: !1509, line: 233, type: !122)
!2430 = distinct !DISubprogram(name: "c_isdigit", scope: !1509, file: !1509, line: 233, type: !1510, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !2431)
!2431 = !{!2429}
!2432 = !DILocation(line: 0, scope: !2430, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 40, column: 7, scope: !2419)
!2434 = !DILocation(line: 235, column: 3, scope: !2430, inlinedAt: !2433)
!2435 = !DILocation(line: 40, column: 7, scope: !2413)
!2436 = !DILocation(line: 53, column: 7, scope: !2418)
!2437 = !DILocation(line: 54, column: 21, scope: !2418)
!2438 = !DILocation(line: 54, column: 27, scope: !2418)
!2439 = !DILocation(line: 0, scope: !2418)
!2440 = !DILocation(line: 54, column: 32, scope: !2418)
!2441 = !DILocation(line: 55, column: 15, scope: !2418)
!2442 = !DILocation(line: 56, column: 28, scope: !2418)
!2443 = !DILocation(line: 56, column: 25, scope: !2418)
!2444 = !DILocation(line: 56, column: 33, scope: !2418)
!2445 = !DILocation(line: 56, column: 36, scope: !2418)
!2446 = !DILocation(line: 56, column: 42, scope: !2418)
!2447 = !DILocation(line: 56, column: 45, scope: !2418)
!2448 = !DILocation(line: 56, column: 51, scope: !2418)
!2449 = !DILocation(line: 58, column: 18, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2418, file: !641, line: 58, column: 11)
!2451 = !DILocation(line: 58, column: 11, scope: !2418)
!2452 = !DILocation(line: 65, column: 5, scope: !2419)
!2453 = !DILocation(line: 65, column: 5, scope: !2418)
!2454 = !DILocation(line: 70, column: 23, scope: !2423)
!2455 = !DILocation(line: 0, scope: !2423)
!2456 = !DILocation(line: 0, scope: !2425)
!2457 = !DILocation(line: 71, column: 31, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2425, file: !641, line: 71, column: 7)
!2459 = !DILocation(line: 71, column: 7, scope: !2425)
!2460 = !DILocation(line: 77, column: 13, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2423, file: !641, line: 77, column: 11)
!2462 = !DILocation(line: 77, column: 40, scope: !2461)
!2463 = !DILocation(line: 78, column: 13, scope: !2461)
!2464 = !DILocation(line: 72, column: 51, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2458, file: !641, line: 72, column: 13)
!2466 = !DILocation(line: 72, column: 13, scope: !2465)
!2467 = !DILocation(line: 72, column: 13, scope: !2458)
!2468 = !DILocation(line: 73, column: 14, scope: !2465)
!2469 = !DILocation(line: 73, column: 11, scope: !2465)
!2470 = !DILocation(line: 71, column: 36, scope: !2458)
!2471 = distinct !{!2471, !2459, !2472, !1200}
!2472 = !DILocation(line: 73, column: 23, scope: !2425)
!2473 = !DILocation(line: 78, column: 17, scope: !2461)
!2474 = !DILocation(line: 78, column: 28, scope: !2461)
!2475 = !DILocation(line: 78, column: 35, scope: !2461)
!2476 = !DILocation(line: 78, column: 38, scope: !2461)
!2477 = !DILocation(line: 78, column: 49, scope: !2461)
!2478 = !DILocation(line: 78, column: 56, scope: !2461)
!2479 = !DILocation(line: 78, column: 59, scope: !2461)
!2480 = !DILocation(line: 78, column: 70, scope: !2461)
!2481 = !DILocation(line: 79, column: 17, scope: !2461)
!2482 = !DILocation(line: 79, column: 37, scope: !2461)
!2483 = !DILocation(line: 79, column: 20, scope: !2461)
!2484 = !DILocation(line: 79, column: 51, scope: !2461)
!2485 = !DILocation(line: 77, column: 11, scope: !2423)
!2486 = !DILocation(line: 80, column: 16, scope: !2461)
!2487 = !DILocation(line: 80, column: 9, scope: !2461)
!2488 = !DILocation(line: 82, column: 7, scope: !2423)
!2489 = !DILocation(line: 85, column: 11, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2413, file: !641, line: 85, column: 7)
!2491 = !DILocation(line: 85, column: 18, scope: !2490)
!2492 = !DILocation(line: 87, column: 7, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2490, file: !641, line: 86, column: 5)
!2494 = !DILocation(line: 88, column: 7, scope: !2493)
!2495 = !DILocation(line: 92, column: 1, scope: !2413)
!2496 = !DISubprogram(name: "strtol", scope: !1274, file: !1274, line: 177, type: !2497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!174, !1144, !2499, !122}
!2499 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !226)
!2500 = distinct !DISubprogram(name: "c_isalnum", scope: !1509, file: !1509, line: 169, type: !1510, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !2501)
!2501 = !{!2502}
!2502 = !DILocalVariable(name: "c", arg: 1, scope: !2500, file: !1509, line: 169, type: !122)
!2503 = !DILocation(line: 0, scope: !2500)
!2504 = !DILocation(line: 171, column: 3, scope: !2500)
!2505 = !DILocation(line: 178, column: 7, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2500, file: !1509, line: 172, column: 5)
!2507 = !DILocation(line: 0, scope: !2506)
!2508 = !DILocation(line: 180, column: 1, scope: !2500)
!2509 = distinct !DISubprogram(name: "c_isalpha", scope: !1509, file: !1509, line: 183, type: !1510, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !2510)
!2510 = !{!2511}
!2511 = !DILocalVariable(name: "c", arg: 1, scope: !2509, file: !1509, line: 183, type: !122)
!2512 = !DILocation(line: 0, scope: !2509)
!2513 = !DILocation(line: 185, column: 3, scope: !2509)
!2514 = !DILocation(line: 193, column: 1, scope: !2509)
!2515 = distinct !DISubprogram(name: "c_isascii", scope: !1509, file: !1509, line: 198, type: !1510, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !2516)
!2516 = !{!2517}
!2517 = !DILocalVariable(name: "c", arg: 1, scope: !2515, file: !1509, line: 198, type: !122)
!2518 = !DILocation(line: 0, scope: !2515)
!2519 = !DILocation(line: 200, column: 3, scope: !2515)
!2520 = !DILocation(line: 212, column: 1, scope: !2515)
!2521 = distinct !DISubprogram(name: "c_isblank", scope: !1509, file: !1509, line: 215, type: !1510, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !2522)
!2522 = !{!2523}
!2523 = !DILocalVariable(name: "c", arg: 1, scope: !2521, file: !1509, line: 215, type: !122)
!2524 = !DILocation(line: 0, scope: !2521)
!2525 = !DILocation(line: 217, column: 12, scope: !2521)
!2526 = !DILocation(line: 217, column: 19, scope: !2521)
!2527 = !DILocation(line: 217, column: 3, scope: !2521)
!2528 = distinct !DISubprogram(name: "c_iscntrl", scope: !1509, file: !1509, line: 221, type: !1510, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !2529)
!2529 = !{!2530}
!2530 = !DILocalVariable(name: "c", arg: 1, scope: !2528, file: !1509, line: 221, type: !122)
!2531 = !DILocation(line: 0, scope: !2528)
!2532 = !DILocation(line: 223, column: 3, scope: !2528)
!2533 = !DILocation(line: 228, column: 7, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2528, file: !1509, line: 224, column: 5)
!2535 = !DILocation(line: 0, scope: !2534)
!2536 = !DILocation(line: 230, column: 1, scope: !2528)
!2537 = distinct !DISubprogram(name: "c_isdigit", scope: !1509, file: !1509, line: 233, type: !1510, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !2538)
!2538 = !{!2539}
!2539 = !DILocalVariable(name: "c", arg: 1, scope: !2537, file: !1509, line: 233, type: !122)
!2540 = !DILocation(line: 0, scope: !2537)
!2541 = !DILocation(line: 235, column: 3, scope: !2537)
!2542 = !DILocation(line: 242, column: 1, scope: !2537)
!2543 = distinct !DISubprogram(name: "c_isgraph", scope: !1509, file: !1509, line: 245, type: !1510, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !2544)
!2544 = !{!2545}
!2545 = !DILocalVariable(name: "c", arg: 1, scope: !2543, file: !1509, line: 245, type: !122)
!2546 = !DILocation(line: 0, scope: !2543)
!2547 = !DILocation(line: 247, column: 3, scope: !2543)
!2548 = !DILocation(line: 257, column: 1, scope: !2543)
!2549 = distinct !DISubprogram(name: "c_islower", scope: !1509, file: !1509, line: 260, type: !1510, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !2550)
!2550 = !{!2551}
!2551 = !DILocalVariable(name: "c", arg: 1, scope: !2549, file: !1509, line: 260, type: !122)
!2552 = !DILocation(line: 0, scope: !2549)
!2553 = !DILocation(line: 262, column: 3, scope: !2549)
!2554 = !DILocation(line: 269, column: 1, scope: !2549)
!2555 = distinct !DISubprogram(name: "c_isprint", scope: !1509, file: !1509, line: 272, type: !1510, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !2556)
!2556 = !{!2557}
!2557 = !DILocalVariable(name: "c", arg: 1, scope: !2555, file: !1509, line: 272, type: !122)
!2558 = !DILocation(line: 0, scope: !2555)
!2559 = !DILocation(line: 274, column: 3, scope: !2555)
!2560 = !DILocation(line: 285, column: 1, scope: !2555)
!2561 = distinct !DISubprogram(name: "c_ispunct", scope: !1509, file: !1509, line: 288, type: !1510, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !2562)
!2562 = !{!2563}
!2563 = !DILocalVariable(name: "c", arg: 1, scope: !2561, file: !1509, line: 288, type: !122)
!2564 = !DILocation(line: 0, scope: !2561)
!2565 = !DILocation(line: 290, column: 3, scope: !2561)
!2566 = !DILocation(line: 295, column: 7, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2561, file: !1509, line: 291, column: 5)
!2568 = !DILocation(line: 0, scope: !2567)
!2569 = !DILocation(line: 297, column: 1, scope: !2561)
!2570 = distinct !DISubprogram(name: "c_isspace", scope: !1509, file: !1509, line: 300, type: !1510, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !2571)
!2571 = !{!2572}
!2572 = !DILocalVariable(name: "c", arg: 1, scope: !2570, file: !1509, line: 300, type: !122)
!2573 = !DILocation(line: 0, scope: !2570)
!2574 = !DILocation(line: 302, column: 3, scope: !2570)
!2575 = !DILocation(line: 309, column: 1, scope: !2570)
!2576 = distinct !DISubprogram(name: "c_isupper", scope: !1509, file: !1509, line: 312, type: !1510, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !2577)
!2577 = !{!2578}
!2578 = !DILocalVariable(name: "c", arg: 1, scope: !2576, file: !1509, line: 312, type: !122)
!2579 = !DILocation(line: 0, scope: !2576)
!2580 = !DILocation(line: 314, column: 3, scope: !2576)
!2581 = !DILocation(line: 321, column: 1, scope: !2576)
!2582 = distinct !DISubprogram(name: "c_isxdigit", scope: !1509, file: !1509, line: 324, type: !1510, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !2583)
!2583 = !{!2584}
!2584 = !DILocalVariable(name: "c", arg: 1, scope: !2582, file: !1509, line: 324, type: !122)
!2585 = !DILocation(line: 0, scope: !2582)
!2586 = !DILocation(line: 326, column: 3, scope: !2582)
!2587 = !DILocation(line: 334, column: 1, scope: !2582)
!2588 = distinct !DISubprogram(name: "c_tolower", scope: !1509, file: !1509, line: 337, type: !2589, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !2591)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!122, !122}
!2591 = !{!2592}
!2592 = !DILocalVariable(name: "c", arg: 1, scope: !2588, file: !1509, line: 337, type: !122)
!2593 = !DILocation(line: 0, scope: !2588)
!2594 = !DILocation(line: 339, column: 3, scope: !2588)
!2595 = !DILocation(line: 346, column: 1, scope: !2588)
!2596 = distinct !DISubprogram(name: "c_toupper", scope: !1509, file: !1509, line: 349, type: !2589, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !2597)
!2597 = !{!2598}
!2598 = !DILocalVariable(name: "c", arg: 1, scope: !2596, file: !1509, line: 349, type: !122)
!2599 = !DILocation(line: 0, scope: !2596)
!2600 = !DILocation(line: 351, column: 3, scope: !2596)
!2601 = !DILocation(line: 358, column: 1, scope: !2596)
!2602 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !654, file: !654, line: 50, type: !1099, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !653, retainedNodes: !2603)
!2603 = !{!2604}
!2604 = !DILocalVariable(name: "file", arg: 1, scope: !2602, file: !654, line: 50, type: !169)
!2605 = !DILocation(line: 0, scope: !2602)
!2606 = !DILocation(line: 52, column: 13, scope: !2602)
!2607 = !DILocation(line: 53, column: 1, scope: !2602)
!2608 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !654, file: !654, line: 87, type: !2609, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !653, retainedNodes: !2611)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{null, !231}
!2611 = !{!2612}
!2612 = !DILocalVariable(name: "ignore", arg: 1, scope: !2608, file: !654, line: 87, type: !231)
!2613 = !DILocation(line: 0, scope: !2608)
!2614 = !DILocation(line: 89, column: 16, scope: !2608)
!2615 = !{!1427, !1427, i64 0}
!2616 = !DILocation(line: 90, column: 1, scope: !2608)
!2617 = distinct !DISubprogram(name: "close_stdout", scope: !654, file: !654, line: 116, type: !718, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !653, retainedNodes: !2618)
!2618 = !{!2619}
!2619 = !DILocalVariable(name: "write_error", scope: !2620, file: !654, line: 121, type: !169)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !654, line: 120, column: 5)
!2621 = distinct !DILexicalBlock(scope: !2617, file: !654, line: 118, column: 7)
!2622 = !DILocation(line: 118, column: 21, scope: !2621)
!2623 = !DILocation(line: 118, column: 7, scope: !2621)
!2624 = !DILocation(line: 118, column: 29, scope: !2621)
!2625 = !DILocation(line: 119, column: 7, scope: !2621)
!2626 = !DILocation(line: 119, column: 12, scope: !2621)
!2627 = !DILocation(line: 119, column: 25, scope: !2621)
!2628 = !DILocation(line: 119, column: 28, scope: !2621)
!2629 = !DILocation(line: 119, column: 34, scope: !2621)
!2630 = !DILocation(line: 118, column: 7, scope: !2617)
!2631 = !DILocation(line: 121, column: 33, scope: !2620)
!2632 = !DILocation(line: 0, scope: !2620)
!2633 = !DILocation(line: 122, column: 11, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2620, file: !654, line: 122, column: 11)
!2635 = !DILocation(line: 0, scope: !2634)
!2636 = !DILocation(line: 122, column: 11, scope: !2620)
!2637 = !DILocation(line: 123, column: 9, scope: !2634)
!2638 = !DILocation(line: 126, column: 9, scope: !2634)
!2639 = !DILocation(line: 128, column: 14, scope: !2620)
!2640 = !DILocation(line: 128, column: 7, scope: !2620)
!2641 = !DILocation(line: 133, column: 42, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2617, file: !654, line: 133, column: 7)
!2643 = !DILocation(line: 133, column: 28, scope: !2642)
!2644 = !DILocation(line: 133, column: 50, scope: !2642)
!2645 = !DILocation(line: 133, column: 7, scope: !2617)
!2646 = !DILocation(line: 134, column: 12, scope: !2642)
!2647 = !DILocation(line: 134, column: 5, scope: !2642)
!2648 = !DILocation(line: 135, column: 1, scope: !2617)
!2649 = !DISubprogram(name: "_exit", scope: !2403, file: !2403, line: 624, type: !178, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2650 = distinct !DISubprogram(name: "verror", scope: !669, file: !669, line: 251, type: !2651, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2653)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{null, !122, !122, !169, !679}
!2653 = !{!2654, !2655, !2656, !2657}
!2654 = !DILocalVariable(name: "status", arg: 1, scope: !2650, file: !669, line: 251, type: !122)
!2655 = !DILocalVariable(name: "errnum", arg: 2, scope: !2650, file: !669, line: 251, type: !122)
!2656 = !DILocalVariable(name: "message", arg: 3, scope: !2650, file: !669, line: 251, type: !169)
!2657 = !DILocalVariable(name: "args", arg: 4, scope: !2650, file: !669, line: 251, type: !679)
!2658 = !DILocation(line: 0, scope: !2650)
!2659 = !DILocation(line: 251, column: 1, scope: !2650)
!2660 = !DILocation(line: 261, column: 3, scope: !2650)
!2661 = !DILocation(line: 265, column: 7, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2650, file: !669, line: 265, column: 7)
!2663 = !DILocation(line: 265, column: 7, scope: !2650)
!2664 = !DILocation(line: 266, column: 5, scope: !2662)
!2665 = !DILocation(line: 272, column: 7, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2662, file: !669, line: 268, column: 5)
!2667 = !DILocation(line: 276, column: 3, scope: !2650)
!2668 = !{i64 0, i64 8, !1071, i64 8, i64 8, !1071, i64 16, i64 8, !1071, i64 24, i64 4, !1153, i64 28, i64 4, !1153}
!2669 = !DILocation(line: 282, column: 1, scope: !2650)
!2670 = distinct !DISubprogram(name: "flush_stdout", scope: !669, file: !669, line: 163, type: !718, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2671)
!2671 = !{!2672}
!2672 = !DILocalVariable(name: "stdout_fd", scope: !2670, file: !669, line: 166, type: !122)
!2673 = !DILocation(line: 0, scope: !2670)
!2674 = !DILocalVariable(name: "fd", arg: 1, scope: !2675, file: !669, line: 145, type: !122)
!2675 = distinct !DISubprogram(name: "is_open", scope: !669, file: !669, line: 145, type: !2589, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2676)
!2676 = !{!2674}
!2677 = !DILocation(line: 0, scope: !2675, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 182, column: 25, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2670, file: !669, line: 182, column: 7)
!2680 = !DILocation(line: 157, column: 15, scope: !2675, inlinedAt: !2678)
!2681 = !DILocation(line: 157, column: 12, scope: !2675, inlinedAt: !2678)
!2682 = !DILocation(line: 182, column: 7, scope: !2670)
!2683 = !DILocation(line: 184, column: 5, scope: !2679)
!2684 = !DILocation(line: 185, column: 1, scope: !2670)
!2685 = distinct !DISubprogram(name: "error_tail", scope: !669, file: !669, line: 219, type: !2651, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2686)
!2686 = !{!2687, !2688, !2689, !2690}
!2687 = !DILocalVariable(name: "status", arg: 1, scope: !2685, file: !669, line: 219, type: !122)
!2688 = !DILocalVariable(name: "errnum", arg: 2, scope: !2685, file: !669, line: 219, type: !122)
!2689 = !DILocalVariable(name: "message", arg: 3, scope: !2685, file: !669, line: 219, type: !169)
!2690 = !DILocalVariable(name: "args", arg: 4, scope: !2685, file: !669, line: 219, type: !679)
!2691 = !DILocation(line: 0, scope: !2685)
!2692 = !DILocation(line: 219, column: 1, scope: !2685)
!2693 = !DILocation(line: 229, column: 13, scope: !2685)
!2694 = !DILocation(line: 135, column: 10, scope: !2695, inlinedAt: !2737)
!2695 = distinct !DISubprogram(name: "vfprintf", scope: !1140, file: !1140, line: 132, type: !2696, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2733)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!122, !2698, !1144, !681}
!2698 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2699)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !2701)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !2702)
!2702 = !{!2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2701, file: !330, line: 51, baseType: !122, size: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2701, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2701, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2701, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2701, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2701, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2701, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2701, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2701, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2701, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2701, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2701, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2701, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2701, file: !330, line: 70, baseType: !2717, size: 64, offset: 832)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2701, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2701, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2701, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2701, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2701, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2701, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2701, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2701, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2701, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2701, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2701, file: !330, line: 93, baseType: !2717, size: 64, offset: 1344)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2701, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2701, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2701, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2701, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!2733 = !{!2734, !2735, !2736}
!2734 = !DILocalVariable(name: "__stream", arg: 1, scope: !2695, file: !1140, line: 132, type: !2698)
!2735 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2695, file: !1140, line: 133, type: !1144)
!2736 = !DILocalVariable(name: "__ap", arg: 3, scope: !2695, file: !1140, line: 133, type: !681)
!2737 = distinct !DILocation(line: 229, column: 3, scope: !2685)
!2738 = !{!2739, !2741}
!2739 = distinct !{!2739, !2740, !"vfprintf.inline: argument 0"}
!2740 = distinct !{!2740, !"vfprintf.inline"}
!2741 = distinct !{!2741, !2740, !"vfprintf.inline: argument 1"}
!2742 = !DILocation(line: 229, column: 3, scope: !2685)
!2743 = !DILocation(line: 0, scope: !2695, inlinedAt: !2737)
!2744 = !DILocation(line: 133, column: 49, scope: !2695, inlinedAt: !2737)
!2745 = !DILocation(line: 232, column: 3, scope: !2685)
!2746 = !DILocation(line: 233, column: 7, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2685, file: !669, line: 233, column: 7)
!2748 = !DILocation(line: 233, column: 7, scope: !2685)
!2749 = !DILocalVariable(name: "errnum", arg: 1, scope: !2750, file: !669, line: 188, type: !122)
!2750 = distinct !DISubprogram(name: "print_errno_message", scope: !669, file: !669, line: 188, type: !178, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2751)
!2751 = !{!2749, !2752, !2753}
!2752 = !DILocalVariable(name: "s", scope: !2750, file: !669, line: 190, type: !169)
!2753 = !DILocalVariable(name: "errbuf", scope: !2750, file: !669, line: 193, type: !2754)
!2754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2755)
!2755 = !{!2756}
!2756 = !DISubrange(count: 1024)
!2757 = !DILocation(line: 0, scope: !2750, inlinedAt: !2758)
!2758 = distinct !DILocation(line: 234, column: 5, scope: !2747)
!2759 = !DILocation(line: 193, column: 3, scope: !2750, inlinedAt: !2758)
!2760 = !DILocation(line: 193, column: 8, scope: !2750, inlinedAt: !2758)
!2761 = !DILocation(line: 195, column: 7, scope: !2750, inlinedAt: !2758)
!2762 = !DILocation(line: 207, column: 9, scope: !2763, inlinedAt: !2758)
!2763 = distinct !DILexicalBlock(scope: !2750, file: !669, line: 207, column: 7)
!2764 = !DILocation(line: 207, column: 7, scope: !2750, inlinedAt: !2758)
!2765 = !DILocation(line: 208, column: 9, scope: !2763, inlinedAt: !2758)
!2766 = !DILocation(line: 208, column: 5, scope: !2763, inlinedAt: !2758)
!2767 = !DILocation(line: 214, column: 3, scope: !2750, inlinedAt: !2758)
!2768 = !DILocation(line: 216, column: 1, scope: !2750, inlinedAt: !2758)
!2769 = !DILocation(line: 234, column: 5, scope: !2747)
!2770 = !DILocation(line: 238, column: 3, scope: !2685)
!2771 = !DILocalVariable(name: "__c", arg: 1, scope: !2772, file: !2773, line: 101, type: !122)
!2772 = distinct !DISubprogram(name: "putc_unlocked", scope: !2773, file: !2773, line: 101, type: !2774, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2776)
!2773 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!122, !122, !2699}
!2776 = !{!2771, !2777}
!2777 = !DILocalVariable(name: "__stream", arg: 2, scope: !2772, file: !2773, line: 101, type: !2699)
!2778 = !DILocation(line: 0, scope: !2772, inlinedAt: !2779)
!2779 = distinct !DILocation(line: 238, column: 3, scope: !2685)
!2780 = !DILocation(line: 103, column: 10, scope: !2772, inlinedAt: !2779)
!2781 = !{!2782, !1072, i64 40}
!2782 = !{!"_IO_FILE", !1154, i64 0, !1072, i64 8, !1072, i64 16, !1072, i64 24, !1072, i64 32, !1072, i64 40, !1072, i64 48, !1072, i64 56, !1072, i64 64, !1072, i64 72, !1072, i64 80, !1072, i64 88, !1072, i64 96, !1072, i64 104, !1154, i64 112, !1154, i64 116, !1343, i64 120, !1195, i64 128, !1073, i64 130, !1073, i64 131, !1072, i64 136, !1343, i64 144, !1072, i64 152, !1072, i64 160, !1072, i64 168, !1072, i64 176, !1343, i64 184, !1154, i64 192, !1073, i64 196}
!2783 = !{!2782, !1072, i64 48}
!2784 = !{!"branch_weights", i32 2000, i32 1}
!2785 = !DILocation(line: 240, column: 3, scope: !2685)
!2786 = !DILocation(line: 241, column: 7, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2685, file: !669, line: 241, column: 7)
!2788 = !DILocation(line: 241, column: 7, scope: !2685)
!2789 = !DILocation(line: 242, column: 5, scope: !2787)
!2790 = !DILocation(line: 243, column: 1, scope: !2685)
!2791 = !DISubprogram(name: "__vfprintf_chk", scope: !1140, file: !1140, line: 96, type: !2792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!122, !2698, !122, !1144, !681}
!2794 = !DISubprogram(name: "strerror_r", scope: !1270, file: !1270, line: 444, type: !2795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!163, !122, !163, !166}
!2797 = !DISubprogram(name: "__overflow", scope: !680, file: !680, line: 886, type: !2798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!122, !2699, !122}
!2800 = !DISubprogram(name: "fflush_unlocked", scope: !680, file: !680, line: 239, type: !2801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!122, !2699}
!2803 = !DISubprogram(name: "fcntl", scope: !2804, file: !2804, line: 149, type: !2805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2804 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!122, !122, !122, null}
!2807 = distinct !DISubprogram(name: "error", scope: !669, file: !669, line: 285, type: !2808, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2810)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{null, !122, !122, !169, null}
!2810 = !{!2811, !2812, !2813, !2814}
!2811 = !DILocalVariable(name: "status", arg: 1, scope: !2807, file: !669, line: 285, type: !122)
!2812 = !DILocalVariable(name: "errnum", arg: 2, scope: !2807, file: !669, line: 285, type: !122)
!2813 = !DILocalVariable(name: "message", arg: 3, scope: !2807, file: !669, line: 285, type: !169)
!2814 = !DILocalVariable(name: "ap", scope: !2807, file: !669, line: 287, type: !679)
!2815 = !DILocation(line: 0, scope: !2807)
!2816 = !DILocation(line: 287, column: 3, scope: !2807)
!2817 = !DILocation(line: 287, column: 11, scope: !2807)
!2818 = !DILocation(line: 288, column: 3, scope: !2807)
!2819 = !DILocation(line: 289, column: 3, scope: !2807)
!2820 = !DILocation(line: 290, column: 3, scope: !2807)
!2821 = !DILocation(line: 291, column: 1, scope: !2807)
!2822 = !DILocation(line: 0, scope: !676)
!2823 = !DILocation(line: 298, column: 1, scope: !676)
!2824 = !DILocation(line: 302, column: 7, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !676, file: !669, line: 302, column: 7)
!2826 = !DILocation(line: 302, column: 7, scope: !676)
!2827 = !DILocation(line: 307, column: 11, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !669, line: 307, column: 11)
!2829 = distinct !DILexicalBlock(scope: !2825, file: !669, line: 303, column: 5)
!2830 = !DILocation(line: 307, column: 27, scope: !2828)
!2831 = !DILocation(line: 308, column: 11, scope: !2828)
!2832 = !DILocation(line: 308, column: 28, scope: !2828)
!2833 = !DILocation(line: 308, column: 25, scope: !2828)
!2834 = !DILocation(line: 309, column: 15, scope: !2828)
!2835 = !DILocation(line: 309, column: 33, scope: !2828)
!2836 = !DILocation(line: 310, column: 19, scope: !2828)
!2837 = !DILocation(line: 311, column: 22, scope: !2828)
!2838 = !DILocation(line: 311, column: 56, scope: !2828)
!2839 = !DILocation(line: 307, column: 11, scope: !2829)
!2840 = !DILocation(line: 316, column: 21, scope: !2829)
!2841 = !DILocation(line: 317, column: 23, scope: !2829)
!2842 = !DILocation(line: 318, column: 5, scope: !2829)
!2843 = !DILocation(line: 327, column: 3, scope: !676)
!2844 = !DILocation(line: 331, column: 7, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !676, file: !669, line: 331, column: 7)
!2846 = !DILocation(line: 331, column: 7, scope: !676)
!2847 = !DILocation(line: 332, column: 5, scope: !2845)
!2848 = !DILocation(line: 338, column: 7, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2845, file: !669, line: 334, column: 5)
!2850 = !DILocation(line: 346, column: 3, scope: !676)
!2851 = !DILocation(line: 350, column: 3, scope: !676)
!2852 = !DILocation(line: 356, column: 1, scope: !676)
!2853 = distinct !DISubprogram(name: "error_at_line", scope: !669, file: !669, line: 359, type: !2854, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2856)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{null, !122, !122, !169, !109, !169, null}
!2856 = !{!2857, !2858, !2859, !2860, !2861, !2862}
!2857 = !DILocalVariable(name: "status", arg: 1, scope: !2853, file: !669, line: 359, type: !122)
!2858 = !DILocalVariable(name: "errnum", arg: 2, scope: !2853, file: !669, line: 359, type: !122)
!2859 = !DILocalVariable(name: "file_name", arg: 3, scope: !2853, file: !669, line: 359, type: !169)
!2860 = !DILocalVariable(name: "line_number", arg: 4, scope: !2853, file: !669, line: 360, type: !109)
!2861 = !DILocalVariable(name: "message", arg: 5, scope: !2853, file: !669, line: 360, type: !169)
!2862 = !DILocalVariable(name: "ap", scope: !2853, file: !669, line: 362, type: !679)
!2863 = !DILocation(line: 0, scope: !2853)
!2864 = !DILocation(line: 362, column: 3, scope: !2853)
!2865 = !DILocation(line: 362, column: 11, scope: !2853)
!2866 = !DILocation(line: 363, column: 3, scope: !2853)
!2867 = !DILocation(line: 364, column: 3, scope: !2853)
!2868 = !DILocation(line: 366, column: 3, scope: !2853)
!2869 = !DILocation(line: 367, column: 1, scope: !2853)
!2870 = distinct !DISubprogram(name: "getprogname", scope: !996, file: !996, line: 54, type: !2871, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !1080)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!169}
!2873 = !DILocation(line: 58, column: 10, scope: !2870)
!2874 = !DILocation(line: 58, column: 3, scope: !2870)
!2875 = distinct !DISubprogram(name: "set_program_name", scope: !723, file: !723, line: 37, type: !1099, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !2876)
!2876 = !{!2877, !2878, !2879}
!2877 = !DILocalVariable(name: "argv0", arg: 1, scope: !2875, file: !723, line: 37, type: !169)
!2878 = !DILocalVariable(name: "slash", scope: !2875, file: !723, line: 44, type: !169)
!2879 = !DILocalVariable(name: "base", scope: !2875, file: !723, line: 45, type: !169)
!2880 = !DILocation(line: 0, scope: !2875)
!2881 = !DILocation(line: 44, column: 23, scope: !2875)
!2882 = !DILocation(line: 45, column: 22, scope: !2875)
!2883 = !DILocation(line: 46, column: 17, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2875, file: !723, line: 46, column: 7)
!2885 = !DILocation(line: 46, column: 9, scope: !2884)
!2886 = !DILocation(line: 46, column: 25, scope: !2884)
!2887 = !DILocation(line: 46, column: 40, scope: !2884)
!2888 = !DILocalVariable(name: "__s1", arg: 1, scope: !2889, file: !1166, line: 974, type: !1298)
!2889 = distinct !DISubprogram(name: "memeq", scope: !1166, file: !1166, line: 974, type: !2890, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !2892)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!231, !1298, !1298, !166}
!2892 = !{!2888, !2893, !2894}
!2893 = !DILocalVariable(name: "__s2", arg: 2, scope: !2889, file: !1166, line: 974, type: !1298)
!2894 = !DILocalVariable(name: "__n", arg: 3, scope: !2889, file: !1166, line: 974, type: !166)
!2895 = !DILocation(line: 0, scope: !2889, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 46, column: 28, scope: !2884)
!2897 = !DILocation(line: 976, column: 11, scope: !2889, inlinedAt: !2896)
!2898 = !DILocation(line: 976, column: 10, scope: !2889, inlinedAt: !2896)
!2899 = !DILocation(line: 46, column: 7, scope: !2875)
!2900 = !DILocation(line: 49, column: 11, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !723, line: 49, column: 11)
!2902 = distinct !DILexicalBlock(scope: !2884, file: !723, line: 47, column: 5)
!2903 = !DILocation(line: 49, column: 36, scope: !2901)
!2904 = !DILocation(line: 49, column: 11, scope: !2902)
!2905 = !DILocation(line: 65, column: 16, scope: !2875)
!2906 = !DILocation(line: 71, column: 27, scope: !2875)
!2907 = !DILocation(line: 74, column: 33, scope: !2875)
!2908 = !DILocation(line: 76, column: 1, scope: !2875)
!2909 = !DISubprogram(name: "strrchr", scope: !1270, file: !1270, line: 273, type: !1285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2910 = !DILocation(line: 0, scope: !732)
!2911 = !DILocation(line: 40, column: 29, scope: !732)
!2912 = !DILocation(line: 41, column: 19, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !732, file: !733, line: 41, column: 7)
!2914 = !DILocation(line: 41, column: 7, scope: !732)
!2915 = !DILocation(line: 47, column: 3, scope: !732)
!2916 = !DILocation(line: 48, column: 3, scope: !732)
!2917 = !DILocation(line: 48, column: 13, scope: !732)
!2918 = !DILocalVariable(name: "ps", arg: 1, scope: !2919, file: !2920, line: 1135, type: !2923)
!2919 = distinct !DISubprogram(name: "mbszero", scope: !2920, file: !2920, line: 1135, type: !2921, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !2924)
!2920 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2921 = !DISubroutineType(types: !2922)
!2922 = !{null, !2923}
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!2924 = !{!2918}
!2925 = !DILocation(line: 0, scope: !2919, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 48, column: 18, scope: !732)
!2927 = !DILocalVariable(name: "__dest", arg: 1, scope: !2928, file: !1545, line: 57, type: !164)
!2928 = distinct !DISubprogram(name: "memset", scope: !1545, file: !1545, line: 57, type: !2929, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!164, !164, !122, !166}
!2931 = !{!2927, !2932, !2933}
!2932 = !DILocalVariable(name: "__ch", arg: 2, scope: !2928, file: !1545, line: 57, type: !122)
!2933 = !DILocalVariable(name: "__len", arg: 3, scope: !2928, file: !1545, line: 57, type: !166)
!2934 = !DILocation(line: 0, scope: !2928, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 1137, column: 3, scope: !2919, inlinedAt: !2926)
!2936 = !DILocation(line: 59, column: 10, scope: !2928, inlinedAt: !2935)
!2937 = !DILocation(line: 49, column: 7, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !732, file: !733, line: 49, column: 7)
!2939 = !DILocation(line: 49, column: 39, scope: !2938)
!2940 = !DILocation(line: 49, column: 44, scope: !2938)
!2941 = !DILocation(line: 54, column: 1, scope: !732)
!2942 = !DISubprogram(name: "mbrtoc32", scope: !744, file: !744, line: 57, type: !2943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!166, !2945, !1144, !166, !2947}
!2945 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2946)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2923)
!2948 = distinct !DISubprogram(name: "clone_quoting_options", scope: !763, file: !763, line: 113, type: !2949, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !2952)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!2951, !2951}
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!2952 = !{!2953, !2954, !2955}
!2953 = !DILocalVariable(name: "o", arg: 1, scope: !2948, file: !763, line: 113, type: !2951)
!2954 = !DILocalVariable(name: "saved_errno", scope: !2948, file: !763, line: 115, type: !122)
!2955 = !DILocalVariable(name: "p", scope: !2948, file: !763, line: 116, type: !2951)
!2956 = !DILocation(line: 0, scope: !2948)
!2957 = !DILocation(line: 115, column: 21, scope: !2948)
!2958 = !DILocation(line: 116, column: 40, scope: !2948)
!2959 = !DILocation(line: 116, column: 31, scope: !2948)
!2960 = !DILocation(line: 118, column: 9, scope: !2948)
!2961 = !DILocation(line: 119, column: 3, scope: !2948)
!2962 = distinct !DISubprogram(name: "get_quoting_style", scope: !763, file: !763, line: 124, type: !2963, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !2967)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!126, !2965}
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !799)
!2967 = !{!2968}
!2968 = !DILocalVariable(name: "o", arg: 1, scope: !2962, file: !763, line: 124, type: !2965)
!2969 = !DILocation(line: 0, scope: !2962)
!2970 = !DILocation(line: 126, column: 11, scope: !2962)
!2971 = !DILocation(line: 126, column: 46, scope: !2962)
!2972 = !{!2973, !1073, i64 0}
!2973 = !{!"quoting_options", !1073, i64 0, !1154, i64 4, !1073, i64 8, !1072, i64 40, !1072, i64 48}
!2974 = !DILocation(line: 126, column: 3, scope: !2962)
!2975 = distinct !DISubprogram(name: "set_quoting_style", scope: !763, file: !763, line: 132, type: !2976, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{null, !2951, !126}
!2978 = !{!2979, !2980}
!2979 = !DILocalVariable(name: "o", arg: 1, scope: !2975, file: !763, line: 132, type: !2951)
!2980 = !DILocalVariable(name: "s", arg: 2, scope: !2975, file: !763, line: 132, type: !126)
!2981 = !DILocation(line: 0, scope: !2975)
!2982 = !DILocation(line: 134, column: 4, scope: !2975)
!2983 = !DILocation(line: 134, column: 45, scope: !2975)
!2984 = !DILocation(line: 135, column: 1, scope: !2975)
!2985 = distinct !DISubprogram(name: "set_char_quoting", scope: !763, file: !763, line: 143, type: !2986, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !2988)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!122, !2951, !4, !122}
!2988 = !{!2989, !2990, !2991, !2992, !2993, !2995, !2996}
!2989 = !DILocalVariable(name: "o", arg: 1, scope: !2985, file: !763, line: 143, type: !2951)
!2990 = !DILocalVariable(name: "c", arg: 2, scope: !2985, file: !763, line: 143, type: !4)
!2991 = !DILocalVariable(name: "i", arg: 3, scope: !2985, file: !763, line: 143, type: !122)
!2992 = !DILocalVariable(name: "uc", scope: !2985, file: !763, line: 145, type: !171)
!2993 = !DILocalVariable(name: "p", scope: !2985, file: !763, line: 146, type: !2994)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2995 = !DILocalVariable(name: "shift", scope: !2985, file: !763, line: 148, type: !122)
!2996 = !DILocalVariable(name: "r", scope: !2985, file: !763, line: 149, type: !109)
!2997 = !DILocation(line: 0, scope: !2985)
!2998 = !DILocation(line: 147, column: 6, scope: !2985)
!2999 = !DILocation(line: 147, column: 41, scope: !2985)
!3000 = !DILocation(line: 147, column: 62, scope: !2985)
!3001 = !DILocation(line: 147, column: 57, scope: !2985)
!3002 = !DILocation(line: 148, column: 15, scope: !2985)
!3003 = !DILocation(line: 149, column: 21, scope: !2985)
!3004 = !DILocation(line: 149, column: 24, scope: !2985)
!3005 = !DILocation(line: 149, column: 34, scope: !2985)
!3006 = !DILocation(line: 150, column: 19, scope: !2985)
!3007 = !DILocation(line: 150, column: 24, scope: !2985)
!3008 = !DILocation(line: 150, column: 6, scope: !2985)
!3009 = !DILocation(line: 151, column: 3, scope: !2985)
!3010 = distinct !DISubprogram(name: "set_quoting_flags", scope: !763, file: !763, line: 159, type: !3011, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3013)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!122, !2951, !122}
!3013 = !{!3014, !3015, !3016}
!3014 = !DILocalVariable(name: "o", arg: 1, scope: !3010, file: !763, line: 159, type: !2951)
!3015 = !DILocalVariable(name: "i", arg: 2, scope: !3010, file: !763, line: 159, type: !122)
!3016 = !DILocalVariable(name: "r", scope: !3010, file: !763, line: 163, type: !122)
!3017 = !DILocation(line: 0, scope: !3010)
!3018 = !DILocation(line: 161, column: 8, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3010, file: !763, line: 161, column: 7)
!3020 = !DILocation(line: 161, column: 7, scope: !3010)
!3021 = !DILocation(line: 163, column: 14, scope: !3010)
!3022 = !{!2973, !1154, i64 4}
!3023 = !DILocation(line: 164, column: 12, scope: !3010)
!3024 = !DILocation(line: 165, column: 3, scope: !3010)
!3025 = distinct !DISubprogram(name: "set_custom_quoting", scope: !763, file: !763, line: 169, type: !3026, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3028)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{null, !2951, !169, !169}
!3028 = !{!3029, !3030, !3031}
!3029 = !DILocalVariable(name: "o", arg: 1, scope: !3025, file: !763, line: 169, type: !2951)
!3030 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3025, file: !763, line: 170, type: !169)
!3031 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3025, file: !763, line: 170, type: !169)
!3032 = !DILocation(line: 0, scope: !3025)
!3033 = !DILocation(line: 172, column: 8, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3025, file: !763, line: 172, column: 7)
!3035 = !DILocation(line: 172, column: 7, scope: !3025)
!3036 = !DILocation(line: 174, column: 12, scope: !3025)
!3037 = !DILocation(line: 175, column: 8, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3025, file: !763, line: 175, column: 7)
!3039 = !DILocation(line: 175, column: 19, scope: !3038)
!3040 = !DILocation(line: 176, column: 5, scope: !3038)
!3041 = !DILocation(line: 177, column: 6, scope: !3025)
!3042 = !DILocation(line: 177, column: 17, scope: !3025)
!3043 = !{!2973, !1072, i64 40}
!3044 = !DILocation(line: 178, column: 6, scope: !3025)
!3045 = !DILocation(line: 178, column: 18, scope: !3025)
!3046 = !{!2973, !1072, i64 48}
!3047 = !DILocation(line: 179, column: 1, scope: !3025)
!3048 = !DISubprogram(name: "abort", scope: !1274, file: !1274, line: 598, type: !718, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3049 = distinct !DISubprogram(name: "quotearg_buffer", scope: !763, file: !763, line: 774, type: !3050, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3052)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!166, !163, !166, !169, !166, !2965}
!3052 = !{!3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060}
!3053 = !DILocalVariable(name: "buffer", arg: 1, scope: !3049, file: !763, line: 774, type: !163)
!3054 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3049, file: !763, line: 774, type: !166)
!3055 = !DILocalVariable(name: "arg", arg: 3, scope: !3049, file: !763, line: 775, type: !169)
!3056 = !DILocalVariable(name: "argsize", arg: 4, scope: !3049, file: !763, line: 775, type: !166)
!3057 = !DILocalVariable(name: "o", arg: 5, scope: !3049, file: !763, line: 776, type: !2965)
!3058 = !DILocalVariable(name: "p", scope: !3049, file: !763, line: 778, type: !2965)
!3059 = !DILocalVariable(name: "saved_errno", scope: !3049, file: !763, line: 779, type: !122)
!3060 = !DILocalVariable(name: "r", scope: !3049, file: !763, line: 780, type: !166)
!3061 = !DILocation(line: 0, scope: !3049)
!3062 = !DILocation(line: 778, column: 37, scope: !3049)
!3063 = !DILocation(line: 779, column: 21, scope: !3049)
!3064 = !DILocation(line: 781, column: 43, scope: !3049)
!3065 = !DILocation(line: 781, column: 53, scope: !3049)
!3066 = !DILocation(line: 781, column: 63, scope: !3049)
!3067 = !DILocation(line: 782, column: 43, scope: !3049)
!3068 = !DILocation(line: 782, column: 58, scope: !3049)
!3069 = !DILocation(line: 780, column: 14, scope: !3049)
!3070 = !DILocation(line: 783, column: 9, scope: !3049)
!3071 = !DILocation(line: 784, column: 3, scope: !3049)
!3072 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !763, file: !763, line: 251, type: !3073, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3077)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!166, !163, !166, !169, !166, !126, !122, !3075, !169, !169}
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!3077 = !{!3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3102, !3104, !3107, !3108, !3109, !3110, !3113, !3114, !3117, !3121, !3122, !3130, !3133, !3134, !3136, !3137, !3138, !3139}
!3078 = !DILocalVariable(name: "buffer", arg: 1, scope: !3072, file: !763, line: 251, type: !163)
!3079 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3072, file: !763, line: 251, type: !166)
!3080 = !DILocalVariable(name: "arg", arg: 3, scope: !3072, file: !763, line: 252, type: !169)
!3081 = !DILocalVariable(name: "argsize", arg: 4, scope: !3072, file: !763, line: 252, type: !166)
!3082 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3072, file: !763, line: 253, type: !126)
!3083 = !DILocalVariable(name: "flags", arg: 6, scope: !3072, file: !763, line: 253, type: !122)
!3084 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3072, file: !763, line: 254, type: !3075)
!3085 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3072, file: !763, line: 255, type: !169)
!3086 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3072, file: !763, line: 256, type: !169)
!3087 = !DILocalVariable(name: "unibyte_locale", scope: !3072, file: !763, line: 258, type: !231)
!3088 = !DILocalVariable(name: "len", scope: !3072, file: !763, line: 260, type: !166)
!3089 = !DILocalVariable(name: "orig_buffersize", scope: !3072, file: !763, line: 261, type: !166)
!3090 = !DILocalVariable(name: "quote_string", scope: !3072, file: !763, line: 262, type: !169)
!3091 = !DILocalVariable(name: "quote_string_len", scope: !3072, file: !763, line: 263, type: !166)
!3092 = !DILocalVariable(name: "backslash_escapes", scope: !3072, file: !763, line: 264, type: !231)
!3093 = !DILocalVariable(name: "elide_outer_quotes", scope: !3072, file: !763, line: 265, type: !231)
!3094 = !DILocalVariable(name: "encountered_single_quote", scope: !3072, file: !763, line: 266, type: !231)
!3095 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3072, file: !763, line: 267, type: !231)
!3096 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3072, file: !763, line: 309, type: !231)
!3097 = !DILocalVariable(name: "lq", scope: !3098, file: !763, line: 361, type: !169)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !763, line: 361, column: 11)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !763, line: 360, column: 13)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !763, line: 333, column: 7)
!3101 = distinct !DILexicalBlock(scope: !3072, file: !763, line: 312, column: 5)
!3102 = !DILocalVariable(name: "i", scope: !3103, file: !763, line: 395, type: !166)
!3103 = distinct !DILexicalBlock(scope: !3072, file: !763, line: 395, column: 3)
!3104 = !DILocalVariable(name: "is_right_quote", scope: !3105, file: !763, line: 397, type: !231)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !763, line: 396, column: 5)
!3106 = distinct !DILexicalBlock(scope: !3103, file: !763, line: 395, column: 3)
!3107 = !DILocalVariable(name: "escaping", scope: !3105, file: !763, line: 398, type: !231)
!3108 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3105, file: !763, line: 399, type: !231)
!3109 = !DILocalVariable(name: "c", scope: !3105, file: !763, line: 417, type: !171)
!3110 = !DILocalVariable(name: "m", scope: !3111, file: !763, line: 598, type: !166)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !763, line: 596, column: 11)
!3112 = distinct !DILexicalBlock(scope: !3105, file: !763, line: 419, column: 9)
!3113 = !DILocalVariable(name: "printable", scope: !3111, file: !763, line: 600, type: !231)
!3114 = !DILocalVariable(name: "mbs", scope: !3115, file: !763, line: 609, type: !833)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !763, line: 608, column: 15)
!3116 = distinct !DILexicalBlock(scope: !3111, file: !763, line: 602, column: 17)
!3117 = !DILocalVariable(name: "w", scope: !3118, file: !763, line: 618, type: !743)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !763, line: 617, column: 19)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !763, line: 616, column: 17)
!3120 = distinct !DILexicalBlock(scope: !3115, file: !763, line: 616, column: 17)
!3121 = !DILocalVariable(name: "bytes", scope: !3118, file: !763, line: 619, type: !166)
!3122 = !DILocalVariable(name: "j", scope: !3123, file: !763, line: 648, type: !166)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !763, line: 648, column: 29)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !763, line: 647, column: 27)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !763, line: 645, column: 29)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !763, line: 636, column: 23)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !763, line: 628, column: 30)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !763, line: 623, column: 30)
!3129 = distinct !DILexicalBlock(scope: !3118, file: !763, line: 621, column: 25)
!3130 = !DILocalVariable(name: "ilim", scope: !3131, file: !763, line: 674, type: !166)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !763, line: 671, column: 15)
!3132 = distinct !DILexicalBlock(scope: !3111, file: !763, line: 670, column: 17)
!3133 = !DILabel(scope: !3072, name: "process_input", file: !763, line: 308)
!3134 = !DILabel(scope: !3135, name: "c_and_shell_escape", file: !763, line: 502)
!3135 = distinct !DILexicalBlock(scope: !3112, file: !763, line: 478, column: 9)
!3136 = !DILabel(scope: !3135, name: "c_escape", file: !763, line: 507)
!3137 = !DILabel(scope: !3105, name: "store_escape", file: !763, line: 709)
!3138 = !DILabel(scope: !3105, name: "store_c", file: !763, line: 712)
!3139 = !DILabel(scope: !3072, name: "force_outer_quoting_style", file: !763, line: 753)
!3140 = !DILocation(line: 0, scope: !3072)
!3141 = !DILocation(line: 258, column: 25, scope: !3072)
!3142 = !DILocation(line: 258, column: 36, scope: !3072)
!3143 = !DILocation(line: 267, column: 3, scope: !3072)
!3144 = !DILocation(line: 261, column: 10, scope: !3072)
!3145 = !DILocation(line: 262, column: 15, scope: !3072)
!3146 = !DILocation(line: 263, column: 10, scope: !3072)
!3147 = !DILocation(line: 308, column: 2, scope: !3072)
!3148 = !DILocation(line: 311, column: 3, scope: !3072)
!3149 = !DILocation(line: 318, column: 11, scope: !3101)
!3150 = !DILocation(line: 319, column: 9, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !763, line: 319, column: 9)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !763, line: 319, column: 9)
!3153 = distinct !DILexicalBlock(scope: !3101, file: !763, line: 318, column: 11)
!3154 = !DILocation(line: 319, column: 9, scope: !3152)
!3155 = !DILocation(line: 0, scope: !824, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 357, column: 26, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !763, line: 335, column: 11)
!3158 = distinct !DILexicalBlock(scope: !3100, file: !763, line: 334, column: 13)
!3159 = !DILocation(line: 199, column: 29, scope: !824, inlinedAt: !3156)
!3160 = !DILocation(line: 201, column: 19, scope: !3161, inlinedAt: !3156)
!3161 = distinct !DILexicalBlock(scope: !824, file: !763, line: 201, column: 7)
!3162 = !DILocation(line: 201, column: 7, scope: !824, inlinedAt: !3156)
!3163 = !DILocation(line: 229, column: 3, scope: !824, inlinedAt: !3156)
!3164 = !DILocation(line: 230, column: 3, scope: !824, inlinedAt: !3156)
!3165 = !DILocation(line: 230, column: 13, scope: !824, inlinedAt: !3156)
!3166 = !DILocalVariable(name: "ps", arg: 1, scope: !3167, file: !2920, line: 1135, type: !3170)
!3167 = distinct !DISubprogram(name: "mbszero", scope: !2920, file: !2920, line: 1135, type: !3168, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3171)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{null, !3170}
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!3171 = !{!3166}
!3172 = !DILocation(line: 0, scope: !3167, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 230, column: 18, scope: !824, inlinedAt: !3156)
!3174 = !DILocalVariable(name: "__dest", arg: 1, scope: !3175, file: !1545, line: 57, type: !164)
!3175 = distinct !DISubprogram(name: "memset", scope: !1545, file: !1545, line: 57, type: !2929, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3176)
!3176 = !{!3174, !3177, !3178}
!3177 = !DILocalVariable(name: "__ch", arg: 2, scope: !3175, file: !1545, line: 57, type: !122)
!3178 = !DILocalVariable(name: "__len", arg: 3, scope: !3175, file: !1545, line: 57, type: !166)
!3179 = !DILocation(line: 0, scope: !3175, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 1137, column: 3, scope: !3167, inlinedAt: !3173)
!3181 = !DILocation(line: 59, column: 10, scope: !3175, inlinedAt: !3180)
!3182 = !DILocation(line: 231, column: 7, scope: !3183, inlinedAt: !3156)
!3183 = distinct !DILexicalBlock(scope: !824, file: !763, line: 231, column: 7)
!3184 = !DILocation(line: 231, column: 40, scope: !3183, inlinedAt: !3156)
!3185 = !DILocation(line: 231, column: 45, scope: !3183, inlinedAt: !3156)
!3186 = !DILocation(line: 235, column: 1, scope: !824, inlinedAt: !3156)
!3187 = !DILocation(line: 0, scope: !824, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 358, column: 27, scope: !3157)
!3189 = !DILocation(line: 199, column: 29, scope: !824, inlinedAt: !3188)
!3190 = !DILocation(line: 201, column: 19, scope: !3161, inlinedAt: !3188)
!3191 = !DILocation(line: 201, column: 7, scope: !824, inlinedAt: !3188)
!3192 = !DILocation(line: 229, column: 3, scope: !824, inlinedAt: !3188)
!3193 = !DILocation(line: 230, column: 3, scope: !824, inlinedAt: !3188)
!3194 = !DILocation(line: 230, column: 13, scope: !824, inlinedAt: !3188)
!3195 = !DILocation(line: 0, scope: !3167, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 230, column: 18, scope: !824, inlinedAt: !3188)
!3197 = !DILocation(line: 0, scope: !3175, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 1137, column: 3, scope: !3167, inlinedAt: !3196)
!3199 = !DILocation(line: 59, column: 10, scope: !3175, inlinedAt: !3198)
!3200 = !DILocation(line: 231, column: 7, scope: !3183, inlinedAt: !3188)
!3201 = !DILocation(line: 231, column: 40, scope: !3183, inlinedAt: !3188)
!3202 = !DILocation(line: 231, column: 45, scope: !3183, inlinedAt: !3188)
!3203 = !DILocation(line: 235, column: 1, scope: !824, inlinedAt: !3188)
!3204 = !DILocation(line: 360, column: 13, scope: !3100)
!3205 = !DILocation(line: 0, scope: !3098)
!3206 = !DILocation(line: 361, column: 45, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3098, file: !763, line: 361, column: 11)
!3208 = !DILocation(line: 361, column: 11, scope: !3098)
!3209 = !DILocation(line: 362, column: 13, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !763, line: 362, column: 13)
!3211 = distinct !DILexicalBlock(scope: !3207, file: !763, line: 362, column: 13)
!3212 = !DILocation(line: 362, column: 13, scope: !3211)
!3213 = !DILocation(line: 361, column: 52, scope: !3207)
!3214 = distinct !{!3214, !3208, !3215, !1200}
!3215 = !DILocation(line: 362, column: 13, scope: !3098)
!3216 = !DILocation(line: 260, column: 10, scope: !3072)
!3217 = !DILocation(line: 365, column: 28, scope: !3100)
!3218 = !DILocation(line: 367, column: 7, scope: !3101)
!3219 = !DILocation(line: 370, column: 7, scope: !3101)
!3220 = !DILocation(line: 376, column: 11, scope: !3101)
!3221 = !DILocation(line: 381, column: 11, scope: !3101)
!3222 = !DILocation(line: 382, column: 9, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !763, line: 382, column: 9)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !763, line: 382, column: 9)
!3225 = distinct !DILexicalBlock(scope: !3101, file: !763, line: 381, column: 11)
!3226 = !DILocation(line: 382, column: 9, scope: !3224)
!3227 = !DILocation(line: 389, column: 7, scope: !3101)
!3228 = !DILocation(line: 392, column: 7, scope: !3101)
!3229 = !DILocation(line: 0, scope: !3103)
!3230 = !DILocation(line: 395, column: 8, scope: !3103)
!3231 = !DILocation(line: 395, scope: !3103)
!3232 = !DILocation(line: 395, column: 34, scope: !3106)
!3233 = !DILocation(line: 395, column: 26, scope: !3106)
!3234 = !DILocation(line: 395, column: 48, scope: !3106)
!3235 = !DILocation(line: 395, column: 55, scope: !3106)
!3236 = !DILocation(line: 395, column: 3, scope: !3103)
!3237 = !DILocation(line: 395, column: 67, scope: !3106)
!3238 = !DILocation(line: 0, scope: !3105)
!3239 = !DILocation(line: 402, column: 11, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3105, file: !763, line: 401, column: 11)
!3241 = !DILocation(line: 404, column: 17, scope: !3240)
!3242 = !DILocation(line: 405, column: 39, scope: !3240)
!3243 = !DILocation(line: 409, column: 32, scope: !3240)
!3244 = !DILocation(line: 405, column: 19, scope: !3240)
!3245 = !DILocation(line: 405, column: 15, scope: !3240)
!3246 = !DILocation(line: 410, column: 11, scope: !3240)
!3247 = !DILocation(line: 410, column: 25, scope: !3240)
!3248 = !DILocalVariable(name: "__s1", arg: 1, scope: !3249, file: !1166, line: 974, type: !1298)
!3249 = distinct !DISubprogram(name: "memeq", scope: !1166, file: !1166, line: 974, type: !2890, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3250)
!3250 = !{!3248, !3251, !3252}
!3251 = !DILocalVariable(name: "__s2", arg: 2, scope: !3249, file: !1166, line: 974, type: !1298)
!3252 = !DILocalVariable(name: "__n", arg: 3, scope: !3249, file: !1166, line: 974, type: !166)
!3253 = !DILocation(line: 0, scope: !3249, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 410, column: 14, scope: !3240)
!3255 = !DILocation(line: 976, column: 11, scope: !3249, inlinedAt: !3254)
!3256 = !DILocation(line: 976, column: 10, scope: !3249, inlinedAt: !3254)
!3257 = !DILocation(line: 401, column: 11, scope: !3105)
!3258 = !DILocation(line: 417, column: 25, scope: !3105)
!3259 = !DILocation(line: 418, column: 7, scope: !3105)
!3260 = !DILocation(line: 421, column: 15, scope: !3112)
!3261 = !DILocation(line: 423, column: 15, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !763, line: 423, column: 15)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !763, line: 422, column: 13)
!3264 = distinct !DILexicalBlock(scope: !3112, file: !763, line: 421, column: 15)
!3265 = !DILocation(line: 423, column: 15, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3262, file: !763, line: 423, column: 15)
!3267 = !DILocation(line: 423, column: 15, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3269, file: !763, line: 423, column: 15)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !763, line: 423, column: 15)
!3270 = distinct !DILexicalBlock(scope: !3266, file: !763, line: 423, column: 15)
!3271 = !DILocation(line: 423, column: 15, scope: !3269)
!3272 = !DILocation(line: 423, column: 15, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3274, file: !763, line: 423, column: 15)
!3274 = distinct !DILexicalBlock(scope: !3270, file: !763, line: 423, column: 15)
!3275 = !DILocation(line: 423, column: 15, scope: !3274)
!3276 = !DILocation(line: 423, column: 15, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !763, line: 423, column: 15)
!3278 = distinct !DILexicalBlock(scope: !3270, file: !763, line: 423, column: 15)
!3279 = !DILocation(line: 423, column: 15, scope: !3278)
!3280 = !DILocation(line: 423, column: 15, scope: !3270)
!3281 = !DILocation(line: 423, column: 15, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !763, line: 423, column: 15)
!3283 = distinct !DILexicalBlock(scope: !3262, file: !763, line: 423, column: 15)
!3284 = !DILocation(line: 423, column: 15, scope: !3283)
!3285 = !DILocation(line: 431, column: 19, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3263, file: !763, line: 430, column: 19)
!3287 = !DILocation(line: 431, column: 24, scope: !3286)
!3288 = !DILocation(line: 431, column: 28, scope: !3286)
!3289 = !DILocation(line: 431, column: 38, scope: !3286)
!3290 = !DILocation(line: 431, column: 48, scope: !3286)
!3291 = !DILocation(line: 431, column: 59, scope: !3286)
!3292 = !DILocation(line: 433, column: 19, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3294, file: !763, line: 433, column: 19)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !763, line: 433, column: 19)
!3295 = distinct !DILexicalBlock(scope: !3286, file: !763, line: 432, column: 17)
!3296 = !DILocation(line: 433, column: 19, scope: !3294)
!3297 = !DILocation(line: 434, column: 19, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3299, file: !763, line: 434, column: 19)
!3299 = distinct !DILexicalBlock(scope: !3295, file: !763, line: 434, column: 19)
!3300 = !DILocation(line: 434, column: 19, scope: !3299)
!3301 = !DILocation(line: 435, column: 17, scope: !3295)
!3302 = !DILocation(line: 442, column: 20, scope: !3264)
!3303 = !DILocation(line: 447, column: 11, scope: !3112)
!3304 = !DILocation(line: 450, column: 19, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3112, file: !763, line: 448, column: 13)
!3306 = !DILocation(line: 456, column: 19, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3305, file: !763, line: 455, column: 19)
!3308 = !DILocation(line: 456, column: 24, scope: !3307)
!3309 = !DILocation(line: 456, column: 28, scope: !3307)
!3310 = !DILocation(line: 456, column: 38, scope: !3307)
!3311 = !DILocation(line: 456, column: 47, scope: !3307)
!3312 = !DILocation(line: 456, column: 41, scope: !3307)
!3313 = !DILocation(line: 456, column: 52, scope: !3307)
!3314 = !DILocation(line: 455, column: 19, scope: !3305)
!3315 = !DILocation(line: 457, column: 25, scope: !3307)
!3316 = !DILocation(line: 457, column: 17, scope: !3307)
!3317 = !DILocation(line: 464, column: 25, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3307, file: !763, line: 458, column: 19)
!3319 = !DILocation(line: 468, column: 21, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !763, line: 468, column: 21)
!3321 = distinct !DILexicalBlock(scope: !3318, file: !763, line: 468, column: 21)
!3322 = !DILocation(line: 468, column: 21, scope: !3321)
!3323 = !DILocation(line: 469, column: 21, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !763, line: 469, column: 21)
!3325 = distinct !DILexicalBlock(scope: !3318, file: !763, line: 469, column: 21)
!3326 = !DILocation(line: 469, column: 21, scope: !3325)
!3327 = !DILocation(line: 470, column: 21, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3329, file: !763, line: 470, column: 21)
!3329 = distinct !DILexicalBlock(scope: !3318, file: !763, line: 470, column: 21)
!3330 = !DILocation(line: 470, column: 21, scope: !3329)
!3331 = !DILocation(line: 471, column: 21, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3333, file: !763, line: 471, column: 21)
!3333 = distinct !DILexicalBlock(scope: !3318, file: !763, line: 471, column: 21)
!3334 = !DILocation(line: 471, column: 21, scope: !3333)
!3335 = !DILocation(line: 472, column: 21, scope: !3318)
!3336 = !DILocation(line: 482, column: 33, scope: !3135)
!3337 = !DILocation(line: 483, column: 33, scope: !3135)
!3338 = !DILocation(line: 485, column: 33, scope: !3135)
!3339 = !DILocation(line: 486, column: 33, scope: !3135)
!3340 = !DILocation(line: 487, column: 33, scope: !3135)
!3341 = !DILocation(line: 490, column: 17, scope: !3135)
!3342 = !DILocation(line: 492, column: 21, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !763, line: 491, column: 15)
!3344 = distinct !DILexicalBlock(scope: !3135, file: !763, line: 490, column: 17)
!3345 = !DILocation(line: 499, column: 35, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3135, file: !763, line: 499, column: 17)
!3347 = !DILocation(line: 0, scope: !3135)
!3348 = !DILocation(line: 502, column: 11, scope: !3135)
!3349 = !DILocation(line: 504, column: 17, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3135, file: !763, line: 503, column: 17)
!3351 = !DILocation(line: 507, column: 11, scope: !3135)
!3352 = !DILocation(line: 508, column: 17, scope: !3135)
!3353 = !DILocation(line: 517, column: 15, scope: !3112)
!3354 = !DILocation(line: 517, column: 40, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3112, file: !763, line: 517, column: 15)
!3356 = !DILocation(line: 517, column: 47, scope: !3355)
!3357 = !DILocation(line: 517, column: 18, scope: !3355)
!3358 = !DILocation(line: 521, column: 17, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3112, file: !763, line: 521, column: 15)
!3360 = !DILocation(line: 521, column: 15, scope: !3112)
!3361 = !DILocation(line: 525, column: 11, scope: !3112)
!3362 = !DILocation(line: 537, column: 15, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3112, file: !763, line: 536, column: 15)
!3364 = !DILocation(line: 536, column: 15, scope: !3112)
!3365 = !DILocation(line: 544, column: 15, scope: !3112)
!3366 = !DILocation(line: 546, column: 19, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3368, file: !763, line: 545, column: 13)
!3368 = distinct !DILexicalBlock(scope: !3112, file: !763, line: 544, column: 15)
!3369 = !DILocation(line: 549, column: 19, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3367, file: !763, line: 549, column: 19)
!3371 = !DILocation(line: 549, column: 30, scope: !3370)
!3372 = !DILocation(line: 558, column: 15, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3374, file: !763, line: 558, column: 15)
!3374 = distinct !DILexicalBlock(scope: !3367, file: !763, line: 558, column: 15)
!3375 = !DILocation(line: 558, column: 15, scope: !3374)
!3376 = !DILocation(line: 559, column: 15, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !763, line: 559, column: 15)
!3378 = distinct !DILexicalBlock(scope: !3367, file: !763, line: 559, column: 15)
!3379 = !DILocation(line: 559, column: 15, scope: !3378)
!3380 = !DILocation(line: 560, column: 15, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !763, line: 560, column: 15)
!3382 = distinct !DILexicalBlock(scope: !3367, file: !763, line: 560, column: 15)
!3383 = !DILocation(line: 560, column: 15, scope: !3382)
!3384 = !DILocation(line: 562, column: 13, scope: !3367)
!3385 = !DILocation(line: 602, column: 17, scope: !3111)
!3386 = !DILocation(line: 0, scope: !3111)
!3387 = !DILocation(line: 605, column: 29, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3116, file: !763, line: 603, column: 15)
!3389 = !DILocation(line: 605, column: 41, scope: !3388)
!3390 = !DILocation(line: 606, column: 15, scope: !3388)
!3391 = !DILocation(line: 609, column: 17, scope: !3115)
!3392 = !DILocation(line: 609, column: 27, scope: !3115)
!3393 = !DILocation(line: 0, scope: !3167, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 609, column: 32, scope: !3115)
!3395 = !DILocation(line: 0, scope: !3175, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 1137, column: 3, scope: !3167, inlinedAt: !3394)
!3397 = !DILocation(line: 59, column: 10, scope: !3175, inlinedAt: !3396)
!3398 = !DILocation(line: 613, column: 29, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3115, file: !763, line: 613, column: 21)
!3400 = !DILocation(line: 613, column: 21, scope: !3115)
!3401 = !DILocation(line: 614, column: 29, scope: !3399)
!3402 = !DILocation(line: 614, column: 19, scope: !3399)
!3403 = !DILocation(line: 618, column: 21, scope: !3118)
!3404 = !DILocation(line: 620, column: 54, scope: !3118)
!3405 = !DILocation(line: 0, scope: !3118)
!3406 = !DILocation(line: 619, column: 36, scope: !3118)
!3407 = !DILocation(line: 621, column: 25, scope: !3118)
!3408 = !DILocation(line: 631, column: 38, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3127, file: !763, line: 629, column: 23)
!3410 = !DILocation(line: 631, column: 48, scope: !3409)
!3411 = !DILocation(line: 626, column: 25, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3128, file: !763, line: 624, column: 23)
!3413 = !DILocation(line: 631, column: 51, scope: !3409)
!3414 = !DILocation(line: 631, column: 25, scope: !3409)
!3415 = !DILocation(line: 632, column: 28, scope: !3409)
!3416 = !DILocation(line: 631, column: 34, scope: !3409)
!3417 = distinct !{!3417, !3414, !3415, !1200}
!3418 = !DILocation(line: 646, column: 29, scope: !3125)
!3419 = !DILocation(line: 0, scope: !3123)
!3420 = !DILocation(line: 649, column: 49, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3123, file: !763, line: 648, column: 29)
!3422 = !DILocation(line: 649, column: 39, scope: !3421)
!3423 = !DILocation(line: 649, column: 31, scope: !3421)
!3424 = !DILocation(line: 648, column: 60, scope: !3421)
!3425 = !DILocation(line: 648, column: 50, scope: !3421)
!3426 = !DILocation(line: 648, column: 29, scope: !3123)
!3427 = distinct !{!3427, !3426, !3428, !1200}
!3428 = !DILocation(line: 654, column: 33, scope: !3123)
!3429 = !DILocation(line: 657, column: 43, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3126, file: !763, line: 657, column: 29)
!3431 = !DILocalVariable(name: "wc", arg: 1, scope: !3432, file: !3433, line: 865, type: !3436)
!3432 = distinct !DISubprogram(name: "c32isprint", scope: !3433, file: !3433, line: 865, type: !3434, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3438)
!3433 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!122, !3436}
!3436 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3437, line: 20, baseType: !109)
!3437 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3438 = !{!3431}
!3439 = !DILocation(line: 0, scope: !3432, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 657, column: 31, scope: !3430)
!3441 = !DILocation(line: 871, column: 10, scope: !3432, inlinedAt: !3440)
!3442 = !DILocation(line: 657, column: 31, scope: !3430)
!3443 = !DILocation(line: 664, column: 23, scope: !3118)
!3444 = !DILocation(line: 665, column: 19, scope: !3119)
!3445 = !DILocation(line: 666, column: 15, scope: !3116)
!3446 = !DILocation(line: 753, column: 2, scope: !3072)
!3447 = !DILocation(line: 756, column: 51, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3072, file: !763, line: 756, column: 7)
!3449 = !DILocation(line: 0, scope: !3116)
!3450 = !DILocation(line: 670, column: 19, scope: !3132)
!3451 = !DILocation(line: 670, column: 23, scope: !3132)
!3452 = !DILocation(line: 674, column: 33, scope: !3131)
!3453 = !DILocation(line: 0, scope: !3131)
!3454 = !DILocation(line: 676, column: 17, scope: !3131)
!3455 = !DILocation(line: 398, column: 12, scope: !3105)
!3456 = !DILocation(line: 678, column: 43, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !763, line: 678, column: 25)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !763, line: 677, column: 19)
!3459 = distinct !DILexicalBlock(scope: !3460, file: !763, line: 676, column: 17)
!3460 = distinct !DILexicalBlock(scope: !3131, file: !763, line: 676, column: 17)
!3461 = !DILocation(line: 680, column: 25, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3463, file: !763, line: 680, column: 25)
!3463 = distinct !DILexicalBlock(scope: !3457, file: !763, line: 679, column: 23)
!3464 = !DILocation(line: 680, column: 25, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3462, file: !763, line: 680, column: 25)
!3466 = !DILocation(line: 680, column: 25, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3468, file: !763, line: 680, column: 25)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !763, line: 680, column: 25)
!3469 = distinct !DILexicalBlock(scope: !3465, file: !763, line: 680, column: 25)
!3470 = !DILocation(line: 680, column: 25, scope: !3468)
!3471 = !DILocation(line: 680, column: 25, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3473, file: !763, line: 680, column: 25)
!3473 = distinct !DILexicalBlock(scope: !3469, file: !763, line: 680, column: 25)
!3474 = !DILocation(line: 680, column: 25, scope: !3473)
!3475 = !DILocation(line: 680, column: 25, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !763, line: 680, column: 25)
!3477 = distinct !DILexicalBlock(scope: !3469, file: !763, line: 680, column: 25)
!3478 = !DILocation(line: 680, column: 25, scope: !3477)
!3479 = !DILocation(line: 680, column: 25, scope: !3469)
!3480 = !DILocation(line: 680, column: 25, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !763, line: 680, column: 25)
!3482 = distinct !DILexicalBlock(scope: !3462, file: !763, line: 680, column: 25)
!3483 = !DILocation(line: 680, column: 25, scope: !3482)
!3484 = !DILocation(line: 681, column: 25, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3486, file: !763, line: 681, column: 25)
!3486 = distinct !DILexicalBlock(scope: !3463, file: !763, line: 681, column: 25)
!3487 = !DILocation(line: 681, column: 25, scope: !3486)
!3488 = !DILocation(line: 682, column: 25, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !763, line: 682, column: 25)
!3490 = distinct !DILexicalBlock(scope: !3463, file: !763, line: 682, column: 25)
!3491 = !DILocation(line: 682, column: 25, scope: !3490)
!3492 = !DILocation(line: 683, column: 38, scope: !3463)
!3493 = !DILocation(line: 683, column: 33, scope: !3463)
!3494 = !DILocation(line: 684, column: 23, scope: !3463)
!3495 = !DILocation(line: 685, column: 30, scope: !3457)
!3496 = !DILocation(line: 687, column: 25, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !763, line: 687, column: 25)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !763, line: 687, column: 25)
!3499 = distinct !DILexicalBlock(scope: !3500, file: !763, line: 686, column: 23)
!3500 = distinct !DILexicalBlock(scope: !3457, file: !763, line: 685, column: 30)
!3501 = !DILocation(line: 687, column: 25, scope: !3498)
!3502 = !DILocation(line: 689, column: 23, scope: !3499)
!3503 = !DILocation(line: 690, column: 35, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3458, file: !763, line: 690, column: 25)
!3505 = !DILocation(line: 690, column: 30, scope: !3504)
!3506 = !DILocation(line: 690, column: 25, scope: !3458)
!3507 = !DILocation(line: 692, column: 21, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3509, file: !763, line: 692, column: 21)
!3509 = distinct !DILexicalBlock(scope: !3458, file: !763, line: 692, column: 21)
!3510 = !DILocation(line: 692, column: 21, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3512, file: !763, line: 692, column: 21)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !763, line: 692, column: 21)
!3513 = distinct !DILexicalBlock(scope: !3508, file: !763, line: 692, column: 21)
!3514 = !DILocation(line: 692, column: 21, scope: !3512)
!3515 = !DILocation(line: 692, column: 21, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !763, line: 692, column: 21)
!3517 = distinct !DILexicalBlock(scope: !3513, file: !763, line: 692, column: 21)
!3518 = !DILocation(line: 692, column: 21, scope: !3517)
!3519 = !DILocation(line: 692, column: 21, scope: !3513)
!3520 = !DILocation(line: 0, scope: !3458)
!3521 = !DILocation(line: 693, column: 21, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3523, file: !763, line: 693, column: 21)
!3523 = distinct !DILexicalBlock(scope: !3458, file: !763, line: 693, column: 21)
!3524 = !DILocation(line: 693, column: 21, scope: !3523)
!3525 = !DILocation(line: 694, column: 25, scope: !3458)
!3526 = !DILocation(line: 676, column: 17, scope: !3459)
!3527 = distinct !{!3527, !3528, !3529}
!3528 = !DILocation(line: 676, column: 17, scope: !3460)
!3529 = !DILocation(line: 695, column: 19, scope: !3460)
!3530 = !DILocation(line: 409, column: 30, scope: !3240)
!3531 = !DILocation(line: 702, column: 34, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3105, file: !763, line: 702, column: 11)
!3533 = !DILocation(line: 704, column: 14, scope: !3532)
!3534 = !DILocation(line: 705, column: 14, scope: !3532)
!3535 = !DILocation(line: 705, column: 35, scope: !3532)
!3536 = !DILocation(line: 705, column: 17, scope: !3532)
!3537 = !DILocation(line: 705, column: 47, scope: !3532)
!3538 = !DILocation(line: 705, column: 65, scope: !3532)
!3539 = !DILocation(line: 706, column: 11, scope: !3532)
!3540 = !DILocation(line: 702, column: 11, scope: !3105)
!3541 = !DILocation(line: 395, column: 15, scope: !3103)
!3542 = !DILocation(line: 709, column: 5, scope: !3105)
!3543 = !DILocation(line: 710, column: 7, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3105, file: !763, line: 710, column: 7)
!3545 = !DILocation(line: 710, column: 7, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3544, file: !763, line: 710, column: 7)
!3547 = !DILocation(line: 710, column: 7, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !763, line: 710, column: 7)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !763, line: 710, column: 7)
!3550 = distinct !DILexicalBlock(scope: !3546, file: !763, line: 710, column: 7)
!3551 = !DILocation(line: 710, column: 7, scope: !3549)
!3552 = !DILocation(line: 710, column: 7, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3554, file: !763, line: 710, column: 7)
!3554 = distinct !DILexicalBlock(scope: !3550, file: !763, line: 710, column: 7)
!3555 = !DILocation(line: 710, column: 7, scope: !3554)
!3556 = !DILocation(line: 710, column: 7, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3558, file: !763, line: 710, column: 7)
!3558 = distinct !DILexicalBlock(scope: !3550, file: !763, line: 710, column: 7)
!3559 = !DILocation(line: 710, column: 7, scope: !3558)
!3560 = !DILocation(line: 710, column: 7, scope: !3550)
!3561 = !DILocation(line: 710, column: 7, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3563, file: !763, line: 710, column: 7)
!3563 = distinct !DILexicalBlock(scope: !3544, file: !763, line: 710, column: 7)
!3564 = !DILocation(line: 710, column: 7, scope: !3563)
!3565 = !DILocation(line: 712, column: 5, scope: !3105)
!3566 = !DILocation(line: 713, column: 7, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !763, line: 713, column: 7)
!3568 = distinct !DILexicalBlock(scope: !3105, file: !763, line: 713, column: 7)
!3569 = !DILocation(line: 417, column: 21, scope: !3105)
!3570 = !DILocation(line: 713, column: 7, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3572, file: !763, line: 713, column: 7)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !763, line: 713, column: 7)
!3573 = distinct !DILexicalBlock(scope: !3567, file: !763, line: 713, column: 7)
!3574 = !DILocation(line: 713, column: 7, scope: !3572)
!3575 = !DILocation(line: 713, column: 7, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !763, line: 713, column: 7)
!3577 = distinct !DILexicalBlock(scope: !3573, file: !763, line: 713, column: 7)
!3578 = !DILocation(line: 713, column: 7, scope: !3577)
!3579 = !DILocation(line: 713, column: 7, scope: !3573)
!3580 = !DILocation(line: 714, column: 7, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3582, file: !763, line: 714, column: 7)
!3582 = distinct !DILexicalBlock(scope: !3105, file: !763, line: 714, column: 7)
!3583 = !DILocation(line: 714, column: 7, scope: !3582)
!3584 = !DILocation(line: 716, column: 11, scope: !3105)
!3585 = !DILocation(line: 718, column: 5, scope: !3106)
!3586 = !DILocation(line: 395, column: 82, scope: !3106)
!3587 = !DILocation(line: 395, column: 3, scope: !3106)
!3588 = distinct !{!3588, !3236, !3589, !1200}
!3589 = !DILocation(line: 718, column: 5, scope: !3103)
!3590 = !DILocation(line: 720, column: 11, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3072, file: !763, line: 720, column: 7)
!3592 = !DILocation(line: 720, column: 16, scope: !3591)
!3593 = !DILocation(line: 728, column: 51, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3072, file: !763, line: 728, column: 7)
!3595 = !DILocation(line: 731, column: 11, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3594, file: !763, line: 730, column: 5)
!3597 = !DILocation(line: 732, column: 16, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3596, file: !763, line: 731, column: 11)
!3599 = !DILocation(line: 732, column: 9, scope: !3598)
!3600 = !DILocation(line: 736, column: 18, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3598, file: !763, line: 736, column: 16)
!3602 = !DILocation(line: 736, column: 29, scope: !3601)
!3603 = !DILocation(line: 745, column: 7, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3072, file: !763, line: 745, column: 7)
!3605 = !DILocation(line: 745, column: 20, scope: !3604)
!3606 = !DILocation(line: 746, column: 12, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3608, file: !763, line: 746, column: 5)
!3608 = distinct !DILexicalBlock(scope: !3604, file: !763, line: 746, column: 5)
!3609 = !DILocation(line: 746, column: 5, scope: !3608)
!3610 = !DILocation(line: 747, column: 7, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3612, file: !763, line: 747, column: 7)
!3612 = distinct !DILexicalBlock(scope: !3607, file: !763, line: 747, column: 7)
!3613 = !DILocation(line: 747, column: 7, scope: !3612)
!3614 = !DILocation(line: 746, column: 39, scope: !3607)
!3615 = distinct !{!3615, !3609, !3616, !1200}
!3616 = !DILocation(line: 747, column: 7, scope: !3608)
!3617 = !DILocation(line: 749, column: 11, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3072, file: !763, line: 749, column: 7)
!3619 = !DILocation(line: 749, column: 7, scope: !3072)
!3620 = !DILocation(line: 750, column: 5, scope: !3618)
!3621 = !DILocation(line: 750, column: 17, scope: !3618)
!3622 = !DILocation(line: 756, column: 21, scope: !3448)
!3623 = !DILocation(line: 760, column: 42, scope: !3072)
!3624 = !DILocation(line: 758, column: 10, scope: !3072)
!3625 = !DILocation(line: 758, column: 3, scope: !3072)
!3626 = !DILocation(line: 762, column: 1, scope: !3072)
!3627 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1274, file: !1274, line: 98, type: !3628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!166}
!3630 = !DISubprogram(name: "strlen", scope: !1270, file: !1270, line: 407, type: !3631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!168, !169}
!3633 = !DISubprogram(name: "iswprint", scope: !3634, file: !3634, line: 120, type: !3434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!3634 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3635 = distinct !DISubprogram(name: "quotearg_alloc", scope: !763, file: !763, line: 788, type: !3636, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3638)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!163, !169, !166, !2965}
!3638 = !{!3639, !3640, !3641}
!3639 = !DILocalVariable(name: "arg", arg: 1, scope: !3635, file: !763, line: 788, type: !169)
!3640 = !DILocalVariable(name: "argsize", arg: 2, scope: !3635, file: !763, line: 788, type: !166)
!3641 = !DILocalVariable(name: "o", arg: 3, scope: !3635, file: !763, line: 789, type: !2965)
!3642 = !DILocation(line: 0, scope: !3635)
!3643 = !DILocalVariable(name: "arg", arg: 1, scope: !3644, file: !763, line: 801, type: !169)
!3644 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !763, file: !763, line: 801, type: !3645, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3647)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!163, !169, !166, !1011, !2965}
!3647 = !{!3643, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655}
!3648 = !DILocalVariable(name: "argsize", arg: 2, scope: !3644, file: !763, line: 801, type: !166)
!3649 = !DILocalVariable(name: "size", arg: 3, scope: !3644, file: !763, line: 801, type: !1011)
!3650 = !DILocalVariable(name: "o", arg: 4, scope: !3644, file: !763, line: 802, type: !2965)
!3651 = !DILocalVariable(name: "p", scope: !3644, file: !763, line: 804, type: !2965)
!3652 = !DILocalVariable(name: "saved_errno", scope: !3644, file: !763, line: 805, type: !122)
!3653 = !DILocalVariable(name: "flags", scope: !3644, file: !763, line: 807, type: !122)
!3654 = !DILocalVariable(name: "bufsize", scope: !3644, file: !763, line: 808, type: !166)
!3655 = !DILocalVariable(name: "buf", scope: !3644, file: !763, line: 812, type: !163)
!3656 = !DILocation(line: 0, scope: !3644, inlinedAt: !3657)
!3657 = distinct !DILocation(line: 791, column: 10, scope: !3635)
!3658 = !DILocation(line: 804, column: 37, scope: !3644, inlinedAt: !3657)
!3659 = !DILocation(line: 805, column: 21, scope: !3644, inlinedAt: !3657)
!3660 = !DILocation(line: 807, column: 18, scope: !3644, inlinedAt: !3657)
!3661 = !DILocation(line: 807, column: 24, scope: !3644, inlinedAt: !3657)
!3662 = !DILocation(line: 808, column: 72, scope: !3644, inlinedAt: !3657)
!3663 = !DILocation(line: 809, column: 56, scope: !3644, inlinedAt: !3657)
!3664 = !DILocation(line: 810, column: 49, scope: !3644, inlinedAt: !3657)
!3665 = !DILocation(line: 811, column: 49, scope: !3644, inlinedAt: !3657)
!3666 = !DILocation(line: 808, column: 20, scope: !3644, inlinedAt: !3657)
!3667 = !DILocation(line: 811, column: 62, scope: !3644, inlinedAt: !3657)
!3668 = !DILocation(line: 812, column: 15, scope: !3644, inlinedAt: !3657)
!3669 = !DILocation(line: 813, column: 60, scope: !3644, inlinedAt: !3657)
!3670 = !DILocation(line: 815, column: 32, scope: !3644, inlinedAt: !3657)
!3671 = !DILocation(line: 815, column: 47, scope: !3644, inlinedAt: !3657)
!3672 = !DILocation(line: 813, column: 3, scope: !3644, inlinedAt: !3657)
!3673 = !DILocation(line: 816, column: 9, scope: !3644, inlinedAt: !3657)
!3674 = !DILocation(line: 791, column: 3, scope: !3635)
!3675 = !DILocation(line: 0, scope: !3644)
!3676 = !DILocation(line: 804, column: 37, scope: !3644)
!3677 = !DILocation(line: 805, column: 21, scope: !3644)
!3678 = !DILocation(line: 807, column: 18, scope: !3644)
!3679 = !DILocation(line: 807, column: 27, scope: !3644)
!3680 = !DILocation(line: 807, column: 24, scope: !3644)
!3681 = !DILocation(line: 808, column: 72, scope: !3644)
!3682 = !DILocation(line: 809, column: 56, scope: !3644)
!3683 = !DILocation(line: 810, column: 49, scope: !3644)
!3684 = !DILocation(line: 811, column: 49, scope: !3644)
!3685 = !DILocation(line: 808, column: 20, scope: !3644)
!3686 = !DILocation(line: 811, column: 62, scope: !3644)
!3687 = !DILocation(line: 812, column: 15, scope: !3644)
!3688 = !DILocation(line: 813, column: 60, scope: !3644)
!3689 = !DILocation(line: 815, column: 32, scope: !3644)
!3690 = !DILocation(line: 815, column: 47, scope: !3644)
!3691 = !DILocation(line: 813, column: 3, scope: !3644)
!3692 = !DILocation(line: 816, column: 9, scope: !3644)
!3693 = !DILocation(line: 817, column: 7, scope: !3644)
!3694 = !DILocation(line: 818, column: 11, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3644, file: !763, line: 817, column: 7)
!3696 = !DILocation(line: 818, column: 5, scope: !3695)
!3697 = !DILocation(line: 819, column: 3, scope: !3644)
!3698 = distinct !DISubprogram(name: "quotearg_free", scope: !763, file: !763, line: 837, type: !718, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3699)
!3699 = !{!3700, !3701}
!3700 = !DILocalVariable(name: "sv", scope: !3698, file: !763, line: 839, type: !847)
!3701 = !DILocalVariable(name: "i", scope: !3702, file: !763, line: 840, type: !122)
!3702 = distinct !DILexicalBlock(scope: !3698, file: !763, line: 840, column: 3)
!3703 = !DILocation(line: 839, column: 24, scope: !3698)
!3704 = !DILocation(line: 0, scope: !3698)
!3705 = !DILocation(line: 0, scope: !3702)
!3706 = !DILocation(line: 840, column: 21, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3702, file: !763, line: 840, column: 3)
!3708 = !DILocation(line: 840, column: 3, scope: !3702)
!3709 = !DILocation(line: 842, column: 13, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3698, file: !763, line: 842, column: 7)
!3711 = !{!3712, !1072, i64 8}
!3712 = !{!"slotvec", !1343, i64 0, !1072, i64 8}
!3713 = !DILocation(line: 842, column: 17, scope: !3710)
!3714 = !DILocation(line: 842, column: 7, scope: !3698)
!3715 = !DILocation(line: 841, column: 17, scope: !3707)
!3716 = !DILocation(line: 841, column: 5, scope: !3707)
!3717 = !DILocation(line: 840, column: 32, scope: !3707)
!3718 = distinct !{!3718, !3708, !3719, !1200}
!3719 = !DILocation(line: 841, column: 20, scope: !3702)
!3720 = !DILocation(line: 844, column: 7, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3710, file: !763, line: 843, column: 5)
!3722 = !DILocation(line: 845, column: 21, scope: !3721)
!3723 = !{!3712, !1343, i64 0}
!3724 = !DILocation(line: 846, column: 20, scope: !3721)
!3725 = !DILocation(line: 847, column: 5, scope: !3721)
!3726 = !DILocation(line: 848, column: 10, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3698, file: !763, line: 848, column: 7)
!3728 = !DILocation(line: 848, column: 7, scope: !3698)
!3729 = !DILocation(line: 850, column: 7, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3727, file: !763, line: 849, column: 5)
!3731 = !DILocation(line: 851, column: 15, scope: !3730)
!3732 = !DILocation(line: 852, column: 5, scope: !3730)
!3733 = !DILocation(line: 853, column: 10, scope: !3698)
!3734 = !DILocation(line: 854, column: 1, scope: !3698)
!3735 = distinct !DISubprogram(name: "quotearg_n", scope: !763, file: !763, line: 919, type: !1267, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3736)
!3736 = !{!3737, !3738}
!3737 = !DILocalVariable(name: "n", arg: 1, scope: !3735, file: !763, line: 919, type: !122)
!3738 = !DILocalVariable(name: "arg", arg: 2, scope: !3735, file: !763, line: 919, type: !169)
!3739 = !DILocation(line: 0, scope: !3735)
!3740 = !DILocation(line: 921, column: 10, scope: !3735)
!3741 = !DILocation(line: 921, column: 3, scope: !3735)
!3742 = distinct !DISubprogram(name: "quotearg_n_options", scope: !763, file: !763, line: 866, type: !3743, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3745)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!163, !122, !169, !166, !2965}
!3745 = !{!3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3756, !3757, !3759, !3760, !3761}
!3746 = !DILocalVariable(name: "n", arg: 1, scope: !3742, file: !763, line: 866, type: !122)
!3747 = !DILocalVariable(name: "arg", arg: 2, scope: !3742, file: !763, line: 866, type: !169)
!3748 = !DILocalVariable(name: "argsize", arg: 3, scope: !3742, file: !763, line: 866, type: !166)
!3749 = !DILocalVariable(name: "options", arg: 4, scope: !3742, file: !763, line: 867, type: !2965)
!3750 = !DILocalVariable(name: "saved_errno", scope: !3742, file: !763, line: 869, type: !122)
!3751 = !DILocalVariable(name: "sv", scope: !3742, file: !763, line: 871, type: !847)
!3752 = !DILocalVariable(name: "nslots_max", scope: !3742, file: !763, line: 873, type: !122)
!3753 = !DILocalVariable(name: "preallocated", scope: !3754, file: !763, line: 879, type: !231)
!3754 = distinct !DILexicalBlock(scope: !3755, file: !763, line: 878, column: 5)
!3755 = distinct !DILexicalBlock(scope: !3742, file: !763, line: 877, column: 7)
!3756 = !DILocalVariable(name: "new_nslots", scope: !3754, file: !763, line: 880, type: !528)
!3757 = !DILocalVariable(name: "size", scope: !3758, file: !763, line: 891, type: !166)
!3758 = distinct !DILexicalBlock(scope: !3742, file: !763, line: 890, column: 3)
!3759 = !DILocalVariable(name: "val", scope: !3758, file: !763, line: 892, type: !163)
!3760 = !DILocalVariable(name: "flags", scope: !3758, file: !763, line: 894, type: !122)
!3761 = !DILocalVariable(name: "qsize", scope: !3758, file: !763, line: 895, type: !166)
!3762 = !DILocation(line: 0, scope: !3742)
!3763 = !DILocation(line: 869, column: 21, scope: !3742)
!3764 = !DILocation(line: 871, column: 24, scope: !3742)
!3765 = !DILocation(line: 874, column: 17, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3742, file: !763, line: 874, column: 7)
!3767 = !DILocation(line: 875, column: 5, scope: !3766)
!3768 = !DILocation(line: 877, column: 7, scope: !3755)
!3769 = !DILocation(line: 877, column: 14, scope: !3755)
!3770 = !DILocation(line: 877, column: 7, scope: !3742)
!3771 = !DILocation(line: 879, column: 31, scope: !3754)
!3772 = !DILocation(line: 0, scope: !3754)
!3773 = !DILocation(line: 880, column: 7, scope: !3754)
!3774 = !DILocation(line: 880, column: 26, scope: !3754)
!3775 = !DILocation(line: 880, column: 13, scope: !3754)
!3776 = !DILocation(line: 882, column: 31, scope: !3754)
!3777 = !DILocation(line: 883, column: 33, scope: !3754)
!3778 = !DILocation(line: 883, column: 42, scope: !3754)
!3779 = !DILocation(line: 883, column: 31, scope: !3754)
!3780 = !DILocation(line: 882, column: 22, scope: !3754)
!3781 = !DILocation(line: 882, column: 15, scope: !3754)
!3782 = !DILocation(line: 884, column: 11, scope: !3754)
!3783 = !DILocation(line: 885, column: 15, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3754, file: !763, line: 884, column: 11)
!3785 = !{i64 0, i64 8, !1342, i64 8, i64 8, !1071}
!3786 = !DILocation(line: 885, column: 9, scope: !3784)
!3787 = !DILocation(line: 886, column: 20, scope: !3754)
!3788 = !DILocation(line: 886, column: 18, scope: !3754)
!3789 = !DILocation(line: 886, column: 32, scope: !3754)
!3790 = !DILocation(line: 886, column: 43, scope: !3754)
!3791 = !DILocation(line: 886, column: 53, scope: !3754)
!3792 = !DILocation(line: 0, scope: !3175, inlinedAt: !3793)
!3793 = distinct !DILocation(line: 886, column: 7, scope: !3754)
!3794 = !DILocation(line: 59, column: 10, scope: !3175, inlinedAt: !3793)
!3795 = !DILocation(line: 887, column: 16, scope: !3754)
!3796 = !DILocation(line: 887, column: 14, scope: !3754)
!3797 = !DILocation(line: 888, column: 5, scope: !3755)
!3798 = !DILocation(line: 888, column: 5, scope: !3754)
!3799 = !DILocation(line: 891, column: 19, scope: !3758)
!3800 = !DILocation(line: 891, column: 25, scope: !3758)
!3801 = !DILocation(line: 0, scope: !3758)
!3802 = !DILocation(line: 892, column: 23, scope: !3758)
!3803 = !DILocation(line: 894, column: 26, scope: !3758)
!3804 = !DILocation(line: 894, column: 32, scope: !3758)
!3805 = !DILocation(line: 896, column: 55, scope: !3758)
!3806 = !DILocation(line: 897, column: 55, scope: !3758)
!3807 = !DILocation(line: 898, column: 55, scope: !3758)
!3808 = !DILocation(line: 899, column: 55, scope: !3758)
!3809 = !DILocation(line: 895, column: 20, scope: !3758)
!3810 = !DILocation(line: 901, column: 14, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3758, file: !763, line: 901, column: 9)
!3812 = !DILocation(line: 901, column: 9, scope: !3758)
!3813 = !DILocation(line: 903, column: 35, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3811, file: !763, line: 902, column: 7)
!3815 = !DILocation(line: 903, column: 20, scope: !3814)
!3816 = !DILocation(line: 904, column: 17, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3814, file: !763, line: 904, column: 13)
!3818 = !DILocation(line: 904, column: 13, scope: !3814)
!3819 = !DILocation(line: 905, column: 11, scope: !3817)
!3820 = !DILocation(line: 906, column: 27, scope: !3814)
!3821 = !DILocation(line: 906, column: 19, scope: !3814)
!3822 = !DILocation(line: 907, column: 69, scope: !3814)
!3823 = !DILocation(line: 909, column: 44, scope: !3814)
!3824 = !DILocation(line: 910, column: 44, scope: !3814)
!3825 = !DILocation(line: 907, column: 9, scope: !3814)
!3826 = !DILocation(line: 911, column: 7, scope: !3814)
!3827 = !DILocation(line: 913, column: 11, scope: !3758)
!3828 = !DILocation(line: 914, column: 5, scope: !3758)
!3829 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !763, file: !763, line: 925, type: !3830, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3832)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!163, !122, !169, !166}
!3832 = !{!3833, !3834, !3835}
!3833 = !DILocalVariable(name: "n", arg: 1, scope: !3829, file: !763, line: 925, type: !122)
!3834 = !DILocalVariable(name: "arg", arg: 2, scope: !3829, file: !763, line: 925, type: !169)
!3835 = !DILocalVariable(name: "argsize", arg: 3, scope: !3829, file: !763, line: 925, type: !166)
!3836 = !DILocation(line: 0, scope: !3829)
!3837 = !DILocation(line: 927, column: 10, scope: !3829)
!3838 = !DILocation(line: 927, column: 3, scope: !3829)
!3839 = distinct !DISubprogram(name: "quotearg", scope: !763, file: !763, line: 931, type: !1276, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3840)
!3840 = !{!3841}
!3841 = !DILocalVariable(name: "arg", arg: 1, scope: !3839, file: !763, line: 931, type: !169)
!3842 = !DILocation(line: 0, scope: !3839)
!3843 = !DILocation(line: 0, scope: !3735, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 933, column: 10, scope: !3839)
!3845 = !DILocation(line: 921, column: 10, scope: !3735, inlinedAt: !3844)
!3846 = !DILocation(line: 933, column: 3, scope: !3839)
!3847 = distinct !DISubprogram(name: "quotearg_mem", scope: !763, file: !763, line: 937, type: !3848, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3850)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!163, !169, !166}
!3850 = !{!3851, !3852}
!3851 = !DILocalVariable(name: "arg", arg: 1, scope: !3847, file: !763, line: 937, type: !169)
!3852 = !DILocalVariable(name: "argsize", arg: 2, scope: !3847, file: !763, line: 937, type: !166)
!3853 = !DILocation(line: 0, scope: !3847)
!3854 = !DILocation(line: 0, scope: !3829, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 939, column: 10, scope: !3847)
!3856 = !DILocation(line: 927, column: 10, scope: !3829, inlinedAt: !3855)
!3857 = !DILocation(line: 939, column: 3, scope: !3847)
!3858 = distinct !DISubprogram(name: "quotearg_n_style", scope: !763, file: !763, line: 943, type: !3859, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3861)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!163, !122, !126, !169}
!3861 = !{!3862, !3863, !3864, !3865}
!3862 = !DILocalVariable(name: "n", arg: 1, scope: !3858, file: !763, line: 943, type: !122)
!3863 = !DILocalVariable(name: "s", arg: 2, scope: !3858, file: !763, line: 943, type: !126)
!3864 = !DILocalVariable(name: "arg", arg: 3, scope: !3858, file: !763, line: 943, type: !169)
!3865 = !DILocalVariable(name: "o", scope: !3858, file: !763, line: 945, type: !2966)
!3866 = !DILocation(line: 0, scope: !3858)
!3867 = !DILocation(line: 945, column: 3, scope: !3858)
!3868 = !DILocation(line: 945, column: 32, scope: !3858)
!3869 = !{!3870}
!3870 = distinct !{!3870, !3871, !"quoting_options_from_style: argument 0"}
!3871 = distinct !{!3871, !"quoting_options_from_style"}
!3872 = !DILocation(line: 945, column: 36, scope: !3858)
!3873 = !DILocalVariable(name: "style", arg: 1, scope: !3874, file: !763, line: 183, type: !126)
!3874 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !763, file: !763, line: 183, type: !3875, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3877)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!799, !126}
!3877 = !{!3873, !3878}
!3878 = !DILocalVariable(name: "o", scope: !3874, file: !763, line: 185, type: !799)
!3879 = !DILocation(line: 0, scope: !3874, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 945, column: 36, scope: !3858)
!3881 = !DILocation(line: 185, column: 26, scope: !3874, inlinedAt: !3880)
!3882 = !DILocation(line: 186, column: 13, scope: !3883, inlinedAt: !3880)
!3883 = distinct !DILexicalBlock(scope: !3874, file: !763, line: 186, column: 7)
!3884 = !DILocation(line: 186, column: 7, scope: !3874, inlinedAt: !3880)
!3885 = !DILocation(line: 187, column: 5, scope: !3883, inlinedAt: !3880)
!3886 = !DILocation(line: 188, column: 11, scope: !3874, inlinedAt: !3880)
!3887 = !DILocation(line: 946, column: 10, scope: !3858)
!3888 = !DILocation(line: 947, column: 1, scope: !3858)
!3889 = !DILocation(line: 946, column: 3, scope: !3858)
!3890 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !763, file: !763, line: 950, type: !3891, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3893)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!163, !122, !126, !169, !166}
!3893 = !{!3894, !3895, !3896, !3897, !3898}
!3894 = !DILocalVariable(name: "n", arg: 1, scope: !3890, file: !763, line: 950, type: !122)
!3895 = !DILocalVariable(name: "s", arg: 2, scope: !3890, file: !763, line: 950, type: !126)
!3896 = !DILocalVariable(name: "arg", arg: 3, scope: !3890, file: !763, line: 951, type: !169)
!3897 = !DILocalVariable(name: "argsize", arg: 4, scope: !3890, file: !763, line: 951, type: !166)
!3898 = !DILocalVariable(name: "o", scope: !3890, file: !763, line: 953, type: !2966)
!3899 = !DILocation(line: 0, scope: !3890)
!3900 = !DILocation(line: 953, column: 3, scope: !3890)
!3901 = !DILocation(line: 953, column: 32, scope: !3890)
!3902 = !{!3903}
!3903 = distinct !{!3903, !3904, !"quoting_options_from_style: argument 0"}
!3904 = distinct !{!3904, !"quoting_options_from_style"}
!3905 = !DILocation(line: 953, column: 36, scope: !3890)
!3906 = !DILocation(line: 0, scope: !3874, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 953, column: 36, scope: !3890)
!3908 = !DILocation(line: 185, column: 26, scope: !3874, inlinedAt: !3907)
!3909 = !DILocation(line: 186, column: 13, scope: !3883, inlinedAt: !3907)
!3910 = !DILocation(line: 186, column: 7, scope: !3874, inlinedAt: !3907)
!3911 = !DILocation(line: 187, column: 5, scope: !3883, inlinedAt: !3907)
!3912 = !DILocation(line: 188, column: 11, scope: !3874, inlinedAt: !3907)
!3913 = !DILocation(line: 954, column: 10, scope: !3890)
!3914 = !DILocation(line: 955, column: 1, scope: !3890)
!3915 = !DILocation(line: 954, column: 3, scope: !3890)
!3916 = distinct !DISubprogram(name: "quotearg_style", scope: !763, file: !763, line: 958, type: !3917, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3919)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!163, !126, !169}
!3919 = !{!3920, !3921}
!3920 = !DILocalVariable(name: "s", arg: 1, scope: !3916, file: !763, line: 958, type: !126)
!3921 = !DILocalVariable(name: "arg", arg: 2, scope: !3916, file: !763, line: 958, type: !169)
!3922 = !DILocation(line: 0, scope: !3916)
!3923 = !DILocation(line: 0, scope: !3858, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 960, column: 10, scope: !3916)
!3925 = !DILocation(line: 945, column: 3, scope: !3858, inlinedAt: !3924)
!3926 = !DILocation(line: 945, column: 32, scope: !3858, inlinedAt: !3924)
!3927 = !{!3928}
!3928 = distinct !{!3928, !3929, !"quoting_options_from_style: argument 0"}
!3929 = distinct !{!3929, !"quoting_options_from_style"}
!3930 = !DILocation(line: 945, column: 36, scope: !3858, inlinedAt: !3924)
!3931 = !DILocation(line: 0, scope: !3874, inlinedAt: !3932)
!3932 = distinct !DILocation(line: 945, column: 36, scope: !3858, inlinedAt: !3924)
!3933 = !DILocation(line: 185, column: 26, scope: !3874, inlinedAt: !3932)
!3934 = !DILocation(line: 186, column: 13, scope: !3883, inlinedAt: !3932)
!3935 = !DILocation(line: 186, column: 7, scope: !3874, inlinedAt: !3932)
!3936 = !DILocation(line: 187, column: 5, scope: !3883, inlinedAt: !3932)
!3937 = !DILocation(line: 188, column: 11, scope: !3874, inlinedAt: !3932)
!3938 = !DILocation(line: 946, column: 10, scope: !3858, inlinedAt: !3924)
!3939 = !DILocation(line: 947, column: 1, scope: !3858, inlinedAt: !3924)
!3940 = !DILocation(line: 960, column: 3, scope: !3916)
!3941 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !763, file: !763, line: 964, type: !3942, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3944)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!163, !126, !169, !166}
!3944 = !{!3945, !3946, !3947}
!3945 = !DILocalVariable(name: "s", arg: 1, scope: !3941, file: !763, line: 964, type: !126)
!3946 = !DILocalVariable(name: "arg", arg: 2, scope: !3941, file: !763, line: 964, type: !169)
!3947 = !DILocalVariable(name: "argsize", arg: 3, scope: !3941, file: !763, line: 964, type: !166)
!3948 = !DILocation(line: 0, scope: !3941)
!3949 = !DILocation(line: 0, scope: !3890, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 966, column: 10, scope: !3941)
!3951 = !DILocation(line: 953, column: 3, scope: !3890, inlinedAt: !3950)
!3952 = !DILocation(line: 953, column: 32, scope: !3890, inlinedAt: !3950)
!3953 = !{!3954}
!3954 = distinct !{!3954, !3955, !"quoting_options_from_style: argument 0"}
!3955 = distinct !{!3955, !"quoting_options_from_style"}
!3956 = !DILocation(line: 953, column: 36, scope: !3890, inlinedAt: !3950)
!3957 = !DILocation(line: 0, scope: !3874, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 953, column: 36, scope: !3890, inlinedAt: !3950)
!3959 = !DILocation(line: 185, column: 26, scope: !3874, inlinedAt: !3958)
!3960 = !DILocation(line: 186, column: 13, scope: !3883, inlinedAt: !3958)
!3961 = !DILocation(line: 186, column: 7, scope: !3874, inlinedAt: !3958)
!3962 = !DILocation(line: 187, column: 5, scope: !3883, inlinedAt: !3958)
!3963 = !DILocation(line: 188, column: 11, scope: !3874, inlinedAt: !3958)
!3964 = !DILocation(line: 954, column: 10, scope: !3890, inlinedAt: !3950)
!3965 = !DILocation(line: 955, column: 1, scope: !3890, inlinedAt: !3950)
!3966 = !DILocation(line: 966, column: 3, scope: !3941)
!3967 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !763, file: !763, line: 970, type: !3968, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3970)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!163, !169, !166, !4}
!3970 = !{!3971, !3972, !3973, !3974}
!3971 = !DILocalVariable(name: "arg", arg: 1, scope: !3967, file: !763, line: 970, type: !169)
!3972 = !DILocalVariable(name: "argsize", arg: 2, scope: !3967, file: !763, line: 970, type: !166)
!3973 = !DILocalVariable(name: "ch", arg: 3, scope: !3967, file: !763, line: 970, type: !4)
!3974 = !DILocalVariable(name: "options", scope: !3967, file: !763, line: 972, type: !799)
!3975 = !DILocation(line: 0, scope: !3967)
!3976 = !DILocation(line: 972, column: 3, scope: !3967)
!3977 = !DILocation(line: 972, column: 26, scope: !3967)
!3978 = !DILocation(line: 973, column: 13, scope: !3967)
!3979 = !{i64 0, i64 4, !1162, i64 4, i64 4, !1153, i64 8, i64 32, !1162, i64 40, i64 8, !1071, i64 48, i64 8, !1071}
!3980 = !DILocation(line: 0, scope: !2985, inlinedAt: !3981)
!3981 = distinct !DILocation(line: 974, column: 3, scope: !3967)
!3982 = !DILocation(line: 147, column: 41, scope: !2985, inlinedAt: !3981)
!3983 = !DILocation(line: 147, column: 62, scope: !2985, inlinedAt: !3981)
!3984 = !DILocation(line: 147, column: 57, scope: !2985, inlinedAt: !3981)
!3985 = !DILocation(line: 148, column: 15, scope: !2985, inlinedAt: !3981)
!3986 = !DILocation(line: 149, column: 21, scope: !2985, inlinedAt: !3981)
!3987 = !DILocation(line: 149, column: 24, scope: !2985, inlinedAt: !3981)
!3988 = !DILocation(line: 150, column: 19, scope: !2985, inlinedAt: !3981)
!3989 = !DILocation(line: 150, column: 24, scope: !2985, inlinedAt: !3981)
!3990 = !DILocation(line: 150, column: 6, scope: !2985, inlinedAt: !3981)
!3991 = !DILocation(line: 975, column: 10, scope: !3967)
!3992 = !DILocation(line: 976, column: 1, scope: !3967)
!3993 = !DILocation(line: 975, column: 3, scope: !3967)
!3994 = distinct !DISubprogram(name: "quotearg_char", scope: !763, file: !763, line: 979, type: !3995, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3997)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!163, !169, !4}
!3997 = !{!3998, !3999}
!3998 = !DILocalVariable(name: "arg", arg: 1, scope: !3994, file: !763, line: 979, type: !169)
!3999 = !DILocalVariable(name: "ch", arg: 2, scope: !3994, file: !763, line: 979, type: !4)
!4000 = !DILocation(line: 0, scope: !3994)
!4001 = !DILocation(line: 0, scope: !3967, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 981, column: 10, scope: !3994)
!4003 = !DILocation(line: 972, column: 3, scope: !3967, inlinedAt: !4002)
!4004 = !DILocation(line: 972, column: 26, scope: !3967, inlinedAt: !4002)
!4005 = !DILocation(line: 973, column: 13, scope: !3967, inlinedAt: !4002)
!4006 = !DILocation(line: 0, scope: !2985, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 974, column: 3, scope: !3967, inlinedAt: !4002)
!4008 = !DILocation(line: 147, column: 41, scope: !2985, inlinedAt: !4007)
!4009 = !DILocation(line: 147, column: 62, scope: !2985, inlinedAt: !4007)
!4010 = !DILocation(line: 147, column: 57, scope: !2985, inlinedAt: !4007)
!4011 = !DILocation(line: 148, column: 15, scope: !2985, inlinedAt: !4007)
!4012 = !DILocation(line: 149, column: 21, scope: !2985, inlinedAt: !4007)
!4013 = !DILocation(line: 149, column: 24, scope: !2985, inlinedAt: !4007)
!4014 = !DILocation(line: 150, column: 19, scope: !2985, inlinedAt: !4007)
!4015 = !DILocation(line: 150, column: 24, scope: !2985, inlinedAt: !4007)
!4016 = !DILocation(line: 150, column: 6, scope: !2985, inlinedAt: !4007)
!4017 = !DILocation(line: 975, column: 10, scope: !3967, inlinedAt: !4002)
!4018 = !DILocation(line: 976, column: 1, scope: !3967, inlinedAt: !4002)
!4019 = !DILocation(line: 981, column: 3, scope: !3994)
!4020 = distinct !DISubprogram(name: "quotearg_colon", scope: !763, file: !763, line: 985, type: !1276, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4021)
!4021 = !{!4022}
!4022 = !DILocalVariable(name: "arg", arg: 1, scope: !4020, file: !763, line: 985, type: !169)
!4023 = !DILocation(line: 0, scope: !4020)
!4024 = !DILocation(line: 0, scope: !3994, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 987, column: 10, scope: !4020)
!4026 = !DILocation(line: 0, scope: !3967, inlinedAt: !4027)
!4027 = distinct !DILocation(line: 981, column: 10, scope: !3994, inlinedAt: !4025)
!4028 = !DILocation(line: 972, column: 3, scope: !3967, inlinedAt: !4027)
!4029 = !DILocation(line: 972, column: 26, scope: !3967, inlinedAt: !4027)
!4030 = !DILocation(line: 973, column: 13, scope: !3967, inlinedAt: !4027)
!4031 = !DILocation(line: 0, scope: !2985, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 974, column: 3, scope: !3967, inlinedAt: !4027)
!4033 = !DILocation(line: 147, column: 57, scope: !2985, inlinedAt: !4032)
!4034 = !DILocation(line: 149, column: 21, scope: !2985, inlinedAt: !4032)
!4035 = !DILocation(line: 150, column: 6, scope: !2985, inlinedAt: !4032)
!4036 = !DILocation(line: 975, column: 10, scope: !3967, inlinedAt: !4027)
!4037 = !DILocation(line: 976, column: 1, scope: !3967, inlinedAt: !4027)
!4038 = !DILocation(line: 987, column: 3, scope: !4020)
!4039 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !763, file: !763, line: 991, type: !3848, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4040)
!4040 = !{!4041, !4042}
!4041 = !DILocalVariable(name: "arg", arg: 1, scope: !4039, file: !763, line: 991, type: !169)
!4042 = !DILocalVariable(name: "argsize", arg: 2, scope: !4039, file: !763, line: 991, type: !166)
!4043 = !DILocation(line: 0, scope: !4039)
!4044 = !DILocation(line: 0, scope: !3967, inlinedAt: !4045)
!4045 = distinct !DILocation(line: 993, column: 10, scope: !4039)
!4046 = !DILocation(line: 972, column: 3, scope: !3967, inlinedAt: !4045)
!4047 = !DILocation(line: 972, column: 26, scope: !3967, inlinedAt: !4045)
!4048 = !DILocation(line: 973, column: 13, scope: !3967, inlinedAt: !4045)
!4049 = !DILocation(line: 0, scope: !2985, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 974, column: 3, scope: !3967, inlinedAt: !4045)
!4051 = !DILocation(line: 147, column: 57, scope: !2985, inlinedAt: !4050)
!4052 = !DILocation(line: 149, column: 21, scope: !2985, inlinedAt: !4050)
!4053 = !DILocation(line: 150, column: 6, scope: !2985, inlinedAt: !4050)
!4054 = !DILocation(line: 975, column: 10, scope: !3967, inlinedAt: !4045)
!4055 = !DILocation(line: 976, column: 1, scope: !3967, inlinedAt: !4045)
!4056 = !DILocation(line: 993, column: 3, scope: !4039)
!4057 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !763, file: !763, line: 997, type: !3859, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4058)
!4058 = !{!4059, !4060, !4061, !4062}
!4059 = !DILocalVariable(name: "n", arg: 1, scope: !4057, file: !763, line: 997, type: !122)
!4060 = !DILocalVariable(name: "s", arg: 2, scope: !4057, file: !763, line: 997, type: !126)
!4061 = !DILocalVariable(name: "arg", arg: 3, scope: !4057, file: !763, line: 997, type: !169)
!4062 = !DILocalVariable(name: "options", scope: !4057, file: !763, line: 999, type: !799)
!4063 = !DILocation(line: 185, column: 26, scope: !3874, inlinedAt: !4064)
!4064 = distinct !DILocation(line: 1000, column: 13, scope: !4057)
!4065 = !DILocation(line: 0, scope: !4057)
!4066 = !DILocation(line: 999, column: 3, scope: !4057)
!4067 = !DILocation(line: 999, column: 26, scope: !4057)
!4068 = !DILocation(line: 0, scope: !3874, inlinedAt: !4064)
!4069 = !DILocation(line: 186, column: 13, scope: !3883, inlinedAt: !4064)
!4070 = !DILocation(line: 186, column: 7, scope: !3874, inlinedAt: !4064)
!4071 = !DILocation(line: 187, column: 5, scope: !3883, inlinedAt: !4064)
!4072 = !{!4073}
!4073 = distinct !{!4073, !4074, !"quoting_options_from_style: argument 0"}
!4074 = distinct !{!4074, !"quoting_options_from_style"}
!4075 = !DILocation(line: 1000, column: 13, scope: !4057)
!4076 = !DILocation(line: 0, scope: !2985, inlinedAt: !4077)
!4077 = distinct !DILocation(line: 1001, column: 3, scope: !4057)
!4078 = !DILocation(line: 147, column: 57, scope: !2985, inlinedAt: !4077)
!4079 = !DILocation(line: 149, column: 21, scope: !2985, inlinedAt: !4077)
!4080 = !DILocation(line: 150, column: 6, scope: !2985, inlinedAt: !4077)
!4081 = !DILocation(line: 1002, column: 10, scope: !4057)
!4082 = !DILocation(line: 1003, column: 1, scope: !4057)
!4083 = !DILocation(line: 1002, column: 3, scope: !4057)
!4084 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !763, file: !763, line: 1006, type: !4085, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4087)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!163, !122, !169, !169, !169}
!4087 = !{!4088, !4089, !4090, !4091}
!4088 = !DILocalVariable(name: "n", arg: 1, scope: !4084, file: !763, line: 1006, type: !122)
!4089 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4084, file: !763, line: 1006, type: !169)
!4090 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4084, file: !763, line: 1007, type: !169)
!4091 = !DILocalVariable(name: "arg", arg: 4, scope: !4084, file: !763, line: 1007, type: !169)
!4092 = !DILocation(line: 0, scope: !4084)
!4093 = !DILocalVariable(name: "n", arg: 1, scope: !4094, file: !763, line: 1014, type: !122)
!4094 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !763, file: !763, line: 1014, type: !4095, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4097)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!163, !122, !169, !169, !169, !166}
!4097 = !{!4093, !4098, !4099, !4100, !4101, !4102}
!4098 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4094, file: !763, line: 1014, type: !169)
!4099 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4094, file: !763, line: 1015, type: !169)
!4100 = !DILocalVariable(name: "arg", arg: 4, scope: !4094, file: !763, line: 1016, type: !169)
!4101 = !DILocalVariable(name: "argsize", arg: 5, scope: !4094, file: !763, line: 1016, type: !166)
!4102 = !DILocalVariable(name: "o", scope: !4094, file: !763, line: 1018, type: !799)
!4103 = !DILocation(line: 0, scope: !4094, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 1009, column: 10, scope: !4084)
!4105 = !DILocation(line: 1018, column: 3, scope: !4094, inlinedAt: !4104)
!4106 = !DILocation(line: 1018, column: 26, scope: !4094, inlinedAt: !4104)
!4107 = !DILocation(line: 1018, column: 30, scope: !4094, inlinedAt: !4104)
!4108 = !DILocation(line: 0, scope: !3025, inlinedAt: !4109)
!4109 = distinct !DILocation(line: 1019, column: 3, scope: !4094, inlinedAt: !4104)
!4110 = !DILocation(line: 174, column: 12, scope: !3025, inlinedAt: !4109)
!4111 = !DILocation(line: 175, column: 8, scope: !3038, inlinedAt: !4109)
!4112 = !DILocation(line: 175, column: 19, scope: !3038, inlinedAt: !4109)
!4113 = !DILocation(line: 176, column: 5, scope: !3038, inlinedAt: !4109)
!4114 = !DILocation(line: 177, column: 6, scope: !3025, inlinedAt: !4109)
!4115 = !DILocation(line: 177, column: 17, scope: !3025, inlinedAt: !4109)
!4116 = !DILocation(line: 178, column: 6, scope: !3025, inlinedAt: !4109)
!4117 = !DILocation(line: 178, column: 18, scope: !3025, inlinedAt: !4109)
!4118 = !DILocation(line: 1020, column: 10, scope: !4094, inlinedAt: !4104)
!4119 = !DILocation(line: 1021, column: 1, scope: !4094, inlinedAt: !4104)
!4120 = !DILocation(line: 1009, column: 3, scope: !4084)
!4121 = !DILocation(line: 0, scope: !4094)
!4122 = !DILocation(line: 1018, column: 3, scope: !4094)
!4123 = !DILocation(line: 1018, column: 26, scope: !4094)
!4124 = !DILocation(line: 1018, column: 30, scope: !4094)
!4125 = !DILocation(line: 0, scope: !3025, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 1019, column: 3, scope: !4094)
!4127 = !DILocation(line: 174, column: 12, scope: !3025, inlinedAt: !4126)
!4128 = !DILocation(line: 175, column: 8, scope: !3038, inlinedAt: !4126)
!4129 = !DILocation(line: 175, column: 19, scope: !3038, inlinedAt: !4126)
!4130 = !DILocation(line: 176, column: 5, scope: !3038, inlinedAt: !4126)
!4131 = !DILocation(line: 177, column: 6, scope: !3025, inlinedAt: !4126)
!4132 = !DILocation(line: 177, column: 17, scope: !3025, inlinedAt: !4126)
!4133 = !DILocation(line: 178, column: 6, scope: !3025, inlinedAt: !4126)
!4134 = !DILocation(line: 178, column: 18, scope: !3025, inlinedAt: !4126)
!4135 = !DILocation(line: 1020, column: 10, scope: !4094)
!4136 = !DILocation(line: 1021, column: 1, scope: !4094)
!4137 = !DILocation(line: 1020, column: 3, scope: !4094)
!4138 = distinct !DISubprogram(name: "quotearg_custom", scope: !763, file: !763, line: 1024, type: !4139, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4141)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!163, !169, !169, !169}
!4141 = !{!4142, !4143, !4144}
!4142 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4138, file: !763, line: 1024, type: !169)
!4143 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4138, file: !763, line: 1024, type: !169)
!4144 = !DILocalVariable(name: "arg", arg: 3, scope: !4138, file: !763, line: 1025, type: !169)
!4145 = !DILocation(line: 0, scope: !4138)
!4146 = !DILocation(line: 0, scope: !4084, inlinedAt: !4147)
!4147 = distinct !DILocation(line: 1027, column: 10, scope: !4138)
!4148 = !DILocation(line: 0, scope: !4094, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 1009, column: 10, scope: !4084, inlinedAt: !4147)
!4150 = !DILocation(line: 1018, column: 3, scope: !4094, inlinedAt: !4149)
!4151 = !DILocation(line: 1018, column: 26, scope: !4094, inlinedAt: !4149)
!4152 = !DILocation(line: 1018, column: 30, scope: !4094, inlinedAt: !4149)
!4153 = !DILocation(line: 0, scope: !3025, inlinedAt: !4154)
!4154 = distinct !DILocation(line: 1019, column: 3, scope: !4094, inlinedAt: !4149)
!4155 = !DILocation(line: 174, column: 12, scope: !3025, inlinedAt: !4154)
!4156 = !DILocation(line: 175, column: 8, scope: !3038, inlinedAt: !4154)
!4157 = !DILocation(line: 175, column: 19, scope: !3038, inlinedAt: !4154)
!4158 = !DILocation(line: 176, column: 5, scope: !3038, inlinedAt: !4154)
!4159 = !DILocation(line: 177, column: 6, scope: !3025, inlinedAt: !4154)
!4160 = !DILocation(line: 177, column: 17, scope: !3025, inlinedAt: !4154)
!4161 = !DILocation(line: 178, column: 6, scope: !3025, inlinedAt: !4154)
!4162 = !DILocation(line: 178, column: 18, scope: !3025, inlinedAt: !4154)
!4163 = !DILocation(line: 1020, column: 10, scope: !4094, inlinedAt: !4149)
!4164 = !DILocation(line: 1021, column: 1, scope: !4094, inlinedAt: !4149)
!4165 = !DILocation(line: 1027, column: 3, scope: !4138)
!4166 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !763, file: !763, line: 1031, type: !4167, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4169)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!163, !169, !169, !169, !166}
!4169 = !{!4170, !4171, !4172, !4173}
!4170 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4166, file: !763, line: 1031, type: !169)
!4171 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4166, file: !763, line: 1031, type: !169)
!4172 = !DILocalVariable(name: "arg", arg: 3, scope: !4166, file: !763, line: 1032, type: !169)
!4173 = !DILocalVariable(name: "argsize", arg: 4, scope: !4166, file: !763, line: 1032, type: !166)
!4174 = !DILocation(line: 0, scope: !4166)
!4175 = !DILocation(line: 0, scope: !4094, inlinedAt: !4176)
!4176 = distinct !DILocation(line: 1034, column: 10, scope: !4166)
!4177 = !DILocation(line: 1018, column: 3, scope: !4094, inlinedAt: !4176)
!4178 = !DILocation(line: 1018, column: 26, scope: !4094, inlinedAt: !4176)
!4179 = !DILocation(line: 1018, column: 30, scope: !4094, inlinedAt: !4176)
!4180 = !DILocation(line: 0, scope: !3025, inlinedAt: !4181)
!4181 = distinct !DILocation(line: 1019, column: 3, scope: !4094, inlinedAt: !4176)
!4182 = !DILocation(line: 174, column: 12, scope: !3025, inlinedAt: !4181)
!4183 = !DILocation(line: 175, column: 8, scope: !3038, inlinedAt: !4181)
!4184 = !DILocation(line: 175, column: 19, scope: !3038, inlinedAt: !4181)
!4185 = !DILocation(line: 176, column: 5, scope: !3038, inlinedAt: !4181)
!4186 = !DILocation(line: 177, column: 6, scope: !3025, inlinedAt: !4181)
!4187 = !DILocation(line: 177, column: 17, scope: !3025, inlinedAt: !4181)
!4188 = !DILocation(line: 178, column: 6, scope: !3025, inlinedAt: !4181)
!4189 = !DILocation(line: 178, column: 18, scope: !3025, inlinedAt: !4181)
!4190 = !DILocation(line: 1020, column: 10, scope: !4094, inlinedAt: !4176)
!4191 = !DILocation(line: 1021, column: 1, scope: !4094, inlinedAt: !4176)
!4192 = !DILocation(line: 1034, column: 3, scope: !4166)
!4193 = distinct !DISubprogram(name: "quote_n_mem", scope: !763, file: !763, line: 1049, type: !4194, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4196)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!169, !122, !169, !166}
!4196 = !{!4197, !4198, !4199}
!4197 = !DILocalVariable(name: "n", arg: 1, scope: !4193, file: !763, line: 1049, type: !122)
!4198 = !DILocalVariable(name: "arg", arg: 2, scope: !4193, file: !763, line: 1049, type: !169)
!4199 = !DILocalVariable(name: "argsize", arg: 3, scope: !4193, file: !763, line: 1049, type: !166)
!4200 = !DILocation(line: 0, scope: !4193)
!4201 = !DILocation(line: 1051, column: 10, scope: !4193)
!4202 = !DILocation(line: 1051, column: 3, scope: !4193)
!4203 = distinct !DISubprogram(name: "quote_mem", scope: !763, file: !763, line: 1055, type: !4204, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4206)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!169, !169, !166}
!4206 = !{!4207, !4208}
!4207 = !DILocalVariable(name: "arg", arg: 1, scope: !4203, file: !763, line: 1055, type: !169)
!4208 = !DILocalVariable(name: "argsize", arg: 2, scope: !4203, file: !763, line: 1055, type: !166)
!4209 = !DILocation(line: 0, scope: !4203)
!4210 = !DILocation(line: 0, scope: !4193, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 1057, column: 10, scope: !4203)
!4212 = !DILocation(line: 1051, column: 10, scope: !4193, inlinedAt: !4211)
!4213 = !DILocation(line: 1057, column: 3, scope: !4203)
!4214 = distinct !DISubprogram(name: "quote_n", scope: !763, file: !763, line: 1061, type: !4215, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4217)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!169, !122, !169}
!4217 = !{!4218, !4219}
!4218 = !DILocalVariable(name: "n", arg: 1, scope: !4214, file: !763, line: 1061, type: !122)
!4219 = !DILocalVariable(name: "arg", arg: 2, scope: !4214, file: !763, line: 1061, type: !169)
!4220 = !DILocation(line: 0, scope: !4214)
!4221 = !DILocation(line: 0, scope: !4193, inlinedAt: !4222)
!4222 = distinct !DILocation(line: 1063, column: 10, scope: !4214)
!4223 = !DILocation(line: 1051, column: 10, scope: !4193, inlinedAt: !4222)
!4224 = !DILocation(line: 1063, column: 3, scope: !4214)
!4225 = distinct !DISubprogram(name: "quote", scope: !763, file: !763, line: 1067, type: !1495, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4226)
!4226 = !{!4227}
!4227 = !DILocalVariable(name: "arg", arg: 1, scope: !4225, file: !763, line: 1067, type: !169)
!4228 = !DILocation(line: 0, scope: !4225)
!4229 = !DILocation(line: 0, scope: !4214, inlinedAt: !4230)
!4230 = distinct !DILocation(line: 1069, column: 10, scope: !4225)
!4231 = !DILocation(line: 0, scope: !4193, inlinedAt: !4232)
!4232 = distinct !DILocation(line: 1063, column: 10, scope: !4214, inlinedAt: !4230)
!4233 = !DILocation(line: 1051, column: 10, scope: !4193, inlinedAt: !4232)
!4234 = !DILocation(line: 1069, column: 3, scope: !4225)
!4235 = distinct !DISubprogram(name: "str2sig", scope: !863, file: !863, line: 321, type: !4236, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4238)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!122, !169, !524}
!4238 = !{!4239, !4240}
!4239 = !DILocalVariable(name: "signame", arg: 1, scope: !4235, file: !863, line: 321, type: !169)
!4240 = !DILocalVariable(name: "signum", arg: 2, scope: !4235, file: !863, line: 321, type: !524)
!4241 = !DILocation(line: 0, scope: !4235)
!4242 = !DILocalVariable(name: "signame", arg: 1, scope: !4243, file: !863, line: 278, type: !169)
!4243 = distinct !DISubprogram(name: "str2signum", scope: !863, file: !863, line: 278, type: !2364, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4244)
!4244 = !{!4242, !4245, !4248, !4249, !4252, !4254, !4255, !4258, !4259, !4262}
!4245 = !DILocalVariable(name: "endp", scope: !4246, file: !863, line: 282, type: !163)
!4246 = distinct !DILexicalBlock(scope: !4247, file: !863, line: 281, column: 5)
!4247 = distinct !DILexicalBlock(scope: !4243, file: !863, line: 280, column: 7)
!4248 = !DILocalVariable(name: "n", scope: !4246, file: !863, line: 283, type: !174)
!4249 = !DILocalVariable(name: "i", scope: !4250, file: !863, line: 289, type: !109)
!4250 = distinct !DILexicalBlock(scope: !4251, file: !863, line: 289, column: 7)
!4251 = distinct !DILexicalBlock(scope: !4247, file: !863, line: 288, column: 5)
!4252 = !DILocalVariable(name: "rtmin", scope: !4253, file: !863, line: 294, type: !122)
!4253 = distinct !DILexicalBlock(scope: !4251, file: !863, line: 293, column: 7)
!4254 = !DILocalVariable(name: "rtmax", scope: !4253, file: !863, line: 295, type: !122)
!4255 = !DILocalVariable(name: "endp", scope: !4256, file: !863, line: 299, type: !163)
!4256 = distinct !DILexicalBlock(scope: !4257, file: !863, line: 298, column: 11)
!4257 = distinct !DILexicalBlock(scope: !4253, file: !863, line: 297, column: 13)
!4258 = !DILocalVariable(name: "n", scope: !4256, file: !863, line: 300, type: !174)
!4259 = !DILocalVariable(name: "endp", scope: !4260, file: !863, line: 306, type: !163)
!4260 = distinct !DILexicalBlock(scope: !4261, file: !863, line: 305, column: 11)
!4261 = distinct !DILexicalBlock(scope: !4257, file: !863, line: 304, column: 18)
!4262 = !DILocalVariable(name: "n", scope: !4260, file: !863, line: 307, type: !174)
!4263 = !DILocation(line: 0, scope: !4243, inlinedAt: !4264)
!4264 = distinct !DILocation(line: 323, column: 13, scope: !4235)
!4265 = !DILocation(line: 280, column: 7, scope: !4247, inlinedAt: !4264)
!4266 = !DILocation(line: 280, column: 7, scope: !4243, inlinedAt: !4264)
!4267 = !DILocation(line: 282, column: 7, scope: !4246, inlinedAt: !4264)
!4268 = !DILocation(line: 0, scope: !4246, inlinedAt: !4264)
!4269 = !DILocation(line: 283, column: 20, scope: !4246, inlinedAt: !4264)
!4270 = !DILocation(line: 284, column: 14, scope: !4271, inlinedAt: !4264)
!4271 = distinct !DILexicalBlock(scope: !4246, file: !863, line: 284, column: 11)
!4272 = !DILocation(line: 284, column: 13, scope: !4271, inlinedAt: !4264)
!4273 = !DILocation(line: 284, column: 19, scope: !4271, inlinedAt: !4264)
!4274 = !DILocation(line: 286, column: 5, scope: !4247, inlinedAt: !4264)
!4275 = !DILocation(line: 0, scope: !4250, inlinedAt: !4264)
!4276 = !DILocation(line: 290, column: 37, scope: !4277, inlinedAt: !4264)
!4277 = distinct !DILexicalBlock(scope: !4278, file: !863, line: 290, column: 13)
!4278 = distinct !DILexicalBlock(scope: !4250, file: !863, line: 289, column: 7)
!4279 = !DILocalVariable(name: "__s1", arg: 1, scope: !4280, file: !1166, line: 1359, type: !169)
!4280 = distinct !DISubprogram(name: "streq", scope: !1166, file: !1166, line: 1359, type: !1167, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4281)
!4281 = !{!4279, !4282}
!4282 = !DILocalVariable(name: "__s2", arg: 2, scope: !4280, file: !1166, line: 1359, type: !169)
!4283 = !DILocation(line: 0, scope: !4280, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 290, column: 13, scope: !4277, inlinedAt: !4264)
!4285 = !DILocation(line: 1361, column: 11, scope: !4280, inlinedAt: !4284)
!4286 = !DILocation(line: 1361, column: 10, scope: !4280, inlinedAt: !4284)
!4287 = !DILocation(line: 290, column: 13, scope: !4278, inlinedAt: !4264)
!4288 = !DILocation(line: 289, column: 54, scope: !4278, inlinedAt: !4264)
!4289 = !DILocation(line: 289, column: 34, scope: !4278, inlinedAt: !4264)
!4290 = !DILocation(line: 289, column: 7, scope: !4250, inlinedAt: !4264)
!4291 = distinct !{!4291, !4290, !4292, !1200}
!4292 = !DILocation(line: 291, column: 35, scope: !4250, inlinedAt: !4264)
!4293 = !DILocation(line: 289, column: 32, scope: !4278, inlinedAt: !4264)
!4294 = !DILocation(line: 290, column: 20, scope: !4277, inlinedAt: !4264)
!4295 = !DILocation(line: 291, column: 35, scope: !4277, inlinedAt: !4264)
!4296 = !{!4297, !1154, i64 0}
!4297 = !{!"numname", !1154, i64 0, !1073, i64 4}
!4298 = !DILocation(line: 294, column: 21, scope: !4253, inlinedAt: !4264)
!4299 = !DILocation(line: 0, scope: !4253, inlinedAt: !4264)
!4300 = !DILocation(line: 295, column: 21, scope: !4253, inlinedAt: !4264)
!4301 = !DILocation(line: 297, column: 15, scope: !4257, inlinedAt: !4264)
!4302 = !DILocation(line: 297, column: 23, scope: !4257, inlinedAt: !4264)
!4303 = !DILocation(line: 297, column: 26, scope: !4257, inlinedAt: !4264)
!4304 = !DILocation(line: 297, column: 56, scope: !4257, inlinedAt: !4264)
!4305 = !DILocation(line: 297, column: 13, scope: !4253, inlinedAt: !4264)
!4306 = !DILocation(line: 299, column: 13, scope: !4256, inlinedAt: !4264)
!4307 = !DILocation(line: 300, column: 42, scope: !4256, inlinedAt: !4264)
!4308 = !DILocation(line: 0, scope: !4256, inlinedAt: !4264)
!4309 = !DILocation(line: 300, column: 26, scope: !4256, inlinedAt: !4264)
!4310 = !DILocation(line: 301, column: 20, scope: !4311, inlinedAt: !4264)
!4311 = distinct !DILexicalBlock(scope: !4256, file: !863, line: 301, column: 17)
!4312 = !DILocation(line: 301, column: 19, scope: !4311, inlinedAt: !4264)
!4313 = !DILocation(line: 301, column: 25, scope: !4311, inlinedAt: !4264)
!4314 = !DILocation(line: 301, column: 49, scope: !4311, inlinedAt: !4264)
!4315 = !DILocation(line: 301, column: 43, scope: !4311, inlinedAt: !4264)
!4316 = !DILocation(line: 301, column: 40, scope: !4311, inlinedAt: !4264)
!4317 = !DILocation(line: 301, column: 17, scope: !4256, inlinedAt: !4264)
!4318 = !DILocation(line: 303, column: 11, scope: !4257, inlinedAt: !4264)
!4319 = !DILocation(line: 302, column: 22, scope: !4311, inlinedAt: !4264)
!4320 = !DILocation(line: 304, column: 20, scope: !4261, inlinedAt: !4264)
!4321 = !DILocation(line: 304, column: 28, scope: !4261, inlinedAt: !4264)
!4322 = !DILocation(line: 304, column: 31, scope: !4261, inlinedAt: !4264)
!4323 = !DILocation(line: 304, column: 61, scope: !4261, inlinedAt: !4264)
!4324 = !DILocation(line: 304, column: 18, scope: !4257, inlinedAt: !4264)
!4325 = !DILocation(line: 306, column: 13, scope: !4260, inlinedAt: !4264)
!4326 = !DILocation(line: 307, column: 42, scope: !4260, inlinedAt: !4264)
!4327 = !DILocation(line: 0, scope: !4260, inlinedAt: !4264)
!4328 = !DILocation(line: 307, column: 26, scope: !4260, inlinedAt: !4264)
!4329 = !DILocation(line: 308, column: 20, scope: !4330, inlinedAt: !4264)
!4330 = distinct !DILexicalBlock(scope: !4260, file: !863, line: 308, column: 17)
!4331 = !DILocation(line: 308, column: 19, scope: !4330, inlinedAt: !4264)
!4332 = !DILocation(line: 308, column: 25, scope: !4330, inlinedAt: !4264)
!4333 = !DILocation(line: 308, column: 34, scope: !4330, inlinedAt: !4264)
!4334 = !DILocation(line: 308, column: 28, scope: !4330, inlinedAt: !4264)
!4335 = !DILocation(line: 308, column: 42, scope: !4330, inlinedAt: !4264)
!4336 = !DILocation(line: 308, column: 47, scope: !4330, inlinedAt: !4264)
!4337 = !DILocation(line: 310, column: 11, scope: !4261, inlinedAt: !4264)
!4338 = !DILocation(line: 309, column: 22, scope: !4330, inlinedAt: !4264)
!4339 = !DILocation(line: 314, column: 3, scope: !4243, inlinedAt: !4264)
!4340 = !DILocation(line: 323, column: 11, scope: !4235)
!4341 = !DILocation(line: 324, column: 10, scope: !4235)
!4342 = !DILocation(line: 324, column: 3, scope: !4235)
!4343 = !DISubprogram(name: "__libc_current_sigrtmin", scope: !176, file: !176, line: 383, type: !4344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!122}
!4346 = !DISubprogram(name: "__libc_current_sigrtmax", scope: !176, file: !176, line: 385, type: !4344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!4347 = distinct !DISubprogram(name: "sig2str", scope: !863, file: !863, line: 332, type: !4348, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4350)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!122, !122, !163}
!4350 = !{!4351, !4352, !4353, !4355, !4357, !4358, !4359}
!4351 = !DILocalVariable(name: "signum", arg: 1, scope: !4347, file: !863, line: 332, type: !122)
!4352 = !DILocalVariable(name: "signame", arg: 2, scope: !4347, file: !863, line: 332, type: !163)
!4353 = !DILocalVariable(name: "i", scope: !4354, file: !863, line: 334, type: !109)
!4354 = distinct !DILexicalBlock(scope: !4347, file: !863, line: 334, column: 3)
!4355 = !DILocalVariable(name: "rtmin", scope: !4356, file: !863, line: 342, type: !122)
!4356 = distinct !DILexicalBlock(scope: !4347, file: !863, line: 341, column: 3)
!4357 = !DILocalVariable(name: "rtmax", scope: !4356, file: !863, line: 343, type: !122)
!4358 = !DILocalVariable(name: "base", scope: !4356, file: !863, line: 348, type: !122)
!4359 = !DILocalVariable(name: "delta", scope: !4356, file: !863, line: 360, type: !122)
!4360 = !DILocation(line: 0, scope: !4347)
!4361 = !DILocation(line: 0, scope: !4354)
!4362 = !DILocation(line: 334, column: 3, scope: !4354)
!4363 = !DILocation(line: 335, column: 9, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4365, file: !863, line: 335, column: 9)
!4365 = distinct !DILexicalBlock(scope: !4354, file: !863, line: 334, column: 3)
!4366 = !DILocation(line: 335, column: 26, scope: !4364)
!4367 = !DILocation(line: 335, column: 30, scope: !4364)
!4368 = !DILocation(line: 335, column: 9, scope: !4365)
!4369 = !DILocation(line: 334, column: 50, scope: !4365)
!4370 = !DILocation(line: 334, column: 30, scope: !4365)
!4371 = distinct !{!4371, !4362, !4372, !1200}
!4372 = !DILocation(line: 339, column: 7, scope: !4354)
!4373 = !DILocation(line: 334, column: 28, scope: !4365)
!4374 = !DILocation(line: 337, column: 43, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4364, file: !863, line: 336, column: 7)
!4376 = !DILocalVariable(name: "__dest", arg: 1, scope: !4377, file: !1545, line: 77, type: !2412)
!4377 = distinct !DISubprogram(name: "strcpy", scope: !1545, file: !1545, line: 77, type: !2410, scopeLine: 78, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4378)
!4378 = !{!4376, !4379}
!4379 = !DILocalVariable(name: "__src", arg: 2, scope: !4377, file: !1545, line: 77, type: !1144)
!4380 = !DILocation(line: 0, scope: !4377, inlinedAt: !4381)
!4381 = distinct !DILocation(line: 337, column: 9, scope: !4375)
!4382 = !DILocation(line: 79, column: 10, scope: !4377, inlinedAt: !4381)
!4383 = !DILocation(line: 342, column: 17, scope: !4356)
!4384 = !DILocation(line: 0, scope: !4356)
!4385 = !DILocation(line: 343, column: 17, scope: !4356)
!4386 = !DILocation(line: 345, column: 18, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4356, file: !863, line: 345, column: 9)
!4388 = !DILocation(line: 345, column: 28, scope: !4387)
!4389 = !DILocation(line: 349, column: 34, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4356, file: !863, line: 349, column: 9)
!4391 = !DILocation(line: 349, column: 43, scope: !4390)
!4392 = !DILocation(line: 349, column: 25, scope: !4390)
!4393 = !DILocation(line: 349, column: 16, scope: !4390)
!4394 = !DILocation(line: 0, scope: !4377, inlinedAt: !4395)
!4395 = distinct !DILocation(line: 356, column: 9, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4390, file: !863, line: 355, column: 7)
!4397 = !DILocation(line: 0, scope: !4377, inlinedAt: !4398)
!4398 = distinct !DILocation(line: 351, column: 9, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4390, file: !863, line: 350, column: 7)
!4400 = !DILocation(line: 0, scope: !4390)
!4401 = !DILocation(line: 361, column: 15, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4356, file: !863, line: 361, column: 9)
!4403 = !DILocation(line: 361, column: 9, scope: !4356)
!4404 = !DILocation(line: 360, column: 24, scope: !4356)
!4405 = !DILocation(line: 362, column: 7, scope: !4402)
!4406 = !DILocation(line: 365, column: 1, scope: !4347)
!4407 = !DISubprogram(name: "__builtin___sprintf_chk", scope: !863, file: !863, line: 362, type: !4408, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!122, !163, !122, !168, !169, null}
!4410 = distinct !DISubprogram(name: "version_etc_arn", scope: !882, file: !882, line: 61, type: !4411, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4448)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{null, !4413, !169, !169, !169, !4447, !166}
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !4415)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !4416)
!4416 = !{!4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4415, file: !330, line: 51, baseType: !122, size: 32)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4415, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4415, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4415, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4415, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4415, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4415, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4415, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4415, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4415, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4415, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4415, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4415, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4415, file: !330, line: 70, baseType: !4431, size: 64, offset: 832)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4415, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4415, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4415, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4415, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4415, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4415, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4415, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4415, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4415, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4415, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4415, file: !330, line: 93, baseType: !4431, size: 64, offset: 1344)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4415, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4415, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4415, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4415, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!4448 = !{!4449, !4450, !4451, !4452, !4453, !4454}
!4449 = !DILocalVariable(name: "stream", arg: 1, scope: !4410, file: !882, line: 61, type: !4413)
!4450 = !DILocalVariable(name: "command_name", arg: 2, scope: !4410, file: !882, line: 62, type: !169)
!4451 = !DILocalVariable(name: "package", arg: 3, scope: !4410, file: !882, line: 62, type: !169)
!4452 = !DILocalVariable(name: "version", arg: 4, scope: !4410, file: !882, line: 63, type: !169)
!4453 = !DILocalVariable(name: "authors", arg: 5, scope: !4410, file: !882, line: 64, type: !4447)
!4454 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4410, file: !882, line: 64, type: !166)
!4455 = !DILocation(line: 0, scope: !4410)
!4456 = !DILocation(line: 66, column: 7, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4410, file: !882, line: 66, column: 7)
!4458 = !DILocation(line: 66, column: 7, scope: !4410)
!4459 = !DILocation(line: 67, column: 5, scope: !4457)
!4460 = !DILocation(line: 69, column: 5, scope: !4457)
!4461 = !DILocation(line: 83, column: 3, scope: !4410)
!4462 = !DILocation(line: 85, column: 3, scope: !4410)
!4463 = !DILocation(line: 88, column: 3, scope: !4410)
!4464 = !DILocation(line: 95, column: 3, scope: !4410)
!4465 = !DILocation(line: 97, column: 3, scope: !4410)
!4466 = !DILocation(line: 105, column: 7, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4410, file: !882, line: 98, column: 5)
!4468 = !DILocation(line: 106, column: 7, scope: !4467)
!4469 = !DILocation(line: 109, column: 7, scope: !4467)
!4470 = !DILocation(line: 110, column: 7, scope: !4467)
!4471 = !DILocation(line: 113, column: 7, scope: !4467)
!4472 = !DILocation(line: 115, column: 7, scope: !4467)
!4473 = !DILocation(line: 120, column: 7, scope: !4467)
!4474 = !DILocation(line: 122, column: 7, scope: !4467)
!4475 = !DILocation(line: 127, column: 7, scope: !4467)
!4476 = !DILocation(line: 129, column: 7, scope: !4467)
!4477 = !DILocation(line: 134, column: 7, scope: !4467)
!4478 = !DILocation(line: 137, column: 7, scope: !4467)
!4479 = !DILocation(line: 142, column: 7, scope: !4467)
!4480 = !DILocation(line: 145, column: 7, scope: !4467)
!4481 = !DILocation(line: 150, column: 7, scope: !4467)
!4482 = !DILocation(line: 154, column: 7, scope: !4467)
!4483 = !DILocation(line: 159, column: 7, scope: !4467)
!4484 = !DILocation(line: 163, column: 7, scope: !4467)
!4485 = !DILocation(line: 170, column: 7, scope: !4467)
!4486 = !DILocation(line: 174, column: 7, scope: !4467)
!4487 = !DILocation(line: 176, column: 1, scope: !4410)
!4488 = distinct !DISubprogram(name: "version_etc_ar", scope: !882, file: !882, line: 183, type: !4489, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4491)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{null, !4413, !169, !169, !169, !4447}
!4491 = !{!4492, !4493, !4494, !4495, !4496, !4497}
!4492 = !DILocalVariable(name: "stream", arg: 1, scope: !4488, file: !882, line: 183, type: !4413)
!4493 = !DILocalVariable(name: "command_name", arg: 2, scope: !4488, file: !882, line: 184, type: !169)
!4494 = !DILocalVariable(name: "package", arg: 3, scope: !4488, file: !882, line: 184, type: !169)
!4495 = !DILocalVariable(name: "version", arg: 4, scope: !4488, file: !882, line: 185, type: !169)
!4496 = !DILocalVariable(name: "authors", arg: 5, scope: !4488, file: !882, line: 185, type: !4447)
!4497 = !DILocalVariable(name: "n_authors", scope: !4488, file: !882, line: 187, type: !166)
!4498 = !DILocation(line: 0, scope: !4488)
!4499 = !DILocation(line: 189, column: 8, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4488, file: !882, line: 189, column: 3)
!4501 = !DILocation(line: 189, scope: !4500)
!4502 = !DILocation(line: 189, column: 23, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4500, file: !882, line: 189, column: 3)
!4504 = !DILocation(line: 189, column: 3, scope: !4500)
!4505 = !DILocation(line: 189, column: 52, scope: !4503)
!4506 = distinct !{!4506, !4504, !4507, !1200}
!4507 = !DILocation(line: 190, column: 5, scope: !4500)
!4508 = !DILocation(line: 191, column: 3, scope: !4488)
!4509 = !DILocation(line: 192, column: 1, scope: !4488)
!4510 = distinct !DISubprogram(name: "version_etc_va", scope: !882, file: !882, line: 199, type: !4511, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4524)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{null, !4413, !169, !169, !169, !4513}
!4513 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !680, line: 52, baseType: !4514)
!4514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !682, line: 14, baseType: !4515)
!4515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4516, baseType: !4517)
!4516 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4518)
!4518 = !{!4519, !4520, !4521, !4522, !4523}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4517, file: !4516, line: 192, baseType: !164, size: 64)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4517, file: !4516, line: 192, baseType: !164, size: 64, offset: 64)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4517, file: !4516, line: 192, baseType: !164, size: 64, offset: 128)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4517, file: !4516, line: 192, baseType: !122, size: 32, offset: 192)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4517, file: !4516, line: 192, baseType: !122, size: 32, offset: 224)
!4524 = !{!4525, !4526, !4527, !4528, !4529, !4530, !4531}
!4525 = !DILocalVariable(name: "stream", arg: 1, scope: !4510, file: !882, line: 199, type: !4413)
!4526 = !DILocalVariable(name: "command_name", arg: 2, scope: !4510, file: !882, line: 200, type: !169)
!4527 = !DILocalVariable(name: "package", arg: 3, scope: !4510, file: !882, line: 200, type: !169)
!4528 = !DILocalVariable(name: "version", arg: 4, scope: !4510, file: !882, line: 201, type: !169)
!4529 = !DILocalVariable(name: "authors", arg: 5, scope: !4510, file: !882, line: 201, type: !4513)
!4530 = !DILocalVariable(name: "n_authors", scope: !4510, file: !882, line: 203, type: !166)
!4531 = !DILocalVariable(name: "authtab", scope: !4510, file: !882, line: 204, type: !4532)
!4532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 640, elements: !96)
!4533 = !DILocation(line: 0, scope: !4510)
!4534 = !DILocation(line: 201, column: 46, scope: !4510)
!4535 = !DILocation(line: 204, column: 3, scope: !4510)
!4536 = !DILocation(line: 204, column: 15, scope: !4510)
!4537 = !DILocation(line: 208, column: 35, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4539, file: !882, line: 206, column: 3)
!4539 = distinct !DILexicalBlock(scope: !4510, file: !882, line: 206, column: 3)
!4540 = !DILocation(line: 208, column: 33, scope: !4538)
!4541 = !DILocation(line: 208, column: 67, scope: !4538)
!4542 = !DILocation(line: 206, column: 3, scope: !4539)
!4543 = !DILocation(line: 208, column: 14, scope: !4538)
!4544 = !DILocation(line: 0, scope: !4539)
!4545 = !DILocation(line: 211, column: 3, scope: !4510)
!4546 = !DILocation(line: 213, column: 1, scope: !4510)
!4547 = distinct !DISubprogram(name: "version_etc", scope: !882, file: !882, line: 230, type: !4548, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4550)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{null, !4413, !169, !169, !169, null}
!4550 = !{!4551, !4552, !4553, !4554, !4555}
!4551 = !DILocalVariable(name: "stream", arg: 1, scope: !4547, file: !882, line: 230, type: !4413)
!4552 = !DILocalVariable(name: "command_name", arg: 2, scope: !4547, file: !882, line: 231, type: !169)
!4553 = !DILocalVariable(name: "package", arg: 3, scope: !4547, file: !882, line: 231, type: !169)
!4554 = !DILocalVariable(name: "version", arg: 4, scope: !4547, file: !882, line: 232, type: !169)
!4555 = !DILocalVariable(name: "authors", scope: !4547, file: !882, line: 234, type: !4513)
!4556 = !DILocation(line: 0, scope: !4547)
!4557 = !DILocation(line: 234, column: 3, scope: !4547)
!4558 = !DILocation(line: 234, column: 11, scope: !4547)
!4559 = !DILocation(line: 235, column: 3, scope: !4547)
!4560 = !DILocation(line: 236, column: 3, scope: !4547)
!4561 = !DILocation(line: 237, column: 3, scope: !4547)
!4562 = !DILocation(line: 238, column: 1, scope: !4547)
!4563 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !882, file: !882, line: 241, type: !718, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !1080)
!4564 = !DILocation(line: 243, column: 3, scope: !4563)
!4565 = !DILocation(line: 248, column: 3, scope: !4563)
!4566 = !DILocation(line: 254, column: 3, scope: !4563)
!4567 = !DILocation(line: 259, column: 3, scope: !4563)
!4568 = !DILocation(line: 261, column: 1, scope: !4563)
!4569 = distinct !DISubprogram(name: "xnrealloc", scope: !4570, file: !4570, line: 147, type: !4571, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4573)
!4570 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!164, !164, !166, !166}
!4573 = !{!4574, !4575, !4576}
!4574 = !DILocalVariable(name: "p", arg: 1, scope: !4569, file: !4570, line: 147, type: !164)
!4575 = !DILocalVariable(name: "n", arg: 2, scope: !4569, file: !4570, line: 147, type: !166)
!4576 = !DILocalVariable(name: "s", arg: 3, scope: !4569, file: !4570, line: 147, type: !166)
!4577 = !DILocation(line: 0, scope: !4569)
!4578 = !DILocalVariable(name: "p", arg: 1, scope: !4579, file: !1005, line: 83, type: !164)
!4579 = distinct !DISubprogram(name: "xreallocarray", scope: !1005, file: !1005, line: 83, type: !4571, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4580)
!4580 = !{!4578, !4581, !4582}
!4581 = !DILocalVariable(name: "n", arg: 2, scope: !4579, file: !1005, line: 83, type: !166)
!4582 = !DILocalVariable(name: "s", arg: 3, scope: !4579, file: !1005, line: 83, type: !166)
!4583 = !DILocation(line: 0, scope: !4579, inlinedAt: !4584)
!4584 = distinct !DILocation(line: 149, column: 10, scope: !4569)
!4585 = !DILocation(line: 85, column: 25, scope: !4579, inlinedAt: !4584)
!4586 = !DILocalVariable(name: "p", arg: 1, scope: !4587, file: !1005, line: 37, type: !164)
!4587 = distinct !DISubprogram(name: "check_nonnull", scope: !1005, file: !1005, line: 37, type: !4588, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4590)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!164, !164}
!4590 = !{!4586}
!4591 = !DILocation(line: 0, scope: !4587, inlinedAt: !4592)
!4592 = distinct !DILocation(line: 85, column: 10, scope: !4579, inlinedAt: !4584)
!4593 = !DILocation(line: 39, column: 8, scope: !4594, inlinedAt: !4592)
!4594 = distinct !DILexicalBlock(scope: !4587, file: !1005, line: 39, column: 7)
!4595 = !DILocation(line: 39, column: 7, scope: !4587, inlinedAt: !4592)
!4596 = !DILocation(line: 40, column: 5, scope: !4594, inlinedAt: !4592)
!4597 = !DILocation(line: 149, column: 3, scope: !4569)
!4598 = !DILocation(line: 0, scope: !4579)
!4599 = !DILocation(line: 85, column: 25, scope: !4579)
!4600 = !DILocation(line: 0, scope: !4587, inlinedAt: !4601)
!4601 = distinct !DILocation(line: 85, column: 10, scope: !4579)
!4602 = !DILocation(line: 39, column: 8, scope: !4594, inlinedAt: !4601)
!4603 = !DILocation(line: 39, column: 7, scope: !4587, inlinedAt: !4601)
!4604 = !DILocation(line: 40, column: 5, scope: !4594, inlinedAt: !4601)
!4605 = !DILocation(line: 85, column: 3, scope: !4579)
!4606 = distinct !DISubprogram(name: "xmalloc", scope: !1005, file: !1005, line: 47, type: !4607, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4609)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!164, !166}
!4609 = !{!4610}
!4610 = !DILocalVariable(name: "s", arg: 1, scope: !4606, file: !1005, line: 47, type: !166)
!4611 = !DILocation(line: 0, scope: !4606)
!4612 = !DILocation(line: 49, column: 25, scope: !4606)
!4613 = !DILocation(line: 0, scope: !4587, inlinedAt: !4614)
!4614 = distinct !DILocation(line: 49, column: 10, scope: !4606)
!4615 = !DILocation(line: 39, column: 8, scope: !4594, inlinedAt: !4614)
!4616 = !DILocation(line: 39, column: 7, scope: !4587, inlinedAt: !4614)
!4617 = !DILocation(line: 40, column: 5, scope: !4594, inlinedAt: !4614)
!4618 = !DILocation(line: 49, column: 3, scope: !4606)
!4619 = !DISubprogram(name: "malloc", scope: !1274, file: !1274, line: 540, type: !4607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!4620 = distinct !DISubprogram(name: "ximalloc", scope: !1005, file: !1005, line: 53, type: !4621, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4623)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!164, !528}
!4623 = !{!4624}
!4624 = !DILocalVariable(name: "s", arg: 1, scope: !4620, file: !1005, line: 53, type: !528)
!4625 = !DILocation(line: 0, scope: !4620)
!4626 = !DILocalVariable(name: "s", arg: 1, scope: !4627, file: !4628, line: 55, type: !528)
!4627 = distinct !DISubprogram(name: "imalloc", scope: !4628, file: !4628, line: 55, type: !4621, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4629)
!4628 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4629 = !{!4626}
!4630 = !DILocation(line: 0, scope: !4627, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 55, column: 25, scope: !4620)
!4632 = !DILocation(line: 57, column: 26, scope: !4627, inlinedAt: !4631)
!4633 = !DILocation(line: 0, scope: !4587, inlinedAt: !4634)
!4634 = distinct !DILocation(line: 55, column: 10, scope: !4620)
!4635 = !DILocation(line: 39, column: 8, scope: !4594, inlinedAt: !4634)
!4636 = !DILocation(line: 39, column: 7, scope: !4587, inlinedAt: !4634)
!4637 = !DILocation(line: 40, column: 5, scope: !4594, inlinedAt: !4634)
!4638 = !DILocation(line: 55, column: 3, scope: !4620)
!4639 = distinct !DISubprogram(name: "xcharalloc", scope: !1005, file: !1005, line: 59, type: !4640, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4642)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!163, !166}
!4642 = !{!4643}
!4643 = !DILocalVariable(name: "n", arg: 1, scope: !4639, file: !1005, line: 59, type: !166)
!4644 = !DILocation(line: 0, scope: !4639)
!4645 = !DILocation(line: 0, scope: !4606, inlinedAt: !4646)
!4646 = distinct !DILocation(line: 61, column: 10, scope: !4639)
!4647 = !DILocation(line: 49, column: 25, scope: !4606, inlinedAt: !4646)
!4648 = !DILocation(line: 0, scope: !4587, inlinedAt: !4649)
!4649 = distinct !DILocation(line: 49, column: 10, scope: !4606, inlinedAt: !4646)
!4650 = !DILocation(line: 39, column: 8, scope: !4594, inlinedAt: !4649)
!4651 = !DILocation(line: 39, column: 7, scope: !4587, inlinedAt: !4649)
!4652 = !DILocation(line: 40, column: 5, scope: !4594, inlinedAt: !4649)
!4653 = !DILocation(line: 61, column: 3, scope: !4639)
!4654 = distinct !DISubprogram(name: "xrealloc", scope: !1005, file: !1005, line: 68, type: !4655, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4657)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!164, !164, !166}
!4657 = !{!4658, !4659}
!4658 = !DILocalVariable(name: "p", arg: 1, scope: !4654, file: !1005, line: 68, type: !164)
!4659 = !DILocalVariable(name: "s", arg: 2, scope: !4654, file: !1005, line: 68, type: !166)
!4660 = !DILocation(line: 0, scope: !4654)
!4661 = !DILocalVariable(name: "ptr", arg: 1, scope: !4662, file: !4663, line: 2057, type: !164)
!4662 = distinct !DISubprogram(name: "rpl_realloc", scope: !4663, file: !4663, line: 2057, type: !4655, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4664)
!4663 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4664 = !{!4661, !4665}
!4665 = !DILocalVariable(name: "size", arg: 2, scope: !4662, file: !4663, line: 2057, type: !166)
!4666 = !DILocation(line: 0, scope: !4662, inlinedAt: !4667)
!4667 = distinct !DILocation(line: 70, column: 25, scope: !4654)
!4668 = !DILocation(line: 2059, column: 24, scope: !4662, inlinedAt: !4667)
!4669 = !DILocation(line: 2059, column: 10, scope: !4662, inlinedAt: !4667)
!4670 = !DILocation(line: 0, scope: !4587, inlinedAt: !4671)
!4671 = distinct !DILocation(line: 70, column: 10, scope: !4654)
!4672 = !DILocation(line: 39, column: 8, scope: !4594, inlinedAt: !4671)
!4673 = !DILocation(line: 39, column: 7, scope: !4587, inlinedAt: !4671)
!4674 = !DILocation(line: 40, column: 5, scope: !4594, inlinedAt: !4671)
!4675 = !DILocation(line: 70, column: 3, scope: !4654)
!4676 = !DISubprogram(name: "realloc", scope: !1274, file: !1274, line: 551, type: !4655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!4677 = distinct !DISubprogram(name: "xirealloc", scope: !1005, file: !1005, line: 74, type: !4678, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4680)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!164, !164, !528}
!4680 = !{!4681, !4682}
!4681 = !DILocalVariable(name: "p", arg: 1, scope: !4677, file: !1005, line: 74, type: !164)
!4682 = !DILocalVariable(name: "s", arg: 2, scope: !4677, file: !1005, line: 74, type: !528)
!4683 = !DILocation(line: 0, scope: !4677)
!4684 = !DILocalVariable(name: "p", arg: 1, scope: !4685, file: !4628, line: 66, type: !164)
!4685 = distinct !DISubprogram(name: "irealloc", scope: !4628, file: !4628, line: 66, type: !4678, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4686)
!4686 = !{!4684, !4687}
!4687 = !DILocalVariable(name: "s", arg: 2, scope: !4685, file: !4628, line: 66, type: !528)
!4688 = !DILocation(line: 0, scope: !4685, inlinedAt: !4689)
!4689 = distinct !DILocation(line: 76, column: 25, scope: !4677)
!4690 = !DILocation(line: 0, scope: !4662, inlinedAt: !4691)
!4691 = distinct !DILocation(line: 68, column: 26, scope: !4685, inlinedAt: !4689)
!4692 = !DILocation(line: 2059, column: 24, scope: !4662, inlinedAt: !4691)
!4693 = !DILocation(line: 2059, column: 10, scope: !4662, inlinedAt: !4691)
!4694 = !DILocation(line: 0, scope: !4587, inlinedAt: !4695)
!4695 = distinct !DILocation(line: 76, column: 10, scope: !4677)
!4696 = !DILocation(line: 39, column: 8, scope: !4594, inlinedAt: !4695)
!4697 = !DILocation(line: 39, column: 7, scope: !4587, inlinedAt: !4695)
!4698 = !DILocation(line: 40, column: 5, scope: !4594, inlinedAt: !4695)
!4699 = !DILocation(line: 76, column: 3, scope: !4677)
!4700 = distinct !DISubprogram(name: "xireallocarray", scope: !1005, file: !1005, line: 89, type: !4701, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4703)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!164, !164, !528, !528}
!4703 = !{!4704, !4705, !4706}
!4704 = !DILocalVariable(name: "p", arg: 1, scope: !4700, file: !1005, line: 89, type: !164)
!4705 = !DILocalVariable(name: "n", arg: 2, scope: !4700, file: !1005, line: 89, type: !528)
!4706 = !DILocalVariable(name: "s", arg: 3, scope: !4700, file: !1005, line: 89, type: !528)
!4707 = !DILocation(line: 0, scope: !4700)
!4708 = !DILocalVariable(name: "p", arg: 1, scope: !4709, file: !4628, line: 98, type: !164)
!4709 = distinct !DISubprogram(name: "ireallocarray", scope: !4628, file: !4628, line: 98, type: !4701, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4710)
!4710 = !{!4708, !4711, !4712}
!4711 = !DILocalVariable(name: "n", arg: 2, scope: !4709, file: !4628, line: 98, type: !528)
!4712 = !DILocalVariable(name: "s", arg: 3, scope: !4709, file: !4628, line: 98, type: !528)
!4713 = !DILocation(line: 0, scope: !4709, inlinedAt: !4714)
!4714 = distinct !DILocation(line: 91, column: 25, scope: !4700)
!4715 = !DILocation(line: 101, column: 13, scope: !4709, inlinedAt: !4714)
!4716 = !DILocation(line: 0, scope: !4587, inlinedAt: !4717)
!4717 = distinct !DILocation(line: 91, column: 10, scope: !4700)
!4718 = !DILocation(line: 39, column: 8, scope: !4594, inlinedAt: !4717)
!4719 = !DILocation(line: 39, column: 7, scope: !4587, inlinedAt: !4717)
!4720 = !DILocation(line: 40, column: 5, scope: !4594, inlinedAt: !4717)
!4721 = !DILocation(line: 91, column: 3, scope: !4700)
!4722 = distinct !DISubprogram(name: "xnmalloc", scope: !1005, file: !1005, line: 98, type: !4723, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4725)
!4723 = !DISubroutineType(types: !4724)
!4724 = !{!164, !166, !166}
!4725 = !{!4726, !4727}
!4726 = !DILocalVariable(name: "n", arg: 1, scope: !4722, file: !1005, line: 98, type: !166)
!4727 = !DILocalVariable(name: "s", arg: 2, scope: !4722, file: !1005, line: 98, type: !166)
!4728 = !DILocation(line: 0, scope: !4722)
!4729 = !DILocation(line: 0, scope: !4579, inlinedAt: !4730)
!4730 = distinct !DILocation(line: 100, column: 10, scope: !4722)
!4731 = !DILocation(line: 85, column: 25, scope: !4579, inlinedAt: !4730)
!4732 = !DILocation(line: 0, scope: !4587, inlinedAt: !4733)
!4733 = distinct !DILocation(line: 85, column: 10, scope: !4579, inlinedAt: !4730)
!4734 = !DILocation(line: 39, column: 8, scope: !4594, inlinedAt: !4733)
!4735 = !DILocation(line: 39, column: 7, scope: !4587, inlinedAt: !4733)
!4736 = !DILocation(line: 40, column: 5, scope: !4594, inlinedAt: !4733)
!4737 = !DILocation(line: 100, column: 3, scope: !4722)
!4738 = distinct !DISubprogram(name: "xinmalloc", scope: !1005, file: !1005, line: 104, type: !4739, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4741)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!164, !528, !528}
!4741 = !{!4742, !4743}
!4742 = !DILocalVariable(name: "n", arg: 1, scope: !4738, file: !1005, line: 104, type: !528)
!4743 = !DILocalVariable(name: "s", arg: 2, scope: !4738, file: !1005, line: 104, type: !528)
!4744 = !DILocation(line: 0, scope: !4738)
!4745 = !DILocation(line: 0, scope: !4700, inlinedAt: !4746)
!4746 = distinct !DILocation(line: 106, column: 10, scope: !4738)
!4747 = !DILocation(line: 0, scope: !4709, inlinedAt: !4748)
!4748 = distinct !DILocation(line: 91, column: 25, scope: !4700, inlinedAt: !4746)
!4749 = !DILocation(line: 101, column: 13, scope: !4709, inlinedAt: !4748)
!4750 = !DILocation(line: 0, scope: !4587, inlinedAt: !4751)
!4751 = distinct !DILocation(line: 91, column: 10, scope: !4700, inlinedAt: !4746)
!4752 = !DILocation(line: 39, column: 8, scope: !4594, inlinedAt: !4751)
!4753 = !DILocation(line: 39, column: 7, scope: !4587, inlinedAt: !4751)
!4754 = !DILocation(line: 40, column: 5, scope: !4594, inlinedAt: !4751)
!4755 = !DILocation(line: 106, column: 3, scope: !4738)
!4756 = distinct !DISubprogram(name: "x2realloc", scope: !1005, file: !1005, line: 116, type: !4757, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4759)
!4757 = !DISubroutineType(types: !4758)
!4758 = !{!164, !164, !1011}
!4759 = !{!4760, !4761}
!4760 = !DILocalVariable(name: "p", arg: 1, scope: !4756, file: !1005, line: 116, type: !164)
!4761 = !DILocalVariable(name: "ps", arg: 2, scope: !4756, file: !1005, line: 116, type: !1011)
!4762 = !DILocation(line: 0, scope: !4756)
!4763 = !DILocation(line: 0, scope: !1008, inlinedAt: !4764)
!4764 = distinct !DILocation(line: 118, column: 10, scope: !4756)
!4765 = !DILocation(line: 178, column: 14, scope: !1008, inlinedAt: !4764)
!4766 = !DILocation(line: 180, column: 9, scope: !4767, inlinedAt: !4764)
!4767 = distinct !DILexicalBlock(scope: !1008, file: !1005, line: 180, column: 7)
!4768 = !DILocation(line: 180, column: 7, scope: !1008, inlinedAt: !4764)
!4769 = !DILocation(line: 182, column: 13, scope: !4770, inlinedAt: !4764)
!4770 = distinct !DILexicalBlock(scope: !4771, file: !1005, line: 182, column: 11)
!4771 = distinct !DILexicalBlock(scope: !4767, file: !1005, line: 181, column: 5)
!4772 = !DILocation(line: 182, column: 11, scope: !4771, inlinedAt: !4764)
!4773 = !DILocation(line: 197, column: 11, scope: !4774, inlinedAt: !4764)
!4774 = distinct !DILexicalBlock(scope: !4775, file: !1005, line: 197, column: 11)
!4775 = distinct !DILexicalBlock(scope: !4767, file: !1005, line: 195, column: 5)
!4776 = !DILocation(line: 197, column: 11, scope: !4775, inlinedAt: !4764)
!4777 = !DILocation(line: 198, column: 9, scope: !4774, inlinedAt: !4764)
!4778 = !DILocation(line: 0, scope: !4579, inlinedAt: !4779)
!4779 = distinct !DILocation(line: 201, column: 7, scope: !1008, inlinedAt: !4764)
!4780 = !DILocation(line: 85, column: 25, scope: !4579, inlinedAt: !4779)
!4781 = !DILocation(line: 0, scope: !4587, inlinedAt: !4782)
!4782 = distinct !DILocation(line: 85, column: 10, scope: !4579, inlinedAt: !4779)
!4783 = !DILocation(line: 39, column: 8, scope: !4594, inlinedAt: !4782)
!4784 = !DILocation(line: 39, column: 7, scope: !4587, inlinedAt: !4782)
!4785 = !DILocation(line: 40, column: 5, scope: !4594, inlinedAt: !4782)
!4786 = !DILocation(line: 202, column: 7, scope: !1008, inlinedAt: !4764)
!4787 = !DILocation(line: 118, column: 3, scope: !4756)
!4788 = !DILocation(line: 0, scope: !1008)
!4789 = !DILocation(line: 178, column: 14, scope: !1008)
!4790 = !DILocation(line: 180, column: 9, scope: !4767)
!4791 = !DILocation(line: 180, column: 7, scope: !1008)
!4792 = !DILocation(line: 182, column: 13, scope: !4770)
!4793 = !DILocation(line: 182, column: 11, scope: !4771)
!4794 = !DILocation(line: 190, column: 30, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4770, file: !1005, line: 183, column: 9)
!4796 = !DILocation(line: 191, column: 16, scope: !4795)
!4797 = !DILocation(line: 191, column: 13, scope: !4795)
!4798 = !DILocation(line: 192, column: 9, scope: !4795)
!4799 = !DILocation(line: 197, column: 11, scope: !4774)
!4800 = !DILocation(line: 197, column: 11, scope: !4775)
!4801 = !DILocation(line: 198, column: 9, scope: !4774)
!4802 = !DILocation(line: 0, scope: !4579, inlinedAt: !4803)
!4803 = distinct !DILocation(line: 201, column: 7, scope: !1008)
!4804 = !DILocation(line: 85, column: 25, scope: !4579, inlinedAt: !4803)
!4805 = !DILocation(line: 0, scope: !4587, inlinedAt: !4806)
!4806 = distinct !DILocation(line: 85, column: 10, scope: !4579, inlinedAt: !4803)
!4807 = !DILocation(line: 39, column: 8, scope: !4594, inlinedAt: !4806)
!4808 = !DILocation(line: 39, column: 7, scope: !4587, inlinedAt: !4806)
!4809 = !DILocation(line: 40, column: 5, scope: !4594, inlinedAt: !4806)
!4810 = !DILocation(line: 202, column: 7, scope: !1008)
!4811 = !DILocation(line: 203, column: 3, scope: !1008)
!4812 = !DILocation(line: 0, scope: !1020)
!4813 = !DILocation(line: 230, column: 14, scope: !1020)
!4814 = !DILocation(line: 238, column: 7, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !1020, file: !1005, line: 238, column: 7)
!4816 = !DILocation(line: 238, column: 7, scope: !1020)
!4817 = !DILocation(line: 240, column: 9, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !1020, file: !1005, line: 240, column: 7)
!4819 = !DILocation(line: 240, column: 18, scope: !4818)
!4820 = !DILocation(line: 253, column: 8, scope: !1020)
!4821 = !DILocation(line: 258, column: 27, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4823, file: !1005, line: 257, column: 5)
!4823 = distinct !DILexicalBlock(scope: !1020, file: !1005, line: 256, column: 7)
!4824 = !DILocation(line: 259, column: 32, scope: !4822)
!4825 = !DILocation(line: 260, column: 5, scope: !4822)
!4826 = !DILocation(line: 262, column: 9, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !1020, file: !1005, line: 262, column: 7)
!4828 = !DILocation(line: 262, column: 7, scope: !1020)
!4829 = !DILocation(line: 263, column: 9, scope: !4827)
!4830 = !DILocation(line: 263, column: 5, scope: !4827)
!4831 = !DILocation(line: 264, column: 9, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !1020, file: !1005, line: 264, column: 7)
!4833 = !DILocation(line: 264, column: 14, scope: !4832)
!4834 = !DILocation(line: 265, column: 7, scope: !4832)
!4835 = !DILocation(line: 265, column: 11, scope: !4832)
!4836 = !DILocation(line: 266, column: 11, scope: !4832)
!4837 = !DILocation(line: 267, column: 14, scope: !4832)
!4838 = !DILocation(line: 264, column: 7, scope: !1020)
!4839 = !DILocation(line: 268, column: 5, scope: !4832)
!4840 = !DILocation(line: 0, scope: !4654, inlinedAt: !4841)
!4841 = distinct !DILocation(line: 269, column: 8, scope: !1020)
!4842 = !DILocation(line: 0, scope: !4662, inlinedAt: !4843)
!4843 = distinct !DILocation(line: 70, column: 25, scope: !4654, inlinedAt: !4841)
!4844 = !DILocation(line: 2059, column: 24, scope: !4662, inlinedAt: !4843)
!4845 = !DILocation(line: 2059, column: 10, scope: !4662, inlinedAt: !4843)
!4846 = !DILocation(line: 0, scope: !4587, inlinedAt: !4847)
!4847 = distinct !DILocation(line: 70, column: 10, scope: !4654, inlinedAt: !4841)
!4848 = !DILocation(line: 39, column: 8, scope: !4594, inlinedAt: !4847)
!4849 = !DILocation(line: 39, column: 7, scope: !4587, inlinedAt: !4847)
!4850 = !DILocation(line: 40, column: 5, scope: !4594, inlinedAt: !4847)
!4851 = !DILocation(line: 270, column: 7, scope: !1020)
!4852 = !DILocation(line: 271, column: 3, scope: !1020)
!4853 = distinct !DISubprogram(name: "xzalloc", scope: !1005, file: !1005, line: 279, type: !4607, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4854)
!4854 = !{!4855}
!4855 = !DILocalVariable(name: "s", arg: 1, scope: !4853, file: !1005, line: 279, type: !166)
!4856 = !DILocation(line: 0, scope: !4853)
!4857 = !DILocalVariable(name: "n", arg: 1, scope: !4858, file: !1005, line: 294, type: !166)
!4858 = distinct !DISubprogram(name: "xcalloc", scope: !1005, file: !1005, line: 294, type: !4723, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4859)
!4859 = !{!4857, !4860}
!4860 = !DILocalVariable(name: "s", arg: 2, scope: !4858, file: !1005, line: 294, type: !166)
!4861 = !DILocation(line: 0, scope: !4858, inlinedAt: !4862)
!4862 = distinct !DILocation(line: 281, column: 10, scope: !4853)
!4863 = !DILocation(line: 296, column: 25, scope: !4858, inlinedAt: !4862)
!4864 = !DILocation(line: 0, scope: !4587, inlinedAt: !4865)
!4865 = distinct !DILocation(line: 296, column: 10, scope: !4858, inlinedAt: !4862)
!4866 = !DILocation(line: 39, column: 8, scope: !4594, inlinedAt: !4865)
!4867 = !DILocation(line: 39, column: 7, scope: !4587, inlinedAt: !4865)
!4868 = !DILocation(line: 40, column: 5, scope: !4594, inlinedAt: !4865)
!4869 = !DILocation(line: 281, column: 3, scope: !4853)
!4870 = !DISubprogram(name: "calloc", scope: !1274, file: !1274, line: 543, type: !4723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!4871 = !DILocation(line: 0, scope: !4858)
!4872 = !DILocation(line: 296, column: 25, scope: !4858)
!4873 = !DILocation(line: 0, scope: !4587, inlinedAt: !4874)
!4874 = distinct !DILocation(line: 296, column: 10, scope: !4858)
!4875 = !DILocation(line: 39, column: 8, scope: !4594, inlinedAt: !4874)
!4876 = !DILocation(line: 39, column: 7, scope: !4587, inlinedAt: !4874)
!4877 = !DILocation(line: 40, column: 5, scope: !4594, inlinedAt: !4874)
!4878 = !DILocation(line: 296, column: 3, scope: !4858)
!4879 = distinct !DISubprogram(name: "xizalloc", scope: !1005, file: !1005, line: 285, type: !4621, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4880)
!4880 = !{!4881}
!4881 = !DILocalVariable(name: "s", arg: 1, scope: !4879, file: !1005, line: 285, type: !528)
!4882 = !DILocation(line: 0, scope: !4879)
!4883 = !DILocalVariable(name: "n", arg: 1, scope: !4884, file: !1005, line: 300, type: !528)
!4884 = distinct !DISubprogram(name: "xicalloc", scope: !1005, file: !1005, line: 300, type: !4739, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4885)
!4885 = !{!4883, !4886}
!4886 = !DILocalVariable(name: "s", arg: 2, scope: !4884, file: !1005, line: 300, type: !528)
!4887 = !DILocation(line: 0, scope: !4884, inlinedAt: !4888)
!4888 = distinct !DILocation(line: 287, column: 10, scope: !4879)
!4889 = !DILocalVariable(name: "n", arg: 1, scope: !4890, file: !4628, line: 77, type: !528)
!4890 = distinct !DISubprogram(name: "icalloc", scope: !4628, file: !4628, line: 77, type: !4739, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4891)
!4891 = !{!4889, !4892}
!4892 = !DILocalVariable(name: "s", arg: 2, scope: !4890, file: !4628, line: 77, type: !528)
!4893 = !DILocation(line: 0, scope: !4890, inlinedAt: !4894)
!4894 = distinct !DILocation(line: 302, column: 25, scope: !4884, inlinedAt: !4888)
!4895 = !DILocation(line: 91, column: 10, scope: !4890, inlinedAt: !4894)
!4896 = !DILocation(line: 0, scope: !4587, inlinedAt: !4897)
!4897 = distinct !DILocation(line: 302, column: 10, scope: !4884, inlinedAt: !4888)
!4898 = !DILocation(line: 39, column: 8, scope: !4594, inlinedAt: !4897)
!4899 = !DILocation(line: 39, column: 7, scope: !4587, inlinedAt: !4897)
!4900 = !DILocation(line: 40, column: 5, scope: !4594, inlinedAt: !4897)
!4901 = !DILocation(line: 287, column: 3, scope: !4879)
!4902 = !DILocation(line: 0, scope: !4884)
!4903 = !DILocation(line: 0, scope: !4890, inlinedAt: !4904)
!4904 = distinct !DILocation(line: 302, column: 25, scope: !4884)
!4905 = !DILocation(line: 91, column: 10, scope: !4890, inlinedAt: !4904)
!4906 = !DILocation(line: 0, scope: !4587, inlinedAt: !4907)
!4907 = distinct !DILocation(line: 302, column: 10, scope: !4884)
!4908 = !DILocation(line: 39, column: 8, scope: !4594, inlinedAt: !4907)
!4909 = !DILocation(line: 39, column: 7, scope: !4587, inlinedAt: !4907)
!4910 = !DILocation(line: 40, column: 5, scope: !4594, inlinedAt: !4907)
!4911 = !DILocation(line: 302, column: 3, scope: !4884)
!4912 = distinct !DISubprogram(name: "xmemdup", scope: !1005, file: !1005, line: 310, type: !4913, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4915)
!4913 = !DISubroutineType(types: !4914)
!4914 = !{!164, !1298, !166}
!4915 = !{!4916, !4917}
!4916 = !DILocalVariable(name: "p", arg: 1, scope: !4912, file: !1005, line: 310, type: !1298)
!4917 = !DILocalVariable(name: "s", arg: 2, scope: !4912, file: !1005, line: 310, type: !166)
!4918 = !DILocation(line: 0, scope: !4912)
!4919 = !DILocation(line: 0, scope: !4606, inlinedAt: !4920)
!4920 = distinct !DILocation(line: 312, column: 18, scope: !4912)
!4921 = !DILocation(line: 49, column: 25, scope: !4606, inlinedAt: !4920)
!4922 = !DILocation(line: 0, scope: !4587, inlinedAt: !4923)
!4923 = distinct !DILocation(line: 49, column: 10, scope: !4606, inlinedAt: !4920)
!4924 = !DILocation(line: 39, column: 8, scope: !4594, inlinedAt: !4923)
!4925 = !DILocation(line: 39, column: 7, scope: !4587, inlinedAt: !4923)
!4926 = !DILocation(line: 40, column: 5, scope: !4594, inlinedAt: !4923)
!4927 = !DILocalVariable(name: "__dest", arg: 1, scope: !4928, file: !1545, line: 26, type: !1548)
!4928 = distinct !DISubprogram(name: "memcpy", scope: !1545, file: !1545, line: 26, type: !1546, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4929)
!4929 = !{!4927, !4930, !4931}
!4930 = !DILocalVariable(name: "__src", arg: 2, scope: !4928, file: !1545, line: 26, type: !1297)
!4931 = !DILocalVariable(name: "__len", arg: 3, scope: !4928, file: !1545, line: 26, type: !166)
!4932 = !DILocation(line: 0, scope: !4928, inlinedAt: !4933)
!4933 = distinct !DILocation(line: 312, column: 10, scope: !4912)
!4934 = !DILocation(line: 29, column: 10, scope: !4928, inlinedAt: !4933)
!4935 = !DILocation(line: 312, column: 3, scope: !4912)
!4936 = distinct !DISubprogram(name: "ximemdup", scope: !1005, file: !1005, line: 316, type: !4937, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4939)
!4937 = !DISubroutineType(types: !4938)
!4938 = !{!164, !1298, !528}
!4939 = !{!4940, !4941}
!4940 = !DILocalVariable(name: "p", arg: 1, scope: !4936, file: !1005, line: 316, type: !1298)
!4941 = !DILocalVariable(name: "s", arg: 2, scope: !4936, file: !1005, line: 316, type: !528)
!4942 = !DILocation(line: 0, scope: !4936)
!4943 = !DILocation(line: 0, scope: !4620, inlinedAt: !4944)
!4944 = distinct !DILocation(line: 318, column: 18, scope: !4936)
!4945 = !DILocation(line: 0, scope: !4627, inlinedAt: !4946)
!4946 = distinct !DILocation(line: 55, column: 25, scope: !4620, inlinedAt: !4944)
!4947 = !DILocation(line: 57, column: 26, scope: !4627, inlinedAt: !4946)
!4948 = !DILocation(line: 0, scope: !4587, inlinedAt: !4949)
!4949 = distinct !DILocation(line: 55, column: 10, scope: !4620, inlinedAt: !4944)
!4950 = !DILocation(line: 39, column: 8, scope: !4594, inlinedAt: !4949)
!4951 = !DILocation(line: 39, column: 7, scope: !4587, inlinedAt: !4949)
!4952 = !DILocation(line: 40, column: 5, scope: !4594, inlinedAt: !4949)
!4953 = !DILocation(line: 0, scope: !4928, inlinedAt: !4954)
!4954 = distinct !DILocation(line: 318, column: 10, scope: !4936)
!4955 = !DILocation(line: 29, column: 10, scope: !4928, inlinedAt: !4954)
!4956 = !DILocation(line: 318, column: 3, scope: !4936)
!4957 = distinct !DISubprogram(name: "ximemdup0", scope: !1005, file: !1005, line: 325, type: !4958, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4960)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!163, !1298, !528}
!4960 = !{!4961, !4962, !4963}
!4961 = !DILocalVariable(name: "p", arg: 1, scope: !4957, file: !1005, line: 325, type: !1298)
!4962 = !DILocalVariable(name: "s", arg: 2, scope: !4957, file: !1005, line: 325, type: !528)
!4963 = !DILocalVariable(name: "result", scope: !4957, file: !1005, line: 327, type: !163)
!4964 = !DILocation(line: 0, scope: !4957)
!4965 = !DILocation(line: 327, column: 30, scope: !4957)
!4966 = !DILocation(line: 0, scope: !4620, inlinedAt: !4967)
!4967 = distinct !DILocation(line: 327, column: 18, scope: !4957)
!4968 = !DILocation(line: 0, scope: !4627, inlinedAt: !4969)
!4969 = distinct !DILocation(line: 55, column: 25, scope: !4620, inlinedAt: !4967)
!4970 = !DILocation(line: 57, column: 26, scope: !4627, inlinedAt: !4969)
!4971 = !DILocation(line: 0, scope: !4587, inlinedAt: !4972)
!4972 = distinct !DILocation(line: 55, column: 10, scope: !4620, inlinedAt: !4967)
!4973 = !DILocation(line: 39, column: 8, scope: !4594, inlinedAt: !4972)
!4974 = !DILocation(line: 39, column: 7, scope: !4587, inlinedAt: !4972)
!4975 = !DILocation(line: 40, column: 5, scope: !4594, inlinedAt: !4972)
!4976 = !DILocation(line: 328, column: 3, scope: !4957)
!4977 = !DILocation(line: 328, column: 13, scope: !4957)
!4978 = !DILocation(line: 0, scope: !4928, inlinedAt: !4979)
!4979 = distinct !DILocation(line: 329, column: 10, scope: !4957)
!4980 = !DILocation(line: 29, column: 10, scope: !4928, inlinedAt: !4979)
!4981 = !DILocation(line: 329, column: 3, scope: !4957)
!4982 = distinct !DISubprogram(name: "xstrdup", scope: !1005, file: !1005, line: 335, type: !1276, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4983)
!4983 = !{!4984}
!4984 = !DILocalVariable(name: "string", arg: 1, scope: !4982, file: !1005, line: 335, type: !169)
!4985 = !DILocation(line: 0, scope: !4982)
!4986 = !DILocation(line: 337, column: 27, scope: !4982)
!4987 = !DILocation(line: 337, column: 43, scope: !4982)
!4988 = !DILocation(line: 0, scope: !4912, inlinedAt: !4989)
!4989 = distinct !DILocation(line: 337, column: 10, scope: !4982)
!4990 = !DILocation(line: 0, scope: !4606, inlinedAt: !4991)
!4991 = distinct !DILocation(line: 312, column: 18, scope: !4912, inlinedAt: !4989)
!4992 = !DILocation(line: 49, column: 25, scope: !4606, inlinedAt: !4991)
!4993 = !DILocation(line: 0, scope: !4587, inlinedAt: !4994)
!4994 = distinct !DILocation(line: 49, column: 10, scope: !4606, inlinedAt: !4991)
!4995 = !DILocation(line: 39, column: 8, scope: !4594, inlinedAt: !4994)
!4996 = !DILocation(line: 39, column: 7, scope: !4587, inlinedAt: !4994)
!4997 = !DILocation(line: 40, column: 5, scope: !4594, inlinedAt: !4994)
!4998 = !DILocation(line: 0, scope: !4928, inlinedAt: !4999)
!4999 = distinct !DILocation(line: 312, column: 10, scope: !4912, inlinedAt: !4989)
!5000 = !DILocation(line: 29, column: 10, scope: !4928, inlinedAt: !4999)
!5001 = !DILocation(line: 337, column: 3, scope: !4982)
!5002 = distinct !DISubprogram(name: "xalloc_die", scope: !963, file: !963, line: 32, type: !718, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1035, retainedNodes: !5003)
!5003 = !{!5004}
!5004 = !DILocalVariable(name: "__errstatus", scope: !5005, file: !963, line: 34, type: !5006)
!5005 = distinct !DILexicalBlock(scope: !5002, file: !963, line: 34, column: 3)
!5006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!5007 = !DILocation(line: 34, column: 3, scope: !5005)
!5008 = !DILocation(line: 0, scope: !5005)
!5009 = !DILocation(line: 40, column: 3, scope: !5002)
!5010 = distinct !DISubprogram(name: "close_stream", scope: !1038, file: !1038, line: 55, type: !5011, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !5047)
!5011 = !DISubroutineType(types: !5012)
!5012 = !{!122, !5013}
!5013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5014, size: 64)
!5014 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !5015)
!5015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !5016)
!5016 = !{!5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046}
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5015, file: !330, line: 51, baseType: !122, size: 32)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5015, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5015, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5015, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5015, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5015, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5015, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5015, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5015, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5015, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5015, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5015, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5015, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5015, file: !330, line: 70, baseType: !5031, size: 64, offset: 832)
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5015, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5015, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5015, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5015, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5015, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5015, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5015, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5015, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5015, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5015, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5015, file: !330, line: 93, baseType: !5031, size: 64, offset: 1344)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5015, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5015, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5015, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5015, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!5047 = !{!5048, !5049, !5051, !5052}
!5048 = !DILocalVariable(name: "stream", arg: 1, scope: !5010, file: !1038, line: 55, type: !5013)
!5049 = !DILocalVariable(name: "some_pending", scope: !5010, file: !1038, line: 57, type: !5050)
!5050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!5051 = !DILocalVariable(name: "prev_fail", scope: !5010, file: !1038, line: 58, type: !5050)
!5052 = !DILocalVariable(name: "fclose_fail", scope: !5010, file: !1038, line: 59, type: !5050)
!5053 = !DILocation(line: 0, scope: !5010)
!5054 = !DILocation(line: 57, column: 30, scope: !5010)
!5055 = !DILocalVariable(name: "__stream", arg: 1, scope: !5056, file: !2773, line: 135, type: !5013)
!5056 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2773, file: !2773, line: 135, type: !5011, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !5057)
!5057 = !{!5055}
!5058 = !DILocation(line: 0, scope: !5056, inlinedAt: !5059)
!5059 = distinct !DILocation(line: 58, column: 27, scope: !5010)
!5060 = !DILocation(line: 137, column: 10, scope: !5056, inlinedAt: !5059)
!5061 = !{!2782, !1154, i64 0}
!5062 = !DILocation(line: 58, column: 43, scope: !5010)
!5063 = !DILocation(line: 59, column: 29, scope: !5010)
!5064 = !DILocation(line: 59, column: 45, scope: !5010)
!5065 = !DILocation(line: 69, column: 17, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5010, file: !1038, line: 69, column: 7)
!5067 = !DILocation(line: 57, column: 50, scope: !5010)
!5068 = !DILocation(line: 69, column: 33, scope: !5066)
!5069 = !DILocation(line: 69, column: 53, scope: !5066)
!5070 = !DILocation(line: 69, column: 59, scope: !5066)
!5071 = !DILocation(line: 69, column: 7, scope: !5010)
!5072 = !DILocation(line: 71, column: 11, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5066, file: !1038, line: 70, column: 5)
!5074 = !DILocation(line: 72, column: 9, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5073, file: !1038, line: 71, column: 11)
!5076 = !DILocation(line: 72, column: 15, scope: !5075)
!5077 = !DILocation(line: 77, column: 1, scope: !5010)
!5078 = !DISubprogram(name: "__fpending", scope: !5079, file: !5079, line: 75, type: !5080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!5079 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!5080 = !DISubroutineType(types: !5081)
!5081 = !{!166, !5013}
!5082 = distinct !DISubprogram(name: "rpl_fclose", scope: !1040, file: !1040, line: 58, type: !5083, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1039, retainedNodes: !5119)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!122, !5085}
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !5087)
!5087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !5088)
!5088 = !{!5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118}
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5087, file: !330, line: 51, baseType: !122, size: 32)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5087, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5087, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5087, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5087, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5087, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5087, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5087, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5087, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5087, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5087, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5087, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5087, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5087, file: !330, line: 70, baseType: !5103, size: 64, offset: 832)
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5087, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5087, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5087, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5087, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5087, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5087, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5087, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5087, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5087, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5087, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5087, file: !330, line: 93, baseType: !5103, size: 64, offset: 1344)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5087, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5087, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5087, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5087, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!5119 = !{!5120, !5121, !5122, !5123}
!5120 = !DILocalVariable(name: "fp", arg: 1, scope: !5082, file: !1040, line: 58, type: !5085)
!5121 = !DILocalVariable(name: "saved_errno", scope: !5082, file: !1040, line: 60, type: !122)
!5122 = !DILocalVariable(name: "fd", scope: !5082, file: !1040, line: 63, type: !122)
!5123 = !DILocalVariable(name: "result", scope: !5082, file: !1040, line: 74, type: !122)
!5124 = !DILocation(line: 0, scope: !5082)
!5125 = !DILocation(line: 63, column: 12, scope: !5082)
!5126 = !DILocation(line: 64, column: 10, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5082, file: !1040, line: 64, column: 7)
!5128 = !DILocation(line: 64, column: 7, scope: !5082)
!5129 = !DILocation(line: 65, column: 12, scope: !5127)
!5130 = !DILocation(line: 65, column: 5, scope: !5127)
!5131 = !DILocation(line: 70, column: 9, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5082, file: !1040, line: 70, column: 7)
!5133 = !DILocation(line: 70, column: 23, scope: !5132)
!5134 = !DILocation(line: 70, column: 33, scope: !5132)
!5135 = !DILocation(line: 70, column: 26, scope: !5132)
!5136 = !DILocation(line: 70, column: 59, scope: !5132)
!5137 = !DILocation(line: 71, column: 7, scope: !5132)
!5138 = !DILocation(line: 71, column: 10, scope: !5132)
!5139 = !DILocation(line: 70, column: 7, scope: !5082)
!5140 = !DILocation(line: 100, column: 12, scope: !5082)
!5141 = !DILocation(line: 105, column: 7, scope: !5082)
!5142 = !DILocation(line: 72, column: 19, scope: !5132)
!5143 = !DILocation(line: 105, column: 19, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5082, file: !1040, line: 105, column: 7)
!5145 = !DILocation(line: 107, column: 13, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5144, file: !1040, line: 106, column: 5)
!5147 = !DILocation(line: 109, column: 5, scope: !5146)
!5148 = !DILocation(line: 112, column: 1, scope: !5082)
!5149 = !DISubprogram(name: "fileno", scope: !680, file: !680, line: 809, type: !5083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!5150 = !DISubprogram(name: "fclose", scope: !680, file: !680, line: 178, type: !5083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!5151 = !DISubprogram(name: "__freading", scope: !5079, file: !5079, line: 51, type: !5083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!5152 = !DISubprogram(name: "lseek", scope: !2403, file: !2403, line: 339, type: !5153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!352, !122, !352, !122}
!5155 = distinct !DISubprogram(name: "rpl_fflush", scope: !1042, file: !1042, line: 130, type: !5156, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !5192)
!5156 = !DISubroutineType(types: !5157)
!5157 = !{!122, !5158}
!5158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5159, size: 64)
!5159 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !5160)
!5160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !5161)
!5161 = !{!5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191}
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5160, file: !330, line: 51, baseType: !122, size: 32)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5160, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5160, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5160, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5160, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5160, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5160, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5160, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5160, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5160, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5160, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5160, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5160, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5160, file: !330, line: 70, baseType: !5176, size: 64, offset: 832)
!5176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5160, size: 64)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5160, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5160, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5160, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5160, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5160, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5160, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5160, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5160, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5160, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5160, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5160, file: !330, line: 93, baseType: !5176, size: 64, offset: 1344)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5160, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5160, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5160, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5160, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!5192 = !{!5193}
!5193 = !DILocalVariable(name: "stream", arg: 1, scope: !5155, file: !1042, line: 130, type: !5158)
!5194 = !DILocation(line: 0, scope: !5155)
!5195 = !DILocation(line: 151, column: 14, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5155, file: !1042, line: 151, column: 7)
!5197 = !DILocation(line: 151, column: 22, scope: !5196)
!5198 = !DILocation(line: 151, column: 27, scope: !5196)
!5199 = !DILocation(line: 151, column: 7, scope: !5155)
!5200 = !DILocation(line: 152, column: 12, scope: !5196)
!5201 = !DILocation(line: 152, column: 5, scope: !5196)
!5202 = !DILocalVariable(name: "fp", arg: 1, scope: !5203, file: !1042, line: 42, type: !5158)
!5203 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1042, file: !1042, line: 42, type: !5204, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !5206)
!5204 = !DISubroutineType(types: !5205)
!5205 = !{null, !5158}
!5206 = !{!5202}
!5207 = !DILocation(line: 0, scope: !5203, inlinedAt: !5208)
!5208 = distinct !DILocation(line: 157, column: 3, scope: !5155)
!5209 = !DILocation(line: 44, column: 12, scope: !5210, inlinedAt: !5208)
!5210 = distinct !DILexicalBlock(scope: !5203, file: !1042, line: 44, column: 7)
!5211 = !DILocation(line: 44, column: 19, scope: !5210, inlinedAt: !5208)
!5212 = !DILocation(line: 44, column: 7, scope: !5203, inlinedAt: !5208)
!5213 = !DILocation(line: 46, column: 5, scope: !5210, inlinedAt: !5208)
!5214 = !DILocation(line: 159, column: 10, scope: !5155)
!5215 = !DILocation(line: 159, column: 3, scope: !5155)
!5216 = !DILocation(line: 236, column: 1, scope: !5155)
!5217 = !DISubprogram(name: "fflush", scope: !680, file: !680, line: 230, type: !5156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!5218 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1044, file: !1044, line: 28, type: !5219, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1043, retainedNodes: !5256)
!5219 = !DISubroutineType(types: !5220)
!5220 = !{!122, !5221, !5255, !122}
!5221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5222, size: 64)
!5222 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !5223)
!5223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !5224)
!5224 = !{!5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254}
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5223, file: !330, line: 51, baseType: !122, size: 32)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5223, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5223, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5223, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5223, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5223, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5223, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5223, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5223, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5223, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5223, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5223, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5223, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5223, file: !330, line: 70, baseType: !5239, size: 64, offset: 832)
!5239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5223, size: 64)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5223, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5223, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5223, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5223, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5223, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5223, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5223, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5223, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5223, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5223, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5223, file: !330, line: 93, baseType: !5239, size: 64, offset: 1344)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5223, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5223, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5223, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5223, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!5255 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !680, line: 63, baseType: !352)
!5256 = !{!5257, !5258, !5259, !5260}
!5257 = !DILocalVariable(name: "fp", arg: 1, scope: !5218, file: !1044, line: 28, type: !5221)
!5258 = !DILocalVariable(name: "offset", arg: 2, scope: !5218, file: !1044, line: 28, type: !5255)
!5259 = !DILocalVariable(name: "whence", arg: 3, scope: !5218, file: !1044, line: 28, type: !122)
!5260 = !DILocalVariable(name: "pos", scope: !5261, file: !1044, line: 123, type: !5255)
!5261 = distinct !DILexicalBlock(scope: !5262, file: !1044, line: 119, column: 5)
!5262 = distinct !DILexicalBlock(scope: !5218, file: !1044, line: 55, column: 7)
!5263 = !DILocation(line: 0, scope: !5218)
!5264 = !DILocation(line: 55, column: 12, scope: !5262)
!5265 = !{!2782, !1072, i64 16}
!5266 = !DILocation(line: 55, column: 33, scope: !5262)
!5267 = !{!2782, !1072, i64 8}
!5268 = !DILocation(line: 55, column: 25, scope: !5262)
!5269 = !DILocation(line: 56, column: 7, scope: !5262)
!5270 = !DILocation(line: 56, column: 15, scope: !5262)
!5271 = !DILocation(line: 56, column: 37, scope: !5262)
!5272 = !{!2782, !1072, i64 32}
!5273 = !DILocation(line: 56, column: 29, scope: !5262)
!5274 = !DILocation(line: 57, column: 7, scope: !5262)
!5275 = !DILocation(line: 57, column: 15, scope: !5262)
!5276 = !{!2782, !1072, i64 72}
!5277 = !DILocation(line: 57, column: 29, scope: !5262)
!5278 = !DILocation(line: 55, column: 7, scope: !5218)
!5279 = !DILocation(line: 123, column: 26, scope: !5261)
!5280 = !DILocation(line: 123, column: 19, scope: !5261)
!5281 = !DILocation(line: 0, scope: !5261)
!5282 = !DILocation(line: 124, column: 15, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5261, file: !1044, line: 124, column: 11)
!5284 = !DILocation(line: 124, column: 11, scope: !5261)
!5285 = !DILocation(line: 135, column: 19, scope: !5261)
!5286 = !DILocation(line: 136, column: 12, scope: !5261)
!5287 = !DILocation(line: 136, column: 20, scope: !5261)
!5288 = !{!2782, !1343, i64 144}
!5289 = !DILocation(line: 167, column: 7, scope: !5261)
!5290 = !DILocation(line: 169, column: 10, scope: !5218)
!5291 = !DILocation(line: 169, column: 3, scope: !5218)
!5292 = !DILocation(line: 170, column: 1, scope: !5218)
!5293 = !DISubprogram(name: "fseeko", scope: !680, file: !680, line: 736, type: !5294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{!122, !5221, !352, !122}
!5296 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !970, file: !970, line: 100, type: !5297, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !5300)
!5297 = !DISubroutineType(types: !5298)
!5298 = !{!166, !2946, !169, !166, !5299}
!5299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!5300 = !{!5301, !5302, !5303, !5304, !5305}
!5301 = !DILocalVariable(name: "pwc", arg: 1, scope: !5296, file: !970, line: 100, type: !2946)
!5302 = !DILocalVariable(name: "s", arg: 2, scope: !5296, file: !970, line: 100, type: !169)
!5303 = !DILocalVariable(name: "n", arg: 3, scope: !5296, file: !970, line: 100, type: !166)
!5304 = !DILocalVariable(name: "ps", arg: 4, scope: !5296, file: !970, line: 100, type: !5299)
!5305 = !DILocalVariable(name: "ret", scope: !5296, file: !970, line: 130, type: !166)
!5306 = !DILocation(line: 0, scope: !5296)
!5307 = !DILocation(line: 105, column: 9, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5296, file: !970, line: 105, column: 7)
!5309 = !DILocation(line: 105, column: 7, scope: !5296)
!5310 = !DILocation(line: 117, column: 10, scope: !5311)
!5311 = distinct !DILexicalBlock(scope: !5296, file: !970, line: 117, column: 7)
!5312 = !DILocation(line: 117, column: 7, scope: !5296)
!5313 = !DILocation(line: 130, column: 16, scope: !5296)
!5314 = !DILocation(line: 135, column: 11, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5296, file: !970, line: 135, column: 7)
!5316 = !DILocation(line: 135, column: 25, scope: !5315)
!5317 = !DILocation(line: 135, column: 30, scope: !5315)
!5318 = !DILocation(line: 135, column: 7, scope: !5296)
!5319 = !DILocalVariable(name: "ps", arg: 1, scope: !5320, file: !2920, line: 1135, type: !5299)
!5320 = distinct !DISubprogram(name: "mbszero", scope: !2920, file: !2920, line: 1135, type: !5321, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !5323)
!5321 = !DISubroutineType(types: !5322)
!5322 = !{null, !5299}
!5323 = !{!5319}
!5324 = !DILocation(line: 0, scope: !5320, inlinedAt: !5325)
!5325 = distinct !DILocation(line: 137, column: 5, scope: !5315)
!5326 = !DILocalVariable(name: "__dest", arg: 1, scope: !5327, file: !1545, line: 57, type: !164)
!5327 = distinct !DISubprogram(name: "memset", scope: !1545, file: !1545, line: 57, type: !2929, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !5328)
!5328 = !{!5326, !5329, !5330}
!5329 = !DILocalVariable(name: "__ch", arg: 2, scope: !5327, file: !1545, line: 57, type: !122)
!5330 = !DILocalVariable(name: "__len", arg: 3, scope: !5327, file: !1545, line: 57, type: !166)
!5331 = !DILocation(line: 0, scope: !5327, inlinedAt: !5332)
!5332 = distinct !DILocation(line: 1137, column: 3, scope: !5320, inlinedAt: !5325)
!5333 = !DILocation(line: 59, column: 10, scope: !5327, inlinedAt: !5332)
!5334 = !DILocation(line: 137, column: 5, scope: !5315)
!5335 = !DILocation(line: 138, column: 11, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5296, file: !970, line: 138, column: 7)
!5337 = !DILocation(line: 138, column: 7, scope: !5296)
!5338 = !DILocation(line: 139, column: 5, scope: !5336)
!5339 = !DILocation(line: 143, column: 26, scope: !5340)
!5340 = distinct !DILexicalBlock(scope: !5296, file: !970, line: 143, column: 7)
!5341 = !DILocation(line: 143, column: 41, scope: !5340)
!5342 = !DILocation(line: 143, column: 7, scope: !5296)
!5343 = !DILocation(line: 145, column: 15, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5345, file: !970, line: 145, column: 11)
!5345 = distinct !DILexicalBlock(scope: !5340, file: !970, line: 144, column: 5)
!5346 = !DILocation(line: 145, column: 11, scope: !5345)
!5347 = !DILocation(line: 146, column: 32, scope: !5344)
!5348 = !DILocation(line: 146, column: 16, scope: !5344)
!5349 = !DILocation(line: 146, column: 14, scope: !5344)
!5350 = !DILocation(line: 146, column: 9, scope: !5344)
!5351 = !DILocation(line: 286, column: 1, scope: !5296)
!5352 = !DISubprogram(name: "mbsinit", scope: !5353, file: !5353, line: 293, type: !5354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1080)
!5353 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5354 = !DISubroutineType(types: !5355)
!5355 = !{!122, !5356}
!5356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5357, size: 64)
!5357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !976)
!5358 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1046, file: !1046, line: 27, type: !4571, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1045, retainedNodes: !5359)
!5359 = !{!5360, !5361, !5362, !5363}
!5360 = !DILocalVariable(name: "ptr", arg: 1, scope: !5358, file: !1046, line: 27, type: !164)
!5361 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5358, file: !1046, line: 27, type: !166)
!5362 = !DILocalVariable(name: "size", arg: 3, scope: !5358, file: !1046, line: 27, type: !166)
!5363 = !DILocalVariable(name: "nbytes", scope: !5358, file: !1046, line: 29, type: !166)
!5364 = !DILocation(line: 0, scope: !5358)
!5365 = !DILocation(line: 30, column: 7, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5358, file: !1046, line: 30, column: 7)
!5367 = !DILocalVariable(name: "ptr", arg: 1, scope: !5368, file: !4663, line: 2057, type: !164)
!5368 = distinct !DISubprogram(name: "rpl_realloc", scope: !4663, file: !4663, line: 2057, type: !4655, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1045, retainedNodes: !5369)
!5369 = !{!5367, !5370}
!5370 = !DILocalVariable(name: "size", arg: 2, scope: !5368, file: !4663, line: 2057, type: !166)
!5371 = !DILocation(line: 0, scope: !5368, inlinedAt: !5372)
!5372 = distinct !DILocation(line: 37, column: 10, scope: !5358)
!5373 = !DILocation(line: 2059, column: 24, scope: !5368, inlinedAt: !5372)
!5374 = !DILocation(line: 2059, column: 10, scope: !5368, inlinedAt: !5372)
!5375 = !DILocation(line: 37, column: 3, scope: !5358)
!5376 = !DILocation(line: 32, column: 7, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5366, file: !1046, line: 31, column: 5)
!5378 = !DILocation(line: 32, column: 13, scope: !5377)
!5379 = !DILocation(line: 33, column: 7, scope: !5377)
!5380 = !DILocation(line: 38, column: 1, scope: !5358)
!5381 = distinct !DISubprogram(name: "hard_locale", scope: !988, file: !988, line: 28, type: !1510, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !5382)
!5382 = !{!5383, !5384}
!5383 = !DILocalVariable(name: "category", arg: 1, scope: !5381, file: !988, line: 28, type: !122)
!5384 = !DILocalVariable(name: "locale", scope: !5381, file: !988, line: 30, type: !5385)
!5385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5386)
!5386 = !{!5387}
!5387 = !DISubrange(count: 257)
!5388 = !DILocation(line: 0, scope: !5381)
!5389 = !DILocation(line: 30, column: 3, scope: !5381)
!5390 = !DILocation(line: 30, column: 8, scope: !5381)
!5391 = !DILocation(line: 32, column: 7, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5381, file: !988, line: 32, column: 7)
!5393 = !DILocation(line: 32, column: 7, scope: !5381)
!5394 = !DILocalVariable(name: "__s1", arg: 1, scope: !5395, file: !1166, line: 1359, type: !169)
!5395 = distinct !DISubprogram(name: "streq", scope: !1166, file: !1166, line: 1359, type: !1167, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !5396)
!5396 = !{!5394, !5397}
!5397 = !DILocalVariable(name: "__s2", arg: 2, scope: !5395, file: !1166, line: 1359, type: !169)
!5398 = !DILocation(line: 0, scope: !5395, inlinedAt: !5399)
!5399 = distinct !DILocation(line: 35, column: 9, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !5381, file: !988, line: 35, column: 7)
!5401 = !DILocation(line: 1361, column: 11, scope: !5395, inlinedAt: !5399)
!5402 = !DILocation(line: 1361, column: 10, scope: !5395, inlinedAt: !5399)
!5403 = !DILocation(line: 35, column: 29, scope: !5400)
!5404 = !DILocation(line: 0, scope: !5395, inlinedAt: !5405)
!5405 = distinct !DILocation(line: 35, column: 32, scope: !5400)
!5406 = !DILocation(line: 1361, column: 11, scope: !5395, inlinedAt: !5405)
!5407 = !DILocation(line: 1361, column: 10, scope: !5395, inlinedAt: !5405)
!5408 = !DILocation(line: 35, column: 7, scope: !5381)
!5409 = !DILocation(line: 46, column: 3, scope: !5381)
!5410 = !DILocation(line: 47, column: 1, scope: !5381)
!5411 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1051, file: !1051, line: 154, type: !5412, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1050, retainedNodes: !5414)
!5412 = !DISubroutineType(types: !5413)
!5413 = !{!122, !122, !163, !166}
!5414 = !{!5415, !5416, !5417}
!5415 = !DILocalVariable(name: "category", arg: 1, scope: !5411, file: !1051, line: 154, type: !122)
!5416 = !DILocalVariable(name: "buf", arg: 2, scope: !5411, file: !1051, line: 154, type: !163)
!5417 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5411, file: !1051, line: 154, type: !166)
!5418 = !DILocation(line: 0, scope: !5411)
!5419 = !DILocation(line: 159, column: 10, scope: !5411)
!5420 = !DILocation(line: 159, column: 3, scope: !5411)
!5421 = distinct !DISubprogram(name: "setlocale_null", scope: !1051, file: !1051, line: 186, type: !5422, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1050, retainedNodes: !5424)
!5422 = !DISubroutineType(types: !5423)
!5423 = !{!169, !122}
!5424 = !{!5425}
!5425 = !DILocalVariable(name: "category", arg: 1, scope: !5421, file: !1051, line: 186, type: !122)
!5426 = !DILocation(line: 0, scope: !5421)
!5427 = !DILocation(line: 189, column: 10, scope: !5421)
!5428 = !DILocation(line: 189, column: 3, scope: !5421)
!5429 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1053, file: !1053, line: 35, type: !5422, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1052, retainedNodes: !5430)
!5430 = !{!5431, !5432}
!5431 = !DILocalVariable(name: "category", arg: 1, scope: !5429, file: !1053, line: 35, type: !122)
!5432 = !DILocalVariable(name: "result", scope: !5429, file: !1053, line: 37, type: !169)
!5433 = !DILocation(line: 0, scope: !5429)
!5434 = !DILocation(line: 37, column: 24, scope: !5429)
!5435 = !DILocation(line: 62, column: 3, scope: !5429)
!5436 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1053, file: !1053, line: 66, type: !5412, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1052, retainedNodes: !5437)
!5437 = !{!5438, !5439, !5440, !5441, !5442}
!5438 = !DILocalVariable(name: "category", arg: 1, scope: !5436, file: !1053, line: 66, type: !122)
!5439 = !DILocalVariable(name: "buf", arg: 2, scope: !5436, file: !1053, line: 66, type: !163)
!5440 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5436, file: !1053, line: 66, type: !166)
!5441 = !DILocalVariable(name: "result", scope: !5436, file: !1053, line: 111, type: !169)
!5442 = !DILocalVariable(name: "length", scope: !5443, file: !1053, line: 125, type: !166)
!5443 = distinct !DILexicalBlock(scope: !5444, file: !1053, line: 124, column: 5)
!5444 = distinct !DILexicalBlock(scope: !5436, file: !1053, line: 113, column: 7)
!5445 = !DILocation(line: 0, scope: !5436)
!5446 = !DILocation(line: 0, scope: !5429, inlinedAt: !5447)
!5447 = distinct !DILocation(line: 111, column: 24, scope: !5436)
!5448 = !DILocation(line: 37, column: 24, scope: !5429, inlinedAt: !5447)
!5449 = !DILocation(line: 113, column: 14, scope: !5444)
!5450 = !DILocation(line: 113, column: 7, scope: !5436)
!5451 = !DILocation(line: 116, column: 19, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5453, file: !1053, line: 116, column: 11)
!5453 = distinct !DILexicalBlock(scope: !5444, file: !1053, line: 114, column: 5)
!5454 = !DILocation(line: 116, column: 11, scope: !5453)
!5455 = !DILocation(line: 120, column: 16, scope: !5452)
!5456 = !DILocation(line: 120, column: 9, scope: !5452)
!5457 = !DILocation(line: 125, column: 23, scope: !5443)
!5458 = !DILocation(line: 0, scope: !5443)
!5459 = !DILocation(line: 126, column: 18, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5443, file: !1053, line: 126, column: 11)
!5461 = !DILocation(line: 126, column: 11, scope: !5443)
!5462 = !DILocation(line: 128, column: 39, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5460, file: !1053, line: 127, column: 9)
!5464 = !DILocalVariable(name: "__dest", arg: 1, scope: !5465, file: !1545, line: 26, type: !1548)
!5465 = distinct !DISubprogram(name: "memcpy", scope: !1545, file: !1545, line: 26, type: !1546, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1052, retainedNodes: !5466)
!5466 = !{!5464, !5467, !5468}
!5467 = !DILocalVariable(name: "__src", arg: 2, scope: !5465, file: !1545, line: 26, type: !1297)
!5468 = !DILocalVariable(name: "__len", arg: 3, scope: !5465, file: !1545, line: 26, type: !166)
!5469 = !DILocation(line: 0, scope: !5465, inlinedAt: !5470)
!5470 = distinct !DILocation(line: 128, column: 11, scope: !5463)
!5471 = !DILocation(line: 29, column: 10, scope: !5465, inlinedAt: !5470)
!5472 = !DILocation(line: 129, column: 11, scope: !5463)
!5473 = !DILocation(line: 133, column: 23, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5475, file: !1053, line: 133, column: 15)
!5475 = distinct !DILexicalBlock(scope: !5460, file: !1053, line: 132, column: 9)
!5476 = !DILocation(line: 133, column: 15, scope: !5475)
!5477 = !DILocation(line: 138, column: 44, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5474, file: !1053, line: 134, column: 13)
!5479 = !DILocation(line: 0, scope: !5465, inlinedAt: !5480)
!5480 = distinct !DILocation(line: 138, column: 15, scope: !5478)
!5481 = !DILocation(line: 29, column: 10, scope: !5465, inlinedAt: !5480)
!5482 = !DILocation(line: 139, column: 15, scope: !5478)
!5483 = !DILocation(line: 139, column: 32, scope: !5478)
!5484 = !DILocation(line: 140, column: 13, scope: !5478)
!5485 = !DILocation(line: 0, scope: !5444)
!5486 = !DILocation(line: 145, column: 1, scope: !5436)
