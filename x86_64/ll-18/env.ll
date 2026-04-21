; ModuleID = 'src/env.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

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
@shortopts = internal constant [19 x i8] c"+a:C:iS:u:v0 \09\0A\0B\0C\0D\00", align 16, !dbg !103
@longopts = internal constant [14 x %struct.option] [%struct.option { ptr @.str.80, i32 1, ptr null, i32 97 }, %struct.option { ptr @.str.81, i32 0, ptr null, i32 105 }, %struct.option { ptr @.str.82, i32 0, ptr null, i32 48 }, %struct.option { ptr @.str.83, i32 1, ptr null, i32 117 }, %struct.option { ptr @.str.84, i32 1, ptr null, i32 67 }, %struct.option { ptr @.str.85, i32 2, ptr null, i32 128 }, %struct.option { ptr @.str.86, i32 2, ptr null, i32 129 }, %struct.option { ptr @.str.87, i32 2, ptr null, i32 130 }, %struct.option { ptr @.str.88, i32 0, ptr null, i32 131 }, %struct.option { ptr @.str.89, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.90, i32 1, ptr null, i32 83 }, %struct.option { ptr @.str.91, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.92, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !514
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !663
@.str.53 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !655
@.str.1.54 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !657
@.str.2.55 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !659
@.str.3.56 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !661
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !665
@stderr = external local_unnamed_addr global ptr, align 8
@.str.57 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !671
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !702
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !673
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !692
@.str.1.63 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !694
@.str.2.65 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !696
@.str.3.64 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !698
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !700
@.str.4.58 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !704
@.str.5.59 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !706
@.str.6.60 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !708
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !713
@.str.74 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !719
@.str.1.75 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !721
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !723
@.str.121 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !754
@.str.1.122 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !757
@.str.2.123 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !759
@.str.3.124 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !761
@.str.4.125 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !763
@.str.5.126 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !765
@.str.6.127 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !767
@.str.7.128 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !769
@.str.8.129 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !771
@.str.9.130 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !773
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.121, ptr @.str.1.122, ptr @.str.2.123, ptr @.str.3.124, ptr @.str.4.125, ptr @.str.5.126, ptr @.str.6.127, ptr @.str.7.128, ptr @.str.8.129, ptr @.str.9.130, ptr null], align 16, !dbg !775
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !788
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !802
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !840
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !847
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !804
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !849
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !792
@.str.10.133 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !809
@.str.11.131 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !811
@.str.12.134 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !813
@.str.13.132 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !815
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !817
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 16, !dbg !855
@.str.143 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1, !dbg !861
@.str.1.144 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1, !dbg !863
@.str.2.147 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1, !dbg !865
@.str.148 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !875
@.str.1.149 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !878
@.str.2.150 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !880
@.str.3.151 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !882
@.str.4.152 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !884
@.str.5.153 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !886
@.str.6.154 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !891
@.str.7.155 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !893
@.str.8.156 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !895
@.str.9.157 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !897
@.str.10.158 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !902
@.str.11.159 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !907
@.str.12.160 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !912
@.str.13.161 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !914
@.str.14.162 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !919
@.str.15.163 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !921
@.str.16.164 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !926
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.169 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !928
@.str.18.170 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !930
@.str.19.171 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !932
@.str.20.172 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !934
@.str.21.173 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !936
@.str.22.174 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !938
@.str.23.175 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !940
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !942
@exit_failure = dso_local global i32 1, align 4, !dbg !950
@.str.194 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !956
@.str.1.192 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !959
@.str.2.193 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !961
@.str.205 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !963
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !966
@.str.1.210 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !981

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1060 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1062, metadata !DIExpression()), !dbg !1063
  %2 = icmp eq i32 %0, 0, !dbg !1064
  br i1 %2, label %8, label %3, !dbg !1066

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1067, !tbaa !1069
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #41, !dbg !1067
  %6 = load ptr, ptr @program_name, align 8, !dbg !1067, !tbaa !1069
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #41, !dbg !1067
  br label %53, !dbg !1067

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #41, !dbg !1073
  %10 = load ptr, ptr @program_name, align 8, !dbg !1073, !tbaa !1069
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #41, !dbg !1073
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #41, !dbg !1075
  %13 = load ptr, ptr @stdout, align 8, !dbg !1075, !tbaa !1069
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1075
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #41, !dbg !1076
  %16 = load ptr, ptr @stdout, align 8, !dbg !1076, !tbaa !1069
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1076
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #41, !dbg !1079
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !1079
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #41, !dbg !1080
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !1080
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #41, !dbg !1081
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !1081
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #41, !dbg !1082
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1082
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #41, !dbg !1083
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1083
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #41, !dbg !1084
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1084
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #41, !dbg !1085
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1085
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #41, !dbg !1086
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !1086
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #41, !dbg !1087
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !1087
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #41, !dbg !1088
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !1088
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #41, !dbg !1089
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !1089
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #41, !dbg !1090
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !1090
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #41, !dbg !1091
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !1091
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #41, !dbg !1092
  %32 = load ptr, ptr @stdout, align 8, !dbg !1092, !tbaa !1069
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !1092
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #41, !dbg !1093
  %35 = load ptr, ptr @stdout, align 8, !dbg !1093, !tbaa !1069
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !1093
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1094, metadata !DIExpression()), !dbg !1099
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.71, i32 noundef 5) #41, !dbg !1101
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.3) #41, !dbg !1101
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1102, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata !1119, metadata !1113, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata ptr poison, metadata !1112, metadata !DIExpression()), !dbg !1117
  tail call void @emit_bug_reporting_address() #41, !dbg !1120
  %39 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #41, !dbg !1121
  call void @llvm.dbg.value(metadata ptr %39, metadata !1115, metadata !DIExpression()), !dbg !1117
  %40 = icmp eq ptr %39, null, !dbg !1122
  br i1 %40, label %48, label %41, !dbg !1124

41:                                               ; preds = %8
  %42 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(4) @.str.75, i64 noundef 3) #42, !dbg !1125
  %43 = icmp eq i32 %42, 0, !dbg !1125
  br i1 %43, label %48, label %44, !dbg !1126

44:                                               ; preds = %41
  %45 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.76, i32 noundef 5) #41, !dbg !1127
  %46 = load ptr, ptr @stdout, align 8, !dbg !1127, !tbaa !1069
  %47 = tail call i32 @fputs_unlocked(ptr noundef %45, ptr noundef %46), !dbg !1127
  br label %48, !dbg !1129

48:                                               ; preds = %8, %41, %44
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1112, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1116, metadata !DIExpression()), !dbg !1117
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #41, !dbg !1130
  %50 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %49, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.3) #41, !dbg !1130
  %51 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1131
  %52 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %51, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.79) #41, !dbg !1131
  br label %53

53:                                               ; preds = %48, %3
  tail call void @exit(i32 noundef %0) #43, !dbg !1132
  unreachable, !dbg !1132
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1133 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1137 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1143 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1146 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !304 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !308, metadata !DIExpression()), !dbg !1150
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !309, metadata !DIExpression()), !dbg !1150
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1151, !tbaa !1152
  %3 = icmp eq i32 %2, -1, !dbg !1154
  br i1 %3, label %4, label %16, !dbg !1155

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.44) #41, !dbg !1156
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !310, metadata !DIExpression()), !dbg !1157
  %6 = icmp eq ptr %5, null, !dbg !1158
  br i1 %6, label %14, label %7, !dbg !1159

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1160, !tbaa !1161
  %9 = icmp eq i8 %8, 0, !dbg !1160
  br i1 %9, label %14, label %10, !dbg !1162

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1163, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata ptr @.str.45, metadata !1169, metadata !DIExpression()), !dbg !1170
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.45) #42, !dbg !1172
  %12 = icmp eq i32 %11, 0, !dbg !1173
  %13 = zext i1 %12 to i32, !dbg !1162
  br label %14, !dbg !1162

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1174, !tbaa !1152
  br label %16, !dbg !1175

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1176
  %18 = icmp eq i32 %17, 0, !dbg !1176
  br i1 %18, label %22, label %19, !dbg !1178

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1179, !tbaa !1069
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1179
  br label %124, !dbg !1181

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !313, metadata !DIExpression()), !dbg !1150
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.46) #42, !dbg !1182
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1183
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !314, metadata !DIExpression()), !dbg !1150
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #42, !dbg !1184
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !315, metadata !DIExpression()), !dbg !1150
  %26 = icmp eq ptr %25, null, !dbg !1185
  br i1 %26, label %54, label %27, !dbg !1186

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1187
  br i1 %28, label %54, label %29, !dbg !1188

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !316, metadata !DIExpression()), !dbg !1189
  tail call void @llvm.dbg.value(metadata i64 0, metadata !320, metadata !DIExpression()), !dbg !1189
  %30 = icmp ult ptr %24, %25, !dbg !1190
  br i1 %30, label %31, label %54, !dbg !1191

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #44, !dbg !1150
  %33 = load ptr, ptr %32, align 8, !tbaa !1069
  br label %34, !dbg !1191

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !316, metadata !DIExpression()), !dbg !1189
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !320, metadata !DIExpression()), !dbg !1189
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1192
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !316, metadata !DIExpression()), !dbg !1189
  %38 = load i8, ptr %35, align 1, !dbg !1192, !tbaa !1161
  %39 = sext i8 %38 to i64, !dbg !1192
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1192
  %41 = load i16, ptr %40, align 2, !dbg !1192, !tbaa !1193
  %42 = freeze i16 %41, !dbg !1195
  %43 = lshr i16 %42, 13, !dbg !1195
  %44 = and i16 %43, 1, !dbg !1195
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1196
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !320, metadata !DIExpression()), !dbg !1189
  %47 = icmp ult ptr %37, %25, !dbg !1190
  %48 = icmp ult i64 %46, 2, !dbg !1197
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1197
  br i1 %49, label %34, label %50, !dbg !1191, !llvm.loop !1198

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1200
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1202
  %53 = zext i1 %51 to i8, !dbg !1202
  br label %54, !dbg !1202

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1150
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !1150
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !313, metadata !DIExpression()), !dbg !1150
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !315, metadata !DIExpression()), !dbg !1150
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.47) #42, !dbg !1203
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !321, metadata !DIExpression()), !dbg !1150
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1204
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !322, metadata !DIExpression()), !dbg !1150
  br label %59, !dbg !1205

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !1150
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !1150
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !313, metadata !DIExpression()), !dbg !1150
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !322, metadata !DIExpression()), !dbg !1150
  %62 = load i8, ptr %60, align 1, !dbg !1206, !tbaa !1161
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !1207

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1208
  %65 = load i8, ptr %64, align 1, !dbg !1211, !tbaa !1161
  %66 = icmp eq i8 %65, 45, !dbg !1212
  %67 = select i1 %66, i8 0, i8 %61, !dbg !1213
  br label %68, !dbg !1213

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !1150
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !313, metadata !DIExpression()), !dbg !1150
  %70 = tail call ptr @__ctype_b_loc() #44, !dbg !1214
  %71 = load ptr, ptr %70, align 8, !dbg !1214, !tbaa !1069
  %72 = sext i8 %62 to i64, !dbg !1214
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1214
  %74 = load i16, ptr %73, align 2, !dbg !1214, !tbaa !1193
  %75 = and i16 %74, 8192, !dbg !1214
  %76 = icmp eq i16 %75, 0, !dbg !1214
  br i1 %76, label %92, label %77, !dbg !1216

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1217
  br i1 %78, label %94, label %79, !dbg !1220

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1221
  %81 = load i8, ptr %80, align 1, !dbg !1221, !tbaa !1161
  %82 = sext i8 %81 to i64, !dbg !1221
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1221
  %84 = load i16, ptr %83, align 2, !dbg !1221, !tbaa !1193
  %85 = and i16 %84, 8192, !dbg !1221
  %86 = icmp eq i16 %85, 0, !dbg !1221
  br i1 %86, label %87, label %94, !dbg !1222

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !1223
  %89 = icmp ne i8 %88, 0, !dbg !1223
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !1225
  br i1 %91, label %92, label %94, !dbg !1225

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1226
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !322, metadata !DIExpression()), !dbg !1150
  br label %59, !dbg !1205, !llvm.loop !1227

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !1229
  %96 = load ptr, ptr @stdout, align 8, !dbg !1229, !tbaa !1069
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !1229
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1163, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata !1119, metadata !1169, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1163, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata !1119, metadata !1169, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1163, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata !1119, metadata !1169, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1163, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata !1119, metadata !1169, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1163, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata !1119, metadata !1169, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1163, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata !1119, metadata !1169, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1163, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata !1119, metadata !1169, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1163, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata !1119, metadata !1169, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1163, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata !1119, metadata !1169, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1163, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata !1119, metadata !1169, metadata !DIExpression()), !dbg !1248
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !378, metadata !DIExpression()), !dbg !1150
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.61, i64 noundef 6) #42, !dbg !1250
  %99 = icmp eq i32 %98, 0, !dbg !1250
  br i1 %99, label %103, label %100, !dbg !1252

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.62, i64 noundef 9) #42, !dbg !1253
  %102 = icmp eq i32 %101, 0, !dbg !1253
  br i1 %102, label %103, label %106, !dbg !1254

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1255
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #41, !dbg !1255
  br label %109, !dbg !1257

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1258
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #41, !dbg !1258
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1260, !tbaa !1069
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.67, ptr noundef %110), !dbg !1260
  %112 = load ptr, ptr @stdout, align 8, !dbg !1261, !tbaa !1069
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.68, ptr noundef %112), !dbg !1261
  %114 = ptrtoint ptr %60 to i64, !dbg !1262
  %115 = sub i64 %114, %95, !dbg !1262
  %116 = load ptr, ptr @stdout, align 8, !dbg !1262, !tbaa !1069
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1262
  %118 = load ptr, ptr @stdout, align 8, !dbg !1263, !tbaa !1069
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.69, ptr noundef %118), !dbg !1263
  %120 = load ptr, ptr @stdout, align 8, !dbg !1264, !tbaa !1069
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.70, ptr noundef %120), !dbg !1264
  %122 = load ptr, ptr @stdout, align 8, !dbg !1265, !tbaa !1069
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1265
  br label %124, !dbg !1266

124:                                              ; preds = %109, %19
  ret void, !dbg !1266
}

; Function Attrs: nounwind
declare !dbg !1267 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1271 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1275 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1277 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1280 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1283 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1286 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1289 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1295 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1296 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !223 {
  %3 = alloca %struct.__sigset_t, align 8, !DIAssignID !1302
  %4 = alloca %struct.sigaction, align 8, !DIAssignID !1303
  %5 = alloca [19 x i8], align 16, !DIAssignID !1304
  %6 = alloca %struct.__sigset_t, align 8, !DIAssignID !1305
  %7 = alloca [19 x i8], align 16, !DIAssignID !1306
  %8 = alloca %struct.sigaction, align 8, !DIAssignID !1307
  %9 = alloca [19 x i8], align 16, !DIAssignID !1308
  %10 = alloca %struct.splitbuf, align 8, !DIAssignID !1309
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !228, metadata !DIExpression()), !dbg !1310
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !229, metadata !DIExpression()), !dbg !1310
  tail call void @llvm.dbg.value(metadata i8 0, metadata !230, metadata !DIExpression()), !dbg !1310
  tail call void @llvm.dbg.value(metadata i8 0, metadata !232, metadata !DIExpression()), !dbg !1310
  tail call void @llvm.dbg.value(metadata ptr null, metadata !233, metadata !DIExpression()), !dbg !1310
  tail call void @llvm.dbg.value(metadata ptr null, metadata !234, metadata !DIExpression()), !dbg !1310
  %11 = load ptr, ptr %1, align 8, !dbg !1311, !tbaa !1069
  tail call void @set_program_name(ptr noundef %11) #41, !dbg !1312
  %12 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.19) #41, !dbg !1313
  %13 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #41, !dbg !1314
  %14 = tail call ptr @textdomain(ptr noundef nonnull @.str.20) #41, !dbg !1315
  tail call void @llvm.dbg.value(metadata i32 125, metadata !1316, metadata !DIExpression()), !dbg !1319
  store volatile i32 125, ptr @exit_failure, align 4, !dbg !1321, !tbaa !1152
  %15 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #41, !dbg !1323
  %16 = tail call noalias nonnull dereferenceable(260) ptr @xmalloc(i64 noundef 260) #45, !dbg !1324
  store ptr %16, ptr @signals, align 8, !dbg !1330, !tbaa !1069
  call void @llvm.dbg.value(metadata i32 0, metadata !1327, metadata !DIExpression()), !dbg !1331
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %16, i8 0, i64 260, i1 false), !dbg !1332, !tbaa !1152
  call void @llvm.dbg.value(metadata i64 poison, metadata !1327, metadata !DIExpression()), !dbg !1331
  %17 = getelementptr inbounds %struct.splitbuf, ptr %10, i64 0, i32 1
  %18 = getelementptr inbounds %struct.splitbuf, ptr %10, i64 0, i32 2
  %19 = getelementptr inbounds %struct.splitbuf, ptr %10, i64 0, i32 3
  %20 = getelementptr inbounds %struct.splitbuf, ptr %10, i64 0, i32 4
  br label %21, !dbg !1334

21:                                               ; preds = %29, %2
  %22 = phi i32 [ %0, %2 ], [ %30, %29 ]
  %23 = phi ptr [ %1, %2 ], [ %31, %29 ]
  %24 = phi ptr [ null, %2 ], [ %32, %29 ], !dbg !1335
  %25 = phi ptr [ null, %2 ], [ %33, %29 ], !dbg !1336
  %26 = phi i8 [ 0, %2 ], [ %34, %29 ], !dbg !1337
  %27 = phi i8 [ 0, %2 ], [ %35, %29 ], !dbg !1338
  tail call void @llvm.dbg.value(metadata ptr %23, metadata !229, metadata !DIExpression()), !dbg !1310
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !228, metadata !DIExpression()), !dbg !1310
  tail call void @llvm.dbg.value(metadata i8 %27, metadata !230, metadata !DIExpression()), !dbg !1310
  tail call void @llvm.dbg.value(metadata i8 %26, metadata !232, metadata !DIExpression()), !dbg !1310
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !233, metadata !DIExpression()), !dbg !1310
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !234, metadata !DIExpression()), !dbg !1310
  %28 = call i32 @getopt_long(i32 noundef %22, ptr noundef %23, ptr noundef nonnull @shortopts, ptr noundef nonnull @longopts, ptr noundef null) #41, !dbg !1339
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !235, metadata !DIExpression()), !dbg !1310
  switch i32 %28, label %382 [
    i32 -1, label %383
    i32 97, label %36
    i32 105, label %29
    i32 117, label %38
    i32 118, label %52
    i32 48, label %53
    i32 128, label %54
    i32 129, label %57
    i32 130, label %59
    i32 131, label %61
    i32 67, label %62
    i32 83, label %64
    i32 32, label %372
    i32 9, label %372
    i32 10, label %372
    i32 11, label %372
    i32 12, label %372
    i32 13, label %372
    i32 -130, label %375
    i32 -131, label %376
  ], !dbg !1334

29:                                               ; preds = %21, %363, %62, %61, %59, %57, %54, %53, %52, %47, %36
  %30 = phi i32 [ %371, %363 ], [ %22, %62 ], [ %22, %61 ], [ %22, %59 ], [ %22, %57 ], [ %22, %54 ], [ %22, %53 ], [ %22, %52 ], [ %22, %47 ], [ %22, %21 ], [ %22, %36 ]
  %31 = phi ptr [ %291, %363 ], [ %23, %62 ], [ %23, %61 ], [ %23, %59 ], [ %23, %57 ], [ %23, %54 ], [ %23, %53 ], [ %23, %52 ], [ %23, %47 ], [ %23, %21 ], [ %23, %36 ]
  %32 = phi ptr [ %24, %363 ], [ %24, %62 ], [ %24, %61 ], [ %24, %59 ], [ %24, %57 ], [ %24, %54 ], [ %24, %53 ], [ %24, %52 ], [ %24, %47 ], [ %24, %21 ], [ %37, %36 ]
  %33 = phi ptr [ %25, %363 ], [ %63, %62 ], [ %25, %61 ], [ %25, %59 ], [ %25, %57 ], [ %25, %54 ], [ %25, %53 ], [ %25, %52 ], [ %25, %47 ], [ %25, %21 ], [ %25, %36 ]
  %34 = phi i8 [ %26, %363 ], [ %26, %62 ], [ %26, %61 ], [ %26, %59 ], [ %26, %57 ], [ %26, %54 ], [ 1, %53 ], [ %26, %52 ], [ %26, %47 ], [ %26, %21 ], [ %26, %36 ]
  %35 = phi i8 [ %27, %363 ], [ %27, %62 ], [ %27, %61 ], [ %27, %59 ], [ %27, %57 ], [ %27, %54 ], [ %27, %53 ], [ %27, %52 ], [ %27, %47 ], [ 1, %21 ], [ %27, %36 ]
  br label %21, !dbg !1310, !llvm.loop !1340

36:                                               ; preds = %21
  %37 = load ptr, ptr @optarg, align 8, !dbg !1342, !tbaa !1069
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !234, metadata !DIExpression()), !dbg !1310
  br label %29, !dbg !1345

38:                                               ; preds = %21
  %39 = load ptr, ptr @optarg, align 8, !dbg !1346, !tbaa !1069
  call void @llvm.dbg.value(metadata ptr %39, metadata !1347, metadata !DIExpression()), !dbg !1350
  %40 = load i64, ptr @usvars_used, align 8, !dbg !1352, !tbaa !1354
  %41 = load i64, ptr @usvars_alloc, align 8, !dbg !1356, !tbaa !1354
  %42 = icmp eq i64 %40, %41, !dbg !1357
  %43 = load ptr, ptr @usvars, align 8, !dbg !1358, !tbaa !1069
  br i1 %42, label %44, label %47, !dbg !1359

44:                                               ; preds = %38
  %45 = call nonnull ptr @xpalloc(ptr noundef %43, ptr noundef nonnull @usvars_alloc, i64 noundef 1, i64 noundef -1, i64 noundef 8) #41, !dbg !1360
  store ptr %45, ptr @usvars, align 8, !dbg !1361, !tbaa !1069
  %46 = load i64, ptr @usvars_used, align 8, !dbg !1362, !tbaa !1354
  br label %47, !dbg !1363

47:                                               ; preds = %38, %44
  %48 = phi i64 [ %46, %44 ], [ %40, %38 ], !dbg !1362
  %49 = phi ptr [ %45, %44 ], [ %43, %38 ], !dbg !1358
  %50 = add nsw i64 %48, 1, !dbg !1362
  store i64 %50, ptr @usvars_used, align 8, !dbg !1362, !tbaa !1354
  %51 = getelementptr inbounds ptr, ptr %49, i64 %48, !dbg !1358
  store ptr %39, ptr %51, align 8, !dbg !1364, !tbaa !1069
  br label %29, !dbg !1365

52:                                               ; preds = %21
  store i1 true, ptr @dev_debug, align 1, !dbg !1366
  br label %29, !dbg !1367

53:                                               ; preds = %21
  tail call void @llvm.dbg.value(metadata i8 1, metadata !232, metadata !DIExpression()), !dbg !1310
  br label %29, !dbg !1368

54:                                               ; preds = %21
  %55 = load ptr, ptr @optarg, align 8, !dbg !1369, !tbaa !1069
  call fastcc void @parse_signal_action_params(ptr noundef %55, i1 noundef zeroext true), !dbg !1370
  %56 = load ptr, ptr @optarg, align 8, !dbg !1371, !tbaa !1069
  call fastcc void @parse_block_signal_params(ptr noundef %56, i1 noundef zeroext false), !dbg !1372
  br label %29, !dbg !1373

57:                                               ; preds = %21
  %58 = load ptr, ptr @optarg, align 8, !dbg !1374, !tbaa !1069
  call fastcc void @parse_signal_action_params(ptr noundef %58, i1 noundef zeroext false), !dbg !1375
  br label %29, !dbg !1376

59:                                               ; preds = %21
  %60 = load ptr, ptr @optarg, align 8, !dbg !1377, !tbaa !1069
  call fastcc void @parse_block_signal_params(ptr noundef %60, i1 noundef zeroext true), !dbg !1378
  br label %29, !dbg !1379

61:                                               ; preds = %21
  store i1 true, ptr @report_signal_handling, align 1, !dbg !1380
  br label %29, !dbg !1381

62:                                               ; preds = %21
  %63 = load ptr, ptr @optarg, align 8, !dbg !1382, !tbaa !1069
  tail call void @llvm.dbg.value(metadata ptr %63, metadata !233, metadata !DIExpression()), !dbg !1310
  br label %29, !dbg !1383

64:                                               ; preds = %21
  %65 = load ptr, ptr @optarg, align 8, !dbg !1384, !tbaa !1069
  call void @llvm.dbg.value(metadata ptr %65, metadata !1385, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata ptr @optind, metadata !1391, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata ptr undef, metadata !1392, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata ptr undef, metadata !1393, metadata !DIExpression()), !dbg !1401
  %66 = load i32, ptr @optind, align 4, !dbg !1403, !tbaa !1152
  %67 = sub nsw i32 %22, %66, !dbg !1404
  call void @llvm.dbg.value(metadata i32 %67, metadata !1394, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1405, metadata !DIExpression(), metadata !1309, metadata ptr %10, metadata !DIExpression()), !dbg !1429
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
  store ptr null, ptr %71, align 8, !dbg !1453, !tbaa !1069
  br label %72, !dbg !1454

72:                                               ; preds = %100, %64
  %73 = phi ptr [ %102, %100 ], [ %65, %64 ]
  %74 = phi i8 [ %101, %100 ], [ 0, %64 ]
  %75 = phi i8 [ %81, %100 ], [ 0, %64 ]
  %76 = icmp eq i8 %74, 0
  %77 = icmp eq i8 %74, 0
  %78 = icmp eq i8 %74, 0
  br label %79, !dbg !1454

79:                                               ; preds = %72, %95
  %80 = phi ptr [ %73, %72 ], [ %98, %95 ]
  %81 = phi i8 [ %75, %72 ], [ %97, %95 ]
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  %84 = and i8 %81, 1
  %85 = icmp eq i8 %84, 0
  %86 = and i8 %81, 1
  %87 = icmp eq i8 %86, 0
  %88 = select i1 %87, i1 %77, i1 false
  %89 = and i8 %81, 1
  %90 = icmp eq i8 %89, 0
  br label %91, !dbg !1454

91:                                               ; preds = %254, %79
  %92 = phi ptr [ %80, %79 ], [ %255, %254 ]
  call void @llvm.dbg.value(metadata i8 %81, metadata !1414, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %74, metadata !1413, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata ptr %92, metadata !1410, metadata !DIExpression()), !dbg !1429
  %93 = load i8, ptr %92, align 1, !dbg !1455, !tbaa !1161
  switch i8 %93, label %223 [
    i8 0, label %256
    i8 39, label %94
    i8 34, label %99
    i8 32, label %103
    i8 9, label %103
    i8 10, label %103
    i8 11, label %103
    i8 12, label %103
    i8 13, label %103
    i8 35, label %107
    i8 92, label %110
    i8 36, label %131
  ], !dbg !1454

94:                                               ; preds = %91
  br i1 %78, label %95, label %223, !dbg !1456

95:                                               ; preds = %94
  %96 = and i8 %81, 1, !dbg !1457
  %97 = xor i8 %96, 1, !dbg !1458
  call void @llvm.dbg.value(metadata i8 %97, metadata !1414, metadata !DIExpression()), !dbg !1429
  call fastcc void @check_start_new_arg(ptr noundef nonnull %10), !dbg !1459
  %98 = getelementptr inbounds i8, ptr %92, i64 1, !dbg !1460
  call void @llvm.dbg.value(metadata ptr %98, metadata !1410, metadata !DIExpression()), !dbg !1429
  br label %79, !dbg !1461, !llvm.loop !1462

99:                                               ; preds = %91
  br i1 %90, label %100, label %223, !dbg !1464

100:                                              ; preds = %99
  %101 = xor i8 %74, 1, !dbg !1465
  call void @llvm.dbg.value(metadata i8 %101, metadata !1413, metadata !DIExpression()), !dbg !1429
  call fastcc void @check_start_new_arg(ptr noundef nonnull %10), !dbg !1466
  %102 = getelementptr inbounds i8, ptr %92, i64 1, !dbg !1467
  call void @llvm.dbg.value(metadata ptr %102, metadata !1410, metadata !DIExpression()), !dbg !1429
  br label %72, !dbg !1468, !llvm.loop !1469

103:                                              ; preds = %91, %91, %91, %91, %91, %91
  br i1 %88, label %104, label %223, !dbg !1470

104:                                              ; preds = %103
  store i8 1, ptr %20, align 4, !dbg !1472, !tbaa !1450, !DIAssignID !1473
  call void @llvm.dbg.assign(metadata i8 1, metadata !1405, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 8), metadata !1473, metadata ptr %20, metadata !DIExpression()), !dbg !1429
  %105 = call i64 @strspn(ptr noundef nonnull %92, ptr noundef nonnull @.str.42) #42, !dbg !1474
  %106 = getelementptr inbounds i8, ptr %92, i64 %105, !dbg !1475
  call void @llvm.dbg.value(metadata ptr %106, metadata !1410, metadata !DIExpression()), !dbg !1429
  br label %254, !dbg !1476

107:                                              ; preds = %91
  %108 = load i8, ptr %20, align 4, !dbg !1477, !tbaa !1450, !range !1479, !noundef !1119
  %109 = icmp eq i8 %108, 0, !dbg !1477
  br i1 %109, label %223, label %263, !dbg !1480

110:                                              ; preds = %91
  %111 = getelementptr inbounds i8, ptr %92, i64 1
  %112 = load i8, ptr %111, align 1, !dbg !1481, !tbaa !1161
  br i1 %85, label %114, label %113, !dbg !1482

113:                                              ; preds = %110
  switch i8 %112, label %223 [
    i8 39, label %222
    i8 92, label %222
  ], !dbg !1484

114:                                              ; preds = %110
  call void @llvm.dbg.value(metadata ptr %111, metadata !1410, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %112, metadata !1415, metadata !DIExpression()), !dbg !1485
  switch i8 %112, label %128 [
    i8 34, label %222
    i8 35, label %222
    i8 36, label %222
    i8 39, label %222
    i8 92, label %222
    i8 95, label %115
    i8 99, label %118
    i8 102, label %223
    i8 110, label %122
    i8 114, label %123
    i8 116, label %124
    i8 118, label %125
    i8 0, label %126
  ], !dbg !1486

115:                                              ; preds = %114
  br i1 %76, label %116, label %223, !dbg !1487

116:                                              ; preds = %115
  %117 = getelementptr inbounds i8, ptr %92, i64 2, !dbg !1489
  call void @llvm.dbg.value(metadata ptr %117, metadata !1410, metadata !DIExpression()), !dbg !1429
  store i8 1, ptr %20, align 4, !dbg !1492, !tbaa !1450, !DIAssignID !1493
  call void @llvm.dbg.assign(metadata i8 1, metadata !1405, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 8), metadata !1493, metadata ptr %20, metadata !DIExpression()), !dbg !1429
  br label %254, !dbg !1494

118:                                              ; preds = %114
  %119 = icmp eq i8 %74, 0, !dbg !1495
  br i1 %119, label %263, label %120, !dbg !1497

120:                                              ; preds = %118
  %121 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.99, i32 noundef 5) #41, !dbg !1498
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %121) #41, !dbg !1498
  unreachable, !dbg !1498

122:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i8 10, metadata !1415, metadata !DIExpression()), !dbg !1485
  br label %223, !dbg !1499

123:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i8 13, metadata !1415, metadata !DIExpression()), !dbg !1485
  br label %223, !dbg !1500

124:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i8 9, metadata !1415, metadata !DIExpression()), !dbg !1485
  br label %223, !dbg !1501

125:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i8 11, metadata !1415, metadata !DIExpression()), !dbg !1485
  br label %223, !dbg !1502

126:                                              ; preds = %114
  %127 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.100, i32 noundef 5) #41, !dbg !1503
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %127) #41, !dbg !1503
  unreachable, !dbg !1503

128:                                              ; preds = %114
  %129 = sext i8 %112 to i32, !dbg !1504
  %130 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.101, i32 noundef 5) #41, !dbg !1505
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %130, i32 noundef %129) #41, !dbg !1505
  unreachable, !dbg !1505

131:                                              ; preds = %91
  br i1 %83, label %132, label %223, !dbg !1506

132:                                              ; preds = %131
  call void @llvm.dbg.value(metadata ptr %92, metadata !1507, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata ptr %92, metadata !1514, metadata !DIExpression()), !dbg !1522
  %133 = getelementptr inbounds i8, ptr %92, i64 1, !dbg !1524
  %134 = load i8, ptr %133, align 1, !dbg !1524, !tbaa !1161
  %135 = icmp eq i8 %134, 123, !dbg !1525
  br i1 %135, label %136, label %163, !dbg !1526

136:                                              ; preds = %132
  %137 = getelementptr inbounds i8, ptr %92, i64 2, !dbg !1527
  %138 = load i8, ptr %137, align 1, !dbg !1527, !tbaa !1161
  call void @llvm.dbg.value(metadata i8 %138, metadata !1528, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1534
  switch i8 %138, label %163 [
    i8 97, label %139
    i8 98, label %139
    i8 99, label %139
    i8 100, label %139
    i8 101, label %139
    i8 102, label %139
    i8 103, label %139
    i8 104, label %139
    i8 105, label %139
    i8 106, label %139
    i8 107, label %139
    i8 108, label %139
    i8 109, label %139
    i8 110, label %139
    i8 111, label %139
    i8 112, label %139
    i8 113, label %139
    i8 114, label %139
    i8 115, label %139
    i8 116, label %139
    i8 117, label %139
    i8 118, label %139
    i8 119, label %139
    i8 120, label %139
    i8 121, label %139
    i8 122, label %139
    i8 65, label %139
    i8 66, label %139
    i8 67, label %139
    i8 68, label %139
    i8 69, label %139
    i8 70, label %139
    i8 71, label %139
    i8 72, label %139
    i8 73, label %139
    i8 74, label %139
    i8 75, label %139
    i8 76, label %139
    i8 77, label %139
    i8 78, label %139
    i8 79, label %139
    i8 80, label %139
    i8 81, label %139
    i8 82, label %139
    i8 83, label %139
    i8 84, label %139
    i8 85, label %139
    i8 86, label %139
    i8 87, label %139
    i8 88, label %139
    i8 89, label %139
    i8 90, label %139
    i8 95, label %139
  ], !dbg !1536

139:                                              ; preds = %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136
  %140 = getelementptr inbounds i8, ptr %92, i64 3, !dbg !1537
  call void @llvm.dbg.value(metadata ptr %140, metadata !1519, metadata !DIExpression()), !dbg !1538
  br label %141, !dbg !1539

141:                                              ; preds = %148, %139
  %142 = phi ptr [ %140, %139 ], [ %149, %148 ], !dbg !1538
  call void @llvm.dbg.value(metadata ptr %142, metadata !1519, metadata !DIExpression()), !dbg !1538
  %143 = load i8, ptr %142, align 1, !dbg !1540, !tbaa !1161
  %144 = sext i8 %143 to i32, !dbg !1540
  %145 = call zeroext i1 @c_isalnum(i32 noundef %144), !dbg !1541
  br i1 %145, label %148, label %146, !dbg !1542

146:                                              ; preds = %141
  %147 = load i8, ptr %142, align 1, !dbg !1543, !tbaa !1161
  switch i8 %147, label %163 [
    i8 95, label %148
    i8 125, label %150
  ], !dbg !1539

148:                                              ; preds = %146, %141
  %149 = getelementptr inbounds i8, ptr %142, i64 1, !dbg !1544
  call void @llvm.dbg.value(metadata ptr %149, metadata !1519, metadata !DIExpression()), !dbg !1538
  br label %141, !dbg !1539, !llvm.loop !1545

150:                                              ; preds = %146
  call void @llvm.dbg.value(metadata ptr %142, metadata !1510, metadata !DIExpression()), !dbg !1512
  %151 = ptrtoint ptr %142 to i64, !dbg !1547
  %152 = ptrtoint ptr %92 to i64, !dbg !1547
  %153 = sub i64 %151, %152, !dbg !1547
  %154 = add nsw i64 %153, -2, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %154, metadata !1511, metadata !DIExpression()), !dbg !1512
  %155 = load i64, ptr @vnlen, align 8, !dbg !1549, !tbaa !1354
  %156 = icmp slt i64 %154, %155, !dbg !1551
  %157 = load ptr, ptr @varname, align 8, !dbg !1552, !tbaa !1069
  br i1 %156, label %165, label %158, !dbg !1553

158:                                              ; preds = %150
  call void @free(ptr noundef %157) #41, !dbg !1554
  %159 = load i64, ptr @vnlen, align 8, !dbg !1556, !tbaa !1354
  %160 = xor i64 %159, -1, !dbg !1557
  %161 = add i64 %153, %160, !dbg !1557
  %162 = call nonnull ptr @xpalloc(ptr noundef null, ptr noundef nonnull @vnlen, i64 noundef %161, i64 noundef -1, i64 noundef 1) #41, !dbg !1558
  store ptr %162, ptr @varname, align 8, !dbg !1559, !tbaa !1069
  br label %165, !dbg !1560

163:                                              ; preds = %136, %132, %146
  call void @llvm.dbg.value(metadata ptr null, metadata !1417, metadata !DIExpression()), !dbg !1561
  %164 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.102, i32 noundef 5) #41, !dbg !1562
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %164, ptr noundef nonnull %92) #41, !dbg !1562
  unreachable, !dbg !1562

165:                                              ; preds = %158, %150
  %166 = phi ptr [ %162, %158 ], [ %157, %150 ], !dbg !1552
  call void @llvm.dbg.value(metadata ptr %166, metadata !1564, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata ptr %137, metadata !1571, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i64 %154, metadata !1572, metadata !DIExpression()), !dbg !1573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %166, ptr noundef nonnull align 1 %137, i64 noundef %154, i1 noundef false) #41, !dbg !1575
  %167 = getelementptr inbounds i8, ptr %166, i64 %154, !dbg !1576
  store i8 0, ptr %167, align 1, !dbg !1577, !tbaa !1161
  call void @llvm.dbg.value(metadata ptr %166, metadata !1417, metadata !DIExpression()), !dbg !1561
  %168 = call ptr @getenv(ptr noundef nonnull %166) #41, !dbg !1578
  call void @llvm.dbg.value(metadata ptr %168, metadata !1420, metadata !DIExpression()), !dbg !1561
  %169 = icmp eq ptr %168, null, !dbg !1579
  br i1 %169, label %214, label %170, !dbg !1581

170:                                              ; preds = %165
  call fastcc void @check_start_new_arg(ptr noundef nonnull %10), !dbg !1582
  %171 = load i1, ptr @dev_debug, align 1, !dbg !1584
  br i1 %171, label %172, label %176, !dbg !1587

172:                                              ; preds = %170
  %173 = load ptr, ptr @stderr, align 8, !dbg !1584, !tbaa !1069
  %174 = call ptr @quote(ptr noundef nonnull %168) #41, !dbg !1584
  %175 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %173, i32 noundef 1, ptr noundef nonnull @.str.103, ptr noundef nonnull %166, ptr noundef %174) #41, !dbg !1584
  br label %176, !dbg !1584

176:                                              ; preds = %172, %170
  call void @llvm.dbg.value(metadata ptr %168, metadata !1420, metadata !DIExpression()), !dbg !1561
  %177 = load i8, ptr %168, align 1, !dbg !1588, !tbaa !1161
  %178 = icmp eq i8 %177, 0, !dbg !1591
  br i1 %178, label %219, label %179, !dbg !1591

179:                                              ; preds = %176
  %180 = load i32, ptr %17, align 8, !dbg !1592, !tbaa !1441
  br label %181, !dbg !1591

181:                                              ; preds = %200, %179
  %182 = phi i32 [ %208, %200 ], [ %180, %179 ], !dbg !1592
  %183 = phi i8 [ %212, %200 ], [ %177, %179 ]
  %184 = phi ptr [ %211, %200 ], [ %168, %179 ]
  call void @llvm.dbg.value(metadata ptr %184, metadata !1420, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata ptr %10, metadata !1598, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %183, metadata !1599, metadata !DIExpression()), !dbg !1602
  %185 = load ptr, ptr %10, align 8, !dbg !1603, !tbaa !1436
  %186 = sext i32 %182 to i64, !dbg !1604
  %187 = getelementptr inbounds ptr, ptr %185, i64 %186, !dbg !1604
  %188 = load ptr, ptr %187, align 8, !dbg !1604, !tbaa !1069
  %189 = ptrtoint ptr %188 to i64, !dbg !1605
  call void @llvm.dbg.value(metadata i64 %189, metadata !1600, metadata !DIExpression()), !dbg !1602
  %190 = load i64, ptr %18, align 8, !dbg !1606, !tbaa !1444
  %191 = shl i64 %190, 3, !dbg !1608
  %192 = icmp ugt i64 %191, %189, !dbg !1609
  br i1 %192, label %200, label %193, !dbg !1610

193:                                              ; preds = %181
  call void @llvm.dbg.value(metadata ptr %10, metadata !1611, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i64 %190, metadata !1616, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i64 %189, metadata !1617, metadata !DIExpression()), !dbg !1618
  %194 = call nonnull ptr @xpalloc(ptr noundef nonnull %185, ptr noundef nonnull %18, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !1620
  store ptr %194, ptr %10, align 8, !dbg !1621, !tbaa !1436, !DIAssignID !1622
  call void @llvm.dbg.assign(metadata ptr %194, metadata !1405, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1622, metadata ptr %10, metadata !DIExpression()), !dbg !1429
  %195 = load i64, ptr %18, align 8, !dbg !1623, !tbaa !1444
  %196 = getelementptr inbounds ptr, ptr %194, i64 %195, !dbg !1624
  %197 = getelementptr inbounds ptr, ptr %194, i64 %190, !dbg !1625
  call void @llvm.dbg.value(metadata ptr %196, metadata !1626, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata ptr %197, metadata !1631, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i64 %189, metadata !1632, metadata !DIExpression()), !dbg !1633
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %196, ptr noundef nonnull align 1 %197, i64 noundef %189, i1 noundef false) #41, !dbg !1635
  %198 = load ptr, ptr %10, align 8, !dbg !1636, !tbaa !1436
  %199 = load i64, ptr %18, align 8, !dbg !1637, !tbaa !1444
  br label %200, !dbg !1638

200:                                              ; preds = %193, %181
  %201 = phi i64 [ %199, %193 ], [ %190, %181 ], !dbg !1637
  %202 = phi ptr [ %198, %193 ], [ %185, %181 ], !dbg !1636
  %203 = getelementptr inbounds ptr, ptr %202, i64 %201, !dbg !1639
  %204 = getelementptr inbounds i8, ptr %203, i64 %189, !dbg !1640
  store i8 %183, ptr %204, align 1, !dbg !1641, !tbaa !1161
  %205 = add nsw i64 %189, 1, !dbg !1642
  %206 = inttoptr i64 %205 to ptr, !dbg !1643
  %207 = load ptr, ptr %10, align 8, !dbg !1644, !tbaa !1436
  %208 = load i32, ptr %17, align 8, !dbg !1645, !tbaa !1441
  %209 = sext i32 %208 to i64, !dbg !1646
  %210 = getelementptr inbounds ptr, ptr %207, i64 %209, !dbg !1646
  store ptr %206, ptr %210, align 8, !dbg !1647, !tbaa !1069
  %211 = getelementptr inbounds i8, ptr %184, i64 1, !dbg !1648
  call void @llvm.dbg.value(metadata ptr %211, metadata !1420, metadata !DIExpression()), !dbg !1561
  %212 = load i8, ptr %211, align 1, !dbg !1588, !tbaa !1161
  %213 = icmp eq i8 %212, 0, !dbg !1591
  br i1 %213, label %219, label %181, !dbg !1591, !llvm.loop !1649

214:                                              ; preds = %165
  %215 = load i1, ptr @dev_debug, align 1, !dbg !1651
  br i1 %215, label %216, label %219, !dbg !1654

216:                                              ; preds = %214
  %217 = load ptr, ptr @stderr, align 8, !dbg !1651, !tbaa !1069
  %218 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %217, i32 noundef 1, ptr noundef nonnull @.str.104, ptr noundef nonnull %166) #41, !dbg !1651
  br label %219, !dbg !1651

219:                                              ; preds = %200, %216, %214, %176
  %220 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %92, i32 noundef 125) #42, !dbg !1655
  %221 = getelementptr inbounds i8, ptr %220, i64 1, !dbg !1656
  call void @llvm.dbg.value(metadata ptr %221, metadata !1410, metadata !DIExpression()), !dbg !1429
  br label %254

222:                                              ; preds = %114, %114, %114, %114, %114, %113, %113
  br label %223, !dbg !1657

223:                                              ; preds = %222, %131, %125, %124, %123, %122, %115, %114, %113, %107, %103, %99, %94, %91
  %224 = phi ptr [ %92, %131 ], [ %111, %125 ], [ %111, %124 ], [ %111, %123 ], [ %111, %122 ], [ %92, %107 ], [ %92, %103 ], [ %92, %99 ], [ %92, %94 ], [ %92, %91 ], [ %92, %113 ], [ %111, %115 ], [ %111, %222 ], [ %111, %114 ]
  %225 = phi i8 [ 36, %131 ], [ 11, %125 ], [ 9, %124 ], [ 13, %123 ], [ 10, %122 ], [ 35, %107 ], [ %93, %103 ], [ 34, %99 ], [ 39, %94 ], [ %93, %91 ], [ 92, %113 ], [ 32, %115 ], [ %112, %222 ], [ 12, %114 ], !dbg !1485
  call void @llvm.dbg.value(metadata i8 %225, metadata !1415, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.value(metadata ptr %224, metadata !1410, metadata !DIExpression()), !dbg !1429
  call fastcc void @check_start_new_arg(ptr noundef nonnull %10), !dbg !1657
  call void @llvm.dbg.value(metadata ptr %10, metadata !1598, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i8 %225, metadata !1599, metadata !DIExpression()), !dbg !1658
  %226 = load ptr, ptr %10, align 8, !dbg !1660, !tbaa !1436
  %227 = load i32, ptr %17, align 8, !dbg !1661, !tbaa !1441
  %228 = sext i32 %227 to i64, !dbg !1662
  %229 = getelementptr inbounds ptr, ptr %226, i64 %228, !dbg !1662
  %230 = load ptr, ptr %229, align 8, !dbg !1662, !tbaa !1069
  %231 = ptrtoint ptr %230 to i64, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %231, metadata !1600, metadata !DIExpression()), !dbg !1658
  %232 = load i64, ptr %18, align 8, !dbg !1664, !tbaa !1444
  %233 = shl i64 %232, 3, !dbg !1665
  %234 = icmp ugt i64 %233, %231, !dbg !1666
  br i1 %234, label %242, label %235, !dbg !1667

235:                                              ; preds = %223
  call void @llvm.dbg.value(metadata ptr %10, metadata !1611, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i64 %232, metadata !1616, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i64 %231, metadata !1617, metadata !DIExpression()), !dbg !1668
  %236 = call nonnull ptr @xpalloc(ptr noundef nonnull %226, ptr noundef nonnull %18, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !1670
  store ptr %236, ptr %10, align 8, !dbg !1671, !tbaa !1436, !DIAssignID !1672
  call void @llvm.dbg.assign(metadata ptr %236, metadata !1405, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1672, metadata ptr %10, metadata !DIExpression()), !dbg !1429
  %237 = load i64, ptr %18, align 8, !dbg !1673, !tbaa !1444
  %238 = getelementptr inbounds ptr, ptr %236, i64 %237, !dbg !1674
  %239 = getelementptr inbounds ptr, ptr %236, i64 %232, !dbg !1675
  call void @llvm.dbg.value(metadata ptr %238, metadata !1626, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr %239, metadata !1631, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %231, metadata !1632, metadata !DIExpression()), !dbg !1676
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %238, ptr noundef nonnull align 1 %239, i64 noundef %231, i1 noundef false) #41, !dbg !1678
  %240 = load ptr, ptr %10, align 8, !dbg !1679, !tbaa !1436
  %241 = load i64, ptr %18, align 8, !dbg !1680, !tbaa !1444
  br label %242, !dbg !1681

242:                                              ; preds = %235, %223
  %243 = phi i64 [ %241, %235 ], [ %232, %223 ], !dbg !1680
  %244 = phi ptr [ %240, %235 ], [ %226, %223 ], !dbg !1679
  %245 = getelementptr inbounds ptr, ptr %244, i64 %243, !dbg !1682
  %246 = getelementptr inbounds i8, ptr %245, i64 %231, !dbg !1683
  store i8 %225, ptr %246, align 1, !dbg !1684, !tbaa !1161
  %247 = add nsw i64 %231, 1, !dbg !1685
  %248 = inttoptr i64 %247 to ptr, !dbg !1686
  %249 = load ptr, ptr %10, align 8, !dbg !1687, !tbaa !1436
  %250 = load i32, ptr %17, align 8, !dbg !1688, !tbaa !1441
  %251 = sext i32 %250 to i64, !dbg !1689
  %252 = getelementptr inbounds ptr, ptr %249, i64 %251, !dbg !1689
  store ptr %248, ptr %252, align 8, !dbg !1690, !tbaa !1069
  %253 = getelementptr inbounds i8, ptr %224, i64 1, !dbg !1691
  call void @llvm.dbg.value(metadata ptr %253, metadata !1410, metadata !DIExpression()), !dbg !1429
  br label %254, !dbg !1463

254:                                              ; preds = %242, %219, %116, %104
  %255 = phi ptr [ %253, %242 ], [ %221, %219 ], [ %117, %116 ], [ %106, %104 ]
  br label %91, !dbg !1429, !llvm.loop !1692

256:                                              ; preds = %91
  %257 = icmp eq i8 %74, 0, !dbg !1693
  %258 = and i8 %81, 1
  %259 = icmp eq i8 %258, 0
  %260 = select i1 %257, i1 %259, i1 false, !dbg !1695
  br i1 %260, label %263, label %261, !dbg !1695

261:                                              ; preds = %256
  %262 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.105, i32 noundef 5) #41, !dbg !1696
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %262) #41, !dbg !1696
  unreachable, !dbg !1696

263:                                              ; preds = %107, %256, %118
  call void @llvm.dbg.label(metadata !1421), !dbg !1697
  call void @llvm.dbg.value(metadata ptr %10, metadata !1598, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 0, metadata !1599, metadata !DIExpression()), !dbg !1698
  %264 = load ptr, ptr %10, align 8, !dbg !1700, !tbaa !1436
  %265 = load i32, ptr %17, align 8, !dbg !1701, !tbaa !1441
  %266 = sext i32 %265 to i64, !dbg !1702
  %267 = getelementptr inbounds ptr, ptr %264, i64 %266, !dbg !1702
  %268 = load ptr, ptr %267, align 8, !dbg !1702, !tbaa !1069
  %269 = ptrtoint ptr %268 to i64, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %269, metadata !1600, metadata !DIExpression()), !dbg !1698
  %270 = load i64, ptr %18, align 8, !dbg !1704, !tbaa !1444
  %271 = shl i64 %270, 3, !dbg !1705
  %272 = icmp ugt i64 %271, %269, !dbg !1706
  br i1 %272, label %280, label %273, !dbg !1707

273:                                              ; preds = %263
  call void @llvm.dbg.value(metadata ptr %10, metadata !1611, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %270, metadata !1616, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %269, metadata !1617, metadata !DIExpression()), !dbg !1708
  %274 = call nonnull ptr @xpalloc(ptr noundef nonnull %264, ptr noundef nonnull %18, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !1710
  store ptr %274, ptr %10, align 8, !dbg !1711, !tbaa !1436, !DIAssignID !1712
  call void @llvm.dbg.assign(metadata ptr %274, metadata !1405, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1712, metadata ptr %10, metadata !DIExpression()), !dbg !1429
  %275 = load i64, ptr %18, align 8, !dbg !1713, !tbaa !1444
  %276 = getelementptr inbounds ptr, ptr %274, i64 %275, !dbg !1714
  %277 = getelementptr inbounds ptr, ptr %274, i64 %270, !dbg !1715
  call void @llvm.dbg.value(metadata ptr %276, metadata !1626, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata ptr %277, metadata !1631, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i64 %269, metadata !1632, metadata !DIExpression()), !dbg !1716
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %276, ptr noundef nonnull align 1 %277, i64 noundef %269, i1 noundef false) #41, !dbg !1718
  %278 = load ptr, ptr %10, align 8, !dbg !1719, !tbaa !1436
  %279 = load i64, ptr %18, align 8, !dbg !1720, !tbaa !1444
  br label %280, !dbg !1721

280:                                              ; preds = %273, %263
  %281 = phi i64 [ %279, %273 ], [ %270, %263 ], !dbg !1720
  %282 = phi ptr [ %278, %273 ], [ %264, %263 ], !dbg !1719
  %283 = getelementptr inbounds ptr, ptr %282, i64 %281, !dbg !1722
  %284 = getelementptr inbounds i8, ptr %283, i64 %269, !dbg !1723
  store i8 0, ptr %284, align 1, !dbg !1724, !tbaa !1161
  %285 = add nsw i64 %269, 1, !dbg !1725
  %286 = inttoptr i64 %285 to ptr, !dbg !1726
  %287 = load ptr, ptr %10, align 8, !dbg !1727, !tbaa !1436
  %288 = load i32, ptr %17, align 8, !dbg !1728, !tbaa !1441
  %289 = sext i32 %288 to i64, !dbg !1729
  %290 = getelementptr inbounds ptr, ptr %287, i64 %289, !dbg !1729
  store ptr %286, ptr %290, align 8, !dbg !1730, !tbaa !1069
  call void @llvm.dbg.value(metadata i32 %288, metadata !1395, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata ptr %10, metadata !1731, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i32 %288, metadata !1736, metadata !DIExpression()), !dbg !1741
  %291 = load ptr, ptr %10, align 8, !dbg !1743, !tbaa !1436
  call void @llvm.dbg.value(metadata ptr %291, metadata !1737, metadata !DIExpression()), !dbg !1741
  %292 = load i64, ptr %18, align 8, !dbg !1744, !tbaa !1444
  %293 = getelementptr inbounds ptr, ptr %291, i64 %292, !dbg !1745
  call void @llvm.dbg.value(metadata ptr %293, metadata !1738, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i32 1, metadata !1739, metadata !DIExpression()), !dbg !1746
  %294 = icmp sgt i32 %288, 1, !dbg !1747
  br i1 %294, label %297, label %295, !dbg !1749

295:                                              ; preds = %280
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #41, !dbg !1750
  call void @llvm.dbg.value(metadata ptr %291, metadata !1396, metadata !DIExpression()), !dbg !1401
  %296 = load ptr, ptr %23, align 8, !dbg !1751, !tbaa !1069
  store ptr %296, ptr %291, align 8, !dbg !1752, !tbaa !1069
  br label %363, !dbg !1753

297:                                              ; preds = %280
  %298 = zext nneg i32 %288 to i64, !dbg !1747
  %299 = add nsw i64 %298, -1, !dbg !1749
  %300 = icmp ult i32 %288, 5, !dbg !1749
  br i1 %300, label %319, label %301, !dbg !1749

301:                                              ; preds = %297
  %302 = and i64 %299, -4, !dbg !1749
  %303 = or disjoint i64 %302, 1, !dbg !1749
  br label %304, !dbg !1749

304:                                              ; preds = %304, %301
  %305 = phi i64 [ 0, %301 ], [ %315, %304 ]
  %306 = or disjoint i64 %305, 1, !dbg !1749
  %307 = getelementptr inbounds ptr, ptr %291, i64 %306, !dbg !1754
  %308 = getelementptr inbounds ptr, ptr %307, i64 2, !dbg !1754
  %309 = load <2 x ptr>, ptr %307, align 8, !dbg !1754, !tbaa !1069
  %310 = load <2 x ptr>, ptr %308, align 8, !dbg !1754, !tbaa !1069
  %311 = ptrtoint <2 x ptr> %309 to <2 x i64>, !dbg !1755
  %312 = ptrtoint <2 x ptr> %310 to <2 x i64>, !dbg !1755
  %313 = getelementptr inbounds i8, ptr %293, <2 x i64> %311, !dbg !1755
  %314 = getelementptr inbounds i8, ptr %293, <2 x i64> %312, !dbg !1755
  store <2 x ptr> %313, ptr %307, align 8, !dbg !1756, !tbaa !1069
  store <2 x ptr> %314, ptr %308, align 8, !dbg !1756, !tbaa !1069
  %315 = add nuw i64 %305, 4
  %316 = icmp eq i64 %315, %302
  br i1 %316, label %317, label %304, !llvm.loop !1757

317:                                              ; preds = %304
  %318 = icmp eq i64 %299, %302, !dbg !1749
  br i1 %318, label %329, label %319, !dbg !1749

319:                                              ; preds = %297, %317
  %320 = phi i64 [ 1, %297 ], [ %303, %317 ]
  br label %321, !dbg !1749

321:                                              ; preds = %319, %321
  %322 = phi i64 [ %327, %321 ], [ %320, %319 ]
  call void @llvm.dbg.value(metadata i64 %322, metadata !1739, metadata !DIExpression()), !dbg !1746
  %323 = getelementptr inbounds ptr, ptr %291, i64 %322, !dbg !1754
  %324 = load ptr, ptr %323, align 8, !dbg !1754, !tbaa !1069
  %325 = ptrtoint ptr %324 to i64, !dbg !1755
  %326 = getelementptr inbounds i8, ptr %293, i64 %325, !dbg !1761
  store ptr %326, ptr %323, align 8, !dbg !1756, !tbaa !1069
  %327 = add nuw nsw i64 %322, 1, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %327, metadata !1739, metadata !DIExpression()), !dbg !1746
  %328 = icmp eq i64 %327, %298, !dbg !1747
  br i1 %328, label %329, label %321, !dbg !1749, !llvm.loop !1763

329:                                              ; preds = %321, %317
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #41, !dbg !1750
  call void @llvm.dbg.value(metadata ptr %291, metadata !1396, metadata !DIExpression()), !dbg !1401
  %330 = load ptr, ptr %23, align 8, !dbg !1751, !tbaa !1069
  store ptr %330, ptr %291, align 8, !dbg !1752, !tbaa !1069
  %331 = load i1, ptr @dev_debug, align 1, !dbg !1764
  br i1 %331, label %332, label %363, !dbg !1753

332:                                              ; preds = %329
  %333 = load ptr, ptr @stderr, align 8, !dbg !1765, !tbaa !1069
  %334 = call ptr @quote(ptr noundef %65) #41, !dbg !1765
  %335 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %333, i32 noundef 1, ptr noundef nonnull @.str.96, ptr noundef %334) #41, !dbg !1765
  %336 = load i1, ptr @dev_debug, align 1, !dbg !1768
  br i1 %336, label %337, label %343, !dbg !1771

337:                                              ; preds = %332
  %338 = load ptr, ptr @stderr, align 8, !dbg !1768, !tbaa !1069
  %339 = getelementptr inbounds ptr, ptr %291, i64 1, !dbg !1768
  %340 = load ptr, ptr %339, align 8, !dbg !1768, !tbaa !1069
  %341 = call ptr @quote(ptr noundef %340) #41, !dbg !1768
  %342 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %338, i32 noundef 1, ptr noundef nonnull @.str.97, ptr noundef %341) #41, !dbg !1768
  br label %343, !dbg !1768

343:                                              ; preds = %337, %332
  call void @llvm.dbg.value(metadata i32 2, metadata !1397, metadata !DIExpression()), !dbg !1772
  %344 = icmp eq i32 %288, 2, !dbg !1773
  br i1 %344, label %363, label %345, !dbg !1775

345:                                              ; preds = %343
  %346 = call i32 @llvm.smax.i32(i32 %288, i32 3), !dbg !1775
  %347 = zext nneg i32 %346 to i64, !dbg !1773
  %348 = load i1, ptr @dev_debug, align 1, !dbg !1776
  br label %349, !dbg !1775

349:                                              ; preds = %359, %345
  %350 = phi i1 [ %348, %345 ], [ %360, %359 ], !dbg !1776
  %351 = phi i64 [ 2, %345 ], [ %361, %359 ]
  call void @llvm.dbg.value(metadata i64 %351, metadata !1397, metadata !DIExpression()), !dbg !1772
  br i1 %350, label %352, label %359, !dbg !1779

352:                                              ; preds = %349
  %353 = load ptr, ptr @stderr, align 8, !dbg !1776, !tbaa !1069
  %354 = getelementptr inbounds ptr, ptr %291, i64 %351, !dbg !1776
  %355 = load ptr, ptr %354, align 8, !dbg !1776, !tbaa !1069
  %356 = call ptr @quote(ptr noundef %355) #41, !dbg !1776
  %357 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %353, i32 noundef 1, ptr noundef nonnull @.str.98, ptr noundef %356) #41, !dbg !1776
  %358 = load i1, ptr @dev_debug, align 1, !dbg !1776
  br label %359, !dbg !1776

359:                                              ; preds = %352, %349
  %360 = phi i1 [ false, %349 ], [ %358, %352 ]
  %361 = add nuw nsw i64 %351, 1, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %361, metadata !1397, metadata !DIExpression()), !dbg !1772
  %362 = icmp eq i64 %361, %347, !dbg !1773
  br i1 %362, label %363, label %349, !dbg !1775, !llvm.loop !1781

363:                                              ; preds = %359, %295, %329, %343
  %364 = getelementptr inbounds ptr, ptr %291, i64 %289, !dbg !1783
  %365 = load i32, ptr @optind, align 4, !dbg !1784, !tbaa !1152
  %366 = sext i32 %365 to i64, !dbg !1785
  %367 = getelementptr inbounds ptr, ptr %23, i64 %366, !dbg !1785
  %368 = add nsw i32 %67, 1, !dbg !1786
  %369 = sext i32 %368 to i64, !dbg !1787
  %370 = shl nsw i64 %369, 3, !dbg !1788
  call void @llvm.dbg.value(metadata ptr %364, metadata !1564, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata ptr %367, metadata !1571, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %370, metadata !1572, metadata !DIExpression()), !dbg !1789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %364, ptr noundef nonnull align 1 %367, i64 noundef %370, i1 noundef false) #41, !dbg !1791
  %371 = add nsw i32 %288, %67, !dbg !1792
  tail call void @llvm.dbg.value(metadata i32 %371, metadata !228, metadata !DIExpression()), !dbg !1310
  tail call void @llvm.dbg.value(metadata ptr %291, metadata !229, metadata !DIExpression()), !dbg !1310
  store i32 0, ptr @optind, align 4, !dbg !1793, !tbaa !1152
  br label %29, !dbg !1794

372:                                              ; preds = %21, %21, %21, %21, %21, %21
  %373 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #41, !dbg !1795
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %373, i32 noundef %28) #41, !dbg !1795
  %374 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #41, !dbg !1796
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %374) #41, !dbg !1796
  call void @usage(i32 noundef 125) #47, !dbg !1797
  unreachable, !dbg !1797

375:                                              ; preds = %21
  call void @usage(i32 noundef 0) #47, !dbg !1798
  unreachable, !dbg !1798

376:                                              ; preds = %21
  %377 = load ptr, ptr @stdout, align 8, !dbg !1799, !tbaa !1069
  %378 = load ptr, ptr @Version, align 8, !dbg !1799, !tbaa !1069
  %379 = call ptr @proper_name_lite(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.25) #41, !dbg !1799
  %380 = call ptr @proper_name_lite(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.26) #41, !dbg !1799
  %381 = call ptr @proper_name_lite(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.27) #41, !dbg !1799
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %377, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.24, ptr noundef %378, ptr noundef %379, ptr noundef %380, ptr noundef %381, ptr noundef null) #41, !dbg !1799
  call void @exit(i32 noundef 0) #43, !dbg !1799
  unreachable, !dbg !1799

382:                                              ; preds = %21
  call void @usage(i32 noundef 125) #47, !dbg !1800
  unreachable, !dbg !1800

383:                                              ; preds = %21
  %384 = load i32, ptr @optind, align 4, !dbg !1801, !tbaa !1152
  %385 = icmp slt i32 %384, %22, !dbg !1803
  br i1 %385, label %386, label %394, !dbg !1804

386:                                              ; preds = %383
  %387 = sext i32 %384 to i64, !dbg !1805
  %388 = getelementptr inbounds ptr, ptr %23, i64 %387, !dbg !1805
  %389 = load ptr, ptr %388, align 8, !dbg !1805, !tbaa !1069
  call void @llvm.dbg.value(metadata ptr %389, metadata !1163, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !1169, metadata !DIExpression()), !dbg !1806
  %390 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %389, ptr noundef nonnull dereferenceable(2) @.str.28) #42, !dbg !1808
  %391 = icmp eq i32 %390, 0, !dbg !1809
  br i1 %391, label %392, label %394, !dbg !1810

392:                                              ; preds = %386
  tail call void @llvm.dbg.value(metadata i8 1, metadata !230, metadata !DIExpression()), !dbg !1310
  %393 = add nsw i32 %384, 1, !dbg !1811
  store i32 %393, ptr @optind, align 4, !dbg !1811, !tbaa !1152
  br label %396, !dbg !1813

394:                                              ; preds = %386, %383
  tail call void @llvm.dbg.value(metadata i8 %27, metadata !230, metadata !DIExpression()), !dbg !1310
  %395 = icmp eq i8 %27, 0, !dbg !1814
  br i1 %395, label %402, label %396, !dbg !1813

396:                                              ; preds = %392, %394
  %397 = load i1, ptr @dev_debug, align 1, !dbg !1816
  br i1 %397, label %398, label %401, !dbg !1820

398:                                              ; preds = %396
  %399 = load ptr, ptr @stderr, align 8, !dbg !1816, !tbaa !1069
  %400 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %399, i32 noundef 1, ptr noundef nonnull @.str.29) #41, !dbg !1816
  br label %401, !dbg !1816

401:                                              ; preds = %398, %396
  store ptr @main.dummy_environ, ptr @environ, align 8, !dbg !1821, !tbaa !1069
  br label %432, !dbg !1822

402:                                              ; preds = %394
  call void @llvm.dbg.value(metadata i64 0, metadata !1823, metadata !DIExpression()), !dbg !1827
  %403 = load i64, ptr @usvars_used, align 8, !dbg !1829, !tbaa !1354
  %404 = icmp sgt i64 %403, 0, !dbg !1831
  br i1 %404, label %405, label %432, !dbg !1832

405:                                              ; preds = %402, %428
  %406 = phi i64 [ %429, %428 ], [ 0, %402 ]
  call void @llvm.dbg.value(metadata i64 %406, metadata !1823, metadata !DIExpression()), !dbg !1827
  %407 = load i1, ptr @dev_debug, align 1, !dbg !1833
  br i1 %407, label %408, label %414, !dbg !1837

408:                                              ; preds = %405
  %409 = load ptr, ptr @stderr, align 8, !dbg !1833, !tbaa !1069
  %410 = load ptr, ptr @usvars, align 8, !dbg !1833, !tbaa !1069
  %411 = getelementptr inbounds ptr, ptr %410, i64 %406, !dbg !1833
  %412 = load ptr, ptr %411, align 8, !dbg !1833, !tbaa !1069
  %413 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %409, i32 noundef 1, ptr noundef nonnull @.str.106, ptr noundef %412) #41, !dbg !1833
  br label %414, !dbg !1833

414:                                              ; preds = %408, %405
  %415 = load ptr, ptr @usvars, align 8, !dbg !1838, !tbaa !1069
  %416 = getelementptr inbounds ptr, ptr %415, i64 %406, !dbg !1838
  %417 = load ptr, ptr %416, align 8, !dbg !1838, !tbaa !1069
  %418 = call i32 @unsetenv(ptr noundef %417) #41, !dbg !1840
  %419 = icmp eq i32 %418, 0, !dbg !1840
  br i1 %419, label %428, label %420, !dbg !1841

420:                                              ; preds = %414
  %421 = tail call ptr @__errno_location() #44, !dbg !1842
  %422 = load i32, ptr %421, align 4, !dbg !1842, !tbaa !1152
  %423 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.107, i32 noundef 5) #41, !dbg !1842
  %424 = load ptr, ptr @usvars, align 8, !dbg !1842, !tbaa !1069
  %425 = getelementptr inbounds ptr, ptr %424, i64 %406, !dbg !1842
  %426 = load ptr, ptr %425, align 8, !dbg !1842, !tbaa !1069
  %427 = call ptr @quote(ptr noundef %426) #41, !dbg !1842
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %422, ptr noundef %423, ptr noundef %427) #41, !dbg !1842
  unreachable, !dbg !1842

428:                                              ; preds = %414
  %429 = add nuw nsw i64 %406, 1, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %429, metadata !1823, metadata !DIExpression()), !dbg !1827
  %430 = load i64, ptr @usvars_used, align 8, !dbg !1829, !tbaa !1354
  %431 = icmp slt i64 %429, %430, !dbg !1831
  br i1 %431, label %405, label %432, !dbg !1832, !llvm.loop !1844

432:                                              ; preds = %428, %402, %401
  %433 = load i32, ptr @optind, align 4, !dbg !1846, !tbaa !1152
  %434 = icmp slt i32 %433, %22, !dbg !1847
  br i1 %434, label %435, label %472, !dbg !1848

435:                                              ; preds = %432, %464
  %436 = phi i32 [ %466, %464 ], [ %433, %432 ]
  %437 = sext i32 %436 to i64, !dbg !1849
  %438 = getelementptr inbounds ptr, ptr %23, i64 %437, !dbg !1849
  %439 = load ptr, ptr %438, align 8, !dbg !1849, !tbaa !1069
  %440 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %439, i32 noundef 61) #42, !dbg !1850
  tail call void @llvm.dbg.value(metadata ptr %440, metadata !236, metadata !DIExpression()), !dbg !1310
  %441 = icmp eq ptr %440, null, !dbg !1848
  br i1 %441, label %468, label %442, !dbg !1851

442:                                              ; preds = %435
  %443 = load i1, ptr @dev_debug, align 1, !dbg !1852
  br i1 %443, label %444, label %451, !dbg !1856

444:                                              ; preds = %442
  %445 = load ptr, ptr @stderr, align 8, !dbg !1852, !tbaa !1069
  %446 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %445, i32 noundef 1, ptr noundef nonnull @.str.30, ptr noundef %439) #41, !dbg !1852
  %447 = load i32, ptr @optind, align 4, !dbg !1857, !tbaa !1152
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds ptr, ptr %23, i64 %448
  %450 = load ptr, ptr %449, align 8, !dbg !1859, !tbaa !1069
  br label %451, !dbg !1852

451:                                              ; preds = %444, %442
  %452 = phi ptr [ %450, %444 ], [ %439, %442 ], !dbg !1859
  %453 = call i32 @putenv(ptr noundef %452) #41, !dbg !1860
  %454 = icmp eq i32 %453, 0, !dbg !1860
  br i1 %454, label %464, label %455, !dbg !1861

455:                                              ; preds = %451
  store i8 0, ptr %440, align 1, !dbg !1862, !tbaa !1161
  %456 = tail call ptr @__errno_location() #44, !dbg !1864
  %457 = load i32, ptr %456, align 4, !dbg !1864, !tbaa !1152
  %458 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #41, !dbg !1864
  %459 = load i32, ptr @optind, align 4, !dbg !1864, !tbaa !1152
  %460 = sext i32 %459 to i64, !dbg !1864
  %461 = getelementptr inbounds ptr, ptr %23, i64 %460, !dbg !1864
  %462 = load ptr, ptr %461, align 8, !dbg !1864, !tbaa !1069
  %463 = call ptr @quote(ptr noundef %462) #41, !dbg !1864
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %457, ptr noundef %458, ptr noundef %463) #41, !dbg !1864
  unreachable, !dbg !1864

464:                                              ; preds = %451
  %465 = load i32, ptr @optind, align 4, !dbg !1865, !tbaa !1152
  %466 = add nsw i32 %465, 1, !dbg !1865
  store i32 %466, ptr @optind, align 4, !dbg !1865, !tbaa !1152
  %467 = icmp slt i32 %466, %22, !dbg !1847
  br i1 %467, label %435, label %472, !dbg !1848, !llvm.loop !1866

468:                                              ; preds = %435
  tail call void @llvm.dbg.value(metadata i1 undef, metadata !237, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1310
  %469 = icmp eq i8 %26, 0, !dbg !1868
  br i1 %469, label %494, label %470, !dbg !1870

470:                                              ; preds = %468
  %471 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #41, !dbg !1871
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %471) #41, !dbg !1871
  call void @usage(i32 noundef 125) #47, !dbg !1873
  unreachable, !dbg !1873

472:                                              ; preds = %464, %432
  tail call void @llvm.dbg.value(metadata i1 undef, metadata !237, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1310
  %473 = icmp eq i8 %26, 0, !dbg !1868
  %474 = icmp eq ptr %25, null, !dbg !1874
  br i1 %474, label %477, label %475, !dbg !1876

475:                                              ; preds = %472
  %476 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #41, !dbg !1877
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %476) #41, !dbg !1877
  call void @usage(i32 noundef 125) #47, !dbg !1879
  unreachable, !dbg !1879

477:                                              ; preds = %472
  %478 = icmp eq ptr %24, null, !dbg !1880
  br i1 %478, label %481, label %479, !dbg !1882

479:                                              ; preds = %477
  %480 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #41, !dbg !1883
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %480) #41, !dbg !1883
  call void @usage(i32 noundef 125) #47, !dbg !1885
  unreachable, !dbg !1885

481:                                              ; preds = %477
  %482 = load ptr, ptr @environ, align 8, !dbg !1886, !tbaa !1069
  tail call void @llvm.dbg.value(metadata ptr %482, metadata !238, metadata !DIExpression()), !dbg !1887
  %483 = load ptr, ptr %482, align 8, !dbg !1888, !tbaa !1069
  %484 = icmp eq ptr %483, null, !dbg !1889
  br i1 %484, label %707, label %485, !dbg !1889

485:                                              ; preds = %481
  %486 = select i1 %473, i32 10, i32 0
  br label %487, !dbg !1889

487:                                              ; preds = %485, %487
  %488 = phi ptr [ %483, %485 ], [ %492, %487 ]
  %489 = phi ptr [ %482, %485 ], [ %490, %487 ]
  tail call void @llvm.dbg.value(metadata ptr %489, metadata !238, metadata !DIExpression()), !dbg !1887
  %490 = getelementptr inbounds ptr, ptr %489, i64 1, !dbg !1890
  tail call void @llvm.dbg.value(metadata ptr %490, metadata !238, metadata !DIExpression()), !dbg !1887
  %491 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull %488, i32 noundef %486) #41, !dbg !1890
  %492 = load ptr, ptr %490, align 8, !dbg !1888, !tbaa !1069
  %493 = icmp eq ptr %492, null, !dbg !1889
  br i1 %493, label %707, label %487, !dbg !1889, !llvm.loop !1891

494:                                              ; preds = %468
  %495 = icmp eq ptr %25, null, !dbg !1874
  %496 = icmp eq ptr %24, null, !dbg !1880
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1892, metadata !DIExpression(), metadata !1307, metadata ptr %8, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1902, metadata !DIExpression(), metadata !1308, metadata ptr %9, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i32 1, metadata !1898, metadata !DIExpression()), !dbg !1996
  br label %497, !dbg !1997

497:                                              ; preds = %541, %494
  %498 = phi i64 [ 1, %494 ], [ %542, %541 ]
  call void @llvm.dbg.value(metadata i64 %498, metadata !1898, metadata !DIExpression()), !dbg !1996
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %8) #41, !dbg !1998
  %499 = load ptr, ptr @signals, align 8, !dbg !1999, !tbaa !1069
  %500 = getelementptr inbounds i32, ptr %499, i64 %498, !dbg !1999
  %501 = load i32, ptr %500, align 4, !dbg !1999, !tbaa !1152
  switch i32 %501, label %502 [
    i32 0, label %541
    i32 2, label %503
    i32 4, label %503
  ], !dbg !2001

502:                                              ; preds = %497
  br label %503, !dbg !2002

503:                                              ; preds = %502, %497, %497
  %504 = phi i1 [ false, %502 ], [ true, %497 ], [ true, %497 ]
  call void @llvm.dbg.value(metadata i1 %504, metadata !1899, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1993
  %505 = add i32 %501, -1, !dbg !2003
  %506 = icmp ult i32 %505, 2, !dbg !2003
  call void @llvm.dbg.value(metadata i1 %506, metadata !1900, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1993
  %507 = trunc i64 %498 to i32, !dbg !2004
  %508 = call i32 @sigaction(i32 noundef %507, ptr noundef null, ptr noundef nonnull %8) #41, !dbg !2004
  call void @llvm.dbg.value(metadata i32 %508, metadata !1901, metadata !DIExpression()), !dbg !1993
  %509 = icmp eq i32 %508, 0, !dbg !2005
  %510 = or i1 %504, %509, !dbg !2007
  br i1 %510, label %515, label %511, !dbg !2007

511:                                              ; preds = %503
  %512 = tail call ptr @__errno_location() #44, !dbg !2008
  %513 = load i32, ptr %512, align 4, !dbg !2008, !tbaa !1152
  %514 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.108, i32 noundef 5) #41, !dbg !2008
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %513, ptr noundef %514, i32 noundef %507) #41, !dbg !2008
  unreachable, !dbg !2008

515:                                              ; preds = %503
  br i1 %509, label %516, label %526, !dbg !2009

516:                                              ; preds = %515
  %517 = select i1 %506, ptr null, ptr inttoptr (i64 1 to ptr), !dbg !2010
  store ptr %517, ptr %8, align 8, !dbg !2013, !tbaa !1161, !DIAssignID !2014
  call void @llvm.dbg.assign(metadata ptr %517, metadata !1892, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !2014, metadata ptr %8, metadata !DIExpression()), !dbg !1993
  %518 = call i32 @sigaction(i32 noundef %507, ptr noundef nonnull %8, ptr noundef null) #41, !dbg !2015
  call void @llvm.dbg.value(metadata i32 %518, metadata !1901, metadata !DIExpression()), !dbg !1993
  %519 = icmp eq i32 %518, 0, !dbg !2016
  %520 = or i1 %504, %519, !dbg !2018
  %521 = select i1 %519, ptr @.str.19, ptr @.str.114, !dbg !2018
  br i1 %520, label %526, label %522, !dbg !2018

522:                                              ; preds = %516
  %523 = tail call ptr @__errno_location() #44, !dbg !2019
  %524 = load i32, ptr %523, align 4, !dbg !2019, !tbaa !1152
  %525 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.109, i32 noundef 5) #41, !dbg !2019
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %524, ptr noundef %525, i32 noundef %507) #41, !dbg !2019
  unreachable, !dbg !2019

526:                                              ; preds = %516, %515
  %527 = phi ptr [ @.str.114, %515 ], [ %521, %516 ], !dbg !1993
  call void @llvm.dbg.value(metadata i1 poison, metadata !1901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1993
  %528 = load i1, ptr @dev_debug, align 1, !dbg !2020
  br i1 %528, label %529, label %541, !dbg !2021

529:                                              ; preds = %526
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %9) #41, !dbg !2022
  %530 = call i32 @sig2str(i32 noundef %507, ptr noundef nonnull %9) #41, !dbg !2023
  %531 = icmp eq i32 %530, 0, !dbg !2025
  br i1 %531, label %534, label %532, !dbg !2026

532:                                              ; preds = %529
  %533 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %9, i64 noundef 19, i32 noundef 1, i64 noundef 19, ptr noundef nonnull @.str.110, i32 noundef %507) #41, !dbg !2027
  br label %534, !dbg !2027

534:                                              ; preds = %532, %529
  %535 = load i1, ptr @dev_debug, align 1, !dbg !2028
  br i1 %535, label %536, label %540, !dbg !2031

536:                                              ; preds = %534
  %537 = load ptr, ptr @stderr, align 8, !dbg !2028, !tbaa !1069
  %538 = select i1 %506, ptr @.str.112, ptr @.str.113, !dbg !2028
  %539 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %537, i32 noundef 1, ptr noundef nonnull @.str.111, ptr noundef nonnull %9, i32 noundef %507, ptr noundef nonnull %538, ptr noundef nonnull %527) #41, !dbg !2028
  br label %540, !dbg !2028

540:                                              ; preds = %536, %534
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %9) #41, !dbg !2032
  br label %541, !dbg !2033

541:                                              ; preds = %540, %526, %497
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %8) #41, !dbg !2034
  %542 = add nuw nsw i64 %498, 1, !dbg !2035
  call void @llvm.dbg.value(metadata i64 %542, metadata !1898, metadata !DIExpression()), !dbg !1996
  %543 = icmp eq i64 %542, 65, !dbg !2036
  br i1 %543, label %544, label %497, !dbg !1997, !llvm.loop !2037

544:                                              ; preds = %541
  %545 = load i1, ptr @sig_mask_changed, align 1, !dbg !2039
  br i1 %545, label %546, label %590, !dbg !2041

546:                                              ; preds = %544
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2042, metadata !DIExpression(), metadata !1305, metadata ptr %6, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2050, metadata !DIExpression(), metadata !1306, metadata ptr %7, metadata !DIExpression()), !dbg !2055
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #41, !dbg !2056
  %547 = call i32 @sigemptyset(ptr noundef nonnull %6) #41, !dbg !2057
  %548 = call i32 @sigprocmask(i32 noundef 0, ptr noundef null, ptr noundef nonnull %6) #41, !dbg !2058
  %549 = icmp eq i32 %548, 0, !dbg !2058
  br i1 %549, label %557, label %550, !dbg !2060

550:                                              ; preds = %546
  %551 = tail call ptr @__errno_location() #44, !dbg !2061
  %552 = load i32, ptr %551, align 4, !dbg !2061, !tbaa !1152
  %553 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.115, i32 noundef 5) #41, !dbg !2061
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %552, ptr noundef %553) #41, !dbg !2061
  unreachable, !dbg !2061

554:                                              ; preds = %582
  %555 = call i32 @sigprocmask(i32 noundef 2, ptr noundef nonnull %6, ptr noundef null) #41, !dbg !2062
  %556 = icmp eq i32 %555, 0, !dbg !2062
  br i1 %556, label %589, label %585, !dbg !2064

557:                                              ; preds = %546, %582
  %558 = phi i32 [ %583, %582 ], [ 1, %546 ]
  call void @llvm.dbg.value(metadata i32 %558, metadata !2045, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata ptr null, metadata !2047, metadata !DIExpression()), !dbg !2066
  %559 = call i32 @sigismember(ptr noundef nonnull @block_signals, i32 noundef %558) #41, !dbg !2067
  %560 = icmp eq i32 %559, 0, !dbg !2067
  br i1 %560, label %563, label %561, !dbg !2069

561:                                              ; preds = %557
  %562 = call i32 @sigaddset(ptr noundef nonnull %6, i32 noundef %558) #41, !dbg !2070
  call void @llvm.dbg.value(metadata ptr @.str.116, metadata !2047, metadata !DIExpression()), !dbg !2066
  br label %568, !dbg !2072

563:                                              ; preds = %557
  %564 = call i32 @sigismember(ptr noundef nonnull @unblock_signals, i32 noundef %558) #41, !dbg !2073
  %565 = icmp eq i32 %564, 0, !dbg !2073
  br i1 %565, label %582, label %566, !dbg !2075

566:                                              ; preds = %563
  %567 = call i32 @sigdelset(ptr noundef nonnull %6, i32 noundef %558) #41, !dbg !2076
  call void @llvm.dbg.value(metadata ptr @.str.117, metadata !2047, metadata !DIExpression()), !dbg !2066
  br label %568, !dbg !2078

568:                                              ; preds = %566, %561
  %569 = phi ptr [ @.str.116, %561 ], [ @.str.117, %566 ], !dbg !2066
  call void @llvm.dbg.value(metadata ptr %569, metadata !2047, metadata !DIExpression()), !dbg !2066
  %570 = load i1, ptr @dev_debug, align 1, !dbg !2079
  br i1 %570, label %571, label %582, !dbg !2080

571:                                              ; preds = %568
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %7) #41, !dbg !2081
  %572 = call i32 @sig2str(i32 noundef %558, ptr noundef nonnull %7) #41, !dbg !2082
  %573 = icmp eq i32 %572, 0, !dbg !2084
  br i1 %573, label %576, label %574, !dbg !2085

574:                                              ; preds = %571
  %575 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %7, i64 noundef 19, i32 noundef 1, i64 noundef 19, ptr noundef nonnull @.str.110, i32 noundef %558) #41, !dbg !2086
  br label %576, !dbg !2086

576:                                              ; preds = %574, %571
  %577 = load i1, ptr @dev_debug, align 1, !dbg !2087
  br i1 %577, label %578, label %581, !dbg !2090

578:                                              ; preds = %576
  %579 = load ptr, ptr @stderr, align 8, !dbg !2087, !tbaa !1069
  %580 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %579, i32 noundef 1, ptr noundef nonnull @.str.118, ptr noundef nonnull %7, i32 noundef %558, ptr noundef nonnull %569) #41, !dbg !2087
  br label %581, !dbg !2087

581:                                              ; preds = %578, %576
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %7) #41, !dbg !2091
  br label %582, !dbg !2092

582:                                              ; preds = %581, %568, %563
  %583 = add nuw nsw i32 %558, 1, !dbg !2093
  call void @llvm.dbg.value(metadata i32 %583, metadata !2045, metadata !DIExpression()), !dbg !2065
  %584 = icmp eq i32 %583, 65, !dbg !2094
  br i1 %584, label %554, label %557, !dbg !2095, !llvm.loop !2096

585:                                              ; preds = %554
  %586 = tail call ptr @__errno_location() #44, !dbg !2098
  %587 = load i32, ptr %586, align 4, !dbg !2098, !tbaa !1152
  %588 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.119, i32 noundef 5) #41, !dbg !2098
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %587, ptr noundef %588) #41, !dbg !2098
  unreachable, !dbg !2098

589:                                              ; preds = %554
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #41, !dbg !2099
  br label %590, !dbg !2100

590:                                              ; preds = %589, %544
  %591 = load i1, ptr @report_signal_handling, align 1, !dbg !2101
  br i1 %591, label %592, label %630, !dbg !2103

592:                                              ; preds = %590
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2104, metadata !DIExpression(), metadata !1302, metadata ptr %3, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2109, metadata !DIExpression(), metadata !1303, metadata ptr %4, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2115, metadata !DIExpression(), metadata !1304, metadata ptr %5, metadata !DIExpression()), !dbg !2118
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #41, !dbg !2119
  %593 = call i32 @sigemptyset(ptr noundef nonnull %3) #41, !dbg !2120
  %594 = call i32 @sigprocmask(i32 noundef 0, ptr noundef null, ptr noundef nonnull %3) #41, !dbg !2121
  %595 = icmp eq i32 %594, 0, !dbg !2121
  br i1 %595, label %600, label %596, !dbg !2123

596:                                              ; preds = %592
  %597 = tail call ptr @__errno_location() #44, !dbg !2124
  %598 = load i32, ptr %597, align 4, !dbg !2124, !tbaa !1152
  %599 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.115, i32 noundef 5) #41, !dbg !2124
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %598, ptr noundef %599) #41, !dbg !2124
  unreachable, !dbg !2124

600:                                              ; preds = %592, %626
  %601 = phi i32 [ %627, %626 ], [ 1, %592 ]
  call void @llvm.dbg.value(metadata i32 %601, metadata !2107, metadata !DIExpression()), !dbg !2125
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %4) #41, !dbg !2126
  %602 = call i32 @sigaction(i32 noundef %601, ptr noundef null, ptr noundef nonnull %4) #41, !dbg !2127
  %603 = icmp eq i32 %602, 0, !dbg !2127
  br i1 %603, label %604, label %626, !dbg !2129

604:                                              ; preds = %600
  %605 = load ptr, ptr %4, align 8, !dbg !2130, !tbaa !1161
  %606 = icmp eq ptr %605, inttoptr (i64 1 to ptr), !dbg !2131
  %607 = select i1 %606, ptr @.str.113, ptr @.str.19, !dbg !2132
  call void @llvm.dbg.value(metadata ptr %607, metadata !2112, metadata !DIExpression()), !dbg !2118
  %608 = call i32 @sigismember(ptr noundef nonnull %3, i32 noundef %601) #41, !dbg !2133
  %609 = icmp eq i32 %608, 0, !dbg !2133
  %610 = select i1 %609, ptr @.str.19, ptr @.str.116, !dbg !2133
  call void @llvm.dbg.value(metadata ptr %610, metadata !2113, metadata !DIExpression()), !dbg !2118
  %611 = load i8, ptr %607, align 1, !dbg !2134, !tbaa !1161
  %612 = icmp eq i8 %611, 0, !dbg !2134
  %613 = load i8, ptr %610, align 1, !dbg !2135
  %614 = icmp eq i8 %613, 0, !dbg !2135
  %615 = select i1 %612, i1 true, i1 %614, !dbg !2134
  %616 = select i1 %615, ptr @.str.19, ptr @.str.93, !dbg !2134
  call void @llvm.dbg.value(metadata ptr %616, metadata !2114, metadata !DIExpression()), !dbg !2118
  %617 = select i1 %612, i1 %614, i1 false, !dbg !2136
  br i1 %617, label %626, label %618, !dbg !2136

618:                                              ; preds = %604
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %5) #41, !dbg !2138
  %619 = call i32 @sig2str(i32 noundef %601, ptr noundef nonnull %5) #41, !dbg !2139
  %620 = icmp eq i32 %619, 0, !dbg !2141
  br i1 %620, label %623, label %621, !dbg !2142

621:                                              ; preds = %618
  %622 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %5, i64 noundef 19, i32 noundef 1, i64 noundef 19, ptr noundef nonnull @.str.110, i32 noundef %601) #41, !dbg !2143
  br label %623, !dbg !2143

623:                                              ; preds = %621, %618
  %624 = load ptr, ptr @stderr, align 8, !dbg !2144, !tbaa !1069
  %625 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %624, i32 noundef 1, ptr noundef nonnull @.str.120, ptr noundef nonnull %5, i32 noundef %601, ptr noundef nonnull %610, ptr noundef nonnull %616, ptr noundef nonnull %607) #41, !dbg !2144
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %5) #41, !dbg !2145
  br label %626, !dbg !2145

626:                                              ; preds = %623, %604, %600
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %4) #41, !dbg !2145
  %627 = add nuw nsw i32 %601, 1, !dbg !2146
  call void @llvm.dbg.value(metadata i32 %627, metadata !2107, metadata !DIExpression()), !dbg !2125
  %628 = icmp eq i32 %627, 65, !dbg !2147
  br i1 %628, label %629, label %600, !dbg !2148, !llvm.loop !2149

629:                                              ; preds = %626
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #41, !dbg !2151
  br label %630, !dbg !2152

630:                                              ; preds = %629, %590
  %631 = load i1, ptr @dev_debug, align 1, !dbg !2153
  br i1 %495, label %647, label %632, !dbg !2154

632:                                              ; preds = %630
  br i1 %631, label %633, label %637, !dbg !2155

633:                                              ; preds = %632
  %634 = load ptr, ptr @stderr, align 8, !dbg !2159, !tbaa !1069
  %635 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %25) #41, !dbg !2159
  %636 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %634, i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef %635) #41, !dbg !2159
  br label %637, !dbg !2159

637:                                              ; preds = %633, %632
  %638 = call i32 @chdir(ptr noundef nonnull %25) #41, !dbg !2161
  %639 = icmp eq i32 %638, 0, !dbg !2163
  br i1 %639, label %640, label %642, !dbg !2164

640:                                              ; preds = %637
  %641 = load i1, ptr @dev_debug, align 1, !dbg !2153
  br label %647, !dbg !2164

642:                                              ; preds = %637
  %643 = tail call ptr @__errno_location() #44, !dbg !2165
  %644 = load i32, ptr %643, align 4, !dbg !2165, !tbaa !1152
  %645 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #41, !dbg !2165
  %646 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %25) #41, !dbg !2165
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %644, ptr noundef %645, ptr noundef %646) #41, !dbg !2165
  unreachable, !dbg !2165

647:                                              ; preds = %640, %630
  %648 = phi i1 [ %641, %640 ], [ %631, %630 ], !dbg !2153
  %649 = load i32, ptr @optind, align 4, !dbg !2166, !tbaa !1152
  %650 = sext i32 %649 to i64, !dbg !2167
  %651 = getelementptr inbounds ptr, ptr %23, i64 %650, !dbg !2167
  %652 = load ptr, ptr %651, align 8, !dbg !2167, !tbaa !1069
  tail call void @llvm.dbg.value(metadata ptr %652, metadata !243, metadata !DIExpression()), !dbg !1310
  br i1 %496, label %664, label %653, !dbg !2168

653:                                              ; preds = %647
  br i1 %648, label %656, label %654, !dbg !2169

654:                                              ; preds = %653
  %655 = getelementptr inbounds ptr, ptr %23, i64 %650, !dbg !2173
  store ptr %24, ptr %655, align 8, !dbg !2174, !tbaa !1069
  br label %693, !dbg !2175

656:                                              ; preds = %653
  %657 = load ptr, ptr @stderr, align 8, !dbg !2176, !tbaa !1069
  %658 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %24) #41, !dbg !2176
  %659 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %657, i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef %658) #41, !dbg !2176
  %660 = load i32, ptr @optind, align 4, !dbg !2178, !tbaa !1152
  %661 = load i1, ptr @dev_debug, align 1, !dbg !2153
  %662 = sext i32 %660 to i64, !dbg !2173
  %663 = getelementptr inbounds ptr, ptr %23, i64 %662, !dbg !2173
  store ptr %24, ptr %663, align 8, !dbg !2174, !tbaa !1069
  br i1 %661, label %665, label %693, !dbg !2175

664:                                              ; preds = %647
  br i1 %648, label %665, label %693, !dbg !2175

665:                                              ; preds = %656, %664
  %666 = load ptr, ptr @stderr, align 8, !dbg !2179, !tbaa !1069
  %667 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %666, i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef %652) #41, !dbg !2179
  %668 = load i32, ptr @optind, align 4, !dbg !2182, !tbaa !1152
  tail call void @llvm.dbg.value(metadata i32 %668, metadata !244, metadata !DIExpression()), !dbg !2183
  %669 = icmp slt i32 %668, %22, !dbg !2184
  br i1 %669, label %670, label %693, !dbg !2186

670:                                              ; preds = %665
  %671 = sext i32 %668 to i64, !dbg !2186
  %672 = load i1, ptr @dev_debug, align 1, !dbg !2187
  br label %673, !dbg !2186

673:                                              ; preds = %670, %686
  %674 = phi i1 [ %672, %670 ], [ %687, %686 ], !dbg !2187
  %675 = phi i64 [ %671, %670 ], [ %688, %686 ]
  tail call void @llvm.dbg.value(metadata i64 %675, metadata !244, metadata !DIExpression()), !dbg !2183
  br i1 %674, label %676, label %686, !dbg !2190

676:                                              ; preds = %673
  %677 = load ptr, ptr @stderr, align 8, !dbg !2187, !tbaa !1069
  %678 = load i32, ptr @optind, align 4, !dbg !2187, !tbaa !1152
  %679 = trunc i64 %675 to i32, !dbg !2187
  %680 = sub nsw i32 %679, %678, !dbg !2187
  %681 = getelementptr inbounds ptr, ptr %23, i64 %675, !dbg !2187
  %682 = load ptr, ptr %681, align 8, !dbg !2187, !tbaa !1069
  %683 = call ptr @quote(ptr noundef %682) #41, !dbg !2187
  %684 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %677, i32 noundef 1, ptr noundef nonnull @.str.40, i32 noundef %680, ptr noundef %683) #41, !dbg !2187
  %685 = load i1, ptr @dev_debug, align 1, !dbg !2187
  br label %686, !dbg !2187

686:                                              ; preds = %673, %676
  %687 = phi i1 [ false, %673 ], [ %685, %676 ]
  %688 = add nsw i64 %675, 1, !dbg !2191
  tail call void @llvm.dbg.value(metadata i64 %688, metadata !244, metadata !DIExpression()), !dbg !2183
  %689 = trunc i64 %688 to i32, !dbg !2184
  %690 = icmp eq i32 %22, %689, !dbg !2184
  br i1 %690, label %691, label %673, !dbg !2186, !llvm.loop !2192

691:                                              ; preds = %686
  %692 = load i32, ptr @optind, align 4, !dbg !2194, !tbaa !1152
  br label %693, !dbg !2194

693:                                              ; preds = %654, %656, %691, %665, %664
  %694 = phi i32 [ %692, %691 ], [ %668, %665 ], [ %649, %664 ], [ %660, %656 ], [ %649, %654 ], !dbg !2194
  %695 = sext i32 %694 to i64, !dbg !2195
  %696 = getelementptr inbounds ptr, ptr %23, i64 %695, !dbg !2195
  %697 = call i32 @execvp(ptr noundef %652, ptr noundef %696) #41, !dbg !2196
  %698 = tail call ptr @__errno_location() #44, !dbg !2197
  %699 = load i32, ptr %698, align 4, !dbg !2197, !tbaa !1152
  %700 = icmp eq i32 %699, 2, !dbg !2198
  tail call void @llvm.dbg.value(metadata i32 undef, metadata !248, metadata !DIExpression()), !dbg !1310
  %701 = call ptr @quote(ptr noundef %652) #41, !dbg !2199
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %699, ptr noundef nonnull @.str.41, ptr noundef %701) #41, !dbg !2199
  br i1 %700, label %702, label %707, !dbg !2200

702:                                              ; preds = %693
  %703 = call ptr @strpbrk(ptr noundef %652, ptr noundef nonnull @.str.42) #42, !dbg !2202
  %704 = icmp eq ptr %703, null, !dbg !2202
  br i1 %704, label %707, label %705, !dbg !2203

705:                                              ; preds = %702
  %706 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #41, !dbg !2204
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %706) #41, !dbg !2204
  br label %707, !dbg !2204

707:                                              ; preds = %487, %481, %693, %702, %705
  %708 = phi i32 [ 127, %705 ], [ 127, %702 ], [ 126, %693 ], [ 0, %481 ], [ 0, %487 ], !dbg !1310
  ret i32 %708, !dbg !2205
}

; Function Attrs: nounwind
declare !dbg !2206 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2209 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2210 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nounwind
declare !dbg !2213 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @parse_signal_action_params(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #10 !dbg !2217 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2221, metadata !DIExpression()), !dbg !2231
  tail call void @llvm.dbg.value(metadata i1 %1, metadata !2222, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2231
  %3 = icmp eq ptr %0, null, !dbg !2232
  br i1 %3, label %4, label %25, !dbg !2233

4:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2223, metadata !DIExpression()), !dbg !2234
  %5 = select i1 %1, i32 2, i32 4
  %6 = insertelement <4 x i32> poison, i32 %5, i64 0, !dbg !2235
  %7 = shufflevector <4 x i32> %6, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !2235
  %8 = load ptr, ptr @signals, align 8, !tbaa !1069
  %9 = getelementptr inbounds i32, ptr %8, i64 1, !dbg !2236
  store <4 x i32> %7, ptr %9, align 4, !dbg !2238, !tbaa !1152
  %10 = getelementptr inbounds i32, ptr %8, i64 5, !dbg !2236
  store <4 x i32> %7, ptr %10, align 4, !dbg !2238, !tbaa !1152
  %11 = getelementptr inbounds i32, ptr %8, i64 9, !dbg !2236
  store <4 x i32> %7, ptr %11, align 4, !dbg !2238, !tbaa !1152
  %12 = getelementptr inbounds i32, ptr %8, i64 13, !dbg !2236
  store <4 x i32> %7, ptr %12, align 4, !dbg !2238, !tbaa !1152
  %13 = getelementptr inbounds i32, ptr %8, i64 17, !dbg !2236
  store <4 x i32> %7, ptr %13, align 4, !dbg !2238, !tbaa !1152
  %14 = getelementptr inbounds i32, ptr %8, i64 21, !dbg !2236
  store <4 x i32> %7, ptr %14, align 4, !dbg !2238, !tbaa !1152
  %15 = getelementptr inbounds i32, ptr %8, i64 25, !dbg !2236
  store <4 x i32> %7, ptr %15, align 4, !dbg !2238, !tbaa !1152
  %16 = getelementptr inbounds i32, ptr %8, i64 29, !dbg !2236
  store <4 x i32> %7, ptr %16, align 4, !dbg !2238, !tbaa !1152
  %17 = getelementptr inbounds i32, ptr %8, i64 33, !dbg !2236
  store <4 x i32> %7, ptr %17, align 4, !dbg !2238, !tbaa !1152
  %18 = getelementptr inbounds i32, ptr %8, i64 37, !dbg !2236
  store <4 x i32> %7, ptr %18, align 4, !dbg !2238, !tbaa !1152
  %19 = getelementptr inbounds i32, ptr %8, i64 41, !dbg !2236
  store <4 x i32> %7, ptr %19, align 4, !dbg !2238, !tbaa !1152
  %20 = getelementptr inbounds i32, ptr %8, i64 45, !dbg !2236
  store <4 x i32> %7, ptr %20, align 4, !dbg !2238, !tbaa !1152
  %21 = getelementptr inbounds i32, ptr %8, i64 49, !dbg !2236
  store <4 x i32> %7, ptr %21, align 4, !dbg !2238, !tbaa !1152
  %22 = getelementptr inbounds i32, ptr %8, i64 53, !dbg !2236
  store <4 x i32> %7, ptr %22, align 4, !dbg !2238, !tbaa !1152
  %23 = getelementptr inbounds i32, ptr %8, i64 57, !dbg !2236
  store <4 x i32> %7, ptr %23, align 4, !dbg !2238, !tbaa !1152
  %24 = getelementptr inbounds i32, ptr %8, i64 61, !dbg !2236
  store <4 x i32> %7, ptr %24, align 4, !dbg !2238, !tbaa !1152
  br label %49, !dbg !2239

25:                                               ; preds = %2
  %26 = tail call noalias nonnull ptr @xstrdup(ptr noundef nonnull %0) #41, !dbg !2240
  tail call void @llvm.dbg.value(metadata ptr %26, metadata !2227, metadata !DIExpression()), !dbg !2231
  %27 = tail call ptr @strtok(ptr noundef nonnull %26, ptr noundef nonnull @.str.93) #41, !dbg !2241
  tail call void @llvm.dbg.value(metadata ptr %27, metadata !2228, metadata !DIExpression()), !dbg !2231
  %28 = icmp eq ptr %27, null, !dbg !2242
  br i1 %28, label %48, label %29, !dbg !2242

29:                                               ; preds = %25
  %30 = select i1 %1, i32 1, i32 3
  br label %31, !dbg !2242

31:                                               ; preds = %29, %42
  %32 = phi ptr [ %27, %29 ], [ %46, %42 ]
  tail call void @llvm.dbg.value(metadata ptr %32, metadata !2228, metadata !DIExpression()), !dbg !2231
  %33 = tail call i32 @operand2sig(ptr noundef nonnull %32) #41, !dbg !2243
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !2229, metadata !DIExpression()), !dbg !2244
  %34 = icmp eq i32 %33, 0, !dbg !2245
  br i1 %34, label %35, label %38, !dbg !2247

35:                                               ; preds = %31
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.94, i32 noundef 5) #41, !dbg !2248
  %37 = tail call ptr @quote(ptr noundef nonnull %32) #41, !dbg !2248
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %36, ptr noundef %37) #41, !dbg !2248
  br label %40, !dbg !2249

38:                                               ; preds = %31
  %39 = icmp slt i32 %33, 1, !dbg !2250
  br i1 %39, label %40, label %42, !dbg !2249

40:                                               ; preds = %38, %35
  %41 = load volatile i32, ptr @exit_failure, align 4, !dbg !2252, !tbaa !1152
  tail call void @usage(i32 noundef %41) #47, !dbg !2253
  unreachable, !dbg !2253

42:                                               ; preds = %38
  %43 = load ptr, ptr @signals, align 8, !dbg !2254, !tbaa !1069
  %44 = zext nneg i32 %33 to i64
  %45 = getelementptr inbounds i32, ptr %43, i64 %44, !dbg !2254
  store i32 %30, ptr %45, align 4, !dbg !2255, !tbaa !1152
  %46 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.93) #41, !dbg !2256
  tail call void @llvm.dbg.value(metadata ptr %46, metadata !2228, metadata !DIExpression()), !dbg !2231
  %47 = icmp eq ptr %46, null, !dbg !2242
  br i1 %47, label %48, label %31, !dbg !2242, !llvm.loop !2257

48:                                               ; preds = %42, %25
  tail call void @free(ptr noundef nonnull %26) #41, !dbg !2259
  br label %49, !dbg !2239

49:                                               ; preds = %4, %48
  ret void, !dbg !2239
}

; Function Attrs: nounwind uwtable
define internal fastcc void @parse_block_signal_params(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #10 !dbg !2260 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2262, metadata !DIExpression()), !dbg !2268
  tail call void @llvm.dbg.value(metadata i1 %1, metadata !2263, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2268
  %3 = icmp eq ptr %0, null, !dbg !2269
  br i1 %3, label %9, label %4, !dbg !2271

4:                                                ; preds = %2
  %5 = load i1, ptr @sig_mask_changed, align 1, !dbg !2272
  br i1 %5, label %14, label %6, !dbg !2274

6:                                                ; preds = %4
  %7 = tail call i32 @sigemptyset(ptr noundef nonnull @block_signals) #41, !dbg !2275
  %8 = tail call i32 @sigemptyset(ptr noundef nonnull @unblock_signals) #41, !dbg !2277
  br label %14, !dbg !2278

9:                                                ; preds = %2
  %10 = select i1 %1, ptr @block_signals, ptr @unblock_signals, !dbg !2279
  %11 = tail call i32 @sigfillset(ptr noundef nonnull %10) #41, !dbg !2281
  %12 = select i1 %1, ptr @unblock_signals, ptr @block_signals, !dbg !2282
  %13 = tail call i32 @sigemptyset(ptr noundef nonnull %12) #41, !dbg !2283
  store i1 true, ptr @sig_mask_changed, align 1, !dbg !2284
  br label %46, !dbg !2285

14:                                               ; preds = %4, %6
  store i1 true, ptr @sig_mask_changed, align 1, !dbg !2284
  %15 = tail call noalias nonnull ptr @xstrdup(ptr noundef nonnull %0) #41, !dbg !2286
  tail call void @llvm.dbg.value(metadata ptr %15, metadata !2264, metadata !DIExpression()), !dbg !2268
  %16 = tail call ptr @strtok(ptr noundef nonnull %15, ptr noundef nonnull @.str.93) #41, !dbg !2287
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !2265, metadata !DIExpression()), !dbg !2268
  %17 = icmp eq ptr %16, null, !dbg !2288
  br i1 %17, label %45, label %18, !dbg !2288

18:                                               ; preds = %14
  %19 = select i1 %1, ptr @block_signals, ptr @unblock_signals
  %20 = select i1 %1, ptr @unblock_signals, ptr @block_signals
  br label %21, !dbg !2288

21:                                               ; preds = %18, %42
  %22 = phi ptr [ %16, %18 ], [ %43, %42 ]
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2265, metadata !DIExpression()), !dbg !2268
  %23 = tail call i32 @operand2sig(ptr noundef nonnull %22) #41, !dbg !2289
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !2266, metadata !DIExpression()), !dbg !2290
  %24 = icmp eq i32 %23, 0, !dbg !2291
  br i1 %24, label %25, label %28, !dbg !2293

25:                                               ; preds = %21
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.94, i32 noundef 5) #41, !dbg !2294
  %27 = tail call ptr @quote(ptr noundef nonnull %22) #41, !dbg !2294
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %26, ptr noundef %27) #41, !dbg !2294
  br label %30, !dbg !2295

28:                                               ; preds = %21
  %29 = icmp slt i32 %23, 1, !dbg !2296
  br i1 %29, label %30, label %32, !dbg !2295

30:                                               ; preds = %28, %25
  %31 = load volatile i32, ptr @exit_failure, align 4, !dbg !2298, !tbaa !1152
  tail call void @usage(i32 noundef %31) #47, !dbg !2299
  unreachable, !dbg !2299

32:                                               ; preds = %28
  %33 = tail call i32 @sigaddset(ptr noundef nonnull %19, i32 noundef %23) #41, !dbg !2300
  %34 = icmp eq i32 %33, -1, !dbg !2302
  br i1 %34, label %35, label %40, !dbg !2303

35:                                               ; preds = %32
  br i1 %1, label %36, label %42, !dbg !2304

36:                                               ; preds = %35
  %37 = tail call ptr @__errno_location() #44, !dbg !2306
  %38 = load i32, ptr %37, align 4, !dbg !2306, !tbaa !1152
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.95, i32 noundef 5) #41, !dbg !2306
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %38, ptr noundef %39, i32 noundef %23) #41, !dbg !2306
  unreachable, !dbg !2306

40:                                               ; preds = %32
  %41 = tail call i32 @sigdelset(ptr noundef nonnull %20, i32 noundef %23) #41, !dbg !2308
  br label %42

42:                                               ; preds = %35, %40
  %43 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.93) #41, !dbg !2309
  tail call void @llvm.dbg.value(metadata ptr %43, metadata !2265, metadata !DIExpression()), !dbg !2268
  %44 = icmp eq ptr %43, null, !dbg !2288
  br i1 %44, label %45, label %21, !dbg !2288, !llvm.loop !2310

45:                                               ; preds = %42, %14
  tail call void @free(ptr noundef nonnull %15) #41, !dbg !2312
  br label %46, !dbg !2313

46:                                               ; preds = %9, %45
  ret void, !dbg !2313
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nounwind uwtable
define internal fastcc void @check_start_new_arg(ptr noundef %0) unnamed_addr #10 !dbg !2314 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2316, metadata !DIExpression()), !dbg !2320
  %2 = getelementptr inbounds %struct.splitbuf, ptr %0, i64 0, i32 4, !dbg !2321
  %3 = load i8, ptr %2, align 4, !dbg !2321, !tbaa !1450, !range !1479, !noundef !1119
  %4 = icmp eq i8 %3, 0, !dbg !2321
  br i1 %4, label %57, label %5, !dbg !2322

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %0, metadata !1598, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i8 0, metadata !1599, metadata !DIExpression()), !dbg !2323
  %6 = load ptr, ptr %0, align 8, !dbg !2325, !tbaa !1436
  %7 = getelementptr inbounds %struct.splitbuf, ptr %0, i64 0, i32 1, !dbg !2326
  %8 = load i32, ptr %7, align 8, !dbg !2326, !tbaa !1441
  %9 = sext i32 %8 to i64, !dbg !2327
  %10 = getelementptr inbounds ptr, ptr %6, i64 %9, !dbg !2327
  %11 = load ptr, ptr %10, align 8, !dbg !2327, !tbaa !1069
  %12 = ptrtoint ptr %11 to i64, !dbg !2328
  call void @llvm.dbg.value(metadata i64 %12, metadata !1600, metadata !DIExpression()), !dbg !2323
  %13 = getelementptr inbounds %struct.splitbuf, ptr %0, i64 0, i32 2, !dbg !2329
  %14 = load i64, ptr %13, align 8, !dbg !2329, !tbaa !1444
  %15 = shl i64 %14, 3, !dbg !2330
  %16 = icmp ugt i64 %15, %12, !dbg !2331
  br i1 %16, label %24, label %17, !dbg !2332

17:                                               ; preds = %5
  call void @llvm.dbg.value(metadata ptr %0, metadata !1611, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i64 %14, metadata !1616, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i64 %12, metadata !1617, metadata !DIExpression()), !dbg !2333
  %18 = tail call nonnull ptr @xpalloc(ptr noundef nonnull %6, ptr noundef nonnull %13, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !2335
  store ptr %18, ptr %0, align 8, !dbg !2336, !tbaa !1436
  %19 = load i64, ptr %13, align 8, !dbg !2337, !tbaa !1444
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19, !dbg !2338
  %21 = getelementptr inbounds ptr, ptr %18, i64 %14, !dbg !2339
  call void @llvm.dbg.value(metadata ptr %20, metadata !1626, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata ptr %21, metadata !1631, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i64 %12, metadata !1632, metadata !DIExpression()), !dbg !2340
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %20, ptr noundef nonnull align 1 %21, i64 noundef %12, i1 noundef false) #41, !dbg !2342
  %22 = load ptr, ptr %0, align 8, !dbg !2343, !tbaa !1436
  %23 = load i64, ptr %13, align 8, !dbg !2344, !tbaa !1444
  br label %24, !dbg !2345

24:                                               ; preds = %5, %17
  %25 = phi i64 [ %23, %17 ], [ %14, %5 ], !dbg !2344
  %26 = phi ptr [ %22, %17 ], [ %6, %5 ], !dbg !2343
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25, !dbg !2346
  %28 = getelementptr inbounds i8, ptr %27, i64 %12, !dbg !2347
  store i8 0, ptr %28, align 1, !dbg !2348, !tbaa !1161
  %29 = add nsw i64 %12, 1, !dbg !2349
  %30 = inttoptr i64 %29 to ptr, !dbg !2350
  %31 = load ptr, ptr %0, align 8, !dbg !2351, !tbaa !1436
  %32 = load i32, ptr %7, align 8, !dbg !2352, !tbaa !1441
  %33 = sext i32 %32 to i64, !dbg !2353
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33, !dbg !2353
  store ptr %30, ptr %34, align 8, !dbg !2354, !tbaa !1069
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !2317, metadata !DIExpression()), !dbg !2355
  %35 = load i64, ptr %13, align 8, !dbg !2356, !tbaa !1444
  %36 = getelementptr inbounds %struct.splitbuf, ptr %0, i64 0, i32 3, !dbg !2358
  %37 = load i32, ptr %36, align 8, !dbg !2358, !tbaa !1447
  %38 = add i32 %32, 1, !dbg !2359
  %39 = add i32 %38, %37, !dbg !2360
  %40 = sext i32 %39 to i64, !dbg !2361
  %41 = icmp sgt i64 %35, %40, !dbg !2362
  br i1 %41, label %51, label %42, !dbg !2363

42:                                               ; preds = %24
  call void @llvm.dbg.value(metadata ptr %0, metadata !1611, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i64 %35, metadata !1616, metadata !DIExpression()), !dbg !2364
  %43 = load ptr, ptr %0, align 8, !dbg !2366, !tbaa !1436
  %44 = getelementptr inbounds ptr, ptr %43, i64 %33, !dbg !2367
  %45 = load ptr, ptr %44, align 8, !dbg !2367, !tbaa !1069
  %46 = ptrtoint ptr %45 to i64, !dbg !2368
  call void @llvm.dbg.value(metadata i64 %46, metadata !1617, metadata !DIExpression()), !dbg !2364
  %47 = tail call nonnull ptr @xpalloc(ptr noundef %43, ptr noundef nonnull %13, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !2369
  store ptr %47, ptr %0, align 8, !dbg !2370, !tbaa !1436
  %48 = load i64, ptr %13, align 8, !dbg !2371, !tbaa !1444
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48, !dbg !2372
  %50 = getelementptr inbounds ptr, ptr %47, i64 %35, !dbg !2373
  call void @llvm.dbg.value(metadata ptr %49, metadata !1626, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata ptr %50, metadata !1631, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i64 %46, metadata !1632, metadata !DIExpression()), !dbg !2374
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %49, ptr noundef nonnull align 1 %50, i64 noundef %46, i1 noundef false) #41, !dbg !2376
  br label %51, !dbg !2377

51:                                               ; preds = %42, %24
  %52 = load ptr, ptr %0, align 8, !dbg !2378, !tbaa !1436
  %53 = getelementptr inbounds ptr, ptr %52, i64 %33, !dbg !2379
  %54 = load ptr, ptr %53, align 8, !dbg !2379, !tbaa !1069
  %55 = sext i32 %38 to i64, !dbg !2380
  %56 = getelementptr inbounds ptr, ptr %52, i64 %55, !dbg !2380
  store ptr %54, ptr %56, align 8, !dbg !2381, !tbaa !1069
  store i32 %38, ptr %7, align 8, !dbg !2382, !tbaa !1441
  store i8 0, ptr %2, align 4, !dbg !2383, !tbaa !1450
  br label %57, !dbg !2384

57:                                               ; preds = %51, %1
  ret void, !dbg !2385
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2386 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

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
declare !dbg !2389 noundef i32 @unsetenv(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !2392 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2396 i32 @putenv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2399 i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !2407 i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: nounwind
declare !dbg !2411 i32 @sigemptyset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2415 i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2422 i32 @sigismember(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2425 i32 @sigaddset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2428 i32 @sigdelset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2429 i32 @chdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !2431 i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2434 ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2435 i32 @sigfillset(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2436 ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local i32 @operand2sig(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2439 {
  %2 = alloca i32, align 4, !DIAssignID !2452
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2442, metadata !DIExpression(), metadata !2452, metadata ptr %2, metadata !DIExpression()), !dbg !2453
  %3 = alloca ptr, align 8, !DIAssignID !2454
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2443, metadata !DIExpression(), metadata !2454, metadata ptr %3, metadata !DIExpression()), !dbg !2455
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2441, metadata !DIExpression()), !dbg !2453
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #41, !dbg !2456
  %4 = load i8, ptr %0, align 1, !dbg !2457, !tbaa !1161
  %5 = sext i8 %4 to i32, !dbg !2457
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2458, metadata !DIExpression()), !dbg !2461
  %6 = add nsw i32 %5, -48, !dbg !2463
  %7 = icmp ult i32 %6, 10, !dbg !2463
  br i1 %7, label %8, label %34, !dbg !2464

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #41, !dbg !2465
  %9 = tail call ptr @__errno_location() #44, !dbg !2466
  store i32 0, ptr %9, align 4, !dbg !2467, !tbaa !1152
  %10 = call i64 @strtol(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 10) #41, !dbg !2468
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !2446, metadata !DIExpression()), !dbg !2455
  %11 = freeze i64 %10, !dbg !2469
  %12 = trunc i64 %11 to i32, !dbg !2469
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2447, metadata !DIExpression()), !dbg !2455
  %13 = load ptr, ptr %3, align 8, !dbg !2470, !tbaa !1069
  %14 = icmp eq ptr %13, %0, !dbg !2471
  br i1 %14, label %32, label %15, !dbg !2472

15:                                               ; preds = %8
  %16 = load i8, ptr %13, align 1, !dbg !2473, !tbaa !1161
  %17 = icmp eq i8 %16, 0, !dbg !2473
  br i1 %17, label %18, label %32, !dbg !2474

18:                                               ; preds = %15
  %19 = load i32, ptr %9, align 4, !dbg !2475, !tbaa !1152
  %20 = icmp eq i32 %19, 0, !dbg !2475
  %21 = add i64 %11, 2147483648
  %22 = icmp ult i64 %21, 4294967296
  %23 = and i1 %20, %22, !dbg !2476
  br i1 %23, label %24, label %32, !dbg !2476

24:                                               ; preds = %18
  call void @llvm.dbg.assign(metadata i32 %12, metadata !2442, metadata !DIExpression(), metadata !2477, metadata ptr %2, metadata !DIExpression()), !dbg !2453
  %25 = icmp slt i32 %12, 255, !dbg !2478
  br i1 %25, label %26, label %30, !dbg !2478

26:                                               ; preds = %24
  %27 = icmp eq i32 %12, -1, !dbg !2479
  %28 = and i32 %12, 127, !dbg !2478
  %29 = select i1 %27, i32 -1, i32 %28, !dbg !2478
  br label %32, !dbg !2478

30:                                               ; preds = %24
  %31 = and i32 %12, 255, !dbg !2478
  br label %32, !dbg !2478

32:                                               ; preds = %26, %8, %15, %18, %30
  %33 = phi i32 [ %31, %30 ], [ -1, %8 ], [ -1, %15 ], [ -1, %18 ], [ %29, %26 ]
  store i32 %33, ptr %2, align 4, !dbg !2455, !tbaa !1152, !DIAssignID !2477
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41, !dbg !2481
  br label %70, !dbg !2482

34:                                               ; preds = %1
  %35 = tail call noalias nonnull ptr @xstrdup(ptr noundef nonnull %0) #41, !dbg !2483
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !2448, metadata !DIExpression()), !dbg !2484
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !2450, metadata !DIExpression()), !dbg !2485
  %36 = load i8, ptr %35, align 1, !dbg !2486, !tbaa !1161
  %37 = icmp eq i8 %36, 0, !dbg !2488
  br i1 %37, label %38, label %41, !dbg !2488

38:                                               ; preds = %48, %34
  %39 = call i32 @str2sig(ptr noundef nonnull %35, ptr noundef nonnull %2) #41, !dbg !2489
  %40 = icmp eq i32 %39, 0, !dbg !2491
  br i1 %40, label %68, label %52, !dbg !2492

41:                                               ; preds = %34, %48
  %42 = phi i8 [ %50, %48 ], [ %36, %34 ]
  %43 = phi ptr [ %49, %48 ], [ %35, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %43, metadata !2450, metadata !DIExpression()), !dbg !2485
  %44 = add i8 %42, -123, !dbg !2493
  %45 = icmp ult i8 %44, -26, !dbg !2493
  br i1 %45, label %48, label %46, !dbg !2495

46:                                               ; preds = %41
  %47 = add nsw i8 %42, -32, !dbg !2496
  store i8 %47, ptr %43, align 1, !dbg !2496, !tbaa !1161
  br label %48, !dbg !2497

48:                                               ; preds = %41, %46
  %49 = getelementptr inbounds i8, ptr %43, i64 1, !dbg !2498
  tail call void @llvm.dbg.value(metadata ptr %49, metadata !2450, metadata !DIExpression()), !dbg !2485
  %50 = load i8, ptr %49, align 1, !dbg !2486, !tbaa !1161
  %51 = icmp eq i8 %50, 0, !dbg !2488
  br i1 %51, label %38, label %41, !dbg !2488, !llvm.loop !2499

52:                                               ; preds = %38
  %53 = load i8, ptr %35, align 1, !dbg !2501, !tbaa !1161
  %54 = icmp eq i8 %53, 83, !dbg !2502
  br i1 %54, label %55, label %67, !dbg !2503

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !2504
  %57 = load i8, ptr %56, align 1, !dbg !2504, !tbaa !1161
  %58 = icmp eq i8 %57, 73, !dbg !2505
  br i1 %58, label %59, label %67, !dbg !2506

59:                                               ; preds = %55
  %60 = getelementptr inbounds i8, ptr %35, i64 2, !dbg !2507
  %61 = load i8, ptr %60, align 1, !dbg !2507, !tbaa !1161
  %62 = icmp eq i8 %61, 71, !dbg !2508
  br i1 %62, label %63, label %67, !dbg !2509

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %35, i64 3, !dbg !2510
  %65 = call i32 @str2sig(ptr noundef nonnull %64, ptr noundef nonnull %2) #41, !dbg !2511
  %66 = icmp eq i32 %65, 0, !dbg !2512
  br i1 %66, label %68, label %67, !dbg !2513

67:                                               ; preds = %63, %59, %55, %52
  store i32 -1, ptr %2, align 4, !dbg !2514, !tbaa !1152, !DIAssignID !2515
  call void @llvm.dbg.assign(metadata i32 -1, metadata !2442, metadata !DIExpression(), metadata !2515, metadata ptr %2, metadata !DIExpression()), !dbg !2453
  br label %68, !dbg !2516

68:                                               ; preds = %67, %63, %38
  call void @free(ptr noundef nonnull %35) #41, !dbg !2517
  %69 = load i32, ptr %2, align 4, !dbg !2518
  br label %70

70:                                               ; preds = %68, %32
  %71 = phi i32 [ %69, %68 ], [ %33, %32 ], !dbg !2518
  %72 = icmp ugt i32 %71, 64, !dbg !2520
  br i1 %72, label %73, label %76, !dbg !2520

73:                                               ; preds = %70
  %74 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.3, i32 noundef 5) #41, !dbg !2521
  %75 = call ptr @quote(ptr noundef nonnull %0) #41, !dbg !2521
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %74, ptr noundef %75) #41, !dbg !2521
  br label %76, !dbg !2523

76:                                               ; preds = %70, %73
  %77 = phi i32 [ -1, %73 ], [ %71, %70 ], !dbg !2453
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #41, !dbg !2524
  ret i32 %77, !dbg !2524
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2525 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @c_isalnum(i32 noundef %0) local_unnamed_addr #17 !dbg !2529 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2532, metadata !DIExpression()), !dbg !2533
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
  ], !dbg !2534

2:                                                ; preds = %1
  br label %3, !dbg !2535

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !2537
  ret i1 %4, !dbg !2538
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @c_isalpha(i32 noundef %0) local_unnamed_addr #17 !dbg !2539 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2541, metadata !DIExpression()), !dbg !2542
  %2 = add i32 %0, -65, !dbg !2543
  %3 = icmp ult i32 %2, 58, !dbg !2543
  %4 = zext nneg i32 %2 to i58, !dbg !2543
  %5 = lshr i58 -4227858433, %4, !dbg !2543
  %6 = and i58 %5, 1, !dbg !2543
  %7 = icmp ne i58 %6, 0, !dbg !2543
  %8 = select i1 %3, i1 %7, i1 false, !dbg !2543
  ret i1 %8, !dbg !2544
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @c_isascii(i32 noundef %0) local_unnamed_addr #17 !dbg !2545 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2547, metadata !DIExpression()), !dbg !2548
  %2 = icmp ult i32 %0, 128, !dbg !2549
  ret i1 %2, !dbg !2550
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @c_isblank(i32 noundef %0) local_unnamed_addr #17 !dbg !2551 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2553, metadata !DIExpression()), !dbg !2554
  %2 = icmp eq i32 %0, 32, !dbg !2555
  %3 = icmp eq i32 %0, 9, !dbg !2556
  %4 = or i1 %2, %3, !dbg !2556
  ret i1 %4, !dbg !2557
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @c_iscntrl(i32 noundef %0) local_unnamed_addr #17 !dbg !2558 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2560, metadata !DIExpression()), !dbg !2561
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
  ], !dbg !2562

2:                                                ; preds = %1
  br label %3, !dbg !2563

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !2565
  ret i1 %4, !dbg !2566
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @c_isdigit(i32 noundef %0) local_unnamed_addr #17 !dbg !2567 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2569, metadata !DIExpression()), !dbg !2570
  %2 = add i32 %0, -48, !dbg !2571
  %3 = icmp ult i32 %2, 10, !dbg !2571
  ret i1 %3, !dbg !2572
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @c_isgraph(i32 noundef %0) local_unnamed_addr #17 !dbg !2573 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2575, metadata !DIExpression()), !dbg !2576
  %2 = add i32 %0, -33, !dbg !2577
  %3 = icmp ult i32 %2, 94, !dbg !2577
  ret i1 %3, !dbg !2578
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @c_islower(i32 noundef %0) local_unnamed_addr #17 !dbg !2579 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2581, metadata !DIExpression()), !dbg !2582
  %2 = add i32 %0, -97, !dbg !2583
  %3 = icmp ult i32 %2, 26, !dbg !2583
  ret i1 %3, !dbg !2584
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @c_isprint(i32 noundef %0) local_unnamed_addr #17 !dbg !2585 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2587, metadata !DIExpression()), !dbg !2588
  %2 = add i32 %0, -32, !dbg !2589
  %3 = icmp ult i32 %2, 95, !dbg !2589
  ret i1 %3, !dbg !2590
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @c_ispunct(i32 noundef %0) local_unnamed_addr #17 !dbg !2591 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2593, metadata !DIExpression()), !dbg !2594
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
  ], !dbg !2595

2:                                                ; preds = %1
  br label %3, !dbg !2596

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !2598
  ret i1 %4, !dbg !2599
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @c_isspace(i32 noundef %0) local_unnamed_addr #17 !dbg !2600 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2602, metadata !DIExpression()), !dbg !2603
  %2 = icmp ult i32 %0, 33, !dbg !2604
  %3 = zext nneg i32 %0 to i33, !dbg !2604
  %4 = lshr i33 -4294951424, %3, !dbg !2604
  %5 = and i33 %4, 1, !dbg !2604
  %6 = icmp ne i33 %5, 0, !dbg !2604
  %7 = select i1 %2, i1 %6, i1 false, !dbg !2604
  ret i1 %7, !dbg !2605
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @c_isupper(i32 noundef %0) local_unnamed_addr #17 !dbg !2606 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2608, metadata !DIExpression()), !dbg !2609
  %2 = add i32 %0, -65, !dbg !2610
  %3 = icmp ult i32 %2, 26, !dbg !2610
  ret i1 %3, !dbg !2611
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @c_isxdigit(i32 noundef %0) local_unnamed_addr #17 !dbg !2612 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2614, metadata !DIExpression()), !dbg !2615
  %2 = add i32 %0, -48, !dbg !2616
  %3 = icmp ult i32 %2, 55, !dbg !2616
  %4 = zext nneg i32 %2 to i55, !dbg !2616
  %5 = lshr i55 -562949945162753, %4, !dbg !2616
  %6 = and i55 %5, 1, !dbg !2616
  %7 = icmp ne i55 %6, 0, !dbg !2616
  %8 = select i1 %3, i1 %7, i1 false, !dbg !2616
  ret i1 %8, !dbg !2617
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @c_tolower(i32 noundef %0) local_unnamed_addr #17 !dbg !2618 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2622, metadata !DIExpression()), !dbg !2623
  %2 = add i32 %0, -65, !dbg !2624
  %3 = icmp ult i32 %2, 26, !dbg !2624
  %4 = add nsw i32 %0, 32, !dbg !2624
  %5 = select i1 %3, i32 %4, i32 %0, !dbg !2624
  ret i32 %5, !dbg !2625
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @c_toupper(i32 noundef %0) local_unnamed_addr #17 !dbg !2626 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2628, metadata !DIExpression()), !dbg !2629
  %2 = add i32 %0, -97, !dbg !2630
  %3 = icmp ult i32 %2, 26, !dbg !2630
  %4 = add nsw i32 %0, -32, !dbg !2630
  %5 = select i1 %3, i32 %4, i32 %0, !dbg !2630
  ret i32 %5, !dbg !2631
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #18 !dbg !2632 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2634, metadata !DIExpression()), !dbg !2635
  store ptr %0, ptr @file_name, align 8, !dbg !2636, !tbaa !1069
  ret void, !dbg !2637
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #18 !dbg !2638 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2642, metadata !DIExpression()), !dbg !2643
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !2644, !tbaa !2645
  ret void, !dbg !2646
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2647 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2652, !tbaa !1069
  %2 = tail call i32 @close_stream(ptr noundef %1) #41, !dbg !2653
  %3 = icmp eq i32 %2, 0, !dbg !2654
  br i1 %3, label %22, label %4, !dbg !2655

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !2656, !tbaa !2645, !range !1479, !noundef !1119
  %6 = icmp eq i8 %5, 0, !dbg !2656
  br i1 %6, label %11, label %7, !dbg !2657

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #44, !dbg !2658
  %9 = load i32, ptr %8, align 4, !dbg !2658, !tbaa !1152
  %10 = icmp eq i32 %9, 32, !dbg !2659
  br i1 %10, label %22, label %11, !dbg !2660

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1.54, i32 noundef 5) #41, !dbg !2661
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !2649, metadata !DIExpression()), !dbg !2662
  %13 = load ptr, ptr @file_name, align 8, !dbg !2663, !tbaa !1069
  %14 = icmp eq ptr %13, null, !dbg !2663
  %15 = tail call ptr @__errno_location() #44, !dbg !2665
  %16 = load i32, ptr %15, align 4, !dbg !2665, !tbaa !1152
  br i1 %14, label %19, label %17, !dbg !2666

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #41, !dbg !2667
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.55, ptr noundef %18, ptr noundef %12) #41, !dbg !2667
  br label %20, !dbg !2667

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.56, ptr noundef %12) #41, !dbg !2668
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2669, !tbaa !1152
  tail call void @_exit(i32 noundef %21) #43, !dbg !2670
  unreachable, !dbg !2670

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2671, !tbaa !1069
  %24 = tail call i32 @close_stream(ptr noundef %23) #41, !dbg !2673
  %25 = icmp eq i32 %24, 0, !dbg !2674
  br i1 %25, label %28, label %26, !dbg !2675

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2676, !tbaa !1152
  tail call void @_exit(i32 noundef %27) #43, !dbg !2677
  unreachable, !dbg !2677

28:                                               ; preds = %22
  ret void, !dbg !2678
}

; Function Attrs: noreturn
declare !dbg !2679 void @_exit(i32 noundef) local_unnamed_addr #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 !dbg !2680 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2684, metadata !DIExpression()), !dbg !2688
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2685, metadata !DIExpression()), !dbg !2688
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2686, metadata !DIExpression()), !dbg !2688
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2687, metadata !DIExpression()), !dbg !2688
  tail call fastcc void @flush_stdout(), !dbg !2689
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2690, !tbaa !1069
  %6 = icmp eq ptr %5, null, !dbg !2690
  br i1 %6, label %8, label %7, !dbg !2692

7:                                                ; preds = %4
  tail call void %5() #41, !dbg !2693
  br label %12, !dbg !2693

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2694, !tbaa !1069
  %10 = tail call ptr @getprogname() #42, !dbg !2694
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %10) #41, !dbg !2694
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2696
  ret void, !dbg !2697
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2698 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2700, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 1, metadata !2702, metadata !DIExpression()), !dbg !2705
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #41, !dbg !2708
  %2 = icmp slt i32 %1, 0, !dbg !2709
  br i1 %2, label %6, label %3, !dbg !2710

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2711, !tbaa !1069
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #41, !dbg !2711
  br label %6, !dbg !2711

6:                                                ; preds = %3, %0
  ret void, !dbg !2712
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2713 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !2719
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2715, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2716, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2717, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2718, metadata !DIExpression()), !dbg !2720
  %6 = load ptr, ptr @stderr, align 8, !dbg !2721, !tbaa !1069
  call void @llvm.dbg.value(metadata ptr %6, metadata !2722, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata ptr %2, metadata !2762, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata ptr %3, metadata !2763, metadata !DIExpression()), !dbg !2764
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #41, !dbg !2766
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2767, !tbaa !1152
  %9 = add i32 %8, 1, !dbg !2767
  store i32 %9, ptr @error_message_count, align 4, !dbg !2767, !tbaa !1152
  %10 = icmp eq i32 %1, 0, !dbg !2768
  br i1 %10, label %20, label %11, !dbg !2770

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2771, metadata !DIExpression(), metadata !2719, metadata ptr %5, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i32 %1, metadata !2774, metadata !DIExpression()), !dbg !2779
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #41, !dbg !2781
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #41, !dbg !2782
  call void @llvm.dbg.value(metadata ptr %12, metadata !2775, metadata !DIExpression()), !dbg !2779
  %13 = icmp eq ptr %12, null, !dbg !2783
  br i1 %13, label %14, label %16, !dbg !2785

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.58, ptr noundef nonnull @.str.5.59, i32 noundef 5) #41, !dbg !2786
  call void @llvm.dbg.value(metadata ptr %15, metadata !2775, metadata !DIExpression()), !dbg !2779
  br label %16, !dbg !2787

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2779
  call void @llvm.dbg.value(metadata ptr %17, metadata !2775, metadata !DIExpression()), !dbg !2779
  %18 = load ptr, ptr @stderr, align 8, !dbg !2788, !tbaa !1069
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.60, ptr noundef %17) #41, !dbg !2788
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #41, !dbg !2789
  br label %20, !dbg !2790

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2791, !tbaa !1069
  call void @llvm.dbg.value(metadata i32 10, metadata !2792, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata ptr %21, metadata !2798, metadata !DIExpression()), !dbg !2799
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2801
  %23 = load ptr, ptr %22, align 8, !dbg !2801, !tbaa !2802
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2801
  %25 = load ptr, ptr %24, align 8, !dbg !2801, !tbaa !2804
  %26 = icmp ult ptr %23, %25, !dbg !2801
  br i1 %26, label %29, label %27, !dbg !2801, !prof !2805

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #41, !dbg !2801
  br label %31, !dbg !2801

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2801
  store ptr %30, ptr %22, align 8, !dbg !2801, !tbaa !2802
  store i8 10, ptr %23, align 1, !dbg !2801, !tbaa !1161
  br label %31, !dbg !2801

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2806, !tbaa !1069
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #41, !dbg !2806
  %34 = icmp eq i32 %0, 0, !dbg !2807
  br i1 %34, label %36, label %35, !dbg !2809

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #43, !dbg !2810
  unreachable, !dbg !2810

36:                                               ; preds = %31
  ret void, !dbg !2811
}

declare !dbg !2812 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2815 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2818 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2821 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2824 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2828 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2841
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2835, metadata !DIExpression(), metadata !2841, metadata ptr %4, metadata !DIExpression()), !dbg !2842
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2832, metadata !DIExpression()), !dbg !2842
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2833, metadata !DIExpression()), !dbg !2842
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2834, metadata !DIExpression()), !dbg !2842
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #41, !dbg !2843
  call void @llvm.va_start(ptr nonnull %4), !dbg !2844
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #48, !dbg !2845
  call void @llvm.va_end(ptr nonnull %4), !dbg !2846
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #41, !dbg !2847
  ret void, !dbg !2847
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #21

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #20 !dbg !675 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !686, metadata !DIExpression()), !dbg !2848
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !687, metadata !DIExpression()), !dbg !2848
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !688, metadata !DIExpression()), !dbg !2848
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !689, metadata !DIExpression()), !dbg !2848
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !690, metadata !DIExpression()), !dbg !2848
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !691, metadata !DIExpression()), !dbg !2848
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2849, !tbaa !1152
  %8 = icmp eq i32 %7, 0, !dbg !2849
  br i1 %8, label %23, label %9, !dbg !2851

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2852, !tbaa !1152
  %11 = icmp eq i32 %10, %3, !dbg !2855
  br i1 %11, label %12, label %22, !dbg !2856

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2857, !tbaa !1069
  %14 = icmp eq ptr %13, %2, !dbg !2858
  br i1 %14, label %36, label %15, !dbg !2859

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2860
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2861
  br i1 %18, label %19, label %22, !dbg !2861

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2862
  %21 = icmp eq i32 %20, 0, !dbg !2863
  br i1 %21, label %36, label %22, !dbg !2864

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2865, !tbaa !1069
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2866, !tbaa !1152
  br label %23, !dbg !2867

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2868
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2869, !tbaa !1069
  %25 = icmp eq ptr %24, null, !dbg !2869
  br i1 %25, label %27, label %26, !dbg !2871

26:                                               ; preds = %23
  tail call void %24() #41, !dbg !2872
  br label %31, !dbg !2872

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2873, !tbaa !1069
  %29 = tail call ptr @getprogname() #42, !dbg !2873
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.63, ptr noundef %29) #41, !dbg !2873
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2875, !tbaa !1069
  %33 = icmp eq ptr %2, null, !dbg !2875
  %34 = select i1 %33, ptr @.str.3.64, ptr @.str.2.65, !dbg !2875
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #41, !dbg !2875
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2876
  br label %36, !dbg !2877

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2877
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2878 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2888
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2887, metadata !DIExpression(), metadata !2888, metadata ptr %6, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2882, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2883, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2884, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2885, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2886, metadata !DIExpression()), !dbg !2889
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #41, !dbg !2890
  call void @llvm.va_start(ptr nonnull %6), !dbg !2891
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #48, !dbg !2892
  call void @llvm.va_end(ptr nonnull %6), !dbg !2893
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #41, !dbg !2894
  ret void, !dbg !2894
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #22 !dbg !2895 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2898, !tbaa !1069
  ret ptr %1, !dbg !2899
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #23 !dbg !2900 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2902, metadata !DIExpression()), !dbg !2905
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #42, !dbg !2906
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2903, metadata !DIExpression()), !dbg !2905
  %3 = icmp eq ptr %2, null, !dbg !2907
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2907
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2907
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2904, metadata !DIExpression()), !dbg !2905
  %6 = ptrtoint ptr %5 to i64, !dbg !2908
  %7 = ptrtoint ptr %0 to i64, !dbg !2908
  %8 = sub i64 %6, %7, !dbg !2908
  %9 = icmp sgt i64 %8, 6, !dbg !2910
  br i1 %9, label %10, label %19, !dbg !2911

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2912
  call void @llvm.dbg.value(metadata ptr %11, metadata !2913, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata ptr @.str.74, metadata !2918, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i64 7, metadata !2919, metadata !DIExpression()), !dbg !2920
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.74, i64 7), !dbg !2922
  %13 = icmp eq i32 %12, 0, !dbg !2923
  br i1 %13, label %14, label %19, !dbg !2924

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2902, metadata !DIExpression()), !dbg !2905
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.75, i64 noundef 3) #42, !dbg !2925
  %16 = icmp eq i32 %15, 0, !dbg !2928
  %17 = select i1 %16, i64 3, i64 0, !dbg !2929
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2929
  br label %19, !dbg !2929

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2905
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2904, metadata !DIExpression()), !dbg !2905
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2902, metadata !DIExpression()), !dbg !2905
  store ptr %20, ptr @program_name, align 8, !dbg !2930, !tbaa !1069
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2931, !tbaa !1069
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2932, !tbaa !1069
  ret void, !dbg !2933
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2934 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !725 {
  %3 = alloca i32, align 4, !DIAssignID !2935
  call void @llvm.dbg.assign(metadata i1 undef, metadata !735, metadata !DIExpression(), metadata !2935, metadata ptr %3, metadata !DIExpression()), !dbg !2936
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2937
  call void @llvm.dbg.assign(metadata i1 undef, metadata !740, metadata !DIExpression(), metadata !2937, metadata ptr %4, metadata !DIExpression()), !dbg !2936
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !732, metadata !DIExpression()), !dbg !2936
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !733, metadata !DIExpression()), !dbg !2936
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #41, !dbg !2938
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !734, metadata !DIExpression()), !dbg !2936
  %6 = icmp eq ptr %5, %0, !dbg !2939
  br i1 %6, label %7, label %14, !dbg !2941

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #41, !dbg !2942
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #41, !dbg !2943
  call void @llvm.dbg.value(metadata ptr %4, metadata !2944, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata ptr %4, metadata !2953, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i32 0, metadata !2958, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i64 8, metadata !2959, metadata !DIExpression()), !dbg !2960
  store i64 0, ptr %4, align 8, !dbg !2962
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #41, !dbg !2963
  %9 = icmp eq i64 %8, 2, !dbg !2965
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2966
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2936
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !2967
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #41, !dbg !2967
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2936
  ret ptr %15, !dbg !2967
}

; Function Attrs: nounwind
declare !dbg !2968 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2974 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2979, metadata !DIExpression()), !dbg !2982
  %2 = tail call ptr @__errno_location() #44, !dbg !2983
  %3 = load i32, ptr %2, align 4, !dbg !2983, !tbaa !1152
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2980, metadata !DIExpression()), !dbg !2982
  %4 = icmp eq ptr %0, null, !dbg !2984
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2984
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #49, !dbg !2985
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2981, metadata !DIExpression()), !dbg !2982
  store i32 %3, ptr %2, align 4, !dbg !2986, !tbaa !1152
  ret ptr %6, !dbg !2987
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #25 !dbg !2988 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2994, metadata !DIExpression()), !dbg !2995
  %2 = icmp eq ptr %0, null, !dbg !2996
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2996
  %4 = load i32, ptr %3, align 8, !dbg !2997, !tbaa !2998
  ret i32 %4, !dbg !3000
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #26 !dbg !3001 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3005, metadata !DIExpression()), !dbg !3007
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3006, metadata !DIExpression()), !dbg !3007
  %3 = icmp eq ptr %0, null, !dbg !3008
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3008
  store i32 %1, ptr %4, align 8, !dbg !3009, !tbaa !2998
  ret void, !dbg !3010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #27 !dbg !3011 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3015, metadata !DIExpression()), !dbg !3023
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3016, metadata !DIExpression()), !dbg !3023
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3017, metadata !DIExpression()), !dbg !3023
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3018, metadata !DIExpression()), !dbg !3023
  %4 = icmp eq ptr %0, null, !dbg !3024
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3024
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3025
  %7 = lshr i8 %1, 5, !dbg !3026
  %8 = zext nneg i8 %7 to i64, !dbg !3026
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !3027
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3019, metadata !DIExpression()), !dbg !3023
  %10 = and i8 %1, 31, !dbg !3028
  %11 = zext nneg i8 %10 to i32, !dbg !3028
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !3021, metadata !DIExpression()), !dbg !3023
  %12 = load i32, ptr %9, align 4, !dbg !3029, !tbaa !1152
  %13 = lshr i32 %12, %11, !dbg !3030
  %14 = and i32 %13, 1, !dbg !3031
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !3022, metadata !DIExpression()), !dbg !3023
  %15 = xor i32 %13, %2, !dbg !3032
  %16 = and i32 %15, 1, !dbg !3032
  %17 = shl nuw i32 %16, %11, !dbg !3033
  %18 = xor i32 %17, %12, !dbg !3034
  store i32 %18, ptr %9, align 4, !dbg !3034, !tbaa !1152
  ret i32 %14, !dbg !3035
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #27 !dbg !3036 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3040, metadata !DIExpression()), !dbg !3043
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3041, metadata !DIExpression()), !dbg !3043
  %3 = icmp eq ptr %0, null, !dbg !3044
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3046
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3040, metadata !DIExpression()), !dbg !3043
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !3047
  %6 = load i32, ptr %5, align 4, !dbg !3047, !tbaa !3048
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !3042, metadata !DIExpression()), !dbg !3043
  store i32 %1, ptr %5, align 4, !dbg !3049, !tbaa !3048
  ret i32 %6, !dbg !3050
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3051 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3055, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3056, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3057, metadata !DIExpression()), !dbg !3058
  %4 = icmp eq ptr %0, null, !dbg !3059
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3061
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3055, metadata !DIExpression()), !dbg !3058
  store i32 10, ptr %5, align 8, !dbg !3062, !tbaa !2998
  %6 = icmp ne ptr %1, null, !dbg !3063
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3065
  br i1 %8, label %10, label %9, !dbg !3065

9:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3066
  unreachable, !dbg !3066

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3067
  store ptr %1, ptr %11, align 8, !dbg !3068, !tbaa !3069
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3070
  store ptr %2, ptr %12, align 8, !dbg !3071, !tbaa !3072
  ret void, !dbg !3073
}

; Function Attrs: noreturn nounwind
declare !dbg !3074 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3075 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3079, metadata !DIExpression()), !dbg !3087
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3080, metadata !DIExpression()), !dbg !3087
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3081, metadata !DIExpression()), !dbg !3087
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3082, metadata !DIExpression()), !dbg !3087
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3083, metadata !DIExpression()), !dbg !3087
  %6 = icmp eq ptr %4, null, !dbg !3088
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !3088
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3084, metadata !DIExpression()), !dbg !3087
  %8 = tail call ptr @__errno_location() #44, !dbg !3089
  %9 = load i32, ptr %8, align 4, !dbg !3089, !tbaa !1152
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !3085, metadata !DIExpression()), !dbg !3087
  %10 = load i32, ptr %7, align 8, !dbg !3090, !tbaa !2998
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !3091
  %12 = load i32, ptr %11, align 4, !dbg !3091, !tbaa !3048
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !3092
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !3093
  %15 = load ptr, ptr %14, align 8, !dbg !3093, !tbaa !3069
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !3094
  %17 = load ptr, ptr %16, align 8, !dbg !3094, !tbaa !3072
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !3095
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !3086, metadata !DIExpression()), !dbg !3087
  store i32 %9, ptr %8, align 4, !dbg !3096, !tbaa !1152
  ret i64 %18, !dbg !3097
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !3098 {
  %10 = alloca i32, align 4, !DIAssignID !3166
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3167
  %12 = alloca i32, align 4, !DIAssignID !3168
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3169
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3170
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3144, metadata !DIExpression(), metadata !3170, metadata ptr %14, metadata !DIExpression()), !dbg !3171
  %15 = alloca i32, align 4, !DIAssignID !3172
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3147, metadata !DIExpression(), metadata !3172, metadata ptr %15, metadata !DIExpression()), !dbg !3173
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3104, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3105, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3106, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3107, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3108, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !3109, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3110, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3111, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3112, metadata !DIExpression()), !dbg !3174
  %16 = tail call i64 @__ctype_get_mb_cur_max() #41, !dbg !3175
  %17 = icmp eq i64 %16, 1, !dbg !3176
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !3113, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3114, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3115, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3116, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3117, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3118, metadata !DIExpression()), !dbg !3174
  %18 = trunc i32 %5 to i8, !dbg !3177
  %19 = lshr i8 %18, 1, !dbg !3177
  %20 = and i8 %19, 1, !dbg !3177
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !3119, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3120, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3121, metadata !DIExpression()), !dbg !3174
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !3178

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !3179
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !3180
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !3181
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !3182
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !3174
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !3183
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !3184
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !3105, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !3121, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !3120, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !3119, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !3118, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !3117, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !3116, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !3115, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3114, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !3107, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !3112, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !3111, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !3108, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.label(metadata !3122), !dbg !3185
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3123, metadata !DIExpression()), !dbg !3174
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
  ], !dbg !3186

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3119, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i32 5, metadata !3108, metadata !DIExpression()), !dbg !3174
  br label %114, !dbg !3187

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !3119, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i32 5, metadata !3108, metadata !DIExpression()), !dbg !3174
  %43 = and i8 %37, 1, !dbg !3188
  %44 = icmp eq i8 %43, 0, !dbg !3188
  br i1 %44, label %45, label %114, !dbg !3187

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3190
  br i1 %46, label %114, label %47, !dbg !3193

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !3190, !tbaa !1161
  br label %114, !dbg !3190

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !826, metadata !DIExpression(), metadata !3168, metadata ptr %12, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.assign(metadata i1 undef, metadata !827, metadata !DIExpression(), metadata !3169, metadata ptr %13, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata ptr @.str.11.131, metadata !823, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i32 %29, metadata !824, metadata !DIExpression()), !dbg !3194
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.132, ptr noundef nonnull @.str.11.131, i32 noundef 5) #41, !dbg !3198
  call void @llvm.dbg.value(metadata ptr %49, metadata !825, metadata !DIExpression()), !dbg !3194
  %50 = icmp eq ptr %49, @.str.11.131, !dbg !3199
  br i1 %50, label %51, label %60, !dbg !3201

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #41, !dbg !3202
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #41, !dbg !3203
  call void @llvm.dbg.value(metadata ptr %13, metadata !3204, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata ptr %13, metadata !3212, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i32 0, metadata !3215, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i64 8, metadata !3216, metadata !DIExpression()), !dbg !3217
  store i64 0, ptr %13, align 8, !dbg !3219
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #41, !dbg !3220
  %53 = icmp eq i64 %52, 3, !dbg !3222
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !3223
  %57 = icmp eq i32 %29, 9, !dbg !3223
  %58 = select i1 %57, ptr @.str.10.133, ptr @.str.12.134, !dbg !3223
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !3223
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #41, !dbg !3224
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #41, !dbg !3224
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !3194
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3111, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.assign(metadata i1 undef, metadata !826, metadata !DIExpression(), metadata !3166, metadata ptr %10, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.assign(metadata i1 undef, metadata !827, metadata !DIExpression(), metadata !3167, metadata ptr %11, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata ptr @.str.12.134, metadata !823, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i32 %29, metadata !824, metadata !DIExpression()), !dbg !3225
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.132, ptr noundef nonnull @.str.12.134, i32 noundef 5) #41, !dbg !3227
  call void @llvm.dbg.value(metadata ptr %62, metadata !825, metadata !DIExpression()), !dbg !3225
  %63 = icmp eq ptr %62, @.str.12.134, !dbg !3228
  br i1 %63, label %64, label %73, !dbg !3229

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #41, !dbg !3230
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #41, !dbg !3231
  call void @llvm.dbg.value(metadata ptr %11, metadata !3204, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata ptr %11, metadata !3212, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i32 0, metadata !3215, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i64 8, metadata !3216, metadata !DIExpression()), !dbg !3234
  store i64 0, ptr %11, align 8, !dbg !3236
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #41, !dbg !3237
  %66 = icmp eq i64 %65, 3, !dbg !3238
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !3239
  %70 = icmp eq i32 %29, 9, !dbg !3239
  %71 = select i1 %70, ptr @.str.10.133, ptr @.str.12.134, !dbg !3239
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !3239
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #41, !dbg !3240
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #41, !dbg !3240
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !3112, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !3111, metadata !DIExpression()), !dbg !3174
  %76 = and i8 %37, 1, !dbg !3241
  %77 = icmp eq i8 %76, 0, !dbg !3241
  br i1 %77, label %78, label %93, !dbg !3242

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !3124, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3114, metadata !DIExpression()), !dbg !3174
  %79 = load i8, ptr %74, align 1, !dbg !3244, !tbaa !1161
  %80 = icmp eq i8 %79, 0, !dbg !3246
  br i1 %80, label %93, label %81, !dbg !3246

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !3124, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !3114, metadata !DIExpression()), !dbg !3174
  %85 = icmp ult i64 %84, %40, !dbg !3247
  br i1 %85, label %86, label %88, !dbg !3250

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !3247
  store i8 %82, ptr %87, align 1, !dbg !3247, !tbaa !1161
  br label %88, !dbg !3247

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !3114, metadata !DIExpression()), !dbg !3174
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !3251
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !3124, metadata !DIExpression()), !dbg !3243
  %91 = load i8, ptr %90, align 1, !dbg !3244, !tbaa !1161
  %92 = icmp eq i8 %91, 0, !dbg !3246
  br i1 %92, label %93, label %81, !dbg !3246, !llvm.loop !3252

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !3254
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !3114, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3118, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !3116, metadata !DIExpression()), !dbg !3174
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #42, !dbg !3255
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !3117, metadata !DIExpression()), !dbg !3174
  br label %114, !dbg !3256

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3118, metadata !DIExpression()), !dbg !3174
  br label %98, !dbg !3257

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !3118, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3119, metadata !DIExpression()), !dbg !3174
  br label %98, !dbg !3258

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !3182
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !3119, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !3118, metadata !DIExpression()), !dbg !3174
  %101 = and i8 %100, 1, !dbg !3259
  %102 = icmp eq i8 %101, 0, !dbg !3259
  %103 = select i1 %102, i8 1, i8 %99, !dbg !3261
  br label %104, !dbg !3261

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !3174
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !3177
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !3119, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !3118, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i32 2, metadata !3108, metadata !DIExpression()), !dbg !3174
  %107 = and i8 %106, 1, !dbg !3262
  %108 = icmp eq i8 %107, 0, !dbg !3262
  br i1 %108, label %109, label %114, !dbg !3264

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !3265
  br i1 %110, label %114, label %111, !dbg !3268

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !3265, !tbaa !1161
  br label %114, !dbg !3265

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3119, metadata !DIExpression()), !dbg !3174
  br label %114, !dbg !3269

113:                                              ; preds = %28
  call void @abort() #43, !dbg !3270
  unreachable, !dbg !3270

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !3254
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.133, %45 ], [ @.str.10.133, %47 ], [ @.str.10.133, %42 ], [ %34, %28 ], [ @.str.12.134, %109 ], [ @.str.12.134, %111 ], [ @.str.12.134, %104 ], [ @.str.10.133, %41 ], !dbg !3174
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !3174
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !3174
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !3119, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !3118, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !3117, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !3116, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !3114, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !3112, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !3111, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !3108, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3129, metadata !DIExpression()), !dbg !3271
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
  br label %138, !dbg !3272

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !3254
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !3179
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !3183
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !3184
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !3273
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !3274
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !3105, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !3129, metadata !DIExpression()), !dbg !3271
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !3123, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !3121, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !3120, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !3115, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !3114, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !3107, metadata !DIExpression()), !dbg !3174
  %147 = icmp eq i64 %139, -1, !dbg !3275
  br i1 %147, label %148, label %152, !dbg !3276

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3277
  %150 = load i8, ptr %149, align 1, !dbg !3277, !tbaa !1161
  %151 = icmp eq i8 %150, 0, !dbg !3278
  br i1 %151, label %612, label %154, !dbg !3279

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !3280
  br i1 %153, label %612, label %154, !dbg !3279

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3131, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3134, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3135, metadata !DIExpression()), !dbg !3281
  br i1 %128, label %155, label %170, !dbg !3282

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !3284
  %157 = select i1 %147, i1 %129, i1 false, !dbg !3285
  br i1 %157, label %158, label %160, !dbg !3285

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !3286
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !3107, metadata !DIExpression()), !dbg !3174
  br label %160, !dbg !3287

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !3287
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !3107, metadata !DIExpression()), !dbg !3174
  %162 = icmp ugt i64 %156, %161, !dbg !3288
  br i1 %162, label %170, label %163, !dbg !3289

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3290
  call void @llvm.dbg.value(metadata ptr %164, metadata !3291, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata ptr %119, metadata !3294, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %120, metadata !3295, metadata !DIExpression()), !dbg !3296
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !3298
  %166 = icmp ne i32 %165, 0, !dbg !3299
  %167 = select i1 %166, i1 true, i1 %131, !dbg !3300
  %168 = xor i1 %166, true, !dbg !3300
  %169 = zext i1 %168 to i8, !dbg !3300
  br i1 %167, label %170, label %666, !dbg !3300

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !3281
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !3131, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !3107, metadata !DIExpression()), !dbg !3174
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3301
  %175 = load i8, ptr %174, align 1, !dbg !3301, !tbaa !1161
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !3136, metadata !DIExpression()), !dbg !3281
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
  ], !dbg !3302

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !3303

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !3304

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3134, metadata !DIExpression()), !dbg !3281
  %179 = and i8 %144, 1, !dbg !3308
  %180 = icmp eq i8 %179, 0, !dbg !3308
  %181 = select i1 %132, i1 %180, i1 false, !dbg !3308
  br i1 %181, label %182, label %198, !dbg !3308

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !3310
  br i1 %183, label %184, label %186, !dbg !3314

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3310
  store i8 39, ptr %185, align 1, !dbg !3310, !tbaa !1161
  br label %186, !dbg !3310

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !3314
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !3114, metadata !DIExpression()), !dbg !3174
  %188 = icmp ult i64 %187, %146, !dbg !3315
  br i1 %188, label %189, label %191, !dbg !3318

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !3315
  store i8 36, ptr %190, align 1, !dbg !3315, !tbaa !1161
  br label %191, !dbg !3315

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !3318
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !3114, metadata !DIExpression()), !dbg !3174
  %193 = icmp ult i64 %192, %146, !dbg !3319
  br i1 %193, label %194, label %196, !dbg !3322

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !3319
  store i8 39, ptr %195, align 1, !dbg !3319, !tbaa !1161
  br label %196, !dbg !3319

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !3322
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !3114, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3123, metadata !DIExpression()), !dbg !3174
  br label %198, !dbg !3323

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !3174
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !3123, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !3114, metadata !DIExpression()), !dbg !3174
  %201 = icmp ult i64 %199, %146, !dbg !3324
  br i1 %201, label %202, label %204, !dbg !3327

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !3324
  store i8 92, ptr %203, align 1, !dbg !3324, !tbaa !1161
  br label %204, !dbg !3324

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !3327
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !3114, metadata !DIExpression()), !dbg !3174
  br i1 %125, label %206, label %476, !dbg !3328

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !3330
  %208 = icmp ult i64 %207, %171, !dbg !3331
  br i1 %208, label %209, label %465, !dbg !3332

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !3333
  %211 = load i8, ptr %210, align 1, !dbg !3333, !tbaa !1161
  %212 = add i8 %211, -48, !dbg !3334
  %213 = icmp ult i8 %212, 10, !dbg !3334
  br i1 %213, label %214, label %465, !dbg !3334

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !3335
  br i1 %215, label %216, label %218, !dbg !3339

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !3335
  store i8 48, ptr %217, align 1, !dbg !3335, !tbaa !1161
  br label %218, !dbg !3335

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !3339
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !3114, metadata !DIExpression()), !dbg !3174
  %220 = icmp ult i64 %219, %146, !dbg !3340
  br i1 %220, label %221, label %223, !dbg !3343

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !3340
  store i8 48, ptr %222, align 1, !dbg !3340, !tbaa !1161
  br label %223, !dbg !3340

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !3343
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !3114, metadata !DIExpression()), !dbg !3174
  br label %465, !dbg !3344

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !3345

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !3346

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !3347

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !3349

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !3351
  %231 = icmp ult i64 %230, %171, !dbg !3352
  br i1 %231, label %232, label %465, !dbg !3353

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !3354
  %234 = load i8, ptr %233, align 1, !dbg !3354, !tbaa !1161
  %235 = icmp eq i8 %234, 63, !dbg !3355
  br i1 %235, label %236, label %465, !dbg !3356

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !3357
  %238 = load i8, ptr %237, align 1, !dbg !3357, !tbaa !1161
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
  ], !dbg !3358

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !3359

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !3136, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !3129, metadata !DIExpression()), !dbg !3271
  %241 = icmp ult i64 %140, %146, !dbg !3361
  br i1 %241, label %242, label %244, !dbg !3364

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3361
  store i8 63, ptr %243, align 1, !dbg !3361, !tbaa !1161
  br label %244, !dbg !3361

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !3364
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !3114, metadata !DIExpression()), !dbg !3174
  %246 = icmp ult i64 %245, %146, !dbg !3365
  br i1 %246, label %247, label %249, !dbg !3368

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !3365
  store i8 34, ptr %248, align 1, !dbg !3365, !tbaa !1161
  br label %249, !dbg !3365

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !3368
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !3114, metadata !DIExpression()), !dbg !3174
  %251 = icmp ult i64 %250, %146, !dbg !3369
  br i1 %251, label %252, label %254, !dbg !3372

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !3369
  store i8 34, ptr %253, align 1, !dbg !3369, !tbaa !1161
  br label %254, !dbg !3369

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !3372
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !3114, metadata !DIExpression()), !dbg !3174
  %256 = icmp ult i64 %255, %146, !dbg !3373
  br i1 %256, label %257, label %259, !dbg !3376

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !3373
  store i8 63, ptr %258, align 1, !dbg !3373, !tbaa !1161
  br label %259, !dbg !3373

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !3376
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !3114, metadata !DIExpression()), !dbg !3174
  br label %465, !dbg !3377

261:                                              ; preds = %170
  br label %272, !dbg !3378

262:                                              ; preds = %170
  br label %272, !dbg !3379

263:                                              ; preds = %170
  br label %270, !dbg !3380

264:                                              ; preds = %170
  br label %270, !dbg !3381

265:                                              ; preds = %170
  br label %272, !dbg !3382

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !3383

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !3384

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !3387

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !3389

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !3390
  call void @llvm.dbg.label(metadata !3137), !dbg !3391
  br i1 %133, label %272, label %655, !dbg !3392

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !3390
  call void @llvm.dbg.label(metadata !3140), !dbg !3394
  br i1 %124, label %520, label %476, !dbg !3395

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !3396

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !3397, !tbaa !1161
  %277 = icmp eq i8 %276, 0, !dbg !3399
  br i1 %277, label %278, label %465, !dbg !3400

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !3401
  br i1 %279, label %280, label %465, !dbg !3403

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3135, metadata !DIExpression()), !dbg !3281
  br label %281, !dbg !3404

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !3135, metadata !DIExpression()), !dbg !3281
  br i1 %133, label %465, label %655, !dbg !3405

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3120, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3135, metadata !DIExpression()), !dbg !3281
  br i1 %132, label %284, label %465, !dbg !3407

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !3408

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !3411
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !3413
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !3413
  %290 = select i1 %288, i64 %146, i64 0, !dbg !3413
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !3105, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !3115, metadata !DIExpression()), !dbg !3174
  %291 = icmp ult i64 %140, %290, !dbg !3414
  br i1 %291, label %292, label %294, !dbg !3417

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3414
  store i8 39, ptr %293, align 1, !dbg !3414, !tbaa !1161
  br label %294, !dbg !3414

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !3417
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !3114, metadata !DIExpression()), !dbg !3174
  %296 = icmp ult i64 %295, %290, !dbg !3418
  br i1 %296, label %297, label %299, !dbg !3421

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !3418
  store i8 92, ptr %298, align 1, !dbg !3418, !tbaa !1161
  br label %299, !dbg !3418

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !3421
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !3114, metadata !DIExpression()), !dbg !3174
  %301 = icmp ult i64 %300, %290, !dbg !3422
  br i1 %301, label %302, label %304, !dbg !3425

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !3422
  store i8 39, ptr %303, align 1, !dbg !3422, !tbaa !1161
  br label %304, !dbg !3422

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !3425
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !3114, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3123, metadata !DIExpression()), !dbg !3174
  br label %465, !dbg !3426

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !3427

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3141, metadata !DIExpression()), !dbg !3428
  %308 = tail call ptr @__ctype_b_loc() #44, !dbg !3429
  %309 = load ptr, ptr %308, align 8, !dbg !3429, !tbaa !1069
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !3429
  %312 = load i16, ptr %311, align 2, !dbg !3429, !tbaa !1193
  %313 = and i16 %312, 16384, !dbg !3431
  %314 = icmp ne i16 %313, 0, !dbg !3431
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !3143, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3428
  br label %355, !dbg !3432

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #41, !dbg !3433
  call void @llvm.dbg.value(metadata ptr %14, metadata !3204, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata ptr %14, metadata !3212, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i32 0, metadata !3215, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 8, metadata !3216, metadata !DIExpression()), !dbg !3436
  store i64 0, ptr %14, align 8, !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3141, metadata !DIExpression()), !dbg !3428
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3143, metadata !DIExpression()), !dbg !3428
  %316 = icmp eq i64 %171, -1, !dbg !3439
  br i1 %316, label %317, label %319, !dbg !3441

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !3442
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !3107, metadata !DIExpression()), !dbg !3174
  br label %319, !dbg !3443

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !3107, metadata !DIExpression()), !dbg !3174
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #41, !dbg !3444
  %321 = sub i64 %320, %145, !dbg !3445
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #41, !dbg !3446
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !3151, metadata !DIExpression()), !dbg !3173
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !3447

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3141, metadata !DIExpression()), !dbg !3428
  %324 = icmp ult i64 %145, %320, !dbg !3448
  br i1 %324, label %326, label %351, !dbg !3450

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3143, metadata !DIExpression()), !dbg !3428
  br label %351, !dbg !3451

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !3141, metadata !DIExpression()), !dbg !3428
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !3453
  %330 = load i8, ptr %329, align 1, !dbg !3453, !tbaa !1161
  %331 = icmp eq i8 %330, 0, !dbg !3450
  br i1 %331, label %351, label %332, !dbg !3454

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !3455
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !3141, metadata !DIExpression()), !dbg !3428
  %334 = add i64 %333, %145, !dbg !3456
  %335 = icmp eq i64 %333, %321, !dbg !3448
  br i1 %335, label %351, label %326, !dbg !3450, !llvm.loop !3457

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3152, metadata !DIExpression()), !dbg !3458
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !3459
  %339 = and i1 %338, %132, !dbg !3459
  br i1 %339, label %340, label %347, !dbg !3459

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !3152, metadata !DIExpression()), !dbg !3458
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !3460
  %343 = load i8, ptr %342, align 1, !dbg !3460, !tbaa !1161
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !3462

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !3463
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !3152, metadata !DIExpression()), !dbg !3458
  %346 = icmp eq i64 %345, %322, !dbg !3464
  br i1 %346, label %347, label %340, !dbg !3465, !llvm.loop !3466

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !3468, !tbaa !1152
  call void @llvm.dbg.value(metadata i32 %348, metadata !3470, metadata !DIExpression()), !dbg !3478
  %349 = call i32 @iswprint(i32 noundef %348) #41, !dbg !3480
  %350 = icmp ne i32 %349, 0, !dbg !3481
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3143, metadata !DIExpression()), !dbg !3428
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !3141, metadata !DIExpression()), !dbg !3428
  br label %351, !dbg !3482

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3143, metadata !DIExpression()), !dbg !3428
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !3141, metadata !DIExpression()), !dbg !3428
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3483
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3484
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3143, metadata !DIExpression()), !dbg !3428
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3141, metadata !DIExpression()), !dbg !3428
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3483
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3484
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !3281
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !3485
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !3485
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3143, metadata !DIExpression()), !dbg !3428
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !3141, metadata !DIExpression()), !dbg !3428
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !3107, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !3135, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3281
  %359 = icmp ult i64 %357, 2, !dbg !3486
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !3487
  br i1 %361, label %461, label %362, !dbg !3487

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !3160, metadata !DIExpression()), !dbg !3489
  br label %364, !dbg !3490

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !3174
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !3273
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !3271
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !3281
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !3491
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !3136, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !3134, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !3131, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !3129, metadata !DIExpression()), !dbg !3271
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !3123, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !3114, metadata !DIExpression()), !dbg !3174
  br i1 %360, label %417, label %371, !dbg !3492

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !3497

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3134, metadata !DIExpression()), !dbg !3281
  %373 = and i8 %366, 1, !dbg !3500
  %374 = icmp eq i8 %373, 0, !dbg !3500
  %375 = select i1 %132, i1 %374, i1 false, !dbg !3500
  br i1 %375, label %376, label %392, !dbg !3500

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !3502
  br i1 %377, label %378, label %380, !dbg !3506

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3502
  store i8 39, ptr %379, align 1, !dbg !3502, !tbaa !1161
  br label %380, !dbg !3502

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !3506
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !3114, metadata !DIExpression()), !dbg !3174
  %382 = icmp ult i64 %381, %146, !dbg !3507
  br i1 %382, label %383, label %385, !dbg !3510

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !3507
  store i8 36, ptr %384, align 1, !dbg !3507, !tbaa !1161
  br label %385, !dbg !3507

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !3510
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !3114, metadata !DIExpression()), !dbg !3174
  %387 = icmp ult i64 %386, %146, !dbg !3511
  br i1 %387, label %388, label %390, !dbg !3514

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3511
  store i8 39, ptr %389, align 1, !dbg !3511, !tbaa !1161
  br label %390, !dbg !3511

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !3514
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !3114, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3123, metadata !DIExpression()), !dbg !3174
  br label %392, !dbg !3515

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !3174
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !3123, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !3114, metadata !DIExpression()), !dbg !3174
  %395 = icmp ult i64 %393, %146, !dbg !3516
  br i1 %395, label %396, label %398, !dbg !3519

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !3516
  store i8 92, ptr %397, align 1, !dbg !3516, !tbaa !1161
  br label %398, !dbg !3516

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !3519
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !3114, metadata !DIExpression()), !dbg !3174
  %400 = icmp ult i64 %399, %146, !dbg !3520
  br i1 %400, label %401, label %405, !dbg !3523

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !3520
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !3520
  store i8 %403, ptr %404, align 1, !dbg !3520, !tbaa !1161
  br label %405, !dbg !3520

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !3523
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !3114, metadata !DIExpression()), !dbg !3174
  %407 = icmp ult i64 %406, %146, !dbg !3524
  br i1 %407, label %408, label %413, !dbg !3527

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !3524
  %411 = or disjoint i8 %410, 48, !dbg !3524
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !3524
  store i8 %411, ptr %412, align 1, !dbg !3524, !tbaa !1161
  br label %413, !dbg !3524

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !3527
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !3114, metadata !DIExpression()), !dbg !3174
  %415 = and i8 %370, 7, !dbg !3528
  %416 = or disjoint i8 %415, 48, !dbg !3529
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !3136, metadata !DIExpression()), !dbg !3281
  br label %426, !dbg !3530

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !3531
  %419 = icmp eq i8 %418, 0, !dbg !3531
  br i1 %419, label %426, label %420, !dbg !3533

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !3534
  br i1 %421, label %422, label %424, !dbg !3538

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3534
  store i8 92, ptr %423, align 1, !dbg !3534, !tbaa !1161
  br label %424, !dbg !3534

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !3538
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !3114, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3131, metadata !DIExpression()), !dbg !3281
  br label %426, !dbg !3539

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !3174
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !3273
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !3281
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !3281
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !3136, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !3134, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !3131, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !3123, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !3114, metadata !DIExpression()), !dbg !3174
  %432 = add i64 %367, 1, !dbg !3540
  %433 = icmp ugt i64 %363, %432, !dbg !3542
  br i1 %433, label %434, label %463, !dbg !3543

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !3544
  %436 = icmp ne i8 %435, 0, !dbg !3544
  %437 = and i8 %430, 1, !dbg !3544
  %438 = icmp eq i8 %437, 0, !dbg !3544
  %439 = select i1 %436, i1 %438, i1 false, !dbg !3544
  br i1 %439, label %440, label %451, !dbg !3544

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !3547
  br i1 %441, label %442, label %444, !dbg !3551

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !3547
  store i8 39, ptr %443, align 1, !dbg !3547, !tbaa !1161
  br label %444, !dbg !3547

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !3551
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !3114, metadata !DIExpression()), !dbg !3174
  %446 = icmp ult i64 %445, %146, !dbg !3552
  br i1 %446, label %447, label %449, !dbg !3555

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !3552
  store i8 39, ptr %448, align 1, !dbg !3552, !tbaa !1161
  br label %449, !dbg !3552

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !3555
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !3114, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3123, metadata !DIExpression()), !dbg !3174
  br label %451, !dbg !3556

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !3557
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !3123, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !3114, metadata !DIExpression()), !dbg !3174
  %454 = icmp ult i64 %452, %146, !dbg !3558
  br i1 %454, label %455, label %457, !dbg !3561

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !3558
  store i8 %431, ptr %456, align 1, !dbg !3558, !tbaa !1161
  br label %457, !dbg !3558

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !3114, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !3129, metadata !DIExpression()), !dbg !3271
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !3562
  %460 = load i8, ptr %459, align 1, !dbg !3562, !tbaa !1161
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !3136, metadata !DIExpression()), !dbg !3281
  br label %364, !dbg !3563, !llvm.loop !3564

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !3136, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !3135, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3134, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !3131, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !3129, metadata !DIExpression()), !dbg !3271
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !3123, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !3114, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !3107, metadata !DIExpression()), !dbg !3174
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !3136, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !3135, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !3134, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !3131, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !3129, metadata !DIExpression()), !dbg !3271
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !3123, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !3114, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !3107, metadata !DIExpression()), !dbg !3174
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !3567
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !3174
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !3179
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !3174
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !3174
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !3271
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !3281
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !3281
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !3281
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !3105, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !3136, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !3135, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !3134, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !3131, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !3129, metadata !DIExpression()), !dbg !3271
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !3123, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !3120, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !3115, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !3114, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !3107, metadata !DIExpression()), !dbg !3174
  br i1 %126, label %487, label %476, !dbg !3568

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
  br i1 %137, label %488, label %509, !dbg !3570

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !3571

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
  %499 = lshr i8 %490, 5, !dbg !3572
  %500 = zext nneg i8 %499 to i64, !dbg !3572
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !3573
  %502 = load i32, ptr %501, align 4, !dbg !3573, !tbaa !1152
  %503 = and i8 %490, 31, !dbg !3574
  %504 = zext nneg i8 %503 to i32, !dbg !3574
  %505 = shl nuw i32 1, %504, !dbg !3575
  %506 = and i32 %502, %505, !dbg !3575
  %507 = icmp eq i32 %506, 0, !dbg !3575
  %508 = and i1 %172, %507, !dbg !3576
  br i1 %508, label %558, label %520, !dbg !3576

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
  br i1 %172, label %558, label %520, !dbg !3577

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !3567
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !3174
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !3179
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !3183
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !3273
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !3578
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !3281
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !3281
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !3105, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !3136, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !3135, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !3129, metadata !DIExpression()), !dbg !3271
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !3123, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !3120, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !3115, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !3114, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !3107, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.label(metadata !3163), !dbg !3579
  br i1 %131, label %530, label %659, !dbg !3580

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3134, metadata !DIExpression()), !dbg !3281
  %531 = and i8 %525, 1, !dbg !3582
  %532 = icmp eq i8 %531, 0, !dbg !3582
  %533 = select i1 %132, i1 %532, i1 false, !dbg !3582
  br i1 %533, label %534, label %550, !dbg !3582

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !3584
  br i1 %535, label %536, label %538, !dbg !3588

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3584
  store i8 39, ptr %537, align 1, !dbg !3584, !tbaa !1161
  br label %538, !dbg !3584

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !3588
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !3114, metadata !DIExpression()), !dbg !3174
  %540 = icmp ult i64 %539, %529, !dbg !3589
  br i1 %540, label %541, label %543, !dbg !3592

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !3589
  store i8 36, ptr %542, align 1, !dbg !3589, !tbaa !1161
  br label %543, !dbg !3589

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !3592
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !3114, metadata !DIExpression()), !dbg !3174
  %545 = icmp ult i64 %544, %529, !dbg !3593
  br i1 %545, label %546, label %548, !dbg !3596

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !3593
  store i8 39, ptr %547, align 1, !dbg !3593, !tbaa !1161
  br label %548, !dbg !3593

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !3596
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !3114, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3123, metadata !DIExpression()), !dbg !3174
  br label %550, !dbg !3597

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !3281
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !3123, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !3114, metadata !DIExpression()), !dbg !3174
  %553 = icmp ult i64 %551, %529, !dbg !3598
  br i1 %553, label %554, label %556, !dbg !3601

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !3598
  store i8 92, ptr %555, align 1, !dbg !3598, !tbaa !1161
  br label %556, !dbg !3598

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !3601
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !3105, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !3136, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !3135, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3134, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !3129, metadata !DIExpression()), !dbg !3271
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !3123, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !3120, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !3115, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !3114, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !3107, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.label(metadata !3164), !dbg !3602
  br label %585, !dbg !3603

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !3567
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !3174
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !3179
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !3183
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !3273
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !3578
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !3281
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !3281
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !3606
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !3105, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !3136, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !3135, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !3134, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !3129, metadata !DIExpression()), !dbg !3271
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !3123, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !3120, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !3115, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !3114, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !3107, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.label(metadata !3164), !dbg !3602
  %569 = and i8 %563, 1, !dbg !3603
  %570 = icmp ne i8 %569, 0, !dbg !3603
  %571 = and i8 %565, 1, !dbg !3603
  %572 = icmp eq i8 %571, 0, !dbg !3603
  %573 = select i1 %570, i1 %572, i1 false, !dbg !3603
  br i1 %573, label %574, label %585, !dbg !3603

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !3607
  br i1 %575, label %576, label %578, !dbg !3611

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !3607
  store i8 39, ptr %577, align 1, !dbg !3607, !tbaa !1161
  br label %578, !dbg !3607

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !3611
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !3114, metadata !DIExpression()), !dbg !3174
  %580 = icmp ult i64 %579, %568, !dbg !3612
  br i1 %580, label %581, label %583, !dbg !3615

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !3612
  store i8 39, ptr %582, align 1, !dbg !3612, !tbaa !1161
  br label %583, !dbg !3612

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !3615
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !3114, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3123, metadata !DIExpression()), !dbg !3174
  br label %585, !dbg !3616

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !3281
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !3123, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !3114, metadata !DIExpression()), !dbg !3174
  %595 = icmp ult i64 %593, %586, !dbg !3617
  br i1 %595, label %596, label %598, !dbg !3620

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !3617
  store i8 %587, ptr %597, align 1, !dbg !3617, !tbaa !1161
  br label %598, !dbg !3617

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !3620
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !3114, metadata !DIExpression()), !dbg !3174
  %600 = icmp eq i8 %588, 0, !dbg !3621
  %601 = select i1 %600, i8 0, i8 %143, !dbg !3623
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !3121, metadata !DIExpression()), !dbg !3174
  br label %602, !dbg !3624

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !3567
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !3174
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !3179
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !3183
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !3184
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !3273
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !3578
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !3105, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !3129, metadata !DIExpression()), !dbg !3271
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !3123, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !3121, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !3120, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !3115, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !3114, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !3107, metadata !DIExpression()), !dbg !3174
  %611 = add i64 %609, 1, !dbg !3625
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !3129, metadata !DIExpression()), !dbg !3271
  br label %138, !dbg !3626, !llvm.loop !3627

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !3105, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !3121, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !3120, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !3115, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !3114, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !3107, metadata !DIExpression()), !dbg !3174
  %613 = icmp eq i64 %140, 0, !dbg !3629
  %614 = and i1 %132, %613, !dbg !3631
  %615 = xor i1 %614, true, !dbg !3631
  %616 = select i1 %615, i1 true, i1 %131, !dbg !3631
  br i1 %616, label %617, label %655, !dbg !3631

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !3632
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !3632
  br i1 %621, label %622, label %631, !dbg !3632

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !3634
  %624 = icmp eq i8 %623, 0, !dbg !3634
  br i1 %624, label %627, label %625, !dbg !3637

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !3638
  br label %672, !dbg !3639

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !3640
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !3642
  br i1 %630, label %28, label %631, !dbg !3642

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !3643
  %634 = select i1 %633, i1 %632, i1 false, !dbg !3645
  br i1 %634, label %635, label %650, !dbg !3645

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !3116, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !3114, metadata !DIExpression()), !dbg !3174
  %636 = load i8, ptr %119, align 1, !dbg !3646, !tbaa !1161
  %637 = icmp eq i8 %636, 0, !dbg !3649
  br i1 %637, label %650, label %638, !dbg !3649

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !3116, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !3114, metadata !DIExpression()), !dbg !3174
  %642 = icmp ult i64 %641, %146, !dbg !3650
  br i1 %642, label %643, label %645, !dbg !3653

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !3650
  store i8 %639, ptr %644, align 1, !dbg !3650, !tbaa !1161
  br label %645, !dbg !3650

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !3653
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !3114, metadata !DIExpression()), !dbg !3174
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !3116, metadata !DIExpression()), !dbg !3174
  %648 = load i8, ptr %647, align 1, !dbg !3646, !tbaa !1161
  %649 = icmp eq i8 %648, 0, !dbg !3649
  br i1 %649, label %650, label %638, !dbg !3649, !llvm.loop !3655

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !3254
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !3114, metadata !DIExpression()), !dbg !3174
  %652 = icmp ult i64 %651, %146, !dbg !3657
  br i1 %652, label %653, label %672, !dbg !3659

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !3660
  store i8 0, ptr %654, align 1, !dbg !3661, !tbaa !1161
  br label %672, !dbg !3660

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !3165), !dbg !3662
  %657 = icmp eq i8 %123, 0, !dbg !3663
  %658 = select i1 %657, i32 2, i32 4, !dbg !3663
  br label %666, !dbg !3663

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !3165), !dbg !3662
  %662 = icmp eq i32 %115, 2, !dbg !3665
  %663 = icmp eq i8 %123, 0, !dbg !3663
  %664 = select i1 %663, i32 2, i32 4, !dbg !3663
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !3663
  br label %666, !dbg !3663

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !3108, metadata !DIExpression()), !dbg !3174
  %670 = and i32 %5, -3, !dbg !3666
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !3667
  br label %672, !dbg !3668

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !3669
}

; Function Attrs: nounwind
declare !dbg !3670 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3673 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3676 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3678 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3682, metadata !DIExpression()), !dbg !3685
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3683, metadata !DIExpression()), !dbg !3685
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3684, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata ptr %0, metadata !3686, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i64 %1, metadata !3691, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata ptr null, metadata !3692, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata ptr %2, metadata !3693, metadata !DIExpression()), !dbg !3699
  %4 = icmp eq ptr %2, null, !dbg !3701
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3701
  call void @llvm.dbg.value(metadata ptr %5, metadata !3694, metadata !DIExpression()), !dbg !3699
  %6 = tail call ptr @__errno_location() #44, !dbg !3702
  %7 = load i32, ptr %6, align 4, !dbg !3702, !tbaa !1152
  call void @llvm.dbg.value(metadata i32 %7, metadata !3695, metadata !DIExpression()), !dbg !3699
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3703
  %9 = load i32, ptr %8, align 4, !dbg !3703, !tbaa !3048
  %10 = or i32 %9, 1, !dbg !3704
  call void @llvm.dbg.value(metadata i32 %10, metadata !3696, metadata !DIExpression()), !dbg !3699
  %11 = load i32, ptr %5, align 8, !dbg !3705, !tbaa !2998
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3706
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3707
  %14 = load ptr, ptr %13, align 8, !dbg !3707, !tbaa !3069
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3708
  %16 = load ptr, ptr %15, align 8, !dbg !3708, !tbaa !3072
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3709
  %18 = add i64 %17, 1, !dbg !3710
  call void @llvm.dbg.value(metadata i64 %18, metadata !3697, metadata !DIExpression()), !dbg !3699
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !3711
  call void @llvm.dbg.value(metadata ptr %19, metadata !3698, metadata !DIExpression()), !dbg !3699
  %20 = load i32, ptr %5, align 8, !dbg !3712, !tbaa !2998
  %21 = load ptr, ptr %13, align 8, !dbg !3713, !tbaa !3069
  %22 = load ptr, ptr %15, align 8, !dbg !3714, !tbaa !3072
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3715
  store i32 %7, ptr %6, align 4, !dbg !3716, !tbaa !1152
  ret ptr %19, !dbg !3717
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3687 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3686, metadata !DIExpression()), !dbg !3718
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3691, metadata !DIExpression()), !dbg !3718
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3692, metadata !DIExpression()), !dbg !3718
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3693, metadata !DIExpression()), !dbg !3718
  %5 = icmp eq ptr %3, null, !dbg !3719
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3719
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3694, metadata !DIExpression()), !dbg !3718
  %7 = tail call ptr @__errno_location() #44, !dbg !3720
  %8 = load i32, ptr %7, align 4, !dbg !3720, !tbaa !1152
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3695, metadata !DIExpression()), !dbg !3718
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3721
  %10 = load i32, ptr %9, align 4, !dbg !3721, !tbaa !3048
  %11 = icmp eq ptr %2, null, !dbg !3722
  %12 = zext i1 %11 to i32, !dbg !3722
  %13 = or i32 %10, %12, !dbg !3723
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3696, metadata !DIExpression()), !dbg !3718
  %14 = load i32, ptr %6, align 8, !dbg !3724, !tbaa !2998
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3725
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3726
  %17 = load ptr, ptr %16, align 8, !dbg !3726, !tbaa !3069
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3727
  %19 = load ptr, ptr %18, align 8, !dbg !3727, !tbaa !3072
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3728
  %21 = add i64 %20, 1, !dbg !3729
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3697, metadata !DIExpression()), !dbg !3718
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !3730
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3698, metadata !DIExpression()), !dbg !3718
  %23 = load i32, ptr %6, align 8, !dbg !3731, !tbaa !2998
  %24 = load ptr, ptr %16, align 8, !dbg !3732, !tbaa !3069
  %25 = load ptr, ptr %18, align 8, !dbg !3733, !tbaa !3072
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3734
  store i32 %8, ptr %7, align 4, !dbg !3735, !tbaa !1152
  br i1 %11, label %28, label %27, !dbg !3736

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3737, !tbaa !1354
  br label %28, !dbg !3739

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3740
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3741 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3746, !tbaa !1069
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3743, metadata !DIExpression()), !dbg !3747
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3744, metadata !DIExpression()), !dbg !3748
  %2 = load i32, ptr @nslots, align 4, !tbaa !1152
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3744, metadata !DIExpression()), !dbg !3748
  %3 = icmp sgt i32 %2, 1, !dbg !3749
  br i1 %3, label %4, label %6, !dbg !3751

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3749
  br label %10, !dbg !3751

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3752
  %8 = load ptr, ptr %7, align 8, !dbg !3752, !tbaa !3754
  %9 = icmp eq ptr %8, @slot0, !dbg !3756
  br i1 %9, label %17, label %16, !dbg !3757

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3744, metadata !DIExpression()), !dbg !3748
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3758
  %13 = load ptr, ptr %12, align 8, !dbg !3758, !tbaa !3754
  tail call void @free(ptr noundef %13) #41, !dbg !3759
  %14 = add nuw nsw i64 %11, 1, !dbg !3760
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3744, metadata !DIExpression()), !dbg !3748
  %15 = icmp eq i64 %14, %5, !dbg !3749
  br i1 %15, label %6, label %10, !dbg !3751, !llvm.loop !3761

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #41, !dbg !3763
  store i64 256, ptr @slotvec0, align 8, !dbg !3765, !tbaa !3766
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3767, !tbaa !3754
  br label %17, !dbg !3768

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3769
  br i1 %18, label %20, label %19, !dbg !3771

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #41, !dbg !3772
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3774, !tbaa !1069
  br label %20, !dbg !3775

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3776, !tbaa !1152
  ret void, !dbg !3777
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3778 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3780, metadata !DIExpression()), !dbg !3782
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3781, metadata !DIExpression()), !dbg !3782
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3783
  ret ptr %3, !dbg !3784
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3785 {
  %5 = alloca i64, align 8, !DIAssignID !3805
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3799, metadata !DIExpression(), metadata !3805, metadata ptr %5, metadata !DIExpression()), !dbg !3806
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3789, metadata !DIExpression()), !dbg !3807
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3790, metadata !DIExpression()), !dbg !3807
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3791, metadata !DIExpression()), !dbg !3807
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3792, metadata !DIExpression()), !dbg !3807
  %6 = tail call ptr @__errno_location() #44, !dbg !3808
  %7 = load i32, ptr %6, align 4, !dbg !3808, !tbaa !1152
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3793, metadata !DIExpression()), !dbg !3807
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3809, !tbaa !1069
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3794, metadata !DIExpression()), !dbg !3807
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3795, metadata !DIExpression()), !dbg !3807
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3810
  br i1 %9, label %10, label %11, !dbg !3810

10:                                               ; preds = %4
  tail call void @abort() #43, !dbg !3812
  unreachable, !dbg !3812

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3813, !tbaa !1152
  %13 = icmp sgt i32 %12, %0, !dbg !3814
  br i1 %13, label %32, label %14, !dbg !3815

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3816
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3796, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3806
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #41, !dbg !3817
  %16 = sext i32 %12 to i64, !dbg !3818
  store i64 %16, ptr %5, align 8, !dbg !3819, !tbaa !1354, !DIAssignID !3820
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3799, metadata !DIExpression(), metadata !3820, metadata ptr %5, metadata !DIExpression()), !dbg !3806
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3821
  %18 = add nuw nsw i32 %0, 1, !dbg !3822
  %19 = sub i32 %18, %12, !dbg !3823
  %20 = sext i32 %19 to i64, !dbg !3824
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !3825
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3794, metadata !DIExpression()), !dbg !3807
  store ptr %21, ptr @slotvec, align 8, !dbg !3826, !tbaa !1069
  br i1 %15, label %22, label %23, !dbg !3827

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3828, !tbaa.struct !3830
  br label %23, !dbg !3831

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3832, !tbaa !1152
  %25 = sext i32 %24 to i64, !dbg !3833
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3833
  %27 = load i64, ptr %5, align 8, !dbg !3834, !tbaa !1354
  %28 = sub nsw i64 %27, %25, !dbg !3835
  %29 = shl i64 %28, 4, !dbg !3836
  call void @llvm.dbg.value(metadata ptr %26, metadata !3212, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i32 0, metadata !3215, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i64 %29, metadata !3216, metadata !DIExpression()), !dbg !3837
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #41, !dbg !3839
  %30 = load i64, ptr %5, align 8, !dbg !3840, !tbaa !1354
  %31 = trunc i64 %30 to i32, !dbg !3840
  store i32 %31, ptr @nslots, align 4, !dbg !3841, !tbaa !1152
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #41, !dbg !3842
  br label %32, !dbg !3843

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3807
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3794, metadata !DIExpression()), !dbg !3807
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3844
  %36 = load i64, ptr %35, align 8, !dbg !3845, !tbaa !3766
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3800, metadata !DIExpression()), !dbg !3846
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3847
  %38 = load ptr, ptr %37, align 8, !dbg !3847, !tbaa !3754
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3802, metadata !DIExpression()), !dbg !3846
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3848
  %40 = load i32, ptr %39, align 4, !dbg !3848, !tbaa !3048
  %41 = or i32 %40, 1, !dbg !3849
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3803, metadata !DIExpression()), !dbg !3846
  %42 = load i32, ptr %3, align 8, !dbg !3850, !tbaa !2998
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3851
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3852
  %45 = load ptr, ptr %44, align 8, !dbg !3852, !tbaa !3069
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3853
  %47 = load ptr, ptr %46, align 8, !dbg !3853, !tbaa !3072
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3854
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3804, metadata !DIExpression()), !dbg !3846
  %49 = icmp ugt i64 %36, %48, !dbg !3855
  br i1 %49, label %60, label %50, !dbg !3857

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3858
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3800, metadata !DIExpression()), !dbg !3846
  store i64 %51, ptr %35, align 8, !dbg !3860, !tbaa !3766
  %52 = icmp eq ptr %38, @slot0, !dbg !3861
  br i1 %52, label %54, label %53, !dbg !3863

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #41, !dbg !3864
  br label %54, !dbg !3864

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !3865
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3802, metadata !DIExpression()), !dbg !3846
  store ptr %55, ptr %37, align 8, !dbg !3866, !tbaa !3754
  %56 = load i32, ptr %3, align 8, !dbg !3867, !tbaa !2998
  %57 = load ptr, ptr %44, align 8, !dbg !3868, !tbaa !3069
  %58 = load ptr, ptr %46, align 8, !dbg !3869, !tbaa !3072
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3870
  br label %60, !dbg !3871

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3846
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3802, metadata !DIExpression()), !dbg !3846
  store i32 %7, ptr %6, align 4, !dbg !3872, !tbaa !1152
  ret ptr %61, !dbg !3873
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3874 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3878, metadata !DIExpression()), !dbg !3881
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3879, metadata !DIExpression()), !dbg !3881
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3880, metadata !DIExpression()), !dbg !3881
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3882
  ret ptr %4, !dbg !3883
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3884 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3886, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata i32 0, metadata !3780, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata ptr %0, metadata !3781, metadata !DIExpression()), !dbg !3888
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3890
  ret ptr %2, !dbg !3891
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3892 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3896, metadata !DIExpression()), !dbg !3898
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3897, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i32 0, metadata !3878, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata ptr %0, metadata !3879, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i64 %1, metadata !3880, metadata !DIExpression()), !dbg !3899
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3901
  ret ptr %3, !dbg !3902
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3903 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3911
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3910, metadata !DIExpression(), metadata !3911, metadata ptr %4, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3907, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3908, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3909, metadata !DIExpression()), !dbg !3912
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3913
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3914), !dbg !3917
  call void @llvm.dbg.value(metadata i32 %1, metadata !3918, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3923, metadata !DIExpression()), !dbg !3926
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3926, !alias.scope !3914, !DIAssignID !3927
  call void @llvm.dbg.assign(metadata i8 0, metadata !3910, metadata !DIExpression(), metadata !3927, metadata ptr %4, metadata !DIExpression()), !dbg !3912
  %5 = icmp eq i32 %1, 10, !dbg !3928
  br i1 %5, label %6, label %7, !dbg !3930

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3931, !noalias !3914
  unreachable, !dbg !3931

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3932, !tbaa !2998, !alias.scope !3914, !DIAssignID !3933
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3910, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3933, metadata ptr %4, metadata !DIExpression()), !dbg !3912
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3934
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3935
  ret ptr %8, !dbg !3936
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3937 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3946
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3945, metadata !DIExpression(), metadata !3946, metadata ptr %5, metadata !DIExpression()), !dbg !3947
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3941, metadata !DIExpression()), !dbg !3947
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3942, metadata !DIExpression()), !dbg !3947
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3943, metadata !DIExpression()), !dbg !3947
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3944, metadata !DIExpression()), !dbg !3947
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3948
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3949), !dbg !3952
  call void @llvm.dbg.value(metadata i32 %1, metadata !3918, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3923, metadata !DIExpression()), !dbg !3955
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3955, !alias.scope !3949, !DIAssignID !3956
  call void @llvm.dbg.assign(metadata i8 0, metadata !3945, metadata !DIExpression(), metadata !3956, metadata ptr %5, metadata !DIExpression()), !dbg !3947
  %6 = icmp eq i32 %1, 10, !dbg !3957
  br i1 %6, label %7, label %8, !dbg !3958

7:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3959, !noalias !3949
  unreachable, !dbg !3959

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3960, !tbaa !2998, !alias.scope !3949, !DIAssignID !3961
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3945, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3961, metadata ptr %5, metadata !DIExpression()), !dbg !3947
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3962
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3963
  ret ptr %9, !dbg !3964
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3965 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3971
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3969, metadata !DIExpression()), !dbg !3972
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3970, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3910, metadata !DIExpression(), metadata !3971, metadata ptr %3, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i32 0, metadata !3907, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i32 %0, metadata !3908, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata ptr %1, metadata !3909, metadata !DIExpression()), !dbg !3973
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3975
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3976), !dbg !3979
  call void @llvm.dbg.value(metadata i32 %0, metadata !3918, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3923, metadata !DIExpression()), !dbg !3982
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3982, !alias.scope !3976, !DIAssignID !3983
  call void @llvm.dbg.assign(metadata i8 0, metadata !3910, metadata !DIExpression(), metadata !3983, metadata ptr %3, metadata !DIExpression()), !dbg !3973
  %4 = icmp eq i32 %0, 10, !dbg !3984
  br i1 %4, label %5, label %6, !dbg !3985

5:                                                ; preds = %2
  tail call void @abort() #43, !dbg !3986, !noalias !3976
  unreachable, !dbg !3986

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3987, !tbaa !2998, !alias.scope !3976, !DIAssignID !3988
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3910, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3988, metadata ptr %3, metadata !DIExpression()), !dbg !3973
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3989
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3990
  ret ptr %7, !dbg !3991
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3992 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3999
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3996, metadata !DIExpression()), !dbg !4000
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3997, metadata !DIExpression()), !dbg !4000
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3998, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3945, metadata !DIExpression(), metadata !3999, metadata ptr %4, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i32 0, metadata !3941, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i32 %0, metadata !3942, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata ptr %1, metadata !3943, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 %2, metadata !3944, metadata !DIExpression()), !dbg !4001
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !4003
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4004), !dbg !4007
  call void @llvm.dbg.value(metadata i32 %0, metadata !3918, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3923, metadata !DIExpression()), !dbg !4010
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !4010, !alias.scope !4004, !DIAssignID !4011
  call void @llvm.dbg.assign(metadata i8 0, metadata !3945, metadata !DIExpression(), metadata !4011, metadata ptr %4, metadata !DIExpression()), !dbg !4001
  %5 = icmp eq i32 %0, 10, !dbg !4012
  br i1 %5, label %6, label %7, !dbg !4013

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !4014, !noalias !4004
  unreachable, !dbg !4014

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !4015, !tbaa !2998, !alias.scope !4004, !DIAssignID !4016
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3945, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4016, metadata ptr %4, metadata !DIExpression()), !dbg !4001
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !4017
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !4018
  ret ptr %8, !dbg !4019
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !4020 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4028
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4027, metadata !DIExpression(), metadata !4028, metadata ptr %4, metadata !DIExpression()), !dbg !4029
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4024, metadata !DIExpression()), !dbg !4029
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4025, metadata !DIExpression()), !dbg !4029
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !4026, metadata !DIExpression()), !dbg !4029
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !4030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4031, !tbaa.struct !4032, !DIAssignID !4033
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4027, metadata !DIExpression(), metadata !4033, metadata ptr %4, metadata !DIExpression()), !dbg !4029
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3015, metadata !DIExpression()), !dbg !4034
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3016, metadata !DIExpression()), !dbg !4034
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3017, metadata !DIExpression()), !dbg !4034
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3018, metadata !DIExpression()), !dbg !4034
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !4036
  %6 = lshr i8 %2, 5, !dbg !4037
  %7 = zext nneg i8 %6 to i64, !dbg !4037
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !4038
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3019, metadata !DIExpression()), !dbg !4034
  %9 = and i8 %2, 31, !dbg !4039
  %10 = zext nneg i8 %9 to i32, !dbg !4039
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !3021, metadata !DIExpression()), !dbg !4034
  %11 = load i32, ptr %8, align 4, !dbg !4040, !tbaa !1152
  %12 = lshr i32 %11, %10, !dbg !4041
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !3022, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4034
  %13 = and i32 %12, 1, !dbg !4042
  %14 = xor i32 %13, 1, !dbg !4042
  %15 = shl nuw i32 %14, %10, !dbg !4043
  %16 = xor i32 %15, %11, !dbg !4044
  store i32 %16, ptr %8, align 4, !dbg !4044, !tbaa !1152
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !4045
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !4046
  ret ptr %17, !dbg !4047
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !4048 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !4054
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4052, metadata !DIExpression()), !dbg !4055
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !4053, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4027, metadata !DIExpression(), metadata !4054, metadata ptr %3, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata ptr %0, metadata !4024, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i64 -1, metadata !4025, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i8 %1, metadata !4026, metadata !DIExpression()), !dbg !4056
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !4058
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4059, !tbaa.struct !4032, !DIAssignID !4060
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4027, metadata !DIExpression(), metadata !4060, metadata ptr %3, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata ptr %3, metadata !3015, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i8 %1, metadata !3016, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i32 1, metadata !3017, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i8 %1, metadata !3018, metadata !DIExpression()), !dbg !4061
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !4063
  %5 = lshr i8 %1, 5, !dbg !4064
  %6 = zext nneg i8 %5 to i64, !dbg !4064
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !4065
  call void @llvm.dbg.value(metadata ptr %7, metadata !3019, metadata !DIExpression()), !dbg !4061
  %8 = and i8 %1, 31, !dbg !4066
  %9 = zext nneg i8 %8 to i32, !dbg !4066
  call void @llvm.dbg.value(metadata i32 %9, metadata !3021, metadata !DIExpression()), !dbg !4061
  %10 = load i32, ptr %7, align 4, !dbg !4067, !tbaa !1152
  %11 = lshr i32 %10, %9, !dbg !4068
  call void @llvm.dbg.value(metadata i32 %11, metadata !3022, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4061
  %12 = and i32 %11, 1, !dbg !4069
  %13 = xor i32 %12, 1, !dbg !4069
  %14 = shl nuw i32 %13, %9, !dbg !4070
  %15 = xor i32 %14, %10, !dbg !4071
  store i32 %15, ptr %7, align 4, !dbg !4071, !tbaa !1152
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !4072
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !4073
  ret ptr %16, !dbg !4074
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !4075 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !4078
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4077, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata ptr %0, metadata !4052, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i8 58, metadata !4053, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4027, metadata !DIExpression(), metadata !4078, metadata ptr %2, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata ptr %0, metadata !4024, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i64 -1, metadata !4025, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i8 58, metadata !4026, metadata !DIExpression()), !dbg !4082
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #41, !dbg !4084
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4085, !tbaa.struct !4032, !DIAssignID !4086
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4027, metadata !DIExpression(), metadata !4086, metadata ptr %2, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata ptr %2, metadata !3015, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i8 58, metadata !3016, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 1, metadata !3017, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i8 58, metadata !3018, metadata !DIExpression()), !dbg !4087
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !4089
  call void @llvm.dbg.value(metadata ptr %3, metadata !3019, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 26, metadata !3021, metadata !DIExpression()), !dbg !4087
  %4 = load i32, ptr %3, align 4, !dbg !4090, !tbaa !1152
  call void @llvm.dbg.value(metadata i32 %4, metadata !3022, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4087
  %5 = or i32 %4, 67108864, !dbg !4091
  store i32 %5, ptr %3, align 4, !dbg !4091, !tbaa !1152
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !4092
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #41, !dbg !4093
  ret ptr %6, !dbg !4094
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4095 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !4099
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4097, metadata !DIExpression()), !dbg !4100
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4098, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4027, metadata !DIExpression(), metadata !4099, metadata ptr %3, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr %0, metadata !4024, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i64 %1, metadata !4025, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i8 58, metadata !4026, metadata !DIExpression()), !dbg !4101
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !4103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4104, !tbaa.struct !4032, !DIAssignID !4105
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4027, metadata !DIExpression(), metadata !4105, metadata ptr %3, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr %3, metadata !3015, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i8 58, metadata !3016, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i32 1, metadata !3017, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i8 58, metadata !3018, metadata !DIExpression()), !dbg !4106
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !4108
  call void @llvm.dbg.value(metadata ptr %4, metadata !3019, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i32 26, metadata !3021, metadata !DIExpression()), !dbg !4106
  %5 = load i32, ptr %4, align 4, !dbg !4109, !tbaa !1152
  call void @llvm.dbg.value(metadata i32 %5, metadata !3022, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4106
  %6 = or i32 %5, 67108864, !dbg !4110
  store i32 %6, ptr %4, align 4, !dbg !4110, !tbaa !1152
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !4111
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !4112
  ret ptr %7, !dbg !4113
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4114 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4120
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4119, metadata !DIExpression(), metadata !4120, metadata ptr %4, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3923, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4122
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4116, metadata !DIExpression()), !dbg !4121
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4117, metadata !DIExpression()), !dbg !4121
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4118, metadata !DIExpression()), !dbg !4121
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !4124
  call void @llvm.dbg.value(metadata i32 %1, metadata !3918, metadata !DIExpression()), !dbg !4125
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3923, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4125
  %5 = icmp eq i32 %1, 10, !dbg !4126
  br i1 %5, label %6, label %7, !dbg !4127

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !4128, !noalias !4129
  unreachable, !dbg !4128

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3923, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4125
  store i32 %1, ptr %4, align 8, !dbg !4132, !tbaa.struct !4032, !DIAssignID !4133
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !4132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !4132
  call void @llvm.dbg.assign(metadata i32 %1, metadata !4119, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4133, metadata ptr %4, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4119, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !4134, metadata ptr %8, metadata !DIExpression()), !dbg !4121
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3015, metadata !DIExpression()), !dbg !4135
  tail call void @llvm.dbg.value(metadata i8 58, metadata !3016, metadata !DIExpression()), !dbg !4135
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3017, metadata !DIExpression()), !dbg !4135
  tail call void @llvm.dbg.value(metadata i8 58, metadata !3018, metadata !DIExpression()), !dbg !4135
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !4137
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3019, metadata !DIExpression()), !dbg !4135
  tail call void @llvm.dbg.value(metadata i32 26, metadata !3021, metadata !DIExpression()), !dbg !4135
  %10 = load i32, ptr %9, align 4, !dbg !4138, !tbaa !1152
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !3022, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4135
  %11 = or i32 %10, 67108864, !dbg !4139
  store i32 %11, ptr %9, align 4, !dbg !4139, !tbaa !1152, !DIAssignID !4140
  call void @llvm.dbg.assign(metadata i32 %11, metadata !4119, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !4140, metadata ptr %9, metadata !DIExpression()), !dbg !4121
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4141
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !4142
  ret ptr %12, !dbg !4143
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4144 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4152
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4148, metadata !DIExpression()), !dbg !4153
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4149, metadata !DIExpression()), !dbg !4153
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4150, metadata !DIExpression()), !dbg !4153
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4151, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4154, metadata !DIExpression(), metadata !4152, metadata ptr %5, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i32 %0, metadata !4159, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata ptr %1, metadata !4160, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata ptr %2, metadata !4161, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata ptr %3, metadata !4162, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i64 -1, metadata !4163, metadata !DIExpression()), !dbg !4164
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !4166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4167, !tbaa.struct !4032, !DIAssignID !4168
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4154, metadata !DIExpression(), metadata !4168, metadata ptr %5, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4154, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4169, metadata ptr undef, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata ptr %5, metadata !3055, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata ptr %1, metadata !3056, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata ptr %2, metadata !3057, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata ptr %5, metadata !3055, metadata !DIExpression()), !dbg !4170
  store i32 10, ptr %5, align 8, !dbg !4172, !tbaa !2998, !DIAssignID !4173
  call void @llvm.dbg.assign(metadata i32 10, metadata !4154, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4173, metadata ptr %5, metadata !DIExpression()), !dbg !4164
  %6 = icmp ne ptr %1, null, !dbg !4174
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4175
  br i1 %8, label %10, label %9, !dbg !4175

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !4176
  unreachable, !dbg !4176

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4177
  store ptr %1, ptr %11, align 8, !dbg !4178, !tbaa !3069, !DIAssignID !4179
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4154, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4179, metadata ptr %11, metadata !DIExpression()), !dbg !4164
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4180
  store ptr %2, ptr %12, align 8, !dbg !4181, !tbaa !3072, !DIAssignID !4182
  call void @llvm.dbg.assign(metadata ptr %2, metadata !4154, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4182, metadata ptr %12, metadata !DIExpression()), !dbg !4164
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4183
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !4184
  ret ptr %13, !dbg !4185
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4155 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !4186
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4154, metadata !DIExpression(), metadata !4186, metadata ptr %6, metadata !DIExpression()), !dbg !4187
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4159, metadata !DIExpression()), !dbg !4187
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4160, metadata !DIExpression()), !dbg !4187
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4161, metadata !DIExpression()), !dbg !4187
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4162, metadata !DIExpression()), !dbg !4187
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !4163, metadata !DIExpression()), !dbg !4187
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #41, !dbg !4188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4189, !tbaa.struct !4032, !DIAssignID !4190
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4154, metadata !DIExpression(), metadata !4190, metadata ptr %6, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4154, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4191, metadata ptr undef, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata ptr %6, metadata !3055, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata ptr %1, metadata !3056, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata ptr %2, metadata !3057, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata ptr %6, metadata !3055, metadata !DIExpression()), !dbg !4192
  store i32 10, ptr %6, align 8, !dbg !4194, !tbaa !2998, !DIAssignID !4195
  call void @llvm.dbg.assign(metadata i32 10, metadata !4154, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4195, metadata ptr %6, metadata !DIExpression()), !dbg !4187
  %7 = icmp ne ptr %1, null, !dbg !4196
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4197
  br i1 %9, label %11, label %10, !dbg !4197

10:                                               ; preds = %5
  tail call void @abort() #43, !dbg !4198
  unreachable, !dbg !4198

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4199
  store ptr %1, ptr %12, align 8, !dbg !4200, !tbaa !3069, !DIAssignID !4201
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4154, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4201, metadata ptr %12, metadata !DIExpression()), !dbg !4187
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4202
  store ptr %2, ptr %13, align 8, !dbg !4203, !tbaa !3072, !DIAssignID !4204
  call void @llvm.dbg.assign(metadata ptr %2, metadata !4154, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4204, metadata ptr %13, metadata !DIExpression()), !dbg !4187
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4205
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #41, !dbg !4206
  ret ptr %14, !dbg !4207
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4208 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4215
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4212, metadata !DIExpression()), !dbg !4216
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4213, metadata !DIExpression()), !dbg !4216
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4214, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.value(metadata i32 0, metadata !4148, metadata !DIExpression()), !dbg !4217
  call void @llvm.dbg.value(metadata ptr %0, metadata !4149, metadata !DIExpression()), !dbg !4217
  call void @llvm.dbg.value(metadata ptr %1, metadata !4150, metadata !DIExpression()), !dbg !4217
  call void @llvm.dbg.value(metadata ptr %2, metadata !4151, metadata !DIExpression()), !dbg !4217
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4154, metadata !DIExpression(), metadata !4215, metadata ptr %4, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i32 0, metadata !4159, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata ptr %0, metadata !4160, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata ptr %1, metadata !4161, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata ptr %2, metadata !4162, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i64 -1, metadata !4163, metadata !DIExpression()), !dbg !4219
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !4221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4222, !tbaa.struct !4032, !DIAssignID !4223
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4154, metadata !DIExpression(), metadata !4223, metadata ptr %4, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4154, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4224, metadata ptr undef, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata ptr %4, metadata !3055, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata ptr %0, metadata !3056, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata ptr %1, metadata !3057, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata ptr %4, metadata !3055, metadata !DIExpression()), !dbg !4225
  store i32 10, ptr %4, align 8, !dbg !4227, !tbaa !2998, !DIAssignID !4228
  call void @llvm.dbg.assign(metadata i32 10, metadata !4154, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4228, metadata ptr %4, metadata !DIExpression()), !dbg !4219
  %5 = icmp ne ptr %0, null, !dbg !4229
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4230
  br i1 %7, label %9, label %8, !dbg !4230

8:                                                ; preds = %3
  tail call void @abort() #43, !dbg !4231
  unreachable, !dbg !4231

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4232
  store ptr %0, ptr %10, align 8, !dbg !4233, !tbaa !3069, !DIAssignID !4234
  call void @llvm.dbg.assign(metadata ptr %0, metadata !4154, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4234, metadata ptr %10, metadata !DIExpression()), !dbg !4219
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4235
  store ptr %1, ptr %11, align 8, !dbg !4236, !tbaa !3072, !DIAssignID !4237
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4154, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4237, metadata ptr %11, metadata !DIExpression()), !dbg !4219
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4238
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !4239
  ret ptr %12, !dbg !4240
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4241 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4249
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4245, metadata !DIExpression()), !dbg !4250
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4246, metadata !DIExpression()), !dbg !4250
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4247, metadata !DIExpression()), !dbg !4250
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4248, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4154, metadata !DIExpression(), metadata !4249, metadata ptr %5, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata i32 0, metadata !4159, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata ptr %0, metadata !4160, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata ptr %1, metadata !4161, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata ptr %2, metadata !4162, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata i64 %3, metadata !4163, metadata !DIExpression()), !dbg !4251
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !4253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4254, !tbaa.struct !4032, !DIAssignID !4255
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4154, metadata !DIExpression(), metadata !4255, metadata ptr %5, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4154, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4256, metadata ptr undef, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata ptr %5, metadata !3055, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata ptr %0, metadata !3056, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata ptr %1, metadata !3057, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata ptr %5, metadata !3055, metadata !DIExpression()), !dbg !4257
  store i32 10, ptr %5, align 8, !dbg !4259, !tbaa !2998, !DIAssignID !4260
  call void @llvm.dbg.assign(metadata i32 10, metadata !4154, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4260, metadata ptr %5, metadata !DIExpression()), !dbg !4251
  %6 = icmp ne ptr %0, null, !dbg !4261
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4262
  br i1 %8, label %10, label %9, !dbg !4262

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !4263
  unreachable, !dbg !4263

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4264
  store ptr %0, ptr %11, align 8, !dbg !4265, !tbaa !3069, !DIAssignID !4266
  call void @llvm.dbg.assign(metadata ptr %0, metadata !4154, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4266, metadata ptr %11, metadata !DIExpression()), !dbg !4251
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4267
  store ptr %1, ptr %12, align 8, !dbg !4268, !tbaa !3072, !DIAssignID !4269
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4154, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4269, metadata ptr %12, metadata !DIExpression()), !dbg !4251
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4270
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !4271
  ret ptr %13, !dbg !4272
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4273 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4277, metadata !DIExpression()), !dbg !4280
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4278, metadata !DIExpression()), !dbg !4280
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4279, metadata !DIExpression()), !dbg !4280
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4281
  ret ptr %4, !dbg !4282
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4283 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4287, metadata !DIExpression()), !dbg !4289
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4288, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i32 0, metadata !4277, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata ptr %0, metadata !4278, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i64 %1, metadata !4279, metadata !DIExpression()), !dbg !4290
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4292
  ret ptr %3, !dbg !4293
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4294 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4298, metadata !DIExpression()), !dbg !4300
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4299, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i32 %0, metadata !4277, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata ptr %1, metadata !4278, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i64 -1, metadata !4279, metadata !DIExpression()), !dbg !4301
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4303
  ret ptr %3, !dbg !4304
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4305 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4307, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i32 0, metadata !4298, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.value(metadata ptr %0, metadata !4299, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.value(metadata i32 0, metadata !4277, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata ptr %0, metadata !4278, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i64 -1, metadata !4279, metadata !DIExpression()), !dbg !4311
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4313
  ret ptr %2, !dbg !4314
}

; Function Attrs: nounwind uwtable
define dso_local i32 @str2sig(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 !dbg !4315 {
  %3 = alloca ptr, align 8, !DIAssignID !4321
  %4 = alloca ptr, align 8, !DIAssignID !4322
  %5 = alloca ptr, align 8, !DIAssignID !4323
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4319, metadata !DIExpression()), !dbg !4324
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4320, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4325, metadata !DIExpression(), metadata !4321, metadata ptr %3, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4338, metadata !DIExpression(), metadata !4322, metadata ptr %4, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4342, metadata !DIExpression(), metadata !4323, metadata ptr %5, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata ptr %0, metadata !4330, metadata !DIExpression()), !dbg !4350
  %6 = load i8, ptr %0, align 1, !dbg !4351, !tbaa !1161
  %7 = sext i8 %6 to i32, !dbg !4351
  %8 = add nsw i32 %7, -48, !dbg !4351
  %9 = icmp ult i32 %8, 10, !dbg !4351
  br i1 %9, label %10, label %21, !dbg !4352

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #41, !dbg !4353
  %11 = call i64 @strtol(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 10) #41, !dbg !4354
  call void @llvm.dbg.value(metadata i64 %11, metadata !4331, metadata !DIExpression()), !dbg !4346
  %12 = load ptr, ptr %3, align 8, !dbg !4355, !tbaa !1069
  %13 = load i8, ptr %12, align 1, !dbg !4357, !tbaa !1161
  %14 = icmp ne i8 %13, 0, !dbg !4357
  %15 = icmp sgt i64 %11, 64
  %16 = select i1 %14, i1 true, i1 %15, !dbg !4358
  %17 = trunc i64 %11 to i32, !dbg !4358
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41, !dbg !4359
  br i1 %16, label %73, label %74

18:                                               ; preds = %21
  %19 = add nuw nsw i64 %22, 1, !dbg !4360
  call void @llvm.dbg.value(metadata i64 %19, metadata !4332, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i64 %19, metadata !4332, metadata !DIExpression()), !dbg !4362
  %20 = icmp eq i64 %19, 35, !dbg !4363
  br i1 %20, label %29, label %21, !dbg !4364, !llvm.loop !4365

21:                                               ; preds = %2, %18
  %22 = phi i64 [ %19, %18 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !4332, metadata !DIExpression()), !dbg !4362
  %23 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %22, i32 1, !dbg !4367
  call void @llvm.dbg.value(metadata ptr %23, metadata !4369, metadata !DIExpression()), !dbg !4373
  call void @llvm.dbg.value(metadata ptr %0, metadata !4372, metadata !DIExpression()), !dbg !4373
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %0) #42, !dbg !4375
  %25 = icmp eq i32 %24, 0, !dbg !4376
  call void @llvm.dbg.value(metadata i64 %22, metadata !4332, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4362
  br i1 %25, label %26, label %18, !dbg !4377

26:                                               ; preds = %21
  %27 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %22, !dbg !4378
  %28 = load i32, ptr %27, align 4, !dbg !4379, !tbaa !4380
  br label %74

29:                                               ; preds = %18
  %30 = tail call i32 @__libc_current_sigrtmin() #41, !dbg !4382
  call void @llvm.dbg.value(metadata i32 %30, metadata !4335, metadata !DIExpression()), !dbg !4383
  %31 = tail call i32 @__libc_current_sigrtmax() #41, !dbg !4384
  call void @llvm.dbg.value(metadata i32 %31, metadata !4337, metadata !DIExpression()), !dbg !4383
  %32 = icmp sgt i32 %30, 0, !dbg !4385
  br i1 %32, label %33, label %52, !dbg !4386

33:                                               ; preds = %29
  %34 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.143, i64 noundef 5) #42, !dbg !4387
  %35 = icmp eq i32 %34, 0, !dbg !4388
  br i1 %35, label %36, label %52, !dbg !4389

36:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #41, !dbg !4390
  %37 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !4391
  %38 = call i64 @strtol(ptr noundef nonnull %37, ptr noundef nonnull %4, i32 noundef 10) #41, !dbg !4392
  call void @llvm.dbg.value(metadata i64 %38, metadata !4341, metadata !DIExpression()), !dbg !4348
  %39 = load ptr, ptr %4, align 8, !dbg !4393, !tbaa !1069
  %40 = load i8, ptr %39, align 1, !dbg !4395, !tbaa !1161
  %41 = icmp eq i8 %40, 0, !dbg !4395
  %42 = icmp sgt i64 %38, -1
  %43 = select i1 %41, i1 %42, i1 false, !dbg !4396
  br i1 %43, label %44, label %48, !dbg !4396

44:                                               ; preds = %36
  %45 = sub nsw i32 %31, %30, !dbg !4397
  %46 = sext i32 %45 to i64, !dbg !4398
  %47 = icmp sgt i64 %38, %46, !dbg !4399
  br i1 %47, label %48, label %49, !dbg !4400

48:                                               ; preds = %44, %36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !4401
  br label %73

49:                                               ; preds = %44
  %50 = trunc i64 %38 to i32, !dbg !4402
  %51 = add nuw i32 %30, %50, !dbg !4402
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !4401
  br label %74

52:                                               ; preds = %33, %29
  %53 = icmp sgt i32 %31, 0, !dbg !4403
  br i1 %53, label %54, label %73, !dbg !4404

54:                                               ; preds = %52
  %55 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.1.144, i64 noundef 5) #42, !dbg !4405
  %56 = icmp eq i32 %55, 0, !dbg !4406
  br i1 %56, label %57, label %73, !dbg !4407

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #41, !dbg !4408
  %58 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !4409
  %59 = call i64 @strtol(ptr noundef nonnull %58, ptr noundef nonnull %5, i32 noundef 10) #41, !dbg !4410
  call void @llvm.dbg.value(metadata i64 %59, metadata !4345, metadata !DIExpression()), !dbg !4349
  %60 = load ptr, ptr %5, align 8, !dbg !4411, !tbaa !1069
  %61 = load i8, ptr %60, align 1, !dbg !4413, !tbaa !1161
  %62 = icmp eq i8 %61, 0, !dbg !4413
  br i1 %62, label %63, label %69, !dbg !4414

63:                                               ; preds = %57
  %64 = sub nsw i32 %30, %31, !dbg !4415
  %65 = sext i32 %64 to i64, !dbg !4416
  %66 = icmp sge i64 %59, %65, !dbg !4417
  %67 = icmp slt i64 %59, 1
  %68 = and i1 %66, %67, !dbg !4418
  br i1 %68, label %70, label %69, !dbg !4418

69:                                               ; preds = %63, %57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #41, !dbg !4419
  br label %73

70:                                               ; preds = %63
  %71 = trunc i64 %59 to i32, !dbg !4420
  %72 = add nsw i32 %31, %71, !dbg !4420
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #41, !dbg !4419
  br label %74

73:                                               ; preds = %69, %54, %52, %48, %10
  br label %74, !dbg !4421

74:                                               ; preds = %10, %26, %49, %70, %73
  %75 = phi i32 [ %17, %10 ], [ -1, %73 ], [ %28, %26 ], [ %51, %49 ], [ %72, %70 ], !dbg !4350
  store i32 %75, ptr %1, align 4, !dbg !4422, !tbaa !1152
  %76 = ashr i32 %75, 31, !dbg !4423
  ret i32 %76, !dbg !4424
}

; Function Attrs: nounwind
declare !dbg !4425 i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4428 i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @sig2str(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4429 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4433, metadata !DIExpression()), !dbg !4442
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4434, metadata !DIExpression()), !dbg !4442
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4435, metadata !DIExpression()), !dbg !4443
  br label %26, !dbg !4444

3:                                                ; preds = %26
  %4 = add nuw nsw i64 %27, 1, !dbg !4445
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !4435, metadata !DIExpression()), !dbg !4443
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !4435, metadata !DIExpression()), !dbg !4443
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !4435, metadata !DIExpression()), !dbg !4443
  %5 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %4, !dbg !4447
  %6 = load i32, ptr %5, align 4, !dbg !4449, !tbaa !4380
  %7 = icmp eq i32 %6, %0, !dbg !4450
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !4435, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4443
  br i1 %7, label %31, label %8, !dbg !4451

8:                                                ; preds = %3
  %9 = add nuw nsw i64 %27, 2, !dbg !4445
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4435, metadata !DIExpression()), !dbg !4443
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4435, metadata !DIExpression()), !dbg !4443
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4435, metadata !DIExpression()), !dbg !4443
  %10 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %9, !dbg !4447
  %11 = load i32, ptr %10, align 4, !dbg !4449, !tbaa !4380
  %12 = icmp eq i32 %11, %0, !dbg !4450
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4435, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4443
  br i1 %12, label %31, label %13, !dbg !4451

13:                                               ; preds = %8
  %14 = add nuw nsw i64 %27, 3, !dbg !4445
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !4435, metadata !DIExpression()), !dbg !4443
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !4435, metadata !DIExpression()), !dbg !4443
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !4435, metadata !DIExpression()), !dbg !4443
  %15 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %14, !dbg !4447
  %16 = load i32, ptr %15, align 4, !dbg !4449, !tbaa !4380
  %17 = icmp eq i32 %16, %0, !dbg !4450
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !4435, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4443
  br i1 %17, label %31, label %18, !dbg !4451

18:                                               ; preds = %13
  %19 = add nuw nsw i64 %27, 4, !dbg !4445
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !4435, metadata !DIExpression()), !dbg !4443
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !4435, metadata !DIExpression()), !dbg !4443
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !4435, metadata !DIExpression()), !dbg !4443
  %20 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %19, !dbg !4447
  %21 = load i32, ptr %20, align 4, !dbg !4449, !tbaa !4380
  %22 = icmp eq i32 %21, %0, !dbg !4450
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !4435, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4443
  br i1 %22, label %31, label %23, !dbg !4451

23:                                               ; preds = %18
  %24 = add nuw nsw i64 %27, 5, !dbg !4445
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !4435, metadata !DIExpression()), !dbg !4443
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !4435, metadata !DIExpression()), !dbg !4443
  %25 = icmp eq i64 %24, 35, !dbg !4452
  br i1 %25, label %35, label %26, !dbg !4444, !llvm.loop !4453

26:                                               ; preds = %23, %2
  %27 = phi i64 [ 0, %2 ], [ %24, %23 ]
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !4435, metadata !DIExpression()), !dbg !4443
  %28 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %27, !dbg !4447
  %29 = load i32, ptr %28, align 4, !dbg !4449, !tbaa !4380
  %30 = icmp eq i32 %29, %0, !dbg !4450
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !4435, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4443
  br i1 %30, label %31, label %3, !dbg !4451

31:                                               ; preds = %18, %13, %8, %3, %26
  %32 = phi i64 [ %27, %26 ], [ %4, %3 ], [ %9, %8 ], [ %14, %13 ], [ %19, %18 ]
  %33 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %32, i32 1, !dbg !4455
  call void @llvm.dbg.value(metadata ptr %1, metadata !4457, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata ptr %33, metadata !4460, metadata !DIExpression()), !dbg !4461
  %34 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %33), !dbg !4463
  br label %53

35:                                               ; preds = %23
  %36 = tail call i32 @__libc_current_sigrtmin() #41, !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !4437, metadata !DIExpression()), !dbg !4465
  %37 = tail call i32 @__libc_current_sigrtmax() #41, !dbg !4466
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !4439, metadata !DIExpression()), !dbg !4465
  %38 = icmp sgt i32 %36, %0, !dbg !4467
  %39 = icmp slt i32 %37, %0
  %40 = select i1 %38, i1 true, i1 %39, !dbg !4469
  br i1 %40, label %53, label %41, !dbg !4469

41:                                               ; preds = %35
  %42 = sub nsw i32 %37, %36, !dbg !4470
  %43 = sdiv i32 %42, 2, !dbg !4472
  %44 = add nsw i32 %43, %36, !dbg !4473
  %45 = icmp slt i32 %44, %0, !dbg !4474
  call void @llvm.dbg.value(metadata ptr %1, metadata !4457, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.value(metadata ptr %1, metadata !4457, metadata !DIExpression()), !dbg !4478
  %46 = select i1 %45, ptr @.str.1.144, ptr @.str.143
  %47 = select i1 %45, i32 %37, i32 %36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) %46, i64 6, i1 false), !dbg !4481
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !4440, metadata !DIExpression()), !dbg !4465
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %0, i32 %47), metadata !4441, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4465
  %48 = icmp eq i32 %47, %0, !dbg !4483
  br i1 %48, label %53, label %49, !dbg !4485

49:                                               ; preds = %41
  %50 = sub nsw i32 %0, %47, !dbg !4486
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !4441, metadata !DIExpression()), !dbg !4465
  %51 = getelementptr inbounds i8, ptr %1, i64 5, !dbg !4487
  %52 = tail call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %51, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.2.147, i32 noundef %50) #41, !dbg !4487
  br label %53, !dbg !4487

53:                                               ; preds = %31, %35, %49, %41
  %54 = phi i32 [ 0, %31 ], [ -1, %35 ], [ 0, %49 ], [ 0, %41 ], !dbg !4442
  ret i32 %54, !dbg !4488
}

; Function Attrs: nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias nocapture readonly) #29

; Function Attrs: nofree
declare !dbg !4489 i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4492 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4531, metadata !DIExpression()), !dbg !4537
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4532, metadata !DIExpression()), !dbg !4537
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4533, metadata !DIExpression()), !dbg !4537
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4534, metadata !DIExpression()), !dbg !4537
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4535, metadata !DIExpression()), !dbg !4537
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4536, metadata !DIExpression()), !dbg !4537
  %7 = icmp eq ptr %1, null, !dbg !4538
  br i1 %7, label %10, label %8, !dbg !4540

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.148, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #41, !dbg !4541
  br label %12, !dbg !4541

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.149, ptr noundef %2, ptr noundef %3) #41, !dbg !4542
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.3.151, i32 noundef 5) #41, !dbg !4543
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #41, !dbg !4543
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.152, ptr noundef %0), !dbg !4544
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.5.153, i32 noundef 5) #41, !dbg !4545
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.154) #41, !dbg !4545
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.152, ptr noundef %0), !dbg !4546
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
  ], !dbg !4547

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.7.155, i32 noundef 5) #41, !dbg !4548
  %21 = load ptr, ptr %4, align 8, !dbg !4548, !tbaa !1069
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #41, !dbg !4548
  br label %147, !dbg !4550

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.8.156, i32 noundef 5) #41, !dbg !4551
  %25 = load ptr, ptr %4, align 8, !dbg !4551, !tbaa !1069
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4551
  %27 = load ptr, ptr %26, align 8, !dbg !4551, !tbaa !1069
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #41, !dbg !4551
  br label %147, !dbg !4552

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.9.157, i32 noundef 5) #41, !dbg !4553
  %31 = load ptr, ptr %4, align 8, !dbg !4553, !tbaa !1069
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4553
  %33 = load ptr, ptr %32, align 8, !dbg !4553, !tbaa !1069
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4553
  %35 = load ptr, ptr %34, align 8, !dbg !4553, !tbaa !1069
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #41, !dbg !4553
  br label %147, !dbg !4554

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.10.158, i32 noundef 5) #41, !dbg !4555
  %39 = load ptr, ptr %4, align 8, !dbg !4555, !tbaa !1069
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4555
  %41 = load ptr, ptr %40, align 8, !dbg !4555, !tbaa !1069
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4555
  %43 = load ptr, ptr %42, align 8, !dbg !4555, !tbaa !1069
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4555
  %45 = load ptr, ptr %44, align 8, !dbg !4555, !tbaa !1069
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #41, !dbg !4555
  br label %147, !dbg !4556

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.11.159, i32 noundef 5) #41, !dbg !4557
  %49 = load ptr, ptr %4, align 8, !dbg !4557, !tbaa !1069
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4557
  %51 = load ptr, ptr %50, align 8, !dbg !4557, !tbaa !1069
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4557
  %53 = load ptr, ptr %52, align 8, !dbg !4557, !tbaa !1069
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4557
  %55 = load ptr, ptr %54, align 8, !dbg !4557, !tbaa !1069
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4557
  %57 = load ptr, ptr %56, align 8, !dbg !4557, !tbaa !1069
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #41, !dbg !4557
  br label %147, !dbg !4558

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.12.160, i32 noundef 5) #41, !dbg !4559
  %61 = load ptr, ptr %4, align 8, !dbg !4559, !tbaa !1069
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4559
  %63 = load ptr, ptr %62, align 8, !dbg !4559, !tbaa !1069
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4559
  %65 = load ptr, ptr %64, align 8, !dbg !4559, !tbaa !1069
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4559
  %67 = load ptr, ptr %66, align 8, !dbg !4559, !tbaa !1069
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4559
  %69 = load ptr, ptr %68, align 8, !dbg !4559, !tbaa !1069
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4559
  %71 = load ptr, ptr %70, align 8, !dbg !4559, !tbaa !1069
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #41, !dbg !4559
  br label %147, !dbg !4560

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.13.161, i32 noundef 5) #41, !dbg !4561
  %75 = load ptr, ptr %4, align 8, !dbg !4561, !tbaa !1069
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4561
  %77 = load ptr, ptr %76, align 8, !dbg !4561, !tbaa !1069
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4561
  %79 = load ptr, ptr %78, align 8, !dbg !4561, !tbaa !1069
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4561
  %81 = load ptr, ptr %80, align 8, !dbg !4561, !tbaa !1069
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4561
  %83 = load ptr, ptr %82, align 8, !dbg !4561, !tbaa !1069
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4561
  %85 = load ptr, ptr %84, align 8, !dbg !4561, !tbaa !1069
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4561
  %87 = load ptr, ptr %86, align 8, !dbg !4561, !tbaa !1069
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #41, !dbg !4561
  br label %147, !dbg !4562

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.14.162, i32 noundef 5) #41, !dbg !4563
  %91 = load ptr, ptr %4, align 8, !dbg !4563, !tbaa !1069
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4563
  %93 = load ptr, ptr %92, align 8, !dbg !4563, !tbaa !1069
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4563
  %95 = load ptr, ptr %94, align 8, !dbg !4563, !tbaa !1069
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4563
  %97 = load ptr, ptr %96, align 8, !dbg !4563, !tbaa !1069
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4563
  %99 = load ptr, ptr %98, align 8, !dbg !4563, !tbaa !1069
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4563
  %101 = load ptr, ptr %100, align 8, !dbg !4563, !tbaa !1069
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4563
  %103 = load ptr, ptr %102, align 8, !dbg !4563, !tbaa !1069
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4563
  %105 = load ptr, ptr %104, align 8, !dbg !4563, !tbaa !1069
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #41, !dbg !4563
  br label %147, !dbg !4564

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.15.163, i32 noundef 5) #41, !dbg !4565
  %109 = load ptr, ptr %4, align 8, !dbg !4565, !tbaa !1069
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4565
  %111 = load ptr, ptr %110, align 8, !dbg !4565, !tbaa !1069
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4565
  %113 = load ptr, ptr %112, align 8, !dbg !4565, !tbaa !1069
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4565
  %115 = load ptr, ptr %114, align 8, !dbg !4565, !tbaa !1069
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4565
  %117 = load ptr, ptr %116, align 8, !dbg !4565, !tbaa !1069
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4565
  %119 = load ptr, ptr %118, align 8, !dbg !4565, !tbaa !1069
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4565
  %121 = load ptr, ptr %120, align 8, !dbg !4565, !tbaa !1069
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4565
  %123 = load ptr, ptr %122, align 8, !dbg !4565, !tbaa !1069
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4565
  %125 = load ptr, ptr %124, align 8, !dbg !4565, !tbaa !1069
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #41, !dbg !4565
  br label %147, !dbg !4566

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.16.164, i32 noundef 5) #41, !dbg !4567
  %129 = load ptr, ptr %4, align 8, !dbg !4567, !tbaa !1069
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4567
  %131 = load ptr, ptr %130, align 8, !dbg !4567, !tbaa !1069
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4567
  %133 = load ptr, ptr %132, align 8, !dbg !4567, !tbaa !1069
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4567
  %135 = load ptr, ptr %134, align 8, !dbg !4567, !tbaa !1069
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4567
  %137 = load ptr, ptr %136, align 8, !dbg !4567, !tbaa !1069
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4567
  %139 = load ptr, ptr %138, align 8, !dbg !4567, !tbaa !1069
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4567
  %141 = load ptr, ptr %140, align 8, !dbg !4567, !tbaa !1069
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4567
  %143 = load ptr, ptr %142, align 8, !dbg !4567, !tbaa !1069
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4567
  %145 = load ptr, ptr %144, align 8, !dbg !4567, !tbaa !1069
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #41, !dbg !4567
  br label %147, !dbg !4568

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4569
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4570 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4574, metadata !DIExpression()), !dbg !4580
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4575, metadata !DIExpression()), !dbg !4580
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4576, metadata !DIExpression()), !dbg !4580
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4577, metadata !DIExpression()), !dbg !4580
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4578, metadata !DIExpression()), !dbg !4580
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4579, metadata !DIExpression()), !dbg !4580
  br label %6, !dbg !4581

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4583
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4579, metadata !DIExpression()), !dbg !4580
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4584
  %9 = load ptr, ptr %8, align 8, !dbg !4584, !tbaa !1069
  %10 = icmp eq ptr %9, null, !dbg !4586
  %11 = add i64 %7, 1, !dbg !4587
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4579, metadata !DIExpression()), !dbg !4580
  br i1 %10, label %12, label %6, !dbg !4586, !llvm.loop !4588

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4590
  ret void, !dbg !4591
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4592 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !4611
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4609, metadata !DIExpression(), metadata !4611, metadata ptr %6, metadata !DIExpression()), !dbg !4612
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4603, metadata !DIExpression()), !dbg !4612
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4604, metadata !DIExpression()), !dbg !4612
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4605, metadata !DIExpression()), !dbg !4612
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4606, metadata !DIExpression()), !dbg !4612
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4607, metadata !DIExpression()), !dbg !4612
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #41, !dbg !4613
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4608, metadata !DIExpression()), !dbg !4612
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4608, metadata !DIExpression()), !dbg !4612
  %10 = icmp ult i32 %9, 41, !dbg !4614
  br i1 %10, label %11, label %16, !dbg !4614

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4614
  %13 = zext nneg i32 %9 to i64, !dbg !4614
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4614
  %15 = add nuw nsw i32 %9, 8, !dbg !4614
  store i32 %15, ptr %4, align 8, !dbg !4614
  br label %19, !dbg !4614

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4614
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4614
  store ptr %18, ptr %7, align 8, !dbg !4614
  br label %19, !dbg !4614

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4614
  %22 = load ptr, ptr %21, align 8, !dbg !4614
  store ptr %22, ptr %6, align 16, !dbg !4617, !tbaa !1069
  %23 = icmp eq ptr %22, null, !dbg !4618
  br i1 %23, label %128, label %24, !dbg !4619

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4608, metadata !DIExpression()), !dbg !4612
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4608, metadata !DIExpression()), !dbg !4612
  %25 = icmp ult i32 %20, 41, !dbg !4614
  br i1 %25, label %29, label %26, !dbg !4614

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4614
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4614
  store ptr %28, ptr %7, align 8, !dbg !4614
  br label %34, !dbg !4614

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4614
  %31 = zext nneg i32 %20 to i64, !dbg !4614
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4614
  %33 = add nuw nsw i32 %20, 8, !dbg !4614
  store i32 %33, ptr %4, align 8, !dbg !4614
  br label %34, !dbg !4614

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4614
  %37 = load ptr, ptr %36, align 8, !dbg !4614
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4620
  store ptr %37, ptr %38, align 8, !dbg !4617, !tbaa !1069
  %39 = icmp eq ptr %37, null, !dbg !4618
  br i1 %39, label %128, label %40, !dbg !4619

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4608, metadata !DIExpression()), !dbg !4612
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4608, metadata !DIExpression()), !dbg !4612
  %41 = icmp ult i32 %35, 41, !dbg !4614
  br i1 %41, label %45, label %42, !dbg !4614

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4614
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4614
  store ptr %44, ptr %7, align 8, !dbg !4614
  br label %50, !dbg !4614

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4614
  %47 = zext nneg i32 %35 to i64, !dbg !4614
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4614
  %49 = add nuw nsw i32 %35, 8, !dbg !4614
  store i32 %49, ptr %4, align 8, !dbg !4614
  br label %50, !dbg !4614

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4614
  %53 = load ptr, ptr %52, align 8, !dbg !4614
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4620
  store ptr %53, ptr %54, align 16, !dbg !4617, !tbaa !1069
  %55 = icmp eq ptr %53, null, !dbg !4618
  br i1 %55, label %128, label %56, !dbg !4619

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4608, metadata !DIExpression()), !dbg !4612
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4608, metadata !DIExpression()), !dbg !4612
  %57 = icmp ult i32 %51, 41, !dbg !4614
  br i1 %57, label %61, label %58, !dbg !4614

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4614
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4614
  store ptr %60, ptr %7, align 8, !dbg !4614
  br label %66, !dbg !4614

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4614
  %63 = zext nneg i32 %51 to i64, !dbg !4614
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4614
  %65 = add nuw nsw i32 %51, 8, !dbg !4614
  store i32 %65, ptr %4, align 8, !dbg !4614
  br label %66, !dbg !4614

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4614
  %69 = load ptr, ptr %68, align 8, !dbg !4614
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4620
  store ptr %69, ptr %70, align 8, !dbg !4617, !tbaa !1069
  %71 = icmp eq ptr %69, null, !dbg !4618
  br i1 %71, label %128, label %72, !dbg !4619

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4608, metadata !DIExpression()), !dbg !4612
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4608, metadata !DIExpression()), !dbg !4612
  %73 = icmp ult i32 %67, 41, !dbg !4614
  br i1 %73, label %77, label %74, !dbg !4614

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4614
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4614
  store ptr %76, ptr %7, align 8, !dbg !4614
  br label %82, !dbg !4614

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4614
  %79 = zext nneg i32 %67 to i64, !dbg !4614
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4614
  %81 = add nuw nsw i32 %67, 8, !dbg !4614
  store i32 %81, ptr %4, align 8, !dbg !4614
  br label %82, !dbg !4614

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4614
  %85 = load ptr, ptr %84, align 8, !dbg !4614
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4620
  store ptr %85, ptr %86, align 16, !dbg !4617, !tbaa !1069
  %87 = icmp eq ptr %85, null, !dbg !4618
  br i1 %87, label %128, label %88, !dbg !4619

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4608, metadata !DIExpression()), !dbg !4612
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4608, metadata !DIExpression()), !dbg !4612
  %89 = icmp ult i32 %83, 41, !dbg !4614
  br i1 %89, label %93, label %90, !dbg !4614

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4614
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4614
  store ptr %92, ptr %7, align 8, !dbg !4614
  br label %98, !dbg !4614

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4614
  %95 = zext nneg i32 %83 to i64, !dbg !4614
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4614
  %97 = add nuw nsw i32 %83, 8, !dbg !4614
  store i32 %97, ptr %4, align 8, !dbg !4614
  br label %98, !dbg !4614

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4614
  %100 = load ptr, ptr %99, align 8, !dbg !4614
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4620
  store ptr %100, ptr %101, align 8, !dbg !4617, !tbaa !1069
  %102 = icmp eq ptr %100, null, !dbg !4618
  br i1 %102, label %128, label %103, !dbg !4619

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4608, metadata !DIExpression()), !dbg !4612
  %104 = load ptr, ptr %7, align 8, !dbg !4614
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4614
  store ptr %105, ptr %7, align 8, !dbg !4614
  %106 = load ptr, ptr %104, align 8, !dbg !4614
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4620
  store ptr %106, ptr %107, align 16, !dbg !4617, !tbaa !1069
  %108 = icmp eq ptr %106, null, !dbg !4618
  br i1 %108, label %128, label %109, !dbg !4619

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4608, metadata !DIExpression()), !dbg !4612
  %110 = load ptr, ptr %7, align 8, !dbg !4614
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4614
  store ptr %111, ptr %7, align 8, !dbg !4614
  %112 = load ptr, ptr %110, align 8, !dbg !4614
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4620
  store ptr %112, ptr %113, align 8, !dbg !4617, !tbaa !1069
  %114 = icmp eq ptr %112, null, !dbg !4618
  br i1 %114, label %128, label %115, !dbg !4619

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4608, metadata !DIExpression()), !dbg !4612
  %116 = load ptr, ptr %7, align 8, !dbg !4614
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4614
  store ptr %117, ptr %7, align 8, !dbg !4614
  %118 = load ptr, ptr %116, align 8, !dbg !4614
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4620
  store ptr %118, ptr %119, align 16, !dbg !4617, !tbaa !1069
  %120 = icmp eq ptr %118, null, !dbg !4618
  br i1 %120, label %128, label %121, !dbg !4619

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4608, metadata !DIExpression()), !dbg !4612
  %122 = load ptr, ptr %7, align 8, !dbg !4614
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4614
  store ptr %123, ptr %7, align 8, !dbg !4614
  %124 = load ptr, ptr %122, align 8, !dbg !4614
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4620
  store ptr %124, ptr %125, align 8, !dbg !4617, !tbaa !1069
  %126 = icmp eq ptr %124, null, !dbg !4618
  %127 = select i1 %126, i64 9, i64 10, !dbg !4619
  br label %128, !dbg !4619

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4621
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4622
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #41, !dbg !4623
  ret void, !dbg !4623
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4624 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !4637
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4632, metadata !DIExpression(), metadata !4637, metadata ptr %5, metadata !DIExpression()), !dbg !4638
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4628, metadata !DIExpression()), !dbg !4638
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4629, metadata !DIExpression()), !dbg !4638
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4630, metadata !DIExpression()), !dbg !4638
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4631, metadata !DIExpression()), !dbg !4638
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #41, !dbg !4639
  call void @llvm.va_start(ptr nonnull %5), !dbg !4640
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4641
  call void @llvm.va_end(ptr nonnull %5), !dbg !4642
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #41, !dbg !4643
  ret void, !dbg !4643
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4644 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4645, !tbaa !1069
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.152, ptr noundef %1), !dbg !4645
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.17.169, i32 noundef 5) #41, !dbg !4646
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.170) #41, !dbg !4646
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.19.171, i32 noundef 5) #41, !dbg !4647
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.172, ptr noundef nonnull @.str.21.173) #41, !dbg !4647
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.22.174, i32 noundef 5) #41, !dbg !4648
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.175) #41, !dbg !4648
  ret void, !dbg !4649
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4650 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4655, metadata !DIExpression()), !dbg !4658
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4656, metadata !DIExpression()), !dbg !4658
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4657, metadata !DIExpression()), !dbg !4658
  call void @llvm.dbg.value(metadata ptr %0, metadata !4659, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.value(metadata i64 %1, metadata !4662, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.value(metadata i64 %2, metadata !4663, metadata !DIExpression()), !dbg !4664
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4666
  call void @llvm.dbg.value(metadata ptr %4, metadata !4667, metadata !DIExpression()), !dbg !4672
  %5 = icmp eq ptr %4, null, !dbg !4674
  br i1 %5, label %6, label %7, !dbg !4676

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4677
  unreachable, !dbg !4677

7:                                                ; preds = %3
  ret ptr %4, !dbg !4678
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4660 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4659, metadata !DIExpression()), !dbg !4679
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4662, metadata !DIExpression()), !dbg !4679
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4663, metadata !DIExpression()), !dbg !4679
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4680
  call void @llvm.dbg.value(metadata ptr %4, metadata !4667, metadata !DIExpression()), !dbg !4681
  %5 = icmp eq ptr %4, null, !dbg !4683
  br i1 %5, label %6, label %7, !dbg !4684

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4685
  unreachable, !dbg !4685

7:                                                ; preds = %3
  ret ptr %4, !dbg !4686
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4687 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4691, metadata !DIExpression()), !dbg !4692
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4693
  call void @llvm.dbg.value(metadata ptr %2, metadata !4667, metadata !DIExpression()), !dbg !4694
  %3 = icmp eq ptr %2, null, !dbg !4696
  br i1 %3, label %4, label %5, !dbg !4697

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4698
  unreachable, !dbg !4698

5:                                                ; preds = %1
  ret ptr %2, !dbg !4699
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4700 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4701 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4705, metadata !DIExpression()), !dbg !4706
  call void @llvm.dbg.value(metadata i64 %0, metadata !4707, metadata !DIExpression()), !dbg !4711
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4713
  call void @llvm.dbg.value(metadata ptr %2, metadata !4667, metadata !DIExpression()), !dbg !4714
  %3 = icmp eq ptr %2, null, !dbg !4716
  br i1 %3, label %4, label %5, !dbg !4717

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4718
  unreachable, !dbg !4718

5:                                                ; preds = %1
  ret ptr %2, !dbg !4719
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4720 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4724, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata i64 %0, metadata !4691, metadata !DIExpression()), !dbg !4726
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4728
  call void @llvm.dbg.value(metadata ptr %2, metadata !4667, metadata !DIExpression()), !dbg !4729
  %3 = icmp eq ptr %2, null, !dbg !4731
  br i1 %3, label %4, label %5, !dbg !4732

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4733
  unreachable, !dbg !4733

5:                                                ; preds = %1
  ret ptr %2, !dbg !4734
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4735 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4739, metadata !DIExpression()), !dbg !4741
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4740, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata ptr %0, metadata !4742, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i64 %1, metadata !4746, metadata !DIExpression()), !dbg !4747
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4749
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #49, !dbg !4750
  call void @llvm.dbg.value(metadata ptr %4, metadata !4667, metadata !DIExpression()), !dbg !4751
  %5 = icmp eq ptr %4, null, !dbg !4753
  br i1 %5, label %6, label %7, !dbg !4754

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4755
  unreachable, !dbg !4755

7:                                                ; preds = %2
  ret ptr %4, !dbg !4756
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4757 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4758 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4762, metadata !DIExpression()), !dbg !4764
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4763, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata ptr %0, metadata !4765, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.value(metadata i64 %1, metadata !4768, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.value(metadata ptr %0, metadata !4742, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i64 %1, metadata !4746, metadata !DIExpression()), !dbg !4771
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4773
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #49, !dbg !4774
  call void @llvm.dbg.value(metadata ptr %4, metadata !4667, metadata !DIExpression()), !dbg !4775
  %5 = icmp eq ptr %4, null, !dbg !4777
  br i1 %5, label %6, label %7, !dbg !4778

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4779
  unreachable, !dbg !4779

7:                                                ; preds = %2
  ret ptr %4, !dbg !4780
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4781 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4785, metadata !DIExpression()), !dbg !4788
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4786, metadata !DIExpression()), !dbg !4788
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4787, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata ptr %0, metadata !4789, metadata !DIExpression()), !dbg !4794
  call void @llvm.dbg.value(metadata i64 %1, metadata !4792, metadata !DIExpression()), !dbg !4794
  call void @llvm.dbg.value(metadata i64 %2, metadata !4793, metadata !DIExpression()), !dbg !4794
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4796
  call void @llvm.dbg.value(metadata ptr %4, metadata !4667, metadata !DIExpression()), !dbg !4797
  %5 = icmp eq ptr %4, null, !dbg !4799
  br i1 %5, label %6, label %7, !dbg !4800

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4801
  unreachable, !dbg !4801

7:                                                ; preds = %3
  ret ptr %4, !dbg !4802
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4803 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4807, metadata !DIExpression()), !dbg !4809
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4808, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata ptr null, metadata !4659, metadata !DIExpression()), !dbg !4810
  call void @llvm.dbg.value(metadata i64 %0, metadata !4662, metadata !DIExpression()), !dbg !4810
  call void @llvm.dbg.value(metadata i64 %1, metadata !4663, metadata !DIExpression()), !dbg !4810
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4812
  call void @llvm.dbg.value(metadata ptr %3, metadata !4667, metadata !DIExpression()), !dbg !4813
  %4 = icmp eq ptr %3, null, !dbg !4815
  br i1 %4, label %5, label %6, !dbg !4816

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4817
  unreachable, !dbg !4817

6:                                                ; preds = %2
  ret ptr %3, !dbg !4818
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4819 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4823, metadata !DIExpression()), !dbg !4825
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4824, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata ptr null, metadata !4785, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata i64 %0, metadata !4786, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata i64 %1, metadata !4787, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata ptr null, metadata !4789, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i64 %0, metadata !4792, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i64 %1, metadata !4793, metadata !DIExpression()), !dbg !4828
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4830
  call void @llvm.dbg.value(metadata ptr %3, metadata !4667, metadata !DIExpression()), !dbg !4831
  %4 = icmp eq ptr %3, null, !dbg !4833
  br i1 %4, label %5, label %6, !dbg !4834

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4835
  unreachable, !dbg !4835

6:                                                ; preds = %2
  ret ptr %3, !dbg !4836
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4837 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4841, metadata !DIExpression()), !dbg !4843
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4842, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata ptr %0, metadata !1008, metadata !DIExpression()), !dbg !4844
  call void @llvm.dbg.value(metadata ptr %1, metadata !1009, metadata !DIExpression()), !dbg !4844
  call void @llvm.dbg.value(metadata i64 1, metadata !1010, metadata !DIExpression()), !dbg !4844
  %3 = load i64, ptr %1, align 8, !dbg !4846, !tbaa !1354
  call void @llvm.dbg.value(metadata i64 %3, metadata !1011, metadata !DIExpression()), !dbg !4844
  %4 = icmp eq ptr %0, null, !dbg !4847
  br i1 %4, label %5, label %8, !dbg !4849

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4850
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4853
  br label %15, !dbg !4853

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4854
  %10 = add nuw i64 %9, 1, !dbg !4854
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4854
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4854
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4854
  call void @llvm.dbg.value(metadata i64 %13, metadata !1011, metadata !DIExpression()), !dbg !4844
  br i1 %12, label %14, label %15, !dbg !4857

14:                                               ; preds = %8
  tail call void @xalloc_die() #43, !dbg !4858
  unreachable, !dbg !4858

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4844
  call void @llvm.dbg.value(metadata i64 %16, metadata !1011, metadata !DIExpression()), !dbg !4844
  call void @llvm.dbg.value(metadata ptr %0, metadata !4659, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 %16, metadata !4662, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 1, metadata !4663, metadata !DIExpression()), !dbg !4859
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #41, !dbg !4861
  call void @llvm.dbg.value(metadata ptr %17, metadata !4667, metadata !DIExpression()), !dbg !4862
  %18 = icmp eq ptr %17, null, !dbg !4864
  br i1 %18, label %19, label %20, !dbg !4865

19:                                               ; preds = %15
  tail call void @xalloc_die() #43, !dbg !4866
  unreachable, !dbg !4866

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !1008, metadata !DIExpression()), !dbg !4844
  store i64 %16, ptr %1, align 8, !dbg !4867, !tbaa !1354
  ret ptr %17, !dbg !4868
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1003 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1008, metadata !DIExpression()), !dbg !4869
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1009, metadata !DIExpression()), !dbg !4869
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1010, metadata !DIExpression()), !dbg !4869
  %4 = load i64, ptr %1, align 8, !dbg !4870, !tbaa !1354
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1011, metadata !DIExpression()), !dbg !4869
  %5 = icmp eq ptr %0, null, !dbg !4871
  br i1 %5, label %6, label %13, !dbg !4872

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4873
  br i1 %7, label %8, label %20, !dbg !4874

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4875
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1011, metadata !DIExpression()), !dbg !4869
  %10 = icmp ugt i64 %2, 128, !dbg !4877
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4878
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1011, metadata !DIExpression()), !dbg !4869
  br label %20, !dbg !4879

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4880
  %15 = add nuw i64 %14, 1, !dbg !4880
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4880
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4880
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4880
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1011, metadata !DIExpression()), !dbg !4869
  br i1 %17, label %19, label %20, !dbg !4881

19:                                               ; preds = %13
  tail call void @xalloc_die() #43, !dbg !4882
  unreachable, !dbg !4882

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4869
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !1011, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata ptr %0, metadata !4659, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata i64 %21, metadata !4662, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata i64 %2, metadata !4663, metadata !DIExpression()), !dbg !4883
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #41, !dbg !4885
  call void @llvm.dbg.value(metadata ptr %22, metadata !4667, metadata !DIExpression()), !dbg !4886
  %23 = icmp eq ptr %22, null, !dbg !4888
  br i1 %23, label %24, label %25, !dbg !4889

24:                                               ; preds = %20
  tail call void @xalloc_die() #43, !dbg !4890
  unreachable, !dbg !4890

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !1008, metadata !DIExpression()), !dbg !4869
  store i64 %21, ptr %1, align 8, !dbg !4891, !tbaa !1354
  ret ptr %22, !dbg !4892
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !1015 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1022, metadata !DIExpression()), !dbg !4893
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1023, metadata !DIExpression()), !dbg !4893
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1024, metadata !DIExpression()), !dbg !4893
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1025, metadata !DIExpression()), !dbg !4893
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1026, metadata !DIExpression()), !dbg !4893
  %6 = load i64, ptr %1, align 8, !dbg !4894, !tbaa !1354
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1027, metadata !DIExpression()), !dbg !4893
  %7 = ashr i64 %6, 1, !dbg !4895
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4895
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4895
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4895
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !1028, metadata !DIExpression()), !dbg !4893
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4897
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1028, metadata !DIExpression()), !dbg !4893
  %12 = icmp sgt i64 %3, -1, !dbg !4898
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4900
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4900
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !1028, metadata !DIExpression()), !dbg !4893
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4901
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4901
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4901
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !1029, metadata !DIExpression()), !dbg !4893
  %18 = icmp slt i64 %17, 128, !dbg !4901
  %19 = select i1 %18, i64 128, i64 0, !dbg !4901
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4901
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !1030, metadata !DIExpression()), !dbg !4893
  %21 = icmp eq i64 %20, 0, !dbg !4902
  br i1 %21, label %26, label %22, !dbg !4904

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !4905
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !1028, metadata !DIExpression()), !dbg !4893
  %24 = srem i64 %20, %4, !dbg !4907
  %25 = sub nsw i64 %20, %24, !dbg !4908
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !1029, metadata !DIExpression()), !dbg !4893
  br label %26, !dbg !4909

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !4893
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !4893
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !1029, metadata !DIExpression()), !dbg !4893
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !1028, metadata !DIExpression()), !dbg !4893
  %29 = icmp eq ptr %0, null, !dbg !4910
  br i1 %29, label %30, label %31, !dbg !4912

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !4913, !tbaa !1354
  br label %31, !dbg !4914

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !4915
  %33 = icmp slt i64 %32, %2, !dbg !4917
  br i1 %33, label %34, label %46, !dbg !4918

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4919
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !4919
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !4919
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !1028, metadata !DIExpression()), !dbg !4893
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !4920
  br i1 %40, label %45, label %41, !dbg !4920

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !4921
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !4921
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !4921
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !1029, metadata !DIExpression()), !dbg !4893
  br i1 %43, label %45, label %46, !dbg !4922

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #43, !dbg !4923
  unreachable, !dbg !4923

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !4893
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !4893
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !1029, metadata !DIExpression()), !dbg !4893
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !1028, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata ptr %0, metadata !4739, metadata !DIExpression()), !dbg !4924
  call void @llvm.dbg.value(metadata i64 %48, metadata !4740, metadata !DIExpression()), !dbg !4924
  call void @llvm.dbg.value(metadata ptr %0, metadata !4742, metadata !DIExpression()), !dbg !4926
  call void @llvm.dbg.value(metadata i64 %48, metadata !4746, metadata !DIExpression()), !dbg !4926
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !4928
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #49, !dbg !4929
  call void @llvm.dbg.value(metadata ptr %50, metadata !4667, metadata !DIExpression()), !dbg !4930
  %51 = icmp eq ptr %50, null, !dbg !4932
  br i1 %51, label %52, label %53, !dbg !4933

52:                                               ; preds = %46
  tail call void @xalloc_die() #43, !dbg !4934
  unreachable, !dbg !4934

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !1022, metadata !DIExpression()), !dbg !4893
  store i64 %47, ptr %1, align 8, !dbg !4935, !tbaa !1354
  ret ptr %50, !dbg !4936
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4937 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4939, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata i64 %0, metadata !4941, metadata !DIExpression()), !dbg !4945
  call void @llvm.dbg.value(metadata i64 1, metadata !4944, metadata !DIExpression()), !dbg !4945
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4947
  call void @llvm.dbg.value(metadata ptr %2, metadata !4667, metadata !DIExpression()), !dbg !4948
  %3 = icmp eq ptr %2, null, !dbg !4950
  br i1 %3, label %4, label %5, !dbg !4951

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4952
  unreachable, !dbg !4952

5:                                                ; preds = %1
  ret ptr %2, !dbg !4953
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4954 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4942 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4941, metadata !DIExpression()), !dbg !4955
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4944, metadata !DIExpression()), !dbg !4955
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4956
  call void @llvm.dbg.value(metadata ptr %3, metadata !4667, metadata !DIExpression()), !dbg !4957
  %4 = icmp eq ptr %3, null, !dbg !4959
  br i1 %4, label %5, label %6, !dbg !4960

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4961
  unreachable, !dbg !4961

6:                                                ; preds = %2
  ret ptr %3, !dbg !4962
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4963 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4965, metadata !DIExpression()), !dbg !4966
  call void @llvm.dbg.value(metadata i64 %0, metadata !4967, metadata !DIExpression()), !dbg !4971
  call void @llvm.dbg.value(metadata i64 1, metadata !4970, metadata !DIExpression()), !dbg !4971
  call void @llvm.dbg.value(metadata i64 %0, metadata !4973, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata i64 1, metadata !4976, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata i64 %0, metadata !4973, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata i64 1, metadata !4976, metadata !DIExpression()), !dbg !4977
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4979
  call void @llvm.dbg.value(metadata ptr %2, metadata !4667, metadata !DIExpression()), !dbg !4980
  %3 = icmp eq ptr %2, null, !dbg !4982
  br i1 %3, label %4, label %5, !dbg !4983

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4984
  unreachable, !dbg !4984

5:                                                ; preds = %1
  ret ptr %2, !dbg !4985
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4968 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4967, metadata !DIExpression()), !dbg !4986
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4970, metadata !DIExpression()), !dbg !4986
  call void @llvm.dbg.value(metadata i64 %0, metadata !4973, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata i64 %1, metadata !4976, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata i64 %0, metadata !4973, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata i64 %1, metadata !4976, metadata !DIExpression()), !dbg !4987
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4989
  call void @llvm.dbg.value(metadata ptr %3, metadata !4667, metadata !DIExpression()), !dbg !4990
  %4 = icmp eq ptr %3, null, !dbg !4992
  br i1 %4, label %5, label %6, !dbg !4993

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4994
  unreachable, !dbg !4994

6:                                                ; preds = %2
  ret ptr %3, !dbg !4995
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4996 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5000, metadata !DIExpression()), !dbg !5002
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5001, metadata !DIExpression()), !dbg !5002
  call void @llvm.dbg.value(metadata i64 %1, metadata !4691, metadata !DIExpression()), !dbg !5003
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !5005
  call void @llvm.dbg.value(metadata ptr %3, metadata !4667, metadata !DIExpression()), !dbg !5006
  %4 = icmp eq ptr %3, null, !dbg !5008
  br i1 %4, label %5, label %6, !dbg !5009

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !5010
  unreachable, !dbg !5010

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !5011, metadata !DIExpression()), !dbg !5016
  call void @llvm.dbg.value(metadata ptr %0, metadata !5014, metadata !DIExpression()), !dbg !5016
  call void @llvm.dbg.value(metadata i64 %1, metadata !5015, metadata !DIExpression()), !dbg !5016
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !5018
  ret ptr %3, !dbg !5019
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !5020 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5024, metadata !DIExpression()), !dbg !5026
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5025, metadata !DIExpression()), !dbg !5026
  call void @llvm.dbg.value(metadata i64 %1, metadata !4705, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.value(metadata i64 %1, metadata !4707, metadata !DIExpression()), !dbg !5029
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !5031
  call void @llvm.dbg.value(metadata ptr %3, metadata !4667, metadata !DIExpression()), !dbg !5032
  %4 = icmp eq ptr %3, null, !dbg !5034
  br i1 %4, label %5, label %6, !dbg !5035

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !5036
  unreachable, !dbg !5036

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !5011, metadata !DIExpression()), !dbg !5037
  call void @llvm.dbg.value(metadata ptr %0, metadata !5014, metadata !DIExpression()), !dbg !5037
  call void @llvm.dbg.value(metadata i64 %1, metadata !5015, metadata !DIExpression()), !dbg !5037
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !5039
  ret ptr %3, !dbg !5040
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !5041 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5045, metadata !DIExpression()), !dbg !5048
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5046, metadata !DIExpression()), !dbg !5048
  %3 = add nsw i64 %1, 1, !dbg !5049
  call void @llvm.dbg.value(metadata i64 %3, metadata !4705, metadata !DIExpression()), !dbg !5050
  call void @llvm.dbg.value(metadata i64 %3, metadata !4707, metadata !DIExpression()), !dbg !5052
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !5054
  call void @llvm.dbg.value(metadata ptr %4, metadata !4667, metadata !DIExpression()), !dbg !5055
  %5 = icmp eq ptr %4, null, !dbg !5057
  br i1 %5, label %6, label %7, !dbg !5058

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !5059
  unreachable, !dbg !5059

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5047, metadata !DIExpression()), !dbg !5048
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !5060
  store i8 0, ptr %8, align 1, !dbg !5061, !tbaa !1161
  call void @llvm.dbg.value(metadata ptr %4, metadata !5011, metadata !DIExpression()), !dbg !5062
  call void @llvm.dbg.value(metadata ptr %0, metadata !5014, metadata !DIExpression()), !dbg !5062
  call void @llvm.dbg.value(metadata i64 %1, metadata !5015, metadata !DIExpression()), !dbg !5062
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !5064
  ret ptr %4, !dbg !5065
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !5066 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5068, metadata !DIExpression()), !dbg !5069
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #42, !dbg !5070
  %3 = add i64 %2, 1, !dbg !5071
  call void @llvm.dbg.value(metadata ptr %0, metadata !5000, metadata !DIExpression()), !dbg !5072
  call void @llvm.dbg.value(metadata i64 %3, metadata !5001, metadata !DIExpression()), !dbg !5072
  call void @llvm.dbg.value(metadata i64 %3, metadata !4691, metadata !DIExpression()), !dbg !5074
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !5076
  call void @llvm.dbg.value(metadata ptr %4, metadata !4667, metadata !DIExpression()), !dbg !5077
  %5 = icmp eq ptr %4, null, !dbg !5079
  br i1 %5, label %6, label %7, !dbg !5080

6:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !5081
  unreachable, !dbg !5081

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !5011, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata ptr %0, metadata !5014, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata i64 %3, metadata !5015, metadata !DIExpression()), !dbg !5082
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #41, !dbg !5084
  ret ptr %4, !dbg !5085
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !5086 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !5091, !tbaa !1152
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !5088, metadata !DIExpression()), !dbg !5092
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.192, ptr noundef nonnull @.str.2.193, i32 noundef 5) #41, !dbg !5091
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.194, ptr noundef %2) #41, !dbg !5091
  %3 = icmp eq i32 %1, 0, !dbg !5091
  tail call void @llvm.assume(i1 %3), !dbg !5091
  tail call void @abort() #43, !dbg !5093
  unreachable, !dbg !5093
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #38

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !5094 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5132, metadata !DIExpression()), !dbg !5137
  %2 = tail call i64 @__fpending(ptr noundef %0) #41, !dbg !5138
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5133, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5137
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5139, metadata !DIExpression()), !dbg !5142
  %3 = load i32, ptr %0, align 8, !dbg !5144, !tbaa !5145
  %4 = and i32 %3, 32, !dbg !5146
  %5 = icmp eq i32 %4, 0, !dbg !5146
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !5135, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5137
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #41, !dbg !5147
  %7 = icmp eq i32 %6, 0, !dbg !5148
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !5136, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5137
  br i1 %5, label %8, label %18, !dbg !5149

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5151
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !5133, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5137
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5152
  %11 = xor i1 %7, true, !dbg !5152
  %12 = sext i1 %11 to i32, !dbg !5152
  br i1 %10, label %21, label %13, !dbg !5152

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #44, !dbg !5153
  %15 = load i32, ptr %14, align 4, !dbg !5153, !tbaa !1152
  %16 = icmp ne i32 %15, 9, !dbg !5154
  %17 = sext i1 %16 to i32, !dbg !5155
  br label %21, !dbg !5155

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5156

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #44, !dbg !5158
  store i32 0, ptr %20, align 4, !dbg !5160, !tbaa !1152
  br label %21, !dbg !5158

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5137
  ret i32 %22, !dbg !5161
}

; Function Attrs: nounwind
declare !dbg !5162 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !5166 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5204, metadata !DIExpression()), !dbg !5208
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5205, metadata !DIExpression()), !dbg !5208
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !5209
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !5206, metadata !DIExpression()), !dbg !5208
  %3 = icmp slt i32 %2, 0, !dbg !5210
  br i1 %3, label %4, label %6, !dbg !5212

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5213
  br label %24, !dbg !5214

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !5215
  %8 = icmp eq i32 %7, 0, !dbg !5215
  br i1 %8, label %13, label %9, !dbg !5217

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !5218
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #41, !dbg !5219
  %12 = icmp eq i64 %11, -1, !dbg !5220
  br i1 %12, label %16, label %13, !dbg !5221

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #41, !dbg !5222
  %15 = icmp eq i32 %14, 0, !dbg !5222
  br i1 %15, label %16, label %18, !dbg !5223

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5205, metadata !DIExpression()), !dbg !5208
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5207, metadata !DIExpression()), !dbg !5208
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5224
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !5207, metadata !DIExpression()), !dbg !5208
  br label %24, !dbg !5225

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #44, !dbg !5226
  %20 = load i32, ptr %19, align 4, !dbg !5226, !tbaa !1152
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !5205, metadata !DIExpression()), !dbg !5208
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5207, metadata !DIExpression()), !dbg !5208
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5224
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !5207, metadata !DIExpression()), !dbg !5208
  %22 = icmp eq i32 %20, 0, !dbg !5227
  br i1 %22, label %24, label %23, !dbg !5225

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !5229, !tbaa !1152
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !5207, metadata !DIExpression()), !dbg !5208
  br label %24, !dbg !5231

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !5208
  ret i32 %25, !dbg !5232
}

; Function Attrs: nofree nounwind
declare !dbg !5233 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !5234 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !5235 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !5236 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !5239 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5277, metadata !DIExpression()), !dbg !5278
  %2 = icmp eq ptr %0, null, !dbg !5279
  br i1 %2, label %6, label %3, !dbg !5281

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !5282
  %5 = icmp eq i32 %4, 0, !dbg !5282
  br i1 %5, label %6, label %8, !dbg !5283

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !5284
  br label %16, !dbg !5285

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !5286, metadata !DIExpression()), !dbg !5291
  %9 = load i32, ptr %0, align 8, !dbg !5293, !tbaa !5145
  %10 = and i32 %9, 256, !dbg !5295
  %11 = icmp eq i32 %10, 0, !dbg !5295
  br i1 %11, label %14, label %12, !dbg !5296

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #41, !dbg !5297
  br label %14, !dbg !5297

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !5298
  br label %16, !dbg !5299

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !5278
  ret i32 %17, !dbg !5300
}

; Function Attrs: nofree nounwind
declare !dbg !5301 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5302 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5341, metadata !DIExpression()), !dbg !5347
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5342, metadata !DIExpression()), !dbg !5347
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !5343, metadata !DIExpression()), !dbg !5347
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !5348
  %5 = load ptr, ptr %4, align 8, !dbg !5348, !tbaa !5349
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !5350
  %7 = load ptr, ptr %6, align 8, !dbg !5350, !tbaa !5351
  %8 = icmp eq ptr %5, %7, !dbg !5352
  br i1 %8, label %9, label %27, !dbg !5353

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !5354
  %11 = load ptr, ptr %10, align 8, !dbg !5354, !tbaa !2802
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !5355
  %13 = load ptr, ptr %12, align 8, !dbg !5355, !tbaa !5356
  %14 = icmp eq ptr %11, %13, !dbg !5357
  br i1 %14, label %15, label %27, !dbg !5358

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !5359
  %17 = load ptr, ptr %16, align 8, !dbg !5359, !tbaa !5360
  %18 = icmp eq ptr %17, null, !dbg !5361
  br i1 %18, label %19, label %27, !dbg !5362

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !5363
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #41, !dbg !5364
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !5344, metadata !DIExpression()), !dbg !5365
  %22 = icmp eq i64 %21, -1, !dbg !5366
  br i1 %22, label %29, label %23, !dbg !5368

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !5369, !tbaa !5145
  %25 = and i32 %24, -17, !dbg !5369
  store i32 %25, ptr %0, align 8, !dbg !5369, !tbaa !5145
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !5370
  store i64 %21, ptr %26, align 8, !dbg !5371, !tbaa !5372
  br label %29, !dbg !5373

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !5374
  br label %29, !dbg !5375

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !5347
  ret i32 %30, !dbg !5376
}

; Function Attrs: nofree nounwind
declare !dbg !5377 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5380 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5385, metadata !DIExpression()), !dbg !5390
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5386, metadata !DIExpression()), !dbg !5390
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5387, metadata !DIExpression()), !dbg !5390
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5388, metadata !DIExpression()), !dbg !5390
  %5 = icmp eq ptr %1, null, !dbg !5391
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5393
  %7 = select i1 %5, ptr @.str.205, ptr %1, !dbg !5393
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5393
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !5387, metadata !DIExpression()), !dbg !5390
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !5386, metadata !DIExpression()), !dbg !5390
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5385, metadata !DIExpression()), !dbg !5390
  %9 = icmp eq ptr %3, null, !dbg !5394
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5396
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5388, metadata !DIExpression()), !dbg !5390
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #41, !dbg !5397
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !5389, metadata !DIExpression()), !dbg !5390
  %12 = icmp ult i64 %11, -3, !dbg !5398
  br i1 %12, label %13, label %17, !dbg !5400

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #42, !dbg !5401
  %15 = icmp eq i32 %14, 0, !dbg !5401
  br i1 %15, label %16, label %29, !dbg !5402

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5403, metadata !DIExpression()), !dbg !5408
  call void @llvm.dbg.value(metadata ptr %10, metadata !5410, metadata !DIExpression()), !dbg !5415
  call void @llvm.dbg.value(metadata i32 0, metadata !5413, metadata !DIExpression()), !dbg !5415
  call void @llvm.dbg.value(metadata i64 8, metadata !5414, metadata !DIExpression()), !dbg !5415
  store i64 0, ptr %10, align 1, !dbg !5417
  br label %29, !dbg !5418

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5419
  br i1 %18, label %19, label %20, !dbg !5421

19:                                               ; preds = %17
  tail call void @abort() #43, !dbg !5422
  unreachable, !dbg !5422

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5423

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #41, !dbg !5425
  br i1 %23, label %29, label %24, !dbg !5426

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5427
  br i1 %25, label %29, label %26, !dbg !5430

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5431, !tbaa !1161
  %28 = zext i8 %27 to i32, !dbg !5432
  store i32 %28, ptr %6, align 4, !dbg !5433, !tbaa !1152
  br label %29, !dbg !5434

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5390
  ret i64 %30, !dbg !5435
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5436 i32 @mbsinit(ptr noundef) local_unnamed_addr #39

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #40 !dbg !5442 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5444, metadata !DIExpression()), !dbg !5448
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5445, metadata !DIExpression()), !dbg !5448
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5446, metadata !DIExpression()), !dbg !5448
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5449
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5449
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5447, metadata !DIExpression()), !dbg !5448
  br i1 %5, label %6, label %8, !dbg !5451

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #44, !dbg !5452
  store i32 12, ptr %7, align 4, !dbg !5454, !tbaa !1152
  br label %12, !dbg !5455

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5449
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5447, metadata !DIExpression()), !dbg !5448
  call void @llvm.dbg.value(metadata ptr %0, metadata !5456, metadata !DIExpression()), !dbg !5460
  call void @llvm.dbg.value(metadata i64 %9, metadata !5459, metadata !DIExpression()), !dbg !5460
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5462
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #49, !dbg !5463
  br label %12, !dbg !5464

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5448
  ret ptr %13, !dbg !5465
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5466 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !5473
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5469, metadata !DIExpression(), metadata !5473, metadata ptr %2, metadata !DIExpression()), !dbg !5474
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5468, metadata !DIExpression()), !dbg !5474
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #41, !dbg !5475
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #41, !dbg !5476
  %4 = icmp eq i32 %3, 0, !dbg !5476
  br i1 %4, label %5, label %12, !dbg !5478

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5479, metadata !DIExpression()), !dbg !5483
  call void @llvm.dbg.value(metadata !1119, metadata !5482, metadata !DIExpression()), !dbg !5483
  %6 = load i16, ptr %2, align 16, !dbg !5486
  %7 = icmp eq i16 %6, 67, !dbg !5486
  br i1 %7, label %11, label %8, !dbg !5487

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5479, metadata !DIExpression()), !dbg !5488
  call void @llvm.dbg.value(metadata ptr @.str.1.210, metadata !5482, metadata !DIExpression()), !dbg !5488
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.210, i64 6), !dbg !5490
  %10 = icmp eq i32 %9, 0, !dbg !5491
  br i1 %10, label %11, label %12, !dbg !5492

11:                                               ; preds = %8, %5
  br label %12, !dbg !5493

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5474
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #41, !dbg !5494
  ret i1 %13, !dbg !5494
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5495 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5499, metadata !DIExpression()), !dbg !5502
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5500, metadata !DIExpression()), !dbg !5502
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5501, metadata !DIExpression()), !dbg !5502
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #41, !dbg !5503
  ret i32 %4, !dbg !5504
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5505 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5509, metadata !DIExpression()), !dbg !5510
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #41, !dbg !5511
  ret ptr %2, !dbg !5512
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5513 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5515, metadata !DIExpression()), !dbg !5517
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !5518
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5516, metadata !DIExpression()), !dbg !5517
  ret ptr %2, !dbg !5519
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5520 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5522, metadata !DIExpression()), !dbg !5529
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5523, metadata !DIExpression()), !dbg !5529
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5524, metadata !DIExpression()), !dbg !5529
  call void @llvm.dbg.value(metadata i32 %0, metadata !5515, metadata !DIExpression()), !dbg !5530
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !5532
  call void @llvm.dbg.value(metadata ptr %4, metadata !5516, metadata !DIExpression()), !dbg !5530
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5525, metadata !DIExpression()), !dbg !5529
  %5 = icmp eq ptr %4, null, !dbg !5533
  br i1 %5, label %6, label %9, !dbg !5534

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5535
  br i1 %7, label %19, label %8, !dbg !5538

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5539, !tbaa !1161
  br label %19, !dbg !5540

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #42, !dbg !5541
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5526, metadata !DIExpression()), !dbg !5542
  %11 = icmp ult i64 %10, %2, !dbg !5543
  br i1 %11, label %12, label %14, !dbg !5545

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5546
  call void @llvm.dbg.value(metadata ptr %1, metadata !5548, metadata !DIExpression()), !dbg !5553
  call void @llvm.dbg.value(metadata ptr %4, metadata !5551, metadata !DIExpression()), !dbg !5553
  call void @llvm.dbg.value(metadata i64 %13, metadata !5552, metadata !DIExpression()), !dbg !5553
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #41, !dbg !5555
  br label %19, !dbg !5556

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5557
  br i1 %15, label %19, label %16, !dbg !5560

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5561
  call void @llvm.dbg.value(metadata ptr %1, metadata !5548, metadata !DIExpression()), !dbg !5563
  call void @llvm.dbg.value(metadata ptr %4, metadata !5551, metadata !DIExpression()), !dbg !5563
  call void @llvm.dbg.value(metadata i64 %17, metadata !5552, metadata !DIExpression()), !dbg !5563
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #41, !dbg !5565
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5566
  store i8 0, ptr %18, align 1, !dbg !5567, !tbaa !1161
  br label %19, !dbg !5568

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5569
  ret i32 %20, !dbg !5570
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
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind willreturn memory(argmem: read) }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nofree nounwind willreturn memory(argmem: readwrite) }
attributes #30 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #39 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nounwind }
attributes #42 = { nounwind willreturn memory(read) }
attributes #43 = { noreturn nounwind }
attributes #44 = { nounwind willreturn memory(none) }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { nounwind allocsize(0,1) }
attributes #47 = { noreturn }
attributes #48 = { cold }
attributes #49 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!105, !984, !648, !988, !652, !667, !952, !990, !715, !729, !777, !857, !992, !944, !999, !1032, !1034, !1036, !1038, !1040, !968, !1042, !1044, !1048, !1050}
!llvm.ident = !{!1052, !1052, !1052, !1052, !1052, !1052, !1052, !1052, !1052, !1052, !1052, !1052, !1052, !1052, !1052, !1052, !1052, !1052, !1052, !1052, !1052, !1052, !1052, !1052, !1052}
!llvm.module.flags = !{!1053, !1054, !1055, !1056, !1057, !1058, !1059}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/env.c", directory: "/src", checksumkind: CSK_MD5, checksum: "55d1f1c6ffacbefe85ee74f1d7b2c27b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!117 = !DIEnumerator(name: "DEFAULT_SIGNAL_OPTION", value: 128)
!118 = !DIEnumerator(name: "IGNORE_SIGNAL_OPTION", value: 129)
!119 = !DIEnumerator(name: "BLOCK_SIGNAL_OPTION", value: 130)
!120 = !DIEnumerator(name: "LIST_SIGNAL_HANDLING_OPTION", value: 131)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !108, line: 337, baseType: !122, size: 32, elements: !123)
!122 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!123 = !{!124, !125}
!124 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!125 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
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
!328 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !331)
!330 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!353 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!519 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!549 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "c2b978aaf49d5c0e2b1e9c2e1b7f7848")
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !551, line: 8, baseType: !552)
!551 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "acc6b14c0967857fec362a8d433e1cf2")
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
!666 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !667, file: !668, line: 66, type: !710, isLocal: false, isDefinition: true)
!667 = distinct !DICompileUnit(language: DW_LANG_C11, file: !668, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !669, globals: !670, splitDebugInlining: false, nameTableKind: None)
!668 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!669 = !{!164, !171}
!670 = !{!671, !673, !692, !694, !696, !698, !665, !700, !702, !704, !706, !708}
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !668, line: 272, type: !265, isLocal: true, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(name: "old_file_name", scope: !675, file: !668, line: 304, type: !169, isLocal: true, isDefinition: true)
!675 = distinct !DISubprogram(name: "verror_at_line", scope: !668, file: !668, line: 298, type: !676, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !685)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !122, !122, !169, !109, !169, !678}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !680)
!680 = !{!681, !682, !683, !684}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !679, file: !668, baseType: !109, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !679, file: !668, baseType: !109, size: 32, offset: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !679, file: !668, baseType: !164, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !679, file: !668, baseType: !164, size: 64, offset: 128)
!685 = !{!686, !687, !688, !689, !690, !691}
!686 = !DILocalVariable(name: "status", arg: 1, scope: !675, file: !668, line: 298, type: !122)
!687 = !DILocalVariable(name: "errnum", arg: 2, scope: !675, file: !668, line: 298, type: !122)
!688 = !DILocalVariable(name: "file_name", arg: 3, scope: !675, file: !668, line: 298, type: !169)
!689 = !DILocalVariable(name: "line_number", arg: 4, scope: !675, file: !668, line: 298, type: !109)
!690 = !DILocalVariable(name: "message", arg: 5, scope: !675, file: !668, line: 298, type: !169)
!691 = !DILocalVariable(name: "args", arg: 6, scope: !675, file: !668, line: 298, type: !678)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(name: "old_line_number", scope: !675, file: !668, line: 305, type: !109, isLocal: true, isDefinition: true)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !668, line: 338, type: !19, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !668, line: 346, type: !412, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !668, line: 346, type: !213, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(name: "error_message_count", scope: !667, file: !668, line: 69, type: !109, isLocal: false, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !667, file: !668, line: 295, type: !122, isLocal: false, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !668, line: 208, type: !291, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !668, line: 208, type: !503, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !668, line: 214, type: !265, isLocal: true, isDefinition: true)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{null}
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(name: "program_name", scope: !715, file: !716, line: 31, type: !169, isLocal: false, isDefinition: true)
!715 = distinct !DICompileUnit(language: DW_LANG_C11, file: !716, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !717, globals: !718, splitDebugInlining: false, nameTableKind: None)
!716 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!717 = !{!164, !163}
!718 = !{!713, !719, !721}
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(scope: null, file: !716, line: 46, type: !412, isLocal: true, isDefinition: true)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !716, line: 49, type: !19, isLocal: true, isDefinition: true)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(name: "utf07FF", scope: !725, file: !726, line: 46, type: !753, isLocal: true, isDefinition: true)
!725 = distinct !DISubprogram(name: "proper_name_lite", scope: !726, file: !726, line: 38, type: !727, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !731)
!726 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!727 = !DISubroutineType(types: !728)
!728 = !{!169, !169, !169}
!729 = distinct !DICompileUnit(language: DW_LANG_C11, file: !726, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !730, splitDebugInlining: false, nameTableKind: None)
!730 = !{!723}
!731 = !{!732, !733, !734, !735, !740}
!732 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !725, file: !726, line: 38, type: !169)
!733 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !725, file: !726, line: 38, type: !169)
!734 = !DILocalVariable(name: "translation", scope: !725, file: !726, line: 40, type: !169)
!735 = !DILocalVariable(name: "w", scope: !725, file: !726, line: 47, type: !736)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !737, line: 37, baseType: !738)
!737 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !353, line: 57, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !353, line: 42, baseType: !109)
!740 = !DILocalVariable(name: "mbs", scope: !725, file: !726, line: 48, type: !741)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !742, line: 6, baseType: !743)
!742 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !744, line: 21, baseType: !745)
!744 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !744, line: 13, size: 64, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !745, file: !744, line: 15, baseType: !122, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !745, file: !744, line: 20, baseType: !749, size: 32, offset: 32)
!749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !745, file: !744, line: 16, size: 32, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !749, file: !744, line: 18, baseType: !109, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !749, file: !744, line: 19, baseType: !19, size: 32)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 16, elements: !214)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !756, line: 78, type: !412, isLocal: true, isDefinition: true)
!756 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !756, line: 79, type: !391, isLocal: true, isDefinition: true)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !756, line: 80, type: !208, isLocal: true, isDefinition: true)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !756, line: 81, type: !208, isLocal: true, isDefinition: true)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !756, line: 82, type: !374, isLocal: true, isDefinition: true)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !756, line: 83, type: !213, isLocal: true, isDefinition: true)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(scope: null, file: !756, line: 84, type: !412, isLocal: true, isDefinition: true)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(scope: null, file: !756, line: 85, type: !291, isLocal: true, isDefinition: true)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(scope: null, file: !756, line: 86, type: !291, isLocal: true, isDefinition: true)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(scope: null, file: !756, line: 87, type: !412, isLocal: true, isDefinition: true)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !777, file: !756, line: 76, type: !851, isLocal: false, isDefinition: true)
!777 = distinct !DICompileUnit(language: DW_LANG_C11, file: !756, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !778, retainedTypes: !786, globals: !787, splitDebugInlining: false, nameTableKind: None)
!778 = !{!779, !781, !140}
!779 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !780, line: 42, baseType: !109, size: 32, elements: !128)
!780 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!781 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !780, line: 254, baseType: !109, size: 32, elements: !782)
!782 = !{!783, !784, !785}
!783 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!784 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!785 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!786 = !{!164, !122, !165, !166}
!787 = !{!754, !757, !759, !761, !763, !765, !767, !769, !771, !773, !775, !788, !792, !802, !804, !809, !811, !813, !815, !817, !840, !847, !849}
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !777, file: !756, line: 92, type: !790, isLocal: false, isDefinition: true)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 320, elements: !96)
!791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !779)
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !777, file: !756, line: 1040, type: !794, isLocal: false, isDefinition: true)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !756, line: 56, size: 448, elements: !795)
!795 = !{!796, !797, !798, !800, !801}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !794, file: !756, line: 59, baseType: !779, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !794, file: !756, line: 62, baseType: !122, size: 32, offset: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !794, file: !756, line: 66, baseType: !799, size: 256, offset: 64)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 256, elements: !413)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !794, file: !756, line: 69, baseType: !169, size: 64, offset: 320)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !794, file: !756, line: 72, baseType: !169, size: 64, offset: 384)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !777, file: !756, line: 107, type: !794, isLocal: true, isDefinition: true)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(name: "slot0", scope: !777, file: !756, line: 831, type: !806, isLocal: true, isDefinition: true)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !807)
!807 = !{!808}
!808 = !DISubrange(count: 256)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(scope: null, file: !756, line: 321, type: !213, isLocal: true, isDefinition: true)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(scope: null, file: !756, line: 357, type: !213, isLocal: true, isDefinition: true)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !756, line: 358, type: !213, isLocal: true, isDefinition: true)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !756, line: 199, type: !291, isLocal: true, isDefinition: true)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(name: "quote", scope: !819, file: !756, line: 228, type: !838, isLocal: true, isDefinition: true)
!819 = distinct !DISubprogram(name: "gettext_quote", scope: !756, file: !756, line: 197, type: !820, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !822)
!820 = !DISubroutineType(types: !821)
!821 = !{!169, !169, !779}
!822 = !{!823, !824, !825, !826, !827}
!823 = !DILocalVariable(name: "msgid", arg: 1, scope: !819, file: !756, line: 197, type: !169)
!824 = !DILocalVariable(name: "s", arg: 2, scope: !819, file: !756, line: 197, type: !779)
!825 = !DILocalVariable(name: "translation", scope: !819, file: !756, line: 199, type: !169)
!826 = !DILocalVariable(name: "w", scope: !819, file: !756, line: 229, type: !736)
!827 = !DILocalVariable(name: "mbs", scope: !819, file: !756, line: 230, type: !828)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !742, line: 6, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !744, line: 21, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !744, line: 13, size: 64, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !830, file: !744, line: 15, baseType: !122, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !830, file: !744, line: 20, baseType: !834, size: 32, offset: 32)
!834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !744, line: 16, size: 32, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !834, file: !744, line: 18, baseType: !109, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !834, file: !744, line: 19, baseType: !19, size: 32)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 64, elements: !839)
!839 = !{!215, !21}
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(name: "slotvec", scope: !777, file: !756, line: 834, type: !842, isLocal: true, isDefinition: true)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !756, line: 823, size: 128, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !843, file: !756, line: 825, baseType: !166, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !843, file: !756, line: 826, baseType: !163, size: 64, offset: 64)
!847 = !DIGlobalVariableExpression(var: !848, expr: !DIExpression())
!848 = distinct !DIGlobalVariable(name: "nslots", scope: !777, file: !756, line: 832, type: !122, isLocal: true, isDefinition: true)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(name: "slotvec0", scope: !777, file: !756, line: 833, type: !843, isLocal: true, isDefinition: true)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 704, elements: !853)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!853 = !{!854}
!854 = !DISubrange(count: 11)
!855 = !DIGlobalVariableExpression(var: !856, expr: !DIExpression())
!856 = distinct !DIGlobalVariable(name: "numname_table", scope: !857, file: !858, line: 43, type: !867, isLocal: true, isDefinition: true)
!857 = distinct !DICompileUnit(language: DW_LANG_C11, file: !858, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-sig2str.o -MD -MP -MF lib/.deps/libcoreutils_a-sig2str.Tpo -c lib/sig2str.c -o lib/.libcoreutils_a-sig2str.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !859, globals: !860, splitDebugInlining: false, nameTableKind: None)
!858 = !DIFile(filename: "lib/sig2str.c", directory: "/src", checksumkind: CSK_MD5, checksum: "828136ef7ede39101f7053cda7cea598")
!859 = !{!109}
!860 = !{!861, !863, !865, !855}
!861 = !DIGlobalVariableExpression(var: !862, expr: !DIExpression())
!862 = distinct !DIGlobalVariable(scope: null, file: !858, line: 351, type: !391, isLocal: true, isDefinition: true)
!863 = !DIGlobalVariableExpression(var: !864, expr: !DIExpression())
!864 = distinct !DIGlobalVariable(scope: null, file: !858, line: 356, type: !391, isLocal: true, isDefinition: true)
!865 = !DIGlobalVariableExpression(var: !866, expr: !DIExpression())
!866 = distinct !DIGlobalVariable(scope: null, file: !858, line: 362, type: !19, isLocal: true, isDefinition: true)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !868, size: 3360, elements: !873)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numname", file: !858, line: 43, size: 96, elements: !869)
!869 = !{!870, !871}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !868, file: !858, line: 43, baseType: !122, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !868, file: !858, line: 43, baseType: !872, size: 64, offset: 32)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 64, elements: !413)
!873 = !{!874}
!874 = !DISubrange(count: 35)
!875 = !DIGlobalVariableExpression(var: !876, expr: !DIExpression())
!876 = distinct !DIGlobalVariable(scope: null, file: !877, line: 67, type: !476, isLocal: true, isDefinition: true)
!877 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!878 = !DIGlobalVariableExpression(var: !879, expr: !DIExpression())
!879 = distinct !DIGlobalVariable(scope: null, file: !877, line: 69, type: !291, isLocal: true, isDefinition: true)
!880 = !DIGlobalVariableExpression(var: !881, expr: !DIExpression())
!881 = distinct !DIGlobalVariable(scope: null, file: !877, line: 83, type: !291, isLocal: true, isDefinition: true)
!882 = !DIGlobalVariableExpression(var: !883, expr: !DIExpression())
!883 = distinct !DIGlobalVariable(scope: null, file: !877, line: 83, type: !19, isLocal: true, isDefinition: true)
!884 = !DIGlobalVariableExpression(var: !885, expr: !DIExpression())
!885 = distinct !DIGlobalVariable(scope: null, file: !877, line: 85, type: !213, isLocal: true, isDefinition: true)
!886 = !DIGlobalVariableExpression(var: !887, expr: !DIExpression())
!887 = distinct !DIGlobalVariable(scope: null, file: !877, line: 88, type: !888, isLocal: true, isDefinition: true)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !889)
!889 = !{!890}
!890 = !DISubrange(count: 171)
!891 = !DIGlobalVariableExpression(var: !892, expr: !DIExpression())
!892 = distinct !DIGlobalVariable(scope: null, file: !877, line: 88, type: !591, isLocal: true, isDefinition: true)
!893 = !DIGlobalVariableExpression(var: !894, expr: !DIExpression())
!894 = distinct !DIGlobalVariable(scope: null, file: !877, line: 105, type: !203, isLocal: true, isDefinition: true)
!895 = !DIGlobalVariableExpression(var: !896, expr: !DIExpression())
!896 = distinct !DIGlobalVariable(scope: null, file: !877, line: 109, type: !183, isLocal: true, isDefinition: true)
!897 = !DIGlobalVariableExpression(var: !898, expr: !DIExpression())
!898 = distinct !DIGlobalVariable(scope: null, file: !877, line: 113, type: !899, isLocal: true, isDefinition: true)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !900)
!900 = !{!901}
!901 = !DISubrange(count: 28)
!902 = !DIGlobalVariableExpression(var: !903, expr: !DIExpression())
!903 = distinct !DIGlobalVariable(scope: null, file: !877, line: 120, type: !904, isLocal: true, isDefinition: true)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !905)
!905 = !{!906}
!906 = !DISubrange(count: 32)
!907 = !DIGlobalVariableExpression(var: !908, expr: !DIExpression())
!908 = distinct !DIGlobalVariable(scope: null, file: !877, line: 127, type: !909, isLocal: true, isDefinition: true)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !910)
!910 = !{!911}
!911 = !DISubrange(count: 36)
!912 = !DIGlobalVariableExpression(var: !913, expr: !DIExpression())
!913 = distinct !DIGlobalVariable(scope: null, file: !877, line: 134, type: !256, isLocal: true, isDefinition: true)
!914 = !DIGlobalVariableExpression(var: !915, expr: !DIExpression())
!915 = distinct !DIGlobalVariable(scope: null, file: !877, line: 142, type: !916, isLocal: true, isDefinition: true)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !917)
!917 = !{!918}
!918 = !DISubrange(count: 44)
!919 = !DIGlobalVariableExpression(var: !920, expr: !DIExpression())
!920 = distinct !DIGlobalVariable(scope: null, file: !877, line: 150, type: !566, isLocal: true, isDefinition: true)
!921 = !DIGlobalVariableExpression(var: !922, expr: !DIExpression())
!922 = distinct !DIGlobalVariable(scope: null, file: !877, line: 159, type: !923, isLocal: true, isDefinition: true)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !924)
!924 = !{!925}
!925 = !DISubrange(count: 52)
!926 = !DIGlobalVariableExpression(var: !927, expr: !DIExpression())
!927 = distinct !DIGlobalVariable(scope: null, file: !877, line: 170, type: !14, isLocal: true, isDefinition: true)
!928 = !DIGlobalVariableExpression(var: !929, expr: !DIExpression())
!929 = distinct !DIGlobalVariable(scope: null, file: !877, line: 248, type: !374, isLocal: true, isDefinition: true)
!930 = !DIGlobalVariableExpression(var: !931, expr: !DIExpression())
!931 = distinct !DIGlobalVariable(scope: null, file: !877, line: 248, type: !455, isLocal: true, isDefinition: true)
!932 = !DIGlobalVariableExpression(var: !933, expr: !DIExpression())
!933 = distinct !DIGlobalVariable(scope: null, file: !877, line: 254, type: !374, isLocal: true, isDefinition: true)
!934 = !DIGlobalVariableExpression(var: !935, expr: !DIExpression())
!935 = distinct !DIGlobalVariable(scope: null, file: !877, line: 254, type: !193, isLocal: true, isDefinition: true)
!936 = !DIGlobalVariableExpression(var: !937, expr: !DIExpression())
!937 = distinct !DIGlobalVariable(scope: null, file: !877, line: 254, type: !256, isLocal: true, isDefinition: true)
!938 = !DIGlobalVariableExpression(var: !939, expr: !DIExpression())
!939 = distinct !DIGlobalVariable(scope: null, file: !877, line: 259, type: !3, isLocal: true, isDefinition: true)
!940 = !DIGlobalVariableExpression(var: !941, expr: !DIExpression())
!941 = distinct !DIGlobalVariable(scope: null, file: !877, line: 259, type: !576, isLocal: true, isDefinition: true)
!942 = !DIGlobalVariableExpression(var: !943, expr: !DIExpression())
!943 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !944, file: !945, line: 26, type: !947, isLocal: false, isDefinition: true)
!944 = distinct !DICompileUnit(language: DW_LANG_C11, file: !945, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !946, splitDebugInlining: false, nameTableKind: None)
!945 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!946 = !{!942}
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 376, elements: !948)
!948 = !{!949}
!949 = !DISubrange(count: 47)
!950 = !DIGlobalVariableExpression(var: !951, expr: !DIExpression())
!951 = distinct !DIGlobalVariable(name: "exit_failure", scope: !952, file: !953, line: 24, type: !955, isLocal: false, isDefinition: true)
!952 = distinct !DICompileUnit(language: DW_LANG_C11, file: !953, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !954, splitDebugInlining: false, nameTableKind: None)
!953 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!954 = !{!950}
!955 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !122)
!956 = !DIGlobalVariableExpression(var: !957, expr: !DIExpression())
!957 = distinct !DIGlobalVariable(scope: null, file: !958, line: 34, type: !286, isLocal: true, isDefinition: true)
!958 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!959 = !DIGlobalVariableExpression(var: !960, expr: !DIExpression())
!960 = distinct !DIGlobalVariable(scope: null, file: !958, line: 34, type: !291, isLocal: true, isDefinition: true)
!961 = !DIGlobalVariableExpression(var: !962, expr: !DIExpression())
!962 = distinct !DIGlobalVariable(scope: null, file: !958, line: 34, type: !198, isLocal: true, isDefinition: true)
!963 = !DIGlobalVariableExpression(var: !964, expr: !DIExpression())
!964 = distinct !DIGlobalVariable(scope: null, file: !965, line: 108, type: !90, isLocal: true, isDefinition: true)
!965 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!966 = !DIGlobalVariableExpression(var: !967, expr: !DIExpression())
!967 = distinct !DIGlobalVariable(name: "internal_state", scope: !968, file: !965, line: 97, type: !971, isLocal: true, isDefinition: true)
!968 = distinct !DICompileUnit(language: DW_LANG_C11, file: !965, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !969, globals: !970, splitDebugInlining: false, nameTableKind: None)
!969 = !{!164, !166, !171}
!970 = !{!963, !966}
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !742, line: 6, baseType: !972)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !744, line: 21, baseType: !973)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !744, line: 13, size: 64, elements: !974)
!974 = !{!975, !976}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !973, file: !744, line: 15, baseType: !122, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !973, file: !744, line: 20, baseType: !977, size: 32, offset: 32)
!977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !973, file: !744, line: 16, size: 32, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !977, file: !744, line: 18, baseType: !109, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !977, file: !744, line: 19, baseType: !19, size: 32)
!981 = !DIGlobalVariableExpression(var: !982, expr: !DIExpression())
!982 = distinct !DIGlobalVariable(scope: null, file: !983, line: 35, type: !391, isLocal: true, isDefinition: true)
!983 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!984 = distinct !DICompileUnit(language: DW_LANG_C11, file: !642, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/operand2sig.o -MD -MP -MF src/.deps/operand2sig.Tpo -c src/operand2sig.c -o src/.operand2sig.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !985, splitDebugInlining: false, nameTableKind: None)
!985 = !{!986, !640}
!986 = !DIGlobalVariableExpression(var: !987, expr: !DIExpression())
!987 = distinct !DIGlobalVariable(scope: null, file: !642, line: 72, type: !466, isLocal: true, isDefinition: true)
!988 = distinct !DICompileUnit(language: DW_LANG_C11, file: !989, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-c-ctype.o -MD -MP -MF lib/.deps/libcoreutils_a-c-ctype.Tpo -c lib/c-ctype.c -o lib/.libcoreutils_a-c-ctype.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!989 = !DIFile(filename: "lib/c-ctype.c", directory: "/src", checksumkind: CSK_MD5, checksum: "245df19f202f37bba31cfa46647ceb93")
!990 = distinct !DICompileUnit(language: DW_LANG_C11, file: !991, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!991 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!992 = distinct !DICompileUnit(language: DW_LANG_C11, file: !877, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !993, retainedTypes: !997, globals: !998, splitDebugInlining: false, nameTableKind: None)
!993 = !{!994}
!994 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !877, line: 40, baseType: !109, size: 32, elements: !995)
!995 = !{!996}
!996 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!997 = !{!164}
!998 = !{!875, !878, !880, !882, !884, !886, !891, !893, !895, !897, !902, !907, !912, !914, !919, !921, !926, !928, !930, !932, !934, !936, !938, !940}
!999 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1000, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !1001, retainedTypes: !1031, splitDebugInlining: false, nameTableKind: None)
!1000 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!1001 = !{!1002, !1014}
!1002 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1003, file: !1000, line: 188, baseType: !109, size: 32, elements: !1012)
!1003 = distinct !DISubprogram(name: "x2nrealloc", scope: !1000, file: !1000, line: 176, type: !1004, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !1007)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!164, !164, !1006, !166}
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!1007 = !{!1008, !1009, !1010, !1011}
!1008 = !DILocalVariable(name: "p", arg: 1, scope: !1003, file: !1000, line: 176, type: !164)
!1009 = !DILocalVariable(name: "pn", arg: 2, scope: !1003, file: !1000, line: 176, type: !1006)
!1010 = !DILocalVariable(name: "s", arg: 3, scope: !1003, file: !1000, line: 176, type: !166)
!1011 = !DILocalVariable(name: "n", scope: !1003, file: !1000, line: 178, type: !166)
!1012 = !{!1013}
!1013 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!1014 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1015, file: !1000, line: 228, baseType: !109, size: 32, elements: !1012)
!1015 = distinct !DISubprogram(name: "xpalloc", scope: !1000, file: !1000, line: 223, type: !1016, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !1021)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!164, !164, !1018, !1019, !530, !1019}
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !1020, line: 130, baseType: !530)
!1020 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!1021 = !{!1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030}
!1022 = !DILocalVariable(name: "pa", arg: 1, scope: !1015, file: !1000, line: 223, type: !164)
!1023 = !DILocalVariable(name: "pn", arg: 2, scope: !1015, file: !1000, line: 223, type: !1018)
!1024 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !1015, file: !1000, line: 223, type: !1019)
!1025 = !DILocalVariable(name: "n_max", arg: 4, scope: !1015, file: !1000, line: 223, type: !530)
!1026 = !DILocalVariable(name: "s", arg: 5, scope: !1015, file: !1000, line: 223, type: !1019)
!1027 = !DILocalVariable(name: "n0", scope: !1015, file: !1000, line: 230, type: !1019)
!1028 = !DILocalVariable(name: "n", scope: !1015, file: !1000, line: 237, type: !1019)
!1029 = !DILocalVariable(name: "nbytes", scope: !1015, file: !1000, line: 248, type: !1019)
!1030 = !DILocalVariable(name: "adjusted_nbytes", scope: !1015, file: !1000, line: 252, type: !1019)
!1031 = !{!163, !164}
!1032 = distinct !DICompileUnit(language: DW_LANG_C11, file: !958, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1033, splitDebugInlining: false, nameTableKind: None)
!1033 = !{!956, !959, !961}
!1034 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1035, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1035 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1036 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1037, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1037 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!1038 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1039, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !997, splitDebugInlining: false, nameTableKind: None)
!1039 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!1040 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1041, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !997, splitDebugInlining: false, nameTableKind: None)
!1041 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!1042 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1043, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !997, splitDebugInlining: false, nameTableKind: None)
!1043 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1044 = distinct !DICompileUnit(language: DW_LANG_C11, file: !983, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1045, splitDebugInlining: false, nameTableKind: None)
!1045 = !{!1046, !981}
!1046 = !DIGlobalVariableExpression(var: !1047, expr: !DIExpression())
!1047 = distinct !DIGlobalVariable(scope: null, file: !983, line: 35, type: !213, isLocal: true, isDefinition: true)
!1048 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1049, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1049 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1050 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1051, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !997, splitDebugInlining: false, nameTableKind: None)
!1051 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1052 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1053 = !{i32 7, !"Dwarf Version", i32 5}
!1054 = !{i32 2, !"Debug Info Version", i32 3}
!1055 = !{i32 1, !"wchar_size", i32 4}
!1056 = !{i32 8, !"PIC Level", i32 2}
!1057 = !{i32 7, !"PIE Level", i32 2}
!1058 = !{i32 7, !"uwtable", i32 2}
!1059 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!1060 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 107, type: !178, scopeLine: 108, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1061)
!1061 = !{!1062}
!1062 = !DILocalVariable(name: "status", arg: 1, scope: !1060, file: !2, line: 107, type: !122)
!1063 = !DILocation(line: 0, scope: !1060)
!1064 = !DILocation(line: 109, column: 14, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 109, column: 7)
!1066 = !DILocation(line: 109, column: 7, scope: !1060)
!1067 = !DILocation(line: 110, column: 5, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 110, column: 5)
!1069 = !{!1070, !1070, i64 0}
!1070 = !{!"any pointer", !1071, i64 0}
!1071 = !{!"omnipotent char", !1072, i64 0}
!1072 = !{!"Simple C/C++ TBAA"}
!1073 = !DILocation(line: 113, column: 7, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 112, column: 5)
!1075 = !DILocation(line: 116, column: 7, scope: !1074)
!1076 = !DILocation(line: 736, column: 3, scope: !1077, inlinedAt: !1078)
!1077 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !108, file: !108, line: 734, type: !711, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105)
!1078 = distinct !DILocation(line: 120, column: 7, scope: !1074)
!1079 = !DILocation(line: 122, column: 7, scope: !1074)
!1080 = !DILocation(line: 126, column: 7, scope: !1074)
!1081 = !DILocation(line: 130, column: 7, scope: !1074)
!1082 = !DILocation(line: 134, column: 7, scope: !1074)
!1083 = !DILocation(line: 138, column: 7, scope: !1074)
!1084 = !DILocation(line: 142, column: 7, scope: !1074)
!1085 = !DILocation(line: 147, column: 7, scope: !1074)
!1086 = !DILocation(line: 151, column: 7, scope: !1074)
!1087 = !DILocation(line: 155, column: 7, scope: !1074)
!1088 = !DILocation(line: 159, column: 7, scope: !1074)
!1089 = !DILocation(line: 163, column: 7, scope: !1074)
!1090 = !DILocation(line: 167, column: 7, scope: !1074)
!1091 = !DILocation(line: 168, column: 7, scope: !1074)
!1092 = !DILocation(line: 169, column: 7, scope: !1074)
!1093 = !DILocation(line: 173, column: 7, scope: !1074)
!1094 = !DILocalVariable(name: "program", arg: 1, scope: !1095, file: !108, line: 824, type: !169)
!1095 = distinct !DISubprogram(name: "emit_exec_status", scope: !108, file: !108, line: 824, type: !1096, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1098)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{null, !169}
!1098 = !{!1094}
!1099 = !DILocation(line: 0, scope: !1095, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 179, column: 7, scope: !1074)
!1101 = !DILocation(line: 826, column: 7, scope: !1095, inlinedAt: !1100)
!1102 = !DILocalVariable(name: "program", arg: 1, scope: !1103, file: !108, line: 836, type: !169)
!1103 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !108, file: !108, line: 836, type: !1096, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1104)
!1104 = !{!1102, !1105, !1112, !1113, !1115, !1116}
!1105 = !DILocalVariable(name: "infomap", scope: !1103, file: !108, line: 838, type: !1106)
!1106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1107, size: 896, elements: !292)
!1107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1108)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1103, file: !108, line: 838, size: 128, elements: !1109)
!1109 = !{!1110, !1111}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1108, file: !108, line: 838, baseType: !169, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1108, file: !108, line: 838, baseType: !169, size: 64, offset: 64)
!1112 = !DILocalVariable(name: "node", scope: !1103, file: !108, line: 848, type: !169)
!1113 = !DILocalVariable(name: "map_prog", scope: !1103, file: !108, line: 849, type: !1114)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1115 = !DILocalVariable(name: "lc_messages", scope: !1103, file: !108, line: 861, type: !169)
!1116 = !DILocalVariable(name: "url_program", scope: !1103, file: !108, line: 874, type: !169)
!1117 = !DILocation(line: 0, scope: !1103, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 180, column: 7, scope: !1074)
!1119 = !{}
!1120 = !DILocation(line: 857, column: 3, scope: !1103, inlinedAt: !1118)
!1121 = !DILocation(line: 861, column: 29, scope: !1103, inlinedAt: !1118)
!1122 = !DILocation(line: 862, column: 7, scope: !1123, inlinedAt: !1118)
!1123 = distinct !DILexicalBlock(scope: !1103, file: !108, line: 862, column: 7)
!1124 = !DILocation(line: 862, column: 19, scope: !1123, inlinedAt: !1118)
!1125 = !DILocation(line: 862, column: 22, scope: !1123, inlinedAt: !1118)
!1126 = !DILocation(line: 862, column: 7, scope: !1103, inlinedAt: !1118)
!1127 = !DILocation(line: 868, column: 7, scope: !1128, inlinedAt: !1118)
!1128 = distinct !DILexicalBlock(scope: !1123, file: !108, line: 863, column: 5)
!1129 = !DILocation(line: 870, column: 5, scope: !1128, inlinedAt: !1118)
!1130 = !DILocation(line: 875, column: 3, scope: !1103, inlinedAt: !1118)
!1131 = !DILocation(line: 877, column: 3, scope: !1103, inlinedAt: !1118)
!1132 = !DILocation(line: 182, column: 3, scope: !1060)
!1133 = !DISubprogram(name: "dcgettext", scope: !1134, file: !1134, line: 51, type: !1135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1134 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!163, !169, !169, !122}
!1137 = !DISubprogram(name: "__fprintf_chk", scope: !1138, file: !1138, line: 93, type: !1139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1138 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!122, !1141, !122, !1142, null}
!1141 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !326)
!1142 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !169)
!1143 = !DISubprogram(name: "__printf_chk", scope: !1138, file: !1138, line: 95, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!122, !122, !1142, null}
!1146 = !DISubprogram(name: "fputs_unlocked", scope: !1147, file: !1147, line: 691, type: !1148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1147 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!122, !1142, !1141}
!1150 = !DILocation(line: 0, scope: !304)
!1151 = !DILocation(line: 581, column: 7, scope: !312)
!1152 = !{!1153, !1153, i64 0}
!1153 = !{!"int", !1071, i64 0}
!1154 = !DILocation(line: 581, column: 19, scope: !312)
!1155 = !DILocation(line: 581, column: 7, scope: !304)
!1156 = !DILocation(line: 585, column: 26, scope: !311)
!1157 = !DILocation(line: 0, scope: !311)
!1158 = !DILocation(line: 586, column: 23, scope: !311)
!1159 = !DILocation(line: 586, column: 28, scope: !311)
!1160 = !DILocation(line: 586, column: 32, scope: !311)
!1161 = !{!1071, !1071, i64 0}
!1162 = !DILocation(line: 586, column: 38, scope: !311)
!1163 = !DILocalVariable(name: "__s1", arg: 1, scope: !1164, file: !1165, line: 1359, type: !169)
!1164 = distinct !DISubprogram(name: "streq", scope: !1165, file: !1165, line: 1359, type: !1166, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1168)
!1165 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!231, !169, !169}
!1168 = !{!1163, !1169}
!1169 = !DILocalVariable(name: "__s2", arg: 2, scope: !1164, file: !1165, line: 1359, type: !169)
!1170 = !DILocation(line: 0, scope: !1164, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 586, column: 41, scope: !311)
!1172 = !DILocation(line: 1361, column: 11, scope: !1164, inlinedAt: !1171)
!1173 = !DILocation(line: 1361, column: 10, scope: !1164, inlinedAt: !1171)
!1174 = !DILocation(line: 586, column: 19, scope: !311)
!1175 = !DILocation(line: 587, column: 5, scope: !311)
!1176 = !DILocation(line: 588, column: 7, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !304, file: !108, line: 588, column: 7)
!1178 = !DILocation(line: 588, column: 7, scope: !304)
!1179 = !DILocation(line: 590, column: 7, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1177, file: !108, line: 589, column: 5)
!1181 = !DILocation(line: 591, column: 7, scope: !1180)
!1182 = !DILocation(line: 595, column: 37, scope: !304)
!1183 = !DILocation(line: 595, column: 35, scope: !304)
!1184 = !DILocation(line: 596, column: 29, scope: !304)
!1185 = !DILocation(line: 597, column: 8, scope: !319)
!1186 = !DILocation(line: 597, column: 7, scope: !304)
!1187 = !DILocation(line: 604, column: 24, scope: !318)
!1188 = !DILocation(line: 604, column: 12, scope: !319)
!1189 = !DILocation(line: 0, scope: !317)
!1190 = !DILocation(line: 610, column: 16, scope: !317)
!1191 = !DILocation(line: 610, column: 7, scope: !317)
!1192 = !DILocation(line: 611, column: 21, scope: !317)
!1193 = !{!1194, !1194, i64 0}
!1194 = !{!"short", !1071, i64 0}
!1195 = !DILocation(line: 611, column: 19, scope: !317)
!1196 = !DILocation(line: 611, column: 16, scope: !317)
!1197 = !DILocation(line: 610, column: 30, scope: !317)
!1198 = distinct !{!1198, !1191, !1192, !1199}
!1199 = !{!"llvm.loop.mustprogress"}
!1200 = !DILocation(line: 612, column: 18, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !317, file: !108, line: 612, column: 11)
!1202 = !DILocation(line: 612, column: 11, scope: !317)
!1203 = !DILocation(line: 620, column: 23, scope: !304)
!1204 = !DILocation(line: 625, column: 39, scope: !304)
!1205 = !DILocation(line: 626, column: 3, scope: !304)
!1206 = !DILocation(line: 626, column: 10, scope: !304)
!1207 = !DILocation(line: 626, column: 21, scope: !304)
!1208 = !DILocation(line: 628, column: 44, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !108, line: 628, column: 11)
!1210 = distinct !DILexicalBlock(scope: !304, file: !108, line: 627, column: 5)
!1211 = !DILocation(line: 628, column: 32, scope: !1209)
!1212 = !DILocation(line: 628, column: 49, scope: !1209)
!1213 = !DILocation(line: 628, column: 11, scope: !1210)
!1214 = !DILocation(line: 630, column: 11, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1210, file: !108, line: 630, column: 11)
!1216 = !DILocation(line: 630, column: 11, scope: !1210)
!1217 = !DILocation(line: 632, column: 26, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !108, line: 632, column: 15)
!1219 = distinct !DILexicalBlock(scope: !1215, file: !108, line: 631, column: 9)
!1220 = !DILocation(line: 632, column: 34, scope: !1218)
!1221 = !DILocation(line: 632, column: 37, scope: !1218)
!1222 = !DILocation(line: 632, column: 15, scope: !1219)
!1223 = !DILocation(line: 636, column: 16, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1219, file: !108, line: 636, column: 15)
!1225 = !DILocation(line: 636, column: 29, scope: !1224)
!1226 = !DILocation(line: 640, column: 16, scope: !1210)
!1227 = distinct !{!1227, !1205, !1228, !1199}
!1228 = !DILocation(line: 641, column: 5, scope: !304)
!1229 = !DILocation(line: 644, column: 3, scope: !304)
!1230 = !DILocation(line: 0, scope: !1164, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 648, column: 31, scope: !304)
!1232 = !DILocation(line: 0, scope: !1164, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 649, column: 31, scope: !304)
!1234 = !DILocation(line: 0, scope: !1164, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 650, column: 31, scope: !304)
!1236 = !DILocation(line: 0, scope: !1164, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 651, column: 31, scope: !304)
!1238 = !DILocation(line: 0, scope: !1164, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 652, column: 31, scope: !304)
!1240 = !DILocation(line: 0, scope: !1164, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 653, column: 31, scope: !304)
!1242 = !DILocation(line: 0, scope: !1164, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 654, column: 31, scope: !304)
!1244 = !DILocation(line: 0, scope: !1164, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 655, column: 31, scope: !304)
!1246 = !DILocation(line: 0, scope: !1164, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 656, column: 31, scope: !304)
!1248 = !DILocation(line: 0, scope: !1164, inlinedAt: !1249)
!1249 = distinct !DILocation(line: 657, column: 31, scope: !304)
!1250 = !DILocation(line: 663, column: 7, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !304, file: !108, line: 663, column: 7)
!1252 = !DILocation(line: 664, column: 7, scope: !1251)
!1253 = !DILocation(line: 664, column: 10, scope: !1251)
!1254 = !DILocation(line: 663, column: 7, scope: !304)
!1255 = !DILocation(line: 669, column: 7, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1251, file: !108, line: 665, column: 5)
!1257 = !DILocation(line: 671, column: 5, scope: !1256)
!1258 = !DILocation(line: 676, column: 7, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1251, file: !108, line: 673, column: 5)
!1260 = !DILocation(line: 679, column: 3, scope: !304)
!1261 = !DILocation(line: 683, column: 3, scope: !304)
!1262 = !DILocation(line: 686, column: 3, scope: !304)
!1263 = !DILocation(line: 688, column: 3, scope: !304)
!1264 = !DILocation(line: 691, column: 3, scope: !304)
!1265 = !DILocation(line: 695, column: 3, scope: !304)
!1266 = !DILocation(line: 696, column: 1, scope: !304)
!1267 = !DISubprogram(name: "setlocale", scope: !1268, file: !1268, line: 122, type: !1269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1268 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!163, !122, !169}
!1271 = !DISubprogram(name: "strncmp", scope: !1272, file: !1272, line: 159, type: !1273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1272 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!122, !169, !169, !166}
!1275 = !DISubprogram(name: "exit", scope: !1276, file: !1276, line: 624, type: !178, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1276 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1277 = !DISubprogram(name: "getenv", scope: !1276, file: !1276, line: 641, type: !1278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!163, !169}
!1280 = !DISubprogram(name: "strcmp", scope: !1272, file: !1272, line: 156, type: !1281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!122, !169, !169}
!1283 = !DISubprogram(name: "strspn", scope: !1272, file: !1272, line: 297, type: !1284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!168, !169, !169}
!1286 = !DISubprogram(name: "strchr", scope: !1272, file: !1272, line: 246, type: !1287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!163, !169, !122}
!1289 = !DISubprogram(name: "__ctype_b_loc", scope: !141, file: !141, line: 79, type: !1290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!1292}
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!1295 = !DISubprogram(name: "strcspn", scope: !1272, file: !1272, line: 293, type: !1284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1296 = !DISubprogram(name: "fwrite_unlocked", scope: !1147, file: !1147, line: 704, type: !1297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!166, !1299, !166, !166, !1141}
!1299 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1302 = distinct !DIAssignID()
!1303 = distinct !DIAssignID()
!1304 = distinct !DIAssignID()
!1305 = distinct !DIAssignID()
!1306 = distinct !DIAssignID()
!1307 = distinct !DIAssignID()
!1308 = distinct !DIAssignID()
!1309 = distinct !DIAssignID()
!1310 = !DILocation(line: 0, scope: !223)
!1311 = !DILocation(line: 772, column: 21, scope: !223)
!1312 = !DILocation(line: 772, column: 3, scope: !223)
!1313 = !DILocation(line: 773, column: 3, scope: !223)
!1314 = !DILocation(line: 774, column: 3, scope: !223)
!1315 = !DILocation(line: 775, column: 3, scope: !223)
!1316 = !DILocalVariable(name: "status", arg: 1, scope: !1317, file: !108, line: 102, type: !122)
!1317 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !108, file: !108, line: 102, type: !178, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1318)
!1318 = !{!1316}
!1319 = !DILocation(line: 0, scope: !1317, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 777, column: 3, scope: !223)
!1321 = !DILocation(line: 105, column: 18, scope: !1322, inlinedAt: !1320)
!1322 = distinct !DILexicalBlock(scope: !1317, file: !108, line: 104, column: 7)
!1323 = !DILocation(line: 778, column: 3, scope: !223)
!1324 = !DILocation(line: 755, column: 13, scope: !1325, inlinedAt: !1329)
!1325 = distinct !DISubprogram(name: "initialize_signals", scope: !2, file: !2, line: 753, type: !711, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1326)
!1326 = !{!1327}
!1327 = !DILocalVariable(name: "i", scope: !1328, file: !2, line: 757, type: !122)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 757, column: 3)
!1329 = distinct !DILocation(line: 780, column: 3, scope: !223)
!1330 = !DILocation(line: 755, column: 11, scope: !1325, inlinedAt: !1329)
!1331 = !DILocation(line: 0, scope: !1328, inlinedAt: !1329)
!1332 = !DILocation(line: 758, column: 16, scope: !1333, inlinedAt: !1329)
!1333 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 757, column: 3)
!1334 = !DILocation(line: 783, column: 3, scope: !223)
!1335 = !DILocation(line: 769, column: 9, scope: !223)
!1336 = !DILocation(line: 768, column: 15, scope: !223)
!1337 = !DILocation(line: 767, column: 8, scope: !223)
!1338 = !DILocation(line: 766, column: 8, scope: !223)
!1339 = !DILocation(line: 783, column: 18, scope: !223)
!1340 = distinct !{!1340, !1334, !1341, !1199}
!1341 = !DILocation(line: 835, column: 5, scope: !223)
!1342 = !DILocation(line: 788, column: 19, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 786, column: 9)
!1344 = distinct !DILexicalBlock(scope: !223, file: !2, line: 784, column: 5)
!1345 = !DILocation(line: 789, column: 11, scope: !1343)
!1346 = !DILocation(line: 794, column: 29, scope: !1343)
!1347 = !DILocalVariable(name: "var", arg: 1, scope: !1348, file: !2, line: 186, type: !169)
!1348 = distinct !DISubprogram(name: "append_unset_var", scope: !2, file: !2, line: 186, type: !1096, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1349)
!1349 = !{!1347}
!1350 = !DILocation(line: 0, scope: !1348, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 794, column: 11, scope: !1343)
!1352 = !DILocation(line: 188, column: 7, scope: !1353, inlinedAt: !1351)
!1353 = distinct !DILexicalBlock(scope: !1348, file: !2, line: 188, column: 7)
!1354 = !{!1355, !1355, i64 0}
!1355 = !{!"long", !1071, i64 0}
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
!1436 = !{!1437, !1070, i64 0}
!1437 = !{!"splitbuf", !1070, i64 0, !1153, i64 8, !1355, i64 16, !1153, i64 24, !1438, i64 28}
!1438 = !{!"_Bool", !1071, i64 0}
!1439 = distinct !DIAssignID()
!1440 = !DILocation(line: 371, column: 11, scope: !1406, inlinedAt: !1430)
!1441 = !{!1437, !1153, i64 8}
!1442 = distinct !DIAssignID()
!1443 = !DILocation(line: 372, column: 17, scope: !1406, inlinedAt: !1430)
!1444 = !{!1437, !1355, i64 16}
!1445 = distinct !DIAssignID()
!1446 = !DILocation(line: 373, column: 17, scope: !1406, inlinedAt: !1430)
!1447 = !{!1437, !1153, i64 24}
!1448 = distinct !DIAssignID()
!1449 = !DILocation(line: 374, column: 10, scope: !1406, inlinedAt: !1430)
!1450 = !{!1437, !1438, i64 28}
!1451 = distinct !DIAssignID()
!1452 = !DILocation(line: 375, column: 3, scope: !1406, inlinedAt: !1430)
!1453 = !DILocation(line: 375, column: 20, scope: !1406, inlinedAt: !1430)
!1454 = !DILocation(line: 380, column: 3, scope: !1406, inlinedAt: !1430)
!1455 = !DILocation(line: 380, column: 10, scope: !1406, inlinedAt: !1430)
!1456 = !DILocation(line: 387, column: 15, scope: !1419, inlinedAt: !1430)
!1457 = !DILocation(line: 389, column: 17, scope: !1419, inlinedAt: !1430)
!1458 = !DILocation(line: 389, column: 14, scope: !1419, inlinedAt: !1430)
!1459 = !DILocation(line: 390, column: 11, scope: !1419, inlinedAt: !1430)
!1460 = !DILocation(line: 391, column: 11, scope: !1419, inlinedAt: !1430)
!1461 = !DILocation(line: 392, column: 11, scope: !1419, inlinedAt: !1430)
!1462 = distinct !{!1462, !1454, !1463, !1199}
!1463 = !DILocation(line: 493, column: 5, scope: !1406, inlinedAt: !1430)
!1464 = !DILocation(line: 395, column: 15, scope: !1419, inlinedAt: !1430)
!1465 = !DILocation(line: 397, column: 14, scope: !1419, inlinedAt: !1430)
!1466 = !DILocation(line: 398, column: 11, scope: !1419, inlinedAt: !1430)
!1467 = !DILocation(line: 399, column: 11, scope: !1419, inlinedAt: !1430)
!1468 = !DILocation(line: 400, column: 11, scope: !1419, inlinedAt: !1430)
!1469 = distinct !{!1469, !1454, !1463, !1199}
!1470 = !DILocation(line: 404, column: 18, scope: !1471, inlinedAt: !1430)
!1471 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 404, column: 15)
!1472 = !DILocation(line: 406, column: 18, scope: !1419, inlinedAt: !1430)
!1473 = distinct !DIAssignID()
!1474 = !DILocation(line: 407, column: 18, scope: !1419, inlinedAt: !1430)
!1475 = !DILocation(line: 407, column: 15, scope: !1419, inlinedAt: !1430)
!1476 = !DILocation(line: 408, column: 11, scope: !1419, inlinedAt: !1430)
!1477 = !DILocation(line: 411, column: 19, scope: !1478, inlinedAt: !1430)
!1478 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 411, column: 15)
!1479 = !{i8 0, i8 2}
!1480 = !DILocation(line: 411, column: 15, scope: !1419, inlinedAt: !1430)
!1481 = !DILocation(line: 0, scope: !1419, inlinedAt: !1430)
!1482 = !DILocation(line: 418, column: 18, scope: !1483, inlinedAt: !1430)
!1483 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 418, column: 15)
!1484 = !DILocation(line: 418, column: 36, scope: !1483, inlinedAt: !1430)
!1485 = !DILocation(line: 0, scope: !1416, inlinedAt: !1430)
!1486 = !DILocation(line: 423, column: 11, scope: !1419, inlinedAt: !1430)
!1487 = !DILocation(line: 430, column: 19, scope: !1488, inlinedAt: !1430)
!1488 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 424, column: 13)
!1489 = !DILocation(line: 432, column: 19, scope: !1490, inlinedAt: !1430)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !2, line: 431, column: 17)
!1491 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 430, column: 19)
!1492 = !DILocation(line: 433, column: 26, scope: !1490, inlinedAt: !1430)
!1493 = distinct !DIAssignID()
!1494 = !DILocation(line: 434, column: 19, scope: !1490, inlinedAt: !1430)
!1495 = !DILocation(line: 440, column: 19, scope: !1496, inlinedAt: !1430)
!1496 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 440, column: 19)
!1497 = !DILocation(line: 440, column: 19, scope: !1488, inlinedAt: !1430)
!1498 = !DILocation(line: 441, column: 17, scope: !1496, inlinedAt: !1430)
!1499 = !DILocation(line: 446, column: 36, scope: !1488, inlinedAt: !1430)
!1500 = !DILocation(line: 447, column: 36, scope: !1488, inlinedAt: !1430)
!1501 = !DILocation(line: 448, column: 36, scope: !1488, inlinedAt: !1430)
!1502 = !DILocation(line: 449, column: 36, scope: !1488, inlinedAt: !1430)
!1503 = !DILocation(line: 452, column: 15, scope: !1488, inlinedAt: !1430)
!1504 = !DILocation(line: 423, column: 19, scope: !1419, inlinedAt: !1430)
!1505 = !DILocation(line: 456, column: 15, scope: !1488, inlinedAt: !1430)
!1506 = !DILocation(line: 463, column: 15, scope: !1419, inlinedAt: !1430)
!1507 = !DILocalVariable(name: "str", arg: 1, scope: !1508, file: !2, line: 233, type: !169)
!1508 = distinct !DISubprogram(name: "extract_varname", scope: !2, file: !2, line: 233, type: !1278, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1509)
!1509 = !{!1507, !1510, !1511}
!1510 = !DILocalVariable(name: "p", scope: !1508, file: !2, line: 235, type: !169)
!1511 = !DILocalVariable(name: "i", scope: !1508, file: !2, line: 241, type: !528)
!1512 = !DILocation(line: 0, scope: !1508, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 468, column: 23, scope: !1418, inlinedAt: !1430)
!1514 = !DILocalVariable(name: "str", arg: 1, scope: !1515, file: !2, line: 213, type: !169)
!1515 = distinct !DISubprogram(name: "scan_varname", scope: !2, file: !2, line: 213, type: !1516, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1518)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!169, !169}
!1518 = !{!1514, !1519}
!1519 = !DILocalVariable(name: "end", scope: !1520, file: !2, line: 217, type: !169)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !2, line: 216, column: 5)
!1521 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 215, column: 7)
!1522 = !DILocation(line: 0, scope: !1515, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 235, column: 19, scope: !1508, inlinedAt: !1513)
!1524 = !DILocation(line: 215, column: 7, scope: !1521, inlinedAt: !1523)
!1525 = !DILocation(line: 215, column: 14, scope: !1521, inlinedAt: !1523)
!1526 = !DILocation(line: 215, column: 21, scope: !1521, inlinedAt: !1523)
!1527 = !DILocation(line: 215, column: 36, scope: !1521, inlinedAt: !1523)
!1528 = !DILocalVariable(name: "c", arg: 1, scope: !1529, file: !1530, line: 183, type: !122)
!1529 = distinct !DISubprogram(name: "c_isalpha", scope: !1530, file: !1530, line: 183, type: !1531, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1533)
!1530 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!231, !122}
!1533 = !{!1528}
!1534 = !DILocation(line: 0, scope: !1529, inlinedAt: !1535)
!1535 = distinct !DILocation(line: 215, column: 25, scope: !1521, inlinedAt: !1523)
!1536 = !DILocation(line: 185, column: 3, scope: !1529, inlinedAt: !1535)
!1537 = !DILocation(line: 217, column: 29, scope: !1520, inlinedAt: !1523)
!1538 = !DILocation(line: 0, scope: !1520, inlinedAt: !1523)
!1539 = !DILocation(line: 218, column: 7, scope: !1520, inlinedAt: !1523)
!1540 = !DILocation(line: 218, column: 25, scope: !1520, inlinedAt: !1523)
!1541 = !DILocation(line: 218, column: 14, scope: !1520, inlinedAt: !1523)
!1542 = !DILocation(line: 218, column: 31, scope: !1520, inlinedAt: !1523)
!1543 = !DILocation(line: 218, column: 34, scope: !1520, inlinedAt: !1523)
!1544 = !DILocation(line: 219, column: 9, scope: !1520, inlinedAt: !1523)
!1545 = distinct !{!1545, !1539, !1546, !1199}
!1546 = !DILocation(line: 219, column: 11, scope: !1520, inlinedAt: !1523)
!1547 = !DILocation(line: 241, column: 15, scope: !1508, inlinedAt: !1513)
!1548 = !DILocation(line: 241, column: 21, scope: !1508, inlinedAt: !1513)
!1549 = !DILocation(line: 243, column: 12, scope: !1550, inlinedAt: !1513)
!1550 = distinct !DILexicalBlock(scope: !1508, file: !2, line: 243, column: 7)
!1551 = !DILocation(line: 243, column: 9, scope: !1550, inlinedAt: !1513)
!1552 = !DILocation(line: 249, column: 11, scope: !1508, inlinedAt: !1513)
!1553 = !DILocation(line: 243, column: 7, scope: !1508, inlinedAt: !1513)
!1554 = !DILocation(line: 245, column: 7, scope: !1555, inlinedAt: !1513)
!1555 = distinct !DILexicalBlock(scope: !1550, file: !2, line: 244, column: 5)
!1556 = !DILocation(line: 246, column: 48, scope: !1555, inlinedAt: !1513)
!1557 = !DILocation(line: 246, column: 46, scope: !1555, inlinedAt: !1513)
!1558 = !DILocation(line: 246, column: 17, scope: !1555, inlinedAt: !1513)
!1559 = !DILocation(line: 246, column: 15, scope: !1555, inlinedAt: !1513)
!1560 = !DILocation(line: 247, column: 5, scope: !1555, inlinedAt: !1513)
!1561 = !DILocation(line: 0, scope: !1418, inlinedAt: !1430)
!1562 = !DILocation(line: 470, column: 15, scope: !1563, inlinedAt: !1430)
!1563 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 469, column: 17)
!1564 = !DILocalVariable(name: "__dest", arg: 1, scope: !1565, file: !1566, line: 26, type: !1569)
!1565 = distinct !DISubprogram(name: "memcpy", scope: !1566, file: !1566, line: 26, type: !1567, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1570)
!1566 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!164, !1569, !1299, !166}
!1569 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !164)
!1570 = !{!1564, !1571, !1572}
!1571 = !DILocalVariable(name: "__src", arg: 2, scope: !1565, file: !1566, line: 26, type: !1299)
!1572 = !DILocalVariable(name: "__len", arg: 3, scope: !1565, file: !1566, line: 26, type: !166)
!1573 = !DILocation(line: 0, scope: !1565, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 249, column: 3, scope: !1508, inlinedAt: !1513)
!1575 = !DILocation(line: 29, column: 10, scope: !1565, inlinedAt: !1574)
!1576 = !DILocation(line: 250, column: 3, scope: !1508, inlinedAt: !1513)
!1577 = !DILocation(line: 250, column: 14, scope: !1508, inlinedAt: !1513)
!1578 = !DILocation(line: 474, column: 23, scope: !1418, inlinedAt: !1430)
!1579 = !DILocation(line: 475, column: 17, scope: !1580, inlinedAt: !1430)
!1580 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 475, column: 17)
!1581 = !DILocation(line: 475, column: 17, scope: !1418, inlinedAt: !1430)
!1582 = !DILocation(line: 477, column: 17, scope: !1583, inlinedAt: !1430)
!1583 = distinct !DILexicalBlock(scope: !1580, file: !2, line: 476, column: 15)
!1584 = !DILocation(line: 478, column: 17, scope: !1585, inlinedAt: !1430)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !2, line: 478, column: 17)
!1586 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 478, column: 17)
!1587 = !DILocation(line: 478, column: 17, scope: !1586, inlinedAt: !1430)
!1588 = !DILocation(line: 479, column: 24, scope: !1589, inlinedAt: !1430)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 479, column: 17)
!1590 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 479, column: 17)
!1591 = !DILocation(line: 479, column: 17, scope: !1590, inlinedAt: !1430)
!1592 = !DILocation(line: 303, column: 48, scope: !1593, inlinedAt: !1601)
!1593 = distinct !DISubprogram(name: "splitbuf_append_byte", scope: !2, file: !2, line: 301, type: !1594, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1597)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{null, !1596, !4}
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1597 = !{!1598, !1599, !1600}
!1598 = !DILocalVariable(name: "ss", arg: 1, scope: !1593, file: !2, line: 301, type: !1596)
!1599 = !DILocalVariable(name: "c", arg: 2, scope: !1593, file: !2, line: 301, type: !4)
!1600 = !DILocalVariable(name: "string_bytes", scope: !1593, file: !2, line: 303, type: !528)
!1601 = distinct !DILocation(line: 480, column: 19, scope: !1589, inlinedAt: !1430)
!1602 = !DILocation(line: 0, scope: !1593, inlinedAt: !1601)
!1603 = !DILocation(line: 303, column: 39, scope: !1593, inlinedAt: !1601)
!1604 = !DILocation(line: 303, column: 35, scope: !1593, inlinedAt: !1601)
!1605 = !DILocation(line: 303, column: 24, scope: !1593, inlinedAt: !1601)
!1606 = !DILocation(line: 304, column: 11, scope: !1607, inlinedAt: !1601)
!1607 = distinct !DILexicalBlock(scope: !1593, file: !2, line: 304, column: 7)
!1608 = !DILocation(line: 304, column: 22, scope: !1607, inlinedAt: !1601)
!1609 = !DILocation(line: 304, column: 41, scope: !1607, inlinedAt: !1601)
!1610 = !DILocation(line: 304, column: 7, scope: !1593, inlinedAt: !1601)
!1611 = !DILocalVariable(name: "ss", arg: 1, scope: !1612, file: !2, line: 290, type: !1596)
!1612 = distinct !DISubprogram(name: "splitbuf_grow", scope: !2, file: !2, line: 290, type: !1613, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1615)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{null, !1596}
!1615 = !{!1611, !1616, !1617}
!1616 = !DILocalVariable(name: "old_half_alloc", scope: !1612, file: !2, line: 292, type: !528)
!1617 = !DILocalVariable(name: "string_bytes", scope: !1612, file: !2, line: 293, type: !528)
!1618 = !DILocation(line: 0, scope: !1612, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 305, column: 5, scope: !1607, inlinedAt: !1601)
!1620 = !DILocation(line: 294, column: 14, scope: !1612, inlinedAt: !1619)
!1621 = !DILocation(line: 294, column: 12, scope: !1612, inlinedAt: !1619)
!1622 = distinct !DIAssignID()
!1623 = !DILocation(line: 296, column: 27, scope: !1612, inlinedAt: !1619)
!1624 = !DILocation(line: 296, column: 21, scope: !1612, inlinedAt: !1619)
!1625 = !DILocation(line: 296, column: 48, scope: !1612, inlinedAt: !1619)
!1626 = !DILocalVariable(name: "__dest", arg: 1, scope: !1627, file: !1566, line: 34, type: !164)
!1627 = distinct !DISubprogram(name: "memmove", scope: !1566, file: !1566, line: 34, type: !1628, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1630)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!164, !164, !1300, !166}
!1630 = !{!1626, !1631, !1632}
!1631 = !DILocalVariable(name: "__src", arg: 2, scope: !1627, file: !1566, line: 34, type: !1300)
!1632 = !DILocalVariable(name: "__len", arg: 3, scope: !1627, file: !1566, line: 34, type: !166)
!1633 = !DILocation(line: 0, scope: !1627, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 296, column: 3, scope: !1612, inlinedAt: !1619)
!1635 = !DILocation(line: 36, column: 10, scope: !1627, inlinedAt: !1634)
!1636 = !DILocation(line: 306, column: 18, scope: !1593, inlinedAt: !1601)
!1637 = !DILocation(line: 306, column: 29, scope: !1593, inlinedAt: !1601)
!1638 = !DILocation(line: 305, column: 5, scope: !1607, inlinedAt: !1601)
!1639 = !DILocation(line: 306, column: 23, scope: !1593, inlinedAt: !1601)
!1640 = !DILocation(line: 306, column: 3, scope: !1593, inlinedAt: !1601)
!1641 = !DILocation(line: 306, column: 56, scope: !1593, inlinedAt: !1601)
!1642 = !DILocation(line: 307, column: 58, scope: !1593, inlinedAt: !1601)
!1643 = !DILocation(line: 307, column: 24, scope: !1593, inlinedAt: !1601)
!1644 = !DILocation(line: 307, column: 7, scope: !1593, inlinedAt: !1601)
!1645 = !DILocation(line: 307, column: 16, scope: !1593, inlinedAt: !1601)
!1646 = !DILocation(line: 307, column: 3, scope: !1593, inlinedAt: !1601)
!1647 = !DILocation(line: 307, column: 22, scope: !1593, inlinedAt: !1601)
!1648 = !DILocation(line: 479, column: 29, scope: !1589, inlinedAt: !1430)
!1649 = distinct !{!1649, !1591, !1650, !1199}
!1650 = !DILocation(line: 480, column: 48, scope: !1590, inlinedAt: !1430)
!1651 = !DILocation(line: 483, column: 15, scope: !1652, inlinedAt: !1430)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !2, line: 483, column: 15)
!1653 = distinct !DILexicalBlock(scope: !1580, file: !2, line: 483, column: 15)
!1654 = !DILocation(line: 483, column: 15, scope: !1653, inlinedAt: !1430)
!1655 = !DILocation(line: 485, column: 19, scope: !1418, inlinedAt: !1430)
!1656 = !DILocation(line: 485, column: 37, scope: !1418, inlinedAt: !1430)
!1657 = !DILocation(line: 490, column: 7, scope: !1416, inlinedAt: !1430)
!1658 = !DILocation(line: 0, scope: !1593, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 491, column: 7, scope: !1416, inlinedAt: !1430)
!1660 = !DILocation(line: 303, column: 39, scope: !1593, inlinedAt: !1659)
!1661 = !DILocation(line: 303, column: 48, scope: !1593, inlinedAt: !1659)
!1662 = !DILocation(line: 303, column: 35, scope: !1593, inlinedAt: !1659)
!1663 = !DILocation(line: 303, column: 24, scope: !1593, inlinedAt: !1659)
!1664 = !DILocation(line: 304, column: 11, scope: !1607, inlinedAt: !1659)
!1665 = !DILocation(line: 304, column: 22, scope: !1607, inlinedAt: !1659)
!1666 = !DILocation(line: 304, column: 41, scope: !1607, inlinedAt: !1659)
!1667 = !DILocation(line: 304, column: 7, scope: !1593, inlinedAt: !1659)
!1668 = !DILocation(line: 0, scope: !1612, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 305, column: 5, scope: !1607, inlinedAt: !1659)
!1670 = !DILocation(line: 294, column: 14, scope: !1612, inlinedAt: !1669)
!1671 = !DILocation(line: 294, column: 12, scope: !1612, inlinedAt: !1669)
!1672 = distinct !DIAssignID()
!1673 = !DILocation(line: 296, column: 27, scope: !1612, inlinedAt: !1669)
!1674 = !DILocation(line: 296, column: 21, scope: !1612, inlinedAt: !1669)
!1675 = !DILocation(line: 296, column: 48, scope: !1612, inlinedAt: !1669)
!1676 = !DILocation(line: 0, scope: !1627, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 296, column: 3, scope: !1612, inlinedAt: !1669)
!1678 = !DILocation(line: 36, column: 10, scope: !1627, inlinedAt: !1677)
!1679 = !DILocation(line: 306, column: 18, scope: !1593, inlinedAt: !1659)
!1680 = !DILocation(line: 306, column: 29, scope: !1593, inlinedAt: !1659)
!1681 = !DILocation(line: 305, column: 5, scope: !1607, inlinedAt: !1659)
!1682 = !DILocation(line: 306, column: 23, scope: !1593, inlinedAt: !1659)
!1683 = !DILocation(line: 306, column: 3, scope: !1593, inlinedAt: !1659)
!1684 = !DILocation(line: 306, column: 56, scope: !1593, inlinedAt: !1659)
!1685 = !DILocation(line: 307, column: 58, scope: !1593, inlinedAt: !1659)
!1686 = !DILocation(line: 307, column: 24, scope: !1593, inlinedAt: !1659)
!1687 = !DILocation(line: 307, column: 7, scope: !1593, inlinedAt: !1659)
!1688 = !DILocation(line: 307, column: 16, scope: !1593, inlinedAt: !1659)
!1689 = !DILocation(line: 307, column: 3, scope: !1593, inlinedAt: !1659)
!1690 = !DILocation(line: 307, column: 22, scope: !1593, inlinedAt: !1659)
!1691 = !DILocation(line: 492, column: 7, scope: !1416, inlinedAt: !1430)
!1692 = distinct !{!1692, !1454, !1463, !1199}
!1693 = !DILocation(line: 495, column: 7, scope: !1694, inlinedAt: !1430)
!1694 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 495, column: 7)
!1695 = !DILocation(line: 495, column: 10, scope: !1694, inlinedAt: !1430)
!1696 = !DILocation(line: 496, column: 5, scope: !1694, inlinedAt: !1430)
!1697 = !DILocation(line: 498, column: 2, scope: !1406, inlinedAt: !1430)
!1698 = !DILocation(line: 0, scope: !1593, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 499, column: 3, scope: !1406, inlinedAt: !1430)
!1700 = !DILocation(line: 303, column: 39, scope: !1593, inlinedAt: !1699)
!1701 = !DILocation(line: 303, column: 48, scope: !1593, inlinedAt: !1699)
!1702 = !DILocation(line: 303, column: 35, scope: !1593, inlinedAt: !1699)
!1703 = !DILocation(line: 303, column: 24, scope: !1593, inlinedAt: !1699)
!1704 = !DILocation(line: 304, column: 11, scope: !1607, inlinedAt: !1699)
!1705 = !DILocation(line: 304, column: 22, scope: !1607, inlinedAt: !1699)
!1706 = !DILocation(line: 304, column: 41, scope: !1607, inlinedAt: !1699)
!1707 = !DILocation(line: 304, column: 7, scope: !1593, inlinedAt: !1699)
!1708 = !DILocation(line: 0, scope: !1612, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 305, column: 5, scope: !1607, inlinedAt: !1699)
!1710 = !DILocation(line: 294, column: 14, scope: !1612, inlinedAt: !1709)
!1711 = !DILocation(line: 294, column: 12, scope: !1612, inlinedAt: !1709)
!1712 = distinct !DIAssignID()
!1713 = !DILocation(line: 296, column: 27, scope: !1612, inlinedAt: !1709)
!1714 = !DILocation(line: 296, column: 21, scope: !1612, inlinedAt: !1709)
!1715 = !DILocation(line: 296, column: 48, scope: !1612, inlinedAt: !1709)
!1716 = !DILocation(line: 0, scope: !1627, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 296, column: 3, scope: !1612, inlinedAt: !1709)
!1718 = !DILocation(line: 36, column: 10, scope: !1627, inlinedAt: !1717)
!1719 = !DILocation(line: 306, column: 18, scope: !1593, inlinedAt: !1699)
!1720 = !DILocation(line: 306, column: 29, scope: !1593, inlinedAt: !1699)
!1721 = !DILocation(line: 305, column: 5, scope: !1607, inlinedAt: !1699)
!1722 = !DILocation(line: 306, column: 23, scope: !1593, inlinedAt: !1699)
!1723 = !DILocation(line: 306, column: 3, scope: !1593, inlinedAt: !1699)
!1724 = !DILocation(line: 306, column: 56, scope: !1593, inlinedAt: !1699)
!1725 = !DILocation(line: 307, column: 58, scope: !1593, inlinedAt: !1699)
!1726 = !DILocation(line: 307, column: 24, scope: !1593, inlinedAt: !1699)
!1727 = !DILocation(line: 307, column: 7, scope: !1593, inlinedAt: !1699)
!1728 = !DILocation(line: 307, column: 16, scope: !1593, inlinedAt: !1699)
!1729 = !DILocation(line: 307, column: 3, scope: !1593, inlinedAt: !1699)
!1730 = !DILocation(line: 307, column: 22, scope: !1593, inlinedAt: !1699)
!1731 = !DILocalVariable(name: "ss", arg: 1, scope: !1732, file: !2, line: 330, type: !1596)
!1732 = distinct !DISubprogram(name: "splitbuf_finishup", scope: !2, file: !2, line: 330, type: !1733, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1735)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!226, !1596}
!1735 = !{!1731, !1736, !1737, !1738, !1739}
!1736 = !DILocalVariable(name: "argc", scope: !1732, file: !2, line: 332, type: !122)
!1737 = !DILocalVariable(name: "argv", scope: !1732, file: !2, line: 333, type: !226)
!1738 = !DILocalVariable(name: "stringbase", scope: !1732, file: !2, line: 334, type: !163)
!1739 = !DILocalVariable(name: "i", scope: !1740, file: !2, line: 335, type: !122)
!1740 = distinct !DILexicalBlock(scope: !1732, file: !2, line: 335, column: 3)
!1741 = !DILocation(line: 0, scope: !1732, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 501, column: 10, scope: !1406, inlinedAt: !1430)
!1743 = !DILocation(line: 333, column: 21, scope: !1732, inlinedAt: !1742)
!1744 = !DILocation(line: 334, column: 47, scope: !1732, inlinedAt: !1742)
!1745 = !DILocation(line: 334, column: 41, scope: !1732, inlinedAt: !1742)
!1746 = !DILocation(line: 0, scope: !1740, inlinedAt: !1742)
!1747 = !DILocation(line: 335, column: 21, scope: !1748, inlinedAt: !1742)
!1748 = distinct !DILexicalBlock(scope: !1740, file: !2, line: 335, column: 3)
!1749 = !DILocation(line: 335, column: 3, scope: !1740, inlinedAt: !1742)
!1750 = !DILocation(line: 502, column: 1, scope: !1406, inlinedAt: !1430)
!1751 = !DILocation(line: 533, column: 14, scope: !1386, inlinedAt: !1402)
!1752 = !DILocation(line: 533, column: 12, scope: !1386, inlinedAt: !1402)
!1753 = !DILocation(line: 536, column: 17, scope: !1400, inlinedAt: !1402)
!1754 = !DILocation(line: 336, column: 39, scope: !1748, inlinedAt: !1742)
!1755 = !DILocation(line: 336, column: 28, scope: !1748, inlinedAt: !1742)
!1756 = !DILocation(line: 336, column: 13, scope: !1748, inlinedAt: !1742)
!1757 = distinct !{!1757, !1749, !1758, !1199, !1759, !1760}
!1758 = !DILocation(line: 336, column: 45, scope: !1740, inlinedAt: !1742)
!1759 = !{!"llvm.loop.isvectorized", i32 1}
!1760 = !{!"llvm.loop.unroll.runtime.disable"}
!1761 = !DILocation(line: 336, column: 26, scope: !1748, inlinedAt: !1742)
!1762 = !DILocation(line: 335, column: 30, scope: !1748, inlinedAt: !1742)
!1763 = distinct !{!1763, !1749, !1758, !1199, !1760, !1759}
!1764 = !DILocation(line: 536, column: 7, scope: !1400, inlinedAt: !1402)
!1765 = !DILocation(line: 538, column: 7, scope: !1766, inlinedAt: !1402)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !2, line: 538, column: 7)
!1767 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 538, column: 7)
!1768 = !DILocation(line: 539, column: 7, scope: !1769, inlinedAt: !1402)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !2, line: 539, column: 7)
!1770 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 539, column: 7)
!1771 = !DILocation(line: 539, column: 7, scope: !1770, inlinedAt: !1402)
!1772 = !DILocation(line: 0, scope: !1398, inlinedAt: !1402)
!1773 = !DILocation(line: 540, column: 25, scope: !1774, inlinedAt: !1402)
!1774 = distinct !DILexicalBlock(scope: !1398, file: !2, line: 540, column: 7)
!1775 = !DILocation(line: 540, column: 7, scope: !1398, inlinedAt: !1402)
!1776 = !DILocation(line: 541, column: 9, scope: !1777, inlinedAt: !1402)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !2, line: 541, column: 9)
!1778 = distinct !DILexicalBlock(scope: !1774, file: !2, line: 541, column: 9)
!1779 = !DILocation(line: 541, column: 9, scope: !1778, inlinedAt: !1402)
!1780 = !DILocation(line: 540, column: 37, scope: !1774, inlinedAt: !1402)
!1781 = distinct !{!1781, !1775, !1782, !1199}
!1782 = !DILocation(line: 541, column: 9, scope: !1398, inlinedAt: !1402)
!1783 = !DILocation(line: 546, column: 19, scope: !1386, inlinedAt: !1402)
!1784 = !DILocation(line: 546, column: 43, scope: !1386, inlinedAt: !1402)
!1785 = !DILocation(line: 546, column: 41, scope: !1386, inlinedAt: !1402)
!1786 = !DILocation(line: 547, column: 23, scope: !1386, inlinedAt: !1402)
!1787 = !DILocation(line: 547, column: 11, scope: !1386, inlinedAt: !1402)
!1788 = !DILocation(line: 547, column: 28, scope: !1386, inlinedAt: !1402)
!1789 = !DILocation(line: 0, scope: !1565, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 546, column: 3, scope: !1386, inlinedAt: !1402)
!1791 = !DILocation(line: 29, column: 10, scope: !1565, inlinedAt: !1790)
!1792 = !DILocation(line: 550, column: 24, scope: !1386, inlinedAt: !1402)
!1793 = !DILocation(line: 552, column: 16, scope: !1386, inlinedAt: !1402)
!1794 = !DILocation(line: 820, column: 11, scope: !1343)
!1795 = !DILocation(line: 826, column: 11, scope: !1343)
!1796 = !DILocation(line: 827, column: 11, scope: !1343)
!1797 = !DILocation(line: 828, column: 11, scope: !1343)
!1798 = !DILocation(line: 830, column: 9, scope: !1343)
!1799 = !DILocation(line: 831, column: 9, scope: !1343)
!1800 = !DILocation(line: 833, column: 11, scope: !1343)
!1801 = !DILocation(line: 837, column: 7, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !223, file: !2, line: 837, column: 7)
!1803 = !DILocation(line: 837, column: 14, scope: !1802)
!1804 = !DILocation(line: 837, column: 21, scope: !1802)
!1805 = !DILocation(line: 837, column: 31, scope: !1802)
!1806 = !DILocation(line: 0, scope: !1164, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 837, column: 24, scope: !1802)
!1808 = !DILocation(line: 1361, column: 11, scope: !1164, inlinedAt: !1807)
!1809 = !DILocation(line: 1361, column: 10, scope: !1164, inlinedAt: !1807)
!1810 = !DILocation(line: 837, column: 7, scope: !223)
!1811 = !DILocation(line: 840, column: 7, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1802, file: !2, line: 838, column: 5)
!1813 = !DILocation(line: 843, column: 7, scope: !223)
!1814 = !DILocation(line: 843, column: 7, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !223, file: !2, line: 843, column: 7)
!1816 = !DILocation(line: 845, column: 7, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !2, line: 845, column: 7)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 845, column: 7)
!1819 = distinct !DILexicalBlock(scope: !1815, file: !2, line: 844, column: 5)
!1820 = !DILocation(line: 845, column: 7, scope: !1818)
!1821 = !DILocation(line: 847, column: 15, scope: !1819)
!1822 = !DILocation(line: 848, column: 5, scope: !1819)
!1823 = !DILocalVariable(name: "i", scope: !1824, file: !2, line: 196, type: !528)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !2, line: 196, column: 3)
!1825 = distinct !DISubprogram(name: "unset_envvars", scope: !2, file: !2, line: 194, type: !711, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1826)
!1826 = !{!1823}
!1827 = !DILocation(line: 0, scope: !1824, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 850, column: 5, scope: !1815)
!1829 = !DILocation(line: 196, column: 25, scope: !1830, inlinedAt: !1828)
!1830 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 196, column: 3)
!1831 = !DILocation(line: 196, column: 23, scope: !1830, inlinedAt: !1828)
!1832 = !DILocation(line: 196, column: 3, scope: !1824, inlinedAt: !1828)
!1833 = !DILocation(line: 198, column: 7, scope: !1834, inlinedAt: !1828)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !2, line: 198, column: 7)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !2, line: 198, column: 7)
!1836 = distinct !DILexicalBlock(scope: !1830, file: !2, line: 197, column: 5)
!1837 = !DILocation(line: 198, column: 7, scope: !1835, inlinedAt: !1828)
!1838 = !DILocation(line: 200, column: 21, scope: !1839, inlinedAt: !1828)
!1839 = distinct !DILexicalBlock(scope: !1836, file: !2, line: 200, column: 11)
!1840 = !DILocation(line: 200, column: 11, scope: !1839, inlinedAt: !1828)
!1841 = !DILocation(line: 200, column: 11, scope: !1836, inlinedAt: !1828)
!1842 = !DILocation(line: 201, column: 9, scope: !1839, inlinedAt: !1828)
!1843 = !DILocation(line: 196, column: 38, scope: !1830, inlinedAt: !1828)
!1844 = distinct !{!1844, !1832, !1845, !1199}
!1845 = !DILocation(line: 203, column: 5, scope: !1824, inlinedAt: !1828)
!1846 = !DILocation(line: 853, column: 10, scope: !223)
!1847 = !DILocation(line: 853, column: 17, scope: !223)
!1848 = !DILocation(line: 853, column: 24, scope: !223)
!1849 = !DILocation(line: 853, column: 41, scope: !223)
!1850 = !DILocation(line: 853, column: 33, scope: !223)
!1851 = !DILocation(line: 853, column: 3, scope: !223)
!1852 = !DILocation(line: 855, column: 7, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !2, line: 855, column: 7)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !2, line: 855, column: 7)
!1855 = distinct !DILexicalBlock(scope: !223, file: !2, line: 854, column: 5)
!1856 = !DILocation(line: 855, column: 7, scope: !1854)
!1857 = !DILocation(line: 857, column: 24, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1855, file: !2, line: 857, column: 11)
!1859 = !DILocation(line: 857, column: 19, scope: !1858)
!1860 = !DILocation(line: 857, column: 11, scope: !1858)
!1861 = !DILocation(line: 857, column: 11, scope: !1855)
!1862 = !DILocation(line: 859, column: 15, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1858, file: !2, line: 858, column: 9)
!1864 = !DILocation(line: 860, column: 11, scope: !1863)
!1865 = !DILocation(line: 863, column: 13, scope: !1855)
!1866 = distinct !{!1866, !1851, !1867, !1199}
!1867 = !DILocation(line: 864, column: 5, scope: !223)
!1868 = !DILocation(line: 868, column: 7, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !223, file: !2, line: 868, column: 7)
!1870 = !DILocation(line: 868, column: 32, scope: !1869)
!1871 = !DILocation(line: 870, column: 7, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1869, file: !2, line: 869, column: 5)
!1873 = !DILocation(line: 871, column: 7, scope: !1872)
!1874 = !DILocation(line: 874, column: 7, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !223, file: !2, line: 874, column: 7)
!1876 = !DILocation(line: 874, column: 14, scope: !1875)
!1877 = !DILocation(line: 876, column: 7, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1875, file: !2, line: 875, column: 5)
!1879 = !DILocation(line: 877, column: 7, scope: !1878)
!1880 = !DILocation(line: 880, column: 7, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !223, file: !2, line: 880, column: 7)
!1882 = !DILocation(line: 880, column: 13, scope: !1881)
!1883 = !DILocation(line: 882, column: 7, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1881, file: !2, line: 881, column: 5)
!1885 = !DILocation(line: 883, column: 7, scope: !1884)
!1886 = !DILocation(line: 889, column: 24, scope: !239)
!1887 = !DILocation(line: 0, scope: !239)
!1888 = !DILocation(line: 890, column: 14, scope: !239)
!1889 = !DILocation(line: 890, column: 7, scope: !239)
!1890 = !DILocation(line: 891, column: 9, scope: !239)
!1891 = distinct !{!1891, !1889, !1890, !1199}
!1892 = !DILocalVariable(name: "act", scope: !1893, file: !2, line: 593, type: !1905)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !2, line: 592, column: 5)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !2, line: 591, column: 3)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !2, line: 591, column: 3)
!1896 = distinct !DISubprogram(name: "reset_signal_handlers", scope: !2, file: !2, line: 589, type: !711, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1897)
!1897 = !{!1898, !1892, !1899, !1900, !1901, !1902}
!1898 = !DILocalVariable(name: "i", scope: !1895, file: !2, line: 591, type: !122)
!1899 = !DILocalVariable(name: "ignore_errors", scope: !1893, file: !2, line: 598, type: !231)
!1900 = !DILocalVariable(name: "set_to_default", scope: !1893, file: !2, line: 601, type: !231)
!1901 = !DILocalVariable(name: "sig_err", scope: !1893, file: !2, line: 604, type: !122)
!1902 = !DILocalVariable(name: "signame", scope: !1903, file: !2, line: 621, type: !486)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !2, line: 620, column: 9)
!1904 = distinct !DILexicalBlock(scope: !1893, file: !2, line: 619, column: 11)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1906, line: 27, size: 1216, elements: !1907)
!1906 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "", checksumkind: CSK_MD5, checksum: "95401d18e887df415f59d7a2cb411c28")
!1907 = !{!1908, !1990, !1991, !1992}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !1905, file: !1906, line: 38, baseType: !1909, size: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1905, file: !1906, line: 31, size: 64, elements: !1910)
!1910 = !{!1911, !1912}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1909, file: !1906, line: 34, baseType: !175, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !1909, file: !1906, line: 36, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{null, !122, !1916, !164}
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !1918, line: 124, baseType: !1919)
!1918 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h", directory: "", checksumkind: CSK_MD5, checksum: "023cf7b0ef843da262cf07900eda0ac5")
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1918, line: 36, size: 1024, elements: !1920)
!1920 = !{!1921, !1922, !1923, !1924, !1925}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1919, file: !1918, line: 38, baseType: !122, size: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1919, file: !1918, line: 40, baseType: !122, size: 32, offset: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1919, file: !1918, line: 42, baseType: !122, size: 32, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1919, file: !1918, line: 48, baseType: !122, size: 32, offset: 96)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1919, file: !1918, line: 123, baseType: !1926, size: 896, offset: 128)
!1926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1919, file: !1918, line: 51, size: 896, elements: !1927)
!1927 = !{!1928, !1930, !1937, !1949, !1955, !1964, !1979, !1984}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !1926, file: !1918, line: 53, baseType: !1929, size: 896)
!1929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 896, elements: !900)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1926, file: !1918, line: 60, baseType: !1931, size: 64)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1918, line: 56, size: 64, elements: !1932)
!1932 = !{!1933, !1935}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1931, file: !1918, line: 58, baseType: !1934, size: 32)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !353, line: 154, baseType: !122)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1931, file: !1918, line: 59, baseType: !1936, size: 32, offset: 32)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !353, line: 146, baseType: !109)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1926, file: !1918, line: 68, baseType: !1938, size: 128)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1918, line: 63, size: 128, elements: !1939)
!1939 = !{!1940, !1941, !1942}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !1938, file: !1918, line: 65, baseType: !122, size: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !1938, file: !1918, line: 66, baseType: !122, size: 32, offset: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1938, file: !1918, line: 67, baseType: !1943, size: 64, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigval_t", file: !1944, line: 30, baseType: !1945)
!1944 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h", directory: "", checksumkind: CSK_MD5, checksum: "bc7605d16e396c16f725f8da13f6eb20")
!1945 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1944, line: 24, size: 64, elements: !1946)
!1946 = !{!1947, !1948}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1945, file: !1944, line: 26, baseType: !122, size: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1945, file: !1944, line: 27, baseType: !164, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1926, file: !1918, line: 76, baseType: !1950, size: 128)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1918, line: 71, size: 128, elements: !1951)
!1951 = !{!1952, !1953, !1954}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1950, file: !1918, line: 73, baseType: !1934, size: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1950, file: !1918, line: 74, baseType: !1936, size: 32, offset: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1950, file: !1918, line: 75, baseType: !1943, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1926, file: !1918, line: 86, baseType: !1956, size: 256)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1918, line: 79, size: 256, elements: !1957)
!1957 = !{!1958, !1959, !1960, !1961, !1963}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1956, file: !1918, line: 81, baseType: !1934, size: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1956, file: !1918, line: 82, baseType: !1936, size: 32, offset: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !1956, file: !1918, line: 83, baseType: !122, size: 32, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !1956, file: !1918, line: 84, baseType: !1962, size: 64, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !353, line: 156, baseType: !174)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !1956, file: !1918, line: 85, baseType: !1962, size: 64, offset: 192)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1926, file: !1918, line: 105, baseType: !1965, size: 256)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1918, line: 89, size: 256, elements: !1966)
!1966 = !{!1967, !1968, !1970}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !1965, file: !1918, line: 91, baseType: !164, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !1965, file: !1918, line: 93, baseType: !1969, size: 16, offset: 64)
!1969 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_bounds", scope: !1965, file: !1918, line: 104, baseType: !1971, size: 128, offset: 128)
!1971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1965, file: !1918, line: 94, size: 128, elements: !1972)
!1972 = !{!1973, !1978}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1971, file: !1918, line: 101, baseType: !1974, size: 128)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1971, file: !1918, line: 97, size: 128, elements: !1975)
!1975 = !{!1976, !1977}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1974, file: !1918, line: 99, baseType: !164, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1974, file: !1918, line: 100, baseType: !164, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1971, file: !1918, line: 103, baseType: !739, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1926, file: !1918, line: 112, baseType: !1980, size: 128)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1918, line: 108, size: 128, elements: !1981)
!1981 = !{!1982, !1983}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !1980, file: !1918, line: 110, baseType: !174, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !1980, file: !1918, line: 111, baseType: !122, size: 32, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1926, file: !1918, line: 121, baseType: !1985, size: 128)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1918, line: 116, size: 128, elements: !1986)
!1986 = !{!1987, !1988, !1989}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1985, file: !1918, line: 118, baseType: !164, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1985, file: !1918, line: 119, baseType: !122, size: 32, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1985, file: !1918, line: 120, baseType: !109, size: 32, offset: 96)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1905, file: !1906, line: 46, baseType: !550, size: 1024, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1905, file: !1906, line: 49, baseType: !122, size: 32, offset: 1088)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1905, file: !1906, line: 52, baseType: !710, size: 64, offset: 1152)
!1993 = !DILocation(line: 0, scope: !1893, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 895, column: 3, scope: !223)
!1995 = !DILocation(line: 0, scope: !1903, inlinedAt: !1994)
!1996 = !DILocation(line: 0, scope: !1895, inlinedAt: !1994)
!1997 = !DILocation(line: 591, column: 3, scope: !1895, inlinedAt: !1994)
!1998 = !DILocation(line: 593, column: 7, scope: !1893, inlinedAt: !1994)
!1999 = !DILocation(line: 595, column: 11, scope: !2000, inlinedAt: !1994)
!2000 = distinct !DILexicalBlock(scope: !1893, file: !2, line: 595, column: 11)
!2001 = !DILocation(line: 595, column: 11, scope: !1893, inlinedAt: !1994)
!2002 = !DILocation(line: 599, column: 29, scope: !1893, inlinedAt: !1994)
!2003 = !DILocation(line: 602, column: 30, scope: !1893, inlinedAt: !1994)
!2004 = !DILocation(line: 604, column: 21, scope: !1893, inlinedAt: !1994)
!2005 = !DILocation(line: 606, column: 11, scope: !2006, inlinedAt: !1994)
!2006 = distinct !DILexicalBlock(scope: !1893, file: !2, line: 606, column: 11)
!2007 = !DILocation(line: 606, column: 19, scope: !2006, inlinedAt: !1994)
!2008 = !DILocation(line: 607, column: 9, scope: !2006, inlinedAt: !1994)
!2009 = !DILocation(line: 610, column: 11, scope: !1893, inlinedAt: !1994)
!2010 = !DILocation(line: 612, column: 28, scope: !2011, inlinedAt: !1994)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !2, line: 611, column: 9)
!2012 = distinct !DILexicalBlock(scope: !1893, file: !2, line: 610, column: 11)
!2013 = !DILocation(line: 612, column: 26, scope: !2011, inlinedAt: !1994)
!2014 = distinct !DIAssignID()
!2015 = !DILocation(line: 613, column: 21, scope: !2011, inlinedAt: !1994)
!2016 = !DILocation(line: 614, column: 15, scope: !2017, inlinedAt: !1994)
!2017 = distinct !DILexicalBlock(scope: !2011, file: !2, line: 614, column: 15)
!2018 = !DILocation(line: 614, column: 23, scope: !2017, inlinedAt: !1994)
!2019 = !DILocation(line: 615, column: 13, scope: !2017, inlinedAt: !1994)
!2020 = !DILocation(line: 619, column: 11, scope: !1904, inlinedAt: !1994)
!2021 = !DILocation(line: 619, column: 11, scope: !1893, inlinedAt: !1994)
!2022 = !DILocation(line: 621, column: 11, scope: !1903, inlinedAt: !1994)
!2023 = !DILocation(line: 622, column: 15, scope: !2024, inlinedAt: !1994)
!2024 = distinct !DILexicalBlock(scope: !1903, file: !2, line: 622, column: 15)
!2025 = !DILocation(line: 622, column: 36, scope: !2024, inlinedAt: !1994)
!2026 = !DILocation(line: 622, column: 15, scope: !1903, inlinedAt: !1994)
!2027 = !DILocation(line: 623, column: 13, scope: !2024, inlinedAt: !1994)
!2028 = !DILocation(line: 624, column: 11, scope: !2029, inlinedAt: !1994)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !2, line: 624, column: 11)
!2030 = distinct !DILexicalBlock(scope: !1903, file: !2, line: 624, column: 11)
!2031 = !DILocation(line: 624, column: 11, scope: !2030, inlinedAt: !1994)
!2032 = !DILocation(line: 628, column: 9, scope: !1904, inlinedAt: !1994)
!2033 = !DILocation(line: 628, column: 9, scope: !1903, inlinedAt: !1994)
!2034 = !DILocation(line: 629, column: 5, scope: !1894, inlinedAt: !1994)
!2035 = !DILocation(line: 591, column: 39, scope: !1894, inlinedAt: !1994)
!2036 = !DILocation(line: 591, column: 21, scope: !1894, inlinedAt: !1994)
!2037 = distinct !{!2037, !1997, !2038, !1199}
!2038 = !DILocation(line: 629, column: 5, scope: !1895, inlinedAt: !1994)
!2039 = !DILocation(line: 896, column: 7, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !223, file: !2, line: 896, column: 7)
!2041 = !DILocation(line: 896, column: 7, scope: !223)
!2042 = !DILocalVariable(name: "set", scope: !2043, file: !2, line: 686, type: !548)
!2043 = distinct !DISubprogram(name: "set_signal_proc_mask", scope: !2, file: !2, line: 683, type: !711, scopeLine: 684, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2044)
!2044 = !{!2042, !2045, !2047, !2050}
!2045 = !DILocalVariable(name: "i", scope: !2046, file: !2, line: 693, type: !122)
!2046 = distinct !DILexicalBlock(scope: !2043, file: !2, line: 693, column: 3)
!2047 = !DILocalVariable(name: "debug_act", scope: !2048, file: !2, line: 695, type: !169)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !2, line: 694, column: 5)
!2049 = distinct !DILexicalBlock(scope: !2046, file: !2, line: 693, column: 3)
!2050 = !DILocalVariable(name: "signame", scope: !2051, file: !2, line: 710, type: !486)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !2, line: 709, column: 9)
!2052 = distinct !DILexicalBlock(scope: !2048, file: !2, line: 708, column: 11)
!2053 = !DILocation(line: 0, scope: !2043, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 897, column: 5, scope: !2040)
!2055 = !DILocation(line: 0, scope: !2051, inlinedAt: !2054)
!2056 = !DILocation(line: 686, column: 3, scope: !2043, inlinedAt: !2054)
!2057 = !DILocation(line: 688, column: 3, scope: !2043, inlinedAt: !2054)
!2058 = !DILocation(line: 690, column: 7, scope: !2059, inlinedAt: !2054)
!2059 = distinct !DILexicalBlock(scope: !2043, file: !2, line: 690, column: 7)
!2060 = !DILocation(line: 690, column: 7, scope: !2043, inlinedAt: !2054)
!2061 = !DILocation(line: 691, column: 5, scope: !2059, inlinedAt: !2054)
!2062 = !DILocation(line: 718, column: 7, scope: !2063, inlinedAt: !2054)
!2063 = distinct !DILexicalBlock(scope: !2043, file: !2, line: 718, column: 7)
!2064 = !DILocation(line: 718, column: 7, scope: !2043, inlinedAt: !2054)
!2065 = !DILocation(line: 0, scope: !2046, inlinedAt: !2054)
!2066 = !DILocation(line: 0, scope: !2048, inlinedAt: !2054)
!2067 = !DILocation(line: 697, column: 11, scope: !2068, inlinedAt: !2054)
!2068 = distinct !DILexicalBlock(scope: !2048, file: !2, line: 697, column: 11)
!2069 = !DILocation(line: 697, column: 11, scope: !2048, inlinedAt: !2054)
!2070 = !DILocation(line: 699, column: 11, scope: !2071, inlinedAt: !2054)
!2071 = distinct !DILexicalBlock(scope: !2068, file: !2, line: 698, column: 9)
!2072 = !DILocation(line: 701, column: 9, scope: !2071, inlinedAt: !2054)
!2073 = !DILocation(line: 702, column: 16, scope: !2074, inlinedAt: !2054)
!2074 = distinct !DILexicalBlock(scope: !2068, file: !2, line: 702, column: 16)
!2075 = !DILocation(line: 702, column: 16, scope: !2068, inlinedAt: !2054)
!2076 = !DILocation(line: 704, column: 11, scope: !2077, inlinedAt: !2054)
!2077 = distinct !DILexicalBlock(scope: !2074, file: !2, line: 703, column: 9)
!2078 = !DILocation(line: 706, column: 9, scope: !2077, inlinedAt: !2054)
!2079 = !DILocation(line: 708, column: 11, scope: !2052, inlinedAt: !2054)
!2080 = !DILocation(line: 708, column: 21, scope: !2052, inlinedAt: !2054)
!2081 = !DILocation(line: 710, column: 11, scope: !2051, inlinedAt: !2054)
!2082 = !DILocation(line: 711, column: 15, scope: !2083, inlinedAt: !2054)
!2083 = distinct !DILexicalBlock(scope: !2051, file: !2, line: 711, column: 15)
!2084 = !DILocation(line: 711, column: 36, scope: !2083, inlinedAt: !2054)
!2085 = !DILocation(line: 711, column: 15, scope: !2051, inlinedAt: !2054)
!2086 = !DILocation(line: 712, column: 13, scope: !2083, inlinedAt: !2054)
!2087 = !DILocation(line: 713, column: 11, scope: !2088, inlinedAt: !2054)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !2, line: 713, column: 11)
!2089 = distinct !DILexicalBlock(scope: !2051, file: !2, line: 713, column: 11)
!2090 = !DILocation(line: 713, column: 11, scope: !2089, inlinedAt: !2054)
!2091 = !DILocation(line: 715, column: 9, scope: !2052, inlinedAt: !2054)
!2092 = !DILocation(line: 715, column: 9, scope: !2051, inlinedAt: !2054)
!2093 = !DILocation(line: 693, column: 39, scope: !2049, inlinedAt: !2054)
!2094 = !DILocation(line: 693, column: 21, scope: !2049, inlinedAt: !2054)
!2095 = !DILocation(line: 693, column: 3, scope: !2046, inlinedAt: !2054)
!2096 = distinct !{!2096, !2095, !2097, !1199}
!2097 = !DILocation(line: 716, column: 5, scope: !2046, inlinedAt: !2054)
!2098 = !DILocation(line: 719, column: 5, scope: !2063, inlinedAt: !2054)
!2099 = !DILocation(line: 720, column: 1, scope: !2043, inlinedAt: !2054)
!2100 = !DILocation(line: 897, column: 5, scope: !2040)
!2101 = !DILocation(line: 899, column: 7, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !223, file: !2, line: 899, column: 7)
!2103 = !DILocation(line: 899, column: 7, scope: !223)
!2104 = !DILocalVariable(name: "set", scope: !2105, file: !2, line: 725, type: !548)
!2105 = distinct !DISubprogram(name: "list_signal_handling", scope: !2, file: !2, line: 723, type: !711, scopeLine: 724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2106)
!2106 = !{!2104, !2107, !2109, !2112, !2113, !2114, !2115}
!2107 = !DILocalVariable(name: "i", scope: !2108, file: !2, line: 731, type: !122)
!2108 = distinct !DILexicalBlock(scope: !2105, file: !2, line: 731, column: 3)
!2109 = !DILocalVariable(name: "act", scope: !2110, file: !2, line: 733, type: !1905)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !2, line: 732, column: 5)
!2111 = distinct !DILexicalBlock(scope: !2108, file: !2, line: 731, column: 3)
!2112 = !DILocalVariable(name: "ignored", scope: !2110, file: !2, line: 737, type: !169)
!2113 = !DILocalVariable(name: "blocked", scope: !2110, file: !2, line: 738, type: !169)
!2114 = !DILocalVariable(name: "connect", scope: !2110, file: !2, line: 739, type: !169)
!2115 = !DILocalVariable(name: "signame", scope: !2110, file: !2, line: 744, type: !486)
!2116 = !DILocation(line: 0, scope: !2105, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 900, column: 5, scope: !2102)
!2118 = !DILocation(line: 0, scope: !2110, inlinedAt: !2117)
!2119 = !DILocation(line: 725, column: 3, scope: !2105, inlinedAt: !2117)
!2120 = !DILocation(line: 727, column: 3, scope: !2105, inlinedAt: !2117)
!2121 = !DILocation(line: 728, column: 7, scope: !2122, inlinedAt: !2117)
!2122 = distinct !DILexicalBlock(scope: !2105, file: !2, line: 728, column: 7)
!2123 = !DILocation(line: 728, column: 7, scope: !2105, inlinedAt: !2117)
!2124 = !DILocation(line: 729, column: 5, scope: !2122, inlinedAt: !2117)
!2125 = !DILocation(line: 0, scope: !2108, inlinedAt: !2117)
!2126 = !DILocation(line: 733, column: 7, scope: !2110, inlinedAt: !2117)
!2127 = !DILocation(line: 734, column: 11, scope: !2128, inlinedAt: !2117)
!2128 = distinct !DILexicalBlock(scope: !2110, file: !2, line: 734, column: 11)
!2129 = !DILocation(line: 734, column: 11, scope: !2110, inlinedAt: !2117)
!2130 = !DILocation(line: 737, column: 33, scope: !2110, inlinedAt: !2117)
!2131 = !DILocation(line: 737, column: 44, scope: !2110, inlinedAt: !2117)
!2132 = !DILocation(line: 737, column: 29, scope: !2110, inlinedAt: !2117)
!2133 = !DILocation(line: 738, column: 29, scope: !2110, inlinedAt: !2117)
!2134 = !DILocation(line: 739, column: 29, scope: !2110, inlinedAt: !2117)
!2135 = !DILocation(line: 739, column: 38, scope: !2110, inlinedAt: !2117)
!2136 = !DILocation(line: 741, column: 22, scope: !2137, inlinedAt: !2117)
!2137 = distinct !DILexicalBlock(scope: !2110, file: !2, line: 741, column: 11)
!2138 = !DILocation(line: 744, column: 7, scope: !2110, inlinedAt: !2117)
!2139 = !DILocation(line: 745, column: 11, scope: !2140, inlinedAt: !2117)
!2140 = distinct !DILexicalBlock(scope: !2110, file: !2, line: 745, column: 11)
!2141 = !DILocation(line: 745, column: 32, scope: !2140, inlinedAt: !2117)
!2142 = !DILocation(line: 745, column: 11, scope: !2110, inlinedAt: !2117)
!2143 = !DILocation(line: 746, column: 9, scope: !2140, inlinedAt: !2117)
!2144 = !DILocation(line: 747, column: 7, scope: !2110, inlinedAt: !2117)
!2145 = !DILocation(line: 749, column: 5, scope: !2111, inlinedAt: !2117)
!2146 = !DILocation(line: 731, column: 39, scope: !2111, inlinedAt: !2117)
!2147 = !DILocation(line: 731, column: 21, scope: !2111, inlinedAt: !2117)
!2148 = !DILocation(line: 731, column: 3, scope: !2108, inlinedAt: !2117)
!2149 = distinct !{!2149, !2148, !2150, !1199}
!2150 = !DILocation(line: 749, column: 5, scope: !2108, inlinedAt: !2117)
!2151 = !DILocation(line: 750, column: 1, scope: !2105, inlinedAt: !2117)
!2152 = !DILocation(line: 900, column: 5, scope: !2102)
!2153 = !DILocation(line: 918, column: 7, scope: !247)
!2154 = !DILocation(line: 902, column: 7, scope: !223)
!2155 = !DILocation(line: 904, column: 7, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !2, line: 904, column: 7)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !2, line: 903, column: 5)
!2158 = distinct !DILexicalBlock(scope: !223, file: !2, line: 902, column: 7)
!2159 = !DILocation(line: 904, column: 7, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2156, file: !2, line: 904, column: 7)
!2161 = !DILocation(line: 906, column: 11, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2157, file: !2, line: 906, column: 11)
!2163 = !DILocation(line: 906, column: 26, scope: !2162)
!2164 = !DILocation(line: 906, column: 11, scope: !2157)
!2165 = !DILocation(line: 907, column: 9, scope: !2162)
!2166 = !DILocation(line: 911, column: 24, scope: !223)
!2167 = !DILocation(line: 911, column: 19, scope: !223)
!2168 = !DILocation(line: 912, column: 7, scope: !223)
!2169 = !DILocation(line: 914, column: 7, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !2, line: 914, column: 7)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !2, line: 913, column: 5)
!2172 = distinct !DILexicalBlock(scope: !223, file: !2, line: 912, column: 7)
!2173 = !DILocation(line: 915, column: 7, scope: !2171)
!2174 = !DILocation(line: 915, column: 20, scope: !2171)
!2175 = !DILocation(line: 918, column: 7, scope: !223)
!2176 = !DILocation(line: 914, column: 7, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2170, file: !2, line: 914, column: 7)
!2178 = !DILocation(line: 915, column: 12, scope: !2171)
!2179 = !DILocation(line: 920, column: 7, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !2, line: 920, column: 7)
!2181 = distinct !DILexicalBlock(scope: !246, file: !2, line: 920, column: 7)
!2182 = !DILocation(line: 921, column: 18, scope: !245)
!2183 = !DILocation(line: 0, scope: !245)
!2184 = !DILocation(line: 921, column: 27, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !245, file: !2, line: 921, column: 7)
!2186 = !DILocation(line: 921, column: 7, scope: !245)
!2187 = !DILocation(line: 922, column: 9, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !2, line: 922, column: 9)
!2189 = distinct !DILexicalBlock(scope: !2185, file: !2, line: 922, column: 9)
!2190 = !DILocation(line: 922, column: 9, scope: !2189)
!2191 = !DILocation(line: 921, column: 34, scope: !2185)
!2192 = distinct !{!2192, !2186, !2193, !1199}
!2193 = !DILocation(line: 922, column: 9, scope: !245)
!2194 = !DILocation(line: 925, column: 26, scope: !223)
!2195 = !DILocation(line: 925, column: 21, scope: !223)
!2196 = !DILocation(line: 925, column: 3, scope: !223)
!2197 = !DILocation(line: 927, column: 21, scope: !223)
!2198 = !DILocation(line: 927, column: 27, scope: !223)
!2199 = !DILocation(line: 928, column: 3, scope: !223)
!2200 = !DILocation(line: 930, column: 34, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !223, file: !2, line: 930, column: 7)
!2202 = !DILocation(line: 930, column: 37, scope: !2201)
!2203 = !DILocation(line: 930, column: 7, scope: !223)
!2204 = !DILocation(line: 931, column: 5, scope: !2201)
!2205 = !DILocation(line: 934, column: 1, scope: !223)
!2206 = !DISubprogram(name: "bindtextdomain", scope: !1134, file: !1134, line: 86, type: !2207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!163, !169, !169}
!2209 = !DISubprogram(name: "textdomain", scope: !1134, file: !1134, line: 82, type: !1278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2210 = !DISubprogram(name: "atexit", scope: !1276, file: !1276, line: 602, type: !2211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!122, !710}
!2213 = !DISubprogram(name: "getopt_long", scope: !519, file: !519, line: 66, type: !2214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!122, !122, !241, !169, !2216, !524}
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!2217 = distinct !DISubprogram(name: "parse_signal_action_params", scope: !2, file: !2, line: 556, type: !2218, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2220)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{null, !169, !231}
!2220 = !{!2221, !2222, !2223, !2227, !2228, !2229}
!2221 = !DILocalVariable(name: "arg", arg: 1, scope: !2217, file: !2, line: 556, type: !169)
!2222 = !DILocalVariable(name: "set_default", arg: 2, scope: !2217, file: !2, line: 556, type: !231)
!2223 = !DILocalVariable(name: "i", scope: !2224, file: !2, line: 563, type: !122)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !2, line: 563, column: 7)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !2, line: 559, column: 5)
!2226 = distinct !DILexicalBlock(scope: !2217, file: !2, line: 558, column: 7)
!2227 = !DILocalVariable(name: "optarg_writable", scope: !2217, file: !2, line: 568, type: !163)
!2228 = !DILocalVariable(name: "opt_sig", scope: !2217, file: !2, line: 570, type: !163)
!2229 = !DILocalVariable(name: "signum", scope: !2230, file: !2, line: 573, type: !122)
!2230 = distinct !DILexicalBlock(scope: !2217, file: !2, line: 572, column: 5)
!2231 = !DILocation(line: 0, scope: !2217)
!2232 = !DILocation(line: 558, column: 9, scope: !2226)
!2233 = !DILocation(line: 558, column: 7, scope: !2217)
!2234 = !DILocation(line: 0, scope: !2224)
!2235 = !DILocation(line: 563, column: 7, scope: !2224)
!2236 = !DILocation(line: 564, column: 9, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2224, file: !2, line: 563, column: 7)
!2238 = !DILocation(line: 564, column: 20, scope: !2237)
!2239 = !DILocation(line: 586, column: 1, scope: !2217)
!2240 = !DILocation(line: 568, column: 27, scope: !2217)
!2241 = !DILocation(line: 570, column: 19, scope: !2217)
!2242 = !DILocation(line: 571, column: 3, scope: !2217)
!2243 = !DILocation(line: 573, column: 20, scope: !2230)
!2244 = !DILocation(line: 0, scope: !2230)
!2245 = !DILocation(line: 575, column: 18, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2230, file: !2, line: 575, column: 11)
!2247 = !DILocation(line: 575, column: 11, scope: !2230)
!2248 = !DILocation(line: 576, column: 9, scope: !2246)
!2249 = !DILocation(line: 577, column: 11, scope: !2230)
!2250 = !DILocation(line: 577, column: 18, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2230, file: !2, line: 577, column: 11)
!2252 = !DILocation(line: 578, column: 16, scope: !2251)
!2253 = !DILocation(line: 578, column: 9, scope: !2251)
!2254 = !DILocation(line: 580, column: 7, scope: !2230)
!2255 = !DILocation(line: 580, column: 23, scope: !2230)
!2256 = !DILocation(line: 582, column: 17, scope: !2230)
!2257 = distinct !{!2257, !2242, !2258, !1199}
!2258 = !DILocation(line: 583, column: 5, scope: !2217)
!2259 = !DILocation(line: 585, column: 3, scope: !2217)
!2260 = distinct !DISubprogram(name: "parse_block_signal_params", scope: !2, file: !2, line: 634, type: !2218, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2261)
!2261 = !{!2262, !2263, !2264, !2265, !2266}
!2262 = !DILocalVariable(name: "arg", arg: 1, scope: !2260, file: !2, line: 634, type: !169)
!2263 = !DILocalVariable(name: "block", arg: 2, scope: !2260, file: !2, line: 634, type: !231)
!2264 = !DILocalVariable(name: "optarg_writable", scope: !2260, file: !2, line: 654, type: !163)
!2265 = !DILocalVariable(name: "opt_sig", scope: !2260, file: !2, line: 656, type: !163)
!2266 = !DILocalVariable(name: "signum", scope: !2267, file: !2, line: 659, type: !122)
!2267 = distinct !DILexicalBlock(scope: !2260, file: !2, line: 658, column: 5)
!2268 = !DILocation(line: 0, scope: !2260)
!2269 = !DILocation(line: 636, column: 9, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2260, file: !2, line: 636, column: 7)
!2271 = !DILocation(line: 636, column: 7, scope: !2260)
!2272 = !DILocation(line: 642, column: 14, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2270, file: !2, line: 642, column: 12)
!2274 = !DILocation(line: 642, column: 12, scope: !2270)
!2275 = !DILocation(line: 645, column: 7, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2273, file: !2, line: 643, column: 5)
!2277 = !DILocation(line: 646, column: 7, scope: !2276)
!2278 = !DILocation(line: 647, column: 5, scope: !2276)
!2279 = !DILocation(line: 639, column: 19, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2270, file: !2, line: 637, column: 5)
!2281 = !DILocation(line: 639, column: 7, scope: !2280)
!2282 = !DILocation(line: 640, column: 20, scope: !2280)
!2283 = !DILocation(line: 640, column: 7, scope: !2280)
!2284 = !DILocation(line: 649, column: 20, scope: !2260)
!2285 = !DILocation(line: 651, column: 7, scope: !2260)
!2286 = !DILocation(line: 654, column: 27, scope: !2260)
!2287 = !DILocation(line: 656, column: 19, scope: !2260)
!2288 = !DILocation(line: 657, column: 3, scope: !2260)
!2289 = !DILocation(line: 659, column: 20, scope: !2267)
!2290 = !DILocation(line: 0, scope: !2267)
!2291 = !DILocation(line: 661, column: 18, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2267, file: !2, line: 661, column: 11)
!2293 = !DILocation(line: 661, column: 11, scope: !2267)
!2294 = !DILocation(line: 662, column: 9, scope: !2292)
!2295 = !DILocation(line: 663, column: 11, scope: !2267)
!2296 = !DILocation(line: 663, column: 18, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2267, file: !2, line: 663, column: 11)
!2298 = !DILocation(line: 664, column: 16, scope: !2297)
!2299 = !DILocation(line: 664, column: 9, scope: !2297)
!2300 = !DILocation(line: 666, column: 11, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2267, file: !2, line: 666, column: 11)
!2302 = !DILocation(line: 666, column: 73, scope: !2301)
!2303 = !DILocation(line: 666, column: 11, scope: !2267)
!2304 = !DILocation(line: 668, column: 15, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2301, file: !2, line: 667, column: 9)
!2306 = !DILocation(line: 669, column: 13, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2305, file: !2, line: 668, column: 15)
!2308 = !DILocation(line: 674, column: 9, scope: !2301)
!2309 = !DILocation(line: 676, column: 17, scope: !2267)
!2310 = distinct !{!2310, !2288, !2311, !1199}
!2311 = !DILocation(line: 677, column: 5, scope: !2260)
!2312 = !DILocation(line: 679, column: 3, scope: !2260)
!2313 = !DILocation(line: 680, column: 1, scope: !2260)
!2314 = distinct !DISubprogram(name: "check_start_new_arg", scope: !2, file: !2, line: 313, type: !1613, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2315)
!2315 = !{!2316, !2317}
!2316 = !DILocalVariable(name: "ss", arg: 1, scope: !2314, file: !2, line: 313, type: !1596)
!2317 = !DILocalVariable(name: "argc", scope: !2318, file: !2, line: 318, type: !122)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !2, line: 316, column: 5)
!2319 = distinct !DILexicalBlock(scope: !2314, file: !2, line: 315, column: 7)
!2320 = !DILocation(line: 0, scope: !2314)
!2321 = !DILocation(line: 315, column: 11, scope: !2319)
!2322 = !DILocation(line: 315, column: 7, scope: !2314)
!2323 = !DILocation(line: 0, scope: !1593, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 317, column: 7, scope: !2318)
!2325 = !DILocation(line: 303, column: 39, scope: !1593, inlinedAt: !2324)
!2326 = !DILocation(line: 303, column: 48, scope: !1593, inlinedAt: !2324)
!2327 = !DILocation(line: 303, column: 35, scope: !1593, inlinedAt: !2324)
!2328 = !DILocation(line: 303, column: 24, scope: !1593, inlinedAt: !2324)
!2329 = !DILocation(line: 304, column: 11, scope: !1607, inlinedAt: !2324)
!2330 = !DILocation(line: 304, column: 22, scope: !1607, inlinedAt: !2324)
!2331 = !DILocation(line: 304, column: 41, scope: !1607, inlinedAt: !2324)
!2332 = !DILocation(line: 304, column: 7, scope: !1593, inlinedAt: !2324)
!2333 = !DILocation(line: 0, scope: !1612, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 305, column: 5, scope: !1607, inlinedAt: !2324)
!2335 = !DILocation(line: 294, column: 14, scope: !1612, inlinedAt: !2334)
!2336 = !DILocation(line: 294, column: 12, scope: !1612, inlinedAt: !2334)
!2337 = !DILocation(line: 296, column: 27, scope: !1612, inlinedAt: !2334)
!2338 = !DILocation(line: 296, column: 21, scope: !1612, inlinedAt: !2334)
!2339 = !DILocation(line: 296, column: 48, scope: !1612, inlinedAt: !2334)
!2340 = !DILocation(line: 0, scope: !1627, inlinedAt: !2341)
!2341 = distinct !DILocation(line: 296, column: 3, scope: !1612, inlinedAt: !2334)
!2342 = !DILocation(line: 36, column: 10, scope: !1627, inlinedAt: !2341)
!2343 = !DILocation(line: 306, column: 18, scope: !1593, inlinedAt: !2324)
!2344 = !DILocation(line: 306, column: 29, scope: !1593, inlinedAt: !2324)
!2345 = !DILocation(line: 305, column: 5, scope: !1607, inlinedAt: !2324)
!2346 = !DILocation(line: 306, column: 23, scope: !1593, inlinedAt: !2324)
!2347 = !DILocation(line: 306, column: 3, scope: !1593, inlinedAt: !2324)
!2348 = !DILocation(line: 306, column: 56, scope: !1593, inlinedAt: !2324)
!2349 = !DILocation(line: 307, column: 58, scope: !1593, inlinedAt: !2324)
!2350 = !DILocation(line: 307, column: 24, scope: !1593, inlinedAt: !2324)
!2351 = !DILocation(line: 307, column: 7, scope: !1593, inlinedAt: !2324)
!2352 = !DILocation(line: 307, column: 16, scope: !1593, inlinedAt: !2324)
!2353 = !DILocation(line: 307, column: 3, scope: !1593, inlinedAt: !2324)
!2354 = !DILocation(line: 307, column: 22, scope: !1593, inlinedAt: !2324)
!2355 = !DILocation(line: 0, scope: !2318)
!2356 = !DILocation(line: 319, column: 15, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2318, file: !2, line: 319, column: 11)
!2358 = !DILocation(line: 319, column: 40, scope: !2357)
!2359 = !DILocation(line: 319, column: 34, scope: !2357)
!2360 = !DILocation(line: 319, column: 51, scope: !2357)
!2361 = !DILocation(line: 319, column: 29, scope: !2357)
!2362 = !DILocation(line: 319, column: 26, scope: !2357)
!2363 = !DILocation(line: 319, column: 11, scope: !2318)
!2364 = !DILocation(line: 0, scope: !1612, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 320, column: 9, scope: !2357)
!2366 = !DILocation(line: 293, column: 39, scope: !1612, inlinedAt: !2365)
!2367 = !DILocation(line: 293, column: 35, scope: !1612, inlinedAt: !2365)
!2368 = !DILocation(line: 293, column: 24, scope: !1612, inlinedAt: !2365)
!2369 = !DILocation(line: 294, column: 14, scope: !1612, inlinedAt: !2365)
!2370 = !DILocation(line: 294, column: 12, scope: !1612, inlinedAt: !2365)
!2371 = !DILocation(line: 296, column: 27, scope: !1612, inlinedAt: !2365)
!2372 = !DILocation(line: 296, column: 21, scope: !1612, inlinedAt: !2365)
!2373 = !DILocation(line: 296, column: 48, scope: !1612, inlinedAt: !2365)
!2374 = !DILocation(line: 0, scope: !1627, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 296, column: 3, scope: !1612, inlinedAt: !2365)
!2376 = !DILocation(line: 36, column: 10, scope: !1627, inlinedAt: !2375)
!2377 = !DILocation(line: 320, column: 9, scope: !2357)
!2378 = !DILocation(line: 321, column: 32, scope: !2318)
!2379 = !DILocation(line: 321, column: 28, scope: !2318)
!2380 = !DILocation(line: 321, column: 7, scope: !2318)
!2381 = !DILocation(line: 321, column: 26, scope: !2318)
!2382 = !DILocation(line: 322, column: 16, scope: !2318)
!2383 = !DILocation(line: 323, column: 15, scope: !2318)
!2384 = !DILocation(line: 324, column: 5, scope: !2318)
!2385 = !DILocation(line: 325, column: 1, scope: !2314)
!2386 = !DISubprogram(name: "free", scope: !1276, file: !1276, line: 555, type: !2387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{null, !164}
!2389 = !DISubprogram(name: "unsetenv", scope: !1276, file: !1276, line: 664, type: !2390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!122, !169}
!2392 = !DISubprogram(name: "__errno_location", scope: !2393, file: !2393, line: 37, type: !2394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2393 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!524}
!2396 = !DISubprogram(name: "putenv", scope: !1276, file: !1276, line: 654, type: !2397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!122, !163}
!2399 = !DISubprogram(name: "sigaction", scope: !176, file: !176, line: 243, type: !2400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!122, !122, !2402, !2405}
!2402 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2403)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1905)
!2405 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2406)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!2407 = !DISubprogram(name: "__builtin___snprintf_chk", scope: !2, file: !2, line: 623, type: !2408, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!122, !2410, !168, !122, !168, !1142, null}
!2410 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !163)
!2411 = !DISubprogram(name: "sigemptyset", scope: !176, file: !176, line: 199, type: !2412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!122, !2414}
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!2415 = !DISubprogram(name: "sigprocmask", scope: !176, file: !176, line: 232, type: !2416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!122, !122, !2418, !2421}
!2418 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2419)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!2421 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2414)
!2422 = !DISubprogram(name: "sigismember", scope: !176, file: !176, line: 211, type: !2423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!122, !2419, !122}
!2425 = !DISubprogram(name: "sigaddset", scope: !176, file: !176, line: 205, type: !2426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!122, !2414, !122}
!2428 = !DISubprogram(name: "sigdelset", scope: !176, file: !176, line: 208, type: !2426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2429 = !DISubprogram(name: "chdir", scope: !2430, file: !2430, line: 517, type: !2390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2430 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2431 = !DISubprogram(name: "execvp", scope: !2430, file: !2430, line: 599, type: !2432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!122, !169, !241}
!2434 = !DISubprogram(name: "strpbrk", scope: !1272, file: !1272, line: 323, type: !2207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2435 = !DISubprogram(name: "sigfillset", scope: !176, file: !176, line: 202, type: !2412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2436 = !DISubprogram(name: "strtok", scope: !1272, file: !1272, line: 356, type: !2437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!163, !2410, !1142}
!2439 = distinct !DISubprogram(name: "operand2sig", scope: !642, file: !642, line: 36, type: !2390, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !984, retainedNodes: !2440)
!2440 = !{!2441, !2442, !2443, !2446, !2447, !2448, !2450}
!2441 = !DILocalVariable(name: "operand", arg: 1, scope: !2439, file: !642, line: 36, type: !169)
!2442 = !DILocalVariable(name: "signum", scope: !2439, file: !642, line: 38, type: !122)
!2443 = !DILocalVariable(name: "endp", scope: !2444, file: !642, line: 53, type: !163)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !642, line: 41, column: 5)
!2445 = distinct !DILexicalBlock(scope: !2439, file: !642, line: 40, column: 7)
!2446 = !DILocalVariable(name: "l", scope: !2444, file: !642, line: 54, type: !174)
!2447 = !DILocalVariable(name: "i", scope: !2444, file: !642, line: 55, type: !122)
!2448 = !DILocalVariable(name: "upcased", scope: !2449, file: !642, line: 70, type: !163)
!2449 = distinct !DILexicalBlock(scope: !2445, file: !642, line: 67, column: 5)
!2450 = !DILocalVariable(name: "p", scope: !2451, file: !642, line: 71, type: !163)
!2451 = distinct !DILexicalBlock(scope: !2449, file: !642, line: 71, column: 7)
!2452 = distinct !DIAssignID()
!2453 = !DILocation(line: 0, scope: !2439)
!2454 = distinct !DIAssignID()
!2455 = !DILocation(line: 0, scope: !2444)
!2456 = !DILocation(line: 38, column: 3, scope: !2439)
!2457 = !DILocation(line: 40, column: 18, scope: !2445)
!2458 = !DILocalVariable(name: "c", arg: 1, scope: !2459, file: !1530, line: 233, type: !122)
!2459 = distinct !DISubprogram(name: "c_isdigit", scope: !1530, file: !1530, line: 233, type: !1531, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !984, retainedNodes: !2460)
!2460 = !{!2458}
!2461 = !DILocation(line: 0, scope: !2459, inlinedAt: !2462)
!2462 = distinct !DILocation(line: 40, column: 7, scope: !2445)
!2463 = !DILocation(line: 235, column: 3, scope: !2459, inlinedAt: !2462)
!2464 = !DILocation(line: 40, column: 7, scope: !2439)
!2465 = !DILocation(line: 53, column: 7, scope: !2444)
!2466 = !DILocation(line: 54, column: 21, scope: !2444)
!2467 = !DILocation(line: 54, column: 27, scope: !2444)
!2468 = !DILocation(line: 54, column: 32, scope: !2444)
!2469 = !DILocation(line: 55, column: 15, scope: !2444)
!2470 = !DILocation(line: 56, column: 28, scope: !2444)
!2471 = !DILocation(line: 56, column: 25, scope: !2444)
!2472 = !DILocation(line: 56, column: 33, scope: !2444)
!2473 = !DILocation(line: 56, column: 36, scope: !2444)
!2474 = !DILocation(line: 56, column: 42, scope: !2444)
!2475 = !DILocation(line: 56, column: 45, scope: !2444)
!2476 = !DILocation(line: 56, column: 51, scope: !2444)
!2477 = distinct !DIAssignID()
!2478 = !DILocation(line: 58, column: 11, scope: !2444)
!2479 = !DILocation(line: 58, column: 18, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2444, file: !642, line: 58, column: 11)
!2481 = !DILocation(line: 65, column: 5, scope: !2445)
!2482 = !DILocation(line: 65, column: 5, scope: !2444)
!2483 = !DILocation(line: 70, column: 23, scope: !2449)
!2484 = !DILocation(line: 0, scope: !2449)
!2485 = !DILocation(line: 0, scope: !2451)
!2486 = !DILocation(line: 71, column: 31, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2451, file: !642, line: 71, column: 7)
!2488 = !DILocation(line: 71, column: 7, scope: !2451)
!2489 = !DILocation(line: 77, column: 13, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2449, file: !642, line: 77, column: 11)
!2491 = !DILocation(line: 77, column: 40, scope: !2490)
!2492 = !DILocation(line: 78, column: 13, scope: !2490)
!2493 = !DILocation(line: 72, column: 13, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2487, file: !642, line: 72, column: 13)
!2495 = !DILocation(line: 72, column: 13, scope: !2487)
!2496 = !DILocation(line: 73, column: 14, scope: !2494)
!2497 = !DILocation(line: 73, column: 11, scope: !2494)
!2498 = !DILocation(line: 71, column: 36, scope: !2487)
!2499 = distinct !{!2499, !2488, !2500, !1199}
!2500 = !DILocation(line: 73, column: 23, scope: !2451)
!2501 = !DILocation(line: 78, column: 17, scope: !2490)
!2502 = !DILocation(line: 78, column: 28, scope: !2490)
!2503 = !DILocation(line: 78, column: 35, scope: !2490)
!2504 = !DILocation(line: 78, column: 38, scope: !2490)
!2505 = !DILocation(line: 78, column: 49, scope: !2490)
!2506 = !DILocation(line: 78, column: 56, scope: !2490)
!2507 = !DILocation(line: 78, column: 59, scope: !2490)
!2508 = !DILocation(line: 78, column: 70, scope: !2490)
!2509 = !DILocation(line: 79, column: 17, scope: !2490)
!2510 = !DILocation(line: 79, column: 37, scope: !2490)
!2511 = !DILocation(line: 79, column: 20, scope: !2490)
!2512 = !DILocation(line: 79, column: 51, scope: !2490)
!2513 = !DILocation(line: 77, column: 11, scope: !2449)
!2514 = !DILocation(line: 80, column: 16, scope: !2490)
!2515 = distinct !DIAssignID()
!2516 = !DILocation(line: 80, column: 9, scope: !2490)
!2517 = !DILocation(line: 82, column: 7, scope: !2449)
!2518 = !DILocation(line: 85, column: 11, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2439, file: !642, line: 85, column: 7)
!2520 = !DILocation(line: 85, column: 18, scope: !2519)
!2521 = !DILocation(line: 87, column: 7, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2519, file: !642, line: 86, column: 5)
!2523 = !DILocation(line: 88, column: 7, scope: !2522)
!2524 = !DILocation(line: 92, column: 1, scope: !2439)
!2525 = !DISubprogram(name: "strtol", scope: !1276, file: !1276, line: 177, type: !2526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!174, !1142, !2528, !122}
!2528 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !226)
!2529 = distinct !DISubprogram(name: "c_isalnum", scope: !2530, file: !2530, line: 169, type: !1531, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !988, retainedNodes: !2531)
!2530 = !DIFile(filename: "lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!2531 = !{!2532}
!2532 = !DILocalVariable(name: "c", arg: 1, scope: !2529, file: !2530, line: 169, type: !122)
!2533 = !DILocation(line: 0, scope: !2529)
!2534 = !DILocation(line: 171, column: 3, scope: !2529)
!2535 = !DILocation(line: 178, column: 7, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2529, file: !2530, line: 172, column: 5)
!2537 = !DILocation(line: 0, scope: !2536)
!2538 = !DILocation(line: 180, column: 1, scope: !2529)
!2539 = distinct !DISubprogram(name: "c_isalpha", scope: !2530, file: !2530, line: 183, type: !1531, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !988, retainedNodes: !2540)
!2540 = !{!2541}
!2541 = !DILocalVariable(name: "c", arg: 1, scope: !2539, file: !2530, line: 183, type: !122)
!2542 = !DILocation(line: 0, scope: !2539)
!2543 = !DILocation(line: 185, column: 3, scope: !2539)
!2544 = !DILocation(line: 193, column: 1, scope: !2539)
!2545 = distinct !DISubprogram(name: "c_isascii", scope: !2530, file: !2530, line: 198, type: !1531, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !988, retainedNodes: !2546)
!2546 = !{!2547}
!2547 = !DILocalVariable(name: "c", arg: 1, scope: !2545, file: !2530, line: 198, type: !122)
!2548 = !DILocation(line: 0, scope: !2545)
!2549 = !DILocation(line: 200, column: 3, scope: !2545)
!2550 = !DILocation(line: 212, column: 1, scope: !2545)
!2551 = distinct !DISubprogram(name: "c_isblank", scope: !2530, file: !2530, line: 215, type: !1531, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !988, retainedNodes: !2552)
!2552 = !{!2553}
!2553 = !DILocalVariable(name: "c", arg: 1, scope: !2551, file: !2530, line: 215, type: !122)
!2554 = !DILocation(line: 0, scope: !2551)
!2555 = !DILocation(line: 217, column: 12, scope: !2551)
!2556 = !DILocation(line: 217, column: 19, scope: !2551)
!2557 = !DILocation(line: 217, column: 3, scope: !2551)
!2558 = distinct !DISubprogram(name: "c_iscntrl", scope: !2530, file: !2530, line: 221, type: !1531, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !988, retainedNodes: !2559)
!2559 = !{!2560}
!2560 = !DILocalVariable(name: "c", arg: 1, scope: !2558, file: !2530, line: 221, type: !122)
!2561 = !DILocation(line: 0, scope: !2558)
!2562 = !DILocation(line: 223, column: 3, scope: !2558)
!2563 = !DILocation(line: 228, column: 7, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2558, file: !2530, line: 224, column: 5)
!2565 = !DILocation(line: 0, scope: !2564)
!2566 = !DILocation(line: 230, column: 1, scope: !2558)
!2567 = distinct !DISubprogram(name: "c_isdigit", scope: !2530, file: !2530, line: 233, type: !1531, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !988, retainedNodes: !2568)
!2568 = !{!2569}
!2569 = !DILocalVariable(name: "c", arg: 1, scope: !2567, file: !2530, line: 233, type: !122)
!2570 = !DILocation(line: 0, scope: !2567)
!2571 = !DILocation(line: 235, column: 3, scope: !2567)
!2572 = !DILocation(line: 242, column: 1, scope: !2567)
!2573 = distinct !DISubprogram(name: "c_isgraph", scope: !2530, file: !2530, line: 245, type: !1531, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !988, retainedNodes: !2574)
!2574 = !{!2575}
!2575 = !DILocalVariable(name: "c", arg: 1, scope: !2573, file: !2530, line: 245, type: !122)
!2576 = !DILocation(line: 0, scope: !2573)
!2577 = !DILocation(line: 247, column: 3, scope: !2573)
!2578 = !DILocation(line: 257, column: 1, scope: !2573)
!2579 = distinct !DISubprogram(name: "c_islower", scope: !2530, file: !2530, line: 260, type: !1531, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !988, retainedNodes: !2580)
!2580 = !{!2581}
!2581 = !DILocalVariable(name: "c", arg: 1, scope: !2579, file: !2530, line: 260, type: !122)
!2582 = !DILocation(line: 0, scope: !2579)
!2583 = !DILocation(line: 262, column: 3, scope: !2579)
!2584 = !DILocation(line: 269, column: 1, scope: !2579)
!2585 = distinct !DISubprogram(name: "c_isprint", scope: !2530, file: !2530, line: 272, type: !1531, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !988, retainedNodes: !2586)
!2586 = !{!2587}
!2587 = !DILocalVariable(name: "c", arg: 1, scope: !2585, file: !2530, line: 272, type: !122)
!2588 = !DILocation(line: 0, scope: !2585)
!2589 = !DILocation(line: 274, column: 3, scope: !2585)
!2590 = !DILocation(line: 285, column: 1, scope: !2585)
!2591 = distinct !DISubprogram(name: "c_ispunct", scope: !2530, file: !2530, line: 288, type: !1531, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !988, retainedNodes: !2592)
!2592 = !{!2593}
!2593 = !DILocalVariable(name: "c", arg: 1, scope: !2591, file: !2530, line: 288, type: !122)
!2594 = !DILocation(line: 0, scope: !2591)
!2595 = !DILocation(line: 290, column: 3, scope: !2591)
!2596 = !DILocation(line: 295, column: 7, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2591, file: !2530, line: 291, column: 5)
!2598 = !DILocation(line: 0, scope: !2597)
!2599 = !DILocation(line: 297, column: 1, scope: !2591)
!2600 = distinct !DISubprogram(name: "c_isspace", scope: !2530, file: !2530, line: 300, type: !1531, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !988, retainedNodes: !2601)
!2601 = !{!2602}
!2602 = !DILocalVariable(name: "c", arg: 1, scope: !2600, file: !2530, line: 300, type: !122)
!2603 = !DILocation(line: 0, scope: !2600)
!2604 = !DILocation(line: 302, column: 3, scope: !2600)
!2605 = !DILocation(line: 309, column: 1, scope: !2600)
!2606 = distinct !DISubprogram(name: "c_isupper", scope: !2530, file: !2530, line: 312, type: !1531, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !988, retainedNodes: !2607)
!2607 = !{!2608}
!2608 = !DILocalVariable(name: "c", arg: 1, scope: !2606, file: !2530, line: 312, type: !122)
!2609 = !DILocation(line: 0, scope: !2606)
!2610 = !DILocation(line: 314, column: 3, scope: !2606)
!2611 = !DILocation(line: 321, column: 1, scope: !2606)
!2612 = distinct !DISubprogram(name: "c_isxdigit", scope: !2530, file: !2530, line: 324, type: !1531, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !988, retainedNodes: !2613)
!2613 = !{!2614}
!2614 = !DILocalVariable(name: "c", arg: 1, scope: !2612, file: !2530, line: 324, type: !122)
!2615 = !DILocation(line: 0, scope: !2612)
!2616 = !DILocation(line: 326, column: 3, scope: !2612)
!2617 = !DILocation(line: 334, column: 1, scope: !2612)
!2618 = distinct !DISubprogram(name: "c_tolower", scope: !2530, file: !2530, line: 337, type: !2619, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !988, retainedNodes: !2621)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!122, !122}
!2621 = !{!2622}
!2622 = !DILocalVariable(name: "c", arg: 1, scope: !2618, file: !2530, line: 337, type: !122)
!2623 = !DILocation(line: 0, scope: !2618)
!2624 = !DILocation(line: 339, column: 3, scope: !2618)
!2625 = !DILocation(line: 346, column: 1, scope: !2618)
!2626 = distinct !DISubprogram(name: "c_toupper", scope: !2530, file: !2530, line: 349, type: !2619, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !988, retainedNodes: !2627)
!2627 = !{!2628}
!2628 = !DILocalVariable(name: "c", arg: 1, scope: !2626, file: !2530, line: 349, type: !122)
!2629 = !DILocation(line: 0, scope: !2626)
!2630 = !DILocation(line: 351, column: 3, scope: !2626)
!2631 = !DILocation(line: 358, column: 1, scope: !2626)
!2632 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !653, file: !653, line: 50, type: !1096, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !2633)
!2633 = !{!2634}
!2634 = !DILocalVariable(name: "file", arg: 1, scope: !2632, file: !653, line: 50, type: !169)
!2635 = !DILocation(line: 0, scope: !2632)
!2636 = !DILocation(line: 52, column: 13, scope: !2632)
!2637 = !DILocation(line: 53, column: 1, scope: !2632)
!2638 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !653, file: !653, line: 87, type: !2639, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !2641)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{null, !231}
!2641 = !{!2642}
!2642 = !DILocalVariable(name: "ignore", arg: 1, scope: !2638, file: !653, line: 87, type: !231)
!2643 = !DILocation(line: 0, scope: !2638)
!2644 = !DILocation(line: 89, column: 16, scope: !2638)
!2645 = !{!1438, !1438, i64 0}
!2646 = !DILocation(line: 90, column: 1, scope: !2638)
!2647 = distinct !DISubprogram(name: "close_stdout", scope: !653, file: !653, line: 116, type: !711, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !2648)
!2648 = !{!2649}
!2649 = !DILocalVariable(name: "write_error", scope: !2650, file: !653, line: 121, type: !169)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !653, line: 120, column: 5)
!2651 = distinct !DILexicalBlock(scope: !2647, file: !653, line: 118, column: 7)
!2652 = !DILocation(line: 118, column: 21, scope: !2651)
!2653 = !DILocation(line: 118, column: 7, scope: !2651)
!2654 = !DILocation(line: 118, column: 29, scope: !2651)
!2655 = !DILocation(line: 119, column: 7, scope: !2651)
!2656 = !DILocation(line: 119, column: 12, scope: !2651)
!2657 = !DILocation(line: 119, column: 25, scope: !2651)
!2658 = !DILocation(line: 119, column: 28, scope: !2651)
!2659 = !DILocation(line: 119, column: 34, scope: !2651)
!2660 = !DILocation(line: 118, column: 7, scope: !2647)
!2661 = !DILocation(line: 121, column: 33, scope: !2650)
!2662 = !DILocation(line: 0, scope: !2650)
!2663 = !DILocation(line: 122, column: 11, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2650, file: !653, line: 122, column: 11)
!2665 = !DILocation(line: 0, scope: !2664)
!2666 = !DILocation(line: 122, column: 11, scope: !2650)
!2667 = !DILocation(line: 123, column: 9, scope: !2664)
!2668 = !DILocation(line: 126, column: 9, scope: !2664)
!2669 = !DILocation(line: 128, column: 14, scope: !2650)
!2670 = !DILocation(line: 128, column: 7, scope: !2650)
!2671 = !DILocation(line: 133, column: 42, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2647, file: !653, line: 133, column: 7)
!2673 = !DILocation(line: 133, column: 28, scope: !2672)
!2674 = !DILocation(line: 133, column: 50, scope: !2672)
!2675 = !DILocation(line: 133, column: 7, scope: !2647)
!2676 = !DILocation(line: 134, column: 12, scope: !2672)
!2677 = !DILocation(line: 134, column: 5, scope: !2672)
!2678 = !DILocation(line: 135, column: 1, scope: !2647)
!2679 = !DISubprogram(name: "_exit", scope: !2430, file: !2430, line: 624, type: !178, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2680 = distinct !DISubprogram(name: "verror", scope: !668, file: !668, line: 251, type: !2681, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2683)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{null, !122, !122, !169, !678}
!2683 = !{!2684, !2685, !2686, !2687}
!2684 = !DILocalVariable(name: "status", arg: 1, scope: !2680, file: !668, line: 251, type: !122)
!2685 = !DILocalVariable(name: "errnum", arg: 2, scope: !2680, file: !668, line: 251, type: !122)
!2686 = !DILocalVariable(name: "message", arg: 3, scope: !2680, file: !668, line: 251, type: !169)
!2687 = !DILocalVariable(name: "args", arg: 4, scope: !2680, file: !668, line: 251, type: !678)
!2688 = !DILocation(line: 0, scope: !2680)
!2689 = !DILocation(line: 261, column: 3, scope: !2680)
!2690 = !DILocation(line: 265, column: 7, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2680, file: !668, line: 265, column: 7)
!2692 = !DILocation(line: 265, column: 7, scope: !2680)
!2693 = !DILocation(line: 266, column: 5, scope: !2691)
!2694 = !DILocation(line: 272, column: 7, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2691, file: !668, line: 268, column: 5)
!2696 = !DILocation(line: 276, column: 3, scope: !2680)
!2697 = !DILocation(line: 282, column: 1, scope: !2680)
!2698 = distinct !DISubprogram(name: "flush_stdout", scope: !668, file: !668, line: 163, type: !711, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2699)
!2699 = !{!2700}
!2700 = !DILocalVariable(name: "stdout_fd", scope: !2698, file: !668, line: 166, type: !122)
!2701 = !DILocation(line: 0, scope: !2698)
!2702 = !DILocalVariable(name: "fd", arg: 1, scope: !2703, file: !668, line: 145, type: !122)
!2703 = distinct !DISubprogram(name: "is_open", scope: !668, file: !668, line: 145, type: !2619, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2704)
!2704 = !{!2702}
!2705 = !DILocation(line: 0, scope: !2703, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 182, column: 25, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2698, file: !668, line: 182, column: 7)
!2708 = !DILocation(line: 157, column: 15, scope: !2703, inlinedAt: !2706)
!2709 = !DILocation(line: 157, column: 12, scope: !2703, inlinedAt: !2706)
!2710 = !DILocation(line: 182, column: 7, scope: !2698)
!2711 = !DILocation(line: 184, column: 5, scope: !2707)
!2712 = !DILocation(line: 185, column: 1, scope: !2698)
!2713 = distinct !DISubprogram(name: "error_tail", scope: !668, file: !668, line: 219, type: !2681, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2714)
!2714 = !{!2715, !2716, !2717, !2718}
!2715 = !DILocalVariable(name: "status", arg: 1, scope: !2713, file: !668, line: 219, type: !122)
!2716 = !DILocalVariable(name: "errnum", arg: 2, scope: !2713, file: !668, line: 219, type: !122)
!2717 = !DILocalVariable(name: "message", arg: 3, scope: !2713, file: !668, line: 219, type: !169)
!2718 = !DILocalVariable(name: "args", arg: 4, scope: !2713, file: !668, line: 219, type: !678)
!2719 = distinct !DIAssignID()
!2720 = !DILocation(line: 0, scope: !2713)
!2721 = !DILocation(line: 229, column: 13, scope: !2713)
!2722 = !DILocalVariable(name: "__stream", arg: 1, scope: !2723, file: !1138, line: 132, type: !2726)
!2723 = distinct !DISubprogram(name: "vfprintf", scope: !1138, file: !1138, line: 132, type: !2724, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2761)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!122, !2726, !1142, !678}
!2726 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2727)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !2729)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !2730)
!2730 = !{!2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2729, file: !330, line: 51, baseType: !122, size: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2729, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2729, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2729, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2729, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2729, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2729, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2729, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2729, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2729, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2729, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2729, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2729, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2729, file: !330, line: 70, baseType: !2745, size: 64, offset: 832)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2729, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2729, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2729, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2729, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2729, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2729, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2729, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2729, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2729, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2729, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2729, file: !330, line: 93, baseType: !2745, size: 64, offset: 1344)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2729, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2729, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2729, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2729, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!2761 = !{!2722, !2762, !2763}
!2762 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2723, file: !1138, line: 133, type: !1142)
!2763 = !DILocalVariable(name: "__ap", arg: 3, scope: !2723, file: !1138, line: 133, type: !678)
!2764 = !DILocation(line: 0, scope: !2723, inlinedAt: !2765)
!2765 = distinct !DILocation(line: 229, column: 3, scope: !2713)
!2766 = !DILocation(line: 135, column: 10, scope: !2723, inlinedAt: !2765)
!2767 = !DILocation(line: 232, column: 3, scope: !2713)
!2768 = !DILocation(line: 233, column: 7, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2713, file: !668, line: 233, column: 7)
!2770 = !DILocation(line: 233, column: 7, scope: !2713)
!2771 = !DILocalVariable(name: "errbuf", scope: !2772, file: !668, line: 193, type: !2776)
!2772 = distinct !DISubprogram(name: "print_errno_message", scope: !668, file: !668, line: 188, type: !178, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2773)
!2773 = !{!2774, !2775, !2771}
!2774 = !DILocalVariable(name: "errnum", arg: 1, scope: !2772, file: !668, line: 188, type: !122)
!2775 = !DILocalVariable(name: "s", scope: !2772, file: !668, line: 190, type: !169)
!2776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2777)
!2777 = !{!2778}
!2778 = !DISubrange(count: 1024)
!2779 = !DILocation(line: 0, scope: !2772, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 234, column: 5, scope: !2769)
!2781 = !DILocation(line: 193, column: 3, scope: !2772, inlinedAt: !2780)
!2782 = !DILocation(line: 195, column: 7, scope: !2772, inlinedAt: !2780)
!2783 = !DILocation(line: 207, column: 9, scope: !2784, inlinedAt: !2780)
!2784 = distinct !DILexicalBlock(scope: !2772, file: !668, line: 207, column: 7)
!2785 = !DILocation(line: 207, column: 7, scope: !2772, inlinedAt: !2780)
!2786 = !DILocation(line: 208, column: 9, scope: !2784, inlinedAt: !2780)
!2787 = !DILocation(line: 208, column: 5, scope: !2784, inlinedAt: !2780)
!2788 = !DILocation(line: 214, column: 3, scope: !2772, inlinedAt: !2780)
!2789 = !DILocation(line: 216, column: 1, scope: !2772, inlinedAt: !2780)
!2790 = !DILocation(line: 234, column: 5, scope: !2769)
!2791 = !DILocation(line: 238, column: 3, scope: !2713)
!2792 = !DILocalVariable(name: "__c", arg: 1, scope: !2793, file: !2794, line: 101, type: !122)
!2793 = distinct !DISubprogram(name: "putc_unlocked", scope: !2794, file: !2794, line: 101, type: !2795, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2797)
!2794 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!122, !122, !2727}
!2797 = !{!2792, !2798}
!2798 = !DILocalVariable(name: "__stream", arg: 2, scope: !2793, file: !2794, line: 101, type: !2727)
!2799 = !DILocation(line: 0, scope: !2793, inlinedAt: !2800)
!2800 = distinct !DILocation(line: 238, column: 3, scope: !2713)
!2801 = !DILocation(line: 103, column: 10, scope: !2793, inlinedAt: !2800)
!2802 = !{!2803, !1070, i64 40}
!2803 = !{!"_IO_FILE", !1153, i64 0, !1070, i64 8, !1070, i64 16, !1070, i64 24, !1070, i64 32, !1070, i64 40, !1070, i64 48, !1070, i64 56, !1070, i64 64, !1070, i64 72, !1070, i64 80, !1070, i64 88, !1070, i64 96, !1070, i64 104, !1153, i64 112, !1153, i64 116, !1355, i64 120, !1194, i64 128, !1071, i64 130, !1071, i64 131, !1070, i64 136, !1355, i64 144, !1070, i64 152, !1070, i64 160, !1070, i64 168, !1070, i64 176, !1355, i64 184, !1153, i64 192, !1071, i64 196}
!2804 = !{!2803, !1070, i64 48}
!2805 = !{!"branch_weights", i32 2000, i32 1}
!2806 = !DILocation(line: 240, column: 3, scope: !2713)
!2807 = !DILocation(line: 241, column: 7, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2713, file: !668, line: 241, column: 7)
!2809 = !DILocation(line: 241, column: 7, scope: !2713)
!2810 = !DILocation(line: 242, column: 5, scope: !2808)
!2811 = !DILocation(line: 243, column: 1, scope: !2713)
!2812 = !DISubprogram(name: "__vfprintf_chk", scope: !1138, file: !1138, line: 96, type: !2813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!122, !2726, !122, !1142, !678}
!2815 = !DISubprogram(name: "strerror_r", scope: !1272, file: !1272, line: 444, type: !2816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!163, !122, !163, !166}
!2818 = !DISubprogram(name: "__overflow", scope: !1147, file: !1147, line: 886, type: !2819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!122, !2727, !122}
!2821 = !DISubprogram(name: "fflush_unlocked", scope: !1147, file: !1147, line: 239, type: !2822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!122, !2727}
!2824 = !DISubprogram(name: "fcntl", scope: !2825, file: !2825, line: 149, type: !2826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2825 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!122, !122, !122, null}
!2828 = distinct !DISubprogram(name: "error", scope: !668, file: !668, line: 285, type: !2829, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2831)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{null, !122, !122, !169, null}
!2831 = !{!2832, !2833, !2834, !2835}
!2832 = !DILocalVariable(name: "status", arg: 1, scope: !2828, file: !668, line: 285, type: !122)
!2833 = !DILocalVariable(name: "errnum", arg: 2, scope: !2828, file: !668, line: 285, type: !122)
!2834 = !DILocalVariable(name: "message", arg: 3, scope: !2828, file: !668, line: 285, type: !169)
!2835 = !DILocalVariable(name: "ap", scope: !2828, file: !668, line: 287, type: !2836)
!2836 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1147, line: 52, baseType: !2837)
!2837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2838, line: 12, baseType: !2839)
!2838 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!2839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !668, baseType: !2840)
!2840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !679, size: 192, elements: !91)
!2841 = distinct !DIAssignID()
!2842 = !DILocation(line: 0, scope: !2828)
!2843 = !DILocation(line: 287, column: 3, scope: !2828)
!2844 = !DILocation(line: 288, column: 3, scope: !2828)
!2845 = !DILocation(line: 289, column: 3, scope: !2828)
!2846 = !DILocation(line: 290, column: 3, scope: !2828)
!2847 = !DILocation(line: 291, column: 1, scope: !2828)
!2848 = !DILocation(line: 0, scope: !675)
!2849 = !DILocation(line: 302, column: 7, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !675, file: !668, line: 302, column: 7)
!2851 = !DILocation(line: 302, column: 7, scope: !675)
!2852 = !DILocation(line: 307, column: 11, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !668, line: 307, column: 11)
!2854 = distinct !DILexicalBlock(scope: !2850, file: !668, line: 303, column: 5)
!2855 = !DILocation(line: 307, column: 27, scope: !2853)
!2856 = !DILocation(line: 308, column: 11, scope: !2853)
!2857 = !DILocation(line: 308, column: 28, scope: !2853)
!2858 = !DILocation(line: 308, column: 25, scope: !2853)
!2859 = !DILocation(line: 309, column: 15, scope: !2853)
!2860 = !DILocation(line: 309, column: 33, scope: !2853)
!2861 = !DILocation(line: 310, column: 19, scope: !2853)
!2862 = !DILocation(line: 311, column: 22, scope: !2853)
!2863 = !DILocation(line: 311, column: 56, scope: !2853)
!2864 = !DILocation(line: 307, column: 11, scope: !2854)
!2865 = !DILocation(line: 316, column: 21, scope: !2854)
!2866 = !DILocation(line: 317, column: 23, scope: !2854)
!2867 = !DILocation(line: 318, column: 5, scope: !2854)
!2868 = !DILocation(line: 327, column: 3, scope: !675)
!2869 = !DILocation(line: 331, column: 7, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !675, file: !668, line: 331, column: 7)
!2871 = !DILocation(line: 331, column: 7, scope: !675)
!2872 = !DILocation(line: 332, column: 5, scope: !2870)
!2873 = !DILocation(line: 338, column: 7, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2870, file: !668, line: 334, column: 5)
!2875 = !DILocation(line: 346, column: 3, scope: !675)
!2876 = !DILocation(line: 350, column: 3, scope: !675)
!2877 = !DILocation(line: 356, column: 1, scope: !675)
!2878 = distinct !DISubprogram(name: "error_at_line", scope: !668, file: !668, line: 359, type: !2879, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2881)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{null, !122, !122, !169, !109, !169, null}
!2881 = !{!2882, !2883, !2884, !2885, !2886, !2887}
!2882 = !DILocalVariable(name: "status", arg: 1, scope: !2878, file: !668, line: 359, type: !122)
!2883 = !DILocalVariable(name: "errnum", arg: 2, scope: !2878, file: !668, line: 359, type: !122)
!2884 = !DILocalVariable(name: "file_name", arg: 3, scope: !2878, file: !668, line: 359, type: !169)
!2885 = !DILocalVariable(name: "line_number", arg: 4, scope: !2878, file: !668, line: 360, type: !109)
!2886 = !DILocalVariable(name: "message", arg: 5, scope: !2878, file: !668, line: 360, type: !169)
!2887 = !DILocalVariable(name: "ap", scope: !2878, file: !668, line: 362, type: !2836)
!2888 = distinct !DIAssignID()
!2889 = !DILocation(line: 0, scope: !2878)
!2890 = !DILocation(line: 362, column: 3, scope: !2878)
!2891 = !DILocation(line: 363, column: 3, scope: !2878)
!2892 = !DILocation(line: 364, column: 3, scope: !2878)
!2893 = !DILocation(line: 366, column: 3, scope: !2878)
!2894 = !DILocation(line: 367, column: 1, scope: !2878)
!2895 = distinct !DISubprogram(name: "getprogname", scope: !991, file: !991, line: 54, type: !2896, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !990)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!169}
!2898 = !DILocation(line: 58, column: 10, scope: !2895)
!2899 = !DILocation(line: 58, column: 3, scope: !2895)
!2900 = distinct !DISubprogram(name: "set_program_name", scope: !716, file: !716, line: 37, type: !1096, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715, retainedNodes: !2901)
!2901 = !{!2902, !2903, !2904}
!2902 = !DILocalVariable(name: "argv0", arg: 1, scope: !2900, file: !716, line: 37, type: !169)
!2903 = !DILocalVariable(name: "slash", scope: !2900, file: !716, line: 44, type: !169)
!2904 = !DILocalVariable(name: "base", scope: !2900, file: !716, line: 45, type: !169)
!2905 = !DILocation(line: 0, scope: !2900)
!2906 = !DILocation(line: 44, column: 23, scope: !2900)
!2907 = !DILocation(line: 45, column: 22, scope: !2900)
!2908 = !DILocation(line: 46, column: 17, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2900, file: !716, line: 46, column: 7)
!2910 = !DILocation(line: 46, column: 9, scope: !2909)
!2911 = !DILocation(line: 46, column: 25, scope: !2909)
!2912 = !DILocation(line: 46, column: 40, scope: !2909)
!2913 = !DILocalVariable(name: "__s1", arg: 1, scope: !2914, file: !1165, line: 974, type: !1300)
!2914 = distinct !DISubprogram(name: "memeq", scope: !1165, file: !1165, line: 974, type: !2915, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715, retainedNodes: !2917)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!231, !1300, !1300, !166}
!2917 = !{!2913, !2918, !2919}
!2918 = !DILocalVariable(name: "__s2", arg: 2, scope: !2914, file: !1165, line: 974, type: !1300)
!2919 = !DILocalVariable(name: "__n", arg: 3, scope: !2914, file: !1165, line: 974, type: !166)
!2920 = !DILocation(line: 0, scope: !2914, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 46, column: 28, scope: !2909)
!2922 = !DILocation(line: 976, column: 11, scope: !2914, inlinedAt: !2921)
!2923 = !DILocation(line: 976, column: 10, scope: !2914, inlinedAt: !2921)
!2924 = !DILocation(line: 46, column: 7, scope: !2900)
!2925 = !DILocation(line: 49, column: 11, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !716, line: 49, column: 11)
!2927 = distinct !DILexicalBlock(scope: !2909, file: !716, line: 47, column: 5)
!2928 = !DILocation(line: 49, column: 36, scope: !2926)
!2929 = !DILocation(line: 49, column: 11, scope: !2927)
!2930 = !DILocation(line: 65, column: 16, scope: !2900)
!2931 = !DILocation(line: 71, column: 27, scope: !2900)
!2932 = !DILocation(line: 74, column: 33, scope: !2900)
!2933 = !DILocation(line: 76, column: 1, scope: !2900)
!2934 = !DISubprogram(name: "strrchr", scope: !1272, file: !1272, line: 273, type: !1287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2935 = distinct !DIAssignID()
!2936 = !DILocation(line: 0, scope: !725)
!2937 = distinct !DIAssignID()
!2938 = !DILocation(line: 40, column: 29, scope: !725)
!2939 = !DILocation(line: 41, column: 19, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !725, file: !726, line: 41, column: 7)
!2941 = !DILocation(line: 41, column: 7, scope: !725)
!2942 = !DILocation(line: 47, column: 3, scope: !725)
!2943 = !DILocation(line: 48, column: 3, scope: !725)
!2944 = !DILocalVariable(name: "ps", arg: 1, scope: !2945, file: !2946, line: 1135, type: !2949)
!2945 = distinct !DISubprogram(name: "mbszero", scope: !2946, file: !2946, line: 1135, type: !2947, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !2950)
!2946 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2947 = !DISubroutineType(types: !2948)
!2948 = !{null, !2949}
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!2950 = !{!2944}
!2951 = !DILocation(line: 0, scope: !2945, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 48, column: 18, scope: !725)
!2953 = !DILocalVariable(name: "__dest", arg: 1, scope: !2954, file: !1566, line: 57, type: !164)
!2954 = distinct !DISubprogram(name: "memset", scope: !1566, file: !1566, line: 57, type: !2955, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !2957)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!164, !164, !122, !166}
!2957 = !{!2953, !2958, !2959}
!2958 = !DILocalVariable(name: "__ch", arg: 2, scope: !2954, file: !1566, line: 57, type: !122)
!2959 = !DILocalVariable(name: "__len", arg: 3, scope: !2954, file: !1566, line: 57, type: !166)
!2960 = !DILocation(line: 0, scope: !2954, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 1137, column: 3, scope: !2945, inlinedAt: !2952)
!2962 = !DILocation(line: 59, column: 10, scope: !2954, inlinedAt: !2961)
!2963 = !DILocation(line: 49, column: 7, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !725, file: !726, line: 49, column: 7)
!2965 = !DILocation(line: 49, column: 39, scope: !2964)
!2966 = !DILocation(line: 49, column: 44, scope: !2964)
!2967 = !DILocation(line: 54, column: 1, scope: !725)
!2968 = !DISubprogram(name: "mbrtoc32", scope: !737, file: !737, line: 57, type: !2969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!166, !2971, !1142, !166, !2973}
!2971 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2972)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2949)
!2974 = distinct !DISubprogram(name: "clone_quoting_options", scope: !756, file: !756, line: 113, type: !2975, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !2978)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!2977, !2977}
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!2978 = !{!2979, !2980, !2981}
!2979 = !DILocalVariable(name: "o", arg: 1, scope: !2974, file: !756, line: 113, type: !2977)
!2980 = !DILocalVariable(name: "saved_errno", scope: !2974, file: !756, line: 115, type: !122)
!2981 = !DILocalVariable(name: "p", scope: !2974, file: !756, line: 116, type: !2977)
!2982 = !DILocation(line: 0, scope: !2974)
!2983 = !DILocation(line: 115, column: 21, scope: !2974)
!2984 = !DILocation(line: 116, column: 40, scope: !2974)
!2985 = !DILocation(line: 116, column: 31, scope: !2974)
!2986 = !DILocation(line: 118, column: 9, scope: !2974)
!2987 = !DILocation(line: 119, column: 3, scope: !2974)
!2988 = distinct !DISubprogram(name: "get_quoting_style", scope: !756, file: !756, line: 124, type: !2989, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !2993)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!779, !2991}
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !794)
!2993 = !{!2994}
!2994 = !DILocalVariable(name: "o", arg: 1, scope: !2988, file: !756, line: 124, type: !2991)
!2995 = !DILocation(line: 0, scope: !2988)
!2996 = !DILocation(line: 126, column: 11, scope: !2988)
!2997 = !DILocation(line: 126, column: 46, scope: !2988)
!2998 = !{!2999, !1153, i64 0}
!2999 = !{!"quoting_options", !1153, i64 0, !1153, i64 4, !1071, i64 8, !1070, i64 40, !1070, i64 48}
!3000 = !DILocation(line: 126, column: 3, scope: !2988)
!3001 = distinct !DISubprogram(name: "set_quoting_style", scope: !756, file: !756, line: 132, type: !3002, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3004)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{null, !2977, !779}
!3004 = !{!3005, !3006}
!3005 = !DILocalVariable(name: "o", arg: 1, scope: !3001, file: !756, line: 132, type: !2977)
!3006 = !DILocalVariable(name: "s", arg: 2, scope: !3001, file: !756, line: 132, type: !779)
!3007 = !DILocation(line: 0, scope: !3001)
!3008 = !DILocation(line: 134, column: 4, scope: !3001)
!3009 = !DILocation(line: 134, column: 45, scope: !3001)
!3010 = !DILocation(line: 135, column: 1, scope: !3001)
!3011 = distinct !DISubprogram(name: "set_char_quoting", scope: !756, file: !756, line: 143, type: !3012, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3014)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!122, !2977, !4, !122}
!3014 = !{!3015, !3016, !3017, !3018, !3019, !3021, !3022}
!3015 = !DILocalVariable(name: "o", arg: 1, scope: !3011, file: !756, line: 143, type: !2977)
!3016 = !DILocalVariable(name: "c", arg: 2, scope: !3011, file: !756, line: 143, type: !4)
!3017 = !DILocalVariable(name: "i", arg: 3, scope: !3011, file: !756, line: 143, type: !122)
!3018 = !DILocalVariable(name: "uc", scope: !3011, file: !756, line: 145, type: !171)
!3019 = !DILocalVariable(name: "p", scope: !3011, file: !756, line: 146, type: !3020)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!3021 = !DILocalVariable(name: "shift", scope: !3011, file: !756, line: 148, type: !122)
!3022 = !DILocalVariable(name: "r", scope: !3011, file: !756, line: 149, type: !109)
!3023 = !DILocation(line: 0, scope: !3011)
!3024 = !DILocation(line: 147, column: 6, scope: !3011)
!3025 = !DILocation(line: 147, column: 41, scope: !3011)
!3026 = !DILocation(line: 147, column: 62, scope: !3011)
!3027 = !DILocation(line: 147, column: 57, scope: !3011)
!3028 = !DILocation(line: 148, column: 15, scope: !3011)
!3029 = !DILocation(line: 149, column: 21, scope: !3011)
!3030 = !DILocation(line: 149, column: 24, scope: !3011)
!3031 = !DILocation(line: 149, column: 34, scope: !3011)
!3032 = !DILocation(line: 150, column: 19, scope: !3011)
!3033 = !DILocation(line: 150, column: 24, scope: !3011)
!3034 = !DILocation(line: 150, column: 6, scope: !3011)
!3035 = !DILocation(line: 151, column: 3, scope: !3011)
!3036 = distinct !DISubprogram(name: "set_quoting_flags", scope: !756, file: !756, line: 159, type: !3037, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3039)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!122, !2977, !122}
!3039 = !{!3040, !3041, !3042}
!3040 = !DILocalVariable(name: "o", arg: 1, scope: !3036, file: !756, line: 159, type: !2977)
!3041 = !DILocalVariable(name: "i", arg: 2, scope: !3036, file: !756, line: 159, type: !122)
!3042 = !DILocalVariable(name: "r", scope: !3036, file: !756, line: 163, type: !122)
!3043 = !DILocation(line: 0, scope: !3036)
!3044 = !DILocation(line: 161, column: 8, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3036, file: !756, line: 161, column: 7)
!3046 = !DILocation(line: 161, column: 7, scope: !3036)
!3047 = !DILocation(line: 163, column: 14, scope: !3036)
!3048 = !{!2999, !1153, i64 4}
!3049 = !DILocation(line: 164, column: 12, scope: !3036)
!3050 = !DILocation(line: 165, column: 3, scope: !3036)
!3051 = distinct !DISubprogram(name: "set_custom_quoting", scope: !756, file: !756, line: 169, type: !3052, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3054)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{null, !2977, !169, !169}
!3054 = !{!3055, !3056, !3057}
!3055 = !DILocalVariable(name: "o", arg: 1, scope: !3051, file: !756, line: 169, type: !2977)
!3056 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3051, file: !756, line: 170, type: !169)
!3057 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3051, file: !756, line: 170, type: !169)
!3058 = !DILocation(line: 0, scope: !3051)
!3059 = !DILocation(line: 172, column: 8, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3051, file: !756, line: 172, column: 7)
!3061 = !DILocation(line: 172, column: 7, scope: !3051)
!3062 = !DILocation(line: 174, column: 12, scope: !3051)
!3063 = !DILocation(line: 175, column: 8, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3051, file: !756, line: 175, column: 7)
!3065 = !DILocation(line: 175, column: 19, scope: !3064)
!3066 = !DILocation(line: 176, column: 5, scope: !3064)
!3067 = !DILocation(line: 177, column: 6, scope: !3051)
!3068 = !DILocation(line: 177, column: 17, scope: !3051)
!3069 = !{!2999, !1070, i64 40}
!3070 = !DILocation(line: 178, column: 6, scope: !3051)
!3071 = !DILocation(line: 178, column: 18, scope: !3051)
!3072 = !{!2999, !1070, i64 48}
!3073 = !DILocation(line: 179, column: 1, scope: !3051)
!3074 = !DISubprogram(name: "abort", scope: !1276, file: !1276, line: 598, type: !711, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3075 = distinct !DISubprogram(name: "quotearg_buffer", scope: !756, file: !756, line: 774, type: !3076, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3078)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!166, !163, !166, !169, !166, !2991}
!3078 = !{!3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086}
!3079 = !DILocalVariable(name: "buffer", arg: 1, scope: !3075, file: !756, line: 774, type: !163)
!3080 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3075, file: !756, line: 774, type: !166)
!3081 = !DILocalVariable(name: "arg", arg: 3, scope: !3075, file: !756, line: 775, type: !169)
!3082 = !DILocalVariable(name: "argsize", arg: 4, scope: !3075, file: !756, line: 775, type: !166)
!3083 = !DILocalVariable(name: "o", arg: 5, scope: !3075, file: !756, line: 776, type: !2991)
!3084 = !DILocalVariable(name: "p", scope: !3075, file: !756, line: 778, type: !2991)
!3085 = !DILocalVariable(name: "saved_errno", scope: !3075, file: !756, line: 779, type: !122)
!3086 = !DILocalVariable(name: "r", scope: !3075, file: !756, line: 780, type: !166)
!3087 = !DILocation(line: 0, scope: !3075)
!3088 = !DILocation(line: 778, column: 37, scope: !3075)
!3089 = !DILocation(line: 779, column: 21, scope: !3075)
!3090 = !DILocation(line: 781, column: 43, scope: !3075)
!3091 = !DILocation(line: 781, column: 53, scope: !3075)
!3092 = !DILocation(line: 781, column: 63, scope: !3075)
!3093 = !DILocation(line: 782, column: 43, scope: !3075)
!3094 = !DILocation(line: 782, column: 58, scope: !3075)
!3095 = !DILocation(line: 780, column: 14, scope: !3075)
!3096 = !DILocation(line: 783, column: 9, scope: !3075)
!3097 = !DILocation(line: 784, column: 3, scope: !3075)
!3098 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !756, file: !756, line: 251, type: !3099, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3103)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!166, !163, !166, !169, !166, !779, !122, !3101, !169, !169}
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!3103 = !{!3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3129, !3131, !3134, !3135, !3136, !3137, !3140, !3141, !3143, !3144, !3147, !3151, !3152, !3160, !3163, !3164, !3165}
!3104 = !DILocalVariable(name: "buffer", arg: 1, scope: !3098, file: !756, line: 251, type: !163)
!3105 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3098, file: !756, line: 251, type: !166)
!3106 = !DILocalVariable(name: "arg", arg: 3, scope: !3098, file: !756, line: 252, type: !169)
!3107 = !DILocalVariable(name: "argsize", arg: 4, scope: !3098, file: !756, line: 252, type: !166)
!3108 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3098, file: !756, line: 253, type: !779)
!3109 = !DILocalVariable(name: "flags", arg: 6, scope: !3098, file: !756, line: 253, type: !122)
!3110 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3098, file: !756, line: 254, type: !3101)
!3111 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3098, file: !756, line: 255, type: !169)
!3112 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3098, file: !756, line: 256, type: !169)
!3113 = !DILocalVariable(name: "unibyte_locale", scope: !3098, file: !756, line: 258, type: !231)
!3114 = !DILocalVariable(name: "len", scope: !3098, file: !756, line: 260, type: !166)
!3115 = !DILocalVariable(name: "orig_buffersize", scope: !3098, file: !756, line: 261, type: !166)
!3116 = !DILocalVariable(name: "quote_string", scope: !3098, file: !756, line: 262, type: !169)
!3117 = !DILocalVariable(name: "quote_string_len", scope: !3098, file: !756, line: 263, type: !166)
!3118 = !DILocalVariable(name: "backslash_escapes", scope: !3098, file: !756, line: 264, type: !231)
!3119 = !DILocalVariable(name: "elide_outer_quotes", scope: !3098, file: !756, line: 265, type: !231)
!3120 = !DILocalVariable(name: "encountered_single_quote", scope: !3098, file: !756, line: 266, type: !231)
!3121 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3098, file: !756, line: 267, type: !231)
!3122 = !DILabel(scope: !3098, name: "process_input", file: !756, line: 308)
!3123 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3098, file: !756, line: 309, type: !231)
!3124 = !DILocalVariable(name: "lq", scope: !3125, file: !756, line: 361, type: !169)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !756, line: 361, column: 11)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !756, line: 360, column: 13)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !756, line: 333, column: 7)
!3128 = distinct !DILexicalBlock(scope: !3098, file: !756, line: 312, column: 5)
!3129 = !DILocalVariable(name: "i", scope: !3130, file: !756, line: 395, type: !166)
!3130 = distinct !DILexicalBlock(scope: !3098, file: !756, line: 395, column: 3)
!3131 = !DILocalVariable(name: "is_right_quote", scope: !3132, file: !756, line: 397, type: !231)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !756, line: 396, column: 5)
!3133 = distinct !DILexicalBlock(scope: !3130, file: !756, line: 395, column: 3)
!3134 = !DILocalVariable(name: "escaping", scope: !3132, file: !756, line: 398, type: !231)
!3135 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3132, file: !756, line: 399, type: !231)
!3136 = !DILocalVariable(name: "c", scope: !3132, file: !756, line: 417, type: !171)
!3137 = !DILabel(scope: !3138, name: "c_and_shell_escape", file: !756, line: 502)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !756, line: 478, column: 9)
!3139 = distinct !DILexicalBlock(scope: !3132, file: !756, line: 419, column: 9)
!3140 = !DILabel(scope: !3138, name: "c_escape", file: !756, line: 507)
!3141 = !DILocalVariable(name: "m", scope: !3142, file: !756, line: 598, type: !166)
!3142 = distinct !DILexicalBlock(scope: !3139, file: !756, line: 596, column: 11)
!3143 = !DILocalVariable(name: "printable", scope: !3142, file: !756, line: 600, type: !231)
!3144 = !DILocalVariable(name: "mbs", scope: !3145, file: !756, line: 609, type: !828)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !756, line: 608, column: 15)
!3146 = distinct !DILexicalBlock(scope: !3142, file: !756, line: 602, column: 17)
!3147 = !DILocalVariable(name: "w", scope: !3148, file: !756, line: 618, type: !736)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !756, line: 617, column: 19)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !756, line: 616, column: 17)
!3150 = distinct !DILexicalBlock(scope: !3145, file: !756, line: 616, column: 17)
!3151 = !DILocalVariable(name: "bytes", scope: !3148, file: !756, line: 619, type: !166)
!3152 = !DILocalVariable(name: "j", scope: !3153, file: !756, line: 648, type: !166)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !756, line: 648, column: 29)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !756, line: 647, column: 27)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !756, line: 645, column: 29)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !756, line: 636, column: 23)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !756, line: 628, column: 30)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !756, line: 623, column: 30)
!3159 = distinct !DILexicalBlock(scope: !3148, file: !756, line: 621, column: 25)
!3160 = !DILocalVariable(name: "ilim", scope: !3161, file: !756, line: 674, type: !166)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !756, line: 671, column: 15)
!3162 = distinct !DILexicalBlock(scope: !3142, file: !756, line: 670, column: 17)
!3163 = !DILabel(scope: !3132, name: "store_escape", file: !756, line: 709)
!3164 = !DILabel(scope: !3132, name: "store_c", file: !756, line: 712)
!3165 = !DILabel(scope: !3098, name: "force_outer_quoting_style", file: !756, line: 753)
!3166 = distinct !DIAssignID()
!3167 = distinct !DIAssignID()
!3168 = distinct !DIAssignID()
!3169 = distinct !DIAssignID()
!3170 = distinct !DIAssignID()
!3171 = !DILocation(line: 0, scope: !3145)
!3172 = distinct !DIAssignID()
!3173 = !DILocation(line: 0, scope: !3148)
!3174 = !DILocation(line: 0, scope: !3098)
!3175 = !DILocation(line: 258, column: 25, scope: !3098)
!3176 = !DILocation(line: 258, column: 36, scope: !3098)
!3177 = !DILocation(line: 265, column: 8, scope: !3098)
!3178 = !DILocation(line: 267, column: 3, scope: !3098)
!3179 = !DILocation(line: 261, column: 10, scope: !3098)
!3180 = !DILocation(line: 262, column: 15, scope: !3098)
!3181 = !DILocation(line: 263, column: 10, scope: !3098)
!3182 = !DILocation(line: 264, column: 8, scope: !3098)
!3183 = !DILocation(line: 266, column: 8, scope: !3098)
!3184 = !DILocation(line: 267, column: 8, scope: !3098)
!3185 = !DILocation(line: 308, column: 2, scope: !3098)
!3186 = !DILocation(line: 311, column: 3, scope: !3098)
!3187 = !DILocation(line: 318, column: 11, scope: !3128)
!3188 = !DILocation(line: 318, column: 12, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3128, file: !756, line: 318, column: 11)
!3190 = !DILocation(line: 319, column: 9, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3192, file: !756, line: 319, column: 9)
!3192 = distinct !DILexicalBlock(scope: !3189, file: !756, line: 319, column: 9)
!3193 = !DILocation(line: 319, column: 9, scope: !3192)
!3194 = !DILocation(line: 0, scope: !819, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 357, column: 26, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3197, file: !756, line: 335, column: 11)
!3197 = distinct !DILexicalBlock(scope: !3127, file: !756, line: 334, column: 13)
!3198 = !DILocation(line: 199, column: 29, scope: !819, inlinedAt: !3195)
!3199 = !DILocation(line: 201, column: 19, scope: !3200, inlinedAt: !3195)
!3200 = distinct !DILexicalBlock(scope: !819, file: !756, line: 201, column: 7)
!3201 = !DILocation(line: 201, column: 7, scope: !819, inlinedAt: !3195)
!3202 = !DILocation(line: 229, column: 3, scope: !819, inlinedAt: !3195)
!3203 = !DILocation(line: 230, column: 3, scope: !819, inlinedAt: !3195)
!3204 = !DILocalVariable(name: "ps", arg: 1, scope: !3205, file: !2946, line: 1135, type: !3208)
!3205 = distinct !DISubprogram(name: "mbszero", scope: !2946, file: !2946, line: 1135, type: !3206, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3209)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{null, !3208}
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!3209 = !{!3204}
!3210 = !DILocation(line: 0, scope: !3205, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 230, column: 18, scope: !819, inlinedAt: !3195)
!3212 = !DILocalVariable(name: "__dest", arg: 1, scope: !3213, file: !1566, line: 57, type: !164)
!3213 = distinct !DISubprogram(name: "memset", scope: !1566, file: !1566, line: 57, type: !2955, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3214)
!3214 = !{!3212, !3215, !3216}
!3215 = !DILocalVariable(name: "__ch", arg: 2, scope: !3213, file: !1566, line: 57, type: !122)
!3216 = !DILocalVariable(name: "__len", arg: 3, scope: !3213, file: !1566, line: 57, type: !166)
!3217 = !DILocation(line: 0, scope: !3213, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 1137, column: 3, scope: !3205, inlinedAt: !3211)
!3219 = !DILocation(line: 59, column: 10, scope: !3213, inlinedAt: !3218)
!3220 = !DILocation(line: 231, column: 7, scope: !3221, inlinedAt: !3195)
!3221 = distinct !DILexicalBlock(scope: !819, file: !756, line: 231, column: 7)
!3222 = !DILocation(line: 231, column: 40, scope: !3221, inlinedAt: !3195)
!3223 = !DILocation(line: 231, column: 45, scope: !3221, inlinedAt: !3195)
!3224 = !DILocation(line: 235, column: 1, scope: !819, inlinedAt: !3195)
!3225 = !DILocation(line: 0, scope: !819, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 358, column: 27, scope: !3196)
!3227 = !DILocation(line: 199, column: 29, scope: !819, inlinedAt: !3226)
!3228 = !DILocation(line: 201, column: 19, scope: !3200, inlinedAt: !3226)
!3229 = !DILocation(line: 201, column: 7, scope: !819, inlinedAt: !3226)
!3230 = !DILocation(line: 229, column: 3, scope: !819, inlinedAt: !3226)
!3231 = !DILocation(line: 230, column: 3, scope: !819, inlinedAt: !3226)
!3232 = !DILocation(line: 0, scope: !3205, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 230, column: 18, scope: !819, inlinedAt: !3226)
!3234 = !DILocation(line: 0, scope: !3213, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 1137, column: 3, scope: !3205, inlinedAt: !3233)
!3236 = !DILocation(line: 59, column: 10, scope: !3213, inlinedAt: !3235)
!3237 = !DILocation(line: 231, column: 7, scope: !3221, inlinedAt: !3226)
!3238 = !DILocation(line: 231, column: 40, scope: !3221, inlinedAt: !3226)
!3239 = !DILocation(line: 231, column: 45, scope: !3221, inlinedAt: !3226)
!3240 = !DILocation(line: 235, column: 1, scope: !819, inlinedAt: !3226)
!3241 = !DILocation(line: 360, column: 14, scope: !3126)
!3242 = !DILocation(line: 360, column: 13, scope: !3127)
!3243 = !DILocation(line: 0, scope: !3125)
!3244 = !DILocation(line: 361, column: 45, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3125, file: !756, line: 361, column: 11)
!3246 = !DILocation(line: 361, column: 11, scope: !3125)
!3247 = !DILocation(line: 362, column: 13, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3249, file: !756, line: 362, column: 13)
!3249 = distinct !DILexicalBlock(scope: !3245, file: !756, line: 362, column: 13)
!3250 = !DILocation(line: 362, column: 13, scope: !3249)
!3251 = !DILocation(line: 361, column: 52, scope: !3245)
!3252 = distinct !{!3252, !3246, !3253, !1199}
!3253 = !DILocation(line: 362, column: 13, scope: !3125)
!3254 = !DILocation(line: 260, column: 10, scope: !3098)
!3255 = !DILocation(line: 365, column: 28, scope: !3127)
!3256 = !DILocation(line: 367, column: 7, scope: !3128)
!3257 = !DILocation(line: 370, column: 7, scope: !3128)
!3258 = !DILocation(line: 373, column: 7, scope: !3128)
!3259 = !DILocation(line: 376, column: 12, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3128, file: !756, line: 376, column: 11)
!3261 = !DILocation(line: 376, column: 11, scope: !3128)
!3262 = !DILocation(line: 381, column: 12, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3128, file: !756, line: 381, column: 11)
!3264 = !DILocation(line: 381, column: 11, scope: !3128)
!3265 = !DILocation(line: 382, column: 9, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !756, line: 382, column: 9)
!3267 = distinct !DILexicalBlock(scope: !3263, file: !756, line: 382, column: 9)
!3268 = !DILocation(line: 382, column: 9, scope: !3267)
!3269 = !DILocation(line: 389, column: 7, scope: !3128)
!3270 = !DILocation(line: 392, column: 7, scope: !3128)
!3271 = !DILocation(line: 0, scope: !3130)
!3272 = !DILocation(line: 395, column: 8, scope: !3130)
!3273 = !DILocation(line: 309, column: 8, scope: !3098)
!3274 = !DILocation(line: 395, scope: !3130)
!3275 = !DILocation(line: 395, column: 34, scope: !3133)
!3276 = !DILocation(line: 395, column: 26, scope: !3133)
!3277 = !DILocation(line: 395, column: 48, scope: !3133)
!3278 = !DILocation(line: 395, column: 55, scope: !3133)
!3279 = !DILocation(line: 395, column: 3, scope: !3130)
!3280 = !DILocation(line: 395, column: 67, scope: !3133)
!3281 = !DILocation(line: 0, scope: !3132)
!3282 = !DILocation(line: 402, column: 11, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3132, file: !756, line: 401, column: 11)
!3284 = !DILocation(line: 404, column: 17, scope: !3283)
!3285 = !DILocation(line: 405, column: 39, scope: !3283)
!3286 = !DILocation(line: 409, column: 32, scope: !3283)
!3287 = !DILocation(line: 405, column: 19, scope: !3283)
!3288 = !DILocation(line: 405, column: 15, scope: !3283)
!3289 = !DILocation(line: 410, column: 11, scope: !3283)
!3290 = !DILocation(line: 410, column: 25, scope: !3283)
!3291 = !DILocalVariable(name: "__s1", arg: 1, scope: !3292, file: !1165, line: 974, type: !1300)
!3292 = distinct !DISubprogram(name: "memeq", scope: !1165, file: !1165, line: 974, type: !2915, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3293)
!3293 = !{!3291, !3294, !3295}
!3294 = !DILocalVariable(name: "__s2", arg: 2, scope: !3292, file: !1165, line: 974, type: !1300)
!3295 = !DILocalVariable(name: "__n", arg: 3, scope: !3292, file: !1165, line: 974, type: !166)
!3296 = !DILocation(line: 0, scope: !3292, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 410, column: 14, scope: !3283)
!3298 = !DILocation(line: 976, column: 11, scope: !3292, inlinedAt: !3297)
!3299 = !DILocation(line: 976, column: 10, scope: !3292, inlinedAt: !3297)
!3300 = !DILocation(line: 401, column: 11, scope: !3132)
!3301 = !DILocation(line: 417, column: 25, scope: !3132)
!3302 = !DILocation(line: 418, column: 7, scope: !3132)
!3303 = !DILocation(line: 421, column: 15, scope: !3139)
!3304 = !DILocation(line: 423, column: 15, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !756, line: 423, column: 15)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !756, line: 422, column: 13)
!3307 = distinct !DILexicalBlock(scope: !3139, file: !756, line: 421, column: 15)
!3308 = !DILocation(line: 423, column: 15, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3305, file: !756, line: 423, column: 15)
!3310 = !DILocation(line: 423, column: 15, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3312, file: !756, line: 423, column: 15)
!3312 = distinct !DILexicalBlock(scope: !3313, file: !756, line: 423, column: 15)
!3313 = distinct !DILexicalBlock(scope: !3309, file: !756, line: 423, column: 15)
!3314 = !DILocation(line: 423, column: 15, scope: !3312)
!3315 = !DILocation(line: 423, column: 15, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !756, line: 423, column: 15)
!3317 = distinct !DILexicalBlock(scope: !3313, file: !756, line: 423, column: 15)
!3318 = !DILocation(line: 423, column: 15, scope: !3317)
!3319 = !DILocation(line: 423, column: 15, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !756, line: 423, column: 15)
!3321 = distinct !DILexicalBlock(scope: !3313, file: !756, line: 423, column: 15)
!3322 = !DILocation(line: 423, column: 15, scope: !3321)
!3323 = !DILocation(line: 423, column: 15, scope: !3313)
!3324 = !DILocation(line: 423, column: 15, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !756, line: 423, column: 15)
!3326 = distinct !DILexicalBlock(scope: !3305, file: !756, line: 423, column: 15)
!3327 = !DILocation(line: 423, column: 15, scope: !3326)
!3328 = !DILocation(line: 431, column: 19, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3306, file: !756, line: 430, column: 19)
!3330 = !DILocation(line: 431, column: 24, scope: !3329)
!3331 = !DILocation(line: 431, column: 28, scope: !3329)
!3332 = !DILocation(line: 431, column: 38, scope: !3329)
!3333 = !DILocation(line: 431, column: 48, scope: !3329)
!3334 = !DILocation(line: 431, column: 59, scope: !3329)
!3335 = !DILocation(line: 433, column: 19, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3337, file: !756, line: 433, column: 19)
!3337 = distinct !DILexicalBlock(scope: !3338, file: !756, line: 433, column: 19)
!3338 = distinct !DILexicalBlock(scope: !3329, file: !756, line: 432, column: 17)
!3339 = !DILocation(line: 433, column: 19, scope: !3337)
!3340 = !DILocation(line: 434, column: 19, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !756, line: 434, column: 19)
!3342 = distinct !DILexicalBlock(scope: !3338, file: !756, line: 434, column: 19)
!3343 = !DILocation(line: 434, column: 19, scope: !3342)
!3344 = !DILocation(line: 435, column: 17, scope: !3338)
!3345 = !DILocation(line: 442, column: 20, scope: !3307)
!3346 = !DILocation(line: 447, column: 11, scope: !3139)
!3347 = !DILocation(line: 450, column: 19, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3139, file: !756, line: 448, column: 13)
!3349 = !DILocation(line: 456, column: 19, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3348, file: !756, line: 455, column: 19)
!3351 = !DILocation(line: 456, column: 24, scope: !3350)
!3352 = !DILocation(line: 456, column: 28, scope: !3350)
!3353 = !DILocation(line: 456, column: 38, scope: !3350)
!3354 = !DILocation(line: 456, column: 41, scope: !3350)
!3355 = !DILocation(line: 456, column: 52, scope: !3350)
!3356 = !DILocation(line: 455, column: 19, scope: !3348)
!3357 = !DILocation(line: 457, column: 25, scope: !3350)
!3358 = !DILocation(line: 457, column: 17, scope: !3350)
!3359 = !DILocation(line: 464, column: 25, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3350, file: !756, line: 458, column: 19)
!3361 = !DILocation(line: 468, column: 21, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !756, line: 468, column: 21)
!3363 = distinct !DILexicalBlock(scope: !3360, file: !756, line: 468, column: 21)
!3364 = !DILocation(line: 468, column: 21, scope: !3363)
!3365 = !DILocation(line: 469, column: 21, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3367, file: !756, line: 469, column: 21)
!3367 = distinct !DILexicalBlock(scope: !3360, file: !756, line: 469, column: 21)
!3368 = !DILocation(line: 469, column: 21, scope: !3367)
!3369 = !DILocation(line: 470, column: 21, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !756, line: 470, column: 21)
!3371 = distinct !DILexicalBlock(scope: !3360, file: !756, line: 470, column: 21)
!3372 = !DILocation(line: 470, column: 21, scope: !3371)
!3373 = !DILocation(line: 471, column: 21, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !756, line: 471, column: 21)
!3375 = distinct !DILexicalBlock(scope: !3360, file: !756, line: 471, column: 21)
!3376 = !DILocation(line: 471, column: 21, scope: !3375)
!3377 = !DILocation(line: 472, column: 21, scope: !3360)
!3378 = !DILocation(line: 482, column: 33, scope: !3138)
!3379 = !DILocation(line: 483, column: 33, scope: !3138)
!3380 = !DILocation(line: 485, column: 33, scope: !3138)
!3381 = !DILocation(line: 486, column: 33, scope: !3138)
!3382 = !DILocation(line: 487, column: 33, scope: !3138)
!3383 = !DILocation(line: 490, column: 17, scope: !3138)
!3384 = !DILocation(line: 492, column: 21, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !756, line: 491, column: 15)
!3386 = distinct !DILexicalBlock(scope: !3138, file: !756, line: 490, column: 17)
!3387 = !DILocation(line: 499, column: 35, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3138, file: !756, line: 499, column: 17)
!3389 = !DILocation(line: 499, column: 57, scope: !3388)
!3390 = !DILocation(line: 0, scope: !3138)
!3391 = !DILocation(line: 502, column: 11, scope: !3138)
!3392 = !DILocation(line: 504, column: 17, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3138, file: !756, line: 503, column: 17)
!3394 = !DILocation(line: 507, column: 11, scope: !3138)
!3395 = !DILocation(line: 508, column: 17, scope: !3138)
!3396 = !DILocation(line: 517, column: 15, scope: !3139)
!3397 = !DILocation(line: 517, column: 40, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3139, file: !756, line: 517, column: 15)
!3399 = !DILocation(line: 517, column: 47, scope: !3398)
!3400 = !DILocation(line: 517, column: 18, scope: !3398)
!3401 = !DILocation(line: 521, column: 17, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3139, file: !756, line: 521, column: 15)
!3403 = !DILocation(line: 521, column: 15, scope: !3139)
!3404 = !DILocation(line: 525, column: 11, scope: !3139)
!3405 = !DILocation(line: 537, column: 15, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3139, file: !756, line: 536, column: 15)
!3407 = !DILocation(line: 544, column: 15, scope: !3139)
!3408 = !DILocation(line: 546, column: 19, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3410, file: !756, line: 545, column: 13)
!3410 = distinct !DILexicalBlock(scope: !3139, file: !756, line: 544, column: 15)
!3411 = !DILocation(line: 549, column: 19, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3409, file: !756, line: 549, column: 19)
!3413 = !DILocation(line: 549, column: 30, scope: !3412)
!3414 = !DILocation(line: 558, column: 15, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3416, file: !756, line: 558, column: 15)
!3416 = distinct !DILexicalBlock(scope: !3409, file: !756, line: 558, column: 15)
!3417 = !DILocation(line: 558, column: 15, scope: !3416)
!3418 = !DILocation(line: 559, column: 15, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !756, line: 559, column: 15)
!3420 = distinct !DILexicalBlock(scope: !3409, file: !756, line: 559, column: 15)
!3421 = !DILocation(line: 559, column: 15, scope: !3420)
!3422 = !DILocation(line: 560, column: 15, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !756, line: 560, column: 15)
!3424 = distinct !DILexicalBlock(scope: !3409, file: !756, line: 560, column: 15)
!3425 = !DILocation(line: 560, column: 15, scope: !3424)
!3426 = !DILocation(line: 562, column: 13, scope: !3409)
!3427 = !DILocation(line: 602, column: 17, scope: !3142)
!3428 = !DILocation(line: 0, scope: !3142)
!3429 = !DILocation(line: 605, column: 29, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3146, file: !756, line: 603, column: 15)
!3431 = !DILocation(line: 605, column: 27, scope: !3430)
!3432 = !DILocation(line: 606, column: 15, scope: !3430)
!3433 = !DILocation(line: 609, column: 17, scope: !3145)
!3434 = !DILocation(line: 0, scope: !3205, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 609, column: 32, scope: !3145)
!3436 = !DILocation(line: 0, scope: !3213, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 1137, column: 3, scope: !3205, inlinedAt: !3435)
!3438 = !DILocation(line: 59, column: 10, scope: !3213, inlinedAt: !3437)
!3439 = !DILocation(line: 613, column: 29, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3145, file: !756, line: 613, column: 21)
!3441 = !DILocation(line: 613, column: 21, scope: !3145)
!3442 = !DILocation(line: 614, column: 29, scope: !3440)
!3443 = !DILocation(line: 614, column: 19, scope: !3440)
!3444 = !DILocation(line: 618, column: 21, scope: !3148)
!3445 = !DILocation(line: 620, column: 54, scope: !3148)
!3446 = !DILocation(line: 619, column: 36, scope: !3148)
!3447 = !DILocation(line: 621, column: 25, scope: !3148)
!3448 = !DILocation(line: 631, column: 38, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3157, file: !756, line: 629, column: 23)
!3450 = !DILocation(line: 631, column: 48, scope: !3449)
!3451 = !DILocation(line: 626, column: 25, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3158, file: !756, line: 624, column: 23)
!3453 = !DILocation(line: 631, column: 51, scope: !3449)
!3454 = !DILocation(line: 631, column: 25, scope: !3449)
!3455 = !DILocation(line: 632, column: 28, scope: !3449)
!3456 = !DILocation(line: 631, column: 34, scope: !3449)
!3457 = distinct !{!3457, !3454, !3455, !1199}
!3458 = !DILocation(line: 0, scope: !3153)
!3459 = !DILocation(line: 646, column: 29, scope: !3155)
!3460 = !DILocation(line: 649, column: 39, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3153, file: !756, line: 648, column: 29)
!3462 = !DILocation(line: 649, column: 31, scope: !3461)
!3463 = !DILocation(line: 648, column: 60, scope: !3461)
!3464 = !DILocation(line: 648, column: 50, scope: !3461)
!3465 = !DILocation(line: 648, column: 29, scope: !3153)
!3466 = distinct !{!3466, !3465, !3467, !1199}
!3467 = !DILocation(line: 654, column: 33, scope: !3153)
!3468 = !DILocation(line: 657, column: 43, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3156, file: !756, line: 657, column: 29)
!3470 = !DILocalVariable(name: "wc", arg: 1, scope: !3471, file: !3472, line: 865, type: !3475)
!3471 = distinct !DISubprogram(name: "c32isprint", scope: !3472, file: !3472, line: 865, type: !3473, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3477)
!3472 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!122, !3475}
!3475 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3476, line: 20, baseType: !109)
!3476 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3477 = !{!3470}
!3478 = !DILocation(line: 0, scope: !3471, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 657, column: 31, scope: !3469)
!3480 = !DILocation(line: 871, column: 10, scope: !3471, inlinedAt: !3479)
!3481 = !DILocation(line: 657, column: 31, scope: !3469)
!3482 = !DILocation(line: 664, column: 23, scope: !3148)
!3483 = !DILocation(line: 665, column: 19, scope: !3149)
!3484 = !DILocation(line: 666, column: 15, scope: !3146)
!3485 = !DILocation(line: 0, scope: !3146)
!3486 = !DILocation(line: 670, column: 19, scope: !3162)
!3487 = !DILocation(line: 670, column: 23, scope: !3162)
!3488 = !DILocation(line: 674, column: 33, scope: !3161)
!3489 = !DILocation(line: 0, scope: !3161)
!3490 = !DILocation(line: 676, column: 17, scope: !3161)
!3491 = !DILocation(line: 398, column: 12, scope: !3132)
!3492 = !DILocation(line: 678, column: 43, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !756, line: 678, column: 25)
!3494 = distinct !DILexicalBlock(scope: !3495, file: !756, line: 677, column: 19)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !756, line: 676, column: 17)
!3496 = distinct !DILexicalBlock(scope: !3161, file: !756, line: 676, column: 17)
!3497 = !DILocation(line: 680, column: 25, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !756, line: 680, column: 25)
!3499 = distinct !DILexicalBlock(scope: !3493, file: !756, line: 679, column: 23)
!3500 = !DILocation(line: 680, column: 25, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3498, file: !756, line: 680, column: 25)
!3502 = !DILocation(line: 680, column: 25, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !756, line: 680, column: 25)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !756, line: 680, column: 25)
!3505 = distinct !DILexicalBlock(scope: !3501, file: !756, line: 680, column: 25)
!3506 = !DILocation(line: 680, column: 25, scope: !3504)
!3507 = !DILocation(line: 680, column: 25, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3509, file: !756, line: 680, column: 25)
!3509 = distinct !DILexicalBlock(scope: !3505, file: !756, line: 680, column: 25)
!3510 = !DILocation(line: 680, column: 25, scope: !3509)
!3511 = !DILocation(line: 680, column: 25, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !756, line: 680, column: 25)
!3513 = distinct !DILexicalBlock(scope: !3505, file: !756, line: 680, column: 25)
!3514 = !DILocation(line: 680, column: 25, scope: !3513)
!3515 = !DILocation(line: 680, column: 25, scope: !3505)
!3516 = !DILocation(line: 680, column: 25, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !756, line: 680, column: 25)
!3518 = distinct !DILexicalBlock(scope: !3498, file: !756, line: 680, column: 25)
!3519 = !DILocation(line: 680, column: 25, scope: !3518)
!3520 = !DILocation(line: 681, column: 25, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !756, line: 681, column: 25)
!3522 = distinct !DILexicalBlock(scope: !3499, file: !756, line: 681, column: 25)
!3523 = !DILocation(line: 681, column: 25, scope: !3522)
!3524 = !DILocation(line: 682, column: 25, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !756, line: 682, column: 25)
!3526 = distinct !DILexicalBlock(scope: !3499, file: !756, line: 682, column: 25)
!3527 = !DILocation(line: 682, column: 25, scope: !3526)
!3528 = !DILocation(line: 683, column: 38, scope: !3499)
!3529 = !DILocation(line: 683, column: 33, scope: !3499)
!3530 = !DILocation(line: 684, column: 23, scope: !3499)
!3531 = !DILocation(line: 685, column: 30, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3493, file: !756, line: 685, column: 30)
!3533 = !DILocation(line: 685, column: 30, scope: !3493)
!3534 = !DILocation(line: 687, column: 25, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !756, line: 687, column: 25)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !756, line: 687, column: 25)
!3537 = distinct !DILexicalBlock(scope: !3532, file: !756, line: 686, column: 23)
!3538 = !DILocation(line: 687, column: 25, scope: !3536)
!3539 = !DILocation(line: 689, column: 23, scope: !3537)
!3540 = !DILocation(line: 690, column: 35, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3494, file: !756, line: 690, column: 25)
!3542 = !DILocation(line: 690, column: 30, scope: !3541)
!3543 = !DILocation(line: 690, column: 25, scope: !3494)
!3544 = !DILocation(line: 692, column: 21, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !756, line: 692, column: 21)
!3546 = distinct !DILexicalBlock(scope: !3494, file: !756, line: 692, column: 21)
!3547 = !DILocation(line: 692, column: 21, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !756, line: 692, column: 21)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !756, line: 692, column: 21)
!3550 = distinct !DILexicalBlock(scope: !3545, file: !756, line: 692, column: 21)
!3551 = !DILocation(line: 692, column: 21, scope: !3549)
!3552 = !DILocation(line: 692, column: 21, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3554, file: !756, line: 692, column: 21)
!3554 = distinct !DILexicalBlock(scope: !3550, file: !756, line: 692, column: 21)
!3555 = !DILocation(line: 692, column: 21, scope: !3554)
!3556 = !DILocation(line: 692, column: 21, scope: !3550)
!3557 = !DILocation(line: 0, scope: !3494)
!3558 = !DILocation(line: 693, column: 21, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3560, file: !756, line: 693, column: 21)
!3560 = distinct !DILexicalBlock(scope: !3494, file: !756, line: 693, column: 21)
!3561 = !DILocation(line: 693, column: 21, scope: !3560)
!3562 = !DILocation(line: 694, column: 25, scope: !3494)
!3563 = !DILocation(line: 676, column: 17, scope: !3495)
!3564 = distinct !{!3564, !3565, !3566}
!3565 = !DILocation(line: 676, column: 17, scope: !3496)
!3566 = !DILocation(line: 695, column: 19, scope: !3496)
!3567 = !DILocation(line: 409, column: 30, scope: !3283)
!3568 = !DILocation(line: 702, column: 34, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3132, file: !756, line: 702, column: 11)
!3570 = !DILocation(line: 704, column: 14, scope: !3569)
!3571 = !DILocation(line: 705, column: 14, scope: !3569)
!3572 = !DILocation(line: 705, column: 35, scope: !3569)
!3573 = !DILocation(line: 705, column: 17, scope: !3569)
!3574 = !DILocation(line: 705, column: 47, scope: !3569)
!3575 = !DILocation(line: 705, column: 65, scope: !3569)
!3576 = !DILocation(line: 706, column: 11, scope: !3569)
!3577 = !DILocation(line: 702, column: 11, scope: !3132)
!3578 = !DILocation(line: 395, column: 15, scope: !3130)
!3579 = !DILocation(line: 709, column: 5, scope: !3132)
!3580 = !DILocation(line: 710, column: 7, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3132, file: !756, line: 710, column: 7)
!3582 = !DILocation(line: 710, column: 7, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3581, file: !756, line: 710, column: 7)
!3584 = !DILocation(line: 710, column: 7, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3586, file: !756, line: 710, column: 7)
!3586 = distinct !DILexicalBlock(scope: !3587, file: !756, line: 710, column: 7)
!3587 = distinct !DILexicalBlock(scope: !3583, file: !756, line: 710, column: 7)
!3588 = !DILocation(line: 710, column: 7, scope: !3586)
!3589 = !DILocation(line: 710, column: 7, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3591, file: !756, line: 710, column: 7)
!3591 = distinct !DILexicalBlock(scope: !3587, file: !756, line: 710, column: 7)
!3592 = !DILocation(line: 710, column: 7, scope: !3591)
!3593 = !DILocation(line: 710, column: 7, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !756, line: 710, column: 7)
!3595 = distinct !DILexicalBlock(scope: !3587, file: !756, line: 710, column: 7)
!3596 = !DILocation(line: 710, column: 7, scope: !3595)
!3597 = !DILocation(line: 710, column: 7, scope: !3587)
!3598 = !DILocation(line: 710, column: 7, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3600, file: !756, line: 710, column: 7)
!3600 = distinct !DILexicalBlock(scope: !3581, file: !756, line: 710, column: 7)
!3601 = !DILocation(line: 710, column: 7, scope: !3600)
!3602 = !DILocation(line: 712, column: 5, scope: !3132)
!3603 = !DILocation(line: 713, column: 7, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3605, file: !756, line: 713, column: 7)
!3605 = distinct !DILexicalBlock(scope: !3132, file: !756, line: 713, column: 7)
!3606 = !DILocation(line: 417, column: 21, scope: !3132)
!3607 = !DILocation(line: 713, column: 7, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3609, file: !756, line: 713, column: 7)
!3609 = distinct !DILexicalBlock(scope: !3610, file: !756, line: 713, column: 7)
!3610 = distinct !DILexicalBlock(scope: !3604, file: !756, line: 713, column: 7)
!3611 = !DILocation(line: 713, column: 7, scope: !3609)
!3612 = !DILocation(line: 713, column: 7, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3614, file: !756, line: 713, column: 7)
!3614 = distinct !DILexicalBlock(scope: !3610, file: !756, line: 713, column: 7)
!3615 = !DILocation(line: 713, column: 7, scope: !3614)
!3616 = !DILocation(line: 713, column: 7, scope: !3610)
!3617 = !DILocation(line: 714, column: 7, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !756, line: 714, column: 7)
!3619 = distinct !DILexicalBlock(scope: !3132, file: !756, line: 714, column: 7)
!3620 = !DILocation(line: 714, column: 7, scope: !3619)
!3621 = !DILocation(line: 716, column: 13, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3132, file: !756, line: 716, column: 11)
!3623 = !DILocation(line: 716, column: 11, scope: !3132)
!3624 = !DILocation(line: 718, column: 5, scope: !3133)
!3625 = !DILocation(line: 395, column: 82, scope: !3133)
!3626 = !DILocation(line: 395, column: 3, scope: !3133)
!3627 = distinct !{!3627, !3279, !3628, !1199}
!3628 = !DILocation(line: 718, column: 5, scope: !3130)
!3629 = !DILocation(line: 720, column: 11, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3098, file: !756, line: 720, column: 7)
!3631 = !DILocation(line: 720, column: 16, scope: !3630)
!3632 = !DILocation(line: 728, column: 51, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3098, file: !756, line: 728, column: 7)
!3634 = !DILocation(line: 731, column: 11, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3636, file: !756, line: 731, column: 11)
!3636 = distinct !DILexicalBlock(scope: !3633, file: !756, line: 730, column: 5)
!3637 = !DILocation(line: 731, column: 11, scope: !3636)
!3638 = !DILocation(line: 732, column: 16, scope: !3635)
!3639 = !DILocation(line: 732, column: 9, scope: !3635)
!3640 = !DILocation(line: 736, column: 18, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3635, file: !756, line: 736, column: 16)
!3642 = !DILocation(line: 736, column: 29, scope: !3641)
!3643 = !DILocation(line: 745, column: 7, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3098, file: !756, line: 745, column: 7)
!3645 = !DILocation(line: 745, column: 20, scope: !3644)
!3646 = !DILocation(line: 746, column: 12, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3648, file: !756, line: 746, column: 5)
!3648 = distinct !DILexicalBlock(scope: !3644, file: !756, line: 746, column: 5)
!3649 = !DILocation(line: 746, column: 5, scope: !3648)
!3650 = !DILocation(line: 747, column: 7, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3652, file: !756, line: 747, column: 7)
!3652 = distinct !DILexicalBlock(scope: !3647, file: !756, line: 747, column: 7)
!3653 = !DILocation(line: 747, column: 7, scope: !3652)
!3654 = !DILocation(line: 746, column: 39, scope: !3647)
!3655 = distinct !{!3655, !3649, !3656, !1199}
!3656 = !DILocation(line: 747, column: 7, scope: !3648)
!3657 = !DILocation(line: 749, column: 11, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3098, file: !756, line: 749, column: 7)
!3659 = !DILocation(line: 749, column: 7, scope: !3098)
!3660 = !DILocation(line: 750, column: 5, scope: !3658)
!3661 = !DILocation(line: 750, column: 17, scope: !3658)
!3662 = !DILocation(line: 753, column: 2, scope: !3098)
!3663 = !DILocation(line: 756, column: 51, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3098, file: !756, line: 756, column: 7)
!3665 = !DILocation(line: 756, column: 21, scope: !3664)
!3666 = !DILocation(line: 760, column: 42, scope: !3098)
!3667 = !DILocation(line: 758, column: 10, scope: !3098)
!3668 = !DILocation(line: 758, column: 3, scope: !3098)
!3669 = !DILocation(line: 762, column: 1, scope: !3098)
!3670 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1276, file: !1276, line: 98, type: !3671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!166}
!3673 = !DISubprogram(name: "strlen", scope: !1272, file: !1272, line: 407, type: !3674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!168, !169}
!3676 = !DISubprogram(name: "iswprint", scope: !3677, file: !3677, line: 120, type: !3473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3677 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3678 = distinct !DISubprogram(name: "quotearg_alloc", scope: !756, file: !756, line: 788, type: !3679, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3681)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!163, !169, !166, !2991}
!3681 = !{!3682, !3683, !3684}
!3682 = !DILocalVariable(name: "arg", arg: 1, scope: !3678, file: !756, line: 788, type: !169)
!3683 = !DILocalVariable(name: "argsize", arg: 2, scope: !3678, file: !756, line: 788, type: !166)
!3684 = !DILocalVariable(name: "o", arg: 3, scope: !3678, file: !756, line: 789, type: !2991)
!3685 = !DILocation(line: 0, scope: !3678)
!3686 = !DILocalVariable(name: "arg", arg: 1, scope: !3687, file: !756, line: 801, type: !169)
!3687 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !756, file: !756, line: 801, type: !3688, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3690)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!163, !169, !166, !1006, !2991}
!3690 = !{!3686, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698}
!3691 = !DILocalVariable(name: "argsize", arg: 2, scope: !3687, file: !756, line: 801, type: !166)
!3692 = !DILocalVariable(name: "size", arg: 3, scope: !3687, file: !756, line: 801, type: !1006)
!3693 = !DILocalVariable(name: "o", arg: 4, scope: !3687, file: !756, line: 802, type: !2991)
!3694 = !DILocalVariable(name: "p", scope: !3687, file: !756, line: 804, type: !2991)
!3695 = !DILocalVariable(name: "saved_errno", scope: !3687, file: !756, line: 805, type: !122)
!3696 = !DILocalVariable(name: "flags", scope: !3687, file: !756, line: 807, type: !122)
!3697 = !DILocalVariable(name: "bufsize", scope: !3687, file: !756, line: 808, type: !166)
!3698 = !DILocalVariable(name: "buf", scope: !3687, file: !756, line: 812, type: !163)
!3699 = !DILocation(line: 0, scope: !3687, inlinedAt: !3700)
!3700 = distinct !DILocation(line: 791, column: 10, scope: !3678)
!3701 = !DILocation(line: 804, column: 37, scope: !3687, inlinedAt: !3700)
!3702 = !DILocation(line: 805, column: 21, scope: !3687, inlinedAt: !3700)
!3703 = !DILocation(line: 807, column: 18, scope: !3687, inlinedAt: !3700)
!3704 = !DILocation(line: 807, column: 24, scope: !3687, inlinedAt: !3700)
!3705 = !DILocation(line: 808, column: 72, scope: !3687, inlinedAt: !3700)
!3706 = !DILocation(line: 809, column: 56, scope: !3687, inlinedAt: !3700)
!3707 = !DILocation(line: 810, column: 49, scope: !3687, inlinedAt: !3700)
!3708 = !DILocation(line: 811, column: 49, scope: !3687, inlinedAt: !3700)
!3709 = !DILocation(line: 808, column: 20, scope: !3687, inlinedAt: !3700)
!3710 = !DILocation(line: 811, column: 62, scope: !3687, inlinedAt: !3700)
!3711 = !DILocation(line: 812, column: 15, scope: !3687, inlinedAt: !3700)
!3712 = !DILocation(line: 813, column: 60, scope: !3687, inlinedAt: !3700)
!3713 = !DILocation(line: 815, column: 32, scope: !3687, inlinedAt: !3700)
!3714 = !DILocation(line: 815, column: 47, scope: !3687, inlinedAt: !3700)
!3715 = !DILocation(line: 813, column: 3, scope: !3687, inlinedAt: !3700)
!3716 = !DILocation(line: 816, column: 9, scope: !3687, inlinedAt: !3700)
!3717 = !DILocation(line: 791, column: 3, scope: !3678)
!3718 = !DILocation(line: 0, scope: !3687)
!3719 = !DILocation(line: 804, column: 37, scope: !3687)
!3720 = !DILocation(line: 805, column: 21, scope: !3687)
!3721 = !DILocation(line: 807, column: 18, scope: !3687)
!3722 = !DILocation(line: 807, column: 27, scope: !3687)
!3723 = !DILocation(line: 807, column: 24, scope: !3687)
!3724 = !DILocation(line: 808, column: 72, scope: !3687)
!3725 = !DILocation(line: 809, column: 56, scope: !3687)
!3726 = !DILocation(line: 810, column: 49, scope: !3687)
!3727 = !DILocation(line: 811, column: 49, scope: !3687)
!3728 = !DILocation(line: 808, column: 20, scope: !3687)
!3729 = !DILocation(line: 811, column: 62, scope: !3687)
!3730 = !DILocation(line: 812, column: 15, scope: !3687)
!3731 = !DILocation(line: 813, column: 60, scope: !3687)
!3732 = !DILocation(line: 815, column: 32, scope: !3687)
!3733 = !DILocation(line: 815, column: 47, scope: !3687)
!3734 = !DILocation(line: 813, column: 3, scope: !3687)
!3735 = !DILocation(line: 816, column: 9, scope: !3687)
!3736 = !DILocation(line: 817, column: 7, scope: !3687)
!3737 = !DILocation(line: 818, column: 11, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3687, file: !756, line: 817, column: 7)
!3739 = !DILocation(line: 818, column: 5, scope: !3738)
!3740 = !DILocation(line: 819, column: 3, scope: !3687)
!3741 = distinct !DISubprogram(name: "quotearg_free", scope: !756, file: !756, line: 837, type: !711, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3742)
!3742 = !{!3743, !3744}
!3743 = !DILocalVariable(name: "sv", scope: !3741, file: !756, line: 839, type: !842)
!3744 = !DILocalVariable(name: "i", scope: !3745, file: !756, line: 840, type: !122)
!3745 = distinct !DILexicalBlock(scope: !3741, file: !756, line: 840, column: 3)
!3746 = !DILocation(line: 839, column: 24, scope: !3741)
!3747 = !DILocation(line: 0, scope: !3741)
!3748 = !DILocation(line: 0, scope: !3745)
!3749 = !DILocation(line: 840, column: 21, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3745, file: !756, line: 840, column: 3)
!3751 = !DILocation(line: 840, column: 3, scope: !3745)
!3752 = !DILocation(line: 842, column: 13, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3741, file: !756, line: 842, column: 7)
!3754 = !{!3755, !1070, i64 8}
!3755 = !{!"slotvec", !1355, i64 0, !1070, i64 8}
!3756 = !DILocation(line: 842, column: 17, scope: !3753)
!3757 = !DILocation(line: 842, column: 7, scope: !3741)
!3758 = !DILocation(line: 841, column: 17, scope: !3750)
!3759 = !DILocation(line: 841, column: 5, scope: !3750)
!3760 = !DILocation(line: 840, column: 32, scope: !3750)
!3761 = distinct !{!3761, !3751, !3762, !1199}
!3762 = !DILocation(line: 841, column: 20, scope: !3745)
!3763 = !DILocation(line: 844, column: 7, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3753, file: !756, line: 843, column: 5)
!3765 = !DILocation(line: 845, column: 21, scope: !3764)
!3766 = !{!3755, !1355, i64 0}
!3767 = !DILocation(line: 846, column: 20, scope: !3764)
!3768 = !DILocation(line: 847, column: 5, scope: !3764)
!3769 = !DILocation(line: 848, column: 10, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3741, file: !756, line: 848, column: 7)
!3771 = !DILocation(line: 848, column: 7, scope: !3741)
!3772 = !DILocation(line: 850, column: 7, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3770, file: !756, line: 849, column: 5)
!3774 = !DILocation(line: 851, column: 15, scope: !3773)
!3775 = !DILocation(line: 852, column: 5, scope: !3773)
!3776 = !DILocation(line: 853, column: 10, scope: !3741)
!3777 = !DILocation(line: 854, column: 1, scope: !3741)
!3778 = distinct !DISubprogram(name: "quotearg_n", scope: !756, file: !756, line: 919, type: !1269, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3779)
!3779 = !{!3780, !3781}
!3780 = !DILocalVariable(name: "n", arg: 1, scope: !3778, file: !756, line: 919, type: !122)
!3781 = !DILocalVariable(name: "arg", arg: 2, scope: !3778, file: !756, line: 919, type: !169)
!3782 = !DILocation(line: 0, scope: !3778)
!3783 = !DILocation(line: 921, column: 10, scope: !3778)
!3784 = !DILocation(line: 921, column: 3, scope: !3778)
!3785 = distinct !DISubprogram(name: "quotearg_n_options", scope: !756, file: !756, line: 866, type: !3786, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3788)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!163, !122, !169, !166, !2991}
!3788 = !{!3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3799, !3800, !3802, !3803, !3804}
!3789 = !DILocalVariable(name: "n", arg: 1, scope: !3785, file: !756, line: 866, type: !122)
!3790 = !DILocalVariable(name: "arg", arg: 2, scope: !3785, file: !756, line: 866, type: !169)
!3791 = !DILocalVariable(name: "argsize", arg: 3, scope: !3785, file: !756, line: 866, type: !166)
!3792 = !DILocalVariable(name: "options", arg: 4, scope: !3785, file: !756, line: 867, type: !2991)
!3793 = !DILocalVariable(name: "saved_errno", scope: !3785, file: !756, line: 869, type: !122)
!3794 = !DILocalVariable(name: "sv", scope: !3785, file: !756, line: 871, type: !842)
!3795 = !DILocalVariable(name: "nslots_max", scope: !3785, file: !756, line: 873, type: !122)
!3796 = !DILocalVariable(name: "preallocated", scope: !3797, file: !756, line: 879, type: !231)
!3797 = distinct !DILexicalBlock(scope: !3798, file: !756, line: 878, column: 5)
!3798 = distinct !DILexicalBlock(scope: !3785, file: !756, line: 877, column: 7)
!3799 = !DILocalVariable(name: "new_nslots", scope: !3797, file: !756, line: 880, type: !1019)
!3800 = !DILocalVariable(name: "size", scope: !3801, file: !756, line: 891, type: !166)
!3801 = distinct !DILexicalBlock(scope: !3785, file: !756, line: 890, column: 3)
!3802 = !DILocalVariable(name: "val", scope: !3801, file: !756, line: 892, type: !163)
!3803 = !DILocalVariable(name: "flags", scope: !3801, file: !756, line: 894, type: !122)
!3804 = !DILocalVariable(name: "qsize", scope: !3801, file: !756, line: 895, type: !166)
!3805 = distinct !DIAssignID()
!3806 = !DILocation(line: 0, scope: !3797)
!3807 = !DILocation(line: 0, scope: !3785)
!3808 = !DILocation(line: 869, column: 21, scope: !3785)
!3809 = !DILocation(line: 871, column: 24, scope: !3785)
!3810 = !DILocation(line: 874, column: 17, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3785, file: !756, line: 874, column: 7)
!3812 = !DILocation(line: 875, column: 5, scope: !3811)
!3813 = !DILocation(line: 877, column: 7, scope: !3798)
!3814 = !DILocation(line: 877, column: 14, scope: !3798)
!3815 = !DILocation(line: 877, column: 7, scope: !3785)
!3816 = !DILocation(line: 879, column: 31, scope: !3797)
!3817 = !DILocation(line: 880, column: 7, scope: !3797)
!3818 = !DILocation(line: 880, column: 26, scope: !3797)
!3819 = !DILocation(line: 880, column: 13, scope: !3797)
!3820 = distinct !DIAssignID()
!3821 = !DILocation(line: 882, column: 31, scope: !3797)
!3822 = !DILocation(line: 883, column: 33, scope: !3797)
!3823 = !DILocation(line: 883, column: 42, scope: !3797)
!3824 = !DILocation(line: 883, column: 31, scope: !3797)
!3825 = !DILocation(line: 882, column: 22, scope: !3797)
!3826 = !DILocation(line: 882, column: 15, scope: !3797)
!3827 = !DILocation(line: 884, column: 11, scope: !3797)
!3828 = !DILocation(line: 885, column: 15, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3797, file: !756, line: 884, column: 11)
!3830 = !{i64 0, i64 8, !1354, i64 8, i64 8, !1069}
!3831 = !DILocation(line: 885, column: 9, scope: !3829)
!3832 = !DILocation(line: 886, column: 20, scope: !3797)
!3833 = !DILocation(line: 886, column: 18, scope: !3797)
!3834 = !DILocation(line: 886, column: 32, scope: !3797)
!3835 = !DILocation(line: 886, column: 43, scope: !3797)
!3836 = !DILocation(line: 886, column: 53, scope: !3797)
!3837 = !DILocation(line: 0, scope: !3213, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 886, column: 7, scope: !3797)
!3839 = !DILocation(line: 59, column: 10, scope: !3213, inlinedAt: !3838)
!3840 = !DILocation(line: 887, column: 16, scope: !3797)
!3841 = !DILocation(line: 887, column: 14, scope: !3797)
!3842 = !DILocation(line: 888, column: 5, scope: !3798)
!3843 = !DILocation(line: 888, column: 5, scope: !3797)
!3844 = !DILocation(line: 891, column: 19, scope: !3801)
!3845 = !DILocation(line: 891, column: 25, scope: !3801)
!3846 = !DILocation(line: 0, scope: !3801)
!3847 = !DILocation(line: 892, column: 23, scope: !3801)
!3848 = !DILocation(line: 894, column: 26, scope: !3801)
!3849 = !DILocation(line: 894, column: 32, scope: !3801)
!3850 = !DILocation(line: 896, column: 55, scope: !3801)
!3851 = !DILocation(line: 897, column: 55, scope: !3801)
!3852 = !DILocation(line: 898, column: 55, scope: !3801)
!3853 = !DILocation(line: 899, column: 55, scope: !3801)
!3854 = !DILocation(line: 895, column: 20, scope: !3801)
!3855 = !DILocation(line: 901, column: 14, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3801, file: !756, line: 901, column: 9)
!3857 = !DILocation(line: 901, column: 9, scope: !3801)
!3858 = !DILocation(line: 903, column: 35, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3856, file: !756, line: 902, column: 7)
!3860 = !DILocation(line: 903, column: 20, scope: !3859)
!3861 = !DILocation(line: 904, column: 17, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3859, file: !756, line: 904, column: 13)
!3863 = !DILocation(line: 904, column: 13, scope: !3859)
!3864 = !DILocation(line: 905, column: 11, scope: !3862)
!3865 = !DILocation(line: 906, column: 27, scope: !3859)
!3866 = !DILocation(line: 906, column: 19, scope: !3859)
!3867 = !DILocation(line: 907, column: 69, scope: !3859)
!3868 = !DILocation(line: 909, column: 44, scope: !3859)
!3869 = !DILocation(line: 910, column: 44, scope: !3859)
!3870 = !DILocation(line: 907, column: 9, scope: !3859)
!3871 = !DILocation(line: 911, column: 7, scope: !3859)
!3872 = !DILocation(line: 913, column: 11, scope: !3801)
!3873 = !DILocation(line: 914, column: 5, scope: !3801)
!3874 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !756, file: !756, line: 925, type: !3875, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3877)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!163, !122, !169, !166}
!3877 = !{!3878, !3879, !3880}
!3878 = !DILocalVariable(name: "n", arg: 1, scope: !3874, file: !756, line: 925, type: !122)
!3879 = !DILocalVariable(name: "arg", arg: 2, scope: !3874, file: !756, line: 925, type: !169)
!3880 = !DILocalVariable(name: "argsize", arg: 3, scope: !3874, file: !756, line: 925, type: !166)
!3881 = !DILocation(line: 0, scope: !3874)
!3882 = !DILocation(line: 927, column: 10, scope: !3874)
!3883 = !DILocation(line: 927, column: 3, scope: !3874)
!3884 = distinct !DISubprogram(name: "quotearg", scope: !756, file: !756, line: 931, type: !1278, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3885)
!3885 = !{!3886}
!3886 = !DILocalVariable(name: "arg", arg: 1, scope: !3884, file: !756, line: 931, type: !169)
!3887 = !DILocation(line: 0, scope: !3884)
!3888 = !DILocation(line: 0, scope: !3778, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 933, column: 10, scope: !3884)
!3890 = !DILocation(line: 921, column: 10, scope: !3778, inlinedAt: !3889)
!3891 = !DILocation(line: 933, column: 3, scope: !3884)
!3892 = distinct !DISubprogram(name: "quotearg_mem", scope: !756, file: !756, line: 937, type: !3893, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3895)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!163, !169, !166}
!3895 = !{!3896, !3897}
!3896 = !DILocalVariable(name: "arg", arg: 1, scope: !3892, file: !756, line: 937, type: !169)
!3897 = !DILocalVariable(name: "argsize", arg: 2, scope: !3892, file: !756, line: 937, type: !166)
!3898 = !DILocation(line: 0, scope: !3892)
!3899 = !DILocation(line: 0, scope: !3874, inlinedAt: !3900)
!3900 = distinct !DILocation(line: 939, column: 10, scope: !3892)
!3901 = !DILocation(line: 927, column: 10, scope: !3874, inlinedAt: !3900)
!3902 = !DILocation(line: 939, column: 3, scope: !3892)
!3903 = distinct !DISubprogram(name: "quotearg_n_style", scope: !756, file: !756, line: 943, type: !3904, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3906)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!163, !122, !779, !169}
!3906 = !{!3907, !3908, !3909, !3910}
!3907 = !DILocalVariable(name: "n", arg: 1, scope: !3903, file: !756, line: 943, type: !122)
!3908 = !DILocalVariable(name: "s", arg: 2, scope: !3903, file: !756, line: 943, type: !779)
!3909 = !DILocalVariable(name: "arg", arg: 3, scope: !3903, file: !756, line: 943, type: !169)
!3910 = !DILocalVariable(name: "o", scope: !3903, file: !756, line: 945, type: !2992)
!3911 = distinct !DIAssignID()
!3912 = !DILocation(line: 0, scope: !3903)
!3913 = !DILocation(line: 945, column: 3, scope: !3903)
!3914 = !{!3915}
!3915 = distinct !{!3915, !3916, !"quoting_options_from_style: argument 0"}
!3916 = distinct !{!3916, !"quoting_options_from_style"}
!3917 = !DILocation(line: 945, column: 36, scope: !3903)
!3918 = !DILocalVariable(name: "style", arg: 1, scope: !3919, file: !756, line: 183, type: !779)
!3919 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !756, file: !756, line: 183, type: !3920, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3922)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!794, !779}
!3922 = !{!3918, !3923}
!3923 = !DILocalVariable(name: "o", scope: !3919, file: !756, line: 185, type: !794)
!3924 = !DILocation(line: 0, scope: !3919, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 945, column: 36, scope: !3903)
!3926 = !DILocation(line: 185, column: 26, scope: !3919, inlinedAt: !3925)
!3927 = distinct !DIAssignID()
!3928 = !DILocation(line: 186, column: 13, scope: !3929, inlinedAt: !3925)
!3929 = distinct !DILexicalBlock(scope: !3919, file: !756, line: 186, column: 7)
!3930 = !DILocation(line: 186, column: 7, scope: !3919, inlinedAt: !3925)
!3931 = !DILocation(line: 187, column: 5, scope: !3929, inlinedAt: !3925)
!3932 = !DILocation(line: 188, column: 11, scope: !3919, inlinedAt: !3925)
!3933 = distinct !DIAssignID()
!3934 = !DILocation(line: 946, column: 10, scope: !3903)
!3935 = !DILocation(line: 947, column: 1, scope: !3903)
!3936 = !DILocation(line: 946, column: 3, scope: !3903)
!3937 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !756, file: !756, line: 950, type: !3938, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3940)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!163, !122, !779, !169, !166}
!3940 = !{!3941, !3942, !3943, !3944, !3945}
!3941 = !DILocalVariable(name: "n", arg: 1, scope: !3937, file: !756, line: 950, type: !122)
!3942 = !DILocalVariable(name: "s", arg: 2, scope: !3937, file: !756, line: 950, type: !779)
!3943 = !DILocalVariable(name: "arg", arg: 3, scope: !3937, file: !756, line: 951, type: !169)
!3944 = !DILocalVariable(name: "argsize", arg: 4, scope: !3937, file: !756, line: 951, type: !166)
!3945 = !DILocalVariable(name: "o", scope: !3937, file: !756, line: 953, type: !2992)
!3946 = distinct !DIAssignID()
!3947 = !DILocation(line: 0, scope: !3937)
!3948 = !DILocation(line: 953, column: 3, scope: !3937)
!3949 = !{!3950}
!3950 = distinct !{!3950, !3951, !"quoting_options_from_style: argument 0"}
!3951 = distinct !{!3951, !"quoting_options_from_style"}
!3952 = !DILocation(line: 953, column: 36, scope: !3937)
!3953 = !DILocation(line: 0, scope: !3919, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 953, column: 36, scope: !3937)
!3955 = !DILocation(line: 185, column: 26, scope: !3919, inlinedAt: !3954)
!3956 = distinct !DIAssignID()
!3957 = !DILocation(line: 186, column: 13, scope: !3929, inlinedAt: !3954)
!3958 = !DILocation(line: 186, column: 7, scope: !3919, inlinedAt: !3954)
!3959 = !DILocation(line: 187, column: 5, scope: !3929, inlinedAt: !3954)
!3960 = !DILocation(line: 188, column: 11, scope: !3919, inlinedAt: !3954)
!3961 = distinct !DIAssignID()
!3962 = !DILocation(line: 954, column: 10, scope: !3937)
!3963 = !DILocation(line: 955, column: 1, scope: !3937)
!3964 = !DILocation(line: 954, column: 3, scope: !3937)
!3965 = distinct !DISubprogram(name: "quotearg_style", scope: !756, file: !756, line: 958, type: !3966, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3968)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!163, !779, !169}
!3968 = !{!3969, !3970}
!3969 = !DILocalVariable(name: "s", arg: 1, scope: !3965, file: !756, line: 958, type: !779)
!3970 = !DILocalVariable(name: "arg", arg: 2, scope: !3965, file: !756, line: 958, type: !169)
!3971 = distinct !DIAssignID()
!3972 = !DILocation(line: 0, scope: !3965)
!3973 = !DILocation(line: 0, scope: !3903, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 960, column: 10, scope: !3965)
!3975 = !DILocation(line: 945, column: 3, scope: !3903, inlinedAt: !3974)
!3976 = !{!3977}
!3977 = distinct !{!3977, !3978, !"quoting_options_from_style: argument 0"}
!3978 = distinct !{!3978, !"quoting_options_from_style"}
!3979 = !DILocation(line: 945, column: 36, scope: !3903, inlinedAt: !3974)
!3980 = !DILocation(line: 0, scope: !3919, inlinedAt: !3981)
!3981 = distinct !DILocation(line: 945, column: 36, scope: !3903, inlinedAt: !3974)
!3982 = !DILocation(line: 185, column: 26, scope: !3919, inlinedAt: !3981)
!3983 = distinct !DIAssignID()
!3984 = !DILocation(line: 186, column: 13, scope: !3929, inlinedAt: !3981)
!3985 = !DILocation(line: 186, column: 7, scope: !3919, inlinedAt: !3981)
!3986 = !DILocation(line: 187, column: 5, scope: !3929, inlinedAt: !3981)
!3987 = !DILocation(line: 188, column: 11, scope: !3919, inlinedAt: !3981)
!3988 = distinct !DIAssignID()
!3989 = !DILocation(line: 946, column: 10, scope: !3903, inlinedAt: !3974)
!3990 = !DILocation(line: 947, column: 1, scope: !3903, inlinedAt: !3974)
!3991 = !DILocation(line: 960, column: 3, scope: !3965)
!3992 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !756, file: !756, line: 964, type: !3993, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3995)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!163, !779, !169, !166}
!3995 = !{!3996, !3997, !3998}
!3996 = !DILocalVariable(name: "s", arg: 1, scope: !3992, file: !756, line: 964, type: !779)
!3997 = !DILocalVariable(name: "arg", arg: 2, scope: !3992, file: !756, line: 964, type: !169)
!3998 = !DILocalVariable(name: "argsize", arg: 3, scope: !3992, file: !756, line: 964, type: !166)
!3999 = distinct !DIAssignID()
!4000 = !DILocation(line: 0, scope: !3992)
!4001 = !DILocation(line: 0, scope: !3937, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 966, column: 10, scope: !3992)
!4003 = !DILocation(line: 953, column: 3, scope: !3937, inlinedAt: !4002)
!4004 = !{!4005}
!4005 = distinct !{!4005, !4006, !"quoting_options_from_style: argument 0"}
!4006 = distinct !{!4006, !"quoting_options_from_style"}
!4007 = !DILocation(line: 953, column: 36, scope: !3937, inlinedAt: !4002)
!4008 = !DILocation(line: 0, scope: !3919, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 953, column: 36, scope: !3937, inlinedAt: !4002)
!4010 = !DILocation(line: 185, column: 26, scope: !3919, inlinedAt: !4009)
!4011 = distinct !DIAssignID()
!4012 = !DILocation(line: 186, column: 13, scope: !3929, inlinedAt: !4009)
!4013 = !DILocation(line: 186, column: 7, scope: !3919, inlinedAt: !4009)
!4014 = !DILocation(line: 187, column: 5, scope: !3929, inlinedAt: !4009)
!4015 = !DILocation(line: 188, column: 11, scope: !3919, inlinedAt: !4009)
!4016 = distinct !DIAssignID()
!4017 = !DILocation(line: 954, column: 10, scope: !3937, inlinedAt: !4002)
!4018 = !DILocation(line: 955, column: 1, scope: !3937, inlinedAt: !4002)
!4019 = !DILocation(line: 966, column: 3, scope: !3992)
!4020 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !756, file: !756, line: 970, type: !4021, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !4023)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!163, !169, !166, !4}
!4023 = !{!4024, !4025, !4026, !4027}
!4024 = !DILocalVariable(name: "arg", arg: 1, scope: !4020, file: !756, line: 970, type: !169)
!4025 = !DILocalVariable(name: "argsize", arg: 2, scope: !4020, file: !756, line: 970, type: !166)
!4026 = !DILocalVariable(name: "ch", arg: 3, scope: !4020, file: !756, line: 970, type: !4)
!4027 = !DILocalVariable(name: "options", scope: !4020, file: !756, line: 972, type: !794)
!4028 = distinct !DIAssignID()
!4029 = !DILocation(line: 0, scope: !4020)
!4030 = !DILocation(line: 972, column: 3, scope: !4020)
!4031 = !DILocation(line: 973, column: 13, scope: !4020)
!4032 = !{i64 0, i64 4, !1152, i64 4, i64 4, !1152, i64 8, i64 32, !1161, i64 40, i64 8, !1069, i64 48, i64 8, !1069}
!4033 = distinct !DIAssignID()
!4034 = !DILocation(line: 0, scope: !3011, inlinedAt: !4035)
!4035 = distinct !DILocation(line: 974, column: 3, scope: !4020)
!4036 = !DILocation(line: 147, column: 41, scope: !3011, inlinedAt: !4035)
!4037 = !DILocation(line: 147, column: 62, scope: !3011, inlinedAt: !4035)
!4038 = !DILocation(line: 147, column: 57, scope: !3011, inlinedAt: !4035)
!4039 = !DILocation(line: 148, column: 15, scope: !3011, inlinedAt: !4035)
!4040 = !DILocation(line: 149, column: 21, scope: !3011, inlinedAt: !4035)
!4041 = !DILocation(line: 149, column: 24, scope: !3011, inlinedAt: !4035)
!4042 = !DILocation(line: 150, column: 19, scope: !3011, inlinedAt: !4035)
!4043 = !DILocation(line: 150, column: 24, scope: !3011, inlinedAt: !4035)
!4044 = !DILocation(line: 150, column: 6, scope: !3011, inlinedAt: !4035)
!4045 = !DILocation(line: 975, column: 10, scope: !4020)
!4046 = !DILocation(line: 976, column: 1, scope: !4020)
!4047 = !DILocation(line: 975, column: 3, scope: !4020)
!4048 = distinct !DISubprogram(name: "quotearg_char", scope: !756, file: !756, line: 979, type: !4049, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !4051)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!163, !169, !4}
!4051 = !{!4052, !4053}
!4052 = !DILocalVariable(name: "arg", arg: 1, scope: !4048, file: !756, line: 979, type: !169)
!4053 = !DILocalVariable(name: "ch", arg: 2, scope: !4048, file: !756, line: 979, type: !4)
!4054 = distinct !DIAssignID()
!4055 = !DILocation(line: 0, scope: !4048)
!4056 = !DILocation(line: 0, scope: !4020, inlinedAt: !4057)
!4057 = distinct !DILocation(line: 981, column: 10, scope: !4048)
!4058 = !DILocation(line: 972, column: 3, scope: !4020, inlinedAt: !4057)
!4059 = !DILocation(line: 973, column: 13, scope: !4020, inlinedAt: !4057)
!4060 = distinct !DIAssignID()
!4061 = !DILocation(line: 0, scope: !3011, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 974, column: 3, scope: !4020, inlinedAt: !4057)
!4063 = !DILocation(line: 147, column: 41, scope: !3011, inlinedAt: !4062)
!4064 = !DILocation(line: 147, column: 62, scope: !3011, inlinedAt: !4062)
!4065 = !DILocation(line: 147, column: 57, scope: !3011, inlinedAt: !4062)
!4066 = !DILocation(line: 148, column: 15, scope: !3011, inlinedAt: !4062)
!4067 = !DILocation(line: 149, column: 21, scope: !3011, inlinedAt: !4062)
!4068 = !DILocation(line: 149, column: 24, scope: !3011, inlinedAt: !4062)
!4069 = !DILocation(line: 150, column: 19, scope: !3011, inlinedAt: !4062)
!4070 = !DILocation(line: 150, column: 24, scope: !3011, inlinedAt: !4062)
!4071 = !DILocation(line: 150, column: 6, scope: !3011, inlinedAt: !4062)
!4072 = !DILocation(line: 975, column: 10, scope: !4020, inlinedAt: !4057)
!4073 = !DILocation(line: 976, column: 1, scope: !4020, inlinedAt: !4057)
!4074 = !DILocation(line: 981, column: 3, scope: !4048)
!4075 = distinct !DISubprogram(name: "quotearg_colon", scope: !756, file: !756, line: 985, type: !1278, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !4076)
!4076 = !{!4077}
!4077 = !DILocalVariable(name: "arg", arg: 1, scope: !4075, file: !756, line: 985, type: !169)
!4078 = distinct !DIAssignID()
!4079 = !DILocation(line: 0, scope: !4075)
!4080 = !DILocation(line: 0, scope: !4048, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 987, column: 10, scope: !4075)
!4082 = !DILocation(line: 0, scope: !4020, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 981, column: 10, scope: !4048, inlinedAt: !4081)
!4084 = !DILocation(line: 972, column: 3, scope: !4020, inlinedAt: !4083)
!4085 = !DILocation(line: 973, column: 13, scope: !4020, inlinedAt: !4083)
!4086 = distinct !DIAssignID()
!4087 = !DILocation(line: 0, scope: !3011, inlinedAt: !4088)
!4088 = distinct !DILocation(line: 974, column: 3, scope: !4020, inlinedAt: !4083)
!4089 = !DILocation(line: 147, column: 57, scope: !3011, inlinedAt: !4088)
!4090 = !DILocation(line: 149, column: 21, scope: !3011, inlinedAt: !4088)
!4091 = !DILocation(line: 150, column: 6, scope: !3011, inlinedAt: !4088)
!4092 = !DILocation(line: 975, column: 10, scope: !4020, inlinedAt: !4083)
!4093 = !DILocation(line: 976, column: 1, scope: !4020, inlinedAt: !4083)
!4094 = !DILocation(line: 987, column: 3, scope: !4075)
!4095 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !756, file: !756, line: 991, type: !3893, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !4096)
!4096 = !{!4097, !4098}
!4097 = !DILocalVariable(name: "arg", arg: 1, scope: !4095, file: !756, line: 991, type: !169)
!4098 = !DILocalVariable(name: "argsize", arg: 2, scope: !4095, file: !756, line: 991, type: !166)
!4099 = distinct !DIAssignID()
!4100 = !DILocation(line: 0, scope: !4095)
!4101 = !DILocation(line: 0, scope: !4020, inlinedAt: !4102)
!4102 = distinct !DILocation(line: 993, column: 10, scope: !4095)
!4103 = !DILocation(line: 972, column: 3, scope: !4020, inlinedAt: !4102)
!4104 = !DILocation(line: 973, column: 13, scope: !4020, inlinedAt: !4102)
!4105 = distinct !DIAssignID()
!4106 = !DILocation(line: 0, scope: !3011, inlinedAt: !4107)
!4107 = distinct !DILocation(line: 974, column: 3, scope: !4020, inlinedAt: !4102)
!4108 = !DILocation(line: 147, column: 57, scope: !3011, inlinedAt: !4107)
!4109 = !DILocation(line: 149, column: 21, scope: !3011, inlinedAt: !4107)
!4110 = !DILocation(line: 150, column: 6, scope: !3011, inlinedAt: !4107)
!4111 = !DILocation(line: 975, column: 10, scope: !4020, inlinedAt: !4102)
!4112 = !DILocation(line: 976, column: 1, scope: !4020, inlinedAt: !4102)
!4113 = !DILocation(line: 993, column: 3, scope: !4095)
!4114 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !756, file: !756, line: 997, type: !3904, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !4115)
!4115 = !{!4116, !4117, !4118, !4119}
!4116 = !DILocalVariable(name: "n", arg: 1, scope: !4114, file: !756, line: 997, type: !122)
!4117 = !DILocalVariable(name: "s", arg: 2, scope: !4114, file: !756, line: 997, type: !779)
!4118 = !DILocalVariable(name: "arg", arg: 3, scope: !4114, file: !756, line: 997, type: !169)
!4119 = !DILocalVariable(name: "options", scope: !4114, file: !756, line: 999, type: !794)
!4120 = distinct !DIAssignID()
!4121 = !DILocation(line: 0, scope: !4114)
!4122 = !DILocation(line: 185, column: 26, scope: !3919, inlinedAt: !4123)
!4123 = distinct !DILocation(line: 1000, column: 13, scope: !4114)
!4124 = !DILocation(line: 999, column: 3, scope: !4114)
!4125 = !DILocation(line: 0, scope: !3919, inlinedAt: !4123)
!4126 = !DILocation(line: 186, column: 13, scope: !3929, inlinedAt: !4123)
!4127 = !DILocation(line: 186, column: 7, scope: !3919, inlinedAt: !4123)
!4128 = !DILocation(line: 187, column: 5, scope: !3929, inlinedAt: !4123)
!4129 = !{!4130}
!4130 = distinct !{!4130, !4131, !"quoting_options_from_style: argument 0"}
!4131 = distinct !{!4131, !"quoting_options_from_style"}
!4132 = !DILocation(line: 1000, column: 13, scope: !4114)
!4133 = distinct !DIAssignID()
!4134 = distinct !DIAssignID()
!4135 = !DILocation(line: 0, scope: !3011, inlinedAt: !4136)
!4136 = distinct !DILocation(line: 1001, column: 3, scope: !4114)
!4137 = !DILocation(line: 147, column: 57, scope: !3011, inlinedAt: !4136)
!4138 = !DILocation(line: 149, column: 21, scope: !3011, inlinedAt: !4136)
!4139 = !DILocation(line: 150, column: 6, scope: !3011, inlinedAt: !4136)
!4140 = distinct !DIAssignID()
!4141 = !DILocation(line: 1002, column: 10, scope: !4114)
!4142 = !DILocation(line: 1003, column: 1, scope: !4114)
!4143 = !DILocation(line: 1002, column: 3, scope: !4114)
!4144 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !756, file: !756, line: 1006, type: !4145, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !4147)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!163, !122, !169, !169, !169}
!4147 = !{!4148, !4149, !4150, !4151}
!4148 = !DILocalVariable(name: "n", arg: 1, scope: !4144, file: !756, line: 1006, type: !122)
!4149 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4144, file: !756, line: 1006, type: !169)
!4150 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4144, file: !756, line: 1007, type: !169)
!4151 = !DILocalVariable(name: "arg", arg: 4, scope: !4144, file: !756, line: 1007, type: !169)
!4152 = distinct !DIAssignID()
!4153 = !DILocation(line: 0, scope: !4144)
!4154 = !DILocalVariable(name: "o", scope: !4155, file: !756, line: 1018, type: !794)
!4155 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !756, file: !756, line: 1014, type: !4156, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !4158)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!163, !122, !169, !169, !169, !166}
!4158 = !{!4159, !4160, !4161, !4162, !4163, !4154}
!4159 = !DILocalVariable(name: "n", arg: 1, scope: !4155, file: !756, line: 1014, type: !122)
!4160 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4155, file: !756, line: 1014, type: !169)
!4161 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4155, file: !756, line: 1015, type: !169)
!4162 = !DILocalVariable(name: "arg", arg: 4, scope: !4155, file: !756, line: 1016, type: !169)
!4163 = !DILocalVariable(name: "argsize", arg: 5, scope: !4155, file: !756, line: 1016, type: !166)
!4164 = !DILocation(line: 0, scope: !4155, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 1009, column: 10, scope: !4144)
!4166 = !DILocation(line: 1018, column: 3, scope: !4155, inlinedAt: !4165)
!4167 = !DILocation(line: 1018, column: 30, scope: !4155, inlinedAt: !4165)
!4168 = distinct !DIAssignID()
!4169 = distinct !DIAssignID()
!4170 = !DILocation(line: 0, scope: !3051, inlinedAt: !4171)
!4171 = distinct !DILocation(line: 1019, column: 3, scope: !4155, inlinedAt: !4165)
!4172 = !DILocation(line: 174, column: 12, scope: !3051, inlinedAt: !4171)
!4173 = distinct !DIAssignID()
!4174 = !DILocation(line: 175, column: 8, scope: !3064, inlinedAt: !4171)
!4175 = !DILocation(line: 175, column: 19, scope: !3064, inlinedAt: !4171)
!4176 = !DILocation(line: 176, column: 5, scope: !3064, inlinedAt: !4171)
!4177 = !DILocation(line: 177, column: 6, scope: !3051, inlinedAt: !4171)
!4178 = !DILocation(line: 177, column: 17, scope: !3051, inlinedAt: !4171)
!4179 = distinct !DIAssignID()
!4180 = !DILocation(line: 178, column: 6, scope: !3051, inlinedAt: !4171)
!4181 = !DILocation(line: 178, column: 18, scope: !3051, inlinedAt: !4171)
!4182 = distinct !DIAssignID()
!4183 = !DILocation(line: 1020, column: 10, scope: !4155, inlinedAt: !4165)
!4184 = !DILocation(line: 1021, column: 1, scope: !4155, inlinedAt: !4165)
!4185 = !DILocation(line: 1009, column: 3, scope: !4144)
!4186 = distinct !DIAssignID()
!4187 = !DILocation(line: 0, scope: !4155)
!4188 = !DILocation(line: 1018, column: 3, scope: !4155)
!4189 = !DILocation(line: 1018, column: 30, scope: !4155)
!4190 = distinct !DIAssignID()
!4191 = distinct !DIAssignID()
!4192 = !DILocation(line: 0, scope: !3051, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 1019, column: 3, scope: !4155)
!4194 = !DILocation(line: 174, column: 12, scope: !3051, inlinedAt: !4193)
!4195 = distinct !DIAssignID()
!4196 = !DILocation(line: 175, column: 8, scope: !3064, inlinedAt: !4193)
!4197 = !DILocation(line: 175, column: 19, scope: !3064, inlinedAt: !4193)
!4198 = !DILocation(line: 176, column: 5, scope: !3064, inlinedAt: !4193)
!4199 = !DILocation(line: 177, column: 6, scope: !3051, inlinedAt: !4193)
!4200 = !DILocation(line: 177, column: 17, scope: !3051, inlinedAt: !4193)
!4201 = distinct !DIAssignID()
!4202 = !DILocation(line: 178, column: 6, scope: !3051, inlinedAt: !4193)
!4203 = !DILocation(line: 178, column: 18, scope: !3051, inlinedAt: !4193)
!4204 = distinct !DIAssignID()
!4205 = !DILocation(line: 1020, column: 10, scope: !4155)
!4206 = !DILocation(line: 1021, column: 1, scope: !4155)
!4207 = !DILocation(line: 1020, column: 3, scope: !4155)
!4208 = distinct !DISubprogram(name: "quotearg_custom", scope: !756, file: !756, line: 1024, type: !4209, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !4211)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!163, !169, !169, !169}
!4211 = !{!4212, !4213, !4214}
!4212 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4208, file: !756, line: 1024, type: !169)
!4213 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4208, file: !756, line: 1024, type: !169)
!4214 = !DILocalVariable(name: "arg", arg: 3, scope: !4208, file: !756, line: 1025, type: !169)
!4215 = distinct !DIAssignID()
!4216 = !DILocation(line: 0, scope: !4208)
!4217 = !DILocation(line: 0, scope: !4144, inlinedAt: !4218)
!4218 = distinct !DILocation(line: 1027, column: 10, scope: !4208)
!4219 = !DILocation(line: 0, scope: !4155, inlinedAt: !4220)
!4220 = distinct !DILocation(line: 1009, column: 10, scope: !4144, inlinedAt: !4218)
!4221 = !DILocation(line: 1018, column: 3, scope: !4155, inlinedAt: !4220)
!4222 = !DILocation(line: 1018, column: 30, scope: !4155, inlinedAt: !4220)
!4223 = distinct !DIAssignID()
!4224 = distinct !DIAssignID()
!4225 = !DILocation(line: 0, scope: !3051, inlinedAt: !4226)
!4226 = distinct !DILocation(line: 1019, column: 3, scope: !4155, inlinedAt: !4220)
!4227 = !DILocation(line: 174, column: 12, scope: !3051, inlinedAt: !4226)
!4228 = distinct !DIAssignID()
!4229 = !DILocation(line: 175, column: 8, scope: !3064, inlinedAt: !4226)
!4230 = !DILocation(line: 175, column: 19, scope: !3064, inlinedAt: !4226)
!4231 = !DILocation(line: 176, column: 5, scope: !3064, inlinedAt: !4226)
!4232 = !DILocation(line: 177, column: 6, scope: !3051, inlinedAt: !4226)
!4233 = !DILocation(line: 177, column: 17, scope: !3051, inlinedAt: !4226)
!4234 = distinct !DIAssignID()
!4235 = !DILocation(line: 178, column: 6, scope: !3051, inlinedAt: !4226)
!4236 = !DILocation(line: 178, column: 18, scope: !3051, inlinedAt: !4226)
!4237 = distinct !DIAssignID()
!4238 = !DILocation(line: 1020, column: 10, scope: !4155, inlinedAt: !4220)
!4239 = !DILocation(line: 1021, column: 1, scope: !4155, inlinedAt: !4220)
!4240 = !DILocation(line: 1027, column: 3, scope: !4208)
!4241 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !756, file: !756, line: 1031, type: !4242, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !4244)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!163, !169, !169, !169, !166}
!4244 = !{!4245, !4246, !4247, !4248}
!4245 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4241, file: !756, line: 1031, type: !169)
!4246 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4241, file: !756, line: 1031, type: !169)
!4247 = !DILocalVariable(name: "arg", arg: 3, scope: !4241, file: !756, line: 1032, type: !169)
!4248 = !DILocalVariable(name: "argsize", arg: 4, scope: !4241, file: !756, line: 1032, type: !166)
!4249 = distinct !DIAssignID()
!4250 = !DILocation(line: 0, scope: !4241)
!4251 = !DILocation(line: 0, scope: !4155, inlinedAt: !4252)
!4252 = distinct !DILocation(line: 1034, column: 10, scope: !4241)
!4253 = !DILocation(line: 1018, column: 3, scope: !4155, inlinedAt: !4252)
!4254 = !DILocation(line: 1018, column: 30, scope: !4155, inlinedAt: !4252)
!4255 = distinct !DIAssignID()
!4256 = distinct !DIAssignID()
!4257 = !DILocation(line: 0, scope: !3051, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 1019, column: 3, scope: !4155, inlinedAt: !4252)
!4259 = !DILocation(line: 174, column: 12, scope: !3051, inlinedAt: !4258)
!4260 = distinct !DIAssignID()
!4261 = !DILocation(line: 175, column: 8, scope: !3064, inlinedAt: !4258)
!4262 = !DILocation(line: 175, column: 19, scope: !3064, inlinedAt: !4258)
!4263 = !DILocation(line: 176, column: 5, scope: !3064, inlinedAt: !4258)
!4264 = !DILocation(line: 177, column: 6, scope: !3051, inlinedAt: !4258)
!4265 = !DILocation(line: 177, column: 17, scope: !3051, inlinedAt: !4258)
!4266 = distinct !DIAssignID()
!4267 = !DILocation(line: 178, column: 6, scope: !3051, inlinedAt: !4258)
!4268 = !DILocation(line: 178, column: 18, scope: !3051, inlinedAt: !4258)
!4269 = distinct !DIAssignID()
!4270 = !DILocation(line: 1020, column: 10, scope: !4155, inlinedAt: !4252)
!4271 = !DILocation(line: 1021, column: 1, scope: !4155, inlinedAt: !4252)
!4272 = !DILocation(line: 1034, column: 3, scope: !4241)
!4273 = distinct !DISubprogram(name: "quote_n_mem", scope: !756, file: !756, line: 1049, type: !4274, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !4276)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!169, !122, !169, !166}
!4276 = !{!4277, !4278, !4279}
!4277 = !DILocalVariable(name: "n", arg: 1, scope: !4273, file: !756, line: 1049, type: !122)
!4278 = !DILocalVariable(name: "arg", arg: 2, scope: !4273, file: !756, line: 1049, type: !169)
!4279 = !DILocalVariable(name: "argsize", arg: 3, scope: !4273, file: !756, line: 1049, type: !166)
!4280 = !DILocation(line: 0, scope: !4273)
!4281 = !DILocation(line: 1051, column: 10, scope: !4273)
!4282 = !DILocation(line: 1051, column: 3, scope: !4273)
!4283 = distinct !DISubprogram(name: "quote_mem", scope: !756, file: !756, line: 1055, type: !4284, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !4286)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!169, !169, !166}
!4286 = !{!4287, !4288}
!4287 = !DILocalVariable(name: "arg", arg: 1, scope: !4283, file: !756, line: 1055, type: !169)
!4288 = !DILocalVariable(name: "argsize", arg: 2, scope: !4283, file: !756, line: 1055, type: !166)
!4289 = !DILocation(line: 0, scope: !4283)
!4290 = !DILocation(line: 0, scope: !4273, inlinedAt: !4291)
!4291 = distinct !DILocation(line: 1057, column: 10, scope: !4283)
!4292 = !DILocation(line: 1051, column: 10, scope: !4273, inlinedAt: !4291)
!4293 = !DILocation(line: 1057, column: 3, scope: !4283)
!4294 = distinct !DISubprogram(name: "quote_n", scope: !756, file: !756, line: 1061, type: !4295, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !4297)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!169, !122, !169}
!4297 = !{!4298, !4299}
!4298 = !DILocalVariable(name: "n", arg: 1, scope: !4294, file: !756, line: 1061, type: !122)
!4299 = !DILocalVariable(name: "arg", arg: 2, scope: !4294, file: !756, line: 1061, type: !169)
!4300 = !DILocation(line: 0, scope: !4294)
!4301 = !DILocation(line: 0, scope: !4273, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 1063, column: 10, scope: !4294)
!4303 = !DILocation(line: 1051, column: 10, scope: !4273, inlinedAt: !4302)
!4304 = !DILocation(line: 1063, column: 3, scope: !4294)
!4305 = distinct !DISubprogram(name: "quote", scope: !756, file: !756, line: 1067, type: !1516, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !4306)
!4306 = !{!4307}
!4307 = !DILocalVariable(name: "arg", arg: 1, scope: !4305, file: !756, line: 1067, type: !169)
!4308 = !DILocation(line: 0, scope: !4305)
!4309 = !DILocation(line: 0, scope: !4294, inlinedAt: !4310)
!4310 = distinct !DILocation(line: 1069, column: 10, scope: !4305)
!4311 = !DILocation(line: 0, scope: !4273, inlinedAt: !4312)
!4312 = distinct !DILocation(line: 1063, column: 10, scope: !4294, inlinedAt: !4310)
!4313 = !DILocation(line: 1051, column: 10, scope: !4273, inlinedAt: !4312)
!4314 = !DILocation(line: 1069, column: 3, scope: !4305)
!4315 = distinct !DISubprogram(name: "str2sig", scope: !858, file: !858, line: 321, type: !4316, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !4318)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!122, !169, !524}
!4318 = !{!4319, !4320}
!4319 = !DILocalVariable(name: "signame", arg: 1, scope: !4315, file: !858, line: 321, type: !169)
!4320 = !DILocalVariable(name: "signum", arg: 2, scope: !4315, file: !858, line: 321, type: !524)
!4321 = distinct !DIAssignID()
!4322 = distinct !DIAssignID()
!4323 = distinct !DIAssignID()
!4324 = !DILocation(line: 0, scope: !4315)
!4325 = !DILocalVariable(name: "endp", scope: !4326, file: !858, line: 282, type: !163)
!4326 = distinct !DILexicalBlock(scope: !4327, file: !858, line: 281, column: 5)
!4327 = distinct !DILexicalBlock(scope: !4328, file: !858, line: 280, column: 7)
!4328 = distinct !DISubprogram(name: "str2signum", scope: !858, file: !858, line: 278, type: !2390, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !4329)
!4329 = !{!4330, !4325, !4331, !4332, !4335, !4337, !4338, !4341, !4342, !4345}
!4330 = !DILocalVariable(name: "signame", arg: 1, scope: !4328, file: !858, line: 278, type: !169)
!4331 = !DILocalVariable(name: "n", scope: !4326, file: !858, line: 283, type: !174)
!4332 = !DILocalVariable(name: "i", scope: !4333, file: !858, line: 289, type: !109)
!4333 = distinct !DILexicalBlock(scope: !4334, file: !858, line: 289, column: 7)
!4334 = distinct !DILexicalBlock(scope: !4327, file: !858, line: 288, column: 5)
!4335 = !DILocalVariable(name: "rtmin", scope: !4336, file: !858, line: 294, type: !122)
!4336 = distinct !DILexicalBlock(scope: !4334, file: !858, line: 293, column: 7)
!4337 = !DILocalVariable(name: "rtmax", scope: !4336, file: !858, line: 295, type: !122)
!4338 = !DILocalVariable(name: "endp", scope: !4339, file: !858, line: 299, type: !163)
!4339 = distinct !DILexicalBlock(scope: !4340, file: !858, line: 298, column: 11)
!4340 = distinct !DILexicalBlock(scope: !4336, file: !858, line: 297, column: 13)
!4341 = !DILocalVariable(name: "n", scope: !4339, file: !858, line: 300, type: !174)
!4342 = !DILocalVariable(name: "endp", scope: !4343, file: !858, line: 306, type: !163)
!4343 = distinct !DILexicalBlock(scope: !4344, file: !858, line: 305, column: 11)
!4344 = distinct !DILexicalBlock(scope: !4340, file: !858, line: 304, column: 18)
!4345 = !DILocalVariable(name: "n", scope: !4343, file: !858, line: 307, type: !174)
!4346 = !DILocation(line: 0, scope: !4326, inlinedAt: !4347)
!4347 = distinct !DILocation(line: 323, column: 13, scope: !4315)
!4348 = !DILocation(line: 0, scope: !4339, inlinedAt: !4347)
!4349 = !DILocation(line: 0, scope: !4343, inlinedAt: !4347)
!4350 = !DILocation(line: 0, scope: !4328, inlinedAt: !4347)
!4351 = !DILocation(line: 280, column: 7, scope: !4327, inlinedAt: !4347)
!4352 = !DILocation(line: 280, column: 7, scope: !4328, inlinedAt: !4347)
!4353 = !DILocation(line: 282, column: 7, scope: !4326, inlinedAt: !4347)
!4354 = !DILocation(line: 283, column: 20, scope: !4326, inlinedAt: !4347)
!4355 = !DILocation(line: 284, column: 14, scope: !4356, inlinedAt: !4347)
!4356 = distinct !DILexicalBlock(scope: !4326, file: !858, line: 284, column: 11)
!4357 = !DILocation(line: 284, column: 13, scope: !4356, inlinedAt: !4347)
!4358 = !DILocation(line: 284, column: 19, scope: !4356, inlinedAt: !4347)
!4359 = !DILocation(line: 286, column: 5, scope: !4327, inlinedAt: !4347)
!4360 = !DILocation(line: 289, column: 54, scope: !4361, inlinedAt: !4347)
!4361 = distinct !DILexicalBlock(scope: !4333, file: !858, line: 289, column: 7)
!4362 = !DILocation(line: 0, scope: !4333, inlinedAt: !4347)
!4363 = !DILocation(line: 289, column: 34, scope: !4361, inlinedAt: !4347)
!4364 = !DILocation(line: 289, column: 7, scope: !4333, inlinedAt: !4347)
!4365 = distinct !{!4365, !4364, !4366, !1199}
!4366 = !DILocation(line: 291, column: 35, scope: !4333, inlinedAt: !4347)
!4367 = !DILocation(line: 290, column: 37, scope: !4368, inlinedAt: !4347)
!4368 = distinct !DILexicalBlock(scope: !4361, file: !858, line: 290, column: 13)
!4369 = !DILocalVariable(name: "__s1", arg: 1, scope: !4370, file: !1165, line: 1359, type: !169)
!4370 = distinct !DISubprogram(name: "streq", scope: !1165, file: !1165, line: 1359, type: !1166, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !4371)
!4371 = !{!4369, !4372}
!4372 = !DILocalVariable(name: "__s2", arg: 2, scope: !4370, file: !1165, line: 1359, type: !169)
!4373 = !DILocation(line: 0, scope: !4370, inlinedAt: !4374)
!4374 = distinct !DILocation(line: 290, column: 13, scope: !4368, inlinedAt: !4347)
!4375 = !DILocation(line: 1361, column: 11, scope: !4370, inlinedAt: !4374)
!4376 = !DILocation(line: 1361, column: 10, scope: !4370, inlinedAt: !4374)
!4377 = !DILocation(line: 290, column: 13, scope: !4361, inlinedAt: !4347)
!4378 = !DILocation(line: 290, column: 20, scope: !4368, inlinedAt: !4347)
!4379 = !DILocation(line: 291, column: 35, scope: !4368, inlinedAt: !4347)
!4380 = !{!4381, !1153, i64 0}
!4381 = !{!"numname", !1153, i64 0, !1071, i64 4}
!4382 = !DILocation(line: 294, column: 21, scope: !4336, inlinedAt: !4347)
!4383 = !DILocation(line: 0, scope: !4336, inlinedAt: !4347)
!4384 = !DILocation(line: 295, column: 21, scope: !4336, inlinedAt: !4347)
!4385 = !DILocation(line: 297, column: 15, scope: !4340, inlinedAt: !4347)
!4386 = !DILocation(line: 297, column: 23, scope: !4340, inlinedAt: !4347)
!4387 = !DILocation(line: 297, column: 26, scope: !4340, inlinedAt: !4347)
!4388 = !DILocation(line: 297, column: 56, scope: !4340, inlinedAt: !4347)
!4389 = !DILocation(line: 297, column: 13, scope: !4336, inlinedAt: !4347)
!4390 = !DILocation(line: 299, column: 13, scope: !4339, inlinedAt: !4347)
!4391 = !DILocation(line: 300, column: 42, scope: !4339, inlinedAt: !4347)
!4392 = !DILocation(line: 300, column: 26, scope: !4339, inlinedAt: !4347)
!4393 = !DILocation(line: 301, column: 20, scope: !4394, inlinedAt: !4347)
!4394 = distinct !DILexicalBlock(scope: !4339, file: !858, line: 301, column: 17)
!4395 = !DILocation(line: 301, column: 19, scope: !4394, inlinedAt: !4347)
!4396 = !DILocation(line: 301, column: 25, scope: !4394, inlinedAt: !4347)
!4397 = !DILocation(line: 301, column: 49, scope: !4394, inlinedAt: !4347)
!4398 = !DILocation(line: 301, column: 43, scope: !4394, inlinedAt: !4347)
!4399 = !DILocation(line: 301, column: 40, scope: !4394, inlinedAt: !4347)
!4400 = !DILocation(line: 301, column: 17, scope: !4339, inlinedAt: !4347)
!4401 = !DILocation(line: 303, column: 11, scope: !4340, inlinedAt: !4347)
!4402 = !DILocation(line: 302, column: 22, scope: !4394, inlinedAt: !4347)
!4403 = !DILocation(line: 304, column: 20, scope: !4344, inlinedAt: !4347)
!4404 = !DILocation(line: 304, column: 28, scope: !4344, inlinedAt: !4347)
!4405 = !DILocation(line: 304, column: 31, scope: !4344, inlinedAt: !4347)
!4406 = !DILocation(line: 304, column: 61, scope: !4344, inlinedAt: !4347)
!4407 = !DILocation(line: 304, column: 18, scope: !4340, inlinedAt: !4347)
!4408 = !DILocation(line: 306, column: 13, scope: !4343, inlinedAt: !4347)
!4409 = !DILocation(line: 307, column: 42, scope: !4343, inlinedAt: !4347)
!4410 = !DILocation(line: 307, column: 26, scope: !4343, inlinedAt: !4347)
!4411 = !DILocation(line: 308, column: 20, scope: !4412, inlinedAt: !4347)
!4412 = distinct !DILexicalBlock(scope: !4343, file: !858, line: 308, column: 17)
!4413 = !DILocation(line: 308, column: 19, scope: !4412, inlinedAt: !4347)
!4414 = !DILocation(line: 308, column: 25, scope: !4412, inlinedAt: !4347)
!4415 = !DILocation(line: 308, column: 34, scope: !4412, inlinedAt: !4347)
!4416 = !DILocation(line: 308, column: 28, scope: !4412, inlinedAt: !4347)
!4417 = !DILocation(line: 308, column: 42, scope: !4412, inlinedAt: !4347)
!4418 = !DILocation(line: 308, column: 47, scope: !4412, inlinedAt: !4347)
!4419 = !DILocation(line: 310, column: 11, scope: !4344, inlinedAt: !4347)
!4420 = !DILocation(line: 309, column: 22, scope: !4412, inlinedAt: !4347)
!4421 = !DILocation(line: 314, column: 3, scope: !4328, inlinedAt: !4347)
!4422 = !DILocation(line: 323, column: 11, scope: !4315)
!4423 = !DILocation(line: 324, column: 10, scope: !4315)
!4424 = !DILocation(line: 324, column: 3, scope: !4315)
!4425 = !DISubprogram(name: "__libc_current_sigrtmin", scope: !176, file: !176, line: 383, type: !4426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!122}
!4428 = !DISubprogram(name: "__libc_current_sigrtmax", scope: !176, file: !176, line: 385, type: !4426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4429 = distinct !DISubprogram(name: "sig2str", scope: !858, file: !858, line: 332, type: !4430, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !4432)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!122, !122, !163}
!4432 = !{!4433, !4434, !4435, !4437, !4439, !4440, !4441}
!4433 = !DILocalVariable(name: "signum", arg: 1, scope: !4429, file: !858, line: 332, type: !122)
!4434 = !DILocalVariable(name: "signame", arg: 2, scope: !4429, file: !858, line: 332, type: !163)
!4435 = !DILocalVariable(name: "i", scope: !4436, file: !858, line: 334, type: !109)
!4436 = distinct !DILexicalBlock(scope: !4429, file: !858, line: 334, column: 3)
!4437 = !DILocalVariable(name: "rtmin", scope: !4438, file: !858, line: 342, type: !122)
!4438 = distinct !DILexicalBlock(scope: !4429, file: !858, line: 341, column: 3)
!4439 = !DILocalVariable(name: "rtmax", scope: !4438, file: !858, line: 343, type: !122)
!4440 = !DILocalVariable(name: "base", scope: !4438, file: !858, line: 348, type: !122)
!4441 = !DILocalVariable(name: "delta", scope: !4438, file: !858, line: 360, type: !122)
!4442 = !DILocation(line: 0, scope: !4429)
!4443 = !DILocation(line: 0, scope: !4436)
!4444 = !DILocation(line: 334, column: 3, scope: !4436)
!4445 = !DILocation(line: 334, column: 50, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4436, file: !858, line: 334, column: 3)
!4447 = !DILocation(line: 335, column: 9, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4446, file: !858, line: 335, column: 9)
!4449 = !DILocation(line: 335, column: 26, scope: !4448)
!4450 = !DILocation(line: 335, column: 30, scope: !4448)
!4451 = !DILocation(line: 335, column: 9, scope: !4446)
!4452 = !DILocation(line: 334, column: 30, scope: !4446)
!4453 = distinct !{!4453, !4444, !4454, !1199}
!4454 = !DILocation(line: 339, column: 7, scope: !4436)
!4455 = !DILocation(line: 337, column: 43, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4448, file: !858, line: 336, column: 7)
!4457 = !DILocalVariable(name: "__dest", arg: 1, scope: !4458, file: !1566, line: 77, type: !2410)
!4458 = distinct !DISubprogram(name: "strcpy", scope: !1566, file: !1566, line: 77, type: !2437, scopeLine: 78, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !4459)
!4459 = !{!4457, !4460}
!4460 = !DILocalVariable(name: "__src", arg: 2, scope: !4458, file: !1566, line: 77, type: !1142)
!4461 = !DILocation(line: 0, scope: !4458, inlinedAt: !4462)
!4462 = distinct !DILocation(line: 337, column: 9, scope: !4456)
!4463 = !DILocation(line: 79, column: 10, scope: !4458, inlinedAt: !4462)
!4464 = !DILocation(line: 342, column: 17, scope: !4438)
!4465 = !DILocation(line: 0, scope: !4438)
!4466 = !DILocation(line: 343, column: 17, scope: !4438)
!4467 = !DILocation(line: 345, column: 18, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4438, file: !858, line: 345, column: 9)
!4469 = !DILocation(line: 345, column: 28, scope: !4468)
!4470 = !DILocation(line: 349, column: 34, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4438, file: !858, line: 349, column: 9)
!4472 = !DILocation(line: 349, column: 43, scope: !4471)
!4473 = !DILocation(line: 349, column: 25, scope: !4471)
!4474 = !DILocation(line: 349, column: 16, scope: !4471)
!4475 = !DILocation(line: 0, scope: !4458, inlinedAt: !4476)
!4476 = distinct !DILocation(line: 356, column: 9, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4471, file: !858, line: 355, column: 7)
!4478 = !DILocation(line: 0, scope: !4458, inlinedAt: !4479)
!4479 = distinct !DILocation(line: 351, column: 9, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4471, file: !858, line: 350, column: 7)
!4481 = !DILocation(line: 79, column: 10, scope: !4458, inlinedAt: !4482)
!4482 = !DILocation(line: 0, scope: !4471)
!4483 = !DILocation(line: 361, column: 15, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4438, file: !858, line: 361, column: 9)
!4485 = !DILocation(line: 361, column: 9, scope: !4438)
!4486 = !DILocation(line: 360, column: 24, scope: !4438)
!4487 = !DILocation(line: 362, column: 7, scope: !4484)
!4488 = !DILocation(line: 365, column: 1, scope: !4429)
!4489 = !DISubprogram(name: "__builtin___sprintf_chk", scope: !858, file: !858, line: 362, type: !4490, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!122, !2410, !122, !168, !1142, null}
!4492 = distinct !DISubprogram(name: "version_etc_arn", scope: !877, file: !877, line: 61, type: !4493, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !992, retainedNodes: !4530)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{null, !4495, !169, !169, !169, !4529, !166}
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !4497)
!4497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !4498)
!4498 = !{!4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4497, file: !330, line: 51, baseType: !122, size: 32)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4497, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4497, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4497, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4497, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4497, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4497, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4497, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4497, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4497, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4497, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4497, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4497, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4497, file: !330, line: 70, baseType: !4513, size: 64, offset: 832)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4497, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4497, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4497, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4497, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4497, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4497, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4497, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4497, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4497, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4497, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4497, file: !330, line: 93, baseType: !4513, size: 64, offset: 1344)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4497, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4497, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4497, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4497, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!4530 = !{!4531, !4532, !4533, !4534, !4535, !4536}
!4531 = !DILocalVariable(name: "stream", arg: 1, scope: !4492, file: !877, line: 61, type: !4495)
!4532 = !DILocalVariable(name: "command_name", arg: 2, scope: !4492, file: !877, line: 62, type: !169)
!4533 = !DILocalVariable(name: "package", arg: 3, scope: !4492, file: !877, line: 62, type: !169)
!4534 = !DILocalVariable(name: "version", arg: 4, scope: !4492, file: !877, line: 63, type: !169)
!4535 = !DILocalVariable(name: "authors", arg: 5, scope: !4492, file: !877, line: 64, type: !4529)
!4536 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4492, file: !877, line: 64, type: !166)
!4537 = !DILocation(line: 0, scope: !4492)
!4538 = !DILocation(line: 66, column: 7, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4492, file: !877, line: 66, column: 7)
!4540 = !DILocation(line: 66, column: 7, scope: !4492)
!4541 = !DILocation(line: 67, column: 5, scope: !4539)
!4542 = !DILocation(line: 69, column: 5, scope: !4539)
!4543 = !DILocation(line: 83, column: 3, scope: !4492)
!4544 = !DILocation(line: 85, column: 3, scope: !4492)
!4545 = !DILocation(line: 88, column: 3, scope: !4492)
!4546 = !DILocation(line: 95, column: 3, scope: !4492)
!4547 = !DILocation(line: 97, column: 3, scope: !4492)
!4548 = !DILocation(line: 105, column: 7, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4492, file: !877, line: 98, column: 5)
!4550 = !DILocation(line: 106, column: 7, scope: !4549)
!4551 = !DILocation(line: 109, column: 7, scope: !4549)
!4552 = !DILocation(line: 110, column: 7, scope: !4549)
!4553 = !DILocation(line: 113, column: 7, scope: !4549)
!4554 = !DILocation(line: 115, column: 7, scope: !4549)
!4555 = !DILocation(line: 120, column: 7, scope: !4549)
!4556 = !DILocation(line: 122, column: 7, scope: !4549)
!4557 = !DILocation(line: 127, column: 7, scope: !4549)
!4558 = !DILocation(line: 129, column: 7, scope: !4549)
!4559 = !DILocation(line: 134, column: 7, scope: !4549)
!4560 = !DILocation(line: 137, column: 7, scope: !4549)
!4561 = !DILocation(line: 142, column: 7, scope: !4549)
!4562 = !DILocation(line: 145, column: 7, scope: !4549)
!4563 = !DILocation(line: 150, column: 7, scope: !4549)
!4564 = !DILocation(line: 154, column: 7, scope: !4549)
!4565 = !DILocation(line: 159, column: 7, scope: !4549)
!4566 = !DILocation(line: 163, column: 7, scope: !4549)
!4567 = !DILocation(line: 170, column: 7, scope: !4549)
!4568 = !DILocation(line: 174, column: 7, scope: !4549)
!4569 = !DILocation(line: 176, column: 1, scope: !4492)
!4570 = distinct !DISubprogram(name: "version_etc_ar", scope: !877, file: !877, line: 183, type: !4571, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !992, retainedNodes: !4573)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{null, !4495, !169, !169, !169, !4529}
!4573 = !{!4574, !4575, !4576, !4577, !4578, !4579}
!4574 = !DILocalVariable(name: "stream", arg: 1, scope: !4570, file: !877, line: 183, type: !4495)
!4575 = !DILocalVariable(name: "command_name", arg: 2, scope: !4570, file: !877, line: 184, type: !169)
!4576 = !DILocalVariable(name: "package", arg: 3, scope: !4570, file: !877, line: 184, type: !169)
!4577 = !DILocalVariable(name: "version", arg: 4, scope: !4570, file: !877, line: 185, type: !169)
!4578 = !DILocalVariable(name: "authors", arg: 5, scope: !4570, file: !877, line: 185, type: !4529)
!4579 = !DILocalVariable(name: "n_authors", scope: !4570, file: !877, line: 187, type: !166)
!4580 = !DILocation(line: 0, scope: !4570)
!4581 = !DILocation(line: 189, column: 8, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4570, file: !877, line: 189, column: 3)
!4583 = !DILocation(line: 189, scope: !4582)
!4584 = !DILocation(line: 189, column: 23, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4582, file: !877, line: 189, column: 3)
!4586 = !DILocation(line: 189, column: 3, scope: !4582)
!4587 = !DILocation(line: 189, column: 52, scope: !4585)
!4588 = distinct !{!4588, !4586, !4589, !1199}
!4589 = !DILocation(line: 190, column: 5, scope: !4582)
!4590 = !DILocation(line: 191, column: 3, scope: !4570)
!4591 = !DILocation(line: 192, column: 1, scope: !4570)
!4592 = distinct !DISubprogram(name: "version_etc_va", scope: !877, file: !877, line: 199, type: !4593, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !992, retainedNodes: !4602)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{null, !4495, !169, !169, !169, !4595}
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4597)
!4597 = !{!4598, !4599, !4600, !4601}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4596, file: !877, line: 192, baseType: !109, size: 32)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4596, file: !877, line: 192, baseType: !109, size: 32, offset: 32)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4596, file: !877, line: 192, baseType: !164, size: 64, offset: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4596, file: !877, line: 192, baseType: !164, size: 64, offset: 128)
!4602 = !{!4603, !4604, !4605, !4606, !4607, !4608, !4609}
!4603 = !DILocalVariable(name: "stream", arg: 1, scope: !4592, file: !877, line: 199, type: !4495)
!4604 = !DILocalVariable(name: "command_name", arg: 2, scope: !4592, file: !877, line: 200, type: !169)
!4605 = !DILocalVariable(name: "package", arg: 3, scope: !4592, file: !877, line: 200, type: !169)
!4606 = !DILocalVariable(name: "version", arg: 4, scope: !4592, file: !877, line: 201, type: !169)
!4607 = !DILocalVariable(name: "authors", arg: 5, scope: !4592, file: !877, line: 201, type: !4595)
!4608 = !DILocalVariable(name: "n_authors", scope: !4592, file: !877, line: 203, type: !166)
!4609 = !DILocalVariable(name: "authtab", scope: !4592, file: !877, line: 204, type: !4610)
!4610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 640, elements: !96)
!4611 = distinct !DIAssignID()
!4612 = !DILocation(line: 0, scope: !4592)
!4613 = !DILocation(line: 204, column: 3, scope: !4592)
!4614 = !DILocation(line: 208, column: 35, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4616, file: !877, line: 206, column: 3)
!4616 = distinct !DILexicalBlock(scope: !4592, file: !877, line: 206, column: 3)
!4617 = !DILocation(line: 208, column: 33, scope: !4615)
!4618 = !DILocation(line: 208, column: 67, scope: !4615)
!4619 = !DILocation(line: 206, column: 3, scope: !4616)
!4620 = !DILocation(line: 208, column: 14, scope: !4615)
!4621 = !DILocation(line: 0, scope: !4616)
!4622 = !DILocation(line: 211, column: 3, scope: !4592)
!4623 = !DILocation(line: 213, column: 1, scope: !4592)
!4624 = distinct !DISubprogram(name: "version_etc", scope: !877, file: !877, line: 230, type: !4625, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !992, retainedNodes: !4627)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{null, !4495, !169, !169, !169, null}
!4627 = !{!4628, !4629, !4630, !4631, !4632}
!4628 = !DILocalVariable(name: "stream", arg: 1, scope: !4624, file: !877, line: 230, type: !4495)
!4629 = !DILocalVariable(name: "command_name", arg: 2, scope: !4624, file: !877, line: 231, type: !169)
!4630 = !DILocalVariable(name: "package", arg: 3, scope: !4624, file: !877, line: 231, type: !169)
!4631 = !DILocalVariable(name: "version", arg: 4, scope: !4624, file: !877, line: 232, type: !169)
!4632 = !DILocalVariable(name: "authors", scope: !4624, file: !877, line: 234, type: !4633)
!4633 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1147, line: 52, baseType: !4634)
!4634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2838, line: 12, baseType: !4635)
!4635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !877, baseType: !4636)
!4636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4596, size: 192, elements: !91)
!4637 = distinct !DIAssignID()
!4638 = !DILocation(line: 0, scope: !4624)
!4639 = !DILocation(line: 234, column: 3, scope: !4624)
!4640 = !DILocation(line: 235, column: 3, scope: !4624)
!4641 = !DILocation(line: 236, column: 3, scope: !4624)
!4642 = !DILocation(line: 237, column: 3, scope: !4624)
!4643 = !DILocation(line: 238, column: 1, scope: !4624)
!4644 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !877, file: !877, line: 241, type: !711, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !992)
!4645 = !DILocation(line: 243, column: 3, scope: !4644)
!4646 = !DILocation(line: 248, column: 3, scope: !4644)
!4647 = !DILocation(line: 254, column: 3, scope: !4644)
!4648 = !DILocation(line: 259, column: 3, scope: !4644)
!4649 = !DILocation(line: 261, column: 1, scope: !4644)
!4650 = distinct !DISubprogram(name: "xnrealloc", scope: !4651, file: !4651, line: 147, type: !4652, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4654)
!4651 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!164, !164, !166, !166}
!4654 = !{!4655, !4656, !4657}
!4655 = !DILocalVariable(name: "p", arg: 1, scope: !4650, file: !4651, line: 147, type: !164)
!4656 = !DILocalVariable(name: "n", arg: 2, scope: !4650, file: !4651, line: 147, type: !166)
!4657 = !DILocalVariable(name: "s", arg: 3, scope: !4650, file: !4651, line: 147, type: !166)
!4658 = !DILocation(line: 0, scope: !4650)
!4659 = !DILocalVariable(name: "p", arg: 1, scope: !4660, file: !1000, line: 83, type: !164)
!4660 = distinct !DISubprogram(name: "xreallocarray", scope: !1000, file: !1000, line: 83, type: !4652, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4661)
!4661 = !{!4659, !4662, !4663}
!4662 = !DILocalVariable(name: "n", arg: 2, scope: !4660, file: !1000, line: 83, type: !166)
!4663 = !DILocalVariable(name: "s", arg: 3, scope: !4660, file: !1000, line: 83, type: !166)
!4664 = !DILocation(line: 0, scope: !4660, inlinedAt: !4665)
!4665 = distinct !DILocation(line: 149, column: 10, scope: !4650)
!4666 = !DILocation(line: 85, column: 25, scope: !4660, inlinedAt: !4665)
!4667 = !DILocalVariable(name: "p", arg: 1, scope: !4668, file: !1000, line: 37, type: !164)
!4668 = distinct !DISubprogram(name: "check_nonnull", scope: !1000, file: !1000, line: 37, type: !4669, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4671)
!4669 = !DISubroutineType(types: !4670)
!4670 = !{!164, !164}
!4671 = !{!4667}
!4672 = !DILocation(line: 0, scope: !4668, inlinedAt: !4673)
!4673 = distinct !DILocation(line: 85, column: 10, scope: !4660, inlinedAt: !4665)
!4674 = !DILocation(line: 39, column: 8, scope: !4675, inlinedAt: !4673)
!4675 = distinct !DILexicalBlock(scope: !4668, file: !1000, line: 39, column: 7)
!4676 = !DILocation(line: 39, column: 7, scope: !4668, inlinedAt: !4673)
!4677 = !DILocation(line: 40, column: 5, scope: !4675, inlinedAt: !4673)
!4678 = !DILocation(line: 149, column: 3, scope: !4650)
!4679 = !DILocation(line: 0, scope: !4660)
!4680 = !DILocation(line: 85, column: 25, scope: !4660)
!4681 = !DILocation(line: 0, scope: !4668, inlinedAt: !4682)
!4682 = distinct !DILocation(line: 85, column: 10, scope: !4660)
!4683 = !DILocation(line: 39, column: 8, scope: !4675, inlinedAt: !4682)
!4684 = !DILocation(line: 39, column: 7, scope: !4668, inlinedAt: !4682)
!4685 = !DILocation(line: 40, column: 5, scope: !4675, inlinedAt: !4682)
!4686 = !DILocation(line: 85, column: 3, scope: !4660)
!4687 = distinct !DISubprogram(name: "xmalloc", scope: !1000, file: !1000, line: 47, type: !4688, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4690)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!164, !166}
!4690 = !{!4691}
!4691 = !DILocalVariable(name: "s", arg: 1, scope: !4687, file: !1000, line: 47, type: !166)
!4692 = !DILocation(line: 0, scope: !4687)
!4693 = !DILocation(line: 49, column: 25, scope: !4687)
!4694 = !DILocation(line: 0, scope: !4668, inlinedAt: !4695)
!4695 = distinct !DILocation(line: 49, column: 10, scope: !4687)
!4696 = !DILocation(line: 39, column: 8, scope: !4675, inlinedAt: !4695)
!4697 = !DILocation(line: 39, column: 7, scope: !4668, inlinedAt: !4695)
!4698 = !DILocation(line: 40, column: 5, scope: !4675, inlinedAt: !4695)
!4699 = !DILocation(line: 49, column: 3, scope: !4687)
!4700 = !DISubprogram(name: "malloc", scope: !1276, file: !1276, line: 540, type: !4688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4701 = distinct !DISubprogram(name: "ximalloc", scope: !1000, file: !1000, line: 53, type: !4702, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4704)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!164, !1019}
!4704 = !{!4705}
!4705 = !DILocalVariable(name: "s", arg: 1, scope: !4701, file: !1000, line: 53, type: !1019)
!4706 = !DILocation(line: 0, scope: !4701)
!4707 = !DILocalVariable(name: "s", arg: 1, scope: !4708, file: !4709, line: 55, type: !1019)
!4708 = distinct !DISubprogram(name: "imalloc", scope: !4709, file: !4709, line: 55, type: !4702, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4710)
!4709 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4710 = !{!4707}
!4711 = !DILocation(line: 0, scope: !4708, inlinedAt: !4712)
!4712 = distinct !DILocation(line: 55, column: 25, scope: !4701)
!4713 = !DILocation(line: 57, column: 26, scope: !4708, inlinedAt: !4712)
!4714 = !DILocation(line: 0, scope: !4668, inlinedAt: !4715)
!4715 = distinct !DILocation(line: 55, column: 10, scope: !4701)
!4716 = !DILocation(line: 39, column: 8, scope: !4675, inlinedAt: !4715)
!4717 = !DILocation(line: 39, column: 7, scope: !4668, inlinedAt: !4715)
!4718 = !DILocation(line: 40, column: 5, scope: !4675, inlinedAt: !4715)
!4719 = !DILocation(line: 55, column: 3, scope: !4701)
!4720 = distinct !DISubprogram(name: "xcharalloc", scope: !1000, file: !1000, line: 59, type: !4721, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4723)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!163, !166}
!4723 = !{!4724}
!4724 = !DILocalVariable(name: "n", arg: 1, scope: !4720, file: !1000, line: 59, type: !166)
!4725 = !DILocation(line: 0, scope: !4720)
!4726 = !DILocation(line: 0, scope: !4687, inlinedAt: !4727)
!4727 = distinct !DILocation(line: 61, column: 10, scope: !4720)
!4728 = !DILocation(line: 49, column: 25, scope: !4687, inlinedAt: !4727)
!4729 = !DILocation(line: 0, scope: !4668, inlinedAt: !4730)
!4730 = distinct !DILocation(line: 49, column: 10, scope: !4687, inlinedAt: !4727)
!4731 = !DILocation(line: 39, column: 8, scope: !4675, inlinedAt: !4730)
!4732 = !DILocation(line: 39, column: 7, scope: !4668, inlinedAt: !4730)
!4733 = !DILocation(line: 40, column: 5, scope: !4675, inlinedAt: !4730)
!4734 = !DILocation(line: 61, column: 3, scope: !4720)
!4735 = distinct !DISubprogram(name: "xrealloc", scope: !1000, file: !1000, line: 68, type: !4736, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4738)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!164, !164, !166}
!4738 = !{!4739, !4740}
!4739 = !DILocalVariable(name: "p", arg: 1, scope: !4735, file: !1000, line: 68, type: !164)
!4740 = !DILocalVariable(name: "s", arg: 2, scope: !4735, file: !1000, line: 68, type: !166)
!4741 = !DILocation(line: 0, scope: !4735)
!4742 = !DILocalVariable(name: "ptr", arg: 1, scope: !4743, file: !4744, line: 2057, type: !164)
!4743 = distinct !DISubprogram(name: "rpl_realloc", scope: !4744, file: !4744, line: 2057, type: !4736, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4745)
!4744 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4745 = !{!4742, !4746}
!4746 = !DILocalVariable(name: "size", arg: 2, scope: !4743, file: !4744, line: 2057, type: !166)
!4747 = !DILocation(line: 0, scope: !4743, inlinedAt: !4748)
!4748 = distinct !DILocation(line: 70, column: 25, scope: !4735)
!4749 = !DILocation(line: 2059, column: 24, scope: !4743, inlinedAt: !4748)
!4750 = !DILocation(line: 2059, column: 10, scope: !4743, inlinedAt: !4748)
!4751 = !DILocation(line: 0, scope: !4668, inlinedAt: !4752)
!4752 = distinct !DILocation(line: 70, column: 10, scope: !4735)
!4753 = !DILocation(line: 39, column: 8, scope: !4675, inlinedAt: !4752)
!4754 = !DILocation(line: 39, column: 7, scope: !4668, inlinedAt: !4752)
!4755 = !DILocation(line: 40, column: 5, scope: !4675, inlinedAt: !4752)
!4756 = !DILocation(line: 70, column: 3, scope: !4735)
!4757 = !DISubprogram(name: "realloc", scope: !1276, file: !1276, line: 551, type: !4736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4758 = distinct !DISubprogram(name: "xirealloc", scope: !1000, file: !1000, line: 74, type: !4759, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4761)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!164, !164, !1019}
!4761 = !{!4762, !4763}
!4762 = !DILocalVariable(name: "p", arg: 1, scope: !4758, file: !1000, line: 74, type: !164)
!4763 = !DILocalVariable(name: "s", arg: 2, scope: !4758, file: !1000, line: 74, type: !1019)
!4764 = !DILocation(line: 0, scope: !4758)
!4765 = !DILocalVariable(name: "p", arg: 1, scope: !4766, file: !4709, line: 66, type: !164)
!4766 = distinct !DISubprogram(name: "irealloc", scope: !4709, file: !4709, line: 66, type: !4759, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4767)
!4767 = !{!4765, !4768}
!4768 = !DILocalVariable(name: "s", arg: 2, scope: !4766, file: !4709, line: 66, type: !1019)
!4769 = !DILocation(line: 0, scope: !4766, inlinedAt: !4770)
!4770 = distinct !DILocation(line: 76, column: 25, scope: !4758)
!4771 = !DILocation(line: 0, scope: !4743, inlinedAt: !4772)
!4772 = distinct !DILocation(line: 68, column: 26, scope: !4766, inlinedAt: !4770)
!4773 = !DILocation(line: 2059, column: 24, scope: !4743, inlinedAt: !4772)
!4774 = !DILocation(line: 2059, column: 10, scope: !4743, inlinedAt: !4772)
!4775 = !DILocation(line: 0, scope: !4668, inlinedAt: !4776)
!4776 = distinct !DILocation(line: 76, column: 10, scope: !4758)
!4777 = !DILocation(line: 39, column: 8, scope: !4675, inlinedAt: !4776)
!4778 = !DILocation(line: 39, column: 7, scope: !4668, inlinedAt: !4776)
!4779 = !DILocation(line: 40, column: 5, scope: !4675, inlinedAt: !4776)
!4780 = !DILocation(line: 76, column: 3, scope: !4758)
!4781 = distinct !DISubprogram(name: "xireallocarray", scope: !1000, file: !1000, line: 89, type: !4782, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4784)
!4782 = !DISubroutineType(types: !4783)
!4783 = !{!164, !164, !1019, !1019}
!4784 = !{!4785, !4786, !4787}
!4785 = !DILocalVariable(name: "p", arg: 1, scope: !4781, file: !1000, line: 89, type: !164)
!4786 = !DILocalVariable(name: "n", arg: 2, scope: !4781, file: !1000, line: 89, type: !1019)
!4787 = !DILocalVariable(name: "s", arg: 3, scope: !4781, file: !1000, line: 89, type: !1019)
!4788 = !DILocation(line: 0, scope: !4781)
!4789 = !DILocalVariable(name: "p", arg: 1, scope: !4790, file: !4709, line: 98, type: !164)
!4790 = distinct !DISubprogram(name: "ireallocarray", scope: !4709, file: !4709, line: 98, type: !4782, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4791)
!4791 = !{!4789, !4792, !4793}
!4792 = !DILocalVariable(name: "n", arg: 2, scope: !4790, file: !4709, line: 98, type: !1019)
!4793 = !DILocalVariable(name: "s", arg: 3, scope: !4790, file: !4709, line: 98, type: !1019)
!4794 = !DILocation(line: 0, scope: !4790, inlinedAt: !4795)
!4795 = distinct !DILocation(line: 91, column: 25, scope: !4781)
!4796 = !DILocation(line: 101, column: 13, scope: !4790, inlinedAt: !4795)
!4797 = !DILocation(line: 0, scope: !4668, inlinedAt: !4798)
!4798 = distinct !DILocation(line: 91, column: 10, scope: !4781)
!4799 = !DILocation(line: 39, column: 8, scope: !4675, inlinedAt: !4798)
!4800 = !DILocation(line: 39, column: 7, scope: !4668, inlinedAt: !4798)
!4801 = !DILocation(line: 40, column: 5, scope: !4675, inlinedAt: !4798)
!4802 = !DILocation(line: 91, column: 3, scope: !4781)
!4803 = distinct !DISubprogram(name: "xnmalloc", scope: !1000, file: !1000, line: 98, type: !4804, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4806)
!4804 = !DISubroutineType(types: !4805)
!4805 = !{!164, !166, !166}
!4806 = !{!4807, !4808}
!4807 = !DILocalVariable(name: "n", arg: 1, scope: !4803, file: !1000, line: 98, type: !166)
!4808 = !DILocalVariable(name: "s", arg: 2, scope: !4803, file: !1000, line: 98, type: !166)
!4809 = !DILocation(line: 0, scope: !4803)
!4810 = !DILocation(line: 0, scope: !4660, inlinedAt: !4811)
!4811 = distinct !DILocation(line: 100, column: 10, scope: !4803)
!4812 = !DILocation(line: 85, column: 25, scope: !4660, inlinedAt: !4811)
!4813 = !DILocation(line: 0, scope: !4668, inlinedAt: !4814)
!4814 = distinct !DILocation(line: 85, column: 10, scope: !4660, inlinedAt: !4811)
!4815 = !DILocation(line: 39, column: 8, scope: !4675, inlinedAt: !4814)
!4816 = !DILocation(line: 39, column: 7, scope: !4668, inlinedAt: !4814)
!4817 = !DILocation(line: 40, column: 5, scope: !4675, inlinedAt: !4814)
!4818 = !DILocation(line: 100, column: 3, scope: !4803)
!4819 = distinct !DISubprogram(name: "xinmalloc", scope: !1000, file: !1000, line: 104, type: !4820, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4822)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!164, !1019, !1019}
!4822 = !{!4823, !4824}
!4823 = !DILocalVariable(name: "n", arg: 1, scope: !4819, file: !1000, line: 104, type: !1019)
!4824 = !DILocalVariable(name: "s", arg: 2, scope: !4819, file: !1000, line: 104, type: !1019)
!4825 = !DILocation(line: 0, scope: !4819)
!4826 = !DILocation(line: 0, scope: !4781, inlinedAt: !4827)
!4827 = distinct !DILocation(line: 106, column: 10, scope: !4819)
!4828 = !DILocation(line: 0, scope: !4790, inlinedAt: !4829)
!4829 = distinct !DILocation(line: 91, column: 25, scope: !4781, inlinedAt: !4827)
!4830 = !DILocation(line: 101, column: 13, scope: !4790, inlinedAt: !4829)
!4831 = !DILocation(line: 0, scope: !4668, inlinedAt: !4832)
!4832 = distinct !DILocation(line: 91, column: 10, scope: !4781, inlinedAt: !4827)
!4833 = !DILocation(line: 39, column: 8, scope: !4675, inlinedAt: !4832)
!4834 = !DILocation(line: 39, column: 7, scope: !4668, inlinedAt: !4832)
!4835 = !DILocation(line: 40, column: 5, scope: !4675, inlinedAt: !4832)
!4836 = !DILocation(line: 106, column: 3, scope: !4819)
!4837 = distinct !DISubprogram(name: "x2realloc", scope: !1000, file: !1000, line: 116, type: !4838, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4840)
!4838 = !DISubroutineType(types: !4839)
!4839 = !{!164, !164, !1006}
!4840 = !{!4841, !4842}
!4841 = !DILocalVariable(name: "p", arg: 1, scope: !4837, file: !1000, line: 116, type: !164)
!4842 = !DILocalVariable(name: "ps", arg: 2, scope: !4837, file: !1000, line: 116, type: !1006)
!4843 = !DILocation(line: 0, scope: !4837)
!4844 = !DILocation(line: 0, scope: !1003, inlinedAt: !4845)
!4845 = distinct !DILocation(line: 118, column: 10, scope: !4837)
!4846 = !DILocation(line: 178, column: 14, scope: !1003, inlinedAt: !4845)
!4847 = !DILocation(line: 180, column: 9, scope: !4848, inlinedAt: !4845)
!4848 = distinct !DILexicalBlock(scope: !1003, file: !1000, line: 180, column: 7)
!4849 = !DILocation(line: 180, column: 7, scope: !1003, inlinedAt: !4845)
!4850 = !DILocation(line: 182, column: 13, scope: !4851, inlinedAt: !4845)
!4851 = distinct !DILexicalBlock(scope: !4852, file: !1000, line: 182, column: 11)
!4852 = distinct !DILexicalBlock(scope: !4848, file: !1000, line: 181, column: 5)
!4853 = !DILocation(line: 182, column: 11, scope: !4852, inlinedAt: !4845)
!4854 = !DILocation(line: 197, column: 11, scope: !4855, inlinedAt: !4845)
!4855 = distinct !DILexicalBlock(scope: !4856, file: !1000, line: 197, column: 11)
!4856 = distinct !DILexicalBlock(scope: !4848, file: !1000, line: 195, column: 5)
!4857 = !DILocation(line: 197, column: 11, scope: !4856, inlinedAt: !4845)
!4858 = !DILocation(line: 198, column: 9, scope: !4855, inlinedAt: !4845)
!4859 = !DILocation(line: 0, scope: !4660, inlinedAt: !4860)
!4860 = distinct !DILocation(line: 201, column: 7, scope: !1003, inlinedAt: !4845)
!4861 = !DILocation(line: 85, column: 25, scope: !4660, inlinedAt: !4860)
!4862 = !DILocation(line: 0, scope: !4668, inlinedAt: !4863)
!4863 = distinct !DILocation(line: 85, column: 10, scope: !4660, inlinedAt: !4860)
!4864 = !DILocation(line: 39, column: 8, scope: !4675, inlinedAt: !4863)
!4865 = !DILocation(line: 39, column: 7, scope: !4668, inlinedAt: !4863)
!4866 = !DILocation(line: 40, column: 5, scope: !4675, inlinedAt: !4863)
!4867 = !DILocation(line: 202, column: 7, scope: !1003, inlinedAt: !4845)
!4868 = !DILocation(line: 118, column: 3, scope: !4837)
!4869 = !DILocation(line: 0, scope: !1003)
!4870 = !DILocation(line: 178, column: 14, scope: !1003)
!4871 = !DILocation(line: 180, column: 9, scope: !4848)
!4872 = !DILocation(line: 180, column: 7, scope: !1003)
!4873 = !DILocation(line: 182, column: 13, scope: !4851)
!4874 = !DILocation(line: 182, column: 11, scope: !4852)
!4875 = !DILocation(line: 190, column: 30, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4851, file: !1000, line: 183, column: 9)
!4877 = !DILocation(line: 191, column: 16, scope: !4876)
!4878 = !DILocation(line: 191, column: 13, scope: !4876)
!4879 = !DILocation(line: 192, column: 9, scope: !4876)
!4880 = !DILocation(line: 197, column: 11, scope: !4855)
!4881 = !DILocation(line: 197, column: 11, scope: !4856)
!4882 = !DILocation(line: 198, column: 9, scope: !4855)
!4883 = !DILocation(line: 0, scope: !4660, inlinedAt: !4884)
!4884 = distinct !DILocation(line: 201, column: 7, scope: !1003)
!4885 = !DILocation(line: 85, column: 25, scope: !4660, inlinedAt: !4884)
!4886 = !DILocation(line: 0, scope: !4668, inlinedAt: !4887)
!4887 = distinct !DILocation(line: 85, column: 10, scope: !4660, inlinedAt: !4884)
!4888 = !DILocation(line: 39, column: 8, scope: !4675, inlinedAt: !4887)
!4889 = !DILocation(line: 39, column: 7, scope: !4668, inlinedAt: !4887)
!4890 = !DILocation(line: 40, column: 5, scope: !4675, inlinedAt: !4887)
!4891 = !DILocation(line: 202, column: 7, scope: !1003)
!4892 = !DILocation(line: 203, column: 3, scope: !1003)
!4893 = !DILocation(line: 0, scope: !1015)
!4894 = !DILocation(line: 230, column: 14, scope: !1015)
!4895 = !DILocation(line: 238, column: 7, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !1015, file: !1000, line: 238, column: 7)
!4897 = !DILocation(line: 238, column: 7, scope: !1015)
!4898 = !DILocation(line: 240, column: 9, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !1015, file: !1000, line: 240, column: 7)
!4900 = !DILocation(line: 240, column: 18, scope: !4899)
!4901 = !DILocation(line: 253, column: 8, scope: !1015)
!4902 = !DILocation(line: 256, column: 7, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !1015, file: !1000, line: 256, column: 7)
!4904 = !DILocation(line: 256, column: 7, scope: !1015)
!4905 = !DILocation(line: 258, column: 27, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4903, file: !1000, line: 257, column: 5)
!4907 = !DILocation(line: 259, column: 50, scope: !4906)
!4908 = !DILocation(line: 259, column: 32, scope: !4906)
!4909 = !DILocation(line: 260, column: 5, scope: !4906)
!4910 = !DILocation(line: 262, column: 9, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !1015, file: !1000, line: 262, column: 7)
!4912 = !DILocation(line: 262, column: 7, scope: !1015)
!4913 = !DILocation(line: 263, column: 9, scope: !4911)
!4914 = !DILocation(line: 263, column: 5, scope: !4911)
!4915 = !DILocation(line: 264, column: 9, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !1015, file: !1000, line: 264, column: 7)
!4917 = !DILocation(line: 264, column: 14, scope: !4916)
!4918 = !DILocation(line: 265, column: 7, scope: !4916)
!4919 = !DILocation(line: 265, column: 11, scope: !4916)
!4920 = !DILocation(line: 266, column: 11, scope: !4916)
!4921 = !DILocation(line: 267, column: 14, scope: !4916)
!4922 = !DILocation(line: 264, column: 7, scope: !1015)
!4923 = !DILocation(line: 268, column: 5, scope: !4916)
!4924 = !DILocation(line: 0, scope: !4735, inlinedAt: !4925)
!4925 = distinct !DILocation(line: 269, column: 8, scope: !1015)
!4926 = !DILocation(line: 0, scope: !4743, inlinedAt: !4927)
!4927 = distinct !DILocation(line: 70, column: 25, scope: !4735, inlinedAt: !4925)
!4928 = !DILocation(line: 2059, column: 24, scope: !4743, inlinedAt: !4927)
!4929 = !DILocation(line: 2059, column: 10, scope: !4743, inlinedAt: !4927)
!4930 = !DILocation(line: 0, scope: !4668, inlinedAt: !4931)
!4931 = distinct !DILocation(line: 70, column: 10, scope: !4735, inlinedAt: !4925)
!4932 = !DILocation(line: 39, column: 8, scope: !4675, inlinedAt: !4931)
!4933 = !DILocation(line: 39, column: 7, scope: !4668, inlinedAt: !4931)
!4934 = !DILocation(line: 40, column: 5, scope: !4675, inlinedAt: !4931)
!4935 = !DILocation(line: 270, column: 7, scope: !1015)
!4936 = !DILocation(line: 271, column: 3, scope: !1015)
!4937 = distinct !DISubprogram(name: "xzalloc", scope: !1000, file: !1000, line: 279, type: !4688, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4938)
!4938 = !{!4939}
!4939 = !DILocalVariable(name: "s", arg: 1, scope: !4937, file: !1000, line: 279, type: !166)
!4940 = !DILocation(line: 0, scope: !4937)
!4941 = !DILocalVariable(name: "n", arg: 1, scope: !4942, file: !1000, line: 294, type: !166)
!4942 = distinct !DISubprogram(name: "xcalloc", scope: !1000, file: !1000, line: 294, type: !4804, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4943)
!4943 = !{!4941, !4944}
!4944 = !DILocalVariable(name: "s", arg: 2, scope: !4942, file: !1000, line: 294, type: !166)
!4945 = !DILocation(line: 0, scope: !4942, inlinedAt: !4946)
!4946 = distinct !DILocation(line: 281, column: 10, scope: !4937)
!4947 = !DILocation(line: 296, column: 25, scope: !4942, inlinedAt: !4946)
!4948 = !DILocation(line: 0, scope: !4668, inlinedAt: !4949)
!4949 = distinct !DILocation(line: 296, column: 10, scope: !4942, inlinedAt: !4946)
!4950 = !DILocation(line: 39, column: 8, scope: !4675, inlinedAt: !4949)
!4951 = !DILocation(line: 39, column: 7, scope: !4668, inlinedAt: !4949)
!4952 = !DILocation(line: 40, column: 5, scope: !4675, inlinedAt: !4949)
!4953 = !DILocation(line: 281, column: 3, scope: !4937)
!4954 = !DISubprogram(name: "calloc", scope: !1276, file: !1276, line: 543, type: !4804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4955 = !DILocation(line: 0, scope: !4942)
!4956 = !DILocation(line: 296, column: 25, scope: !4942)
!4957 = !DILocation(line: 0, scope: !4668, inlinedAt: !4958)
!4958 = distinct !DILocation(line: 296, column: 10, scope: !4942)
!4959 = !DILocation(line: 39, column: 8, scope: !4675, inlinedAt: !4958)
!4960 = !DILocation(line: 39, column: 7, scope: !4668, inlinedAt: !4958)
!4961 = !DILocation(line: 40, column: 5, scope: !4675, inlinedAt: !4958)
!4962 = !DILocation(line: 296, column: 3, scope: !4942)
!4963 = distinct !DISubprogram(name: "xizalloc", scope: !1000, file: !1000, line: 285, type: !4702, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4964)
!4964 = !{!4965}
!4965 = !DILocalVariable(name: "s", arg: 1, scope: !4963, file: !1000, line: 285, type: !1019)
!4966 = !DILocation(line: 0, scope: !4963)
!4967 = !DILocalVariable(name: "n", arg: 1, scope: !4968, file: !1000, line: 300, type: !1019)
!4968 = distinct !DISubprogram(name: "xicalloc", scope: !1000, file: !1000, line: 300, type: !4820, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4969)
!4969 = !{!4967, !4970}
!4970 = !DILocalVariable(name: "s", arg: 2, scope: !4968, file: !1000, line: 300, type: !1019)
!4971 = !DILocation(line: 0, scope: !4968, inlinedAt: !4972)
!4972 = distinct !DILocation(line: 287, column: 10, scope: !4963)
!4973 = !DILocalVariable(name: "n", arg: 1, scope: !4974, file: !4709, line: 77, type: !1019)
!4974 = distinct !DISubprogram(name: "icalloc", scope: !4709, file: !4709, line: 77, type: !4820, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4975)
!4975 = !{!4973, !4976}
!4976 = !DILocalVariable(name: "s", arg: 2, scope: !4974, file: !4709, line: 77, type: !1019)
!4977 = !DILocation(line: 0, scope: !4974, inlinedAt: !4978)
!4978 = distinct !DILocation(line: 302, column: 25, scope: !4968, inlinedAt: !4972)
!4979 = !DILocation(line: 91, column: 10, scope: !4974, inlinedAt: !4978)
!4980 = !DILocation(line: 0, scope: !4668, inlinedAt: !4981)
!4981 = distinct !DILocation(line: 302, column: 10, scope: !4968, inlinedAt: !4972)
!4982 = !DILocation(line: 39, column: 8, scope: !4675, inlinedAt: !4981)
!4983 = !DILocation(line: 39, column: 7, scope: !4668, inlinedAt: !4981)
!4984 = !DILocation(line: 40, column: 5, scope: !4675, inlinedAt: !4981)
!4985 = !DILocation(line: 287, column: 3, scope: !4963)
!4986 = !DILocation(line: 0, scope: !4968)
!4987 = !DILocation(line: 0, scope: !4974, inlinedAt: !4988)
!4988 = distinct !DILocation(line: 302, column: 25, scope: !4968)
!4989 = !DILocation(line: 91, column: 10, scope: !4974, inlinedAt: !4988)
!4990 = !DILocation(line: 0, scope: !4668, inlinedAt: !4991)
!4991 = distinct !DILocation(line: 302, column: 10, scope: !4968)
!4992 = !DILocation(line: 39, column: 8, scope: !4675, inlinedAt: !4991)
!4993 = !DILocation(line: 39, column: 7, scope: !4668, inlinedAt: !4991)
!4994 = !DILocation(line: 40, column: 5, scope: !4675, inlinedAt: !4991)
!4995 = !DILocation(line: 302, column: 3, scope: !4968)
!4996 = distinct !DISubprogram(name: "xmemdup", scope: !1000, file: !1000, line: 310, type: !4997, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4999)
!4997 = !DISubroutineType(types: !4998)
!4998 = !{!164, !1300, !166}
!4999 = !{!5000, !5001}
!5000 = !DILocalVariable(name: "p", arg: 1, scope: !4996, file: !1000, line: 310, type: !1300)
!5001 = !DILocalVariable(name: "s", arg: 2, scope: !4996, file: !1000, line: 310, type: !166)
!5002 = !DILocation(line: 0, scope: !4996)
!5003 = !DILocation(line: 0, scope: !4687, inlinedAt: !5004)
!5004 = distinct !DILocation(line: 312, column: 18, scope: !4996)
!5005 = !DILocation(line: 49, column: 25, scope: !4687, inlinedAt: !5004)
!5006 = !DILocation(line: 0, scope: !4668, inlinedAt: !5007)
!5007 = distinct !DILocation(line: 49, column: 10, scope: !4687, inlinedAt: !5004)
!5008 = !DILocation(line: 39, column: 8, scope: !4675, inlinedAt: !5007)
!5009 = !DILocation(line: 39, column: 7, scope: !4668, inlinedAt: !5007)
!5010 = !DILocation(line: 40, column: 5, scope: !4675, inlinedAt: !5007)
!5011 = !DILocalVariable(name: "__dest", arg: 1, scope: !5012, file: !1566, line: 26, type: !1569)
!5012 = distinct !DISubprogram(name: "memcpy", scope: !1566, file: !1566, line: 26, type: !1567, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !5013)
!5013 = !{!5011, !5014, !5015}
!5014 = !DILocalVariable(name: "__src", arg: 2, scope: !5012, file: !1566, line: 26, type: !1299)
!5015 = !DILocalVariable(name: "__len", arg: 3, scope: !5012, file: !1566, line: 26, type: !166)
!5016 = !DILocation(line: 0, scope: !5012, inlinedAt: !5017)
!5017 = distinct !DILocation(line: 312, column: 10, scope: !4996)
!5018 = !DILocation(line: 29, column: 10, scope: !5012, inlinedAt: !5017)
!5019 = !DILocation(line: 312, column: 3, scope: !4996)
!5020 = distinct !DISubprogram(name: "ximemdup", scope: !1000, file: !1000, line: 316, type: !5021, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !5023)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!164, !1300, !1019}
!5023 = !{!5024, !5025}
!5024 = !DILocalVariable(name: "p", arg: 1, scope: !5020, file: !1000, line: 316, type: !1300)
!5025 = !DILocalVariable(name: "s", arg: 2, scope: !5020, file: !1000, line: 316, type: !1019)
!5026 = !DILocation(line: 0, scope: !5020)
!5027 = !DILocation(line: 0, scope: !4701, inlinedAt: !5028)
!5028 = distinct !DILocation(line: 318, column: 18, scope: !5020)
!5029 = !DILocation(line: 0, scope: !4708, inlinedAt: !5030)
!5030 = distinct !DILocation(line: 55, column: 25, scope: !4701, inlinedAt: !5028)
!5031 = !DILocation(line: 57, column: 26, scope: !4708, inlinedAt: !5030)
!5032 = !DILocation(line: 0, scope: !4668, inlinedAt: !5033)
!5033 = distinct !DILocation(line: 55, column: 10, scope: !4701, inlinedAt: !5028)
!5034 = !DILocation(line: 39, column: 8, scope: !4675, inlinedAt: !5033)
!5035 = !DILocation(line: 39, column: 7, scope: !4668, inlinedAt: !5033)
!5036 = !DILocation(line: 40, column: 5, scope: !4675, inlinedAt: !5033)
!5037 = !DILocation(line: 0, scope: !5012, inlinedAt: !5038)
!5038 = distinct !DILocation(line: 318, column: 10, scope: !5020)
!5039 = !DILocation(line: 29, column: 10, scope: !5012, inlinedAt: !5038)
!5040 = !DILocation(line: 318, column: 3, scope: !5020)
!5041 = distinct !DISubprogram(name: "ximemdup0", scope: !1000, file: !1000, line: 325, type: !5042, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !5044)
!5042 = !DISubroutineType(types: !5043)
!5043 = !{!163, !1300, !1019}
!5044 = !{!5045, !5046, !5047}
!5045 = !DILocalVariable(name: "p", arg: 1, scope: !5041, file: !1000, line: 325, type: !1300)
!5046 = !DILocalVariable(name: "s", arg: 2, scope: !5041, file: !1000, line: 325, type: !1019)
!5047 = !DILocalVariable(name: "result", scope: !5041, file: !1000, line: 327, type: !163)
!5048 = !DILocation(line: 0, scope: !5041)
!5049 = !DILocation(line: 327, column: 30, scope: !5041)
!5050 = !DILocation(line: 0, scope: !4701, inlinedAt: !5051)
!5051 = distinct !DILocation(line: 327, column: 18, scope: !5041)
!5052 = !DILocation(line: 0, scope: !4708, inlinedAt: !5053)
!5053 = distinct !DILocation(line: 55, column: 25, scope: !4701, inlinedAt: !5051)
!5054 = !DILocation(line: 57, column: 26, scope: !4708, inlinedAt: !5053)
!5055 = !DILocation(line: 0, scope: !4668, inlinedAt: !5056)
!5056 = distinct !DILocation(line: 55, column: 10, scope: !4701, inlinedAt: !5051)
!5057 = !DILocation(line: 39, column: 8, scope: !4675, inlinedAt: !5056)
!5058 = !DILocation(line: 39, column: 7, scope: !4668, inlinedAt: !5056)
!5059 = !DILocation(line: 40, column: 5, scope: !4675, inlinedAt: !5056)
!5060 = !DILocation(line: 328, column: 3, scope: !5041)
!5061 = !DILocation(line: 328, column: 13, scope: !5041)
!5062 = !DILocation(line: 0, scope: !5012, inlinedAt: !5063)
!5063 = distinct !DILocation(line: 329, column: 10, scope: !5041)
!5064 = !DILocation(line: 29, column: 10, scope: !5012, inlinedAt: !5063)
!5065 = !DILocation(line: 329, column: 3, scope: !5041)
!5066 = distinct !DISubprogram(name: "xstrdup", scope: !1000, file: !1000, line: 335, type: !1278, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !5067)
!5067 = !{!5068}
!5068 = !DILocalVariable(name: "string", arg: 1, scope: !5066, file: !1000, line: 335, type: !169)
!5069 = !DILocation(line: 0, scope: !5066)
!5070 = !DILocation(line: 337, column: 27, scope: !5066)
!5071 = !DILocation(line: 337, column: 43, scope: !5066)
!5072 = !DILocation(line: 0, scope: !4996, inlinedAt: !5073)
!5073 = distinct !DILocation(line: 337, column: 10, scope: !5066)
!5074 = !DILocation(line: 0, scope: !4687, inlinedAt: !5075)
!5075 = distinct !DILocation(line: 312, column: 18, scope: !4996, inlinedAt: !5073)
!5076 = !DILocation(line: 49, column: 25, scope: !4687, inlinedAt: !5075)
!5077 = !DILocation(line: 0, scope: !4668, inlinedAt: !5078)
!5078 = distinct !DILocation(line: 49, column: 10, scope: !4687, inlinedAt: !5075)
!5079 = !DILocation(line: 39, column: 8, scope: !4675, inlinedAt: !5078)
!5080 = !DILocation(line: 39, column: 7, scope: !4668, inlinedAt: !5078)
!5081 = !DILocation(line: 40, column: 5, scope: !4675, inlinedAt: !5078)
!5082 = !DILocation(line: 0, scope: !5012, inlinedAt: !5083)
!5083 = distinct !DILocation(line: 312, column: 10, scope: !4996, inlinedAt: !5073)
!5084 = !DILocation(line: 29, column: 10, scope: !5012, inlinedAt: !5083)
!5085 = !DILocation(line: 337, column: 3, scope: !5066)
!5086 = distinct !DISubprogram(name: "xalloc_die", scope: !958, file: !958, line: 32, type: !711, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !5087)
!5087 = !{!5088}
!5088 = !DILocalVariable(name: "__errstatus", scope: !5089, file: !958, line: 34, type: !5090)
!5089 = distinct !DILexicalBlock(scope: !5086, file: !958, line: 34, column: 3)
!5090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!5091 = !DILocation(line: 34, column: 3, scope: !5089)
!5092 = !DILocation(line: 0, scope: !5089)
!5093 = !DILocation(line: 40, column: 3, scope: !5086)
!5094 = distinct !DISubprogram(name: "close_stream", scope: !1035, file: !1035, line: 55, type: !5095, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !5131)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!122, !5097}
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5098 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !5099)
!5099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !5100)
!5100 = !{!5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130}
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5099, file: !330, line: 51, baseType: !122, size: 32)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5099, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5099, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5099, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5099, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5099, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5099, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5099, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5099, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5099, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5099, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5099, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5099, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5099, file: !330, line: 70, baseType: !5115, size: 64, offset: 832)
!5115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5099, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5099, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5099, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5099, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5099, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5099, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5099, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5099, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5099, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5099, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5099, file: !330, line: 93, baseType: !5115, size: 64, offset: 1344)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5099, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5099, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5099, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5099, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!5131 = !{!5132, !5133, !5135, !5136}
!5132 = !DILocalVariable(name: "stream", arg: 1, scope: !5094, file: !1035, line: 55, type: !5097)
!5133 = !DILocalVariable(name: "some_pending", scope: !5094, file: !1035, line: 57, type: !5134)
!5134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!5135 = !DILocalVariable(name: "prev_fail", scope: !5094, file: !1035, line: 58, type: !5134)
!5136 = !DILocalVariable(name: "fclose_fail", scope: !5094, file: !1035, line: 59, type: !5134)
!5137 = !DILocation(line: 0, scope: !5094)
!5138 = !DILocation(line: 57, column: 30, scope: !5094)
!5139 = !DILocalVariable(name: "__stream", arg: 1, scope: !5140, file: !2794, line: 135, type: !5097)
!5140 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2794, file: !2794, line: 135, type: !5095, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !5141)
!5141 = !{!5139}
!5142 = !DILocation(line: 0, scope: !5140, inlinedAt: !5143)
!5143 = distinct !DILocation(line: 58, column: 27, scope: !5094)
!5144 = !DILocation(line: 137, column: 10, scope: !5140, inlinedAt: !5143)
!5145 = !{!2803, !1153, i64 0}
!5146 = !DILocation(line: 58, column: 43, scope: !5094)
!5147 = !DILocation(line: 59, column: 29, scope: !5094)
!5148 = !DILocation(line: 59, column: 45, scope: !5094)
!5149 = !DILocation(line: 69, column: 17, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5094, file: !1035, line: 69, column: 7)
!5151 = !DILocation(line: 57, column: 50, scope: !5094)
!5152 = !DILocation(line: 69, column: 33, scope: !5150)
!5153 = !DILocation(line: 69, column: 53, scope: !5150)
!5154 = !DILocation(line: 69, column: 59, scope: !5150)
!5155 = !DILocation(line: 69, column: 7, scope: !5094)
!5156 = !DILocation(line: 71, column: 11, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5150, file: !1035, line: 70, column: 5)
!5158 = !DILocation(line: 72, column: 9, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5157, file: !1035, line: 71, column: 11)
!5160 = !DILocation(line: 72, column: 15, scope: !5159)
!5161 = !DILocation(line: 77, column: 1, scope: !5094)
!5162 = !DISubprogram(name: "__fpending", scope: !5163, file: !5163, line: 75, type: !5164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5163 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!5164 = !DISubroutineType(types: !5165)
!5165 = !{!166, !5097}
!5166 = distinct !DISubprogram(name: "rpl_fclose", scope: !1037, file: !1037, line: 58, type: !5167, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1036, retainedNodes: !5203)
!5167 = !DISubroutineType(types: !5168)
!5168 = !{!122, !5169}
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !5171)
!5171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !5172)
!5172 = !{!5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202}
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5171, file: !330, line: 51, baseType: !122, size: 32)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5171, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5171, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5171, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5171, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5171, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5171, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5171, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5171, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5171, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5171, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5171, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5171, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5171, file: !330, line: 70, baseType: !5187, size: 64, offset: 832)
!5187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5171, size: 64)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5171, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5171, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5171, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5171, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5171, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5171, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5171, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5171, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5171, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5171, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5171, file: !330, line: 93, baseType: !5187, size: 64, offset: 1344)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5171, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5171, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5171, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5171, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!5203 = !{!5204, !5205, !5206, !5207}
!5204 = !DILocalVariable(name: "fp", arg: 1, scope: !5166, file: !1037, line: 58, type: !5169)
!5205 = !DILocalVariable(name: "saved_errno", scope: !5166, file: !1037, line: 60, type: !122)
!5206 = !DILocalVariable(name: "fd", scope: !5166, file: !1037, line: 63, type: !122)
!5207 = !DILocalVariable(name: "result", scope: !5166, file: !1037, line: 74, type: !122)
!5208 = !DILocation(line: 0, scope: !5166)
!5209 = !DILocation(line: 63, column: 12, scope: !5166)
!5210 = !DILocation(line: 64, column: 10, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5166, file: !1037, line: 64, column: 7)
!5212 = !DILocation(line: 64, column: 7, scope: !5166)
!5213 = !DILocation(line: 65, column: 12, scope: !5211)
!5214 = !DILocation(line: 65, column: 5, scope: !5211)
!5215 = !DILocation(line: 70, column: 9, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5166, file: !1037, line: 70, column: 7)
!5217 = !DILocation(line: 70, column: 23, scope: !5216)
!5218 = !DILocation(line: 70, column: 33, scope: !5216)
!5219 = !DILocation(line: 70, column: 26, scope: !5216)
!5220 = !DILocation(line: 70, column: 59, scope: !5216)
!5221 = !DILocation(line: 71, column: 7, scope: !5216)
!5222 = !DILocation(line: 71, column: 10, scope: !5216)
!5223 = !DILocation(line: 70, column: 7, scope: !5166)
!5224 = !DILocation(line: 100, column: 12, scope: !5166)
!5225 = !DILocation(line: 105, column: 7, scope: !5166)
!5226 = !DILocation(line: 72, column: 19, scope: !5216)
!5227 = !DILocation(line: 105, column: 19, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5166, file: !1037, line: 105, column: 7)
!5229 = !DILocation(line: 107, column: 13, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5228, file: !1037, line: 106, column: 5)
!5231 = !DILocation(line: 109, column: 5, scope: !5230)
!5232 = !DILocation(line: 112, column: 1, scope: !5166)
!5233 = !DISubprogram(name: "fileno", scope: !1147, file: !1147, line: 809, type: !5167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5234 = !DISubprogram(name: "fclose", scope: !1147, file: !1147, line: 178, type: !5167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5235 = !DISubprogram(name: "__freading", scope: !5163, file: !5163, line: 51, type: !5167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5236 = !DISubprogram(name: "lseek", scope: !2430, file: !2430, line: 339, type: !5237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5237 = !DISubroutineType(types: !5238)
!5238 = !{!352, !122, !352, !122}
!5239 = distinct !DISubprogram(name: "rpl_fflush", scope: !1039, file: !1039, line: 130, type: !5240, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1038, retainedNodes: !5276)
!5240 = !DISubroutineType(types: !5241)
!5241 = !{!122, !5242}
!5242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5243, size: 64)
!5243 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !5244)
!5244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !5245)
!5245 = !{!5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275}
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5244, file: !330, line: 51, baseType: !122, size: 32)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5244, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5244, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5244, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5244, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5244, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5244, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5244, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5244, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5244, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5244, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5244, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5244, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5244, file: !330, line: 70, baseType: !5260, size: 64, offset: 832)
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5244, size: 64)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5244, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5244, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5244, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5244, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5244, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5244, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5244, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5244, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5244, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5244, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5244, file: !330, line: 93, baseType: !5260, size: 64, offset: 1344)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5244, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5244, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5244, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5244, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!5276 = !{!5277}
!5277 = !DILocalVariable(name: "stream", arg: 1, scope: !5239, file: !1039, line: 130, type: !5242)
!5278 = !DILocation(line: 0, scope: !5239)
!5279 = !DILocation(line: 151, column: 14, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5239, file: !1039, line: 151, column: 7)
!5281 = !DILocation(line: 151, column: 22, scope: !5280)
!5282 = !DILocation(line: 151, column: 27, scope: !5280)
!5283 = !DILocation(line: 151, column: 7, scope: !5239)
!5284 = !DILocation(line: 152, column: 12, scope: !5280)
!5285 = !DILocation(line: 152, column: 5, scope: !5280)
!5286 = !DILocalVariable(name: "fp", arg: 1, scope: !5287, file: !1039, line: 42, type: !5242)
!5287 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1039, file: !1039, line: 42, type: !5288, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1038, retainedNodes: !5290)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{null, !5242}
!5290 = !{!5286}
!5291 = !DILocation(line: 0, scope: !5287, inlinedAt: !5292)
!5292 = distinct !DILocation(line: 157, column: 3, scope: !5239)
!5293 = !DILocation(line: 44, column: 12, scope: !5294, inlinedAt: !5292)
!5294 = distinct !DILexicalBlock(scope: !5287, file: !1039, line: 44, column: 7)
!5295 = !DILocation(line: 44, column: 19, scope: !5294, inlinedAt: !5292)
!5296 = !DILocation(line: 44, column: 7, scope: !5287, inlinedAt: !5292)
!5297 = !DILocation(line: 46, column: 5, scope: !5294, inlinedAt: !5292)
!5298 = !DILocation(line: 159, column: 10, scope: !5239)
!5299 = !DILocation(line: 159, column: 3, scope: !5239)
!5300 = !DILocation(line: 236, column: 1, scope: !5239)
!5301 = !DISubprogram(name: "fflush", scope: !1147, file: !1147, line: 230, type: !5240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5302 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1041, file: !1041, line: 28, type: !5303, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1040, retainedNodes: !5340)
!5303 = !DISubroutineType(types: !5304)
!5304 = !{!122, !5305, !5339, !122}
!5305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5306, size: 64)
!5306 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !5307)
!5307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !5308)
!5308 = !{!5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5307, file: !330, line: 51, baseType: !122, size: 32)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5307, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5307, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5307, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5307, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5307, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5307, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5307, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5307, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5307, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5307, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5307, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5307, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5307, file: !330, line: 70, baseType: !5323, size: 64, offset: 832)
!5323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5307, size: 64)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5307, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5307, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5307, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5307, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5307, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5307, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5307, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5307, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5307, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5307, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5307, file: !330, line: 93, baseType: !5323, size: 64, offset: 1344)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5307, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5307, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5307, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5307, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!5339 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1147, line: 63, baseType: !352)
!5340 = !{!5341, !5342, !5343, !5344}
!5341 = !DILocalVariable(name: "fp", arg: 1, scope: !5302, file: !1041, line: 28, type: !5305)
!5342 = !DILocalVariable(name: "offset", arg: 2, scope: !5302, file: !1041, line: 28, type: !5339)
!5343 = !DILocalVariable(name: "whence", arg: 3, scope: !5302, file: !1041, line: 28, type: !122)
!5344 = !DILocalVariable(name: "pos", scope: !5345, file: !1041, line: 123, type: !5339)
!5345 = distinct !DILexicalBlock(scope: !5346, file: !1041, line: 119, column: 5)
!5346 = distinct !DILexicalBlock(scope: !5302, file: !1041, line: 55, column: 7)
!5347 = !DILocation(line: 0, scope: !5302)
!5348 = !DILocation(line: 55, column: 12, scope: !5346)
!5349 = !{!2803, !1070, i64 16}
!5350 = !DILocation(line: 55, column: 33, scope: !5346)
!5351 = !{!2803, !1070, i64 8}
!5352 = !DILocation(line: 55, column: 25, scope: !5346)
!5353 = !DILocation(line: 56, column: 7, scope: !5346)
!5354 = !DILocation(line: 56, column: 15, scope: !5346)
!5355 = !DILocation(line: 56, column: 37, scope: !5346)
!5356 = !{!2803, !1070, i64 32}
!5357 = !DILocation(line: 56, column: 29, scope: !5346)
!5358 = !DILocation(line: 57, column: 7, scope: !5346)
!5359 = !DILocation(line: 57, column: 15, scope: !5346)
!5360 = !{!2803, !1070, i64 72}
!5361 = !DILocation(line: 57, column: 29, scope: !5346)
!5362 = !DILocation(line: 55, column: 7, scope: !5302)
!5363 = !DILocation(line: 123, column: 26, scope: !5345)
!5364 = !DILocation(line: 123, column: 19, scope: !5345)
!5365 = !DILocation(line: 0, scope: !5345)
!5366 = !DILocation(line: 124, column: 15, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5345, file: !1041, line: 124, column: 11)
!5368 = !DILocation(line: 124, column: 11, scope: !5345)
!5369 = !DILocation(line: 135, column: 19, scope: !5345)
!5370 = !DILocation(line: 136, column: 12, scope: !5345)
!5371 = !DILocation(line: 136, column: 20, scope: !5345)
!5372 = !{!2803, !1355, i64 144}
!5373 = !DILocation(line: 167, column: 7, scope: !5345)
!5374 = !DILocation(line: 169, column: 10, scope: !5302)
!5375 = !DILocation(line: 169, column: 3, scope: !5302)
!5376 = !DILocation(line: 170, column: 1, scope: !5302)
!5377 = !DISubprogram(name: "fseeko", scope: !1147, file: !1147, line: 736, type: !5378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5378 = !DISubroutineType(types: !5379)
!5379 = !{!122, !5305, !352, !122}
!5380 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !965, file: !965, line: 100, type: !5381, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !5384)
!5381 = !DISubroutineType(types: !5382)
!5382 = !{!166, !2972, !169, !166, !5383}
!5383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!5384 = !{!5385, !5386, !5387, !5388, !5389}
!5385 = !DILocalVariable(name: "pwc", arg: 1, scope: !5380, file: !965, line: 100, type: !2972)
!5386 = !DILocalVariable(name: "s", arg: 2, scope: !5380, file: !965, line: 100, type: !169)
!5387 = !DILocalVariable(name: "n", arg: 3, scope: !5380, file: !965, line: 100, type: !166)
!5388 = !DILocalVariable(name: "ps", arg: 4, scope: !5380, file: !965, line: 100, type: !5383)
!5389 = !DILocalVariable(name: "ret", scope: !5380, file: !965, line: 130, type: !166)
!5390 = !DILocation(line: 0, scope: !5380)
!5391 = !DILocation(line: 105, column: 9, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5380, file: !965, line: 105, column: 7)
!5393 = !DILocation(line: 105, column: 7, scope: !5380)
!5394 = !DILocation(line: 117, column: 10, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5380, file: !965, line: 117, column: 7)
!5396 = !DILocation(line: 117, column: 7, scope: !5380)
!5397 = !DILocation(line: 130, column: 16, scope: !5380)
!5398 = !DILocation(line: 135, column: 11, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5380, file: !965, line: 135, column: 7)
!5400 = !DILocation(line: 135, column: 25, scope: !5399)
!5401 = !DILocation(line: 135, column: 30, scope: !5399)
!5402 = !DILocation(line: 135, column: 7, scope: !5380)
!5403 = !DILocalVariable(name: "ps", arg: 1, scope: !5404, file: !2946, line: 1135, type: !5383)
!5404 = distinct !DISubprogram(name: "mbszero", scope: !2946, file: !2946, line: 1135, type: !5405, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !5407)
!5405 = !DISubroutineType(types: !5406)
!5406 = !{null, !5383}
!5407 = !{!5403}
!5408 = !DILocation(line: 0, scope: !5404, inlinedAt: !5409)
!5409 = distinct !DILocation(line: 137, column: 5, scope: !5399)
!5410 = !DILocalVariable(name: "__dest", arg: 1, scope: !5411, file: !1566, line: 57, type: !164)
!5411 = distinct !DISubprogram(name: "memset", scope: !1566, file: !1566, line: 57, type: !2955, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !5412)
!5412 = !{!5410, !5413, !5414}
!5413 = !DILocalVariable(name: "__ch", arg: 2, scope: !5411, file: !1566, line: 57, type: !122)
!5414 = !DILocalVariable(name: "__len", arg: 3, scope: !5411, file: !1566, line: 57, type: !166)
!5415 = !DILocation(line: 0, scope: !5411, inlinedAt: !5416)
!5416 = distinct !DILocation(line: 1137, column: 3, scope: !5404, inlinedAt: !5409)
!5417 = !DILocation(line: 59, column: 10, scope: !5411, inlinedAt: !5416)
!5418 = !DILocation(line: 137, column: 5, scope: !5399)
!5419 = !DILocation(line: 138, column: 11, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5380, file: !965, line: 138, column: 7)
!5421 = !DILocation(line: 138, column: 7, scope: !5380)
!5422 = !DILocation(line: 139, column: 5, scope: !5420)
!5423 = !DILocation(line: 143, column: 26, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5380, file: !965, line: 143, column: 7)
!5425 = !DILocation(line: 143, column: 41, scope: !5424)
!5426 = !DILocation(line: 143, column: 7, scope: !5380)
!5427 = !DILocation(line: 145, column: 15, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5429, file: !965, line: 145, column: 11)
!5429 = distinct !DILexicalBlock(scope: !5424, file: !965, line: 144, column: 5)
!5430 = !DILocation(line: 145, column: 11, scope: !5429)
!5431 = !DILocation(line: 146, column: 32, scope: !5428)
!5432 = !DILocation(line: 146, column: 16, scope: !5428)
!5433 = !DILocation(line: 146, column: 14, scope: !5428)
!5434 = !DILocation(line: 146, column: 9, scope: !5428)
!5435 = !DILocation(line: 286, column: 1, scope: !5380)
!5436 = !DISubprogram(name: "mbsinit", scope: !5437, file: !5437, line: 293, type: !5438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5437 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5438 = !DISubroutineType(types: !5439)
!5439 = !{!122, !5440}
!5440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5441, size: 64)
!5441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !971)
!5442 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1043, file: !1043, line: 27, type: !4652, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1042, retainedNodes: !5443)
!5443 = !{!5444, !5445, !5446, !5447}
!5444 = !DILocalVariable(name: "ptr", arg: 1, scope: !5442, file: !1043, line: 27, type: !164)
!5445 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5442, file: !1043, line: 27, type: !166)
!5446 = !DILocalVariable(name: "size", arg: 3, scope: !5442, file: !1043, line: 27, type: !166)
!5447 = !DILocalVariable(name: "nbytes", scope: !5442, file: !1043, line: 29, type: !166)
!5448 = !DILocation(line: 0, scope: !5442)
!5449 = !DILocation(line: 30, column: 7, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5442, file: !1043, line: 30, column: 7)
!5451 = !DILocation(line: 30, column: 7, scope: !5442)
!5452 = !DILocation(line: 32, column: 7, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5450, file: !1043, line: 31, column: 5)
!5454 = !DILocation(line: 32, column: 13, scope: !5453)
!5455 = !DILocation(line: 33, column: 7, scope: !5453)
!5456 = !DILocalVariable(name: "ptr", arg: 1, scope: !5457, file: !4744, line: 2057, type: !164)
!5457 = distinct !DISubprogram(name: "rpl_realloc", scope: !4744, file: !4744, line: 2057, type: !4736, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1042, retainedNodes: !5458)
!5458 = !{!5456, !5459}
!5459 = !DILocalVariable(name: "size", arg: 2, scope: !5457, file: !4744, line: 2057, type: !166)
!5460 = !DILocation(line: 0, scope: !5457, inlinedAt: !5461)
!5461 = distinct !DILocation(line: 37, column: 10, scope: !5442)
!5462 = !DILocation(line: 2059, column: 24, scope: !5457, inlinedAt: !5461)
!5463 = !DILocation(line: 2059, column: 10, scope: !5457, inlinedAt: !5461)
!5464 = !DILocation(line: 37, column: 3, scope: !5442)
!5465 = !DILocation(line: 38, column: 1, scope: !5442)
!5466 = distinct !DISubprogram(name: "hard_locale", scope: !983, file: !983, line: 28, type: !1531, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !5467)
!5467 = !{!5468, !5469}
!5468 = !DILocalVariable(name: "category", arg: 1, scope: !5466, file: !983, line: 28, type: !122)
!5469 = !DILocalVariable(name: "locale", scope: !5466, file: !983, line: 30, type: !5470)
!5470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5471)
!5471 = !{!5472}
!5472 = !DISubrange(count: 257)
!5473 = distinct !DIAssignID()
!5474 = !DILocation(line: 0, scope: !5466)
!5475 = !DILocation(line: 30, column: 3, scope: !5466)
!5476 = !DILocation(line: 32, column: 7, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5466, file: !983, line: 32, column: 7)
!5478 = !DILocation(line: 32, column: 7, scope: !5466)
!5479 = !DILocalVariable(name: "__s1", arg: 1, scope: !5480, file: !1165, line: 1359, type: !169)
!5480 = distinct !DISubprogram(name: "streq", scope: !1165, file: !1165, line: 1359, type: !1166, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !5481)
!5481 = !{!5479, !5482}
!5482 = !DILocalVariable(name: "__s2", arg: 2, scope: !5480, file: !1165, line: 1359, type: !169)
!5483 = !DILocation(line: 0, scope: !5480, inlinedAt: !5484)
!5484 = distinct !DILocation(line: 35, column: 9, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5466, file: !983, line: 35, column: 7)
!5486 = !DILocation(line: 1361, column: 11, scope: !5480, inlinedAt: !5484)
!5487 = !DILocation(line: 35, column: 29, scope: !5485)
!5488 = !DILocation(line: 0, scope: !5480, inlinedAt: !5489)
!5489 = distinct !DILocation(line: 35, column: 32, scope: !5485)
!5490 = !DILocation(line: 1361, column: 11, scope: !5480, inlinedAt: !5489)
!5491 = !DILocation(line: 1361, column: 10, scope: !5480, inlinedAt: !5489)
!5492 = !DILocation(line: 35, column: 7, scope: !5466)
!5493 = !DILocation(line: 46, column: 3, scope: !5466)
!5494 = !DILocation(line: 47, column: 1, scope: !5466)
!5495 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1049, file: !1049, line: 154, type: !5496, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !5498)
!5496 = !DISubroutineType(types: !5497)
!5497 = !{!122, !122, !163, !166}
!5498 = !{!5499, !5500, !5501}
!5499 = !DILocalVariable(name: "category", arg: 1, scope: !5495, file: !1049, line: 154, type: !122)
!5500 = !DILocalVariable(name: "buf", arg: 2, scope: !5495, file: !1049, line: 154, type: !163)
!5501 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5495, file: !1049, line: 154, type: !166)
!5502 = !DILocation(line: 0, scope: !5495)
!5503 = !DILocation(line: 159, column: 10, scope: !5495)
!5504 = !DILocation(line: 159, column: 3, scope: !5495)
!5505 = distinct !DISubprogram(name: "setlocale_null", scope: !1049, file: !1049, line: 186, type: !5506, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !5508)
!5506 = !DISubroutineType(types: !5507)
!5507 = !{!169, !122}
!5508 = !{!5509}
!5509 = !DILocalVariable(name: "category", arg: 1, scope: !5505, file: !1049, line: 186, type: !122)
!5510 = !DILocation(line: 0, scope: !5505)
!5511 = !DILocation(line: 189, column: 10, scope: !5505)
!5512 = !DILocation(line: 189, column: 3, scope: !5505)
!5513 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1051, file: !1051, line: 35, type: !5506, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1050, retainedNodes: !5514)
!5514 = !{!5515, !5516}
!5515 = !DILocalVariable(name: "category", arg: 1, scope: !5513, file: !1051, line: 35, type: !122)
!5516 = !DILocalVariable(name: "result", scope: !5513, file: !1051, line: 37, type: !169)
!5517 = !DILocation(line: 0, scope: !5513)
!5518 = !DILocation(line: 37, column: 24, scope: !5513)
!5519 = !DILocation(line: 62, column: 3, scope: !5513)
!5520 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1051, file: !1051, line: 66, type: !5496, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1050, retainedNodes: !5521)
!5521 = !{!5522, !5523, !5524, !5525, !5526}
!5522 = !DILocalVariable(name: "category", arg: 1, scope: !5520, file: !1051, line: 66, type: !122)
!5523 = !DILocalVariable(name: "buf", arg: 2, scope: !5520, file: !1051, line: 66, type: !163)
!5524 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5520, file: !1051, line: 66, type: !166)
!5525 = !DILocalVariable(name: "result", scope: !5520, file: !1051, line: 111, type: !169)
!5526 = !DILocalVariable(name: "length", scope: !5527, file: !1051, line: 125, type: !166)
!5527 = distinct !DILexicalBlock(scope: !5528, file: !1051, line: 124, column: 5)
!5528 = distinct !DILexicalBlock(scope: !5520, file: !1051, line: 113, column: 7)
!5529 = !DILocation(line: 0, scope: !5520)
!5530 = !DILocation(line: 0, scope: !5513, inlinedAt: !5531)
!5531 = distinct !DILocation(line: 111, column: 24, scope: !5520)
!5532 = !DILocation(line: 37, column: 24, scope: !5513, inlinedAt: !5531)
!5533 = !DILocation(line: 113, column: 14, scope: !5528)
!5534 = !DILocation(line: 113, column: 7, scope: !5520)
!5535 = !DILocation(line: 116, column: 19, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5537, file: !1051, line: 116, column: 11)
!5537 = distinct !DILexicalBlock(scope: !5528, file: !1051, line: 114, column: 5)
!5538 = !DILocation(line: 116, column: 11, scope: !5537)
!5539 = !DILocation(line: 120, column: 16, scope: !5536)
!5540 = !DILocation(line: 120, column: 9, scope: !5536)
!5541 = !DILocation(line: 125, column: 23, scope: !5527)
!5542 = !DILocation(line: 0, scope: !5527)
!5543 = !DILocation(line: 126, column: 18, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5527, file: !1051, line: 126, column: 11)
!5545 = !DILocation(line: 126, column: 11, scope: !5527)
!5546 = !DILocation(line: 128, column: 39, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5544, file: !1051, line: 127, column: 9)
!5548 = !DILocalVariable(name: "__dest", arg: 1, scope: !5549, file: !1566, line: 26, type: !1569)
!5549 = distinct !DISubprogram(name: "memcpy", scope: !1566, file: !1566, line: 26, type: !1567, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1050, retainedNodes: !5550)
!5550 = !{!5548, !5551, !5552}
!5551 = !DILocalVariable(name: "__src", arg: 2, scope: !5549, file: !1566, line: 26, type: !1299)
!5552 = !DILocalVariable(name: "__len", arg: 3, scope: !5549, file: !1566, line: 26, type: !166)
!5553 = !DILocation(line: 0, scope: !5549, inlinedAt: !5554)
!5554 = distinct !DILocation(line: 128, column: 11, scope: !5547)
!5555 = !DILocation(line: 29, column: 10, scope: !5549, inlinedAt: !5554)
!5556 = !DILocation(line: 129, column: 11, scope: !5547)
!5557 = !DILocation(line: 133, column: 23, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5559, file: !1051, line: 133, column: 15)
!5559 = distinct !DILexicalBlock(scope: !5544, file: !1051, line: 132, column: 9)
!5560 = !DILocation(line: 133, column: 15, scope: !5559)
!5561 = !DILocation(line: 138, column: 44, scope: !5562)
!5562 = distinct !DILexicalBlock(scope: !5558, file: !1051, line: 134, column: 13)
!5563 = !DILocation(line: 0, scope: !5549, inlinedAt: !5564)
!5564 = distinct !DILocation(line: 138, column: 15, scope: !5562)
!5565 = !DILocation(line: 29, column: 10, scope: !5549, inlinedAt: !5564)
!5566 = !DILocation(line: 139, column: 15, scope: !5562)
!5567 = !DILocation(line: 139, column: 32, scope: !5562)
!5568 = !DILocation(line: 140, column: 13, scope: !5562)
!5569 = !DILocation(line: 0, scope: !5528)
!5570 = !DILocation(line: 145, column: 1, scope: !5520)
