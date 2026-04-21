; ModuleID = 'src/env.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !664
@.str.57 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !656
@.str.1.58 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !658
@.str.2.59 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !660
@.str.3.60 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !662
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !666
@stderr = external local_unnamed_addr global ptr, align 8
@.str.72 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !672
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !704
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !674
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !694
@.str.1.78 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !696
@.str.2.80 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !698
@.str.3.79 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !700
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !702
@.str.4.73 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !706
@.str.5.74 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !708
@.str.6.75 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !710
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !715
@.str.121 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !721
@.str.1.122 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !723
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !725
@.str.125 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !756
@.str.1.126 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !759
@.str.2.127 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !761
@.str.3.128 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !763
@.str.4.129 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !765
@.str.5.130 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !767
@.str.6.131 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !769
@.str.7.132 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !771
@.str.8.133 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !773
@.str.9.134 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !775
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.125, ptr @.str.1.126, ptr @.str.2.127, ptr @.str.3.128, ptr @.str.4.129, ptr @.str.5.130, ptr @.str.6.131, ptr @.str.7.132, ptr @.str.8.133, ptr @.str.9.134, ptr null], align 16, !dbg !777
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !788
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !802
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !840
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !847
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !804
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !849
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !792
@.str.10.137 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !809
@.str.11.135 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !811
@.str.12.138 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !813
@.str.13.136 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !815
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !817
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 16, !dbg !855
@.str.147 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1, !dbg !861
@.str.1.148 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1, !dbg !863
@.str.2.151 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1, !dbg !865
@.str.152 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !875
@.str.1.153 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !878
@.str.2.154 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !880
@.str.3.155 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !882
@.str.4.156 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !884
@.str.5.157 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !886
@.str.6.158 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !891
@.str.7.159 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !893
@.str.8.160 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !895
@.str.9.161 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !897
@.str.10.162 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !902
@.str.11.163 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !907
@.str.12.164 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !912
@.str.13.165 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !914
@.str.14.166 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !919
@.str.15.167 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !921
@.str.16.168 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !926
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.173 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !928
@.str.18.174 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !930
@.str.19.175 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !932
@.str.20.176 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !934
@.str.21.177 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !936
@.str.22.178 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !938
@.str.23.179 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !940
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !942
@exit_failure = dso_local global i32 1, align 4, !dbg !950
@.str.198 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !956
@.str.1.196 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !959
@.str.2.197 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !961
@.str.209 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !963
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !966
@.str.1.214 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !981

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1056 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1058, metadata !DIExpression()), !dbg !1059
  %2 = icmp eq i32 %0, 0, !dbg !1060
  br i1 %2, label %8, label %3, !dbg !1062

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1063, !tbaa !1065
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !1063
  %6 = load ptr, ptr @program_name, align 8, !dbg !1063, !tbaa !1065
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !1063
  br label %53, !dbg !1063

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !1069
  %10 = load ptr, ptr @program_name, align 8, !dbg !1069, !tbaa !1065
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #40, !dbg !1069
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !1071
  %13 = load ptr, ptr @stdout, align 8, !dbg !1071, !tbaa !1065
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1071
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #40, !dbg !1072
  %16 = load ptr, ptr @stdout, align 8, !dbg !1072, !tbaa !1065
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1072
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !1076
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !1076
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !1077
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !1077
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !1078
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !1078
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !1079
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1079
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !1080
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1080
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #40, !dbg !1081
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1081
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #40, !dbg !1082
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1082
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #40, !dbg !1083
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !1083
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #40, !dbg !1084
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !1084
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #40, !dbg !1085
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !1085
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #40, !dbg !1086
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !1086
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #40, !dbg !1087
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !1087
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #40, !dbg !1088
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !1088
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #40, !dbg !1089
  %32 = load ptr, ptr @stdout, align 8, !dbg !1089, !tbaa !1065
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !1089
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #40, !dbg !1090
  %35 = load ptr, ptr @stdout, align 8, !dbg !1090, !tbaa !1065
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !1090
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1091, metadata !DIExpression()), !dbg !1096
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.71, i32 noundef 5) #40, !dbg !1098
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.3) #40, !dbg !1098
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1099, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1109, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr poison, metadata !1109, metadata !DIExpression()), !dbg !1114
  tail call void @emit_bug_reporting_address() #40, !dbg !1116
  %39 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !1117
  call void @llvm.dbg.value(metadata ptr %39, metadata !1112, metadata !DIExpression()), !dbg !1114
  %40 = icmp eq ptr %39, null, !dbg !1118
  br i1 %40, label %48, label %41, !dbg !1120

41:                                               ; preds = %8
  %42 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(4) @.str.75, i64 noundef 3) #41, !dbg !1121
  %43 = icmp eq i32 %42, 0, !dbg !1121
  br i1 %43, label %48, label %44, !dbg !1122

44:                                               ; preds = %41
  %45 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.76, i32 noundef 5) #40, !dbg !1123
  %46 = load ptr, ptr @stdout, align 8, !dbg !1123, !tbaa !1065
  %47 = tail call i32 @fputs_unlocked(ptr noundef %45, ptr noundef %46), !dbg !1123
  br label %48, !dbg !1125

48:                                               ; preds = %8, %41, %44
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1109, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1113, metadata !DIExpression()), !dbg !1114
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #40, !dbg !1126
  %50 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %49, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.3) #40, !dbg !1126
  %51 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #40, !dbg !1127
  %52 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %51, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.79) #40, !dbg !1127
  br label %53

53:                                               ; preds = %48, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !1128
  unreachable, !dbg !1128
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1129 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1133 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1139 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1142 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !304 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !308, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata ptr %0, metadata !309, metadata !DIExpression()), !dbg !1146
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1147, !tbaa !1148
  %3 = icmp eq i32 %2, -1, !dbg !1150
  br i1 %3, label %4, label %16, !dbg !1151

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.44) #40, !dbg !1152
  call void @llvm.dbg.value(metadata ptr %5, metadata !310, metadata !DIExpression()), !dbg !1153
  %6 = icmp eq ptr %5, null, !dbg !1154
  br i1 %6, label %14, label %7, !dbg !1155

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1156, !tbaa !1157
  %9 = icmp eq i8 %8, 0, !dbg !1156
  br i1 %9, label %14, label %10, !dbg !1158

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1159, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata ptr @.str.45, metadata !1165, metadata !DIExpression()), !dbg !1166
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.45) #41, !dbg !1168
  %12 = icmp eq i32 %11, 0, !dbg !1169
  %13 = zext i1 %12 to i32, !dbg !1158
  br label %14, !dbg !1158

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1170, !tbaa !1148
  br label %16, !dbg !1171

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1172
  %18 = icmp eq i32 %17, 0, !dbg !1172
  br i1 %18, label %22, label %19, !dbg !1174

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1175, !tbaa !1065
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1175
  br label %128, !dbg !1177

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !313, metadata !DIExpression()), !dbg !1146
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.46) #41, !dbg !1178
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1179
  call void @llvm.dbg.value(metadata ptr %24, metadata !314, metadata !DIExpression()), !dbg !1146
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !1180
  call void @llvm.dbg.value(metadata ptr %25, metadata !315, metadata !DIExpression()), !dbg !1146
  %26 = icmp eq ptr %25, null, !dbg !1181
  br i1 %26, label %58, label %27, !dbg !1182

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1183
  br i1 %28, label %58, label %29, !dbg !1184

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !316, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.value(metadata i64 0, metadata !320, metadata !DIExpression()), !dbg !1185
  %30 = icmp ult ptr %24, %25, !dbg !1186
  br i1 %30, label %31, label %52, !dbg !1187

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !1146
  %33 = load ptr, ptr %32, align 8, !tbaa !1065
  br label %34, !dbg !1187

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !316, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.value(metadata i64 %36, metadata !320, metadata !DIExpression()), !dbg !1185
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1188
  call void @llvm.dbg.value(metadata ptr %37, metadata !316, metadata !DIExpression()), !dbg !1185
  %38 = load i8, ptr %35, align 1, !dbg !1188, !tbaa !1157
  %39 = sext i8 %38 to i64, !dbg !1188
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1188
  %41 = load i16, ptr %40, align 2, !dbg !1188, !tbaa !1189
  %42 = freeze i16 %41, !dbg !1191
  %43 = lshr i16 %42, 13, !dbg !1191
  %44 = and i16 %43, 1, !dbg !1191
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1192
  call void @llvm.dbg.value(metadata i64 %46, metadata !320, metadata !DIExpression()), !dbg !1185
  %47 = icmp ult ptr %37, %25, !dbg !1186
  %48 = icmp ult i64 %46, 2, !dbg !1193
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1193
  br i1 %49, label %34, label %50, !dbg !1187, !llvm.loop !1194

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1196
  br i1 %51, label %52, label %54, !dbg !1198

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1198

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !1198
  call void @llvm.dbg.value(metadata i8 %57, metadata !313, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata ptr %56, metadata !315, metadata !DIExpression()), !dbg !1146
  br label %58, !dbg !1199

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !1146
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !1146
  call void @llvm.dbg.value(metadata i8 %60, metadata !313, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata ptr %59, metadata !315, metadata !DIExpression()), !dbg !1146
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.47) #41, !dbg !1200
  call void @llvm.dbg.value(metadata i64 %61, metadata !321, metadata !DIExpression()), !dbg !1146
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !1201
  call void @llvm.dbg.value(metadata ptr %62, metadata !322, metadata !DIExpression()), !dbg !1146
  br label %63, !dbg !1202

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !1146
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !1146
  call void @llvm.dbg.value(metadata i8 %65, metadata !313, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata ptr %64, metadata !322, metadata !DIExpression()), !dbg !1146
  %66 = load i8, ptr %64, align 1, !dbg !1203, !tbaa !1157
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !1204

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1205
  %69 = load i8, ptr %68, align 1, !dbg !1208, !tbaa !1157
  %70 = icmp eq i8 %69, 45, !dbg !1209
  %71 = select i1 %70, i8 0, i8 %65, !dbg !1210
  br label %72, !dbg !1210

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !1146
  call void @llvm.dbg.value(metadata i8 %73, metadata !313, metadata !DIExpression()), !dbg !1146
  %74 = tail call ptr @__ctype_b_loc() #43, !dbg !1211
  %75 = load ptr, ptr %74, align 8, !dbg !1211, !tbaa !1065
  %76 = sext i8 %66 to i64, !dbg !1211
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !1211
  %78 = load i16, ptr %77, align 2, !dbg !1211, !tbaa !1189
  %79 = and i16 %78, 8192, !dbg !1211
  %80 = icmp eq i16 %79, 0, !dbg !1211
  br i1 %80, label %96, label %81, !dbg !1213

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !1214
  br i1 %82, label %98, label %83, !dbg !1217

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1218
  %85 = load i8, ptr %84, align 1, !dbg !1218, !tbaa !1157
  %86 = sext i8 %85 to i64, !dbg !1218
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !1218
  %88 = load i16, ptr %87, align 2, !dbg !1218, !tbaa !1189
  %89 = and i16 %88, 8192, !dbg !1218
  %90 = icmp eq i16 %89, 0, !dbg !1218
  br i1 %90, label %91, label %98, !dbg !1219

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !1220
  %93 = icmp ne i8 %92, 0, !dbg !1220
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1222
  br i1 %95, label %96, label %98, !dbg !1222

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1223
  call void @llvm.dbg.value(metadata ptr %97, metadata !322, metadata !DIExpression()), !dbg !1146
  br label %63, !dbg !1202, !llvm.loop !1224

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1226
  %100 = load ptr, ptr @stdout, align 8, !dbg !1226, !tbaa !1065
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1226
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1159, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1159, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1159, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1159, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1159, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1159, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1159, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1159, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1159, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1159, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !378, metadata !DIExpression()), !dbg !1146
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.61, i64 noundef 6) #41, !dbg !1247
  %103 = icmp eq i32 %102, 0, !dbg !1247
  br i1 %103, label %107, label %104, !dbg !1249

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.62, i64 noundef 9) #41, !dbg !1250
  %106 = icmp eq i32 %105, 0, !dbg !1250
  br i1 %106, label %107, label %110, !dbg !1251

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1252
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #40, !dbg !1252
  br label %113, !dbg !1254

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1255
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #40, !dbg !1255
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1257, !tbaa !1065
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.67, ptr noundef %114), !dbg !1257
  %116 = load ptr, ptr @stdout, align 8, !dbg !1258, !tbaa !1065
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.68, ptr noundef %116), !dbg !1258
  %118 = ptrtoint ptr %64 to i64, !dbg !1259
  %119 = sub i64 %118, %99, !dbg !1259
  %120 = load ptr, ptr @stdout, align 8, !dbg !1259, !tbaa !1065
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1259
  %122 = load ptr, ptr @stdout, align 8, !dbg !1260, !tbaa !1065
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.69, ptr noundef %122), !dbg !1260
  %124 = load ptr, ptr @stdout, align 8, !dbg !1261, !tbaa !1065
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.70, ptr noundef %124), !dbg !1261
  %126 = load ptr, ptr @stdout, align 8, !dbg !1262, !tbaa !1065
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1262
  br label %128, !dbg !1263

128:                                              ; preds = %113, %19
  ret void, !dbg !1263
}

; Function Attrs: nounwind
declare !dbg !1264 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1268 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1272 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1274 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1277 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1280 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1283 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1286 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1292 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1293 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !223 {
  %3 = alloca %struct.__sigset_t, align 8
  %4 = alloca %struct.sigaction, align 8
  %5 = alloca [19 x i8], align 16
  %6 = alloca %struct.__sigset_t, align 8
  %7 = alloca [19 x i8], align 16
  %8 = alloca %struct.sigaction, align 8
  %9 = alloca [19 x i8], align 16
  %10 = alloca %struct.splitbuf, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !228, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata ptr %1, metadata !229, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i8 0, metadata !230, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i8 0, metadata !232, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata ptr null, metadata !233, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata ptr null, metadata !234, metadata !DIExpression()), !dbg !1299
  %11 = load ptr, ptr %1, align 8, !dbg !1300, !tbaa !1065
  tail call void @set_program_name(ptr noundef %11) #40, !dbg !1301
  %12 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.19) #40, !dbg !1302
  %13 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #40, !dbg !1303
  %14 = tail call ptr @textdomain(ptr noundef nonnull @.str.20) #40, !dbg !1304
  call void @llvm.dbg.value(metadata i32 125, metadata !1305, metadata !DIExpression()), !dbg !1308
  store volatile i32 125, ptr @exit_failure, align 4, !dbg !1310, !tbaa !1148
  %15 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1312
  %16 = tail call noalias nonnull dereferenceable(260) ptr @xmalloc(i64 noundef 260) #44, !dbg !1313
  store ptr %16, ptr @signals, align 8, !dbg !1319, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 0, metadata !1316, metadata !DIExpression()), !dbg !1320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %16, i8 0, i64 260, i1 false), !dbg !1321, !tbaa !1157
  call void @llvm.dbg.value(metadata i64 poison, metadata !1316, metadata !DIExpression()), !dbg !1320
  %17 = getelementptr inbounds %struct.splitbuf, ptr %10, i64 0, i32 1
  %18 = getelementptr inbounds %struct.splitbuf, ptr %10, i64 0, i32 2
  %19 = getelementptr inbounds %struct.splitbuf, ptr %10, i64 0, i32 3
  %20 = getelementptr inbounds %struct.splitbuf, ptr %10, i64 0, i32 4
  br label %21, !dbg !1323

21:                                               ; preds = %29, %2
  %22 = phi i32 [ %0, %2 ], [ %30, %29 ]
  %23 = phi ptr [ %1, %2 ], [ %31, %29 ]
  %24 = phi ptr [ null, %2 ], [ %32, %29 ], !dbg !1324
  %25 = phi ptr [ null, %2 ], [ %33, %29 ], !dbg !1325
  %26 = phi i8 [ 0, %2 ], [ %34, %29 ], !dbg !1326
  %27 = phi i8 [ 0, %2 ], [ %35, %29 ], !dbg !1327
  call void @llvm.dbg.value(metadata i8 %27, metadata !230, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i8 %26, metadata !232, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata ptr %25, metadata !233, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata ptr %24, metadata !234, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i32 %22, metadata !228, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata ptr %23, metadata !229, metadata !DIExpression()), !dbg !1299
  %28 = call i32 @getopt_long(i32 noundef %22, ptr noundef %23, ptr noundef nonnull @shortopts, ptr noundef nonnull @longopts, ptr noundef null) #40, !dbg !1328
  call void @llvm.dbg.value(metadata i32 %28, metadata !235, metadata !DIExpression()), !dbg !1299
  switch i32 %28, label %394 [
    i32 -1, label %395
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
    i32 32, label %384
    i32 9, label %384
    i32 10, label %384
    i32 11, label %384
    i32 12, label %384
    i32 13, label %384
    i32 -130, label %387
    i32 -131, label %388
  ], !dbg !1323

29:                                               ; preds = %21, %375, %62, %61, %59, %57, %54, %53, %52, %47, %36
  %30 = phi i32 [ %383, %375 ], [ %22, %62 ], [ %22, %61 ], [ %22, %59 ], [ %22, %57 ], [ %22, %54 ], [ %22, %53 ], [ %22, %52 ], [ %22, %47 ], [ %22, %21 ], [ %22, %36 ]
  %31 = phi ptr [ %305, %375 ], [ %23, %62 ], [ %23, %61 ], [ %23, %59 ], [ %23, %57 ], [ %23, %54 ], [ %23, %53 ], [ %23, %52 ], [ %23, %47 ], [ %23, %21 ], [ %23, %36 ]
  %32 = phi ptr [ %24, %375 ], [ %24, %62 ], [ %24, %61 ], [ %24, %59 ], [ %24, %57 ], [ %24, %54 ], [ %24, %53 ], [ %24, %52 ], [ %24, %47 ], [ %24, %21 ], [ %37, %36 ]
  %33 = phi ptr [ %25, %375 ], [ %63, %62 ], [ %25, %61 ], [ %25, %59 ], [ %25, %57 ], [ %25, %54 ], [ %25, %53 ], [ %25, %52 ], [ %25, %47 ], [ %25, %21 ], [ %25, %36 ]
  %34 = phi i8 [ %26, %375 ], [ %26, %62 ], [ %26, %61 ], [ %26, %59 ], [ %26, %57 ], [ %26, %54 ], [ 1, %53 ], [ %26, %52 ], [ %26, %47 ], [ %26, %21 ], [ %26, %36 ]
  %35 = phi i8 [ %27, %375 ], [ %27, %62 ], [ %27, %61 ], [ %27, %59 ], [ %27, %57 ], [ %27, %54 ], [ %27, %53 ], [ %27, %52 ], [ %27, %47 ], [ 1, %21 ], [ %27, %36 ]
  br label %21, !dbg !1299, !llvm.loop !1329

36:                                               ; preds = %21
  %37 = load ptr, ptr @optarg, align 8, !dbg !1331, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %37, metadata !234, metadata !DIExpression()), !dbg !1299
  br label %29, !dbg !1334

38:                                               ; preds = %21
  %39 = load ptr, ptr @optarg, align 8, !dbg !1335, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %39, metadata !1336, metadata !DIExpression()), !dbg !1339
  %40 = load i64, ptr @usvars_used, align 8, !dbg !1341, !tbaa !1343
  %41 = load i64, ptr @usvars_alloc, align 8, !dbg !1345, !tbaa !1343
  %42 = icmp eq i64 %40, %41, !dbg !1346
  %43 = load ptr, ptr @usvars, align 8, !dbg !1339, !tbaa !1065
  br i1 %42, label %44, label %47, !dbg !1347

44:                                               ; preds = %38
  %45 = call nonnull ptr @xpalloc(ptr noundef %43, ptr noundef nonnull @usvars_alloc, i64 noundef 1, i64 noundef -1, i64 noundef 8) #40, !dbg !1348
  store ptr %45, ptr @usvars, align 8, !dbg !1349, !tbaa !1065
  %46 = load i64, ptr @usvars_used, align 8, !dbg !1350, !tbaa !1343
  br label %47, !dbg !1351

47:                                               ; preds = %38, %44
  %48 = phi i64 [ %46, %44 ], [ %40, %38 ], !dbg !1350
  %49 = phi ptr [ %45, %44 ], [ %43, %38 ], !dbg !1352
  %50 = add nsw i64 %48, 1, !dbg !1350
  store i64 %50, ptr @usvars_used, align 8, !dbg !1350, !tbaa !1343
  %51 = getelementptr inbounds ptr, ptr %49, i64 %48, !dbg !1352
  store ptr %39, ptr %51, align 8, !dbg !1353, !tbaa !1065
  br label %29, !dbg !1354

52:                                               ; preds = %21
  store i1 true, ptr @dev_debug, align 1, !dbg !1355
  br label %29, !dbg !1356

53:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i8 1, metadata !232, metadata !DIExpression()), !dbg !1299
  br label %29, !dbg !1357

54:                                               ; preds = %21
  %55 = load ptr, ptr @optarg, align 8, !dbg !1358, !tbaa !1065
  call fastcc void @parse_signal_action_params(ptr noundef %55, i1 noundef zeroext true), !dbg !1359
  %56 = load ptr, ptr @optarg, align 8, !dbg !1360, !tbaa !1065
  call fastcc void @parse_block_signal_params(ptr noundef %56, i1 noundef zeroext false), !dbg !1361
  br label %29, !dbg !1362

57:                                               ; preds = %21
  %58 = load ptr, ptr @optarg, align 8, !dbg !1363, !tbaa !1065
  call fastcc void @parse_signal_action_params(ptr noundef %58, i1 noundef zeroext false), !dbg !1364
  br label %29, !dbg !1365

59:                                               ; preds = %21
  %60 = load ptr, ptr @optarg, align 8, !dbg !1366, !tbaa !1065
  call fastcc void @parse_block_signal_params(ptr noundef %60, i1 noundef zeroext true), !dbg !1367
  br label %29, !dbg !1368

61:                                               ; preds = %21
  store i1 true, ptr @report_signal_handling, align 1, !dbg !1369
  br label %29, !dbg !1370

62:                                               ; preds = %21
  %63 = load ptr, ptr @optarg, align 8, !dbg !1371, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %63, metadata !233, metadata !DIExpression()), !dbg !1299
  br label %29, !dbg !1372

64:                                               ; preds = %21
  %65 = load ptr, ptr @optarg, align 8, !dbg !1373, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %65, metadata !1374, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata ptr @optind, metadata !1380, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata ptr undef, metadata !1381, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata ptr undef, metadata !1382, metadata !DIExpression()), !dbg !1390
  %66 = load i32, ptr @optind, align 4, !dbg !1392, !tbaa !1148
  %67 = sub nsw i32 %22, %66, !dbg !1393
  call void @llvm.dbg.value(metadata i32 %67, metadata !1383, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata ptr %65, metadata !1394, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %67, metadata !1399, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata ptr undef, metadata !1400, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i8 0, metadata !1401, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i8 0, metadata !1402, metadata !DIExpression()), !dbg !1418
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #40, !dbg !1420
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1403, metadata !DIExpression()), !dbg !1421
  %68 = add nsw i32 %67, 2, !dbg !1422
  %69 = sext i32 %68 to i64, !dbg !1423
  %70 = call noalias nonnull ptr @xnmalloc(i64 noundef %69, i64 noundef 16) #45, !dbg !1424
  store ptr %70, ptr %10, align 8, !dbg !1425, !tbaa !1426
  store i32 1, ptr %17, align 8, !dbg !1429, !tbaa !1430
  store i64 %69, ptr %18, align 8, !dbg !1431, !tbaa !1432
  store i32 %67, ptr %19, align 8, !dbg !1433, !tbaa !1434
  store i8 1, ptr %20, align 4, !dbg !1435, !tbaa !1436
  %71 = getelementptr inbounds ptr, ptr %70, i64 1, !dbg !1437
  store ptr null, ptr %71, align 8, !dbg !1438, !tbaa !1065
  call void @llvm.dbg.value(metadata i8 0, metadata !1402, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i8 0, metadata !1401, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata ptr %65, metadata !1394, metadata !DIExpression()), !dbg !1418
  %72 = load i8, ptr %65, align 1, !dbg !1439, !tbaa !1157
  %73 = icmp eq i8 %72, 0, !dbg !1440
  br i1 %73, label %267, label %74, !dbg !1440

74:                                               ; preds = %64, %261
  %75 = phi i8 [ %265, %261 ], [ %72, %64 ]
  %76 = phi i8 [ %264, %261 ], [ 0, %64 ]
  %77 = phi i8 [ %263, %261 ], [ 0, %64 ]
  %78 = phi ptr [ %262, %261 ], [ %65, %64 ]
  call void @llvm.dbg.value(metadata i8 %76, metadata !1402, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i8 %77, metadata !1401, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata ptr %78, metadata !1394, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i8 %75, metadata !1411, metadata !DIExpression()), !dbg !1441
  %79 = sext i8 %75 to i32, !dbg !1442
  switch i32 %79, label %230 [
    i32 39, label %80
    i32 34, label %87
    i32 32, label %94
    i32 9, label %94
    i32 10, label %94
    i32 11, label %94
    i32 12, label %94
    i32 13, label %94
    i32 35, label %103
    i32 92, label %106
    i32 36, label %134
  ], !dbg !1443

80:                                               ; preds = %74
  %81 = and i8 %77, 1, !dbg !1444
  %82 = icmp eq i8 %81, 0, !dbg !1444
  br i1 %82, label %83, label %230, !dbg !1446

83:                                               ; preds = %80
  %84 = and i8 %76, 1, !dbg !1447
  %85 = xor i8 %84, 1, !dbg !1448
  call void @llvm.dbg.value(metadata i8 %85, metadata !1402, metadata !DIExpression()), !dbg !1418
  call fastcc void @check_start_new_arg(ptr noundef nonnull %10), !dbg !1449
  %86 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1450
  call void @llvm.dbg.value(metadata ptr %86, metadata !1394, metadata !DIExpression()), !dbg !1418
  br label %261, !dbg !1451, !llvm.loop !1452

87:                                               ; preds = %74
  %88 = and i8 %76, 1, !dbg !1454
  %89 = icmp eq i8 %88, 0, !dbg !1454
  br i1 %89, label %90, label %230, !dbg !1456

90:                                               ; preds = %87
  %91 = and i8 %77, 1, !dbg !1457
  %92 = xor i8 %91, 1, !dbg !1458
  call void @llvm.dbg.value(metadata i8 %92, metadata !1401, metadata !DIExpression()), !dbg !1418
  call fastcc void @check_start_new_arg(ptr noundef nonnull %10), !dbg !1459
  %93 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1460
  call void @llvm.dbg.value(metadata ptr %93, metadata !1394, metadata !DIExpression()), !dbg !1418
  br label %261, !dbg !1461, !llvm.loop !1462

94:                                               ; preds = %74, %74, %74, %74, %74, %74
  %95 = and i8 %76, 1, !dbg !1463
  %96 = icmp eq i8 %95, 0, !dbg !1463
  %97 = and i8 %77, 1
  %98 = icmp eq i8 %97, 0
  %99 = select i1 %96, i1 %98, i1 false, !dbg !1465
  br i1 %99, label %100, label %230, !dbg !1465

100:                                              ; preds = %94
  store i8 1, ptr %20, align 4, !dbg !1466, !tbaa !1436
  %101 = call i64 @strspn(ptr noundef nonnull %78, ptr noundef nonnull @.str.42) #41, !dbg !1467
  %102 = getelementptr inbounds i8, ptr %78, i64 %101, !dbg !1468
  call void @llvm.dbg.value(metadata ptr %102, metadata !1394, metadata !DIExpression()), !dbg !1418
  br label %261, !dbg !1469, !llvm.loop !1470

103:                                              ; preds = %74
  %104 = load i8, ptr %20, align 4, !dbg !1471, !tbaa !1436, !range !1473, !noundef !1074
  %105 = icmp eq i8 %104, 0, !dbg !1471
  br i1 %105, label %230, label %277, !dbg !1474

106:                                              ; preds = %74
  %107 = and i8 %76, 1, !dbg !1475
  %108 = icmp eq i8 %107, 0, !dbg !1475
  %109 = getelementptr inbounds i8, ptr %78, i64 1
  %110 = load i8, ptr %109, align 1, !dbg !1477, !tbaa !1157
  br i1 %108, label %112, label %111, !dbg !1478

111:                                              ; preds = %106
  switch i8 %110, label %230 [
    i8 92, label %112
    i8 39, label %112
  ], !dbg !1479

112:                                              ; preds = %111, %111, %106
  call void @llvm.dbg.value(metadata ptr %109, metadata !1394, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i8 %110, metadata !1411, metadata !DIExpression()), !dbg !1441
  %113 = sext i8 %110 to i32, !dbg !1480
  switch i32 %113, label %131 [
    i32 34, label %230
    i32 35, label %230
    i32 36, label %230
    i32 39, label %230
    i32 92, label %230
    i32 95, label %114
    i32 99, label %119
    i32 102, label %124
    i32 110, label %125
    i32 114, label %126
    i32 116, label %127
    i32 118, label %128
    i32 0, label %129
  ], !dbg !1481

114:                                              ; preds = %112
  %115 = and i8 %77, 1, !dbg !1482
  %116 = icmp eq i8 %115, 0, !dbg !1482
  br i1 %116, label %117, label %230, !dbg !1485

117:                                              ; preds = %114
  %118 = getelementptr inbounds i8, ptr %78, i64 2, !dbg !1486
  call void @llvm.dbg.value(metadata ptr %118, metadata !1394, metadata !DIExpression()), !dbg !1418
  store i8 1, ptr %20, align 4, !dbg !1488, !tbaa !1436
  br label %261, !dbg !1489, !llvm.loop !1490

119:                                              ; preds = %112
  %120 = and i8 %77, 1, !dbg !1491
  %121 = icmp eq i8 %120, 0, !dbg !1491
  br i1 %121, label %277, label %122, !dbg !1493

122:                                              ; preds = %119
  %123 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.99, i32 noundef 5) #40, !dbg !1494
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %123) #40, !dbg !1494
  unreachable, !dbg !1494

124:                                              ; preds = %112
  call void @llvm.dbg.value(metadata i8 12, metadata !1411, metadata !DIExpression()), !dbg !1441
  br label %230, !dbg !1495

125:                                              ; preds = %112
  call void @llvm.dbg.value(metadata i8 10, metadata !1411, metadata !DIExpression()), !dbg !1441
  br label %230, !dbg !1496

126:                                              ; preds = %112
  call void @llvm.dbg.value(metadata i8 13, metadata !1411, metadata !DIExpression()), !dbg !1441
  br label %230, !dbg !1497

127:                                              ; preds = %112
  call void @llvm.dbg.value(metadata i8 9, metadata !1411, metadata !DIExpression()), !dbg !1441
  br label %230, !dbg !1498

128:                                              ; preds = %112
  call void @llvm.dbg.value(metadata i8 11, metadata !1411, metadata !DIExpression()), !dbg !1441
  br label %230, !dbg !1499

129:                                              ; preds = %112
  %130 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.100, i32 noundef 5) #40, !dbg !1500
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %130) #40, !dbg !1500
  unreachable, !dbg !1500

131:                                              ; preds = %112
  %132 = sext i8 %110 to i32, !dbg !1480
  %133 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.101, i32 noundef 5) #40, !dbg !1501
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %133, i32 noundef %132) #40, !dbg !1501
  unreachable, !dbg !1501

134:                                              ; preds = %74
  %135 = and i8 %76, 1, !dbg !1502
  %136 = icmp eq i8 %135, 0, !dbg !1502
  br i1 %136, label %137, label %230, !dbg !1504

137:                                              ; preds = %134
  call void @llvm.dbg.value(metadata ptr %78, metadata !1505, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata ptr %78, metadata !1512, metadata !DIExpression()), !dbg !1520
  %138 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1522
  %139 = load i8, ptr %138, align 1, !dbg !1522, !tbaa !1157
  %140 = icmp eq i8 %139, 123, !dbg !1523
  br i1 %140, label %141, label %171, !dbg !1524

141:                                              ; preds = %137
  %142 = getelementptr inbounds i8, ptr %78, i64 2, !dbg !1525
  %143 = load i8, ptr %142, align 1, !dbg !1525, !tbaa !1157
  %144 = sext i8 %143 to i32, !dbg !1525
  call void @llvm.dbg.value(metadata i32 %144, metadata !1526, metadata !DIExpression()), !dbg !1532
  switch i32 %144, label %145 [
    i32 97, label %147
    i32 98, label %147
    i32 99, label %147
    i32 100, label %147
    i32 101, label %147
    i32 102, label %147
    i32 103, label %147
    i32 104, label %147
    i32 105, label %147
    i32 106, label %147
    i32 107, label %147
    i32 108, label %147
    i32 109, label %147
    i32 110, label %147
    i32 111, label %147
    i32 112, label %147
    i32 113, label %147
    i32 114, label %147
    i32 115, label %147
    i32 116, label %147
    i32 117, label %147
    i32 118, label %147
    i32 119, label %147
    i32 120, label %147
    i32 121, label %147
    i32 122, label %147
    i32 65, label %147
    i32 66, label %147
    i32 67, label %147
    i32 68, label %147
    i32 69, label %147
    i32 70, label %147
    i32 71, label %147
    i32 72, label %147
    i32 73, label %147
    i32 74, label %147
    i32 75, label %147
    i32 76, label %147
    i32 77, label %147
    i32 78, label %147
    i32 79, label %147
    i32 80, label %147
    i32 81, label %147
    i32 82, label %147
    i32 83, label %147
    i32 84, label %147
    i32 85, label %147
    i32 86, label %147
    i32 87, label %147
    i32 88, label %147
    i32 89, label %147
    i32 90, label %147
  ], !dbg !1534

145:                                              ; preds = %141
  %146 = icmp eq i8 %143, 95, !dbg !1535
  br i1 %146, label %147, label %171, !dbg !1536

147:                                              ; preds = %145, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141, %141
  %148 = getelementptr inbounds i8, ptr %78, i64 3, !dbg !1537
  call void @llvm.dbg.value(metadata ptr %148, metadata !1517, metadata !DIExpression()), !dbg !1538
  br label %149, !dbg !1539

149:                                              ; preds = %156, %147
  %150 = phi ptr [ %148, %147 ], [ %157, %156 ], !dbg !1538
  call void @llvm.dbg.value(metadata ptr %150, metadata !1517, metadata !DIExpression()), !dbg !1538
  %151 = load i8, ptr %150, align 1, !dbg !1540, !tbaa !1157
  %152 = sext i8 %151 to i32, !dbg !1540
  %153 = call zeroext i1 @c_isalnum(i32 noundef %152), !dbg !1541
  br i1 %153, label %156, label %154, !dbg !1542

154:                                              ; preds = %149
  %155 = load i8, ptr %150, align 1, !dbg !1543, !tbaa !1157
  switch i8 %155, label %171 [
    i8 95, label %156
    i8 125, label %158
  ], !dbg !1539

156:                                              ; preds = %154, %149
  %157 = getelementptr inbounds i8, ptr %150, i64 1, !dbg !1544
  call void @llvm.dbg.value(metadata ptr %157, metadata !1517, metadata !DIExpression()), !dbg !1538
  br label %149, !dbg !1539, !llvm.loop !1545

158:                                              ; preds = %154
  call void @llvm.dbg.value(metadata ptr %150, metadata !1508, metadata !DIExpression()), !dbg !1510
  %159 = ptrtoint ptr %150 to i64, !dbg !1547
  %160 = ptrtoint ptr %78 to i64, !dbg !1547
  %161 = sub i64 %159, %160, !dbg !1547
  %162 = add nsw i64 %161, -2, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %162, metadata !1509, metadata !DIExpression()), !dbg !1510
  %163 = load i64, ptr @vnlen, align 8, !dbg !1549, !tbaa !1343
  %164 = icmp slt i64 %162, %163, !dbg !1551
  %165 = load ptr, ptr @varname, align 8, !dbg !1510, !tbaa !1065
  br i1 %164, label %173, label %166, !dbg !1552

166:                                              ; preds = %158
  call void @free(ptr noundef %165) #40, !dbg !1553
  %167 = load i64, ptr @vnlen, align 8, !dbg !1555, !tbaa !1343
  %168 = xor i64 %167, -1, !dbg !1556
  %169 = add i64 %161, %168, !dbg !1556
  %170 = call nonnull ptr @xpalloc(ptr noundef null, ptr noundef nonnull @vnlen, i64 noundef %169, i64 noundef -1, i64 noundef 1) #40, !dbg !1557
  store ptr %170, ptr @varname, align 8, !dbg !1558, !tbaa !1065
  br label %173, !dbg !1559

171:                                              ; preds = %145, %137, %154
  call void @llvm.dbg.value(metadata ptr null, metadata !1413, metadata !DIExpression()), !dbg !1560
  %172 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.102, i32 noundef 5) #40, !dbg !1561
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %172, ptr noundef nonnull %78) #40, !dbg !1561
  unreachable, !dbg !1561

173:                                              ; preds = %166, %158
  %174 = phi ptr [ %170, %166 ], [ %165, %158 ], !dbg !1563
  call void @llvm.dbg.value(metadata ptr %174, metadata !1564, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata ptr %142, metadata !1571, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i64 %162, metadata !1572, metadata !DIExpression()), !dbg !1573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %174, ptr noundef nonnull align 1 %142, i64 noundef %162, i1 noundef false) #40, !dbg !1575
  %175 = getelementptr inbounds i8, ptr %174, i64 %162, !dbg !1576
  store i8 0, ptr %175, align 1, !dbg !1577, !tbaa !1157
  call void @llvm.dbg.value(metadata ptr %174, metadata !1413, metadata !DIExpression()), !dbg !1560
  %176 = call ptr @getenv(ptr noundef nonnull %174) #40, !dbg !1578
  call void @llvm.dbg.value(metadata ptr %176, metadata !1416, metadata !DIExpression()), !dbg !1560
  %177 = icmp eq ptr %176, null, !dbg !1579
  br i1 %177, label %222, label %178, !dbg !1581

178:                                              ; preds = %173
  call fastcc void @check_start_new_arg(ptr noundef nonnull %10), !dbg !1582
  %179 = load i1, ptr @dev_debug, align 1, !dbg !1584
  br i1 %179, label %180, label %184, !dbg !1587

180:                                              ; preds = %178
  %181 = load ptr, ptr @stderr, align 8, !dbg !1584, !tbaa !1065
  %182 = call ptr @quote(ptr noundef nonnull %176) #40, !dbg !1584
  %183 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %181, i32 noundef 1, ptr noundef nonnull @.str.103, ptr noundef nonnull %174, ptr noundef %182) #40, !dbg !1584
  br label %184, !dbg !1584

184:                                              ; preds = %180, %178
  call void @llvm.dbg.value(metadata ptr %176, metadata !1416, metadata !DIExpression()), !dbg !1560
  %185 = load i8, ptr %176, align 1, !dbg !1588, !tbaa !1157
  %186 = icmp eq i8 %185, 0, !dbg !1591
  br i1 %186, label %227, label %187, !dbg !1591

187:                                              ; preds = %184
  %188 = load i32, ptr %17, align 8, !dbg !1592, !tbaa !1430
  br label %189, !dbg !1591

189:                                              ; preds = %208, %187
  %190 = phi i32 [ %216, %208 ], [ %188, %187 ], !dbg !1592
  %191 = phi i8 [ %220, %208 ], [ %185, %187 ]
  %192 = phi ptr [ %219, %208 ], [ %176, %187 ]
  call void @llvm.dbg.value(metadata ptr %192, metadata !1416, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata ptr %10, metadata !1598, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %191, metadata !1599, metadata !DIExpression()), !dbg !1602
  %193 = load ptr, ptr %10, align 8, !dbg !1603, !tbaa !1426
  %194 = sext i32 %190 to i64, !dbg !1604
  %195 = getelementptr inbounds ptr, ptr %193, i64 %194, !dbg !1604
  %196 = load ptr, ptr %195, align 8, !dbg !1604, !tbaa !1065
  %197 = ptrtoint ptr %196 to i64, !dbg !1605
  call void @llvm.dbg.value(metadata i64 %197, metadata !1600, metadata !DIExpression()), !dbg !1602
  %198 = load i64, ptr %18, align 8, !dbg !1606, !tbaa !1432
  %199 = shl i64 %198, 3, !dbg !1608
  %200 = icmp ugt i64 %199, %197, !dbg !1609
  br i1 %200, label %208, label %201, !dbg !1610

201:                                              ; preds = %189
  call void @llvm.dbg.value(metadata ptr %10, metadata !1611, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i64 %198, metadata !1616, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i64 %197, metadata !1617, metadata !DIExpression()), !dbg !1618
  %202 = call nonnull ptr @xpalloc(ptr noundef nonnull %193, ptr noundef nonnull %18, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !1620
  store ptr %202, ptr %10, align 8, !dbg !1621, !tbaa !1426
  %203 = load i64, ptr %18, align 8, !dbg !1622, !tbaa !1432
  %204 = getelementptr inbounds ptr, ptr %202, i64 %203, !dbg !1623
  %205 = getelementptr inbounds ptr, ptr %202, i64 %198, !dbg !1624
  call void @llvm.dbg.value(metadata ptr %204, metadata !1625, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata ptr %205, metadata !1630, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i64 %197, metadata !1631, metadata !DIExpression()), !dbg !1632
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %204, ptr noundef nonnull align 1 %205, i64 noundef %197, i1 noundef false) #40, !dbg !1634
  %206 = load ptr, ptr %10, align 8, !dbg !1635, !tbaa !1426
  %207 = load i64, ptr %18, align 8, !dbg !1636, !tbaa !1432
  br label %208, !dbg !1637

208:                                              ; preds = %201, %189
  %209 = phi i64 [ %207, %201 ], [ %198, %189 ], !dbg !1636
  %210 = phi ptr [ %206, %201 ], [ %193, %189 ], !dbg !1635
  %211 = getelementptr inbounds ptr, ptr %210, i64 %209, !dbg !1638
  %212 = getelementptr inbounds i8, ptr %211, i64 %197, !dbg !1639
  store i8 %191, ptr %212, align 1, !dbg !1640, !tbaa !1157
  %213 = add nsw i64 %197, 1, !dbg !1641
  %214 = inttoptr i64 %213 to ptr, !dbg !1642
  %215 = load ptr, ptr %10, align 8, !dbg !1643, !tbaa !1426
  %216 = load i32, ptr %17, align 8, !dbg !1644, !tbaa !1430
  %217 = sext i32 %216 to i64, !dbg !1645
  %218 = getelementptr inbounds ptr, ptr %215, i64 %217, !dbg !1645
  store ptr %214, ptr %218, align 8, !dbg !1646, !tbaa !1065
  %219 = getelementptr inbounds i8, ptr %192, i64 1, !dbg !1647
  call void @llvm.dbg.value(metadata ptr %219, metadata !1416, metadata !DIExpression()), !dbg !1560
  %220 = load i8, ptr %219, align 1, !dbg !1588, !tbaa !1157
  %221 = icmp eq i8 %220, 0, !dbg !1591
  br i1 %221, label %227, label %189, !dbg !1591, !llvm.loop !1648

222:                                              ; preds = %173
  %223 = load i1, ptr @dev_debug, align 1, !dbg !1650
  br i1 %223, label %224, label %227, !dbg !1653

224:                                              ; preds = %222
  %225 = load ptr, ptr @stderr, align 8, !dbg !1650, !tbaa !1065
  %226 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %225, i32 noundef 1, ptr noundef nonnull @.str.104, ptr noundef nonnull %174) #40, !dbg !1650
  br label %227, !dbg !1650

227:                                              ; preds = %208, %224, %222, %184
  %228 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %78, i32 noundef 125) #41, !dbg !1654
  %229 = getelementptr inbounds i8, ptr %228, i64 1, !dbg !1655
  call void @llvm.dbg.value(metadata ptr %229, metadata !1394, metadata !DIExpression()), !dbg !1418
  br label %261

230:                                              ; preds = %134, %128, %127, %126, %125, %124, %114, %112, %112, %112, %112, %112, %111, %103, %94, %87, %80, %74
  %231 = phi ptr [ %78, %74 ], [ %78, %134 ], [ %109, %128 ], [ %109, %127 ], [ %109, %126 ], [ %109, %125 ], [ %109, %124 ], [ %109, %112 ], [ %109, %112 ], [ %109, %112 ], [ %109, %112 ], [ %109, %112 ], [ %78, %103 ], [ %78, %94 ], [ %78, %87 ], [ %78, %80 ], [ %78, %111 ], [ %109, %114 ]
  %232 = phi i8 [ %75, %74 ], [ %75, %134 ], [ 11, %128 ], [ 9, %127 ], [ 13, %126 ], [ 10, %125 ], [ 12, %124 ], [ %110, %112 ], [ %110, %112 ], [ %110, %112 ], [ %110, %112 ], [ %110, %112 ], [ %75, %103 ], [ %75, %94 ], [ %75, %87 ], [ %75, %80 ], [ %75, %111 ], [ 32, %114 ], !dbg !1441
  call void @llvm.dbg.value(metadata i8 %232, metadata !1411, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata ptr %231, metadata !1394, metadata !DIExpression()), !dbg !1418
  call fastcc void @check_start_new_arg(ptr noundef nonnull %10), !dbg !1656
  call void @llvm.dbg.value(metadata ptr %10, metadata !1598, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 %232, metadata !1599, metadata !DIExpression()), !dbg !1657
  %233 = load ptr, ptr %10, align 8, !dbg !1659, !tbaa !1426
  %234 = load i32, ptr %17, align 8, !dbg !1660, !tbaa !1430
  %235 = sext i32 %234 to i64, !dbg !1661
  %236 = getelementptr inbounds ptr, ptr %233, i64 %235, !dbg !1661
  %237 = load ptr, ptr %236, align 8, !dbg !1661, !tbaa !1065
  %238 = ptrtoint ptr %237 to i64, !dbg !1662
  call void @llvm.dbg.value(metadata i64 %238, metadata !1600, metadata !DIExpression()), !dbg !1657
  %239 = load i64, ptr %18, align 8, !dbg !1663, !tbaa !1432
  %240 = shl i64 %239, 3, !dbg !1664
  %241 = icmp ugt i64 %240, %238, !dbg !1665
  br i1 %241, label %249, label %242, !dbg !1666

242:                                              ; preds = %230
  call void @llvm.dbg.value(metadata ptr %10, metadata !1611, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i64 %239, metadata !1616, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i64 %238, metadata !1617, metadata !DIExpression()), !dbg !1667
  %243 = call nonnull ptr @xpalloc(ptr noundef nonnull %233, ptr noundef nonnull %18, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !1669
  store ptr %243, ptr %10, align 8, !dbg !1670, !tbaa !1426
  %244 = load i64, ptr %18, align 8, !dbg !1671, !tbaa !1432
  %245 = getelementptr inbounds ptr, ptr %243, i64 %244, !dbg !1672
  %246 = getelementptr inbounds ptr, ptr %243, i64 %239, !dbg !1673
  call void @llvm.dbg.value(metadata ptr %245, metadata !1625, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata ptr %246, metadata !1630, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i64 %238, metadata !1631, metadata !DIExpression()), !dbg !1674
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %245, ptr noundef nonnull align 1 %246, i64 noundef %238, i1 noundef false) #40, !dbg !1676
  %247 = load ptr, ptr %10, align 8, !dbg !1677, !tbaa !1426
  %248 = load i64, ptr %18, align 8, !dbg !1678, !tbaa !1432
  br label %249, !dbg !1679

249:                                              ; preds = %242, %230
  %250 = phi i64 [ %248, %242 ], [ %239, %230 ], !dbg !1678
  %251 = phi ptr [ %247, %242 ], [ %233, %230 ], !dbg !1677
  %252 = getelementptr inbounds ptr, ptr %251, i64 %250, !dbg !1680
  %253 = getelementptr inbounds i8, ptr %252, i64 %238, !dbg !1681
  store i8 %232, ptr %253, align 1, !dbg !1682, !tbaa !1157
  %254 = add nsw i64 %238, 1, !dbg !1683
  %255 = inttoptr i64 %254 to ptr, !dbg !1684
  %256 = load ptr, ptr %10, align 8, !dbg !1685, !tbaa !1426
  %257 = load i32, ptr %17, align 8, !dbg !1686, !tbaa !1430
  %258 = sext i32 %257 to i64, !dbg !1687
  %259 = getelementptr inbounds ptr, ptr %256, i64 %258, !dbg !1687
  store ptr %255, ptr %259, align 8, !dbg !1688, !tbaa !1065
  %260 = getelementptr inbounds i8, ptr %231, i64 1, !dbg !1689
  call void @llvm.dbg.value(metadata ptr %260, metadata !1394, metadata !DIExpression()), !dbg !1418
  br label %261, !dbg !1453

261:                                              ; preds = %249, %227, %117, %100, %90, %83
  %262 = phi ptr [ %260, %249 ], [ %229, %227 ], [ %118, %117 ], [ %102, %100 ], [ %93, %90 ], [ %86, %83 ]
  %263 = phi i8 [ %77, %249 ], [ %77, %227 ], [ %77, %117 ], [ %77, %100 ], [ %92, %90 ], [ %77, %83 ], !dbg !1418
  %264 = phi i8 [ %76, %249 ], [ %76, %227 ], [ %76, %117 ], [ %76, %100 ], [ %76, %90 ], [ %85, %83 ], !dbg !1418
  call void @llvm.dbg.value(metadata i8 %264, metadata !1402, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i8 %263, metadata !1401, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata ptr %262, metadata !1394, metadata !DIExpression()), !dbg !1418
  %265 = load i8, ptr %262, align 1, !dbg !1439, !tbaa !1157
  %266 = icmp eq i8 %265, 0, !dbg !1440
  br i1 %266, label %267, label %74, !dbg !1440

267:                                              ; preds = %261, %64
  %268 = phi i8 [ 0, %64 ], [ %263, %261 ], !dbg !1690
  %269 = phi i8 [ 0, %64 ], [ %264, %261 ], !dbg !1691
  %270 = and i8 %268, 1, !dbg !1692
  %271 = icmp eq i8 %270, 0, !dbg !1692
  %272 = and i8 %269, 1
  %273 = icmp eq i8 %272, 0
  %274 = select i1 %271, i1 %273, i1 false, !dbg !1694
  br i1 %274, label %277, label %275, !dbg !1694

275:                                              ; preds = %267
  %276 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.105, i32 noundef 5) #40, !dbg !1695
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %276) #40, !dbg !1695
  unreachable, !dbg !1695

277:                                              ; preds = %103, %267, %119
  call void @llvm.dbg.label(metadata !1417), !dbg !1696
  call void @llvm.dbg.value(metadata ptr %10, metadata !1598, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8 0, metadata !1599, metadata !DIExpression()), !dbg !1697
  %278 = load ptr, ptr %10, align 8, !dbg !1699, !tbaa !1426
  %279 = load i32, ptr %17, align 8, !dbg !1700, !tbaa !1430
  %280 = sext i32 %279 to i64, !dbg !1701
  %281 = getelementptr inbounds ptr, ptr %278, i64 %280, !dbg !1701
  %282 = load ptr, ptr %281, align 8, !dbg !1701, !tbaa !1065
  %283 = ptrtoint ptr %282 to i64, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %283, metadata !1600, metadata !DIExpression()), !dbg !1697
  %284 = load i64, ptr %18, align 8, !dbg !1703, !tbaa !1432
  %285 = shl i64 %284, 3, !dbg !1704
  %286 = icmp ugt i64 %285, %283, !dbg !1705
  br i1 %286, label %294, label %287, !dbg !1706

287:                                              ; preds = %277
  call void @llvm.dbg.value(metadata ptr %10, metadata !1611, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %284, metadata !1616, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %283, metadata !1617, metadata !DIExpression()), !dbg !1707
  %288 = call nonnull ptr @xpalloc(ptr noundef nonnull %278, ptr noundef nonnull %18, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !1709
  store ptr %288, ptr %10, align 8, !dbg !1710, !tbaa !1426
  %289 = load i64, ptr %18, align 8, !dbg !1711, !tbaa !1432
  %290 = getelementptr inbounds ptr, ptr %288, i64 %289, !dbg !1712
  %291 = getelementptr inbounds ptr, ptr %288, i64 %284, !dbg !1713
  call void @llvm.dbg.value(metadata ptr %290, metadata !1625, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata ptr %291, metadata !1630, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %283, metadata !1631, metadata !DIExpression()), !dbg !1714
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %290, ptr noundef nonnull align 1 %291, i64 noundef %283, i1 noundef false) #40, !dbg !1716
  %292 = load ptr, ptr %10, align 8, !dbg !1717, !tbaa !1426
  %293 = load i64, ptr %18, align 8, !dbg !1718, !tbaa !1432
  br label %294, !dbg !1719

294:                                              ; preds = %287, %277
  %295 = phi i64 [ %293, %287 ], [ %284, %277 ], !dbg !1718
  %296 = phi ptr [ %292, %287 ], [ %278, %277 ], !dbg !1717
  %297 = getelementptr inbounds ptr, ptr %296, i64 %295, !dbg !1720
  %298 = getelementptr inbounds i8, ptr %297, i64 %283, !dbg !1721
  store i8 0, ptr %298, align 1, !dbg !1722, !tbaa !1157
  %299 = add nsw i64 %283, 1, !dbg !1723
  %300 = inttoptr i64 %299 to ptr, !dbg !1724
  %301 = load ptr, ptr %10, align 8, !dbg !1725, !tbaa !1426
  %302 = load i32, ptr %17, align 8, !dbg !1726, !tbaa !1430
  %303 = sext i32 %302 to i64, !dbg !1727
  %304 = getelementptr inbounds ptr, ptr %301, i64 %303, !dbg !1727
  store ptr %300, ptr %304, align 8, !dbg !1728, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %10, metadata !1729, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i32 %302, metadata !1734, metadata !DIExpression()), !dbg !1739
  %305 = load ptr, ptr %10, align 8, !dbg !1741, !tbaa !1426
  call void @llvm.dbg.value(metadata ptr %305, metadata !1735, metadata !DIExpression()), !dbg !1739
  %306 = load i64, ptr %18, align 8, !dbg !1742, !tbaa !1432
  %307 = getelementptr inbounds ptr, ptr %305, i64 %306, !dbg !1743
  call void @llvm.dbg.value(metadata ptr %307, metadata !1736, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i32 1, metadata !1737, metadata !DIExpression()), !dbg !1744
  %308 = icmp sgt i32 %302, 1, !dbg !1745
  br i1 %308, label %311, label %309, !dbg !1747

309:                                              ; preds = %294
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #40, !dbg !1748
  call void @llvm.dbg.value(metadata ptr %305, metadata !1385, metadata !DIExpression()), !dbg !1390
  %310 = load ptr, ptr %23, align 8, !dbg !1749, !tbaa !1065
  store ptr %310, ptr %305, align 8, !dbg !1750, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %302, metadata !1384, metadata !DIExpression()), !dbg !1390
  br label %375, !dbg !1751

311:                                              ; preds = %294
  %312 = zext i32 %302 to i64, !dbg !1745
  %313 = add nsw i64 %312, -1, !dbg !1747
  %314 = icmp ult i32 %302, 5, !dbg !1747
  br i1 %314, label %333, label %315, !dbg !1747

315:                                              ; preds = %311
  %316 = and i64 %313, -4, !dbg !1747
  %317 = or i64 %316, 1, !dbg !1747
  br label %318, !dbg !1747

318:                                              ; preds = %318, %315
  %319 = phi i64 [ 0, %315 ], [ %329, %318 ]
  %320 = or i64 %319, 1, !dbg !1747
  %321 = getelementptr inbounds ptr, ptr %305, i64 %320, !dbg !1752
  %322 = load <2 x ptr>, ptr %321, align 8, !dbg !1752, !tbaa !1065
  %323 = getelementptr inbounds ptr, ptr %321, i64 2, !dbg !1752
  %324 = load <2 x ptr>, ptr %323, align 8, !dbg !1752, !tbaa !1065
  %325 = ptrtoint <2 x ptr> %322 to <2 x i64>, !dbg !1753
  %326 = ptrtoint <2 x ptr> %324 to <2 x i64>, !dbg !1753
  %327 = getelementptr inbounds i8, ptr %307, <2 x i64> %325, !dbg !1753
  %328 = getelementptr inbounds i8, ptr %307, <2 x i64> %326, !dbg !1753
  store <2 x ptr> %327, ptr %321, align 8, !dbg !1754, !tbaa !1065
  store <2 x ptr> %328, ptr %323, align 8, !dbg !1754, !tbaa !1065
  %329 = add nuw i64 %319, 4
  %330 = icmp eq i64 %329, %316
  br i1 %330, label %331, label %318, !llvm.loop !1755

331:                                              ; preds = %318
  %332 = icmp eq i64 %313, %316, !dbg !1747
  br i1 %332, label %343, label %333, !dbg !1747

333:                                              ; preds = %311, %331
  %334 = phi i64 [ 1, %311 ], [ %317, %331 ]
  br label %335, !dbg !1747

335:                                              ; preds = %333, %335
  %336 = phi i64 [ %341, %335 ], [ %334, %333 ]
  call void @llvm.dbg.value(metadata i64 %336, metadata !1737, metadata !DIExpression()), !dbg !1744
  %337 = getelementptr inbounds ptr, ptr %305, i64 %336, !dbg !1752
  %338 = load ptr, ptr %337, align 8, !dbg !1752, !tbaa !1065
  %339 = ptrtoint ptr %338 to i64, !dbg !1753
  %340 = getelementptr inbounds i8, ptr %307, i64 %339, !dbg !1759
  store ptr %340, ptr %337, align 8, !dbg !1754, !tbaa !1065
  %341 = add nuw nsw i64 %336, 1, !dbg !1760
  call void @llvm.dbg.value(metadata i64 %341, metadata !1737, metadata !DIExpression()), !dbg !1744
  %342 = icmp eq i64 %341, %312, !dbg !1745
  br i1 %342, label %343, label %335, !dbg !1747, !llvm.loop !1761

343:                                              ; preds = %335, %331
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #40, !dbg !1748
  call void @llvm.dbg.value(metadata ptr %305, metadata !1385, metadata !DIExpression()), !dbg !1390
  %344 = load ptr, ptr %23, align 8, !dbg !1749, !tbaa !1065
  store ptr %344, ptr %305, align 8, !dbg !1750, !tbaa !1065
  %345 = load i1, ptr @dev_debug, align 1, !dbg !1762
  call void @llvm.dbg.value(metadata i32 %302, metadata !1384, metadata !DIExpression()), !dbg !1390
  br i1 %345, label %346, label %375, !dbg !1751

346:                                              ; preds = %343
  %347 = load ptr, ptr @stderr, align 8, !dbg !1763, !tbaa !1065
  %348 = call ptr @quote(ptr noundef nonnull %65) #40, !dbg !1763
  %349 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %347, i32 noundef 1, ptr noundef nonnull @.str.96, ptr noundef %348) #40, !dbg !1763
  %350 = load i1, ptr @dev_debug, align 1, !dbg !1766
  br i1 %350, label %351, label %357, !dbg !1769

351:                                              ; preds = %346
  %352 = load ptr, ptr @stderr, align 8, !dbg !1766, !tbaa !1065
  %353 = getelementptr inbounds ptr, ptr %305, i64 1, !dbg !1766
  %354 = load ptr, ptr %353, align 8, !dbg !1766, !tbaa !1065
  %355 = call ptr @quote(ptr noundef %354) #40, !dbg !1766
  %356 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %352, i32 noundef 1, ptr noundef nonnull @.str.97, ptr noundef %355) #40, !dbg !1766
  br label %357, !dbg !1766

357:                                              ; preds = %351, %346
  call void @llvm.dbg.value(metadata i32 2, metadata !1386, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i32 %302, metadata !1384, metadata !DIExpression()), !dbg !1390
  %358 = icmp sgt i32 %302, 2, !dbg !1771
  br i1 %358, label %359, label %375, !dbg !1773

359:                                              ; preds = %357
  %360 = load i1, ptr @dev_debug, align 1, !dbg !1774
  br label %361, !dbg !1773

361:                                              ; preds = %371, %359
  %362 = phi i1 [ %360, %359 ], [ %372, %371 ], !dbg !1774
  %363 = phi i64 [ 2, %359 ], [ %373, %371 ]
  call void @llvm.dbg.value(metadata i64 %363, metadata !1386, metadata !DIExpression()), !dbg !1770
  br i1 %362, label %364, label %371, !dbg !1777

364:                                              ; preds = %361
  %365 = load ptr, ptr @stderr, align 8, !dbg !1774, !tbaa !1065
  %366 = getelementptr inbounds ptr, ptr %305, i64 %363, !dbg !1774
  %367 = load ptr, ptr %366, align 8, !dbg !1774, !tbaa !1065
  %368 = call ptr @quote(ptr noundef %367) #40, !dbg !1774
  %369 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %365, i32 noundef 1, ptr noundef nonnull @.str.98, ptr noundef %368) #40, !dbg !1774
  %370 = load i1, ptr @dev_debug, align 1, !dbg !1774
  br label %371, !dbg !1774

371:                                              ; preds = %364, %361
  %372 = phi i1 [ false, %361 ], [ %370, %364 ]
  %373 = add nuw nsw i64 %363, 1, !dbg !1778
  call void @llvm.dbg.value(metadata i64 %373, metadata !1386, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i32 %302, metadata !1384, metadata !DIExpression()), !dbg !1390
  %374 = icmp eq i64 %373, %312, !dbg !1771
  br i1 %374, label %375, label %361, !dbg !1773, !llvm.loop !1779

375:                                              ; preds = %371, %309, %343, %357
  call void @llvm.dbg.value(metadata i32 %302, metadata !1384, metadata !DIExpression()), !dbg !1390
  %376 = getelementptr inbounds ptr, ptr %305, i64 %303, !dbg !1781
  %377 = load i32, ptr @optind, align 4, !dbg !1782, !tbaa !1148
  %378 = sext i32 %377 to i64, !dbg !1783
  %379 = getelementptr inbounds ptr, ptr %23, i64 %378, !dbg !1783
  %380 = add nsw i32 %67, 1, !dbg !1784
  %381 = sext i32 %380 to i64, !dbg !1785
  %382 = shl nsw i64 %381, 3, !dbg !1786
  call void @llvm.dbg.value(metadata ptr %376, metadata !1564, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata ptr %379, metadata !1571, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i64 %382, metadata !1572, metadata !DIExpression()), !dbg !1787
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %376, ptr noundef nonnull align 1 %379, i64 noundef %382, i1 noundef false) #40, !dbg !1789
  %383 = add nsw i32 %302, %67, !dbg !1790
  store i32 0, ptr @optind, align 4, !dbg !1791, !tbaa !1148
  br label %29, !dbg !1792

384:                                              ; preds = %21, %21, %21, %21, %21, %21
  %385 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #40, !dbg !1793
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %385, i32 noundef %28) #40, !dbg !1793
  %386 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #40, !dbg !1794
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %386) #40, !dbg !1794
  call void @usage(i32 noundef 125) #46, !dbg !1795
  unreachable, !dbg !1795

387:                                              ; preds = %21
  call void @usage(i32 noundef 0) #46, !dbg !1796
  unreachable, !dbg !1796

388:                                              ; preds = %21
  %389 = load ptr, ptr @stdout, align 8, !dbg !1797, !tbaa !1065
  %390 = load ptr, ptr @Version, align 8, !dbg !1797, !tbaa !1065
  %391 = call ptr @proper_name_lite(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.25) #40, !dbg !1797
  %392 = call ptr @proper_name_lite(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.26) #40, !dbg !1797
  %393 = call ptr @proper_name_lite(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.27) #40, !dbg !1797
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %389, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.24, ptr noundef %390, ptr noundef %391, ptr noundef %392, ptr noundef %393, ptr noundef null) #40, !dbg !1797
  call void @exit(i32 noundef 0) #42, !dbg !1797
  unreachable, !dbg !1797

394:                                              ; preds = %21
  call void @usage(i32 noundef 125) #46, !dbg !1798
  unreachable, !dbg !1798

395:                                              ; preds = %21
  %396 = load i32, ptr @optind, align 4, !dbg !1799, !tbaa !1148
  call void @llvm.dbg.value(metadata i32 %22, metadata !228, metadata !DIExpression()), !dbg !1299
  %397 = icmp slt i32 %396, %22, !dbg !1801
  br i1 %397, label %398, label %406, !dbg !1802

398:                                              ; preds = %395
  call void @llvm.dbg.value(metadata ptr %23, metadata !229, metadata !DIExpression()), !dbg !1299
  %399 = sext i32 %396 to i64, !dbg !1803
  %400 = getelementptr inbounds ptr, ptr %23, i64 %399, !dbg !1803
  %401 = load ptr, ptr %400, align 8, !dbg !1803, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %401, metadata !1159, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !1165, metadata !DIExpression()), !dbg !1804
  %402 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %401, ptr noundef nonnull dereferenceable(2) @.str.28) #41, !dbg !1806
  %403 = icmp eq i32 %402, 0, !dbg !1807
  br i1 %403, label %404, label %406, !dbg !1808

404:                                              ; preds = %398
  call void @llvm.dbg.value(metadata i8 1, metadata !230, metadata !DIExpression()), !dbg !1299
  %405 = add nsw i32 %396, 1, !dbg !1809
  store i32 %405, ptr @optind, align 4, !dbg !1809, !tbaa !1148
  br label %408, !dbg !1811

406:                                              ; preds = %398, %395
  call void @llvm.dbg.value(metadata i8 %27, metadata !230, metadata !DIExpression()), !dbg !1299
  %407 = icmp eq i8 %27, 0, !dbg !1812
  br i1 %407, label %414, label %408, !dbg !1811

408:                                              ; preds = %404, %406
  %409 = load i1, ptr @dev_debug, align 1, !dbg !1814
  br i1 %409, label %410, label %413, !dbg !1818

410:                                              ; preds = %408
  %411 = load ptr, ptr @stderr, align 8, !dbg !1814, !tbaa !1065
  %412 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %411, i32 noundef 1, ptr noundef nonnull @.str.29) #40, !dbg !1814
  br label %413, !dbg !1814

413:                                              ; preds = %410, %408
  store ptr @main.dummy_environ, ptr @environ, align 8, !dbg !1819, !tbaa !1065
  br label %444, !dbg !1820

414:                                              ; preds = %406
  call void @llvm.dbg.value(metadata i64 0, metadata !1821, metadata !DIExpression()), !dbg !1825
  %415 = load i64, ptr @usvars_used, align 8, !dbg !1827, !tbaa !1343
  %416 = icmp sgt i64 %415, 0, !dbg !1829
  br i1 %416, label %417, label %444, !dbg !1830

417:                                              ; preds = %414, %440
  %418 = phi i64 [ %441, %440 ], [ 0, %414 ]
  call void @llvm.dbg.value(metadata i64 %418, metadata !1821, metadata !DIExpression()), !dbg !1825
  %419 = load i1, ptr @dev_debug, align 1, !dbg !1831
  br i1 %419, label %420, label %426, !dbg !1835

420:                                              ; preds = %417
  %421 = load ptr, ptr @stderr, align 8, !dbg !1831, !tbaa !1065
  %422 = load ptr, ptr @usvars, align 8, !dbg !1831, !tbaa !1065
  %423 = getelementptr inbounds ptr, ptr %422, i64 %418, !dbg !1831
  %424 = load ptr, ptr %423, align 8, !dbg !1831, !tbaa !1065
  %425 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %421, i32 noundef 1, ptr noundef nonnull @.str.106, ptr noundef %424) #40, !dbg !1831
  br label %426, !dbg !1831

426:                                              ; preds = %420, %417
  %427 = load ptr, ptr @usvars, align 8, !dbg !1836, !tbaa !1065
  %428 = getelementptr inbounds ptr, ptr %427, i64 %418, !dbg !1836
  %429 = load ptr, ptr %428, align 8, !dbg !1836, !tbaa !1065
  %430 = call i32 @unsetenv(ptr noundef %429) #40, !dbg !1838
  %431 = icmp eq i32 %430, 0, !dbg !1838
  br i1 %431, label %440, label %432, !dbg !1839

432:                                              ; preds = %426
  %433 = tail call ptr @__errno_location() #43, !dbg !1840
  %434 = load i32, ptr %433, align 4, !dbg !1840, !tbaa !1148
  %435 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.107, i32 noundef 5) #40, !dbg !1840
  %436 = load ptr, ptr @usvars, align 8, !dbg !1840, !tbaa !1065
  %437 = getelementptr inbounds ptr, ptr %436, i64 %418, !dbg !1840
  %438 = load ptr, ptr %437, align 8, !dbg !1840, !tbaa !1065
  %439 = call ptr @quote(ptr noundef %438) #40, !dbg !1840
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %434, ptr noundef %435, ptr noundef %439) #40, !dbg !1840
  unreachable, !dbg !1840

440:                                              ; preds = %426
  %441 = add nuw nsw i64 %418, 1, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %441, metadata !1821, metadata !DIExpression()), !dbg !1825
  %442 = load i64, ptr @usvars_used, align 8, !dbg !1827, !tbaa !1343
  %443 = icmp slt i64 %441, %442, !dbg !1829
  br i1 %443, label %417, label %444, !dbg !1830, !llvm.loop !1842

444:                                              ; preds = %440, %414, %413
  %445 = load i32, ptr @optind, align 4, !dbg !1844, !tbaa !1148
  call void @llvm.dbg.value(metadata i32 %22, metadata !228, metadata !DIExpression()), !dbg !1299
  %446 = icmp slt i32 %445, %22, !dbg !1845
  br i1 %446, label %447, label %484, !dbg !1846

447:                                              ; preds = %444, %476
  %448 = phi i32 [ %478, %476 ], [ %445, %444 ]
  call void @llvm.dbg.value(metadata ptr %23, metadata !229, metadata !DIExpression()), !dbg !1299
  %449 = sext i32 %448 to i64, !dbg !1847
  %450 = getelementptr inbounds ptr, ptr %23, i64 %449, !dbg !1847
  %451 = load ptr, ptr %450, align 8, !dbg !1847, !tbaa !1065
  %452 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %451, i32 noundef 61) #41, !dbg !1848
  call void @llvm.dbg.value(metadata ptr %452, metadata !236, metadata !DIExpression()), !dbg !1299
  %453 = icmp eq ptr %452, null, !dbg !1846
  br i1 %453, label %480, label %454, !dbg !1849

454:                                              ; preds = %447
  %455 = load i1, ptr @dev_debug, align 1, !dbg !1850
  br i1 %455, label %456, label %463, !dbg !1854

456:                                              ; preds = %454
  %457 = load ptr, ptr @stderr, align 8, !dbg !1850, !tbaa !1065
  %458 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %457, i32 noundef 1, ptr noundef nonnull @.str.30, ptr noundef %451) #40, !dbg !1850
  %459 = load i32, ptr @optind, align 4, !dbg !1855, !tbaa !1148
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds ptr, ptr %23, i64 %460
  %462 = load ptr, ptr %461, align 8, !dbg !1857, !tbaa !1065
  br label %463, !dbg !1850

463:                                              ; preds = %456, %454
  %464 = phi ptr [ %462, %456 ], [ %451, %454 ], !dbg !1857
  call void @llvm.dbg.value(metadata ptr %23, metadata !229, metadata !DIExpression()), !dbg !1299
  %465 = call i32 @putenv(ptr noundef %464) #40, !dbg !1858
  %466 = icmp eq i32 %465, 0, !dbg !1858
  br i1 %466, label %476, label %467, !dbg !1859

467:                                              ; preds = %463
  store i8 0, ptr %452, align 1, !dbg !1860, !tbaa !1157
  %468 = tail call ptr @__errno_location() #43, !dbg !1862
  %469 = load i32, ptr %468, align 4, !dbg !1862, !tbaa !1148
  %470 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #40, !dbg !1862
  call void @llvm.dbg.value(metadata ptr %23, metadata !229, metadata !DIExpression()), !dbg !1299
  %471 = load i32, ptr @optind, align 4, !dbg !1862, !tbaa !1148
  %472 = sext i32 %471 to i64, !dbg !1862
  %473 = getelementptr inbounds ptr, ptr %23, i64 %472, !dbg !1862
  %474 = load ptr, ptr %473, align 8, !dbg !1862, !tbaa !1065
  %475 = call ptr @quote(ptr noundef %474) #40, !dbg !1862
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %469, ptr noundef %470, ptr noundef %475) #40, !dbg !1862
  unreachable, !dbg !1862

476:                                              ; preds = %463
  %477 = load i32, ptr @optind, align 4, !dbg !1863, !tbaa !1148
  %478 = add nsw i32 %477, 1, !dbg !1863
  store i32 %478, ptr @optind, align 4, !dbg !1863, !tbaa !1148
  call void @llvm.dbg.value(metadata i32 %22, metadata !228, metadata !DIExpression()), !dbg !1299
  %479 = icmp slt i32 %478, %22, !dbg !1845
  br i1 %479, label %447, label %484, !dbg !1846, !llvm.loop !1864

480:                                              ; preds = %447
  call void @llvm.dbg.value(metadata i32 %22, metadata !228, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i1 true, metadata !237, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1299
  %481 = icmp eq i8 %26, 0, !dbg !1866
  br i1 %481, label %506, label %482, !dbg !1868

482:                                              ; preds = %480
  %483 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #40, !dbg !1869
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %483) #40, !dbg !1869
  call void @usage(i32 noundef 125) #46, !dbg !1871
  unreachable, !dbg !1871

484:                                              ; preds = %476, %444
  call void @llvm.dbg.value(metadata i32 %22, metadata !228, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i1 false, metadata !237, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1299
  %485 = icmp eq i8 %26, 0, !dbg !1866
  %486 = icmp eq ptr %25, null, !dbg !1872
  br i1 %486, label %489, label %487, !dbg !1874

487:                                              ; preds = %484
  %488 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #40, !dbg !1875
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %488) #40, !dbg !1875
  call void @usage(i32 noundef 125) #46, !dbg !1877
  unreachable, !dbg !1877

489:                                              ; preds = %484
  %490 = icmp eq ptr %24, null, !dbg !1878
  br i1 %490, label %493, label %491, !dbg !1880

491:                                              ; preds = %489
  %492 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #40, !dbg !1881
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %492) #40, !dbg !1881
  call void @usage(i32 noundef 125) #46, !dbg !1883
  unreachable, !dbg !1883

493:                                              ; preds = %489
  %494 = load ptr, ptr @environ, align 8, !dbg !1884, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %494, metadata !238, metadata !DIExpression()), !dbg !1885
  %495 = load ptr, ptr %494, align 8, !dbg !1886, !tbaa !1065
  %496 = icmp eq ptr %495, null, !dbg !1887
  br i1 %496, label %724, label %497, !dbg !1887

497:                                              ; preds = %493
  %498 = select i1 %485, i32 10, i32 0
  br label %499, !dbg !1887

499:                                              ; preds = %497, %499
  %500 = phi ptr [ %495, %497 ], [ %504, %499 ]
  %501 = phi ptr [ %494, %497 ], [ %502, %499 ]
  call void @llvm.dbg.value(metadata ptr %501, metadata !238, metadata !DIExpression()), !dbg !1885
  %502 = getelementptr inbounds ptr, ptr %501, i64 1, !dbg !1888
  call void @llvm.dbg.value(metadata ptr %502, metadata !238, metadata !DIExpression()), !dbg !1885
  %503 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull %500, i32 noundef %498) #40, !dbg !1888
  %504 = load ptr, ptr %502, align 8, !dbg !1886, !tbaa !1065
  %505 = icmp eq ptr %504, null, !dbg !1887
  br i1 %505, label %724, label %499, !dbg !1887, !llvm.loop !1889

506:                                              ; preds = %480
  %507 = icmp eq ptr %25, null, !dbg !1872
  %508 = icmp eq ptr %24, null, !dbg !1878
  call void @llvm.dbg.value(metadata i32 1, metadata !1890, metadata !DIExpression()), !dbg !1991
  br label %509, !dbg !1993

509:                                              ; preds = %558, %506
  %510 = phi i64 [ 1, %506 ], [ %559, %558 ]
  call void @llvm.dbg.value(metadata i64 %510, metadata !1890, metadata !DIExpression()), !dbg !1991
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %8) #40, !dbg !1994
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1894, metadata !DIExpression()), !dbg !1995
  %511 = load ptr, ptr @signals, align 8, !dbg !1996, !tbaa !1065
  %512 = getelementptr inbounds i32, ptr %511, i64 %510, !dbg !1996
  %513 = load i32, ptr %512, align 4, !dbg !1996, !tbaa !1157
  switch i32 %513, label %514 [
    i32 0, label %558
    i32 2, label %515
    i32 4, label %515
  ], !dbg !1998

514:                                              ; preds = %509
  br label %515, !dbg !1999

515:                                              ; preds = %514, %509, %509
  %516 = phi i1 [ false, %514 ], [ true, %509 ], [ true, %509 ]
  call void @llvm.dbg.value(metadata i1 %516, metadata !1985, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2000
  %517 = add i32 %513, -1, !dbg !2001
  %518 = icmp ult i32 %517, 2, !dbg !2001
  call void @llvm.dbg.value(metadata i1 %518, metadata !1986, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2000
  %519 = trunc i64 %510 to i32, !dbg !2002
  %520 = call i32 @sigaction(i32 noundef %519, ptr noundef null, ptr noundef nonnull %8) #40, !dbg !2002
  call void @llvm.dbg.value(metadata i32 %520, metadata !1987, metadata !DIExpression()), !dbg !2000
  %521 = icmp eq i32 %520, 0, !dbg !2003
  %522 = or i1 %516, %521, !dbg !2005
  br i1 %522, label %528, label %523, !dbg !2005

523:                                              ; preds = %515
  %524 = trunc i64 %510 to i32, !dbg !2002
  %525 = tail call ptr @__errno_location() #43, !dbg !2006
  %526 = load i32, ptr %525, align 4, !dbg !2006, !tbaa !1148
  %527 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.108, i32 noundef 5) #40, !dbg !2006
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %526, ptr noundef %527, i32 noundef %524) #40, !dbg !2006
  unreachable, !dbg !2006

528:                                              ; preds = %515
  br i1 %521, label %529, label %541, !dbg !2007

529:                                              ; preds = %528
  %530 = select i1 %518, ptr null, ptr inttoptr (i64 1 to ptr), !dbg !2008
  store ptr %530, ptr %8, align 8, !dbg !2011, !tbaa !1157
  %531 = call i32 @sigaction(i32 noundef %519, ptr noundef nonnull %8, ptr noundef null) #40, !dbg !2012
  call void @llvm.dbg.value(metadata i32 %531, metadata !1987, metadata !DIExpression()), !dbg !2000
  %532 = icmp eq i32 %531, 0, !dbg !2013
  %533 = or i1 %516, %532, !dbg !2015
  %534 = xor i1 %532, true, !dbg !2015
  %535 = zext i1 %534 to i32, !dbg !2015
  br i1 %533, label %541, label %536, !dbg !2015

536:                                              ; preds = %529
  %537 = trunc i64 %510 to i32, !dbg !2002
  %538 = tail call ptr @__errno_location() #43, !dbg !2016
  %539 = load i32, ptr %538, align 4, !dbg !2016, !tbaa !1148
  %540 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.109, i32 noundef 5) #40, !dbg !2016
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %539, ptr noundef %540, i32 noundef %537) #40, !dbg !2016
  unreachable, !dbg !2016

541:                                              ; preds = %529, %528
  %542 = phi i32 [ %520, %528 ], [ %535, %529 ], !dbg !2000
  call void @llvm.dbg.value(metadata i32 %542, metadata !1987, metadata !DIExpression()), !dbg !2000
  %543 = load i1, ptr @dev_debug, align 1, !dbg !2017
  br i1 %543, label %544, label %558, !dbg !2018

544:                                              ; preds = %541
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %9) #40, !dbg !2019
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1988, metadata !DIExpression()), !dbg !2020
  %545 = call i32 @sig2str(i32 noundef %519, ptr noundef nonnull %9) #40, !dbg !2021
  %546 = icmp eq i32 %545, 0, !dbg !2023
  br i1 %546, label %549, label %547, !dbg !2024

547:                                              ; preds = %544
  %548 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %9, i64 noundef 19, i32 noundef 1, i64 noundef 19, ptr noundef nonnull @.str.110, i32 noundef %519) #40, !dbg !2025
  br label %549, !dbg !2025

549:                                              ; preds = %547, %544
  %550 = load i1, ptr @dev_debug, align 1, !dbg !2026
  br i1 %550, label %551, label %557, !dbg !2029

551:                                              ; preds = %549
  %552 = load ptr, ptr @stderr, align 8, !dbg !2026, !tbaa !1065
  %553 = select i1 %518, ptr @.str.112, ptr @.str.113, !dbg !2026
  %554 = icmp eq i32 %542, 0, !dbg !2026
  %555 = select i1 %554, ptr @.str.19, ptr @.str.114, !dbg !2026
  %556 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %552, i32 noundef 1, ptr noundef nonnull @.str.111, ptr noundef nonnull %9, i32 noundef %519, ptr noundef nonnull %553, ptr noundef nonnull %555) #40, !dbg !2026
  br label %557, !dbg !2026

557:                                              ; preds = %551, %549
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %9) #40, !dbg !2030
  br label %558, !dbg !2031

558:                                              ; preds = %557, %541, %509
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %8) #40, !dbg !2032
  %559 = add nuw nsw i64 %510, 1, !dbg !2033
  call void @llvm.dbg.value(metadata i64 %559, metadata !1890, metadata !DIExpression()), !dbg !1991
  %560 = icmp eq i64 %559, 65, !dbg !2034
  br i1 %560, label %561, label %509, !dbg !1993, !llvm.loop !2035

561:                                              ; preds = %558
  %562 = load i1, ptr @sig_mask_changed, align 1, !dbg !2037
  br i1 %562, label %563, label %607, !dbg !2039

563:                                              ; preds = %561
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #40, !dbg !2040
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2043, metadata !DIExpression()), !dbg !2053
  %564 = call i32 @sigemptyset(ptr noundef nonnull %6) #40, !dbg !2054
  %565 = call i32 @sigprocmask(i32 noundef 0, ptr noundef null, ptr noundef nonnull %6) #40, !dbg !2055
  %566 = icmp eq i32 %565, 0, !dbg !2055
  br i1 %566, label %574, label %567, !dbg !2057

567:                                              ; preds = %563
  %568 = tail call ptr @__errno_location() #43, !dbg !2058
  %569 = load i32, ptr %568, align 4, !dbg !2058, !tbaa !1148
  %570 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.115, i32 noundef 5) #40, !dbg !2058
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %569, ptr noundef %570) #40, !dbg !2058
  unreachable, !dbg !2058

571:                                              ; preds = %599
  %572 = call i32 @sigprocmask(i32 noundef 2, ptr noundef nonnull %6, ptr noundef null) #40, !dbg !2059
  %573 = icmp eq i32 %572, 0, !dbg !2059
  br i1 %573, label %606, label %602, !dbg !2061

574:                                              ; preds = %563, %599
  %575 = phi i32 [ %600, %599 ], [ 1, %563 ]
  call void @llvm.dbg.value(metadata i32 %575, metadata !2044, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata ptr null, metadata !2046, metadata !DIExpression()), !dbg !2063
  %576 = call i32 @sigismember(ptr noundef nonnull @block_signals, i32 noundef %575) #40, !dbg !2064
  %577 = icmp eq i32 %576, 0, !dbg !2064
  br i1 %577, label %580, label %578, !dbg !2066

578:                                              ; preds = %574
  %579 = call i32 @sigaddset(ptr noundef nonnull %6, i32 noundef %575) #40, !dbg !2067
  call void @llvm.dbg.value(metadata ptr @.str.116, metadata !2046, metadata !DIExpression()), !dbg !2063
  br label %585, !dbg !2069

580:                                              ; preds = %574
  %581 = call i32 @sigismember(ptr noundef nonnull @unblock_signals, i32 noundef %575) #40, !dbg !2070
  %582 = icmp eq i32 %581, 0, !dbg !2070
  br i1 %582, label %599, label %583, !dbg !2072

583:                                              ; preds = %580
  %584 = call i32 @sigdelset(ptr noundef nonnull %6, i32 noundef %575) #40, !dbg !2073
  call void @llvm.dbg.value(metadata ptr @.str.117, metadata !2046, metadata !DIExpression()), !dbg !2063
  br label %585, !dbg !2075

585:                                              ; preds = %583, %578
  %586 = phi ptr [ @.str.117, %583 ], [ @.str.116, %578 ], !dbg !2063
  call void @llvm.dbg.value(metadata ptr %586, metadata !2046, metadata !DIExpression()), !dbg !2063
  %587 = load i1, ptr @dev_debug, align 1, !dbg !2076
  br i1 %587, label %588, label %599, !dbg !2077

588:                                              ; preds = %585
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %7) #40, !dbg !2078
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2049, metadata !DIExpression()), !dbg !2079
  %589 = call i32 @sig2str(i32 noundef %575, ptr noundef nonnull %7) #40, !dbg !2080
  %590 = icmp eq i32 %589, 0, !dbg !2082
  br i1 %590, label %593, label %591, !dbg !2083

591:                                              ; preds = %588
  %592 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %7, i64 noundef 19, i32 noundef 1, i64 noundef 19, ptr noundef nonnull @.str.110, i32 noundef %575) #40, !dbg !2084
  br label %593, !dbg !2084

593:                                              ; preds = %591, %588
  %594 = load i1, ptr @dev_debug, align 1, !dbg !2085
  br i1 %594, label %595, label %598, !dbg !2088

595:                                              ; preds = %593
  %596 = load ptr, ptr @stderr, align 8, !dbg !2085, !tbaa !1065
  %597 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %596, i32 noundef 1, ptr noundef nonnull @.str.118, ptr noundef nonnull %7, i32 noundef %575, ptr noundef nonnull %586) #40, !dbg !2085
  br label %598, !dbg !2085

598:                                              ; preds = %595, %593
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %7) #40, !dbg !2089
  br label %599, !dbg !2090

599:                                              ; preds = %598, %585, %580
  %600 = add nuw nsw i32 %575, 1, !dbg !2091
  call void @llvm.dbg.value(metadata i32 %600, metadata !2044, metadata !DIExpression()), !dbg !2062
  %601 = icmp eq i32 %600, 65, !dbg !2092
  br i1 %601, label %571, label %574, !dbg !2093, !llvm.loop !2094

602:                                              ; preds = %571
  %603 = tail call ptr @__errno_location() #43, !dbg !2096
  %604 = load i32, ptr %603, align 4, !dbg !2096, !tbaa !1148
  %605 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.119, i32 noundef 5) #40, !dbg !2096
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %604, ptr noundef %605) #40, !dbg !2096
  unreachable, !dbg !2096

606:                                              ; preds = %571
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #40, !dbg !2097
  br label %607, !dbg !2098

607:                                              ; preds = %606, %561
  %608 = load i1, ptr @report_signal_handling, align 1, !dbg !2099
  br i1 %608, label %609, label %647, !dbg !2101

609:                                              ; preds = %607
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #40, !dbg !2102
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2105, metadata !DIExpression()), !dbg !2116
  %610 = call i32 @sigemptyset(ptr noundef nonnull %3) #40, !dbg !2117
  %611 = call i32 @sigprocmask(i32 noundef 0, ptr noundef null, ptr noundef nonnull %3) #40, !dbg !2118
  %612 = icmp eq i32 %611, 0, !dbg !2118
  br i1 %612, label %617, label %613, !dbg !2120

613:                                              ; preds = %609
  %614 = tail call ptr @__errno_location() #43, !dbg !2121
  %615 = load i32, ptr %614, align 4, !dbg !2121, !tbaa !1148
  %616 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.115, i32 noundef 5) #40, !dbg !2121
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %615, ptr noundef %616) #40, !dbg !2121
  unreachable, !dbg !2121

617:                                              ; preds = %609, %643
  %618 = phi i32 [ %644, %643 ], [ 1, %609 ]
  call void @llvm.dbg.value(metadata i32 %618, metadata !2106, metadata !DIExpression()), !dbg !2122
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %4) #40, !dbg !2123
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2108, metadata !DIExpression()), !dbg !2124
  %619 = call i32 @sigaction(i32 noundef %618, ptr noundef null, ptr noundef nonnull %4) #40, !dbg !2125
  %620 = icmp eq i32 %619, 0, !dbg !2125
  br i1 %620, label %621, label %643, !dbg !2127

621:                                              ; preds = %617
  %622 = load ptr, ptr %4, align 8, !dbg !2128, !tbaa !1157
  %623 = icmp eq ptr %622, inttoptr (i64 1 to ptr), !dbg !2129
  %624 = select i1 %623, ptr @.str.113, ptr @.str.19, !dbg !2130
  call void @llvm.dbg.value(metadata ptr %624, metadata !2111, metadata !DIExpression()), !dbg !2131
  %625 = call i32 @sigismember(ptr noundef nonnull %3, i32 noundef %618) #40, !dbg !2132
  %626 = icmp eq i32 %625, 0, !dbg !2132
  %627 = select i1 %626, ptr @.str.19, ptr @.str.116, !dbg !2132
  call void @llvm.dbg.value(metadata ptr %627, metadata !2112, metadata !DIExpression()), !dbg !2131
  %628 = load i8, ptr %624, align 1, !dbg !2133, !tbaa !1157
  %629 = icmp eq i8 %628, 0, !dbg !2133
  %630 = load i8, ptr %627, align 1, !dbg !2134
  %631 = icmp eq i8 %630, 0, !dbg !2134
  %632 = select i1 %629, i1 true, i1 %631, !dbg !2133
  %633 = select i1 %632, ptr @.str.19, ptr @.str.93, !dbg !2133
  call void @llvm.dbg.value(metadata ptr %633, metadata !2113, metadata !DIExpression()), !dbg !2131
  %634 = select i1 %629, i1 %631, i1 false, !dbg !2135
  br i1 %634, label %643, label %635, !dbg !2135

635:                                              ; preds = %621
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %5) #40, !dbg !2137
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2114, metadata !DIExpression()), !dbg !2138
  %636 = call i32 @sig2str(i32 noundef %618, ptr noundef nonnull %5) #40, !dbg !2139
  %637 = icmp eq i32 %636, 0, !dbg !2141
  br i1 %637, label %640, label %638, !dbg !2142

638:                                              ; preds = %635
  %639 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %5, i64 noundef 19, i32 noundef 1, i64 noundef 19, ptr noundef nonnull @.str.110, i32 noundef %618) #40, !dbg !2143
  br label %640, !dbg !2143

640:                                              ; preds = %638, %635
  %641 = load ptr, ptr @stderr, align 8, !dbg !2144, !tbaa !1065
  %642 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %641, i32 noundef 1, ptr noundef nonnull @.str.120, ptr noundef nonnull %5, i32 noundef %618, ptr noundef nonnull %627, ptr noundef nonnull %633, ptr noundef nonnull %624) #40, !dbg !2144
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %5) #40, !dbg !2145
  br label %643, !dbg !2145

643:                                              ; preds = %640, %621, %617
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %4) #40, !dbg !2145
  %644 = add nuw nsw i32 %618, 1, !dbg !2146
  call void @llvm.dbg.value(metadata i32 %644, metadata !2106, metadata !DIExpression()), !dbg !2122
  %645 = icmp eq i32 %644, 65, !dbg !2147
  br i1 %645, label %646, label %617, !dbg !2148, !llvm.loop !2149

646:                                              ; preds = %643
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #40, !dbg !2151
  br label %647, !dbg !2152

647:                                              ; preds = %646, %607
  br i1 %507, label %662, label %648, !dbg !2153

648:                                              ; preds = %647
  %649 = load i1, ptr @dev_debug, align 1, !dbg !2154
  br i1 %649, label %650, label %654, !dbg !2159

650:                                              ; preds = %648
  %651 = load ptr, ptr @stderr, align 8, !dbg !2154, !tbaa !1065
  %652 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %25) #40, !dbg !2154
  %653 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %651, i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef %652) #40, !dbg !2154
  br label %654, !dbg !2154

654:                                              ; preds = %650, %648
  %655 = call i32 @chdir(ptr noundef nonnull %25) #40, !dbg !2160
  %656 = icmp eq i32 %655, 0, !dbg !2162
  br i1 %656, label %662, label %657, !dbg !2163

657:                                              ; preds = %654
  %658 = tail call ptr @__errno_location() #43, !dbg !2164
  %659 = load i32, ptr %658, align 4, !dbg !2164, !tbaa !1148
  %660 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #40, !dbg !2164
  %661 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %25) #40, !dbg !2164
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %659, ptr noundef %660, ptr noundef %661) #40, !dbg !2164
  unreachable, !dbg !2164

662:                                              ; preds = %654, %647
  call void @llvm.dbg.value(metadata ptr %23, metadata !229, metadata !DIExpression()), !dbg !1299
  %663 = load i32, ptr @optind, align 4, !dbg !2165, !tbaa !1148
  %664 = sext i32 %663 to i64, !dbg !2166
  %665 = getelementptr inbounds ptr, ptr %23, i64 %664, !dbg !2166
  %666 = load ptr, ptr %665, align 8, !dbg !2166, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %666, metadata !243, metadata !DIExpression()), !dbg !1299
  br i1 %508, label %679, label %667, !dbg !2167

667:                                              ; preds = %662
  %668 = load i1, ptr @dev_debug, align 1, !dbg !2168
  br i1 %668, label %669, label %675, !dbg !2173

669:                                              ; preds = %667
  %670 = load ptr, ptr @stderr, align 8, !dbg !2168, !tbaa !1065
  %671 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %24) #40, !dbg !2168
  %672 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %670, i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef %671) #40, !dbg !2168
  %673 = load i32, ptr @optind, align 4, !dbg !2174, !tbaa !1148
  %674 = sext i32 %673 to i64, !dbg !2175
  br label %675, !dbg !2168

675:                                              ; preds = %669, %667
  %676 = phi i64 [ %674, %669 ], [ %664, %667 ], !dbg !2175
  %677 = phi i32 [ %673, %669 ], [ %663, %667 ], !dbg !2174
  call void @llvm.dbg.value(metadata ptr %23, metadata !229, metadata !DIExpression()), !dbg !1299
  %678 = getelementptr inbounds ptr, ptr %23, i64 %676, !dbg !2175
  store ptr %24, ptr %678, align 8, !dbg !2176, !tbaa !1065
  br label %679, !dbg !2177

679:                                              ; preds = %675, %662
  %680 = phi i32 [ %677, %675 ], [ %663, %662 ]
  %681 = load i1, ptr @dev_debug, align 1, !dbg !2178
  br i1 %681, label %682, label %710, !dbg !2179

682:                                              ; preds = %679
  %683 = load ptr, ptr @stderr, align 8, !dbg !2180, !tbaa !1065
  %684 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %683, i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef %666) #40, !dbg !2180
  %685 = load i32, ptr @optind, align 4, !dbg !2183, !tbaa !1148
  call void @llvm.dbg.value(metadata i32 %685, metadata !244, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i32 %22, metadata !228, metadata !DIExpression()), !dbg !1299
  %686 = icmp slt i32 %685, %22, !dbg !2185
  br i1 %686, label %687, label %710, !dbg !2187

687:                                              ; preds = %682
  %688 = sext i32 %685 to i64, !dbg !2187
  %689 = load i1, ptr @dev_debug, align 1, !dbg !2188
  br label %690, !dbg !2187

690:                                              ; preds = %687, %703
  %691 = phi i1 [ %689, %687 ], [ %704, %703 ], !dbg !2188
  %692 = phi i64 [ %688, %687 ], [ %705, %703 ]
  call void @llvm.dbg.value(metadata i64 %692, metadata !244, metadata !DIExpression()), !dbg !2184
  br i1 %691, label %693, label %703, !dbg !2191

693:                                              ; preds = %690
  %694 = load ptr, ptr @stderr, align 8, !dbg !2188, !tbaa !1065
  %695 = load i32, ptr @optind, align 4, !dbg !2188, !tbaa !1148
  %696 = trunc i64 %692 to i32, !dbg !2188
  %697 = sub nsw i32 %696, %695, !dbg !2188
  call void @llvm.dbg.value(metadata ptr %23, metadata !229, metadata !DIExpression()), !dbg !1299
  %698 = getelementptr inbounds ptr, ptr %23, i64 %692, !dbg !2188
  %699 = load ptr, ptr %698, align 8, !dbg !2188, !tbaa !1065
  %700 = call ptr @quote(ptr noundef %699) #40, !dbg !2188
  %701 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %694, i32 noundef 1, ptr noundef nonnull @.str.40, i32 noundef %697, ptr noundef %700) #40, !dbg !2188
  %702 = load i1, ptr @dev_debug, align 1, !dbg !2188
  br label %703, !dbg !2188

703:                                              ; preds = %690, %693
  %704 = phi i1 [ false, %690 ], [ %702, %693 ]
  %705 = add nsw i64 %692, 1, !dbg !2192
  call void @llvm.dbg.value(metadata i64 %705, metadata !244, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i32 %22, metadata !228, metadata !DIExpression()), !dbg !1299
  %706 = trunc i64 %705 to i32, !dbg !2185
  %707 = icmp eq i32 %22, %706, !dbg !2185
  br i1 %707, label %708, label %690, !dbg !2187, !llvm.loop !2193

708:                                              ; preds = %703
  %709 = load i32, ptr @optind, align 4, !dbg !2195, !tbaa !1148
  br label %710, !dbg !2195

710:                                              ; preds = %708, %682, %679
  %711 = phi i32 [ %709, %708 ], [ %685, %682 ], [ %680, %679 ], !dbg !2195
  call void @llvm.dbg.value(metadata ptr %23, metadata !229, metadata !DIExpression()), !dbg !1299
  %712 = sext i32 %711 to i64, !dbg !2196
  %713 = getelementptr inbounds ptr, ptr %23, i64 %712, !dbg !2196
  %714 = call i32 @execvp(ptr noundef %666, ptr noundef %713) #40, !dbg !2197
  %715 = tail call ptr @__errno_location() #43, !dbg !2198
  %716 = load i32, ptr %715, align 4, !dbg !2198, !tbaa !1148
  %717 = icmp eq i32 %716, 2, !dbg !2199
  call void @llvm.dbg.value(metadata i32 poison, metadata !248, metadata !DIExpression()), !dbg !1299
  %718 = call ptr @quote(ptr noundef %666) #40, !dbg !2200
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %716, ptr noundef nonnull @.str.41, ptr noundef %718) #40, !dbg !2200
  br i1 %717, label %719, label %724, !dbg !2201

719:                                              ; preds = %710
  %720 = call ptr @strpbrk(ptr noundef %666, ptr noundef nonnull @.str.42) #41, !dbg !2203
  %721 = icmp eq ptr %720, null, !dbg !2203
  br i1 %721, label %724, label %722, !dbg !2204

722:                                              ; preds = %719
  %723 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #40, !dbg !2205
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %723) #40, !dbg !2205
  br label %724, !dbg !2205

724:                                              ; preds = %499, %493, %710, %719, %722
  %725 = phi i32 [ 127, %722 ], [ 127, %719 ], [ 126, %710 ], [ 0, %493 ], [ 0, %499 ], !dbg !1299
  ret i32 %725, !dbg !2206
}

; Function Attrs: nounwind
declare !dbg !2207 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2210 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2211 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nounwind
declare !dbg !2214 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @parse_signal_action_params(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #10 !dbg !2218 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2222, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i1 %1, metadata !2223, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2232
  %3 = icmp eq ptr %0, null, !dbg !2233
  br i1 %3, label %4, label %25, !dbg !2234

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 1, metadata !2224, metadata !DIExpression()), !dbg !2235
  %5 = select i1 %1, i32 2, i32 4
  %6 = insertelement <4 x i32> poison, i32 %5, i64 0, !dbg !2236
  %7 = shufflevector <4 x i32> %6, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !2236
  %8 = load ptr, ptr @signals, align 8, !tbaa !1065
  %9 = getelementptr inbounds i32, ptr %8, i64 1, !dbg !2237
  store <4 x i32> %7, ptr %9, align 4, !dbg !2239, !tbaa !1157
  %10 = getelementptr inbounds i32, ptr %8, i64 5, !dbg !2237
  store <4 x i32> %7, ptr %10, align 4, !dbg !2239, !tbaa !1157
  %11 = getelementptr inbounds i32, ptr %8, i64 9, !dbg !2237
  store <4 x i32> %7, ptr %11, align 4, !dbg !2239, !tbaa !1157
  %12 = getelementptr inbounds i32, ptr %8, i64 13, !dbg !2237
  store <4 x i32> %7, ptr %12, align 4, !dbg !2239, !tbaa !1157
  %13 = getelementptr inbounds i32, ptr %8, i64 17, !dbg !2237
  store <4 x i32> %7, ptr %13, align 4, !dbg !2239, !tbaa !1157
  %14 = getelementptr inbounds i32, ptr %8, i64 21, !dbg !2237
  store <4 x i32> %7, ptr %14, align 4, !dbg !2239, !tbaa !1157
  %15 = getelementptr inbounds i32, ptr %8, i64 25, !dbg !2237
  store <4 x i32> %7, ptr %15, align 4, !dbg !2239, !tbaa !1157
  %16 = getelementptr inbounds i32, ptr %8, i64 29, !dbg !2237
  store <4 x i32> %7, ptr %16, align 4, !dbg !2239, !tbaa !1157
  %17 = getelementptr inbounds i32, ptr %8, i64 33, !dbg !2237
  store <4 x i32> %7, ptr %17, align 4, !dbg !2239, !tbaa !1157
  %18 = getelementptr inbounds i32, ptr %8, i64 37, !dbg !2237
  store <4 x i32> %7, ptr %18, align 4, !dbg !2239, !tbaa !1157
  %19 = getelementptr inbounds i32, ptr %8, i64 41, !dbg !2237
  store <4 x i32> %7, ptr %19, align 4, !dbg !2239, !tbaa !1157
  %20 = getelementptr inbounds i32, ptr %8, i64 45, !dbg !2237
  store <4 x i32> %7, ptr %20, align 4, !dbg !2239, !tbaa !1157
  %21 = getelementptr inbounds i32, ptr %8, i64 49, !dbg !2237
  store <4 x i32> %7, ptr %21, align 4, !dbg !2239, !tbaa !1157
  %22 = getelementptr inbounds i32, ptr %8, i64 53, !dbg !2237
  store <4 x i32> %7, ptr %22, align 4, !dbg !2239, !tbaa !1157
  %23 = getelementptr inbounds i32, ptr %8, i64 57, !dbg !2237
  store <4 x i32> %7, ptr %23, align 4, !dbg !2239, !tbaa !1157
  %24 = getelementptr inbounds i32, ptr %8, i64 61, !dbg !2237
  store <4 x i32> %7, ptr %24, align 4, !dbg !2239, !tbaa !1157
  br label %49, !dbg !2240

25:                                               ; preds = %2
  %26 = tail call noalias nonnull ptr @xstrdup(ptr noundef nonnull %0) #40, !dbg !2241
  call void @llvm.dbg.value(metadata ptr %26, metadata !2228, metadata !DIExpression()), !dbg !2232
  %27 = tail call ptr @strtok(ptr noundef nonnull %26, ptr noundef nonnull @.str.93) #40, !dbg !2242
  call void @llvm.dbg.value(metadata ptr %27, metadata !2229, metadata !DIExpression()), !dbg !2232
  %28 = icmp eq ptr %27, null, !dbg !2243
  br i1 %28, label %48, label %29, !dbg !2243

29:                                               ; preds = %25
  %30 = select i1 %1, i32 1, i32 3
  br label %31, !dbg !2243

31:                                               ; preds = %29, %42
  %32 = phi ptr [ %27, %29 ], [ %46, %42 ]
  call void @llvm.dbg.value(metadata ptr %32, metadata !2229, metadata !DIExpression()), !dbg !2232
  %33 = tail call i32 @operand2sig(ptr noundef nonnull %32) #40, !dbg !2244
  call void @llvm.dbg.value(metadata i32 %33, metadata !2230, metadata !DIExpression()), !dbg !2245
  %34 = icmp eq i32 %33, 0, !dbg !2246
  br i1 %34, label %35, label %38, !dbg !2248

35:                                               ; preds = %31
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.94, i32 noundef 5) #40, !dbg !2249
  %37 = tail call ptr @quote(ptr noundef nonnull %32) #40, !dbg !2249
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %36, ptr noundef %37) #40, !dbg !2249
  br label %40, !dbg !2250

38:                                               ; preds = %31
  %39 = icmp slt i32 %33, 1, !dbg !2251
  br i1 %39, label %40, label %42, !dbg !2250

40:                                               ; preds = %38, %35
  %41 = load volatile i32, ptr @exit_failure, align 4, !dbg !2253, !tbaa !1148
  tail call void @usage(i32 noundef %41) #46, !dbg !2254
  unreachable, !dbg !2254

42:                                               ; preds = %38
  %43 = load ptr, ptr @signals, align 8, !dbg !2255, !tbaa !1065
  %44 = zext i32 %33 to i64
  %45 = getelementptr inbounds i32, ptr %43, i64 %44, !dbg !2255
  store i32 %30, ptr %45, align 4, !dbg !2256, !tbaa !1157
  %46 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.93) #40, !dbg !2257
  call void @llvm.dbg.value(metadata ptr %46, metadata !2229, metadata !DIExpression()), !dbg !2232
  %47 = icmp eq ptr %46, null, !dbg !2243
  br i1 %47, label %48, label %31, !dbg !2243, !llvm.loop !2258

48:                                               ; preds = %42, %25
  tail call void @free(ptr noundef nonnull %26) #40, !dbg !2260
  br label %49, !dbg !2240

49:                                               ; preds = %4, %48
  ret void, !dbg !2240
}

; Function Attrs: nounwind uwtable
define internal fastcc void @parse_block_signal_params(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #10 !dbg !2261 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2263, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata i1 %1, metadata !2264, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2269
  %3 = icmp eq ptr %0, null, !dbg !2270
  br i1 %3, label %9, label %4, !dbg !2272

4:                                                ; preds = %2
  %5 = load i1, ptr @sig_mask_changed, align 1, !dbg !2273
  br i1 %5, label %14, label %6, !dbg !2275

6:                                                ; preds = %4
  %7 = tail call i32 @sigemptyset(ptr noundef nonnull @block_signals) #40, !dbg !2276
  %8 = tail call i32 @sigemptyset(ptr noundef nonnull @unblock_signals) #40, !dbg !2278
  br label %14, !dbg !2279

9:                                                ; preds = %2
  %10 = select i1 %1, ptr @block_signals, ptr @unblock_signals, !dbg !2280
  %11 = tail call i32 @sigfillset(ptr noundef nonnull %10) #40, !dbg !2282
  %12 = select i1 %1, ptr @unblock_signals, ptr @block_signals, !dbg !2283
  %13 = tail call i32 @sigemptyset(ptr noundef nonnull %12) #40, !dbg !2284
  store i1 true, ptr @sig_mask_changed, align 1, !dbg !2285
  br label %46, !dbg !2286

14:                                               ; preds = %4, %6
  store i1 true, ptr @sig_mask_changed, align 1, !dbg !2285
  %15 = tail call noalias nonnull ptr @xstrdup(ptr noundef nonnull %0) #40, !dbg !2287
  call void @llvm.dbg.value(metadata ptr %15, metadata !2265, metadata !DIExpression()), !dbg !2269
  %16 = tail call ptr @strtok(ptr noundef nonnull %15, ptr noundef nonnull @.str.93) #40, !dbg !2288
  call void @llvm.dbg.value(metadata ptr %16, metadata !2266, metadata !DIExpression()), !dbg !2269
  %17 = icmp eq ptr %16, null, !dbg !2289
  br i1 %17, label %45, label %18, !dbg !2289

18:                                               ; preds = %14
  %19 = select i1 %1, ptr @block_signals, ptr @unblock_signals
  %20 = select i1 %1, ptr @unblock_signals, ptr @block_signals
  br label %21, !dbg !2289

21:                                               ; preds = %18, %42
  %22 = phi ptr [ %16, %18 ], [ %43, %42 ]
  call void @llvm.dbg.value(metadata ptr %22, metadata !2266, metadata !DIExpression()), !dbg !2269
  %23 = tail call i32 @operand2sig(ptr noundef nonnull %22) #40, !dbg !2290
  call void @llvm.dbg.value(metadata i32 %23, metadata !2267, metadata !DIExpression()), !dbg !2291
  %24 = icmp eq i32 %23, 0, !dbg !2292
  br i1 %24, label %25, label %28, !dbg !2294

25:                                               ; preds = %21
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.94, i32 noundef 5) #40, !dbg !2295
  %27 = tail call ptr @quote(ptr noundef nonnull %22) #40, !dbg !2295
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %26, ptr noundef %27) #40, !dbg !2295
  br label %30, !dbg !2296

28:                                               ; preds = %21
  %29 = icmp slt i32 %23, 1, !dbg !2297
  br i1 %29, label %30, label %32, !dbg !2296

30:                                               ; preds = %28, %25
  %31 = load volatile i32, ptr @exit_failure, align 4, !dbg !2299, !tbaa !1148
  tail call void @usage(i32 noundef %31) #46, !dbg !2300
  unreachable, !dbg !2300

32:                                               ; preds = %28
  %33 = tail call i32 @sigaddset(ptr noundef nonnull %19, i32 noundef %23) #40, !dbg !2301
  %34 = icmp eq i32 %33, -1, !dbg !2303
  br i1 %34, label %35, label %40, !dbg !2304

35:                                               ; preds = %32
  br i1 %1, label %36, label %42, !dbg !2305

36:                                               ; preds = %35
  %37 = tail call ptr @__errno_location() #43, !dbg !2307
  %38 = load i32, ptr %37, align 4, !dbg !2307, !tbaa !1148
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.95, i32 noundef 5) #40, !dbg !2307
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %38, ptr noundef %39, i32 noundef %23) #40, !dbg !2307
  unreachable, !dbg !2307

40:                                               ; preds = %32
  %41 = tail call i32 @sigdelset(ptr noundef nonnull %20, i32 noundef %23) #40, !dbg !2309
  br label %42

42:                                               ; preds = %35, %40
  %43 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.93) #40, !dbg !2310
  call void @llvm.dbg.value(metadata ptr %43, metadata !2266, metadata !DIExpression()), !dbg !2269
  %44 = icmp eq ptr %43, null, !dbg !2289
  br i1 %44, label %45, label %21, !dbg !2289, !llvm.loop !2311

45:                                               ; preds = %42, %14
  tail call void @free(ptr noundef nonnull %15) #40, !dbg !2313
  br label %46, !dbg !2314

46:                                               ; preds = %9, %45
  ret void, !dbg !2314
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @check_start_new_arg(ptr noundef %0) unnamed_addr #10 !dbg !2315 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2317, metadata !DIExpression()), !dbg !2321
  %2 = getelementptr inbounds %struct.splitbuf, ptr %0, i64 0, i32 4, !dbg !2322
  %3 = load i8, ptr %2, align 4, !dbg !2322, !tbaa !1436, !range !1473, !noundef !1074
  %4 = icmp eq i8 %3, 0, !dbg !2322
  br i1 %4, label %57, label %5, !dbg !2323

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %0, metadata !1598, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 0, metadata !1599, metadata !DIExpression()), !dbg !2324
  %6 = load ptr, ptr %0, align 8, !dbg !2326, !tbaa !1426
  %7 = getelementptr inbounds %struct.splitbuf, ptr %0, i64 0, i32 1, !dbg !2327
  %8 = load i32, ptr %7, align 8, !dbg !2327, !tbaa !1430
  %9 = sext i32 %8 to i64, !dbg !2328
  %10 = getelementptr inbounds ptr, ptr %6, i64 %9, !dbg !2328
  %11 = load ptr, ptr %10, align 8, !dbg !2328, !tbaa !1065
  %12 = ptrtoint ptr %11 to i64, !dbg !2329
  call void @llvm.dbg.value(metadata i64 %12, metadata !1600, metadata !DIExpression()), !dbg !2324
  %13 = getelementptr inbounds %struct.splitbuf, ptr %0, i64 0, i32 2, !dbg !2330
  %14 = load i64, ptr %13, align 8, !dbg !2330, !tbaa !1432
  %15 = shl i64 %14, 3, !dbg !2331
  %16 = icmp ugt i64 %15, %12, !dbg !2332
  br i1 %16, label %24, label %17, !dbg !2333

17:                                               ; preds = %5
  call void @llvm.dbg.value(metadata ptr %0, metadata !1611, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i64 %14, metadata !1616, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i64 %12, metadata !1617, metadata !DIExpression()), !dbg !2334
  %18 = tail call nonnull ptr @xpalloc(ptr noundef nonnull %6, ptr noundef nonnull %13, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !2336
  store ptr %18, ptr %0, align 8, !dbg !2337, !tbaa !1426
  %19 = load i64, ptr %13, align 8, !dbg !2338, !tbaa !1432
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19, !dbg !2339
  %21 = getelementptr inbounds ptr, ptr %18, i64 %14, !dbg !2340
  call void @llvm.dbg.value(metadata ptr %20, metadata !1625, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata ptr %21, metadata !1630, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %12, metadata !1631, metadata !DIExpression()), !dbg !2341
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %20, ptr noundef nonnull align 1 %21, i64 noundef %12, i1 noundef false) #40, !dbg !2343
  %22 = load ptr, ptr %0, align 8, !dbg !2344, !tbaa !1426
  %23 = load i64, ptr %13, align 8, !dbg !2345, !tbaa !1432
  br label %24, !dbg !2346

24:                                               ; preds = %5, %17
  %25 = phi i64 [ %23, %17 ], [ %14, %5 ], !dbg !2345
  %26 = phi ptr [ %22, %17 ], [ %6, %5 ], !dbg !2344
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25, !dbg !2347
  %28 = getelementptr inbounds i8, ptr %27, i64 %12, !dbg !2348
  store i8 0, ptr %28, align 1, !dbg !2349, !tbaa !1157
  %29 = add nsw i64 %12, 1, !dbg !2350
  %30 = inttoptr i64 %29 to ptr, !dbg !2351
  %31 = load ptr, ptr %0, align 8, !dbg !2352, !tbaa !1426
  %32 = load i32, ptr %7, align 8, !dbg !2353, !tbaa !1430
  %33 = sext i32 %32 to i64, !dbg !2354
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33, !dbg !2354
  store ptr %30, ptr %34, align 8, !dbg !2355, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %32, metadata !2318, metadata !DIExpression()), !dbg !2356
  %35 = load i64, ptr %13, align 8, !dbg !2357, !tbaa !1432
  %36 = getelementptr inbounds %struct.splitbuf, ptr %0, i64 0, i32 3, !dbg !2359
  %37 = load i32, ptr %36, align 8, !dbg !2359, !tbaa !1434
  %38 = add i32 %32, 1, !dbg !2360
  %39 = add i32 %38, %37, !dbg !2361
  %40 = sext i32 %39 to i64, !dbg !2362
  %41 = icmp sgt i64 %35, %40, !dbg !2363
  br i1 %41, label %51, label %42, !dbg !2364

42:                                               ; preds = %24
  call void @llvm.dbg.value(metadata ptr %0, metadata !1611, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %35, metadata !1616, metadata !DIExpression()), !dbg !2365
  %43 = load ptr, ptr %0, align 8, !dbg !2367, !tbaa !1426
  %44 = getelementptr inbounds ptr, ptr %43, i64 %33, !dbg !2368
  %45 = load ptr, ptr %44, align 8, !dbg !2368, !tbaa !1065
  %46 = ptrtoint ptr %45 to i64, !dbg !2369
  call void @llvm.dbg.value(metadata i64 %46, metadata !1617, metadata !DIExpression()), !dbg !2365
  %47 = tail call nonnull ptr @xpalloc(ptr noundef %43, ptr noundef nonnull %13, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !2370
  store ptr %47, ptr %0, align 8, !dbg !2371, !tbaa !1426
  %48 = load i64, ptr %13, align 8, !dbg !2372, !tbaa !1432
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48, !dbg !2373
  %50 = getelementptr inbounds ptr, ptr %47, i64 %35, !dbg !2374
  call void @llvm.dbg.value(metadata ptr %49, metadata !1625, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata ptr %50, metadata !1630, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i64 %46, metadata !1631, metadata !DIExpression()), !dbg !2375
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %49, ptr noundef nonnull align 1 %50, i64 noundef %46, i1 noundef false) #40, !dbg !2377
  br label %51, !dbg !2378

51:                                               ; preds = %42, %24
  %52 = load ptr, ptr %0, align 8, !dbg !2379, !tbaa !1426
  %53 = getelementptr inbounds ptr, ptr %52, i64 %33, !dbg !2380
  %54 = load ptr, ptr %53, align 8, !dbg !2380, !tbaa !1065
  %55 = sext i32 %38 to i64, !dbg !2381
  %56 = getelementptr inbounds ptr, ptr %52, i64 %55, !dbg !2381
  store ptr %54, ptr %56, align 8, !dbg !2382, !tbaa !1065
  store i32 %38, ptr %7, align 8, !dbg !2383, !tbaa !1430
  store i8 0, ptr %2, align 4, !dbg !2384, !tbaa !1436
  br label %57, !dbg !2385

57:                                               ; preds = %51, %1
  ret void, !dbg !2386
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2387 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nofree nounwind
declare !dbg !2390 noundef i32 @unsetenv(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !2393 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2397 i32 @putenv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2400 i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !2408 i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #15

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
define dso_local i32 @operand2sig(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2440 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2442, metadata !DIExpression()), !dbg !2453
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #40, !dbg !2454
  %4 = load i8, ptr %0, align 1, !dbg !2455, !tbaa !1157
  %5 = sext i8 %4 to i32, !dbg !2455
  call void @llvm.dbg.value(metadata i32 %5, metadata !2456, metadata !DIExpression()), !dbg !2459
  %6 = add nsw i32 %5, -48, !dbg !2461
  %7 = icmp ult i32 %6, 10, !dbg !2461
  br i1 %7, label %8, label %36, !dbg !2462

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #40, !dbg !2463
  %9 = tail call ptr @__errno_location() #43, !dbg !2464
  store i32 0, ptr %9, align 4, !dbg !2465, !tbaa !1148
  call void @llvm.dbg.value(metadata ptr %3, metadata !2444, metadata !DIExpression(DW_OP_deref)), !dbg !2466
  %10 = call i64 @strtol(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 10) #40, !dbg !2467
  %11 = freeze i64 %10, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %10, metadata !2447, metadata !DIExpression()), !dbg !2466
  %12 = trunc i64 %11 to i32, !dbg !2468
  call void @llvm.dbg.value(metadata i32 %12, metadata !2448, metadata !DIExpression()), !dbg !2466
  %13 = load ptr, ptr %3, align 8, !dbg !2469, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %13, metadata !2444, metadata !DIExpression()), !dbg !2466
  %14 = icmp eq ptr %13, %0, !dbg !2470
  br i1 %14, label %27, label %15, !dbg !2471

15:                                               ; preds = %8
  %16 = load i8, ptr %13, align 1, !dbg !2472, !tbaa !1157
  %17 = icmp eq i8 %16, 0, !dbg !2472
  br i1 %17, label %18, label %27, !dbg !2473

18:                                               ; preds = %15
  %19 = load i32, ptr %9, align 4, !dbg !2474, !tbaa !1148
  %20 = icmp eq i32 %19, 0, !dbg !2474
  %21 = add i64 %11, 2147483648
  %22 = icmp ult i64 %21, 4294967296
  %23 = and i1 %22, %20, !dbg !2475
  br i1 %23, label %24, label %27, !dbg !2475

24:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i32 %12, metadata !2443, metadata !DIExpression()), !dbg !2453
  %25 = icmp eq i32 %12, -1, !dbg !2476
  %26 = icmp slt i32 %12, 255, !dbg !2478
  br i1 %26, label %27, label %30, !dbg !2478

27:                                               ; preds = %8, %15, %18, %24
  %28 = phi i1 [ %25, %24 ], [ true, %18 ], [ true, %15 ], [ true, %8 ]
  %29 = phi i32 [ %12, %24 ], [ -1, %18 ], [ -1, %15 ], [ -1, %8 ]
  br label %30, !dbg !2478

30:                                               ; preds = %24, %27
  %31 = phi i1 [ %28, %27 ], [ %25, %24 ]
  %32 = phi i32 [ %29, %27 ], [ %12, %24 ]
  %33 = phi i32 [ 127, %27 ], [ 255, %24 ]
  %34 = select i1 %31, i32 -1, i32 %33, !dbg !2478
  %35 = and i32 %34, %32, !dbg !2478
  store i32 %35, ptr %2, align 4, !dbg !2466, !tbaa !1148
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40, !dbg !2479
  br label %73, !dbg !2480

36:                                               ; preds = %1
  %37 = tail call noalias nonnull ptr @xstrdup(ptr noundef nonnull %0) #40, !dbg !2481
  call void @llvm.dbg.value(metadata ptr %37, metadata !2449, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata ptr %37, metadata !2451, metadata !DIExpression()), !dbg !2483
  %38 = load i8, ptr %37, align 1, !dbg !2484, !tbaa !1157
  %39 = icmp eq i8 %38, 0, !dbg !2486
  br i1 %39, label %40, label %43, !dbg !2486

40:                                               ; preds = %51, %36
  call void @llvm.dbg.value(metadata ptr %2, metadata !2443, metadata !DIExpression(DW_OP_deref)), !dbg !2453
  %41 = call i32 @str2sig(ptr noundef nonnull %37, ptr noundef nonnull %2) #40, !dbg !2487
  %42 = icmp eq i32 %41, 0, !dbg !2489
  br i1 %42, label %71, label %55, !dbg !2490

43:                                               ; preds = %36, %51
  %44 = phi i8 [ %53, %51 ], [ %38, %36 ]
  %45 = phi ptr [ %52, %51 ], [ %37, %36 ]
  call void @llvm.dbg.value(metadata ptr %45, metadata !2451, metadata !DIExpression()), !dbg !2483
  %46 = sext i8 %44 to i32, !dbg !2491
  %47 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.48, i32 %46, i64 27), !dbg !2493
  %48 = icmp eq ptr %47, null, !dbg !2493
  br i1 %48, label %51, label %49, !dbg !2494

49:                                               ; preds = %43
  %50 = add i8 %44, -32, !dbg !2495
  store i8 %50, ptr %45, align 1, !dbg !2495, !tbaa !1157
  br label %51, !dbg !2496

51:                                               ; preds = %43, %49
  %52 = getelementptr inbounds i8, ptr %45, i64 1, !dbg !2497
  call void @llvm.dbg.value(metadata ptr %52, metadata !2451, metadata !DIExpression()), !dbg !2483
  %53 = load i8, ptr %52, align 1, !dbg !2484, !tbaa !1157
  %54 = icmp eq i8 %53, 0, !dbg !2486
  br i1 %54, label %40, label %43, !dbg !2486, !llvm.loop !2498

55:                                               ; preds = %40
  %56 = load i8, ptr %37, align 1, !dbg !2500, !tbaa !1157
  %57 = icmp eq i8 %56, 83, !dbg !2501
  br i1 %57, label %58, label %70, !dbg !2502

58:                                               ; preds = %55
  %59 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !2503
  %60 = load i8, ptr %59, align 1, !dbg !2503, !tbaa !1157
  %61 = icmp eq i8 %60, 73, !dbg !2504
  br i1 %61, label %62, label %70, !dbg !2505

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %37, i64 2, !dbg !2506
  %64 = load i8, ptr %63, align 1, !dbg !2506, !tbaa !1157
  %65 = icmp eq i8 %64, 71, !dbg !2507
  br i1 %65, label %66, label %70, !dbg !2508

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %37, i64 3, !dbg !2509
  call void @llvm.dbg.value(metadata ptr %2, metadata !2443, metadata !DIExpression(DW_OP_deref)), !dbg !2453
  %68 = call i32 @str2sig(ptr noundef nonnull %67, ptr noundef nonnull %2) #40, !dbg !2510
  %69 = icmp eq i32 %68, 0, !dbg !2511
  br i1 %69, label %71, label %70, !dbg !2512

70:                                               ; preds = %66, %62, %58, %55
  call void @llvm.dbg.value(metadata i32 -1, metadata !2443, metadata !DIExpression()), !dbg !2453
  store i32 -1, ptr %2, align 4, !dbg !2513, !tbaa !1148
  br label %71, !dbg !2514

71:                                               ; preds = %70, %66, %40
  call void @free(ptr noundef nonnull %37) #40, !dbg !2515
  %72 = load i32, ptr %2, align 4, !dbg !2516, !tbaa !1148
  br label %73

73:                                               ; preds = %71, %30
  %74 = phi i32 [ %72, %71 ], [ %35, %30 ], !dbg !2516
  call void @llvm.dbg.value(metadata i32 %74, metadata !2443, metadata !DIExpression()), !dbg !2453
  %75 = icmp ugt i32 %74, 64, !dbg !2518
  br i1 %75, label %76, label %79, !dbg !2518

76:                                               ; preds = %73
  %77 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.49, i32 noundef 5) #40, !dbg !2519
  %78 = call ptr @quote(ptr noundef nonnull %0) #40, !dbg !2519
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %77, ptr noundef %78) #40, !dbg !2519
  br label %79, !dbg !2521

79:                                               ; preds = %73, %76
  %80 = phi i32 [ -1, %76 ], [ %74, %73 ], !dbg !2453
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #40, !dbg !2522
  ret i32 %80, !dbg !2522
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2523 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @c_isalnum(i32 noundef %0) local_unnamed_addr #18 !dbg !2527 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2529, metadata !DIExpression()), !dbg !2530
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
  ], !dbg !2531

2:                                                ; preds = %1
  br label %3, !dbg !2532

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !2534
  ret i1 %4, !dbg !2535
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @c_isalpha(i32 noundef %0) local_unnamed_addr #18 !dbg !2536 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2538, metadata !DIExpression()), !dbg !2539
  %2 = add i32 %0, -65, !dbg !2540
  %3 = icmp ult i32 %2, 58, !dbg !2540
  %4 = zext i32 %2 to i58, !dbg !2540
  %5 = lshr i58 -4227858433, %4, !dbg !2540
  %6 = and i58 %5, 1, !dbg !2540
  %7 = icmp ne i58 %6, 0, !dbg !2540
  %8 = select i1 %3, i1 %7, i1 false, !dbg !2540
  ret i1 %8, !dbg !2541
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @c_isascii(i32 noundef %0) local_unnamed_addr #18 !dbg !2542 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2544, metadata !DIExpression()), !dbg !2545
  %2 = icmp ult i32 %0, 128, !dbg !2546
  ret i1 %2, !dbg !2547
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @c_isblank(i32 noundef %0) local_unnamed_addr #18 !dbg !2548 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2550, metadata !DIExpression()), !dbg !2551
  %2 = icmp eq i32 %0, 32, !dbg !2552
  %3 = icmp eq i32 %0, 9, !dbg !2553
  %4 = or i1 %2, %3, !dbg !2553
  ret i1 %4, !dbg !2554
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @c_iscntrl(i32 noundef %0) local_unnamed_addr #18 !dbg !2555 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2557, metadata !DIExpression()), !dbg !2558
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
  ], !dbg !2559

2:                                                ; preds = %1
  br label %3, !dbg !2560

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !2562
  ret i1 %4, !dbg !2563
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @c_isdigit(i32 noundef %0) local_unnamed_addr #18 !dbg !2564 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2566, metadata !DIExpression()), !dbg !2567
  %2 = add i32 %0, -48, !dbg !2568
  %3 = icmp ult i32 %2, 10, !dbg !2568
  ret i1 %3, !dbg !2569
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @c_isgraph(i32 noundef %0) local_unnamed_addr #18 !dbg !2570 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2572, metadata !DIExpression()), !dbg !2573
  %2 = add i32 %0, -33, !dbg !2574
  %3 = icmp ult i32 %2, 94, !dbg !2574
  ret i1 %3, !dbg !2575
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @c_islower(i32 noundef %0) local_unnamed_addr #18 !dbg !2576 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2578, metadata !DIExpression()), !dbg !2579
  %2 = add i32 %0, -97, !dbg !2580
  %3 = icmp ult i32 %2, 26, !dbg !2580
  ret i1 %3, !dbg !2581
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @c_isprint(i32 noundef %0) local_unnamed_addr #18 !dbg !2582 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2584, metadata !DIExpression()), !dbg !2585
  %2 = add i32 %0, -32, !dbg !2586
  %3 = icmp ult i32 %2, 95, !dbg !2586
  ret i1 %3, !dbg !2587
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @c_ispunct(i32 noundef %0) local_unnamed_addr #18 !dbg !2588 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2590, metadata !DIExpression()), !dbg !2591
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
  ], !dbg !2592

2:                                                ; preds = %1
  br label %3, !dbg !2593

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !2595
  ret i1 %4, !dbg !2596
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @c_isspace(i32 noundef %0) local_unnamed_addr #18 !dbg !2597 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2599, metadata !DIExpression()), !dbg !2600
  %2 = icmp ult i32 %0, 33, !dbg !2601
  %3 = zext i32 %0 to i33, !dbg !2601
  %4 = lshr i33 -4294951424, %3, !dbg !2601
  %5 = and i33 %4, 1, !dbg !2601
  %6 = icmp ne i33 %5, 0, !dbg !2601
  %7 = select i1 %2, i1 %6, i1 false, !dbg !2601
  ret i1 %7, !dbg !2602
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @c_isupper(i32 noundef %0) local_unnamed_addr #18 !dbg !2603 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2605, metadata !DIExpression()), !dbg !2606
  %2 = add i32 %0, -65, !dbg !2607
  %3 = icmp ult i32 %2, 26, !dbg !2607
  ret i1 %3, !dbg !2608
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @c_isxdigit(i32 noundef %0) local_unnamed_addr #18 !dbg !2609 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2611, metadata !DIExpression()), !dbg !2612
  %2 = add i32 %0, -48, !dbg !2613
  %3 = icmp ult i32 %2, 55, !dbg !2613
  %4 = zext i32 %2 to i55, !dbg !2613
  %5 = lshr i55 -562949945162753, %4, !dbg !2613
  %6 = and i55 %5, 1, !dbg !2613
  %7 = icmp ne i55 %6, 0, !dbg !2613
  %8 = select i1 %3, i1 %7, i1 false, !dbg !2613
  ret i1 %8, !dbg !2614
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @c_tolower(i32 noundef %0) local_unnamed_addr #18 !dbg !2615 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2619, metadata !DIExpression()), !dbg !2620
  %2 = add i32 %0, -65, !dbg !2621
  %3 = icmp ult i32 %2, 26, !dbg !2621
  %4 = add nsw i32 %0, 32, !dbg !2621
  %5 = select i1 %3, i32 %4, i32 %0, !dbg !2621
  ret i32 %5, !dbg !2622
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @c_toupper(i32 noundef %0) local_unnamed_addr #18 !dbg !2623 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2625, metadata !DIExpression()), !dbg !2626
  %2 = add i32 %0, -97, !dbg !2627
  %3 = icmp ult i32 %2, 26, !dbg !2627
  %4 = add nsw i32 %0, -32, !dbg !2627
  %5 = select i1 %3, i32 %4, i32 %0, !dbg !2627
  ret i32 %5, !dbg !2628
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #19 !dbg !2629 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2631, metadata !DIExpression()), !dbg !2632
  store ptr %0, ptr @file_name, align 8, !dbg !2633, !tbaa !1065
  ret void, !dbg !2634
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #19 !dbg !2635 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2639, metadata !DIExpression()), !dbg !2640
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !2641, !tbaa !2642
  ret void, !dbg !2643
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2644 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2649, !tbaa !1065
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !2650
  %3 = icmp eq i32 %2, 0, !dbg !2651
  br i1 %3, label %22, label %4, !dbg !2652

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !2653, !tbaa !2642, !range !1473, !noundef !1074
  %6 = icmp eq i8 %5, 0, !dbg !2653
  br i1 %6, label %11, label %7, !dbg !2654

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !2655
  %9 = load i32, ptr %8, align 4, !dbg !2655, !tbaa !1148
  %10 = icmp eq i32 %9, 32, !dbg !2656
  br i1 %10, label %22, label %11, !dbg !2657

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.1.58, i32 noundef 5) #40, !dbg !2658
  call void @llvm.dbg.value(metadata ptr %12, metadata !2646, metadata !DIExpression()), !dbg !2659
  %13 = load ptr, ptr @file_name, align 8, !dbg !2660, !tbaa !1065
  %14 = icmp eq ptr %13, null, !dbg !2660
  %15 = tail call ptr @__errno_location() #43, !dbg !2662
  %16 = load i32, ptr %15, align 4, !dbg !2662, !tbaa !1148
  br i1 %14, label %19, label %17, !dbg !2663

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !2664
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.59, ptr noundef %18, ptr noundef %12) #40, !dbg !2664
  br label %20, !dbg !2664

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.60, ptr noundef %12) #40, !dbg !2665
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2666, !tbaa !1148
  tail call void @_exit(i32 noundef %21) #42, !dbg !2667
  unreachable, !dbg !2667

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2668, !tbaa !1065
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !2670
  %25 = icmp eq i32 %24, 0, !dbg !2671
  br i1 %25, label %28, label %26, !dbg !2672

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2673, !tbaa !1148
  tail call void @_exit(i32 noundef %27) #42, !dbg !2674
  unreachable, !dbg !2674

28:                                               ; preds = %22
  ret void, !dbg !2675
}

; Function Attrs: noreturn
declare !dbg !2676 void @_exit(i32 noundef) local_unnamed_addr #20

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #21 !dbg !2677 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2681, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i32 %1, metadata !2682, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %2, metadata !2683, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %3, metadata !2684, metadata !DIExpression()), !dbg !2685
  tail call fastcc void @flush_stdout(), !dbg !2686
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2687, !tbaa !1065
  %6 = icmp eq ptr %5, null, !dbg !2687
  br i1 %6, label %8, label %7, !dbg !2689

7:                                                ; preds = %4
  tail call void %5() #40, !dbg !2690
  br label %12, !dbg !2690

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2691, !tbaa !1065
  %10 = tail call ptr @getprogname() #41, !dbg !2691
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.72, ptr noundef %10) #40, !dbg !2691
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2693
  ret void, !dbg !2694
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2695 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2697, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i32 1, metadata !2699, metadata !DIExpression()), !dbg !2702
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !2705
  %2 = icmp slt i32 %1, 0, !dbg !2706
  br i1 %2, label %6, label %3, !dbg !2707

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2708, !tbaa !1065
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !2708
  br label %6, !dbg !2708

6:                                                ; preds = %3, %0
  ret void, !dbg !2709
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2710 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2712, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i32 %1, metadata !2713, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata ptr %2, metadata !2714, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata ptr %3, metadata !2715, metadata !DIExpression()), !dbg !2716
  %6 = load ptr, ptr @stderr, align 8, !dbg !2717, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %6, metadata !2718, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata ptr %2, metadata !2758, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata ptr %3, metadata !2759, metadata !DIExpression()), !dbg !2760
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #40, !dbg !2762
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2763, !tbaa !1148
  %9 = add i32 %8, 1, !dbg !2763
  store i32 %9, ptr @error_message_count, align 4, !dbg !2763, !tbaa !1148
  %10 = icmp eq i32 %1, 0, !dbg !2764
  br i1 %10, label %20, label %11, !dbg !2766

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2767, metadata !DIExpression()), !dbg !2775
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !2777
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2771, metadata !DIExpression()), !dbg !2778
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !2779
  call void @llvm.dbg.value(metadata ptr %12, metadata !2770, metadata !DIExpression()), !dbg !2775
  %13 = icmp eq ptr %12, null, !dbg !2780
  br i1 %13, label %14, label %16, !dbg !2782

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.73, ptr noundef nonnull @.str.5.74, i32 noundef 5) #40, !dbg !2783
  call void @llvm.dbg.value(metadata ptr %15, metadata !2770, metadata !DIExpression()), !dbg !2775
  br label %16, !dbg !2784

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2775
  call void @llvm.dbg.value(metadata ptr %17, metadata !2770, metadata !DIExpression()), !dbg !2775
  %18 = load ptr, ptr @stderr, align 8, !dbg !2785, !tbaa !1065
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.75, ptr noundef %17) #40, !dbg !2785
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !2786
  br label %20, !dbg !2787

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2788, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 10, metadata !2789, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata ptr %21, metadata !2795, metadata !DIExpression()), !dbg !2796
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2798
  %23 = load ptr, ptr %22, align 8, !dbg !2798, !tbaa !2799
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2798
  %25 = load ptr, ptr %24, align 8, !dbg !2798, !tbaa !2801
  %26 = icmp ult ptr %23, %25, !dbg !2798
  br i1 %26, label %29, label %27, !dbg !2798, !prof !2802

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #40, !dbg !2798
  br label %31, !dbg !2798

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2798
  store ptr %30, ptr %22, align 8, !dbg !2798, !tbaa !2799
  store i8 10, ptr %23, align 1, !dbg !2798, !tbaa !1157
  br label %31, !dbg !2798

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2803, !tbaa !1065
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #40, !dbg !2803
  %34 = icmp eq i32 %0, 0, !dbg !2804
  br i1 %34, label %36, label %35, !dbg !2806

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #42, !dbg !2807
  unreachable, !dbg !2807

36:                                               ; preds = %31
  ret void, !dbg !2808
}

declare !dbg !2809 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2812 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2815 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2818 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2821 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2825 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2829, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i32 %1, metadata !2830, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata ptr %2, metadata !2831, metadata !DIExpression()), !dbg !2838
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #40, !dbg !2839
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2832, metadata !DIExpression()), !dbg !2840
  call void @llvm.va_start(ptr nonnull %4), !dbg !2841
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #47, !dbg !2842
  call void @llvm.va_end(ptr nonnull %4), !dbg !2843
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #40, !dbg !2844
  ret void, !dbg !2844
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #22

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #21 !dbg !676 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !688, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 %1, metadata !689, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata ptr %2, metadata !690, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 %3, metadata !691, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata ptr %4, metadata !692, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata ptr %5, metadata !693, metadata !DIExpression()), !dbg !2845
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2846, !tbaa !1148
  %8 = icmp eq i32 %7, 0, !dbg !2846
  br i1 %8, label %23, label %9, !dbg !2848

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2849, !tbaa !1148
  %11 = icmp eq i32 %10, %3, !dbg !2852
  br i1 %11, label %12, label %22, !dbg !2853

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2854, !tbaa !1065
  %14 = icmp eq ptr %13, %2, !dbg !2855
  br i1 %14, label %36, label %15, !dbg !2856

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2857
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2858
  br i1 %18, label %19, label %22, !dbg !2858

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2859
  %21 = icmp eq i32 %20, 0, !dbg !2860
  br i1 %21, label %36, label %22, !dbg !2861

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2862, !tbaa !1065
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2863, !tbaa !1148
  br label %23, !dbg !2864

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2865
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2866, !tbaa !1065
  %25 = icmp eq ptr %24, null, !dbg !2866
  br i1 %25, label %27, label %26, !dbg !2868

26:                                               ; preds = %23
  tail call void %24() #40, !dbg !2869
  br label %31, !dbg !2869

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2870, !tbaa !1065
  %29 = tail call ptr @getprogname() #41, !dbg !2870
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.78, ptr noundef %29) #40, !dbg !2870
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2872, !tbaa !1065
  %33 = icmp eq ptr %2, null, !dbg !2872
  %34 = select i1 %33, ptr @.str.3.79, ptr @.str.2.80, !dbg !2872
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #40, !dbg !2872
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2873
  br label %36, !dbg !2874

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2874
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2875 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2879, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i32 %1, metadata !2880, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata ptr %2, metadata !2881, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i32 %3, metadata !2882, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata ptr %4, metadata !2883, metadata !DIExpression()), !dbg !2885
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #40, !dbg !2886
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2884, metadata !DIExpression()), !dbg !2887
  call void @llvm.va_start(ptr nonnull %6), !dbg !2888
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #47, !dbg !2889
  call void @llvm.va_end(ptr nonnull %6), !dbg !2890
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #40, !dbg !2891
  ret void, !dbg !2891
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #23 !dbg !2892 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2895, !tbaa !1065
  ret ptr %1, !dbg !2896
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #24 !dbg !2897 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2899, metadata !DIExpression()), !dbg !2902
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2903
  call void @llvm.dbg.value(metadata ptr %2, metadata !2900, metadata !DIExpression()), !dbg !2902
  %3 = icmp eq ptr %2, null, !dbg !2904
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2904
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2904
  call void @llvm.dbg.value(metadata ptr %5, metadata !2901, metadata !DIExpression()), !dbg !2902
  %6 = ptrtoint ptr %5 to i64, !dbg !2905
  %7 = ptrtoint ptr %0 to i64, !dbg !2905
  %8 = sub i64 %6, %7, !dbg !2905
  %9 = icmp sgt i64 %8, 6, !dbg !2907
  br i1 %9, label %10, label %19, !dbg !2908

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2909
  call void @llvm.dbg.value(metadata ptr %11, metadata !2910, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata ptr @.str.121, metadata !2915, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i64 7, metadata !2916, metadata !DIExpression()), !dbg !2917
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.121, i64 7), !dbg !2919
  %13 = icmp eq i32 %12, 0, !dbg !2920
  br i1 %13, label %14, label %19, !dbg !2921

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2899, metadata !DIExpression()), !dbg !2902
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.122, i64 noundef 3) #41, !dbg !2922
  %16 = icmp eq i32 %15, 0, !dbg !2925
  %17 = select i1 %16, i64 3, i64 0, !dbg !2926
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2926
  br label %19, !dbg !2926

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2902
  call void @llvm.dbg.value(metadata ptr %21, metadata !2901, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata ptr %20, metadata !2899, metadata !DIExpression()), !dbg !2902
  store ptr %20, ptr @program_name, align 8, !dbg !2927, !tbaa !1065
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2928, !tbaa !1065
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2929, !tbaa !1065
  ret void, !dbg !2930
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2931 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !727 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !734, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %1, metadata !735, metadata !DIExpression()), !dbg !2932
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2933
  call void @llvm.dbg.value(metadata ptr %5, metadata !736, metadata !DIExpression()), !dbg !2932
  %6 = icmp eq ptr %5, %0, !dbg !2934
  br i1 %6, label %7, label %14, !dbg !2936

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2937
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2938
  call void @llvm.dbg.declare(metadata ptr %4, metadata !742, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata ptr %4, metadata !2940, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata ptr %4, metadata !2949, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i32 0, metadata !2954, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i64 8, metadata !2955, metadata !DIExpression()), !dbg !2956
  store i64 0, ptr %4, align 8, !dbg !2958
  call void @llvm.dbg.value(metadata ptr %3, metadata !737, metadata !DIExpression(DW_OP_deref)), !dbg !2932
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2959
  %9 = icmp eq i64 %8, 2, !dbg !2961
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !737, metadata !DIExpression()), !dbg !2932
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2962
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2932
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2963
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2963
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2932
  ret ptr %15, !dbg !2963
}

; Function Attrs: nounwind
declare !dbg !2964 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2970 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2975, metadata !DIExpression()), !dbg !2978
  %2 = tail call ptr @__errno_location() #43, !dbg !2979
  %3 = load i32, ptr %2, align 4, !dbg !2979, !tbaa !1148
  call void @llvm.dbg.value(metadata i32 %3, metadata !2976, metadata !DIExpression()), !dbg !2978
  %4 = icmp eq ptr %0, null, !dbg !2980
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2980
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #48, !dbg !2981
  call void @llvm.dbg.value(metadata ptr %6, metadata !2977, metadata !DIExpression()), !dbg !2978
  store i32 %3, ptr %2, align 4, !dbg !2982, !tbaa !1148
  ret ptr %6, !dbg !2983
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #25 !dbg !2984 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2990, metadata !DIExpression()), !dbg !2991
  %2 = icmp eq ptr %0, null, !dbg !2992
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2992
  %4 = load i32, ptr %3, align 8, !dbg !2993, !tbaa !2994
  ret i32 %4, !dbg !2996
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2997 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3001, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i32 %1, metadata !3002, metadata !DIExpression()), !dbg !3003
  %3 = icmp eq ptr %0, null, !dbg !3004
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3004
  store i32 %1, ptr %4, align 8, !dbg !3005, !tbaa !2994
  ret void, !dbg !3006
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #27 !dbg !3007 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3011, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8 %1, metadata !3012, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i32 %2, metadata !3013, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8 %1, metadata !3014, metadata !DIExpression()), !dbg !3019
  %4 = icmp eq ptr %0, null, !dbg !3020
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3020
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3021
  %7 = lshr i8 %1, 5, !dbg !3022
  %8 = zext i8 %7 to i64, !dbg !3022
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !3023
  call void @llvm.dbg.value(metadata ptr %9, metadata !3015, metadata !DIExpression()), !dbg !3019
  %10 = and i8 %1, 31, !dbg !3024
  %11 = zext i8 %10 to i32, !dbg !3024
  call void @llvm.dbg.value(metadata i32 %11, metadata !3017, metadata !DIExpression()), !dbg !3019
  %12 = load i32, ptr %9, align 4, !dbg !3025, !tbaa !1148
  %13 = lshr i32 %12, %11, !dbg !3026
  %14 = and i32 %13, 1, !dbg !3027
  call void @llvm.dbg.value(metadata i32 %14, metadata !3018, metadata !DIExpression()), !dbg !3019
  %15 = xor i32 %13, %2, !dbg !3028
  %16 = and i32 %15, 1, !dbg !3028
  %17 = shl nuw i32 %16, %11, !dbg !3029
  %18 = xor i32 %17, %12, !dbg !3030
  store i32 %18, ptr %9, align 4, !dbg !3030, !tbaa !1148
  ret i32 %14, !dbg !3031
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #27 !dbg !3032 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3036, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i32 %1, metadata !3037, metadata !DIExpression()), !dbg !3039
  %3 = icmp eq ptr %0, null, !dbg !3040
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3042
  call void @llvm.dbg.value(metadata ptr %4, metadata !3036, metadata !DIExpression()), !dbg !3039
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !3043
  %6 = load i32, ptr %5, align 4, !dbg !3043, !tbaa !3044
  call void @llvm.dbg.value(metadata i32 %6, metadata !3038, metadata !DIExpression()), !dbg !3039
  store i32 %1, ptr %5, align 4, !dbg !3045, !tbaa !3044
  ret i32 %6, !dbg !3046
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3047 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3051, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata ptr %1, metadata !3052, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata ptr %2, metadata !3053, metadata !DIExpression()), !dbg !3054
  %4 = icmp eq ptr %0, null, !dbg !3055
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3057
  call void @llvm.dbg.value(metadata ptr %5, metadata !3051, metadata !DIExpression()), !dbg !3054
  store i32 10, ptr %5, align 8, !dbg !3058, !tbaa !2994
  %6 = icmp ne ptr %1, null, !dbg !3059
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3061
  br i1 %8, label %10, label %9, !dbg !3061

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3062
  unreachable, !dbg !3062

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3063
  store ptr %1, ptr %11, align 8, !dbg !3064, !tbaa !3065
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3066
  store ptr %2, ptr %12, align 8, !dbg !3067, !tbaa !3068
  ret void, !dbg !3069
}

; Function Attrs: noreturn nounwind
declare !dbg !3070 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3071 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3075, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64 %1, metadata !3076, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata ptr %2, metadata !3077, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64 %3, metadata !3078, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata ptr %4, metadata !3079, metadata !DIExpression()), !dbg !3083
  %6 = icmp eq ptr %4, null, !dbg !3084
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !3084
  call void @llvm.dbg.value(metadata ptr %7, metadata !3080, metadata !DIExpression()), !dbg !3083
  %8 = tail call ptr @__errno_location() #43, !dbg !3085
  %9 = load i32, ptr %8, align 4, !dbg !3085, !tbaa !1148
  call void @llvm.dbg.value(metadata i32 %9, metadata !3081, metadata !DIExpression()), !dbg !3083
  %10 = load i32, ptr %7, align 8, !dbg !3086, !tbaa !2994
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !3087
  %12 = load i32, ptr %11, align 4, !dbg !3087, !tbaa !3044
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !3088
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !3089
  %15 = load ptr, ptr %14, align 8, !dbg !3089, !tbaa !3065
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !3090
  %17 = load ptr, ptr %16, align 8, !dbg !3090, !tbaa !3068
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !3091
  call void @llvm.dbg.value(metadata i64 %18, metadata !3082, metadata !DIExpression()), !dbg !3083
  store i32 %9, ptr %8, align 4, !dbg !3092, !tbaa !1148
  ret i64 %18, !dbg !3093
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !3094 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3100, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %1, metadata !3101, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata ptr %2, metadata !3102, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %3, metadata !3103, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i32 %4, metadata !3104, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i32 %5, metadata !3105, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata ptr %6, metadata !3106, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata ptr %7, metadata !3107, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata ptr %8, metadata !3108, metadata !DIExpression()), !dbg !3162
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !3163
  %17 = icmp eq i64 %16, 1, !dbg !3164
  call void @llvm.dbg.value(metadata i1 %17, metadata !3109, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3162
  call void @llvm.dbg.value(metadata i64 0, metadata !3110, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 0, metadata !3111, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata ptr null, metadata !3112, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 0, metadata !3113, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 0, metadata !3114, metadata !DIExpression()), !dbg !3162
  %18 = trunc i32 %5 to i8, !dbg !3165
  %19 = lshr i8 %18, 1, !dbg !3165
  %20 = and i8 %19, 1, !dbg !3165
  call void @llvm.dbg.value(metadata i8 %20, metadata !3115, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 0, metadata !3116, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 1, metadata !3117, metadata !DIExpression()), !dbg !3162
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !3166

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !3167
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !3168
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !3169
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !3170
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !3162
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !3171
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !3172
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !3101, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 %39, metadata !3117, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 %38, metadata !3116, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 %37, metadata !3115, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 %36, metadata !3114, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %35, metadata !3113, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata ptr %34, metadata !3112, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %33, metadata !3111, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 0, metadata !3110, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %32, metadata !3103, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata ptr %31, metadata !3108, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata ptr %30, metadata !3107, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i32 %29, metadata !3104, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.label(metadata !3155), !dbg !3173
  call void @llvm.dbg.value(metadata i8 0, metadata !3118, metadata !DIExpression()), !dbg !3162
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
  ], !dbg !3174

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !3115, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i32 5, metadata !3104, metadata !DIExpression()), !dbg !3162
  br label %115, !dbg !3175

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !3115, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i32 5, metadata !3104, metadata !DIExpression()), !dbg !3162
  %43 = and i8 %37, 1, !dbg !3176
  %44 = icmp eq i8 %43, 0, !dbg !3176
  br i1 %44, label %45, label %115, !dbg !3175

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3178
  br i1 %46, label %115, label %47, !dbg !3181

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !3178, !tbaa !1157
  br label %115, !dbg !3178

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.135, metadata !823, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 %29, metadata !824, metadata !DIExpression()), !dbg !3182
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.136, ptr noundef nonnull @.str.11.135, i32 noundef 5) #40, !dbg !3186
  call void @llvm.dbg.value(metadata ptr %49, metadata !825, metadata !DIExpression()), !dbg !3182
  %50 = icmp eq ptr %49, @.str.11.135, !dbg !3187
  br i1 %50, label %51, label %60, !dbg !3189

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !3190
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !3191
  call void @llvm.dbg.declare(metadata ptr %13, metadata !827, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata ptr %13, metadata !3193, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata ptr %13, metadata !3201, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 0, metadata !3204, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 8, metadata !3205, metadata !DIExpression()), !dbg !3206
  store i64 0, ptr %13, align 8, !dbg !3208
  call void @llvm.dbg.value(metadata ptr %12, metadata !826, metadata !DIExpression(DW_OP_deref)), !dbg !3182
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !3209
  %53 = icmp eq i64 %52, 3, !dbg !3211
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !826, metadata !DIExpression()), !dbg !3182
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !3212
  %57 = icmp eq i32 %29, 9, !dbg !3212
  %58 = select i1 %57, ptr @.str.10.137, ptr @.str.12.138, !dbg !3212
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !3212
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !3213
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !3213
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !3182
  call void @llvm.dbg.value(metadata ptr %61, metadata !3107, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata ptr @.str.12.138, metadata !823, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i32 %29, metadata !824, metadata !DIExpression()), !dbg !3214
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.136, ptr noundef nonnull @.str.12.138, i32 noundef 5) #40, !dbg !3216
  call void @llvm.dbg.value(metadata ptr %62, metadata !825, metadata !DIExpression()), !dbg !3214
  %63 = icmp eq ptr %62, @.str.12.138, !dbg !3217
  br i1 %63, label %64, label %73, !dbg !3218

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !3219
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !3220
  call void @llvm.dbg.declare(metadata ptr %11, metadata !827, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata ptr %11, metadata !3193, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata ptr %11, metadata !3201, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i32 0, metadata !3204, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i64 8, metadata !3205, metadata !DIExpression()), !dbg !3224
  store i64 0, ptr %11, align 8, !dbg !3226
  call void @llvm.dbg.value(metadata ptr %10, metadata !826, metadata !DIExpression(DW_OP_deref)), !dbg !3214
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !3227
  %66 = icmp eq i64 %65, 3, !dbg !3228
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !826, metadata !DIExpression()), !dbg !3214
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !3229
  %70 = icmp eq i32 %29, 9, !dbg !3229
  %71 = select i1 %70, ptr @.str.10.137, ptr @.str.12.138, !dbg !3229
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !3229
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !3230
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !3230
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !3108, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata ptr %74, metadata !3107, metadata !DIExpression()), !dbg !3162
  %76 = and i8 %37, 1, !dbg !3231
  %77 = icmp eq i8 %76, 0, !dbg !3231
  br i1 %77, label %78, label %93, !dbg !3232

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !3119, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i64 0, metadata !3110, metadata !DIExpression()), !dbg !3162
  %79 = load i8, ptr %74, align 1, !dbg !3234, !tbaa !1157
  %80 = icmp eq i8 %79, 0, !dbg !3236
  br i1 %80, label %93, label %81, !dbg !3236

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !3119, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i64 %84, metadata !3110, metadata !DIExpression()), !dbg !3162
  %85 = icmp ult i64 %84, %40, !dbg !3237
  br i1 %85, label %86, label %88, !dbg !3240

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !3237
  store i8 %82, ptr %87, align 1, !dbg !3237, !tbaa !1157
  br label %88, !dbg !3237

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !3240
  call void @llvm.dbg.value(metadata i64 %89, metadata !3110, metadata !DIExpression()), !dbg !3162
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !3241
  call void @llvm.dbg.value(metadata ptr %90, metadata !3119, metadata !DIExpression()), !dbg !3233
  %91 = load i8, ptr %90, align 1, !dbg !3234, !tbaa !1157
  %92 = icmp eq i8 %91, 0, !dbg !3236
  br i1 %92, label %93, label %81, !dbg !3236, !llvm.loop !3242

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !3244
  call void @llvm.dbg.value(metadata i64 %94, metadata !3110, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 1, metadata !3114, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata ptr %75, metadata !3112, metadata !DIExpression()), !dbg !3162
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #41, !dbg !3245
  call void @llvm.dbg.value(metadata i64 %95, metadata !3113, metadata !DIExpression()), !dbg !3162
  br label %115, !dbg !3246

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !3114, metadata !DIExpression()), !dbg !3162
  br label %97, !dbg !3247

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !3162
  call void @llvm.dbg.value(metadata i8 %98, metadata !3114, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 1, metadata !3115, metadata !DIExpression()), !dbg !3162
  br label %99, !dbg !3248

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !3170
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !3162
  call void @llvm.dbg.value(metadata i8 %101, metadata !3115, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 %100, metadata !3114, metadata !DIExpression()), !dbg !3162
  %102 = and i8 %101, 1, !dbg !3249
  %103 = icmp eq i8 %102, 0, !dbg !3249
  %104 = select i1 %103, i8 1, i8 %100, !dbg !3251
  br label %105, !dbg !3251

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !3162
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !3165
  call void @llvm.dbg.value(metadata i8 %107, metadata !3115, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 %106, metadata !3114, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i32 2, metadata !3104, metadata !DIExpression()), !dbg !3162
  %108 = and i8 %107, 1, !dbg !3252
  %109 = icmp eq i8 %108, 0, !dbg !3252
  br i1 %109, label %110, label %115, !dbg !3254

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !3255
  br i1 %111, label %115, label %112, !dbg !3258

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !3255, !tbaa !1157
  br label %115, !dbg !3255

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !3115, metadata !DIExpression()), !dbg !3162
  br label %115, !dbg !3259

114:                                              ; preds = %28
  call void @abort() #42, !dbg !3260
  unreachable, !dbg !3260

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !3244
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.137, %45 ], [ @.str.10.137, %47 ], [ @.str.10.137, %42 ], [ %34, %28 ], [ @.str.12.138, %110 ], [ @.str.12.138, %112 ], [ @.str.12.138, %105 ], [ @.str.10.137, %41 ], !dbg !3162
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !3162
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !3162
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !3162
  call void @llvm.dbg.value(metadata i8 %123, metadata !3115, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 %122, metadata !3114, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %121, metadata !3113, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata ptr %120, metadata !3112, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %119, metadata !3110, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata ptr %118, metadata !3108, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata ptr %117, metadata !3107, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i32 %116, metadata !3104, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 0, metadata !3124, metadata !DIExpression()), !dbg !3261
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
  br label %138, !dbg !3262

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !3244
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !3167
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !3171
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !3172
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !3263
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !3264
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !3101, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %145, metadata !3124, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i8 %144, metadata !3118, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 %143, metadata !3117, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 %142, metadata !3116, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %141, metadata !3111, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %140, metadata !3110, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %139, metadata !3103, metadata !DIExpression()), !dbg !3162
  %147 = icmp eq i64 %139, -1, !dbg !3265
  br i1 %147, label %148, label %152, !dbg !3266

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3267
  %150 = load i8, ptr %149, align 1, !dbg !3267, !tbaa !1157
  %151 = icmp eq i8 %150, 0, !dbg !3268
  br i1 %151, label %627, label %154, !dbg !3269

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !3270
  br i1 %153, label %627, label %154, !dbg !3269

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !3126, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8 0, metadata !3129, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8 0, metadata !3130, metadata !DIExpression()), !dbg !3271
  br i1 %129, label %155, label %170, !dbg !3272

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !3274
  %157 = select i1 %147, i1 %130, i1 false, !dbg !3275
  br i1 %157, label %158, label %160, !dbg !3275

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !3276
  call void @llvm.dbg.value(metadata i64 %159, metadata !3103, metadata !DIExpression()), !dbg !3162
  br label %160, !dbg !3277

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !3277
  call void @llvm.dbg.value(metadata i64 %161, metadata !3103, metadata !DIExpression()), !dbg !3162
  %162 = icmp ugt i64 %156, %161, !dbg !3278
  br i1 %162, label %170, label %163, !dbg !3279

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3280
  call void @llvm.dbg.value(metadata ptr %164, metadata !3281, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata ptr %120, metadata !3284, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %121, metadata !3285, metadata !DIExpression()), !dbg !3286
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !3288
  %166 = icmp ne i32 %165, 0, !dbg !3289
  %167 = select i1 %166, i1 true, i1 %132, !dbg !3290
  %168 = xor i1 %166, true, !dbg !3290
  %169 = zext i1 %168 to i8, !dbg !3290
  br i1 %167, label %170, label %688, !dbg !3290

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !3271
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !3271
  call void @llvm.dbg.value(metadata i8 %173, metadata !3126, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %171, metadata !3103, metadata !DIExpression()), !dbg !3162
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3291
  %175 = load i8, ptr %174, align 1, !dbg !3291, !tbaa !1157
  call void @llvm.dbg.value(metadata i8 %175, metadata !3131, metadata !DIExpression()), !dbg !3271
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
  ], !dbg !3292

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !3293

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !3294

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !3129, metadata !DIExpression()), !dbg !3271
  %179 = and i8 %144, 1, !dbg !3298
  %180 = icmp eq i8 %179, 0, !dbg !3298
  %181 = select i1 %133, i1 %180, i1 false, !dbg !3298
  br i1 %181, label %182, label %198, !dbg !3298

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !3300
  br i1 %183, label %184, label %186, !dbg !3304

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3300
  store i8 39, ptr %185, align 1, !dbg !3300, !tbaa !1157
  br label %186, !dbg !3300

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !3304
  call void @llvm.dbg.value(metadata i64 %187, metadata !3110, metadata !DIExpression()), !dbg !3162
  %188 = icmp ult i64 %187, %146, !dbg !3305
  br i1 %188, label %189, label %191, !dbg !3308

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !3305
  store i8 36, ptr %190, align 1, !dbg !3305, !tbaa !1157
  br label %191, !dbg !3305

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !3308
  call void @llvm.dbg.value(metadata i64 %192, metadata !3110, metadata !DIExpression()), !dbg !3162
  %193 = icmp ult i64 %192, %146, !dbg !3309
  br i1 %193, label %194, label %196, !dbg !3312

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !3309
  store i8 39, ptr %195, align 1, !dbg !3309, !tbaa !1157
  br label %196, !dbg !3309

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !3312
  call void @llvm.dbg.value(metadata i64 %197, metadata !3110, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 1, metadata !3118, metadata !DIExpression()), !dbg !3162
  br label %198, !dbg !3313

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !3162
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !3162
  call void @llvm.dbg.value(metadata i8 %200, metadata !3118, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %199, metadata !3110, metadata !DIExpression()), !dbg !3162
  %201 = icmp ult i64 %199, %146, !dbg !3314
  br i1 %201, label %202, label %204, !dbg !3317

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !3314
  store i8 92, ptr %203, align 1, !dbg !3314, !tbaa !1157
  br label %204, !dbg !3314

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !3317
  call void @llvm.dbg.value(metadata i64 %205, metadata !3110, metadata !DIExpression()), !dbg !3162
  br i1 %126, label %206, label %491, !dbg !3318

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !3320
  %208 = icmp ult i64 %207, %171, !dbg !3321
  br i1 %208, label %209, label %480, !dbg !3322

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !3323
  %211 = load i8, ptr %210, align 1, !dbg !3323, !tbaa !1157
  %212 = add i8 %211, -48, !dbg !3324
  %213 = icmp ult i8 %212, 10, !dbg !3324
  br i1 %213, label %214, label %480, !dbg !3324

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !3325
  br i1 %215, label %216, label %218, !dbg !3329

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !3325
  store i8 48, ptr %217, align 1, !dbg !3325, !tbaa !1157
  br label %218, !dbg !3325

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !3329
  call void @llvm.dbg.value(metadata i64 %219, metadata !3110, metadata !DIExpression()), !dbg !3162
  %220 = icmp ult i64 %219, %146, !dbg !3330
  br i1 %220, label %221, label %223, !dbg !3333

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !3330
  store i8 48, ptr %222, align 1, !dbg !3330, !tbaa !1157
  br label %223, !dbg !3330

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !3333
  call void @llvm.dbg.value(metadata i64 %224, metadata !3110, metadata !DIExpression()), !dbg !3162
  br label %480, !dbg !3334

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !3335

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !3336

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !3337

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !3339

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !3341
  %231 = icmp ult i64 %230, %171, !dbg !3342
  br i1 %231, label %232, label %480, !dbg !3343

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !3344
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !3345
  %235 = load i8, ptr %234, align 1, !dbg !3345, !tbaa !1157
  %236 = icmp eq i8 %235, 63, !dbg !3346
  br i1 %236, label %237, label %480, !dbg !3347

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !3348
  %239 = load i8, ptr %238, align 1, !dbg !3348, !tbaa !1157
  %240 = sext i8 %239 to i32, !dbg !3348
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
  ], !dbg !3349

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !3350

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !3131, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %230, metadata !3124, metadata !DIExpression()), !dbg !3261
  %243 = icmp ult i64 %140, %146, !dbg !3352
  br i1 %243, label %244, label %246, !dbg !3355

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3352
  store i8 63, ptr %245, align 1, !dbg !3352, !tbaa !1157
  br label %246, !dbg !3352

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !3355
  call void @llvm.dbg.value(metadata i64 %247, metadata !3110, metadata !DIExpression()), !dbg !3162
  %248 = icmp ult i64 %247, %146, !dbg !3356
  br i1 %248, label %249, label %251, !dbg !3359

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !3356
  store i8 34, ptr %250, align 1, !dbg !3356, !tbaa !1157
  br label %251, !dbg !3356

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !3359
  call void @llvm.dbg.value(metadata i64 %252, metadata !3110, metadata !DIExpression()), !dbg !3162
  %253 = icmp ult i64 %252, %146, !dbg !3360
  br i1 %253, label %254, label %256, !dbg !3363

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !3360
  store i8 34, ptr %255, align 1, !dbg !3360, !tbaa !1157
  br label %256, !dbg !3360

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !3363
  call void @llvm.dbg.value(metadata i64 %257, metadata !3110, metadata !DIExpression()), !dbg !3162
  %258 = icmp ult i64 %257, %146, !dbg !3364
  br i1 %258, label %259, label %261, !dbg !3367

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !3364
  store i8 63, ptr %260, align 1, !dbg !3364, !tbaa !1157
  br label %261, !dbg !3364

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !3367
  call void @llvm.dbg.value(metadata i64 %262, metadata !3110, metadata !DIExpression()), !dbg !3162
  br label %480, !dbg !3368

263:                                              ; preds = %170
  br label %274, !dbg !3369

264:                                              ; preds = %170
  br label %274, !dbg !3370

265:                                              ; preds = %170
  br label %272, !dbg !3371

266:                                              ; preds = %170
  br label %272, !dbg !3372

267:                                              ; preds = %170
  br label %274, !dbg !3373

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !3374

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !3375

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !3378

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !3380

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !3381
  call void @llvm.dbg.label(metadata !3156), !dbg !3382
  br i1 %134, label %274, label %670, !dbg !3383

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !3381
  call void @llvm.dbg.label(metadata !3158), !dbg !3385
  br i1 %125, label %535, label %491, !dbg !3386

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !3387

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !3388, !tbaa !1157
  %279 = icmp eq i8 %278, 0, !dbg !3390
  br i1 %279, label %280, label %480, !dbg !3391

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !3392
  br i1 %281, label %282, label %480, !dbg !3394

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !3130, metadata !DIExpression()), !dbg !3271
  br label %283, !dbg !3395

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !3271
  call void @llvm.dbg.value(metadata i8 %284, metadata !3130, metadata !DIExpression()), !dbg !3271
  br i1 %134, label %480, label %670, !dbg !3396

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !3116, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 1, metadata !3130, metadata !DIExpression()), !dbg !3271
  br i1 %133, label %286, label %480, !dbg !3398

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !3399

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !3402
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !3404
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !3404
  %292 = select i1 %290, i64 %146, i64 0, !dbg !3404
  call void @llvm.dbg.value(metadata i64 %292, metadata !3101, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %291, metadata !3111, metadata !DIExpression()), !dbg !3162
  %293 = icmp ult i64 %140, %292, !dbg !3405
  br i1 %293, label %294, label %296, !dbg !3408

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3405
  store i8 39, ptr %295, align 1, !dbg !3405, !tbaa !1157
  br label %296, !dbg !3405

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !3408
  call void @llvm.dbg.value(metadata i64 %297, metadata !3110, metadata !DIExpression()), !dbg !3162
  %298 = icmp ult i64 %297, %292, !dbg !3409
  br i1 %298, label %299, label %301, !dbg !3412

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !3409
  store i8 92, ptr %300, align 1, !dbg !3409, !tbaa !1157
  br label %301, !dbg !3409

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !3412
  call void @llvm.dbg.value(metadata i64 %302, metadata !3110, metadata !DIExpression()), !dbg !3162
  %303 = icmp ult i64 %302, %292, !dbg !3413
  br i1 %303, label %304, label %306, !dbg !3416

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !3413
  store i8 39, ptr %305, align 1, !dbg !3413, !tbaa !1157
  br label %306, !dbg !3413

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !3416
  call void @llvm.dbg.value(metadata i64 %307, metadata !3110, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 0, metadata !3118, metadata !DIExpression()), !dbg !3162
  br label %480, !dbg !3417

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !3418

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !3132, metadata !DIExpression()), !dbg !3419
  %310 = tail call ptr @__ctype_b_loc() #43, !dbg !3420
  %311 = load ptr, ptr %310, align 8, !dbg !3420, !tbaa !1065
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !3420
  %314 = load i16, ptr %313, align 2, !dbg !3420, !tbaa !1189
  %315 = lshr i16 %314, 14, !dbg !3422
  %316 = trunc i16 %315 to i8, !dbg !3422
  %317 = and i8 %316, 1, !dbg !3422
  call void @llvm.dbg.value(metadata i8 %317, metadata !3135, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i64 %171, metadata !3103, metadata !DIExpression()), !dbg !3162
  %318 = icmp eq i8 %317, 0, !dbg !3423
  call void @llvm.dbg.value(metadata i1 %318, metadata !3130, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3271
  br label %368, !dbg !3424

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !3425
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3136, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata ptr %14, metadata !3193, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata ptr %14, metadata !3201, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i32 0, metadata !3204, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i64 8, metadata !3205, metadata !DIExpression()), !dbg !3429
  store i64 0, ptr %14, align 8, !dbg !3431
  call void @llvm.dbg.value(metadata i64 0, metadata !3132, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i8 1, metadata !3135, metadata !DIExpression()), !dbg !3419
  %320 = icmp eq i64 %171, -1, !dbg !3432
  br i1 %320, label %321, label %323, !dbg !3434

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !3435
  call void @llvm.dbg.value(metadata i64 %322, metadata !3103, metadata !DIExpression()), !dbg !3162
  br label %323, !dbg !3436

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !3271
  call void @llvm.dbg.value(metadata i64 %324, metadata !3103, metadata !DIExpression()), !dbg !3162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !3437
  %325 = sub i64 %324, %145, !dbg !3438
  call void @llvm.dbg.value(metadata ptr %15, metadata !3139, metadata !DIExpression(DW_OP_deref)), !dbg !3439
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #40, !dbg !3440
  call void @llvm.dbg.value(metadata i64 %326, metadata !3143, metadata !DIExpression()), !dbg !3439
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !3441

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !3132, metadata !DIExpression()), !dbg !3419
  %328 = icmp ugt i64 %324, %145, !dbg !3442
  br i1 %328, label %331, label %329, !dbg !3444

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !3135, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i64 0, metadata !3132, metadata !DIExpression()), !dbg !3419
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3445
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3446
  call void @llvm.dbg.value(metadata i64 %324, metadata !3103, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i1 true, metadata !3130, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3271
  br label %368, !dbg !3424

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !3135, metadata !DIExpression()), !dbg !3419
  br label %360, !dbg !3447

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !3132, metadata !DIExpression()), !dbg !3419
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !3449
  %335 = load i8, ptr %334, align 1, !dbg !3449, !tbaa !1157
  %336 = icmp eq i8 %335, 0, !dbg !3444
  br i1 %336, label %363, label %337, !dbg !3450

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !3451
  call void @llvm.dbg.value(metadata i64 %338, metadata !3132, metadata !DIExpression()), !dbg !3419
  %339 = add i64 %338, %145, !dbg !3452
  %340 = icmp eq i64 %338, %325, !dbg !3442
  br i1 %340, label %363, label %331, !dbg !3444, !llvm.loop !3453

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !3454
  %344 = and i1 %343, %133, !dbg !3454
  call void @llvm.dbg.value(metadata i64 1, metadata !3144, metadata !DIExpression()), !dbg !3455
  br i1 %344, label %345, label %354, !dbg !3454

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !3144, metadata !DIExpression()), !dbg !3455
  %347 = add i64 %346, %145, !dbg !3456
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !3458
  %349 = load i8, ptr %348, align 1, !dbg !3458, !tbaa !1157
  %350 = sext i8 %349 to i32, !dbg !3458
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !3459

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !3460
  call void @llvm.dbg.value(metadata i64 %352, metadata !3144, metadata !DIExpression()), !dbg !3455
  %353 = icmp eq i64 %352, %326, !dbg !3461
  br i1 %353, label %354, label %345, !dbg !3462, !llvm.loop !3463

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !3465, !tbaa !1148
  call void @llvm.dbg.value(metadata i32 %355, metadata !3139, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i32 %355, metadata !3467, metadata !DIExpression()), !dbg !3475
  %356 = call i32 @iswprint(i32 noundef %355) #40, !dbg !3477
  %357 = icmp ne i32 %356, 0, !dbg !3478
  %358 = zext i1 %357 to i8, !dbg !3479
  call void @llvm.dbg.value(metadata i8 %358, metadata !3135, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i64 %326, metadata !3132, metadata !DIExpression()), !dbg !3419
  br label %363, !dbg !3480

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !3135, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i64 0, metadata !3132, metadata !DIExpression()), !dbg !3419
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3445
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3446
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !3135, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i64 0, metadata !3132, metadata !DIExpression()), !dbg !3419
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3445
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3446
  call void @llvm.dbg.value(metadata i64 %324, metadata !3103, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i1 %361, metadata !3130, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3271
  br label %368, !dbg !3424

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !3135, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i64 %364, metadata !3132, metadata !DIExpression()), !dbg !3419
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3445
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3446
  call void @llvm.dbg.value(metadata i64 %324, metadata !3103, metadata !DIExpression()), !dbg !3162
  %366 = icmp eq i8 %365, 0, !dbg !3423
  call void @llvm.dbg.value(metadata i1 %366, metadata !3130, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3271
  %367 = icmp ugt i64 %364, 1, !dbg !3481
  br i1 %367, label %374, label %368, !dbg !3424

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !3482
  br i1 %373, label %374, label %480, !dbg !3482

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !3483
  call void @llvm.dbg.value(metadata i64 %379, metadata !3152, metadata !DIExpression()), !dbg !3484
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !3485

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !3162
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !3263
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !3261
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !3271
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !3486
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !3271
  call void @llvm.dbg.value(metadata i8 %387, metadata !3131, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8 %386, metadata !3129, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8 %385, metadata !3126, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %384, metadata !3124, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i8 %383, metadata !3118, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %382, metadata !3110, metadata !DIExpression()), !dbg !3162
  br i1 %380, label %388, label %434, !dbg !3487

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !3492

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !3129, metadata !DIExpression()), !dbg !3271
  %390 = and i8 %383, 1, !dbg !3495
  %391 = icmp eq i8 %390, 0, !dbg !3495
  %392 = select i1 %133, i1 %391, i1 false, !dbg !3495
  br i1 %392, label %393, label %409, !dbg !3495

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !3497
  br i1 %394, label %395, label %397, !dbg !3501

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3497
  store i8 39, ptr %396, align 1, !dbg !3497, !tbaa !1157
  br label %397, !dbg !3497

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !3501
  call void @llvm.dbg.value(metadata i64 %398, metadata !3110, metadata !DIExpression()), !dbg !3162
  %399 = icmp ult i64 %398, %146, !dbg !3502
  br i1 %399, label %400, label %402, !dbg !3505

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !3502
  store i8 36, ptr %401, align 1, !dbg !3502, !tbaa !1157
  br label %402, !dbg !3502

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !3505
  call void @llvm.dbg.value(metadata i64 %403, metadata !3110, metadata !DIExpression()), !dbg !3162
  %404 = icmp ult i64 %403, %146, !dbg !3506
  br i1 %404, label %405, label %407, !dbg !3509

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !3506
  store i8 39, ptr %406, align 1, !dbg !3506, !tbaa !1157
  br label %407, !dbg !3506

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !3509
  call void @llvm.dbg.value(metadata i64 %408, metadata !3110, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 1, metadata !3118, metadata !DIExpression()), !dbg !3162
  br label %409, !dbg !3510

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !3162
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !3162
  call void @llvm.dbg.value(metadata i8 %411, metadata !3118, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %410, metadata !3110, metadata !DIExpression()), !dbg !3162
  %412 = icmp ult i64 %410, %146, !dbg !3511
  br i1 %412, label %413, label %415, !dbg !3514

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !3511
  store i8 92, ptr %414, align 1, !dbg !3511, !tbaa !1157
  br label %415, !dbg !3511

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !3514
  call void @llvm.dbg.value(metadata i64 %416, metadata !3110, metadata !DIExpression()), !dbg !3162
  %417 = icmp ult i64 %416, %146, !dbg !3515
  br i1 %417, label %418, label %422, !dbg !3518

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !3515
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !3515
  store i8 %420, ptr %421, align 1, !dbg !3515, !tbaa !1157
  br label %422, !dbg !3515

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !3518
  call void @llvm.dbg.value(metadata i64 %423, metadata !3110, metadata !DIExpression()), !dbg !3162
  %424 = icmp ult i64 %423, %146, !dbg !3519
  br i1 %424, label %425, label %430, !dbg !3522

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !3519
  %428 = or i8 %427, 48, !dbg !3519
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !3519
  store i8 %428, ptr %429, align 1, !dbg !3519, !tbaa !1157
  br label %430, !dbg !3519

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !3522
  call void @llvm.dbg.value(metadata i64 %431, metadata !3110, metadata !DIExpression()), !dbg !3162
  %432 = and i8 %387, 7, !dbg !3523
  %433 = or i8 %432, 48, !dbg !3524
  call void @llvm.dbg.value(metadata i8 %433, metadata !3131, metadata !DIExpression()), !dbg !3271
  br label %443, !dbg !3525

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !3526
  %436 = icmp eq i8 %435, 0, !dbg !3526
  br i1 %436, label %443, label %437, !dbg !3528

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !3529
  br i1 %438, label %439, label %441, !dbg !3533

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3529
  store i8 92, ptr %440, align 1, !dbg !3529, !tbaa !1157
  br label %441, !dbg !3529

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !3533
  call void @llvm.dbg.value(metadata i64 %442, metadata !3110, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 0, metadata !3126, metadata !DIExpression()), !dbg !3271
  br label %443, !dbg !3534

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !3162
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !3263
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !3271
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !3271
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !3271
  call void @llvm.dbg.value(metadata i8 %448, metadata !3131, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8 %447, metadata !3129, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8 %446, metadata !3126, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8 %445, metadata !3118, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %444, metadata !3110, metadata !DIExpression()), !dbg !3162
  %449 = add i64 %384, 1, !dbg !3535
  %450 = icmp ugt i64 %379, %449, !dbg !3537
  br i1 %450, label %451, label %478, !dbg !3538

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !3539
  %453 = icmp ne i8 %452, 0, !dbg !3539
  %454 = and i8 %447, 1, !dbg !3539
  %455 = icmp eq i8 %454, 0, !dbg !3539
  %456 = select i1 %453, i1 %455, i1 false, !dbg !3539
  br i1 %456, label %457, label %468, !dbg !3539

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !3542
  br i1 %458, label %459, label %461, !dbg !3546

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !3542
  store i8 39, ptr %460, align 1, !dbg !3542, !tbaa !1157
  br label %461, !dbg !3542

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !3546
  call void @llvm.dbg.value(metadata i64 %462, metadata !3110, metadata !DIExpression()), !dbg !3162
  %463 = icmp ult i64 %462, %146, !dbg !3547
  br i1 %463, label %464, label %466, !dbg !3550

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !3547
  store i8 39, ptr %465, align 1, !dbg !3547, !tbaa !1157
  br label %466, !dbg !3547

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !3550
  call void @llvm.dbg.value(metadata i64 %467, metadata !3110, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 0, metadata !3118, metadata !DIExpression()), !dbg !3162
  br label %468, !dbg !3551

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !3552
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !3162
  call void @llvm.dbg.value(metadata i8 %470, metadata !3118, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %469, metadata !3110, metadata !DIExpression()), !dbg !3162
  %471 = icmp ult i64 %469, %146, !dbg !3553
  br i1 %471, label %472, label %474, !dbg !3556

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !3553
  store i8 %448, ptr %473, align 1, !dbg !3553, !tbaa !1157
  br label %474, !dbg !3553

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !3556
  call void @llvm.dbg.value(metadata i64 %475, metadata !3110, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %449, metadata !3124, metadata !DIExpression()), !dbg !3261
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !3557
  %477 = load i8, ptr %476, align 1, !dbg !3557, !tbaa !1157
  call void @llvm.dbg.value(metadata i8 %477, metadata !3131, metadata !DIExpression()), !dbg !3271
  br label %381, !dbg !3558, !llvm.loop !3559

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !3271
  call void @llvm.dbg.value(metadata i8 %448, metadata !3131, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8 %479, metadata !3130, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8 %447, metadata !3129, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8 %446, metadata !3126, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %384, metadata !3124, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i8 %445, metadata !3118, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %444, metadata !3110, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %378, metadata !3103, metadata !DIExpression()), !dbg !3162
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !3562
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !3162
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !3167
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !3162
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !3162
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !3261
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !3271
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !3271
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !3271
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !3101, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 %489, metadata !3131, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8 %488, metadata !3130, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8 %487, metadata !3129, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8 %173, metadata !3126, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %486, metadata !3124, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i8 %485, metadata !3118, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 %484, metadata !3116, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %483, metadata !3111, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %482, metadata !3110, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %481, metadata !3103, metadata !DIExpression()), !dbg !3162
  br i1 %127, label %502, label %491, !dbg !3563

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
  br i1 %137, label %503, label %524, !dbg !3565

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !3566

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
  %514 = lshr i8 %505, 5, !dbg !3567
  %515 = zext i8 %514 to i64, !dbg !3567
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !3568
  %517 = load i32, ptr %516, align 4, !dbg !3568, !tbaa !1148
  %518 = and i8 %505, 31, !dbg !3569
  %519 = zext i8 %518 to i32, !dbg !3569
  %520 = shl nuw i32 1, %519, !dbg !3570
  %521 = and i32 %517, %520, !dbg !3570
  %522 = icmp eq i32 %521, 0, !dbg !3570
  %523 = and i1 %172, %522, !dbg !3571
  br i1 %523, label %573, label %535, !dbg !3571

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
  br i1 %172, label %573, label %535, !dbg !3572

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !3562
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !3162
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !3167
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !3171
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !3263
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !3573
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !3271
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !3271
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !3101, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 %543, metadata !3131, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8 %542, metadata !3130, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %541, metadata !3124, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i8 %540, metadata !3118, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 %539, metadata !3116, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %538, metadata !3111, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %537, metadata !3110, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %536, metadata !3103, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.label(metadata !3159), !dbg !3574
  br i1 %132, label %545, label %674, !dbg !3575

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !3129, metadata !DIExpression()), !dbg !3271
  %546 = and i8 %540, 1, !dbg !3577
  %547 = icmp eq i8 %546, 0, !dbg !3577
  %548 = select i1 %133, i1 %547, i1 false, !dbg !3577
  br i1 %548, label %549, label %565, !dbg !3577

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !3579
  br i1 %550, label %551, label %553, !dbg !3583

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !3579
  store i8 39, ptr %552, align 1, !dbg !3579, !tbaa !1157
  br label %553, !dbg !3579

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !3583
  call void @llvm.dbg.value(metadata i64 %554, metadata !3110, metadata !DIExpression()), !dbg !3162
  %555 = icmp ult i64 %554, %544, !dbg !3584
  br i1 %555, label %556, label %558, !dbg !3587

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !3584
  store i8 36, ptr %557, align 1, !dbg !3584, !tbaa !1157
  br label %558, !dbg !3584

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !3587
  call void @llvm.dbg.value(metadata i64 %559, metadata !3110, metadata !DIExpression()), !dbg !3162
  %560 = icmp ult i64 %559, %544, !dbg !3588
  br i1 %560, label %561, label %563, !dbg !3591

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !3588
  store i8 39, ptr %562, align 1, !dbg !3588, !tbaa !1157
  br label %563, !dbg !3588

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !3591
  call void @llvm.dbg.value(metadata i64 %564, metadata !3110, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 1, metadata !3118, metadata !DIExpression()), !dbg !3162
  br label %565, !dbg !3592

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !3271
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !3162
  call void @llvm.dbg.value(metadata i8 %567, metadata !3118, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %566, metadata !3110, metadata !DIExpression()), !dbg !3162
  %568 = icmp ult i64 %566, %544, !dbg !3593
  br i1 %568, label %569, label %571, !dbg !3596

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !3593
  store i8 92, ptr %570, align 1, !dbg !3593, !tbaa !1157
  br label %571, !dbg !3593

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !3596
  call void @llvm.dbg.value(metadata i64 %544, metadata !3101, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 %543, metadata !3131, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8 %542, metadata !3130, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8 1, metadata !3129, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %541, metadata !3124, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i8 %567, metadata !3118, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 %539, metadata !3116, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %538, metadata !3111, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %572, metadata !3110, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %536, metadata !3103, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.label(metadata !3160), !dbg !3597
  br label %600, !dbg !3598

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !3562
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !3162
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !3167
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !3171
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !3263
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !3573
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !3271
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !3271
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !3601
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !3101, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 %582, metadata !3131, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8 %581, metadata !3130, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8 %580, metadata !3129, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %579, metadata !3124, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i8 %578, metadata !3118, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 %577, metadata !3116, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %576, metadata !3111, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %575, metadata !3110, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %574, metadata !3103, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.label(metadata !3160), !dbg !3597
  %584 = and i8 %578, 1, !dbg !3598
  %585 = icmp ne i8 %584, 0, !dbg !3598
  %586 = and i8 %580, 1, !dbg !3598
  %587 = icmp eq i8 %586, 0, !dbg !3598
  %588 = select i1 %585, i1 %587, i1 false, !dbg !3598
  br i1 %588, label %589, label %600, !dbg !3598

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !3602
  br i1 %590, label %591, label %593, !dbg !3606

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !3602
  store i8 39, ptr %592, align 1, !dbg !3602, !tbaa !1157
  br label %593, !dbg !3602

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !3606
  call void @llvm.dbg.value(metadata i64 %594, metadata !3110, metadata !DIExpression()), !dbg !3162
  %595 = icmp ult i64 %594, %583, !dbg !3607
  br i1 %595, label %596, label %598, !dbg !3610

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !3607
  store i8 39, ptr %597, align 1, !dbg !3607, !tbaa !1157
  br label %598, !dbg !3607

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !3610
  call void @llvm.dbg.value(metadata i64 %599, metadata !3110, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 0, metadata !3118, metadata !DIExpression()), !dbg !3162
  br label %600, !dbg !3611

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !3271
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !3162
  call void @llvm.dbg.value(metadata i8 %609, metadata !3118, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %608, metadata !3110, metadata !DIExpression()), !dbg !3162
  %610 = icmp ult i64 %608, %601, !dbg !3612
  br i1 %610, label %611, label %613, !dbg !3615

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !3612
  store i8 %602, ptr %612, align 1, !dbg !3612, !tbaa !1157
  br label %613, !dbg !3612

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !3615
  call void @llvm.dbg.value(metadata i64 %614, metadata !3110, metadata !DIExpression()), !dbg !3162
  %615 = icmp eq i8 %603, 0, !dbg !3616
  %616 = select i1 %615, i8 0, i8 %143, !dbg !3618
  call void @llvm.dbg.value(metadata i8 %616, metadata !3117, metadata !DIExpression()), !dbg !3162
  br label %617, !dbg !3619

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !3562
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !3162
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !3167
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !3171
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !3172
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !3263
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !3573
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !3101, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %624, metadata !3124, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i8 %623, metadata !3118, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 %622, metadata !3117, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 %621, metadata !3116, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %620, metadata !3111, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %619, metadata !3110, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %618, metadata !3103, metadata !DIExpression()), !dbg !3162
  %626 = add i64 %624, 1, !dbg !3620
  call void @llvm.dbg.value(metadata i64 %626, metadata !3124, metadata !DIExpression()), !dbg !3261
  br label %138, !dbg !3621, !llvm.loop !3622

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !3101, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 %143, metadata !3117, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8 %142, metadata !3116, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %141, metadata !3111, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %140, metadata !3110, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %139, metadata !3103, metadata !DIExpression()), !dbg !3162
  %628 = icmp eq i64 %140, 0, !dbg !3624
  %629 = and i1 %133, %628, !dbg !3626
  %630 = xor i1 %629, true, !dbg !3626
  %631 = select i1 %630, i1 true, i1 %132, !dbg !3626
  br i1 %631, label %632, label %670, !dbg !3626

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !3627
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !3627
  br i1 %636, label %637, label %646, !dbg !3627

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !3629
  %639 = icmp eq i8 %638, 0, !dbg !3629
  br i1 %639, label %642, label %640, !dbg !3632

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !3633
  br label %694, !dbg !3634

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !3635
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !3637
  br i1 %645, label %28, label %646, !dbg !3637

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !3638
  %649 = select i1 %648, i1 %647, i1 false, !dbg !3640
  br i1 %649, label %650, label %665, !dbg !3640

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !3112, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %140, metadata !3110, metadata !DIExpression()), !dbg !3162
  %651 = load i8, ptr %120, align 1, !dbg !3641, !tbaa !1157
  %652 = icmp eq i8 %651, 0, !dbg !3644
  br i1 %652, label %665, label %653, !dbg !3644

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !3112, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %656, metadata !3110, metadata !DIExpression()), !dbg !3162
  %657 = icmp ult i64 %656, %146, !dbg !3645
  br i1 %657, label %658, label %660, !dbg !3648

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !3645
  store i8 %654, ptr %659, align 1, !dbg !3645, !tbaa !1157
  br label %660, !dbg !3645

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !3648
  call void @llvm.dbg.value(metadata i64 %661, metadata !3110, metadata !DIExpression()), !dbg !3162
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !3649
  call void @llvm.dbg.value(metadata ptr %662, metadata !3112, metadata !DIExpression()), !dbg !3162
  %663 = load i8, ptr %662, align 1, !dbg !3641, !tbaa !1157
  %664 = icmp eq i8 %663, 0, !dbg !3644
  br i1 %664, label %665, label %653, !dbg !3644, !llvm.loop !3650

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !3244
  call void @llvm.dbg.value(metadata i64 %666, metadata !3110, metadata !DIExpression()), !dbg !3162
  %667 = icmp ult i64 %666, %146, !dbg !3652
  br i1 %667, label %668, label %694, !dbg !3654

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !3655
  store i8 0, ptr %669, align 1, !dbg !3656, !tbaa !1157
  br label %694, !dbg !3655

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !3161), !dbg !3657
  %672 = icmp eq i8 %124, 0, !dbg !3658
  %673 = select i1 %672, i32 2, i32 4, !dbg !3658
  br label %684, !dbg !3658

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !3658
  %678 = select i1 %677, i32 2, i32 4, !dbg !3658
  br label %679, !dbg !3660

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !3161), !dbg !3657
  %683 = icmp eq i32 %116, 2, !dbg !3660
  br i1 %683, label %684, label %688, !dbg !3658

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !3658

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !3104, metadata !DIExpression()), !dbg !3162
  %692 = and i32 %5, -3, !dbg !3661
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !3662
  br label %694, !dbg !3663

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !3664
}

; Function Attrs: nounwind
declare !dbg !3665 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3668 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3671 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3673 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3677, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i64 %1, metadata !3678, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata ptr %2, metadata !3679, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata ptr %0, metadata !3681, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i64 %1, metadata !3686, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata ptr null, metadata !3687, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata ptr %2, metadata !3688, metadata !DIExpression()), !dbg !3694
  %4 = icmp eq ptr %2, null, !dbg !3696
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3696
  call void @llvm.dbg.value(metadata ptr %5, metadata !3689, metadata !DIExpression()), !dbg !3694
  %6 = tail call ptr @__errno_location() #43, !dbg !3697
  %7 = load i32, ptr %6, align 4, !dbg !3697, !tbaa !1148
  call void @llvm.dbg.value(metadata i32 %7, metadata !3690, metadata !DIExpression()), !dbg !3694
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3698
  %9 = load i32, ptr %8, align 4, !dbg !3698, !tbaa !3044
  %10 = or i32 %9, 1, !dbg !3699
  call void @llvm.dbg.value(metadata i32 %10, metadata !3691, metadata !DIExpression()), !dbg !3694
  %11 = load i32, ptr %5, align 8, !dbg !3700, !tbaa !2994
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3701
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3702
  %14 = load ptr, ptr %13, align 8, !dbg !3702, !tbaa !3065
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3703
  %16 = load ptr, ptr %15, align 8, !dbg !3703, !tbaa !3068
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3704
  %18 = add i64 %17, 1, !dbg !3705
  call void @llvm.dbg.value(metadata i64 %18, metadata !3692, metadata !DIExpression()), !dbg !3694
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !3706
  call void @llvm.dbg.value(metadata ptr %19, metadata !3693, metadata !DIExpression()), !dbg !3694
  %20 = load i32, ptr %5, align 8, !dbg !3707, !tbaa !2994
  %21 = load ptr, ptr %13, align 8, !dbg !3708, !tbaa !3065
  %22 = load ptr, ptr %15, align 8, !dbg !3709, !tbaa !3068
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3710
  store i32 %7, ptr %6, align 4, !dbg !3711, !tbaa !1148
  ret ptr %19, !dbg !3712
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3682 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3681, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i64 %1, metadata !3686, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata ptr %2, metadata !3687, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata ptr %3, metadata !3688, metadata !DIExpression()), !dbg !3713
  %5 = icmp eq ptr %3, null, !dbg !3714
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3714
  call void @llvm.dbg.value(metadata ptr %6, metadata !3689, metadata !DIExpression()), !dbg !3713
  %7 = tail call ptr @__errno_location() #43, !dbg !3715
  %8 = load i32, ptr %7, align 4, !dbg !3715, !tbaa !1148
  call void @llvm.dbg.value(metadata i32 %8, metadata !3690, metadata !DIExpression()), !dbg !3713
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3716
  %10 = load i32, ptr %9, align 4, !dbg !3716, !tbaa !3044
  %11 = icmp eq ptr %2, null, !dbg !3717
  %12 = zext i1 %11 to i32, !dbg !3717
  %13 = or i32 %10, %12, !dbg !3718
  call void @llvm.dbg.value(metadata i32 %13, metadata !3691, metadata !DIExpression()), !dbg !3713
  %14 = load i32, ptr %6, align 8, !dbg !3719, !tbaa !2994
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3720
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3721
  %17 = load ptr, ptr %16, align 8, !dbg !3721, !tbaa !3065
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3722
  %19 = load ptr, ptr %18, align 8, !dbg !3722, !tbaa !3068
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3723
  %21 = add i64 %20, 1, !dbg !3724
  call void @llvm.dbg.value(metadata i64 %21, metadata !3692, metadata !DIExpression()), !dbg !3713
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !3725
  call void @llvm.dbg.value(metadata ptr %22, metadata !3693, metadata !DIExpression()), !dbg !3713
  %23 = load i32, ptr %6, align 8, !dbg !3726, !tbaa !2994
  %24 = load ptr, ptr %16, align 8, !dbg !3727, !tbaa !3065
  %25 = load ptr, ptr %18, align 8, !dbg !3728, !tbaa !3068
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3729
  store i32 %8, ptr %7, align 4, !dbg !3730, !tbaa !1148
  br i1 %11, label %28, label %27, !dbg !3731

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3732, !tbaa !1343
  br label %28, !dbg !3734

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3735
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3736 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3741, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %1, metadata !3738, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i32 1, metadata !3739, metadata !DIExpression()), !dbg !3743
  %2 = load i32, ptr @nslots, align 4, !tbaa !1148
  call void @llvm.dbg.value(metadata i32 1, metadata !3739, metadata !DIExpression()), !dbg !3743
  %3 = icmp sgt i32 %2, 1, !dbg !3744
  br i1 %3, label %4, label %6, !dbg !3746

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3744
  br label %10, !dbg !3746

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3747
  %8 = load ptr, ptr %7, align 8, !dbg !3747, !tbaa !3749
  %9 = icmp eq ptr %8, @slot0, !dbg !3751
  br i1 %9, label %17, label %16, !dbg !3752

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3739, metadata !DIExpression()), !dbg !3743
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3753
  %13 = load ptr, ptr %12, align 8, !dbg !3753, !tbaa !3749
  tail call void @free(ptr noundef %13) #40, !dbg !3754
  %14 = add nuw nsw i64 %11, 1, !dbg !3755
  call void @llvm.dbg.value(metadata i64 %14, metadata !3739, metadata !DIExpression()), !dbg !3743
  %15 = icmp eq i64 %14, %5, !dbg !3744
  br i1 %15, label %6, label %10, !dbg !3746, !llvm.loop !3756

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !3758
  store i64 256, ptr @slotvec0, align 8, !dbg !3760, !tbaa !3761
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3762, !tbaa !3749
  br label %17, !dbg !3763

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3764
  br i1 %18, label %20, label %19, !dbg !3766

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !3767
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3769, !tbaa !1065
  br label %20, !dbg !3770

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3771, !tbaa !1148
  ret void, !dbg !3772
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3773 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3775, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata ptr %1, metadata !3776, metadata !DIExpression()), !dbg !3777
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3778
  ret ptr %3, !dbg !3779
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3780 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3784, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata ptr %1, metadata !3785, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i64 %2, metadata !3786, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata ptr %3, metadata !3787, metadata !DIExpression()), !dbg !3800
  %6 = tail call ptr @__errno_location() #43, !dbg !3801
  %7 = load i32, ptr %6, align 4, !dbg !3801, !tbaa !1148
  call void @llvm.dbg.value(metadata i32 %7, metadata !3788, metadata !DIExpression()), !dbg !3800
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3802, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %8, metadata !3789, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3790, metadata !DIExpression()), !dbg !3800
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3803
  br i1 %9, label %10, label %11, !dbg !3803

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !3805
  unreachable, !dbg !3805

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3806, !tbaa !1148
  %13 = icmp sgt i32 %12, %0, !dbg !3807
  br i1 %13, label %32, label %14, !dbg !3808

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3809
  call void @llvm.dbg.value(metadata i1 %15, metadata !3791, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3810
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3811
  %16 = sext i32 %12 to i64, !dbg !3812
  call void @llvm.dbg.value(metadata i64 %16, metadata !3794, metadata !DIExpression()), !dbg !3810
  store i64 %16, ptr %5, align 8, !dbg !3813, !tbaa !1343
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3814
  %18 = add nuw nsw i32 %0, 1, !dbg !3815
  %19 = sub i32 %18, %12, !dbg !3816
  %20 = sext i32 %19 to i64, !dbg !3817
  call void @llvm.dbg.value(metadata ptr %5, metadata !3794, metadata !DIExpression(DW_OP_deref)), !dbg !3810
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3818
  call void @llvm.dbg.value(metadata ptr %21, metadata !3789, metadata !DIExpression()), !dbg !3800
  store ptr %21, ptr @slotvec, align 8, !dbg !3819, !tbaa !1065
  br i1 %15, label %22, label %23, !dbg !3820

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3821, !tbaa.struct !3823
  br label %23, !dbg !3824

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3825, !tbaa !1148
  %25 = sext i32 %24 to i64, !dbg !3826
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3826
  %27 = load i64, ptr %5, align 8, !dbg !3827, !tbaa !1343
  call void @llvm.dbg.value(metadata i64 %27, metadata !3794, metadata !DIExpression()), !dbg !3810
  %28 = sub nsw i64 %27, %25, !dbg !3828
  %29 = shl i64 %28, 4, !dbg !3829
  call void @llvm.dbg.value(metadata ptr %26, metadata !3201, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i32 0, metadata !3204, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i64 %29, metadata !3205, metadata !DIExpression()), !dbg !3830
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3832
  %30 = load i64, ptr %5, align 8, !dbg !3833, !tbaa !1343
  call void @llvm.dbg.value(metadata i64 %30, metadata !3794, metadata !DIExpression()), !dbg !3810
  %31 = trunc i64 %30 to i32, !dbg !3833
  store i32 %31, ptr @nslots, align 4, !dbg !3834, !tbaa !1148
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3835
  br label %32, !dbg !3836

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3800
  call void @llvm.dbg.value(metadata ptr %33, metadata !3789, metadata !DIExpression()), !dbg !3800
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3837
  %36 = load i64, ptr %35, align 8, !dbg !3838, !tbaa !3761
  call void @llvm.dbg.value(metadata i64 %36, metadata !3795, metadata !DIExpression()), !dbg !3839
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3840
  %38 = load ptr, ptr %37, align 8, !dbg !3840, !tbaa !3749
  call void @llvm.dbg.value(metadata ptr %38, metadata !3797, metadata !DIExpression()), !dbg !3839
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3841
  %40 = load i32, ptr %39, align 4, !dbg !3841, !tbaa !3044
  %41 = or i32 %40, 1, !dbg !3842
  call void @llvm.dbg.value(metadata i32 %41, metadata !3798, metadata !DIExpression()), !dbg !3839
  %42 = load i32, ptr %3, align 8, !dbg !3843, !tbaa !2994
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3844
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3845
  %45 = load ptr, ptr %44, align 8, !dbg !3845, !tbaa !3065
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3846
  %47 = load ptr, ptr %46, align 8, !dbg !3846, !tbaa !3068
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3847
  call void @llvm.dbg.value(metadata i64 %48, metadata !3799, metadata !DIExpression()), !dbg !3839
  %49 = icmp ugt i64 %36, %48, !dbg !3848
  br i1 %49, label %60, label %50, !dbg !3850

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3851
  call void @llvm.dbg.value(metadata i64 %51, metadata !3795, metadata !DIExpression()), !dbg !3839
  store i64 %51, ptr %35, align 8, !dbg !3853, !tbaa !3761
  %52 = icmp eq ptr %38, @slot0, !dbg !3854
  br i1 %52, label %54, label %53, !dbg !3856

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3857
  br label %54, !dbg !3857

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !3858
  call void @llvm.dbg.value(metadata ptr %55, metadata !3797, metadata !DIExpression()), !dbg !3839
  store ptr %55, ptr %37, align 8, !dbg !3859, !tbaa !3749
  %56 = load i32, ptr %3, align 8, !dbg !3860, !tbaa !2994
  %57 = load ptr, ptr %44, align 8, !dbg !3861, !tbaa !3065
  %58 = load ptr, ptr %46, align 8, !dbg !3862, !tbaa !3068
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3863
  br label %60, !dbg !3864

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3839
  call void @llvm.dbg.value(metadata ptr %61, metadata !3797, metadata !DIExpression()), !dbg !3839
  store i32 %7, ptr %6, align 4, !dbg !3865, !tbaa !1148
  ret ptr %61, !dbg !3866
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3867 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3871, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata ptr %1, metadata !3872, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i64 %2, metadata !3873, metadata !DIExpression()), !dbg !3874
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3875
  ret ptr %4, !dbg !3876
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3877 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3879, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i32 0, metadata !3775, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata ptr %0, metadata !3776, metadata !DIExpression()), !dbg !3881
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3883
  ret ptr %2, !dbg !3884
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3885 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3889, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i64 %1, metadata !3890, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i32 0, metadata !3871, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata ptr %0, metadata !3872, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i64 %1, metadata !3873, metadata !DIExpression()), !dbg !3892
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3894
  ret ptr %3, !dbg !3895
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3896 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3900, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i32 %1, metadata !3901, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata ptr %2, metadata !3902, metadata !DIExpression()), !dbg !3904
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3905
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3903, metadata !DIExpression()), !dbg !3906
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3907), !dbg !3910
  call void @llvm.dbg.value(metadata i32 %1, metadata !3911, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3916, metadata !DIExpression()), !dbg !3919
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3919, !alias.scope !3907
  %5 = icmp eq i32 %1, 10, !dbg !3920
  br i1 %5, label %6, label %7, !dbg !3922

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3923, !noalias !3907
  unreachable, !dbg !3923

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3924, !tbaa !2994, !alias.scope !3907
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3925
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3926
  ret ptr %8, !dbg !3927
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3928 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3932, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 %1, metadata !3933, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata ptr %2, metadata !3934, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i64 %3, metadata !3935, metadata !DIExpression()), !dbg !3937
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3938
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3936, metadata !DIExpression()), !dbg !3939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3940), !dbg !3943
  call void @llvm.dbg.value(metadata i32 %1, metadata !3911, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3916, metadata !DIExpression()), !dbg !3946
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3946, !alias.scope !3940
  %6 = icmp eq i32 %1, 10, !dbg !3947
  br i1 %6, label %7, label %8, !dbg !3948

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3949, !noalias !3940
  unreachable, !dbg !3949

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3950, !tbaa !2994, !alias.scope !3940
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3951
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3952
  ret ptr %9, !dbg !3953
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3954 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3958, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata ptr %1, metadata !3959, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i32 0, metadata !3900, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata i32 %0, metadata !3901, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata ptr %1, metadata !3902, metadata !DIExpression()), !dbg !3961
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3963
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3903, metadata !DIExpression()), !dbg !3964
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3965), !dbg !3968
  call void @llvm.dbg.value(metadata i32 %0, metadata !3911, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3916, metadata !DIExpression()), !dbg !3971
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3971, !alias.scope !3965
  %4 = icmp eq i32 %0, 10, !dbg !3972
  br i1 %4, label %5, label %6, !dbg !3973

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3974, !noalias !3965
  unreachable, !dbg !3974

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3975, !tbaa !2994, !alias.scope !3965
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3976
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3977
  ret ptr %7, !dbg !3978
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3979 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3983, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata ptr %1, metadata !3984, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata i64 %2, metadata !3985, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata i32 0, metadata !3932, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i32 %0, metadata !3933, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata ptr %1, metadata !3934, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i64 %2, metadata !3935, metadata !DIExpression()), !dbg !3987
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3989
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3936, metadata !DIExpression()), !dbg !3990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3991), !dbg !3994
  call void @llvm.dbg.value(metadata i32 %0, metadata !3911, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3916, metadata !DIExpression()), !dbg !3997
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3997, !alias.scope !3991
  %5 = icmp eq i32 %0, 10, !dbg !3998
  br i1 %5, label %6, label %7, !dbg !3999

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !4000, !noalias !3991
  unreachable, !dbg !4000

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !4001, !tbaa !2994, !alias.scope !3991
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !4002
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !4003
  ret ptr %8, !dbg !4004
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !4005 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4009, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i64 %1, metadata !4010, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i8 %2, metadata !4011, metadata !DIExpression()), !dbg !4013
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !4014
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4012, metadata !DIExpression()), !dbg !4015
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4016, !tbaa.struct !4017
  call void @llvm.dbg.value(metadata ptr %4, metadata !3011, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i8 %2, metadata !3012, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i32 1, metadata !3013, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i8 %2, metadata !3014, metadata !DIExpression()), !dbg !4018
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !4020
  %6 = lshr i8 %2, 5, !dbg !4021
  %7 = zext i8 %6 to i64, !dbg !4021
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !4022
  call void @llvm.dbg.value(metadata ptr %8, metadata !3015, metadata !DIExpression()), !dbg !4018
  %9 = and i8 %2, 31, !dbg !4023
  %10 = zext i8 %9 to i32, !dbg !4023
  call void @llvm.dbg.value(metadata i32 %10, metadata !3017, metadata !DIExpression()), !dbg !4018
  %11 = load i32, ptr %8, align 4, !dbg !4024, !tbaa !1148
  %12 = lshr i32 %11, %10, !dbg !4025
  call void @llvm.dbg.value(metadata i32 %12, metadata !3018, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4018
  %13 = and i32 %12, 1, !dbg !4026
  %14 = xor i32 %13, 1, !dbg !4026
  %15 = shl nuw i32 %14, %10, !dbg !4027
  %16 = xor i32 %15, %11, !dbg !4028
  store i32 %16, ptr %8, align 4, !dbg !4028, !tbaa !1148
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !4029
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !4030
  ret ptr %17, !dbg !4031
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !4032 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4036, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i8 %1, metadata !4037, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata ptr %0, metadata !4009, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i64 -1, metadata !4010, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i8 %1, metadata !4011, metadata !DIExpression()), !dbg !4039
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !4041
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4012, metadata !DIExpression()), !dbg !4042
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4043, !tbaa.struct !4017
  call void @llvm.dbg.value(metadata ptr %3, metadata !3011, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i8 %1, metadata !3012, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i32 1, metadata !3013, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i8 %1, metadata !3014, metadata !DIExpression()), !dbg !4044
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !4046
  %5 = lshr i8 %1, 5, !dbg !4047
  %6 = zext i8 %5 to i64, !dbg !4047
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !4048
  call void @llvm.dbg.value(metadata ptr %7, metadata !3015, metadata !DIExpression()), !dbg !4044
  %8 = and i8 %1, 31, !dbg !4049
  %9 = zext i8 %8 to i32, !dbg !4049
  call void @llvm.dbg.value(metadata i32 %9, metadata !3017, metadata !DIExpression()), !dbg !4044
  %10 = load i32, ptr %7, align 4, !dbg !4050, !tbaa !1148
  %11 = lshr i32 %10, %9, !dbg !4051
  call void @llvm.dbg.value(metadata i32 %11, metadata !3018, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4044
  %12 = and i32 %11, 1, !dbg !4052
  %13 = xor i32 %12, 1, !dbg !4052
  %14 = shl nuw i32 %13, %9, !dbg !4053
  %15 = xor i32 %14, %10, !dbg !4054
  store i32 %15, ptr %7, align 4, !dbg !4054, !tbaa !1148
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !4055
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !4056
  ret ptr %16, !dbg !4057
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !4058 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4060, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata ptr %0, metadata !4036, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata i8 58, metadata !4037, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata ptr %0, metadata !4009, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i64 -1, metadata !4010, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 58, metadata !4011, metadata !DIExpression()), !dbg !4064
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !4066
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4012, metadata !DIExpression()), !dbg !4067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4068, !tbaa.struct !4017
  call void @llvm.dbg.value(metadata ptr %2, metadata !3011, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i8 58, metadata !3012, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i32 1, metadata !3013, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i8 58, metadata !3014, metadata !DIExpression()), !dbg !4069
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !4071
  call void @llvm.dbg.value(metadata ptr %3, metadata !3015, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i32 26, metadata !3017, metadata !DIExpression()), !dbg !4069
  %4 = load i32, ptr %3, align 4, !dbg !4072, !tbaa !1148
  call void @llvm.dbg.value(metadata i32 %4, metadata !3018, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4069
  %5 = or i32 %4, 67108864, !dbg !4073
  store i32 %5, ptr %3, align 4, !dbg !4073, !tbaa !1148
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !4074
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !4075
  ret ptr %6, !dbg !4076
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4077 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4079, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i64 %1, metadata !4080, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata ptr %0, metadata !4009, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i64 %1, metadata !4010, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i8 58, metadata !4011, metadata !DIExpression()), !dbg !4082
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !4084
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4012, metadata !DIExpression()), !dbg !4085
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4086, !tbaa.struct !4017
  call void @llvm.dbg.value(metadata ptr %3, metadata !3011, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i8 58, metadata !3012, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 1, metadata !3013, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i8 58, metadata !3014, metadata !DIExpression()), !dbg !4087
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !4089
  call void @llvm.dbg.value(metadata ptr %4, metadata !3015, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 26, metadata !3017, metadata !DIExpression()), !dbg !4087
  %5 = load i32, ptr %4, align 4, !dbg !4090, !tbaa !1148
  call void @llvm.dbg.value(metadata i32 %5, metadata !3018, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4087
  %6 = or i32 %5, 67108864, !dbg !4091
  store i32 %6, ptr %4, align 4, !dbg !4091, !tbaa !1148
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !4092
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !4093
  ret ptr %7, !dbg !4094
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4095 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3916, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 %0, metadata !4097, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i32 %1, metadata !4098, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata ptr %2, metadata !4099, metadata !DIExpression()), !dbg !4103
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !4104
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4100, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i32 %1, metadata !3911, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i32 0, metadata !3916, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4106
  %5 = icmp eq i32 %1, 10, !dbg !4107
  br i1 %5, label %6, label %7, !dbg !4108

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !4109, !noalias !4110
  unreachable, !dbg !4109

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3916, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4106
  store i32 %1, ptr %4, align 8, !dbg !4113, !tbaa.struct !4017
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !4113
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !4113
  call void @llvm.dbg.value(metadata ptr %4, metadata !3011, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i8 58, metadata !3012, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i32 1, metadata !3013, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i8 58, metadata !3014, metadata !DIExpression()), !dbg !4114
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !4116
  call void @llvm.dbg.value(metadata ptr %9, metadata !3015, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i32 26, metadata !3017, metadata !DIExpression()), !dbg !4114
  %10 = load i32, ptr %9, align 4, !dbg !4117, !tbaa !1148
  call void @llvm.dbg.value(metadata i32 %10, metadata !3018, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4114
  %11 = or i32 %10, 67108864, !dbg !4118
  store i32 %11, ptr %9, align 4, !dbg !4118, !tbaa !1148
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4119
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !4120
  ret ptr %12, !dbg !4121
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4122 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4126, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata ptr %1, metadata !4127, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata ptr %2, metadata !4128, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata ptr %3, metadata !4129, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i32 %0, metadata !4131, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata ptr %1, metadata !4136, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata ptr %2, metadata !4137, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata ptr %3, metadata !4138, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata i64 -1, metadata !4139, metadata !DIExpression()), !dbg !4141
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !4143
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4140, metadata !DIExpression()), !dbg !4144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4145, !tbaa.struct !4017
  call void @llvm.dbg.value(metadata ptr %5, metadata !3051, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata ptr %1, metadata !3052, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata ptr %2, metadata !3053, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata ptr %5, metadata !3051, metadata !DIExpression()), !dbg !4146
  store i32 10, ptr %5, align 8, !dbg !4148, !tbaa !2994
  %6 = icmp ne ptr %1, null, !dbg !4149
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4150
  br i1 %8, label %10, label %9, !dbg !4150

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !4151
  unreachable, !dbg !4151

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4152
  store ptr %1, ptr %11, align 8, !dbg !4153, !tbaa !3065
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4154
  store ptr %2, ptr %12, align 8, !dbg !4155, !tbaa !3068
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4156
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !4157
  ret ptr %13, !dbg !4158
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4132 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4131, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata ptr %1, metadata !4136, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata ptr %2, metadata !4137, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata ptr %3, metadata !4138, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i64 %4, metadata !4139, metadata !DIExpression()), !dbg !4159
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !4160
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4140, metadata !DIExpression()), !dbg !4161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4162, !tbaa.struct !4017
  call void @llvm.dbg.value(metadata ptr %6, metadata !3051, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %1, metadata !3052, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %2, metadata !3053, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %6, metadata !3051, metadata !DIExpression()), !dbg !4163
  store i32 10, ptr %6, align 8, !dbg !4165, !tbaa !2994
  %7 = icmp ne ptr %1, null, !dbg !4166
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4167
  br i1 %9, label %11, label %10, !dbg !4167

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !4168
  unreachable, !dbg !4168

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4169
  store ptr %1, ptr %12, align 8, !dbg !4170, !tbaa !3065
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4171
  store ptr %2, ptr %13, align 8, !dbg !4172, !tbaa !3068
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4173
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !4174
  ret ptr %14, !dbg !4175
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4176 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4180, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata ptr %1, metadata !4181, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata ptr %2, metadata !4182, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i32 0, metadata !4126, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata ptr %0, metadata !4127, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata ptr %1, metadata !4128, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata ptr %2, metadata !4129, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata i32 0, metadata !4131, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata ptr %0, metadata !4136, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata ptr %1, metadata !4137, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata ptr %2, metadata !4138, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata i64 -1, metadata !4139, metadata !DIExpression()), !dbg !4186
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !4188
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4140, metadata !DIExpression()), !dbg !4189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4190, !tbaa.struct !4017
  call void @llvm.dbg.value(metadata ptr %4, metadata !3051, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata ptr %0, metadata !3052, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata ptr %1, metadata !3053, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata ptr %4, metadata !3051, metadata !DIExpression()), !dbg !4191
  store i32 10, ptr %4, align 8, !dbg !4193, !tbaa !2994
  %5 = icmp ne ptr %0, null, !dbg !4194
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4195
  br i1 %7, label %9, label %8, !dbg !4195

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !4196
  unreachable, !dbg !4196

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4197
  store ptr %0, ptr %10, align 8, !dbg !4198, !tbaa !3065
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4199
  store ptr %1, ptr %11, align 8, !dbg !4200, !tbaa !3068
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4201
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !4202
  ret ptr %12, !dbg !4203
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4204 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4208, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata ptr %1, metadata !4209, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata ptr %2, metadata !4210, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 %3, metadata !4211, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i32 0, metadata !4131, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata ptr %0, metadata !4136, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata ptr %1, metadata !4137, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata ptr %2, metadata !4138, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata i64 %3, metadata !4139, metadata !DIExpression()), !dbg !4213
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !4215
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4140, metadata !DIExpression()), !dbg !4216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4217, !tbaa.struct !4017
  call void @llvm.dbg.value(metadata ptr %5, metadata !3051, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata ptr %0, metadata !3052, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata ptr %1, metadata !3053, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata ptr %5, metadata !3051, metadata !DIExpression()), !dbg !4218
  store i32 10, ptr %5, align 8, !dbg !4220, !tbaa !2994
  %6 = icmp ne ptr %0, null, !dbg !4221
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4222
  br i1 %8, label %10, label %9, !dbg !4222

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !4223
  unreachable, !dbg !4223

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4224
  store ptr %0, ptr %11, align 8, !dbg !4225, !tbaa !3065
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4226
  store ptr %1, ptr %12, align 8, !dbg !4227, !tbaa !3068
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4228
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !4229
  ret ptr %13, !dbg !4230
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4231 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4235, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata ptr %1, metadata !4236, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata i64 %2, metadata !4237, metadata !DIExpression()), !dbg !4238
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4239
  ret ptr %4, !dbg !4240
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4241 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4245, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i64 %1, metadata !4246, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i32 0, metadata !4235, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata ptr %0, metadata !4236, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i64 %1, metadata !4237, metadata !DIExpression()), !dbg !4248
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4250
  ret ptr %3, !dbg !4251
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4252 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4256, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata ptr %1, metadata !4257, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i32 %0, metadata !4235, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata ptr %1, metadata !4236, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata i64 -1, metadata !4237, metadata !DIExpression()), !dbg !4259
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4261
  ret ptr %3, !dbg !4262
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4263 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4265, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i32 0, metadata !4256, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata ptr %0, metadata !4257, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata i32 0, metadata !4235, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata ptr %0, metadata !4236, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i64 -1, metadata !4237, metadata !DIExpression()), !dbg !4269
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4271
  ret ptr %2, !dbg !4272
}

; Function Attrs: nounwind uwtable
define dso_local i32 @str2sig(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 !dbg !4273 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4277, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata ptr %1, metadata !4278, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata ptr %0, metadata !4280, metadata !DIExpression()), !dbg !4301
  %6 = load i8, ptr %0, align 1, !dbg !4303, !tbaa !1157
  %7 = sext i8 %6 to i32, !dbg !4303
  %8 = add nsw i32 %7, -48, !dbg !4303
  %9 = icmp ult i32 %8, 10, !dbg !4303
  br i1 %9, label %10, label %18, !dbg !4304

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #40, !dbg !4305
  call void @llvm.dbg.value(metadata ptr %3, metadata !4283, metadata !DIExpression(DW_OP_deref)), !dbg !4306
  %11 = call i64 @strtol(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 10) #40, !dbg !4307
  call void @llvm.dbg.value(metadata i64 %11, metadata !4286, metadata !DIExpression()), !dbg !4306
  %12 = load ptr, ptr %3, align 8, !dbg !4308, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %12, metadata !4283, metadata !DIExpression()), !dbg !4306
  %13 = load i8, ptr %12, align 1, !dbg !4310, !tbaa !1157
  %14 = icmp ne i8 %13, 0, !dbg !4310
  %15 = icmp sgt i64 %11, 64
  %16 = select i1 %14, i1 true, i1 %15, !dbg !4311
  %17 = trunc i64 %11 to i32, !dbg !4311
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40, !dbg !4312
  br i1 %16, label %74, label %75

18:                                               ; preds = %2, %23
  %19 = phi i64 [ %24, %23 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !4287, metadata !DIExpression()), !dbg !4313
  %20 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %19, i32 1, !dbg !4314
  call void @llvm.dbg.value(metadata ptr %20, metadata !4317, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata ptr %0, metadata !4320, metadata !DIExpression()), !dbg !4321
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4323
  %22 = icmp eq i32 %21, 0, !dbg !4324
  br i1 %22, label %26, label %23, !dbg !4325

23:                                               ; preds = %18
  %24 = add nuw nsw i64 %19, 1, !dbg !4326
  call void @llvm.dbg.value(metadata i64 %24, metadata !4287, metadata !DIExpression()), !dbg !4313
  %25 = icmp eq i64 %24, 35, !dbg !4327
  br i1 %25, label %30, label %18, !dbg !4328, !llvm.loop !4329

26:                                               ; preds = %18
  %27 = and i64 %19, 4294967295, !dbg !4331
  %28 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %27, !dbg !4332
  %29 = load i32, ptr %28, align 4, !dbg !4333, !tbaa !4334
  br label %75

30:                                               ; preds = %23
  %31 = tail call i32 @__libc_current_sigrtmin() #40, !dbg !4336
  call void @llvm.dbg.value(metadata i32 %31, metadata !4290, metadata !DIExpression()), !dbg !4337
  %32 = tail call i32 @__libc_current_sigrtmax() #40, !dbg !4338
  call void @llvm.dbg.value(metadata i32 %32, metadata !4292, metadata !DIExpression()), !dbg !4337
  %33 = icmp sgt i32 %31, 0, !dbg !4339
  br i1 %33, label %34, label %53, !dbg !4340

34:                                               ; preds = %30
  %35 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.147, i64 noundef 5) #41, !dbg !4341
  %36 = icmp eq i32 %35, 0, !dbg !4342
  br i1 %36, label %37, label %53, !dbg !4343

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !4344
  %38 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !4345
  call void @llvm.dbg.value(metadata ptr %4, metadata !4293, metadata !DIExpression(DW_OP_deref)), !dbg !4346
  %39 = call i64 @strtol(ptr noundef nonnull %38, ptr noundef nonnull %4, i32 noundef 10) #40, !dbg !4347
  call void @llvm.dbg.value(metadata i64 %39, metadata !4296, metadata !DIExpression()), !dbg !4346
  %40 = load ptr, ptr %4, align 8, !dbg !4348, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %40, metadata !4293, metadata !DIExpression()), !dbg !4346
  %41 = load i8, ptr %40, align 1, !dbg !4350, !tbaa !1157
  %42 = icmp eq i8 %41, 0, !dbg !4350
  %43 = icmp sgt i64 %39, -1
  %44 = select i1 %42, i1 %43, i1 false, !dbg !4351
  br i1 %44, label %45, label %49, !dbg !4351

45:                                               ; preds = %37
  %46 = sub nsw i32 %32, %31, !dbg !4352
  %47 = sext i32 %46 to i64, !dbg !4353
  %48 = icmp sgt i64 %39, %47, !dbg !4354
  br i1 %48, label %49, label %50, !dbg !4355

49:                                               ; preds = %45, %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !4356
  br label %74

50:                                               ; preds = %45
  %51 = trunc i64 %39 to i32, !dbg !4357
  %52 = add i32 %31, %51, !dbg !4357
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !4356
  br label %75

53:                                               ; preds = %34, %30
  %54 = icmp sgt i32 %32, 0, !dbg !4358
  br i1 %54, label %55, label %74, !dbg !4359

55:                                               ; preds = %53
  %56 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.1.148, i64 noundef 5) #41, !dbg !4360
  %57 = icmp eq i32 %56, 0, !dbg !4361
  br i1 %57, label %58, label %74, !dbg !4362

58:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !4363
  %59 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !4364
  call void @llvm.dbg.value(metadata ptr %5, metadata !4297, metadata !DIExpression(DW_OP_deref)), !dbg !4365
  %60 = call i64 @strtol(ptr noundef nonnull %59, ptr noundef nonnull %5, i32 noundef 10) #40, !dbg !4366
  call void @llvm.dbg.value(metadata i64 %60, metadata !4300, metadata !DIExpression()), !dbg !4365
  %61 = load ptr, ptr %5, align 8, !dbg !4367, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %61, metadata !4297, metadata !DIExpression()), !dbg !4365
  %62 = load i8, ptr %61, align 1, !dbg !4369, !tbaa !1157
  %63 = icmp eq i8 %62, 0, !dbg !4369
  br i1 %63, label %64, label %70, !dbg !4370

64:                                               ; preds = %58
  %65 = sub nsw i32 %31, %32, !dbg !4371
  %66 = sext i32 %65 to i64, !dbg !4372
  %67 = icmp sge i64 %60, %66, !dbg !4373
  %68 = icmp slt i64 %60, 1
  %69 = and i1 %67, %68, !dbg !4374
  br i1 %69, label %71, label %70, !dbg !4374

70:                                               ; preds = %64, %58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !4375
  br label %74

71:                                               ; preds = %64
  %72 = trunc i64 %60 to i32, !dbg !4376
  %73 = add i32 %32, %72, !dbg !4376
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !4375
  br label %75

74:                                               ; preds = %70, %55, %53, %49, %10
  br label %75, !dbg !4377

75:                                               ; preds = %10, %26, %50, %71, %74
  %76 = phi i32 [ %17, %10 ], [ -1, %74 ], [ %29, %26 ], [ %52, %50 ], [ %73, %71 ], !dbg !4301
  store i32 %76, ptr %1, align 4, !dbg !4378, !tbaa !1148
  %77 = ashr i32 %76, 31, !dbg !4379
  ret i32 %77, !dbg !4380
}

; Function Attrs: nounwind
declare !dbg !4381 i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4384 i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @sig2str(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4385 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4389, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata ptr %1, metadata !4390, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i32 0, metadata !4391, metadata !DIExpression()), !dbg !4399
  br label %3, !dbg !4400

3:                                                ; preds = %28, %2
  %4 = phi i64 [ 0, %2 ], [ %29, %28 ]
  call void @llvm.dbg.value(metadata i64 %4, metadata !4391, metadata !DIExpression()), !dbg !4399
  %5 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %4, !dbg !4401
  %6 = load i32, ptr %5, align 4, !dbg !4404, !tbaa !4334
  %7 = icmp eq i32 %6, %0, !dbg !4405
  br i1 %7, label %31, label %8, !dbg !4406

8:                                                ; preds = %3
  %9 = add nuw nsw i64 %4, 1, !dbg !4407
  call void @llvm.dbg.value(metadata i64 %9, metadata !4391, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata i64 %9, metadata !4391, metadata !DIExpression()), !dbg !4399
  %10 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %9, !dbg !4401
  %11 = load i32, ptr %10, align 4, !dbg !4404, !tbaa !4334
  %12 = icmp eq i32 %11, %0, !dbg !4405
  br i1 %12, label %31, label %13, !dbg !4406

13:                                               ; preds = %8
  %14 = add nuw nsw i64 %4, 2, !dbg !4407
  call void @llvm.dbg.value(metadata i64 %14, metadata !4391, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata i64 %14, metadata !4391, metadata !DIExpression()), !dbg !4399
  %15 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %14, !dbg !4401
  %16 = load i32, ptr %15, align 4, !dbg !4404, !tbaa !4334
  %17 = icmp eq i32 %16, %0, !dbg !4405
  br i1 %17, label %31, label %18, !dbg !4406

18:                                               ; preds = %13
  %19 = add nuw nsw i64 %4, 3, !dbg !4407
  call void @llvm.dbg.value(metadata i64 %19, metadata !4391, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata i64 %19, metadata !4391, metadata !DIExpression()), !dbg !4399
  %20 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %19, !dbg !4401
  %21 = load i32, ptr %20, align 4, !dbg !4404, !tbaa !4334
  %22 = icmp eq i32 %21, %0, !dbg !4405
  br i1 %22, label %31, label %23, !dbg !4406

23:                                               ; preds = %18
  %24 = add nuw nsw i64 %4, 4, !dbg !4407
  call void @llvm.dbg.value(metadata i64 %24, metadata !4391, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata i64 %24, metadata !4391, metadata !DIExpression()), !dbg !4399
  %25 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %24, !dbg !4401
  %26 = load i32, ptr %25, align 4, !dbg !4404, !tbaa !4334
  %27 = icmp eq i32 %26, %0, !dbg !4405
  br i1 %27, label %31, label %28, !dbg !4406

28:                                               ; preds = %23
  %29 = add nuw nsw i64 %4, 5, !dbg !4407
  call void @llvm.dbg.value(metadata i64 %29, metadata !4391, metadata !DIExpression()), !dbg !4399
  %30 = icmp eq i64 %29, 35, !dbg !4408
  br i1 %30, label %36, label %3, !dbg !4400, !llvm.loop !4409

31:                                               ; preds = %23, %18, %13, %8, %3
  %32 = phi i64 [ %4, %3 ], [ %9, %8 ], [ %14, %13 ], [ %19, %18 ], [ %24, %23 ]
  %33 = and i64 %32, 4294967295, !dbg !4411
  %34 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %33, i32 1, !dbg !4412
  call void @llvm.dbg.value(metadata ptr %1, metadata !4414, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata ptr %34, metadata !4417, metadata !DIExpression()), !dbg !4418
  %35 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %34), !dbg !4420
  br label %54

36:                                               ; preds = %28
  %37 = tail call i32 @__libc_current_sigrtmin() #40, !dbg !4421
  call void @llvm.dbg.value(metadata i32 %37, metadata !4393, metadata !DIExpression()), !dbg !4422
  %38 = tail call i32 @__libc_current_sigrtmax() #40, !dbg !4423
  call void @llvm.dbg.value(metadata i32 %38, metadata !4395, metadata !DIExpression()), !dbg !4422
  %39 = icmp sgt i32 %37, %0, !dbg !4424
  %40 = icmp slt i32 %38, %0
  %41 = select i1 %39, i1 true, i1 %40, !dbg !4426
  br i1 %41, label %54, label %42, !dbg !4426

42:                                               ; preds = %36
  %43 = sub nsw i32 %38, %37, !dbg !4427
  %44 = sdiv i32 %43, 2, !dbg !4429
  %45 = add nsw i32 %44, %37, !dbg !4430
  %46 = icmp slt i32 %45, %0, !dbg !4431
  call void @llvm.dbg.value(metadata ptr %1, metadata !4414, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata ptr %1, metadata !4414, metadata !DIExpression()), !dbg !4435
  %47 = select i1 %46, ptr @.str.1.148, ptr @.str.147
  %48 = select i1 %46, i32 %38, i32 %37
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) %47, i64 6, i1 false), !dbg !4438
  call void @llvm.dbg.value(metadata i32 %48, metadata !4396, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata !DIArgList(i32 %0, i32 %48), metadata !4397, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4422
  %49 = icmp eq i32 %48, %0, !dbg !4439
  br i1 %49, label %54, label %50, !dbg !4441

50:                                               ; preds = %42
  %51 = sub nsw i32 %0, %48, !dbg !4442
  call void @llvm.dbg.value(metadata i32 %51, metadata !4397, metadata !DIExpression()), !dbg !4422
  %52 = getelementptr inbounds i8, ptr %1, i64 5, !dbg !4443
  %53 = tail call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %52, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.2.151, i32 noundef %51) #40, !dbg !4443
  br label %54, !dbg !4443

54:                                               ; preds = %31, %36, %50, %42
  %55 = phi i32 [ 0, %31 ], [ -1, %36 ], [ 0, %50 ], [ 0, %42 ], !dbg !4398
  ret i32 %55, !dbg !4444
}

; Function Attrs: nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias nocapture readonly) #29

; Function Attrs: nofree
declare !dbg !4445 i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4448 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4487, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata ptr %1, metadata !4488, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata ptr %2, metadata !4489, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata ptr %3, metadata !4490, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata ptr %4, metadata !4491, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i64 %5, metadata !4492, metadata !DIExpression()), !dbg !4493
  %7 = icmp eq ptr %1, null, !dbg !4494
  br i1 %7, label %10, label %8, !dbg !4496

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.152, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !4497
  br label %12, !dbg !4497

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.153, ptr noundef %2, ptr noundef %3) #40, !dbg !4498
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.3.155, i32 noundef 5) #40, !dbg !4499
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !4499
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.156, ptr noundef %0), !dbg !4500
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.5.157, i32 noundef 5) #40, !dbg !4501
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.158) #40, !dbg !4501
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.156, ptr noundef %0), !dbg !4502
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
  ], !dbg !4503

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.7.159, i32 noundef 5) #40, !dbg !4504
  %21 = load ptr, ptr %4, align 8, !dbg !4504, !tbaa !1065
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !4504
  br label %147, !dbg !4506

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.8.160, i32 noundef 5) #40, !dbg !4507
  %25 = load ptr, ptr %4, align 8, !dbg !4507, !tbaa !1065
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4507
  %27 = load ptr, ptr %26, align 8, !dbg !4507, !tbaa !1065
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !4507
  br label %147, !dbg !4508

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.9.161, i32 noundef 5) #40, !dbg !4509
  %31 = load ptr, ptr %4, align 8, !dbg !4509, !tbaa !1065
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4509
  %33 = load ptr, ptr %32, align 8, !dbg !4509, !tbaa !1065
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4509
  %35 = load ptr, ptr %34, align 8, !dbg !4509, !tbaa !1065
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !4509
  br label %147, !dbg !4510

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.10.162, i32 noundef 5) #40, !dbg !4511
  %39 = load ptr, ptr %4, align 8, !dbg !4511, !tbaa !1065
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4511
  %41 = load ptr, ptr %40, align 8, !dbg !4511, !tbaa !1065
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4511
  %43 = load ptr, ptr %42, align 8, !dbg !4511, !tbaa !1065
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4511
  %45 = load ptr, ptr %44, align 8, !dbg !4511, !tbaa !1065
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !4511
  br label %147, !dbg !4512

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.11.163, i32 noundef 5) #40, !dbg !4513
  %49 = load ptr, ptr %4, align 8, !dbg !4513, !tbaa !1065
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4513
  %51 = load ptr, ptr %50, align 8, !dbg !4513, !tbaa !1065
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4513
  %53 = load ptr, ptr %52, align 8, !dbg !4513, !tbaa !1065
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4513
  %55 = load ptr, ptr %54, align 8, !dbg !4513, !tbaa !1065
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4513
  %57 = load ptr, ptr %56, align 8, !dbg !4513, !tbaa !1065
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !4513
  br label %147, !dbg !4514

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.12.164, i32 noundef 5) #40, !dbg !4515
  %61 = load ptr, ptr %4, align 8, !dbg !4515, !tbaa !1065
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4515
  %63 = load ptr, ptr %62, align 8, !dbg !4515, !tbaa !1065
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4515
  %65 = load ptr, ptr %64, align 8, !dbg !4515, !tbaa !1065
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4515
  %67 = load ptr, ptr %66, align 8, !dbg !4515, !tbaa !1065
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4515
  %69 = load ptr, ptr %68, align 8, !dbg !4515, !tbaa !1065
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4515
  %71 = load ptr, ptr %70, align 8, !dbg !4515, !tbaa !1065
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !4515
  br label %147, !dbg !4516

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.13.165, i32 noundef 5) #40, !dbg !4517
  %75 = load ptr, ptr %4, align 8, !dbg !4517, !tbaa !1065
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4517
  %77 = load ptr, ptr %76, align 8, !dbg !4517, !tbaa !1065
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4517
  %79 = load ptr, ptr %78, align 8, !dbg !4517, !tbaa !1065
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4517
  %81 = load ptr, ptr %80, align 8, !dbg !4517, !tbaa !1065
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4517
  %83 = load ptr, ptr %82, align 8, !dbg !4517, !tbaa !1065
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4517
  %85 = load ptr, ptr %84, align 8, !dbg !4517, !tbaa !1065
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4517
  %87 = load ptr, ptr %86, align 8, !dbg !4517, !tbaa !1065
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !4517
  br label %147, !dbg !4518

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.14.166, i32 noundef 5) #40, !dbg !4519
  %91 = load ptr, ptr %4, align 8, !dbg !4519, !tbaa !1065
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4519
  %93 = load ptr, ptr %92, align 8, !dbg !4519, !tbaa !1065
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4519
  %95 = load ptr, ptr %94, align 8, !dbg !4519, !tbaa !1065
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4519
  %97 = load ptr, ptr %96, align 8, !dbg !4519, !tbaa !1065
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4519
  %99 = load ptr, ptr %98, align 8, !dbg !4519, !tbaa !1065
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4519
  %101 = load ptr, ptr %100, align 8, !dbg !4519, !tbaa !1065
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4519
  %103 = load ptr, ptr %102, align 8, !dbg !4519, !tbaa !1065
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4519
  %105 = load ptr, ptr %104, align 8, !dbg !4519, !tbaa !1065
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !4519
  br label %147, !dbg !4520

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.15.167, i32 noundef 5) #40, !dbg !4521
  %109 = load ptr, ptr %4, align 8, !dbg !4521, !tbaa !1065
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4521
  %111 = load ptr, ptr %110, align 8, !dbg !4521, !tbaa !1065
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4521
  %113 = load ptr, ptr %112, align 8, !dbg !4521, !tbaa !1065
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4521
  %115 = load ptr, ptr %114, align 8, !dbg !4521, !tbaa !1065
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4521
  %117 = load ptr, ptr %116, align 8, !dbg !4521, !tbaa !1065
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4521
  %119 = load ptr, ptr %118, align 8, !dbg !4521, !tbaa !1065
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4521
  %121 = load ptr, ptr %120, align 8, !dbg !4521, !tbaa !1065
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4521
  %123 = load ptr, ptr %122, align 8, !dbg !4521, !tbaa !1065
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4521
  %125 = load ptr, ptr %124, align 8, !dbg !4521, !tbaa !1065
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !4521
  br label %147, !dbg !4522

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.16.168, i32 noundef 5) #40, !dbg !4523
  %129 = load ptr, ptr %4, align 8, !dbg !4523, !tbaa !1065
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4523
  %131 = load ptr, ptr %130, align 8, !dbg !4523, !tbaa !1065
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4523
  %133 = load ptr, ptr %132, align 8, !dbg !4523, !tbaa !1065
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4523
  %135 = load ptr, ptr %134, align 8, !dbg !4523, !tbaa !1065
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4523
  %137 = load ptr, ptr %136, align 8, !dbg !4523, !tbaa !1065
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4523
  %139 = load ptr, ptr %138, align 8, !dbg !4523, !tbaa !1065
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4523
  %141 = load ptr, ptr %140, align 8, !dbg !4523, !tbaa !1065
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4523
  %143 = load ptr, ptr %142, align 8, !dbg !4523, !tbaa !1065
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4523
  %145 = load ptr, ptr %144, align 8, !dbg !4523, !tbaa !1065
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !4523
  br label %147, !dbg !4524

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4525
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4526 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4530, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata ptr %1, metadata !4531, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata ptr %2, metadata !4532, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata ptr %3, metadata !4533, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata ptr %4, metadata !4534, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata i64 0, metadata !4535, metadata !DIExpression()), !dbg !4536
  br label %6, !dbg !4537

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4539
  call void @llvm.dbg.value(metadata i64 %7, metadata !4535, metadata !DIExpression()), !dbg !4536
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4540
  %9 = load ptr, ptr %8, align 8, !dbg !4540, !tbaa !1065
  %10 = icmp eq ptr %9, null, !dbg !4542
  %11 = add i64 %7, 1, !dbg !4543
  call void @llvm.dbg.value(metadata i64 %11, metadata !4535, metadata !DIExpression()), !dbg !4536
  br i1 %10, label %12, label %6, !dbg !4542, !llvm.loop !4544

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4546
  ret void, !dbg !4547
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4548 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4560, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata ptr %1, metadata !4561, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata ptr %2, metadata !4562, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata ptr %3, metadata !4563, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata ptr %4, metadata !4564, metadata !DIExpression()), !dbg !4568
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !4569
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4566, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i64 0, metadata !4565, metadata !DIExpression()), !dbg !4568
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4565, metadata !DIExpression()), !dbg !4568
  %10 = icmp ult i32 %9, 41, !dbg !4571
  br i1 %10, label %11, label %16, !dbg !4571

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4571
  %13 = zext i32 %9 to i64, !dbg !4571
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4571
  %15 = add nuw nsw i32 %9, 8, !dbg !4571
  store i32 %15, ptr %4, align 8, !dbg !4571
  br label %19, !dbg !4571

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4571
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4571
  store ptr %18, ptr %7, align 8, !dbg !4571
  br label %19, !dbg !4571

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4571
  %22 = load ptr, ptr %21, align 8, !dbg !4571
  store ptr %22, ptr %6, align 16, !dbg !4574, !tbaa !1065
  %23 = icmp eq ptr %22, null, !dbg !4575
  br i1 %23, label %128, label %24, !dbg !4576

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !4565, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata i64 1, metadata !4565, metadata !DIExpression()), !dbg !4568
  %25 = icmp ult i32 %20, 41, !dbg !4571
  br i1 %25, label %29, label %26, !dbg !4571

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4571
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4571
  store ptr %28, ptr %7, align 8, !dbg !4571
  br label %34, !dbg !4571

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4571
  %31 = zext i32 %20 to i64, !dbg !4571
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4571
  %33 = add nuw nsw i32 %20, 8, !dbg !4571
  store i32 %33, ptr %4, align 8, !dbg !4571
  br label %34, !dbg !4571

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4571
  %37 = load ptr, ptr %36, align 8, !dbg !4571
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4577
  store ptr %37, ptr %38, align 8, !dbg !4574, !tbaa !1065
  %39 = icmp eq ptr %37, null, !dbg !4575
  br i1 %39, label %128, label %40, !dbg !4576

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !4565, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata i64 2, metadata !4565, metadata !DIExpression()), !dbg !4568
  %41 = icmp ult i32 %35, 41, !dbg !4571
  br i1 %41, label %45, label %42, !dbg !4571

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4571
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4571
  store ptr %44, ptr %7, align 8, !dbg !4571
  br label %50, !dbg !4571

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4571
  %47 = zext i32 %35 to i64, !dbg !4571
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4571
  %49 = add nuw nsw i32 %35, 8, !dbg !4571
  store i32 %49, ptr %4, align 8, !dbg !4571
  br label %50, !dbg !4571

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4571
  %53 = load ptr, ptr %52, align 8, !dbg !4571
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4577
  store ptr %53, ptr %54, align 16, !dbg !4574, !tbaa !1065
  %55 = icmp eq ptr %53, null, !dbg !4575
  br i1 %55, label %128, label %56, !dbg !4576

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !4565, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata i64 3, metadata !4565, metadata !DIExpression()), !dbg !4568
  %57 = icmp ult i32 %51, 41, !dbg !4571
  br i1 %57, label %61, label %58, !dbg !4571

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4571
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4571
  store ptr %60, ptr %7, align 8, !dbg !4571
  br label %66, !dbg !4571

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4571
  %63 = zext i32 %51 to i64, !dbg !4571
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4571
  %65 = add nuw nsw i32 %51, 8, !dbg !4571
  store i32 %65, ptr %4, align 8, !dbg !4571
  br label %66, !dbg !4571

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4571
  %69 = load ptr, ptr %68, align 8, !dbg !4571
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4577
  store ptr %69, ptr %70, align 8, !dbg !4574, !tbaa !1065
  %71 = icmp eq ptr %69, null, !dbg !4575
  br i1 %71, label %128, label %72, !dbg !4576

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !4565, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata i64 4, metadata !4565, metadata !DIExpression()), !dbg !4568
  %73 = icmp ult i32 %67, 41, !dbg !4571
  br i1 %73, label %77, label %74, !dbg !4571

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4571
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4571
  store ptr %76, ptr %7, align 8, !dbg !4571
  br label %82, !dbg !4571

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4571
  %79 = zext i32 %67 to i64, !dbg !4571
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4571
  %81 = add nuw nsw i32 %67, 8, !dbg !4571
  store i32 %81, ptr %4, align 8, !dbg !4571
  br label %82, !dbg !4571

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4571
  %85 = load ptr, ptr %84, align 8, !dbg !4571
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4577
  store ptr %85, ptr %86, align 16, !dbg !4574, !tbaa !1065
  %87 = icmp eq ptr %85, null, !dbg !4575
  br i1 %87, label %128, label %88, !dbg !4576

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !4565, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata i64 5, metadata !4565, metadata !DIExpression()), !dbg !4568
  %89 = icmp ult i32 %83, 41, !dbg !4571
  br i1 %89, label %93, label %90, !dbg !4571

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4571
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4571
  store ptr %92, ptr %7, align 8, !dbg !4571
  br label %98, !dbg !4571

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4571
  %95 = zext i32 %83 to i64, !dbg !4571
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4571
  %97 = add nuw nsw i32 %83, 8, !dbg !4571
  store i32 %97, ptr %4, align 8, !dbg !4571
  br label %98, !dbg !4571

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4571
  %100 = load ptr, ptr %99, align 8, !dbg !4571
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4577
  store ptr %100, ptr %101, align 8, !dbg !4574, !tbaa !1065
  %102 = icmp eq ptr %100, null, !dbg !4575
  br i1 %102, label %128, label %103, !dbg !4576

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !4565, metadata !DIExpression()), !dbg !4568
  %104 = load ptr, ptr %7, align 8, !dbg !4571
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4571
  store ptr %105, ptr %7, align 8, !dbg !4571
  %106 = load ptr, ptr %104, align 8, !dbg !4571
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4577
  store ptr %106, ptr %107, align 16, !dbg !4574, !tbaa !1065
  %108 = icmp eq ptr %106, null, !dbg !4575
  br i1 %108, label %128, label %109, !dbg !4576

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !4565, metadata !DIExpression()), !dbg !4568
  %110 = load ptr, ptr %7, align 8, !dbg !4571
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4571
  store ptr %111, ptr %7, align 8, !dbg !4571
  %112 = load ptr, ptr %110, align 8, !dbg !4571
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4577
  store ptr %112, ptr %113, align 8, !dbg !4574, !tbaa !1065
  %114 = icmp eq ptr %112, null, !dbg !4575
  br i1 %114, label %128, label %115, !dbg !4576

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !4565, metadata !DIExpression()), !dbg !4568
  %116 = load ptr, ptr %7, align 8, !dbg !4571
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4571
  store ptr %117, ptr %7, align 8, !dbg !4571
  %118 = load ptr, ptr %116, align 8, !dbg !4571
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4577
  store ptr %118, ptr %119, align 16, !dbg !4574, !tbaa !1065
  %120 = icmp eq ptr %118, null, !dbg !4575
  br i1 %120, label %128, label %121, !dbg !4576

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !4565, metadata !DIExpression()), !dbg !4568
  %122 = load ptr, ptr %7, align 8, !dbg !4571
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4571
  store ptr %123, ptr %7, align 8, !dbg !4571
  %124 = load ptr, ptr %122, align 8, !dbg !4571
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4577
  store ptr %124, ptr %125, align 8, !dbg !4574, !tbaa !1065
  %126 = icmp eq ptr %124, null, !dbg !4575
  %127 = select i1 %126, i64 9, i64 10, !dbg !4576
  br label %128, !dbg !4576

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4578
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4579
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !4580
  ret void, !dbg !4580
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4581 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4585, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata ptr %1, metadata !4586, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata ptr %2, metadata !4587, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata ptr %3, metadata !4588, metadata !DIExpression()), !dbg !4594
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #40, !dbg !4595
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4589, metadata !DIExpression()), !dbg !4596
  call void @llvm.va_start(ptr nonnull %5), !dbg !4597
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4598
  call void @llvm.va_end(ptr nonnull %5), !dbg !4599
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #40, !dbg !4600
  ret void, !dbg !4600
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4601 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4602, !tbaa !1065
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.156, ptr noundef %1), !dbg !4602
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.17.173, i32 noundef 5) #40, !dbg !4603
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.174) #40, !dbg !4603
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.19.175, i32 noundef 5) #40, !dbg !4604
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.176, ptr noundef nonnull @.str.21.177) #40, !dbg !4604
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.154, ptr noundef nonnull @.str.22.178, i32 noundef 5) #40, !dbg !4605
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.179) #40, !dbg !4605
  ret void, !dbg !4606
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4607 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4612, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 %1, metadata !4613, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 %2, metadata !4614, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata ptr %0, metadata !4616, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i64 %1, metadata !4619, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i64 %2, metadata !4620, metadata !DIExpression()), !dbg !4621
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4623
  call void @llvm.dbg.value(metadata ptr %4, metadata !4624, metadata !DIExpression()), !dbg !4629
  %5 = icmp eq ptr %4, null, !dbg !4631
  br i1 %5, label %6, label %7, !dbg !4633

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4634
  unreachable, !dbg !4634

7:                                                ; preds = %3
  ret ptr %4, !dbg !4635
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4617 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4616, metadata !DIExpression()), !dbg !4636
  call void @llvm.dbg.value(metadata i64 %1, metadata !4619, metadata !DIExpression()), !dbg !4636
  call void @llvm.dbg.value(metadata i64 %2, metadata !4620, metadata !DIExpression()), !dbg !4636
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4637
  call void @llvm.dbg.value(metadata ptr %4, metadata !4624, metadata !DIExpression()), !dbg !4638
  %5 = icmp eq ptr %4, null, !dbg !4640
  br i1 %5, label %6, label %7, !dbg !4641

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4642
  unreachable, !dbg !4642

7:                                                ; preds = %3
  ret ptr %4, !dbg !4643
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4644 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4648, metadata !DIExpression()), !dbg !4649
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4650
  call void @llvm.dbg.value(metadata ptr %2, metadata !4624, metadata !DIExpression()), !dbg !4651
  %3 = icmp eq ptr %2, null, !dbg !4653
  br i1 %3, label %4, label %5, !dbg !4654

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4655
  unreachable, !dbg !4655

5:                                                ; preds = %1
  ret ptr %2, !dbg !4656
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4657 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4658 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4662, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata i64 %0, metadata !4664, metadata !DIExpression()), !dbg !4668
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4670
  call void @llvm.dbg.value(metadata ptr %2, metadata !4624, metadata !DIExpression()), !dbg !4671
  %3 = icmp eq ptr %2, null, !dbg !4673
  br i1 %3, label %4, label %5, !dbg !4674

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4675
  unreachable, !dbg !4675

5:                                                ; preds = %1
  ret ptr %2, !dbg !4676
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4677 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4681, metadata !DIExpression()), !dbg !4682
  call void @llvm.dbg.value(metadata i64 %0, metadata !4648, metadata !DIExpression()), !dbg !4683
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4685
  call void @llvm.dbg.value(metadata ptr %2, metadata !4624, metadata !DIExpression()), !dbg !4686
  %3 = icmp eq ptr %2, null, !dbg !4688
  br i1 %3, label %4, label %5, !dbg !4689

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4690
  unreachable, !dbg !4690

5:                                                ; preds = %1
  ret ptr %2, !dbg !4691
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4692 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4696, metadata !DIExpression()), !dbg !4698
  call void @llvm.dbg.value(metadata i64 %1, metadata !4697, metadata !DIExpression()), !dbg !4698
  call void @llvm.dbg.value(metadata ptr %0, metadata !4699, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.value(metadata i64 %1, metadata !4703, metadata !DIExpression()), !dbg !4704
  %3 = icmp eq i64 %1, 0, !dbg !4706
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4706
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #48, !dbg !4707
  call void @llvm.dbg.value(metadata ptr %5, metadata !4624, metadata !DIExpression()), !dbg !4708
  %6 = icmp eq ptr %5, null, !dbg !4710
  br i1 %6, label %7, label %8, !dbg !4711

7:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4712
  unreachable, !dbg !4712

8:                                                ; preds = %2
  ret ptr %5, !dbg !4713
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4714 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4715 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4719, metadata !DIExpression()), !dbg !4721
  call void @llvm.dbg.value(metadata i64 %1, metadata !4720, metadata !DIExpression()), !dbg !4721
  call void @llvm.dbg.value(metadata ptr %0, metadata !4722, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata i64 %1, metadata !4725, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata ptr %0, metadata !4699, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.value(metadata i64 %1, metadata !4703, metadata !DIExpression()), !dbg !4728
  %3 = icmp eq i64 %1, 0, !dbg !4730
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4730
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #48, !dbg !4731
  call void @llvm.dbg.value(metadata ptr %5, metadata !4624, metadata !DIExpression()), !dbg !4732
  %6 = icmp eq ptr %5, null, !dbg !4734
  br i1 %6, label %7, label %8, !dbg !4735

7:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4736
  unreachable, !dbg !4736

8:                                                ; preds = %2
  ret ptr %5, !dbg !4737
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4738 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4742, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.value(metadata i64 %1, metadata !4743, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.value(metadata i64 %2, metadata !4744, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.value(metadata ptr %0, metadata !4746, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i64 %1, metadata !4749, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i64 %2, metadata !4750, metadata !DIExpression()), !dbg !4751
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4753
  call void @llvm.dbg.value(metadata ptr %4, metadata !4624, metadata !DIExpression()), !dbg !4754
  %5 = icmp eq ptr %4, null, !dbg !4756
  br i1 %5, label %6, label %7, !dbg !4757

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4758
  unreachable, !dbg !4758

7:                                                ; preds = %3
  ret ptr %4, !dbg !4759
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4760 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4764, metadata !DIExpression()), !dbg !4766
  call void @llvm.dbg.value(metadata i64 %1, metadata !4765, metadata !DIExpression()), !dbg !4766
  call void @llvm.dbg.value(metadata ptr null, metadata !4616, metadata !DIExpression()), !dbg !4767
  call void @llvm.dbg.value(metadata i64 %0, metadata !4619, metadata !DIExpression()), !dbg !4767
  call void @llvm.dbg.value(metadata i64 %1, metadata !4620, metadata !DIExpression()), !dbg !4767
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4769
  call void @llvm.dbg.value(metadata ptr %3, metadata !4624, metadata !DIExpression()), !dbg !4770
  %4 = icmp eq ptr %3, null, !dbg !4772
  br i1 %4, label %5, label %6, !dbg !4773

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4774
  unreachable, !dbg !4774

6:                                                ; preds = %2
  ret ptr %3, !dbg !4775
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4776 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4780, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.value(metadata i64 %1, metadata !4781, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.value(metadata ptr null, metadata !4742, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata i64 %0, metadata !4743, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata i64 %1, metadata !4744, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata ptr null, metadata !4746, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata i64 %0, metadata !4749, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata i64 %1, metadata !4750, metadata !DIExpression()), !dbg !4785
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4787
  call void @llvm.dbg.value(metadata ptr %3, metadata !4624, metadata !DIExpression()), !dbg !4788
  %4 = icmp eq ptr %3, null, !dbg !4790
  br i1 %4, label %5, label %6, !dbg !4791

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4792
  unreachable, !dbg !4792

6:                                                ; preds = %2
  ret ptr %3, !dbg !4793
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4794 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4798, metadata !DIExpression()), !dbg !4800
  call void @llvm.dbg.value(metadata ptr %1, metadata !4799, metadata !DIExpression()), !dbg !4800
  call void @llvm.dbg.value(metadata ptr %0, metadata !1006, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata ptr %1, metadata !1007, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i64 1, metadata !1008, metadata !DIExpression()), !dbg !4801
  %3 = load i64, ptr %1, align 8, !dbg !4803, !tbaa !1343
  call void @llvm.dbg.value(metadata i64 %3, metadata !1009, metadata !DIExpression()), !dbg !4801
  %4 = icmp eq ptr %0, null, !dbg !4804
  br i1 %4, label %5, label %8, !dbg !4806

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4807
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4810
  br label %15, !dbg !4810

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4811
  %10 = add nuw i64 %9, 1, !dbg !4811
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4811
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4811
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4811
  call void @llvm.dbg.value(metadata i64 %13, metadata !1009, metadata !DIExpression()), !dbg !4801
  br i1 %12, label %14, label %15, !dbg !4814

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !4815
  unreachable, !dbg !4815

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4801
  call void @llvm.dbg.value(metadata i64 %16, metadata !1009, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata ptr %0, metadata !4616, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata i64 %16, metadata !4619, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata i64 1, metadata !4620, metadata !DIExpression()), !dbg !4816
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !4818
  call void @llvm.dbg.value(metadata ptr %17, metadata !4624, metadata !DIExpression()), !dbg !4819
  %18 = icmp eq ptr %17, null, !dbg !4821
  br i1 %18, label %19, label %20, !dbg !4822

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !4823
  unreachable, !dbg !4823

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !1006, metadata !DIExpression()), !dbg !4801
  store i64 %16, ptr %1, align 8, !dbg !4824, !tbaa !1343
  ret ptr %17, !dbg !4825
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1001 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1006, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata ptr %1, metadata !1007, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata i64 %2, metadata !1008, metadata !DIExpression()), !dbg !4826
  %4 = load i64, ptr %1, align 8, !dbg !4827, !tbaa !1343
  call void @llvm.dbg.value(metadata i64 %4, metadata !1009, metadata !DIExpression()), !dbg !4826
  %5 = icmp eq ptr %0, null, !dbg !4828
  br i1 %5, label %6, label %13, !dbg !4829

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4830
  br i1 %7, label %8, label %20, !dbg !4831

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4832
  call void @llvm.dbg.value(metadata i64 %9, metadata !1009, metadata !DIExpression()), !dbg !4826
  %10 = icmp ugt i64 %2, 128, !dbg !4834
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4835
  call void @llvm.dbg.value(metadata i64 %12, metadata !1009, metadata !DIExpression()), !dbg !4826
  br label %20, !dbg !4836

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4837
  %15 = add nuw i64 %14, 1, !dbg !4837
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4837
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4837
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4837
  call void @llvm.dbg.value(metadata i64 %18, metadata !1009, metadata !DIExpression()), !dbg !4826
  br i1 %17, label %19, label %20, !dbg !4838

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !4839
  unreachable, !dbg !4839

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4826
  call void @llvm.dbg.value(metadata i64 %21, metadata !1009, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata ptr %0, metadata !4616, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i64 %21, metadata !4619, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i64 %2, metadata !4620, metadata !DIExpression()), !dbg !4840
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !4842
  call void @llvm.dbg.value(metadata ptr %22, metadata !4624, metadata !DIExpression()), !dbg !4843
  %23 = icmp eq ptr %22, null, !dbg !4845
  br i1 %23, label %24, label %25, !dbg !4846

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !4847
  unreachable, !dbg !4847

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !1006, metadata !DIExpression()), !dbg !4826
  store i64 %21, ptr %1, align 8, !dbg !4848, !tbaa !1343
  ret ptr %22, !dbg !4849
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !1013 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1018, metadata !DIExpression()), !dbg !4850
  call void @llvm.dbg.value(metadata ptr %1, metadata !1019, metadata !DIExpression()), !dbg !4850
  call void @llvm.dbg.value(metadata i64 %2, metadata !1020, metadata !DIExpression()), !dbg !4850
  call void @llvm.dbg.value(metadata i64 %3, metadata !1021, metadata !DIExpression()), !dbg !4850
  call void @llvm.dbg.value(metadata i64 %4, metadata !1022, metadata !DIExpression()), !dbg !4850
  %6 = load i64, ptr %1, align 8, !dbg !4851, !tbaa !1343
  call void @llvm.dbg.value(metadata i64 %6, metadata !1023, metadata !DIExpression()), !dbg !4850
  %7 = ashr i64 %6, 1, !dbg !4852
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4852
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4852
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4852
  call void @llvm.dbg.value(metadata i64 %10, metadata !1024, metadata !DIExpression()), !dbg !4850
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4854
  call void @llvm.dbg.value(metadata i64 %11, metadata !1024, metadata !DIExpression()), !dbg !4850
  %12 = icmp sgt i64 %3, -1, !dbg !4855
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4857
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4857
  call void @llvm.dbg.value(metadata i64 %15, metadata !1024, metadata !DIExpression()), !dbg !4850
  %16 = icmp slt i64 %4, 0, !dbg !4858
  br i1 %16, label %17, label %30, !dbg !4858

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4858
  br i1 %18, label %19, label %24, !dbg !4858

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4858
  %21 = udiv i64 9223372036854775807, %20, !dbg !4858
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4858
  br i1 %23, label %46, label %43, !dbg !4858

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4858
  br i1 %25, label %43, label %26, !dbg !4858

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4858
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4858
  %29 = icmp ult i64 %28, %15, !dbg !4858
  br i1 %29, label %46, label %43, !dbg !4858

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4858
  br i1 %31, label %43, label %32, !dbg !4858

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4858
  br i1 %33, label %34, label %40, !dbg !4858

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4858
  br i1 %35, label %43, label %36, !dbg !4858

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4858
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4858
  %39 = icmp ult i64 %38, %4, !dbg !4858
  br i1 %39, label %46, label %43, !dbg !4858

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4858
  br i1 %42, label %46, label %43, !dbg !4858

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4850
  %44 = mul i64 %15, %4, !dbg !4858
  call void @llvm.dbg.value(metadata i64 %44, metadata !1025, metadata !DIExpression()), !dbg !4850
  %45 = icmp slt i64 %44, 128, !dbg !4858
  br i1 %45, label %46, label %51, !dbg !4858

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !1026, metadata !DIExpression()), !dbg !4850
  %48 = sdiv i64 %47, %4, !dbg !4859
  call void @llvm.dbg.value(metadata i64 %48, metadata !1024, metadata !DIExpression()), !dbg !4850
  %49 = srem i64 %47, %4, !dbg !4862
  %50 = sub nsw i64 %47, %49, !dbg !4863
  call void @llvm.dbg.value(metadata i64 %50, metadata !1025, metadata !DIExpression()), !dbg !4850
  br label %51, !dbg !4864

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4850
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4850
  call void @llvm.dbg.value(metadata i64 %53, metadata !1025, metadata !DIExpression()), !dbg !4850
  call void @llvm.dbg.value(metadata i64 %52, metadata !1024, metadata !DIExpression()), !dbg !4850
  %54 = icmp eq ptr %0, null, !dbg !4865
  br i1 %54, label %55, label %56, !dbg !4867

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4868, !tbaa !1343
  br label %56, !dbg !4869

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4870
  %58 = icmp slt i64 %57, %2, !dbg !4872
  br i1 %58, label %59, label %96, !dbg !4873

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4874
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4874
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4874
  call void @llvm.dbg.value(metadata i64 %62, metadata !1024, metadata !DIExpression()), !dbg !4850
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4875
  br i1 %65, label %95, label %66, !dbg !4875

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4876

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4876
  br i1 %68, label %69, label %74, !dbg !4876

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4876
  %71 = udiv i64 9223372036854775807, %70, !dbg !4876
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4876
  br i1 %73, label %95, label %93, !dbg !4876

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4876
  br i1 %75, label %93, label %76, !dbg !4876

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4876
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4876
  %79 = icmp ult i64 %78, %62, !dbg !4876
  br i1 %79, label %95, label %93, !dbg !4876

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4876
  br i1 %81, label %93, label %82, !dbg !4876

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4876
  br i1 %83, label %84, label %90, !dbg !4876

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4876
  br i1 %85, label %93, label %86, !dbg !4876

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4876
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4876
  %89 = icmp ult i64 %88, %4, !dbg !4876
  br i1 %89, label %95, label %93, !dbg !4876

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4876
  br i1 %92, label %95, label %93, !dbg !4876

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4850
  %94 = mul i64 %62, %4, !dbg !4876
  call void @llvm.dbg.value(metadata i64 %94, metadata !1025, metadata !DIExpression()), !dbg !4850
  br label %96, !dbg !4877

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #42, !dbg !4878
  unreachable, !dbg !4878

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4850
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4850
  call void @llvm.dbg.value(metadata i64 %98, metadata !1025, metadata !DIExpression()), !dbg !4850
  call void @llvm.dbg.value(metadata i64 %97, metadata !1024, metadata !DIExpression()), !dbg !4850
  call void @llvm.dbg.value(metadata ptr %0, metadata !4696, metadata !DIExpression()), !dbg !4879
  call void @llvm.dbg.value(metadata i64 %98, metadata !4697, metadata !DIExpression()), !dbg !4879
  call void @llvm.dbg.value(metadata ptr %0, metadata !4699, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.value(metadata i64 %98, metadata !4703, metadata !DIExpression()), !dbg !4881
  %99 = icmp eq i64 %98, 0, !dbg !4883
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4883
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #48, !dbg !4884
  call void @llvm.dbg.value(metadata ptr %101, metadata !4624, metadata !DIExpression()), !dbg !4885
  %102 = icmp eq ptr %101, null, !dbg !4887
  br i1 %102, label %103, label %104, !dbg !4888

103:                                              ; preds = %96
  tail call void @xalloc_die() #42, !dbg !4889
  unreachable, !dbg !4889

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !1018, metadata !DIExpression()), !dbg !4850
  store i64 %97, ptr %1, align 8, !dbg !4890, !tbaa !1343
  ret ptr %101, !dbg !4891
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4892 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4894, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i64 %0, metadata !4896, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.value(metadata i64 1, metadata !4899, metadata !DIExpression()), !dbg !4900
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !4902
  call void @llvm.dbg.value(metadata ptr %2, metadata !4624, metadata !DIExpression()), !dbg !4903
  %3 = icmp eq ptr %2, null, !dbg !4905
  br i1 %3, label %4, label %5, !dbg !4906

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4907
  unreachable, !dbg !4907

5:                                                ; preds = %1
  ret ptr %2, !dbg !4908
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4909 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4897 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4896, metadata !DIExpression()), !dbg !4910
  call void @llvm.dbg.value(metadata i64 %1, metadata !4899, metadata !DIExpression()), !dbg !4910
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !4911
  call void @llvm.dbg.value(metadata ptr %3, metadata !4624, metadata !DIExpression()), !dbg !4912
  %4 = icmp eq ptr %3, null, !dbg !4914
  br i1 %4, label %5, label %6, !dbg !4915

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4916
  unreachable, !dbg !4916

6:                                                ; preds = %2
  ret ptr %3, !dbg !4917
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4918 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4920, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata i64 %0, metadata !4922, metadata !DIExpression()), !dbg !4926
  call void @llvm.dbg.value(metadata i64 1, metadata !4925, metadata !DIExpression()), !dbg !4926
  call void @llvm.dbg.value(metadata i64 %0, metadata !4928, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i64 1, metadata !4931, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i64 %0, metadata !4928, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i64 1, metadata !4931, metadata !DIExpression()), !dbg !4932
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !4934
  call void @llvm.dbg.value(metadata ptr %2, metadata !4624, metadata !DIExpression()), !dbg !4935
  %3 = icmp eq ptr %2, null, !dbg !4937
  br i1 %3, label %4, label %5, !dbg !4938

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4939
  unreachable, !dbg !4939

5:                                                ; preds = %1
  ret ptr %2, !dbg !4940
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4923 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4922, metadata !DIExpression()), !dbg !4941
  call void @llvm.dbg.value(metadata i64 %1, metadata !4925, metadata !DIExpression()), !dbg !4941
  call void @llvm.dbg.value(metadata i64 %0, metadata !4928, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.value(metadata i64 %1, metadata !4931, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.value(metadata i64 %0, metadata !4928, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.value(metadata i64 %1, metadata !4931, metadata !DIExpression()), !dbg !4942
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !4944
  call void @llvm.dbg.value(metadata ptr %3, metadata !4624, metadata !DIExpression()), !dbg !4945
  %4 = icmp eq ptr %3, null, !dbg !4947
  br i1 %4, label %5, label %6, !dbg !4948

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4949
  unreachable, !dbg !4949

6:                                                ; preds = %2
  ret ptr %3, !dbg !4950
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4951 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4955, metadata !DIExpression()), !dbg !4957
  call void @llvm.dbg.value(metadata i64 %1, metadata !4956, metadata !DIExpression()), !dbg !4957
  call void @llvm.dbg.value(metadata i64 %1, metadata !4648, metadata !DIExpression()), !dbg !4958
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4960
  call void @llvm.dbg.value(metadata ptr %3, metadata !4624, metadata !DIExpression()), !dbg !4961
  %4 = icmp eq ptr %3, null, !dbg !4963
  br i1 %4, label %5, label %6, !dbg !4964

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4965
  unreachable, !dbg !4965

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4966, metadata !DIExpression()), !dbg !4971
  call void @llvm.dbg.value(metadata ptr %0, metadata !4969, metadata !DIExpression()), !dbg !4971
  call void @llvm.dbg.value(metadata i64 %1, metadata !4970, metadata !DIExpression()), !dbg !4971
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4973
  ret ptr %3, !dbg !4974
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4975 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4979, metadata !DIExpression()), !dbg !4981
  call void @llvm.dbg.value(metadata i64 %1, metadata !4980, metadata !DIExpression()), !dbg !4981
  call void @llvm.dbg.value(metadata i64 %1, metadata !4662, metadata !DIExpression()), !dbg !4982
  call void @llvm.dbg.value(metadata i64 %1, metadata !4664, metadata !DIExpression()), !dbg !4984
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4986
  call void @llvm.dbg.value(metadata ptr %3, metadata !4624, metadata !DIExpression()), !dbg !4987
  %4 = icmp eq ptr %3, null, !dbg !4989
  br i1 %4, label %5, label %6, !dbg !4990

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4991
  unreachable, !dbg !4991

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4966, metadata !DIExpression()), !dbg !4992
  call void @llvm.dbg.value(metadata ptr %0, metadata !4969, metadata !DIExpression()), !dbg !4992
  call void @llvm.dbg.value(metadata i64 %1, metadata !4970, metadata !DIExpression()), !dbg !4992
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4994
  ret ptr %3, !dbg !4995
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4996 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5000, metadata !DIExpression()), !dbg !5003
  call void @llvm.dbg.value(metadata i64 %1, metadata !5001, metadata !DIExpression()), !dbg !5003
  %3 = add nsw i64 %1, 1, !dbg !5004
  call void @llvm.dbg.value(metadata i64 %3, metadata !4662, metadata !DIExpression()), !dbg !5005
  call void @llvm.dbg.value(metadata i64 %3, metadata !4664, metadata !DIExpression()), !dbg !5007
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !5009
  call void @llvm.dbg.value(metadata ptr %4, metadata !4624, metadata !DIExpression()), !dbg !5010
  %5 = icmp eq ptr %4, null, !dbg !5012
  br i1 %5, label %6, label %7, !dbg !5013

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !5014
  unreachable, !dbg !5014

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !5002, metadata !DIExpression()), !dbg !5003
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !5015
  store i8 0, ptr %8, align 1, !dbg !5016, !tbaa !1157
  call void @llvm.dbg.value(metadata ptr %4, metadata !4966, metadata !DIExpression()), !dbg !5017
  call void @llvm.dbg.value(metadata ptr %0, metadata !4969, metadata !DIExpression()), !dbg !5017
  call void @llvm.dbg.value(metadata i64 %1, metadata !4970, metadata !DIExpression()), !dbg !5017
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !5019
  ret ptr %4, !dbg !5020
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !5021 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5023, metadata !DIExpression()), !dbg !5024
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !5025
  %3 = add i64 %2, 1, !dbg !5026
  call void @llvm.dbg.value(metadata ptr %0, metadata !4955, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.value(metadata i64 %3, metadata !4956, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.value(metadata i64 %3, metadata !4648, metadata !DIExpression()), !dbg !5029
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !5031
  call void @llvm.dbg.value(metadata ptr %4, metadata !4624, metadata !DIExpression()), !dbg !5032
  %5 = icmp eq ptr %4, null, !dbg !5034
  br i1 %5, label %6, label %7, !dbg !5035

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !5036
  unreachable, !dbg !5036

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4966, metadata !DIExpression()), !dbg !5037
  call void @llvm.dbg.value(metadata ptr %0, metadata !4969, metadata !DIExpression()), !dbg !5037
  call void @llvm.dbg.value(metadata i64 %3, metadata !4970, metadata !DIExpression()), !dbg !5037
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !5039
  ret ptr %4, !dbg !5040
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !5041 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !5046, !tbaa !1148
  call void @llvm.dbg.value(metadata i32 %1, metadata !5043, metadata !DIExpression()), !dbg !5047
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.196, ptr noundef nonnull @.str.2.197, i32 noundef 5) #40, !dbg !5046
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.198, ptr noundef %2) #40, !dbg !5046
  %3 = icmp eq i32 %1, 0, !dbg !5046
  tail call void @llvm.assume(i1 %3), !dbg !5046
  tail call void @abort() #42, !dbg !5048
  unreachable, !dbg !5048
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !5049 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5087, metadata !DIExpression()), !dbg !5092
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !5093
  call void @llvm.dbg.value(metadata i1 poison, metadata !5088, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5092
  call void @llvm.dbg.value(metadata ptr %0, metadata !5094, metadata !DIExpression()), !dbg !5097
  %3 = load i32, ptr %0, align 8, !dbg !5099, !tbaa !5100
  %4 = and i32 %3, 32, !dbg !5101
  %5 = icmp eq i32 %4, 0, !dbg !5101
  call void @llvm.dbg.value(metadata i1 %5, metadata !5090, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5092
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !5102
  %7 = icmp eq i32 %6, 0, !dbg !5103
  call void @llvm.dbg.value(metadata i1 %7, metadata !5091, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5092
  br i1 %5, label %8, label %18, !dbg !5104

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5106
  call void @llvm.dbg.value(metadata i1 %9, metadata !5088, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5092
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5107
  %11 = xor i1 %7, true, !dbg !5107
  %12 = sext i1 %11 to i32, !dbg !5107
  br i1 %10, label %21, label %13, !dbg !5107

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !5108
  %15 = load i32, ptr %14, align 4, !dbg !5108, !tbaa !1148
  %16 = icmp ne i32 %15, 9, !dbg !5109
  %17 = sext i1 %16 to i32, !dbg !5110
  br label %21, !dbg !5110

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5111

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !5113
  store i32 0, ptr %20, align 4, !dbg !5115, !tbaa !1148
  br label %21, !dbg !5113

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5092
  ret i32 %22, !dbg !5116
}

; Function Attrs: nounwind
declare !dbg !5117 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !5121 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5159, metadata !DIExpression()), !dbg !5163
  call void @llvm.dbg.value(metadata i32 0, metadata !5160, metadata !DIExpression()), !dbg !5163
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !5164
  call void @llvm.dbg.value(metadata i32 %2, metadata !5161, metadata !DIExpression()), !dbg !5163
  %3 = icmp slt i32 %2, 0, !dbg !5165
  br i1 %3, label %4, label %6, !dbg !5167

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5168
  br label %24, !dbg !5169

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !5170
  %8 = icmp eq i32 %7, 0, !dbg !5170
  br i1 %8, label %13, label %9, !dbg !5172

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !5173
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !5174
  %12 = icmp eq i64 %11, -1, !dbg !5175
  br i1 %12, label %16, label %13, !dbg !5176

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !5177
  %15 = icmp eq i32 %14, 0, !dbg !5177
  br i1 %15, label %16, label %18, !dbg !5178

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !5160, metadata !DIExpression()), !dbg !5163
  call void @llvm.dbg.value(metadata i32 0, metadata !5162, metadata !DIExpression()), !dbg !5163
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5179
  call void @llvm.dbg.value(metadata i32 %17, metadata !5162, metadata !DIExpression()), !dbg !5163
  br label %24, !dbg !5180

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !5181
  %20 = load i32, ptr %19, align 4, !dbg !5181, !tbaa !1148
  call void @llvm.dbg.value(metadata i32 %20, metadata !5160, metadata !DIExpression()), !dbg !5163
  call void @llvm.dbg.value(metadata i32 0, metadata !5162, metadata !DIExpression()), !dbg !5163
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5179
  call void @llvm.dbg.value(metadata i32 %21, metadata !5162, metadata !DIExpression()), !dbg !5163
  %22 = icmp eq i32 %20, 0, !dbg !5182
  br i1 %22, label %24, label %23, !dbg !5180

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !5184, !tbaa !1148
  call void @llvm.dbg.value(metadata i32 -1, metadata !5162, metadata !DIExpression()), !dbg !5163
  br label %24, !dbg !5186

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !5163
  ret i32 %25, !dbg !5187
}

; Function Attrs: nofree nounwind
declare !dbg !5188 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !5189 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !5190 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !5191 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !5194 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5232, metadata !DIExpression()), !dbg !5233
  %2 = icmp eq ptr %0, null, !dbg !5234
  br i1 %2, label %6, label %3, !dbg !5236

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !5237
  %5 = icmp eq i32 %4, 0, !dbg !5237
  br i1 %5, label %6, label %8, !dbg !5238

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !5239
  br label %16, !dbg !5240

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !5241, metadata !DIExpression()), !dbg !5246
  %9 = load i32, ptr %0, align 8, !dbg !5248, !tbaa !5100
  %10 = and i32 %9, 256, !dbg !5250
  %11 = icmp eq i32 %10, 0, !dbg !5250
  br i1 %11, label %14, label %12, !dbg !5251

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !5252
  br label %14, !dbg !5252

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !5253
  br label %16, !dbg !5254

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !5233
  ret i32 %17, !dbg !5255
}

; Function Attrs: nofree nounwind
declare !dbg !5256 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5257 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5296, metadata !DIExpression()), !dbg !5302
  call void @llvm.dbg.value(metadata i64 %1, metadata !5297, metadata !DIExpression()), !dbg !5302
  call void @llvm.dbg.value(metadata i32 %2, metadata !5298, metadata !DIExpression()), !dbg !5302
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !5303
  %5 = load ptr, ptr %4, align 8, !dbg !5303, !tbaa !5304
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !5305
  %7 = load ptr, ptr %6, align 8, !dbg !5305, !tbaa !5306
  %8 = icmp eq ptr %5, %7, !dbg !5307
  br i1 %8, label %9, label %27, !dbg !5308

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !5309
  %11 = load ptr, ptr %10, align 8, !dbg !5309, !tbaa !2799
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !5310
  %13 = load ptr, ptr %12, align 8, !dbg !5310, !tbaa !5311
  %14 = icmp eq ptr %11, %13, !dbg !5312
  br i1 %14, label %15, label %27, !dbg !5313

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !5314
  %17 = load ptr, ptr %16, align 8, !dbg !5314, !tbaa !5315
  %18 = icmp eq ptr %17, null, !dbg !5316
  br i1 %18, label %19, label %27, !dbg !5317

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !5318
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !5319
  call void @llvm.dbg.value(metadata i64 %21, metadata !5299, metadata !DIExpression()), !dbg !5320
  %22 = icmp eq i64 %21, -1, !dbg !5321
  br i1 %22, label %29, label %23, !dbg !5323

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !5324, !tbaa !5100
  %25 = and i32 %24, -17, !dbg !5324
  store i32 %25, ptr %0, align 8, !dbg !5324, !tbaa !5100
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !5325
  store i64 %21, ptr %26, align 8, !dbg !5326, !tbaa !5327
  br label %29, !dbg !5328

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !5329
  br label %29, !dbg !5330

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !5302
  ret i32 %30, !dbg !5331
}

; Function Attrs: nofree nounwind
declare !dbg !5332 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5335 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5340, metadata !DIExpression()), !dbg !5345
  call void @llvm.dbg.value(metadata ptr %1, metadata !5341, metadata !DIExpression()), !dbg !5345
  call void @llvm.dbg.value(metadata i64 %2, metadata !5342, metadata !DIExpression()), !dbg !5345
  call void @llvm.dbg.value(metadata ptr %3, metadata !5343, metadata !DIExpression()), !dbg !5345
  %5 = icmp eq ptr %1, null, !dbg !5346
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5348
  %7 = select i1 %5, ptr @.str.209, ptr %1, !dbg !5348
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5348
  call void @llvm.dbg.value(metadata i64 %8, metadata !5342, metadata !DIExpression()), !dbg !5345
  call void @llvm.dbg.value(metadata ptr %7, metadata !5341, metadata !DIExpression()), !dbg !5345
  call void @llvm.dbg.value(metadata ptr %6, metadata !5340, metadata !DIExpression()), !dbg !5345
  %9 = icmp eq ptr %3, null, !dbg !5349
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5351
  call void @llvm.dbg.value(metadata ptr %10, metadata !5343, metadata !DIExpression()), !dbg !5345
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #40, !dbg !5352
  call void @llvm.dbg.value(metadata i64 %11, metadata !5344, metadata !DIExpression()), !dbg !5345
  %12 = icmp ult i64 %11, -3, !dbg !5353
  br i1 %12, label %13, label %17, !dbg !5355

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #41, !dbg !5356
  %15 = icmp eq i32 %14, 0, !dbg !5356
  br i1 %15, label %16, label %29, !dbg !5357

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5358, metadata !DIExpression()), !dbg !5363
  call void @llvm.dbg.value(metadata ptr %10, metadata !5365, metadata !DIExpression()), !dbg !5370
  call void @llvm.dbg.value(metadata i32 0, metadata !5368, metadata !DIExpression()), !dbg !5370
  call void @llvm.dbg.value(metadata i64 8, metadata !5369, metadata !DIExpression()), !dbg !5370
  store i64 0, ptr %10, align 1, !dbg !5372
  br label %29, !dbg !5373

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5374
  br i1 %18, label %19, label %20, !dbg !5376

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !5377
  unreachable, !dbg !5377

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5378

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #40, !dbg !5380
  br i1 %23, label %29, label %24, !dbg !5381

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5382
  br i1 %25, label %29, label %26, !dbg !5385

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5386, !tbaa !1157
  %28 = zext i8 %27 to i32, !dbg !5387
  store i32 %28, ptr %6, align 4, !dbg !5388, !tbaa !1148
  br label %29, !dbg !5389

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5345
  ret i64 %30, !dbg !5390
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5391 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !5397 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5399, metadata !DIExpression()), !dbg !5403
  call void @llvm.dbg.value(metadata i64 %1, metadata !5400, metadata !DIExpression()), !dbg !5403
  call void @llvm.dbg.value(metadata i64 %2, metadata !5401, metadata !DIExpression()), !dbg !5403
  %4 = icmp eq i64 %2, 0, !dbg !5404
  br i1 %4, label %8, label %5, !dbg !5404

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5404
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5404
  br i1 %7, label %13, label %8, !dbg !5404

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5402, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5403
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5402, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5403
  %9 = mul i64 %2, %1, !dbg !5404
  call void @llvm.dbg.value(metadata i64 %9, metadata !5402, metadata !DIExpression()), !dbg !5403
  call void @llvm.dbg.value(metadata ptr %0, metadata !5406, metadata !DIExpression()), !dbg !5410
  call void @llvm.dbg.value(metadata i64 %9, metadata !5409, metadata !DIExpression()), !dbg !5410
  %10 = icmp eq i64 %9, 0, !dbg !5412
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5412
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #48, !dbg !5413
  br label %15, !dbg !5414

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5402, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5403
  %14 = tail call ptr @__errno_location() #43, !dbg !5415
  store i32 12, ptr %14, align 4, !dbg !5417, !tbaa !1148
  br label %15, !dbg !5418

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5403
  ret ptr %16, !dbg !5419
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5420 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !5422, metadata !DIExpression()), !dbg !5427
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !5428
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5423, metadata !DIExpression()), !dbg !5429
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !5430
  %4 = icmp eq i32 %3, 0, !dbg !5430
  br i1 %4, label %5, label %12, !dbg !5432

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5433, metadata !DIExpression()), !dbg !5437
  %6 = load i16, ptr %2, align 16, !dbg !5440
  %7 = icmp eq i16 %6, 67, !dbg !5440
  br i1 %7, label %11, label %8, !dbg !5441

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5433, metadata !DIExpression()), !dbg !5442
  call void @llvm.dbg.value(metadata ptr @.str.1.214, metadata !5436, metadata !DIExpression()), !dbg !5442
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.214, i64 6), !dbg !5444
  %10 = icmp eq i32 %9, 0, !dbg !5445
  br i1 %10, label %11, label %12, !dbg !5446

11:                                               ; preds = %8, %5
  br label %12, !dbg !5447

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5427
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !5448
  ret i1 %13, !dbg !5448
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5449 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5453, metadata !DIExpression()), !dbg !5456
  call void @llvm.dbg.value(metadata ptr %1, metadata !5454, metadata !DIExpression()), !dbg !5456
  call void @llvm.dbg.value(metadata i64 %2, metadata !5455, metadata !DIExpression()), !dbg !5456
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !5457
  ret i32 %4, !dbg !5458
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5459 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5463, metadata !DIExpression()), !dbg !5464
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !5465
  ret ptr %2, !dbg !5466
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5467 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5469, metadata !DIExpression()), !dbg !5471
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5472
  call void @llvm.dbg.value(metadata ptr %2, metadata !5470, metadata !DIExpression()), !dbg !5471
  ret ptr %2, !dbg !5473
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5474 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5476, metadata !DIExpression()), !dbg !5483
  call void @llvm.dbg.value(metadata ptr %1, metadata !5477, metadata !DIExpression()), !dbg !5483
  call void @llvm.dbg.value(metadata i64 %2, metadata !5478, metadata !DIExpression()), !dbg !5483
  call void @llvm.dbg.value(metadata i32 %0, metadata !5469, metadata !DIExpression()), !dbg !5484
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5486
  call void @llvm.dbg.value(metadata ptr %4, metadata !5470, metadata !DIExpression()), !dbg !5484
  call void @llvm.dbg.value(metadata ptr %4, metadata !5479, metadata !DIExpression()), !dbg !5483
  %5 = icmp eq ptr %4, null, !dbg !5487
  br i1 %5, label %6, label %9, !dbg !5488

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5489
  br i1 %7, label %19, label %8, !dbg !5492

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5493, !tbaa !1157
  br label %19, !dbg !5494

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !5495
  call void @llvm.dbg.value(metadata i64 %10, metadata !5480, metadata !DIExpression()), !dbg !5496
  %11 = icmp ult i64 %10, %2, !dbg !5497
  br i1 %11, label %12, label %14, !dbg !5499

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5500
  call void @llvm.dbg.value(metadata ptr %1, metadata !5502, metadata !DIExpression()), !dbg !5507
  call void @llvm.dbg.value(metadata ptr %4, metadata !5505, metadata !DIExpression()), !dbg !5507
  call void @llvm.dbg.value(metadata i64 %13, metadata !5506, metadata !DIExpression()), !dbg !5507
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #40, !dbg !5509
  br label %19, !dbg !5510

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5511
  br i1 %15, label %19, label %16, !dbg !5514

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5515
  call void @llvm.dbg.value(metadata ptr %1, metadata !5502, metadata !DIExpression()), !dbg !5517
  call void @llvm.dbg.value(metadata ptr %4, metadata !5505, metadata !DIExpression()), !dbg !5517
  call void @llvm.dbg.value(metadata i64 %17, metadata !5506, metadata !DIExpression()), !dbg !5517
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !5519
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5520
  store i8 0, ptr %18, align 1, !dbg !5521, !tbaa !1157
  br label %19, !dbg !5522

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5523
  ret i32 %20, !dbg !5524
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind willreturn memory(argmem: read) }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nofree nounwind willreturn memory(argmem: readwrite) }
attributes #30 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }
attributes #46 = { noreturn }
attributes #47 = { cold }
attributes #48 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!105, !984, !649, !986, !653, !668, !952, !988, !717, !731, !779, !857, !990, !944, !997, !1028, !1030, !1032, !1034, !1036, !968, !1038, !1041, !1045, !1047}
!llvm.ident = !{!1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049}
!llvm.module.flags = !{!1050, !1051, !1052, !1053, !1054, !1055}

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
!548 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "c2b978aaf49d5c0e2b1e9c2e1b7f7848")
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !550, line: 8, baseType: !551)
!550 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "acc6b14c0967857fec362a8d433e1cf2")
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
!667 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !668, file: !669, line: 66, type: !712, isLocal: false, isDefinition: true)
!668 = distinct !DICompileUnit(language: DW_LANG_C11, file: !669, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !670, globals: !671, splitDebugInlining: false, nameTableKind: None)
!669 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!670 = !{!164, !171}
!671 = !{!672, !674, !694, !696, !698, !700, !666, !702, !704, !706, !708, !710}
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !669, line: 272, type: !265, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(name: "old_file_name", scope: !676, file: !669, line: 304, type: !169, isLocal: true, isDefinition: true)
!676 = distinct !DISubprogram(name: "verror_at_line", scope: !669, file: !669, line: 298, type: !677, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !687)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !122, !122, !169, !109, !169, !679}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !681)
!681 = !{!682, !684, !685, !686}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !680, file: !683, baseType: !109, size: 32)
!683 = !DIFile(filename: "lib/error.c", directory: "/src")
!684 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !680, file: !683, baseType: !109, size: 32, offset: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !680, file: !683, baseType: !164, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !680, file: !683, baseType: !164, size: 64, offset: 128)
!687 = !{!688, !689, !690, !691, !692, !693}
!688 = !DILocalVariable(name: "status", arg: 1, scope: !676, file: !669, line: 298, type: !122)
!689 = !DILocalVariable(name: "errnum", arg: 2, scope: !676, file: !669, line: 298, type: !122)
!690 = !DILocalVariable(name: "file_name", arg: 3, scope: !676, file: !669, line: 298, type: !169)
!691 = !DILocalVariable(name: "line_number", arg: 4, scope: !676, file: !669, line: 298, type: !109)
!692 = !DILocalVariable(name: "message", arg: 5, scope: !676, file: !669, line: 298, type: !169)
!693 = !DILocalVariable(name: "args", arg: 6, scope: !676, file: !669, line: 298, type: !679)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(name: "old_line_number", scope: !676, file: !669, line: 305, type: !109, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !669, line: 338, type: !19, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !669, line: 346, type: !412, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !669, line: 346, type: !213, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(name: "error_message_count", scope: !668, file: !669, line: 69, type: !109, isLocal: false, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !668, file: !669, line: 295, type: !122, isLocal: false, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !669, line: 208, type: !291, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !669, line: 208, type: !503, isLocal: true, isDefinition: true)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !669, line: 214, type: !265, isLocal: true, isDefinition: true)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{null}
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(name: "program_name", scope: !717, file: !718, line: 31, type: !169, isLocal: false, isDefinition: true)
!717 = distinct !DICompileUnit(language: DW_LANG_C11, file: !718, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !719, globals: !720, splitDebugInlining: false, nameTableKind: None)
!718 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!719 = !{!163}
!720 = !{!715, !721, !723}
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !718, line: 46, type: !412, isLocal: true, isDefinition: true)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(scope: null, file: !718, line: 49, type: !19, isLocal: true, isDefinition: true)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(name: "utf07FF", scope: !727, file: !728, line: 46, type: !755, isLocal: true, isDefinition: true)
!727 = distinct !DISubprogram(name: "proper_name_lite", scope: !728, file: !728, line: 38, type: !729, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !733)
!728 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!729 = !DISubroutineType(types: !730)
!730 = !{!169, !169, !169}
!731 = distinct !DICompileUnit(language: DW_LANG_C11, file: !728, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !732, splitDebugInlining: false, nameTableKind: None)
!732 = !{!725}
!733 = !{!734, !735, !736, !737, !742}
!734 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !727, file: !728, line: 38, type: !169)
!735 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !727, file: !728, line: 38, type: !169)
!736 = !DILocalVariable(name: "translation", scope: !727, file: !728, line: 40, type: !169)
!737 = !DILocalVariable(name: "w", scope: !727, file: !728, line: 47, type: !738)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !739, line: 37, baseType: !740)
!739 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !353, line: 57, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !353, line: 42, baseType: !109)
!742 = !DILocalVariable(name: "mbs", scope: !727, file: !728, line: 48, type: !743)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !744, line: 6, baseType: !745)
!744 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !746, line: 21, baseType: !747)
!746 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !746, line: 13, size: 64, elements: !748)
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !747, file: !746, line: 15, baseType: !122, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !747, file: !746, line: 20, baseType: !751, size: 32, offset: 32)
!751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !747, file: !746, line: 16, size: 32, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !751, file: !746, line: 18, baseType: !109, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !751, file: !746, line: 19, baseType: !19, size: 32)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 16, elements: !214)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !758, line: 78, type: !412, isLocal: true, isDefinition: true)
!758 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !758, line: 79, type: !391, isLocal: true, isDefinition: true)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !758, line: 80, type: !208, isLocal: true, isDefinition: true)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !758, line: 81, type: !208, isLocal: true, isDefinition: true)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !758, line: 82, type: !374, isLocal: true, isDefinition: true)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(scope: null, file: !758, line: 83, type: !213, isLocal: true, isDefinition: true)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(scope: null, file: !758, line: 84, type: !412, isLocal: true, isDefinition: true)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(scope: null, file: !758, line: 85, type: !291, isLocal: true, isDefinition: true)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(scope: null, file: !758, line: 86, type: !291, isLocal: true, isDefinition: true)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(scope: null, file: !758, line: 87, type: !412, isLocal: true, isDefinition: true)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !779, file: !758, line: 76, type: !851, isLocal: false, isDefinition: true)
!779 = distinct !DICompileUnit(language: DW_LANG_C11, file: !758, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !780, retainedTypes: !786, globals: !787, splitDebugInlining: false, nameTableKind: None)
!780 = !{!126, !781, !140}
!781 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !127, line: 254, baseType: !109, size: 32, elements: !782)
!782 = !{!783, !784, !785}
!783 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!784 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!785 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!786 = !{!122, !165, !166}
!787 = !{!756, !759, !761, !763, !765, !767, !769, !771, !773, !775, !777, !788, !792, !802, !804, !809, !811, !813, !815, !817, !840, !847, !849}
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !779, file: !758, line: 92, type: !790, isLocal: false, isDefinition: true)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 320, elements: !96)
!791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !779, file: !758, line: 1040, type: !794, isLocal: false, isDefinition: true)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !758, line: 56, size: 448, elements: !795)
!795 = !{!796, !797, !798, !800, !801}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !794, file: !758, line: 59, baseType: !126, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !794, file: !758, line: 62, baseType: !122, size: 32, offset: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !794, file: !758, line: 66, baseType: !799, size: 256, offset: 64)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 256, elements: !413)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !794, file: !758, line: 69, baseType: !169, size: 64, offset: 320)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !794, file: !758, line: 72, baseType: !169, size: 64, offset: 384)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !779, file: !758, line: 107, type: !794, isLocal: true, isDefinition: true)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(name: "slot0", scope: !779, file: !758, line: 831, type: !806, isLocal: true, isDefinition: true)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !807)
!807 = !{!808}
!808 = !DISubrange(count: 256)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(scope: null, file: !758, line: 321, type: !213, isLocal: true, isDefinition: true)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(scope: null, file: !758, line: 357, type: !213, isLocal: true, isDefinition: true)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !758, line: 358, type: !213, isLocal: true, isDefinition: true)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !758, line: 199, type: !291, isLocal: true, isDefinition: true)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(name: "quote", scope: !819, file: !758, line: 228, type: !838, isLocal: true, isDefinition: true)
!819 = distinct !DISubprogram(name: "gettext_quote", scope: !758, file: !758, line: 197, type: !820, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !822)
!820 = !DISubroutineType(types: !821)
!821 = !{!169, !169, !126}
!822 = !{!823, !824, !825, !826, !827}
!823 = !DILocalVariable(name: "msgid", arg: 1, scope: !819, file: !758, line: 197, type: !169)
!824 = !DILocalVariable(name: "s", arg: 2, scope: !819, file: !758, line: 197, type: !126)
!825 = !DILocalVariable(name: "translation", scope: !819, file: !758, line: 199, type: !169)
!826 = !DILocalVariable(name: "w", scope: !819, file: !758, line: 229, type: !738)
!827 = !DILocalVariable(name: "mbs", scope: !819, file: !758, line: 230, type: !828)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !744, line: 6, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !746, line: 21, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !746, line: 13, size: 64, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !830, file: !746, line: 15, baseType: !122, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !830, file: !746, line: 20, baseType: !834, size: 32, offset: 32)
!834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !746, line: 16, size: 32, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !834, file: !746, line: 18, baseType: !109, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !834, file: !746, line: 19, baseType: !19, size: 32)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 64, elements: !839)
!839 = !{!215, !21}
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(name: "slotvec", scope: !779, file: !758, line: 834, type: !842, isLocal: true, isDefinition: true)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !758, line: 823, size: 128, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !843, file: !758, line: 825, baseType: !166, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !843, file: !758, line: 826, baseType: !163, size: 64, offset: 64)
!847 = !DIGlobalVariableExpression(var: !848, expr: !DIExpression())
!848 = distinct !DIGlobalVariable(name: "nslots", scope: !779, file: !758, line: 832, type: !122, isLocal: true, isDefinition: true)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(name: "slotvec0", scope: !779, file: !758, line: 833, type: !843, isLocal: true, isDefinition: true)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 704, elements: !853)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!853 = !{!854}
!854 = !DISubrange(count: 11)
!855 = !DIGlobalVariableExpression(var: !856, expr: !DIExpression())
!856 = distinct !DIGlobalVariable(name: "numname_table", scope: !857, file: !858, line: 43, type: !867, isLocal: true, isDefinition: true)
!857 = distinct !DICompileUnit(language: DW_LANG_C11, file: !858, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !859, globals: !860, splitDebugInlining: false, nameTableKind: None)
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
!892 = distinct !DIGlobalVariable(scope: null, file: !877, line: 88, type: !590, isLocal: true, isDefinition: true)
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
!920 = distinct !DIGlobalVariable(scope: null, file: !877, line: 150, type: !565, isLocal: true, isDefinition: true)
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
!941 = distinct !DIGlobalVariable(scope: null, file: !877, line: 259, type: !575, isLocal: true, isDefinition: true)
!942 = !DIGlobalVariableExpression(var: !943, expr: !DIExpression())
!943 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !944, file: !945, line: 26, type: !947, isLocal: false, isDefinition: true)
!944 = distinct !DICompileUnit(language: DW_LANG_C11, file: !945, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !946, splitDebugInlining: false, nameTableKind: None)
!945 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!946 = !{!942}
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 376, elements: !948)
!948 = !{!949}
!949 = !DISubrange(count: 47)
!950 = !DIGlobalVariableExpression(var: !951, expr: !DIExpression())
!951 = distinct !DIGlobalVariable(name: "exit_failure", scope: !952, file: !953, line: 24, type: !955, isLocal: false, isDefinition: true)
!952 = distinct !DICompileUnit(language: DW_LANG_C11, file: !953, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !954, splitDebugInlining: false, nameTableKind: None)
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
!968 = distinct !DICompileUnit(language: DW_LANG_C11, file: !965, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !969, globals: !970, splitDebugInlining: false, nameTableKind: None)
!969 = !{!164, !166, !171}
!970 = !{!963, !966}
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !744, line: 6, baseType: !972)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !746, line: 21, baseType: !973)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !746, line: 13, size: 64, elements: !974)
!974 = !{!975, !976}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !973, file: !746, line: 15, baseType: !122, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !973, file: !746, line: 20, baseType: !977, size: 32, offset: 32)
!977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !973, file: !746, line: 16, size: 32, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !977, file: !746, line: 18, baseType: !109, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !977, file: !746, line: 19, baseType: !19, size: 32)
!981 = !DIGlobalVariableExpression(var: !982, expr: !DIExpression())
!982 = distinct !DIGlobalVariable(scope: null, file: !983, line: 35, type: !391, isLocal: true, isDefinition: true)
!983 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!984 = distinct !DICompileUnit(language: DW_LANG_C11, file: !641, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !985, splitDebugInlining: false, nameTableKind: None)
!985 = !{!639, !642}
!986 = distinct !DICompileUnit(language: DW_LANG_C11, file: !987, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!987 = !DIFile(filename: "lib/c-ctype.c", directory: "/src", checksumkind: CSK_MD5, checksum: "245df19f202f37bba31cfa46647ceb93")
!988 = distinct !DICompileUnit(language: DW_LANG_C11, file: !989, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!989 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!990 = distinct !DICompileUnit(language: DW_LANG_C11, file: !877, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !991, retainedTypes: !995, globals: !996, splitDebugInlining: false, nameTableKind: None)
!991 = !{!992}
!992 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !877, line: 40, baseType: !109, size: 32, elements: !993)
!993 = !{!994}
!994 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!995 = !{!164}
!996 = !{!875, !878, !880, !882, !884, !886, !891, !893, !895, !897, !902, !907, !912, !914, !919, !921, !926, !928, !930, !932, !934, !936, !938, !940}
!997 = distinct !DICompileUnit(language: DW_LANG_C11, file: !998, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !999, retainedTypes: !1027, splitDebugInlining: false, nameTableKind: None)
!998 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!999 = !{!1000, !1012}
!1000 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1001, file: !998, line: 188, baseType: !109, size: 32, elements: !1010)
!1001 = distinct !DISubprogram(name: "x2nrealloc", scope: !998, file: !998, line: 176, type: !1002, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !1005)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!164, !164, !1004, !166}
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!1005 = !{!1006, !1007, !1008, !1009}
!1006 = !DILocalVariable(name: "p", arg: 1, scope: !1001, file: !998, line: 176, type: !164)
!1007 = !DILocalVariable(name: "pn", arg: 2, scope: !1001, file: !998, line: 176, type: !1004)
!1008 = !DILocalVariable(name: "s", arg: 3, scope: !1001, file: !998, line: 176, type: !166)
!1009 = !DILocalVariable(name: "n", scope: !1001, file: !998, line: 178, type: !166)
!1010 = !{!1011}
!1011 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!1012 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1013, file: !998, line: 228, baseType: !109, size: 32, elements: !1010)
!1013 = distinct !DISubprogram(name: "xpalloc", scope: !998, file: !998, line: 223, type: !1014, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !1017)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!164, !164, !1016, !528, !530, !528}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!1017 = !{!1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026}
!1018 = !DILocalVariable(name: "pa", arg: 1, scope: !1013, file: !998, line: 223, type: !164)
!1019 = !DILocalVariable(name: "pn", arg: 2, scope: !1013, file: !998, line: 223, type: !1016)
!1020 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !1013, file: !998, line: 223, type: !528)
!1021 = !DILocalVariable(name: "n_max", arg: 4, scope: !1013, file: !998, line: 223, type: !530)
!1022 = !DILocalVariable(name: "s", arg: 5, scope: !1013, file: !998, line: 223, type: !528)
!1023 = !DILocalVariable(name: "n0", scope: !1013, file: !998, line: 230, type: !528)
!1024 = !DILocalVariable(name: "n", scope: !1013, file: !998, line: 237, type: !528)
!1025 = !DILocalVariable(name: "nbytes", scope: !1013, file: !998, line: 248, type: !528)
!1026 = !DILocalVariable(name: "adjusted_nbytes", scope: !1013, file: !998, line: 252, type: !528)
!1027 = !{!163, !164, !231, !174, !168}
!1028 = distinct !DICompileUnit(language: DW_LANG_C11, file: !958, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1029, splitDebugInlining: false, nameTableKind: None)
!1029 = !{!956, !959, !961}
!1030 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1031, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1031 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1032 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1033, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1033 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!1034 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1035, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !995, splitDebugInlining: false, nameTableKind: None)
!1035 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!1036 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1037, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !995, splitDebugInlining: false, nameTableKind: None)
!1037 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!1038 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1039, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1040, splitDebugInlining: false, nameTableKind: None)
!1039 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1040 = !{!231, !168, !164}
!1041 = distinct !DICompileUnit(language: DW_LANG_C11, file: !983, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1042, splitDebugInlining: false, nameTableKind: None)
!1042 = !{!1043, !981}
!1043 = !DIGlobalVariableExpression(var: !1044, expr: !DIExpression())
!1044 = distinct !DIGlobalVariable(scope: null, file: !983, line: 35, type: !213, isLocal: true, isDefinition: true)
!1045 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1046, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1046 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1047 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1048, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !995, splitDebugInlining: false, nameTableKind: None)
!1048 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1049 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!1050 = !{i32 7, !"Dwarf Version", i32 5}
!1051 = !{i32 2, !"Debug Info Version", i32 3}
!1052 = !{i32 1, !"wchar_size", i32 4}
!1053 = !{i32 8, !"PIC Level", i32 2}
!1054 = !{i32 7, !"PIE Level", i32 2}
!1055 = !{i32 7, !"uwtable", i32 2}
!1056 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 107, type: !178, scopeLine: 108, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1057)
!1057 = !{!1058}
!1058 = !DILocalVariable(name: "status", arg: 1, scope: !1056, file: !2, line: 107, type: !122)
!1059 = !DILocation(line: 0, scope: !1056)
!1060 = !DILocation(line: 109, column: 14, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 109, column: 7)
!1062 = !DILocation(line: 109, column: 7, scope: !1056)
!1063 = !DILocation(line: 110, column: 5, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 110, column: 5)
!1065 = !{!1066, !1066, i64 0}
!1066 = !{!"any pointer", !1067, i64 0}
!1067 = !{!"omnipotent char", !1068, i64 0}
!1068 = !{!"Simple C/C++ TBAA"}
!1069 = !DILocation(line: 113, column: 7, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 112, column: 5)
!1071 = !DILocation(line: 116, column: 7, scope: !1070)
!1072 = !DILocation(line: 736, column: 3, scope: !1073, inlinedAt: !1075)
!1073 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !108, file: !108, line: 734, type: !713, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1074)
!1074 = !{}
!1075 = distinct !DILocation(line: 120, column: 7, scope: !1070)
!1076 = !DILocation(line: 122, column: 7, scope: !1070)
!1077 = !DILocation(line: 126, column: 7, scope: !1070)
!1078 = !DILocation(line: 130, column: 7, scope: !1070)
!1079 = !DILocation(line: 134, column: 7, scope: !1070)
!1080 = !DILocation(line: 138, column: 7, scope: !1070)
!1081 = !DILocation(line: 142, column: 7, scope: !1070)
!1082 = !DILocation(line: 147, column: 7, scope: !1070)
!1083 = !DILocation(line: 151, column: 7, scope: !1070)
!1084 = !DILocation(line: 155, column: 7, scope: !1070)
!1085 = !DILocation(line: 159, column: 7, scope: !1070)
!1086 = !DILocation(line: 163, column: 7, scope: !1070)
!1087 = !DILocation(line: 167, column: 7, scope: !1070)
!1088 = !DILocation(line: 168, column: 7, scope: !1070)
!1089 = !DILocation(line: 169, column: 7, scope: !1070)
!1090 = !DILocation(line: 173, column: 7, scope: !1070)
!1091 = !DILocalVariable(name: "program", arg: 1, scope: !1092, file: !108, line: 824, type: !169)
!1092 = distinct !DISubprogram(name: "emit_exec_status", scope: !108, file: !108, line: 824, type: !1093, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1095)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !169}
!1095 = !{!1091}
!1096 = !DILocation(line: 0, scope: !1092, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 179, column: 7, scope: !1070)
!1098 = !DILocation(line: 826, column: 7, scope: !1092, inlinedAt: !1097)
!1099 = !DILocalVariable(name: "program", arg: 1, scope: !1100, file: !108, line: 836, type: !169)
!1100 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !108, file: !108, line: 836, type: !1093, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1101)
!1101 = !{!1099, !1102, !1109, !1110, !1112, !1113}
!1102 = !DILocalVariable(name: "infomap", scope: !1100, file: !108, line: 838, type: !1103)
!1103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1104, size: 896, elements: !292)
!1104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1105)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1100, file: !108, line: 838, size: 128, elements: !1106)
!1106 = !{!1107, !1108}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1105, file: !108, line: 838, baseType: !169, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1105, file: !108, line: 838, baseType: !169, size: 64, offset: 64)
!1109 = !DILocalVariable(name: "node", scope: !1100, file: !108, line: 848, type: !169)
!1110 = !DILocalVariable(name: "map_prog", scope: !1100, file: !108, line: 849, type: !1111)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1112 = !DILocalVariable(name: "lc_messages", scope: !1100, file: !108, line: 861, type: !169)
!1113 = !DILocalVariable(name: "url_program", scope: !1100, file: !108, line: 874, type: !169)
!1114 = !DILocation(line: 0, scope: !1100, inlinedAt: !1115)
!1115 = distinct !DILocation(line: 180, column: 7, scope: !1070)
!1116 = !DILocation(line: 857, column: 3, scope: !1100, inlinedAt: !1115)
!1117 = !DILocation(line: 861, column: 29, scope: !1100, inlinedAt: !1115)
!1118 = !DILocation(line: 862, column: 7, scope: !1119, inlinedAt: !1115)
!1119 = distinct !DILexicalBlock(scope: !1100, file: !108, line: 862, column: 7)
!1120 = !DILocation(line: 862, column: 19, scope: !1119, inlinedAt: !1115)
!1121 = !DILocation(line: 862, column: 22, scope: !1119, inlinedAt: !1115)
!1122 = !DILocation(line: 862, column: 7, scope: !1100, inlinedAt: !1115)
!1123 = !DILocation(line: 868, column: 7, scope: !1124, inlinedAt: !1115)
!1124 = distinct !DILexicalBlock(scope: !1119, file: !108, line: 863, column: 5)
!1125 = !DILocation(line: 870, column: 5, scope: !1124, inlinedAt: !1115)
!1126 = !DILocation(line: 875, column: 3, scope: !1100, inlinedAt: !1115)
!1127 = !DILocation(line: 877, column: 3, scope: !1100, inlinedAt: !1115)
!1128 = !DILocation(line: 182, column: 3, scope: !1056)
!1129 = !DISubprogram(name: "dcgettext", scope: !1130, file: !1130, line: 51, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!1130 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!163, !169, !169, !122}
!1133 = !DISubprogram(name: "__fprintf_chk", scope: !1134, file: !1134, line: 93, type: !1135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!1134 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!122, !1137, !122, !1138, null}
!1137 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !326)
!1138 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !169)
!1139 = !DISubprogram(name: "__printf_chk", scope: !1134, file: !1134, line: 95, type: !1140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!122, !122, !1138, null}
!1142 = !DISubprogram(name: "fputs_unlocked", scope: !1143, file: !1143, line: 691, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!1143 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!122, !1138, !1137}
!1146 = !DILocation(line: 0, scope: !304)
!1147 = !DILocation(line: 581, column: 7, scope: !312)
!1148 = !{!1149, !1149, i64 0}
!1149 = !{!"int", !1067, i64 0}
!1150 = !DILocation(line: 581, column: 19, scope: !312)
!1151 = !DILocation(line: 581, column: 7, scope: !304)
!1152 = !DILocation(line: 585, column: 26, scope: !311)
!1153 = !DILocation(line: 0, scope: !311)
!1154 = !DILocation(line: 586, column: 23, scope: !311)
!1155 = !DILocation(line: 586, column: 28, scope: !311)
!1156 = !DILocation(line: 586, column: 32, scope: !311)
!1157 = !{!1067, !1067, i64 0}
!1158 = !DILocation(line: 586, column: 38, scope: !311)
!1159 = !DILocalVariable(name: "__s1", arg: 1, scope: !1160, file: !1161, line: 1359, type: !169)
!1160 = distinct !DISubprogram(name: "streq", scope: !1161, file: !1161, line: 1359, type: !1162, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1164)
!1161 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!231, !169, !169}
!1164 = !{!1159, !1165}
!1165 = !DILocalVariable(name: "__s2", arg: 2, scope: !1160, file: !1161, line: 1359, type: !169)
!1166 = !DILocation(line: 0, scope: !1160, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 586, column: 41, scope: !311)
!1168 = !DILocation(line: 1361, column: 11, scope: !1160, inlinedAt: !1167)
!1169 = !DILocation(line: 1361, column: 10, scope: !1160, inlinedAt: !1167)
!1170 = !DILocation(line: 586, column: 19, scope: !311)
!1171 = !DILocation(line: 587, column: 5, scope: !311)
!1172 = !DILocation(line: 588, column: 7, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !304, file: !108, line: 588, column: 7)
!1174 = !DILocation(line: 588, column: 7, scope: !304)
!1175 = !DILocation(line: 590, column: 7, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1173, file: !108, line: 589, column: 5)
!1177 = !DILocation(line: 591, column: 7, scope: !1176)
!1178 = !DILocation(line: 595, column: 37, scope: !304)
!1179 = !DILocation(line: 595, column: 35, scope: !304)
!1180 = !DILocation(line: 596, column: 29, scope: !304)
!1181 = !DILocation(line: 597, column: 8, scope: !319)
!1182 = !DILocation(line: 597, column: 7, scope: !304)
!1183 = !DILocation(line: 604, column: 24, scope: !318)
!1184 = !DILocation(line: 604, column: 12, scope: !319)
!1185 = !DILocation(line: 0, scope: !317)
!1186 = !DILocation(line: 610, column: 16, scope: !317)
!1187 = !DILocation(line: 610, column: 7, scope: !317)
!1188 = !DILocation(line: 611, column: 21, scope: !317)
!1189 = !{!1190, !1190, i64 0}
!1190 = !{!"short", !1067, i64 0}
!1191 = !DILocation(line: 611, column: 19, scope: !317)
!1192 = !DILocation(line: 611, column: 16, scope: !317)
!1193 = !DILocation(line: 610, column: 30, scope: !317)
!1194 = distinct !{!1194, !1187, !1188, !1195}
!1195 = !{!"llvm.loop.mustprogress"}
!1196 = !DILocation(line: 612, column: 18, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !317, file: !108, line: 612, column: 11)
!1198 = !DILocation(line: 612, column: 11, scope: !317)
!1199 = !DILocation(line: 618, column: 5, scope: !317)
!1200 = !DILocation(line: 620, column: 23, scope: !304)
!1201 = !DILocation(line: 625, column: 39, scope: !304)
!1202 = !DILocation(line: 626, column: 3, scope: !304)
!1203 = !DILocation(line: 626, column: 10, scope: !304)
!1204 = !DILocation(line: 626, column: 21, scope: !304)
!1205 = !DILocation(line: 628, column: 44, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !108, line: 628, column: 11)
!1207 = distinct !DILexicalBlock(scope: !304, file: !108, line: 627, column: 5)
!1208 = !DILocation(line: 628, column: 32, scope: !1206)
!1209 = !DILocation(line: 628, column: 49, scope: !1206)
!1210 = !DILocation(line: 628, column: 11, scope: !1207)
!1211 = !DILocation(line: 630, column: 11, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1207, file: !108, line: 630, column: 11)
!1213 = !DILocation(line: 630, column: 11, scope: !1207)
!1214 = !DILocation(line: 632, column: 26, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !108, line: 632, column: 15)
!1216 = distinct !DILexicalBlock(scope: !1212, file: !108, line: 631, column: 9)
!1217 = !DILocation(line: 632, column: 34, scope: !1215)
!1218 = !DILocation(line: 632, column: 37, scope: !1215)
!1219 = !DILocation(line: 632, column: 15, scope: !1216)
!1220 = !DILocation(line: 636, column: 16, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !108, line: 636, column: 15)
!1222 = !DILocation(line: 636, column: 29, scope: !1221)
!1223 = !DILocation(line: 640, column: 16, scope: !1207)
!1224 = distinct !{!1224, !1202, !1225, !1195}
!1225 = !DILocation(line: 641, column: 5, scope: !304)
!1226 = !DILocation(line: 644, column: 3, scope: !304)
!1227 = !DILocation(line: 0, scope: !1160, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 648, column: 31, scope: !304)
!1229 = !DILocation(line: 0, scope: !1160, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 649, column: 31, scope: !304)
!1231 = !DILocation(line: 0, scope: !1160, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 650, column: 31, scope: !304)
!1233 = !DILocation(line: 0, scope: !1160, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 651, column: 31, scope: !304)
!1235 = !DILocation(line: 0, scope: !1160, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 652, column: 31, scope: !304)
!1237 = !DILocation(line: 0, scope: !1160, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 653, column: 31, scope: !304)
!1239 = !DILocation(line: 0, scope: !1160, inlinedAt: !1240)
!1240 = distinct !DILocation(line: 654, column: 31, scope: !304)
!1241 = !DILocation(line: 0, scope: !1160, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 655, column: 31, scope: !304)
!1243 = !DILocation(line: 0, scope: !1160, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 656, column: 31, scope: !304)
!1245 = !DILocation(line: 0, scope: !1160, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 657, column: 31, scope: !304)
!1247 = !DILocation(line: 663, column: 7, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !304, file: !108, line: 663, column: 7)
!1249 = !DILocation(line: 664, column: 7, scope: !1248)
!1250 = !DILocation(line: 664, column: 10, scope: !1248)
!1251 = !DILocation(line: 663, column: 7, scope: !304)
!1252 = !DILocation(line: 669, column: 7, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1248, file: !108, line: 665, column: 5)
!1254 = !DILocation(line: 671, column: 5, scope: !1253)
!1255 = !DILocation(line: 676, column: 7, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1248, file: !108, line: 673, column: 5)
!1257 = !DILocation(line: 679, column: 3, scope: !304)
!1258 = !DILocation(line: 683, column: 3, scope: !304)
!1259 = !DILocation(line: 686, column: 3, scope: !304)
!1260 = !DILocation(line: 688, column: 3, scope: !304)
!1261 = !DILocation(line: 691, column: 3, scope: !304)
!1262 = !DILocation(line: 695, column: 3, scope: !304)
!1263 = !DILocation(line: 696, column: 1, scope: !304)
!1264 = !DISubprogram(name: "setlocale", scope: !1265, file: !1265, line: 122, type: !1266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!1265 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!163, !122, !169}
!1268 = !DISubprogram(name: "strncmp", scope: !1269, file: !1269, line: 159, type: !1270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!1269 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!122, !169, !169, !166}
!1272 = !DISubprogram(name: "exit", scope: !1273, file: !1273, line: 624, type: !178, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!1273 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1274 = !DISubprogram(name: "getenv", scope: !1273, file: !1273, line: 641, type: !1275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!163, !169}
!1277 = !DISubprogram(name: "strcmp", scope: !1269, file: !1269, line: 156, type: !1278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!122, !169, !169}
!1280 = !DISubprogram(name: "strspn", scope: !1269, file: !1269, line: 297, type: !1281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!168, !169, !169}
!1283 = !DISubprogram(name: "strchr", scope: !1269, file: !1269, line: 246, type: !1284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!163, !169, !122}
!1286 = !DISubprogram(name: "__ctype_b_loc", scope: !141, file: !141, line: 79, type: !1287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!1289}
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!1292 = !DISubprogram(name: "strcspn", scope: !1269, file: !1269, line: 293, type: !1281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!1293 = !DISubprogram(name: "fwrite_unlocked", scope: !1143, file: !1143, line: 704, type: !1294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!166, !1296, !166, !166, !1137}
!1296 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1297)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1299 = !DILocation(line: 0, scope: !223)
!1300 = !DILocation(line: 772, column: 21, scope: !223)
!1301 = !DILocation(line: 772, column: 3, scope: !223)
!1302 = !DILocation(line: 773, column: 3, scope: !223)
!1303 = !DILocation(line: 774, column: 3, scope: !223)
!1304 = !DILocation(line: 775, column: 3, scope: !223)
!1305 = !DILocalVariable(name: "status", arg: 1, scope: !1306, file: !108, line: 102, type: !122)
!1306 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !108, file: !108, line: 102, type: !178, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1307)
!1307 = !{!1305}
!1308 = !DILocation(line: 0, scope: !1306, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 777, column: 3, scope: !223)
!1310 = !DILocation(line: 105, column: 18, scope: !1311, inlinedAt: !1309)
!1311 = distinct !DILexicalBlock(scope: !1306, file: !108, line: 104, column: 7)
!1312 = !DILocation(line: 778, column: 3, scope: !223)
!1313 = !DILocation(line: 755, column: 13, scope: !1314, inlinedAt: !1318)
!1314 = distinct !DISubprogram(name: "initialize_signals", scope: !2, file: !2, line: 753, type: !713, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1315)
!1315 = !{!1316}
!1316 = !DILocalVariable(name: "i", scope: !1317, file: !2, line: 757, type: !122)
!1317 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 757, column: 3)
!1318 = distinct !DILocation(line: 780, column: 3, scope: !223)
!1319 = !DILocation(line: 755, column: 11, scope: !1314, inlinedAt: !1318)
!1320 = !DILocation(line: 0, scope: !1317, inlinedAt: !1318)
!1321 = !DILocation(line: 758, column: 16, scope: !1322, inlinedAt: !1318)
!1322 = distinct !DILexicalBlock(scope: !1317, file: !2, line: 757, column: 3)
!1323 = !DILocation(line: 783, column: 3, scope: !223)
!1324 = !DILocation(line: 769, column: 9, scope: !223)
!1325 = !DILocation(line: 768, column: 15, scope: !223)
!1326 = !DILocation(line: 767, column: 8, scope: !223)
!1327 = !DILocation(line: 766, column: 8, scope: !223)
!1328 = !DILocation(line: 783, column: 18, scope: !223)
!1329 = distinct !{!1329, !1323, !1330, !1195}
!1330 = !DILocation(line: 835, column: 5, scope: !223)
!1331 = !DILocation(line: 788, column: 19, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 786, column: 9)
!1333 = distinct !DILexicalBlock(scope: !223, file: !2, line: 784, column: 5)
!1334 = !DILocation(line: 789, column: 11, scope: !1332)
!1335 = !DILocation(line: 794, column: 29, scope: !1332)
!1336 = !DILocalVariable(name: "var", arg: 1, scope: !1337, file: !2, line: 186, type: !169)
!1337 = distinct !DISubprogram(name: "append_unset_var", scope: !2, file: !2, line: 186, type: !1093, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1338)
!1338 = !{!1336}
!1339 = !DILocation(line: 0, scope: !1337, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 794, column: 11, scope: !1332)
!1341 = !DILocation(line: 188, column: 7, scope: !1342, inlinedAt: !1340)
!1342 = distinct !DILexicalBlock(scope: !1337, file: !2, line: 188, column: 7)
!1343 = !{!1344, !1344, i64 0}
!1344 = !{!"long", !1067, i64 0}
!1345 = !DILocation(line: 188, column: 22, scope: !1342, inlinedAt: !1340)
!1346 = !DILocation(line: 188, column: 19, scope: !1342, inlinedAt: !1340)
!1347 = !DILocation(line: 188, column: 7, scope: !1337, inlinedAt: !1340)
!1348 = !DILocation(line: 189, column: 14, scope: !1342, inlinedAt: !1340)
!1349 = !DILocation(line: 189, column: 12, scope: !1342, inlinedAt: !1340)
!1350 = !DILocation(line: 190, column: 21, scope: !1337, inlinedAt: !1340)
!1351 = !DILocation(line: 189, column: 5, scope: !1342, inlinedAt: !1340)
!1352 = !DILocation(line: 190, column: 3, scope: !1337, inlinedAt: !1340)
!1353 = !DILocation(line: 190, column: 25, scope: !1337, inlinedAt: !1340)
!1354 = !DILocation(line: 795, column: 11, scope: !1332)
!1355 = !DILocation(line: 797, column: 21, scope: !1332)
!1356 = !DILocation(line: 798, column: 11, scope: !1332)
!1357 = !DILocation(line: 801, column: 11, scope: !1332)
!1358 = !DILocation(line: 803, column: 39, scope: !1332)
!1359 = !DILocation(line: 803, column: 11, scope: !1332)
!1360 = !DILocation(line: 804, column: 38, scope: !1332)
!1361 = !DILocation(line: 804, column: 11, scope: !1332)
!1362 = !DILocation(line: 805, column: 11, scope: !1332)
!1363 = !DILocation(line: 807, column: 39, scope: !1332)
!1364 = !DILocation(line: 807, column: 11, scope: !1332)
!1365 = !DILocation(line: 808, column: 11, scope: !1332)
!1366 = !DILocation(line: 810, column: 38, scope: !1332)
!1367 = !DILocation(line: 810, column: 11, scope: !1332)
!1368 = !DILocation(line: 811, column: 11, scope: !1332)
!1369 = !DILocation(line: 813, column: 34, scope: !1332)
!1370 = !DILocation(line: 814, column: 11, scope: !1332)
!1371 = !DILocation(line: 816, column: 20, scope: !1332)
!1372 = !DILocation(line: 817, column: 11, scope: !1332)
!1373 = !DILocation(line: 819, column: 31, scope: !1332)
!1374 = !DILocalVariable(name: "str", arg: 1, scope: !1375, file: !2, line: 526, type: !169)
!1375 = distinct !DISubprogram(name: "parse_split_string", scope: !2, file: !2, line: 526, type: !1376, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1379)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{null, !169, !524, !524, !1378}
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!1379 = !{!1374, !1380, !1381, !1382, !1383, !1384, !1385, !1386}
!1380 = !DILocalVariable(name: "orig_optind", arg: 2, scope: !1375, file: !2, line: 526, type: !524)
!1381 = !DILocalVariable(name: "orig_argc", arg: 3, scope: !1375, file: !2, line: 527, type: !524)
!1382 = !DILocalVariable(name: "orig_argv", arg: 4, scope: !1375, file: !2, line: 527, type: !1378)
!1383 = !DILocalVariable(name: "extra_argc", scope: !1375, file: !2, line: 529, type: !122)
!1384 = !DILocalVariable(name: "newargc", scope: !1375, file: !2, line: 529, type: !122)
!1385 = !DILocalVariable(name: "newargv", scope: !1375, file: !2, line: 530, type: !226)
!1386 = !DILocalVariable(name: "i", scope: !1387, file: !2, line: 540, type: !122)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !2, line: 540, column: 7)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !2, line: 537, column: 5)
!1389 = distinct !DILexicalBlock(scope: !1375, file: !2, line: 536, column: 7)
!1390 = !DILocation(line: 0, scope: !1375, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 819, column: 11, scope: !1332)
!1392 = !DILocation(line: 529, column: 33, scope: !1375, inlinedAt: !1391)
!1393 = !DILocation(line: 529, column: 31, scope: !1375, inlinedAt: !1391)
!1394 = !DILocalVariable(name: "str", arg: 1, scope: !1395, file: !2, line: 366, type: !169)
!1395 = distinct !DISubprogram(name: "build_argv", scope: !2, file: !2, line: 366, type: !1396, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1398)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!226, !169, !122, !524}
!1398 = !{!1394, !1399, !1400, !1401, !1402, !1403, !1411, !1413, !1416, !1417}
!1399 = !DILocalVariable(name: "extra_argc", arg: 2, scope: !1395, file: !2, line: 366, type: !122)
!1400 = !DILocalVariable(name: "argc", arg: 3, scope: !1395, file: !2, line: 366, type: !524)
!1401 = !DILocalVariable(name: "dq", scope: !1395, file: !2, line: 368, type: !231)
!1402 = !DILocalVariable(name: "sq", scope: !1395, file: !2, line: 368, type: !231)
!1403 = !DILocalVariable(name: "ss", scope: !1395, file: !2, line: 369, type: !1404)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "splitbuf", file: !2, line: 256, size: 256, elements: !1405)
!1405 = !{!1406, !1407, !1408, !1409, !1410}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1404, file: !2, line: 275, baseType: !226, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1404, file: !2, line: 276, baseType: !122, size: 32, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "half_alloc", scope: !1404, file: !2, line: 277, baseType: !528, size: 64, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "extra_argc", scope: !1404, file: !2, line: 280, baseType: !122, size: 32, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "sep", scope: !1404, file: !2, line: 284, baseType: !231, size: 8, offset: 224)
!1411 = !DILocalVariable(name: "newc", scope: !1412, file: !2, line: 382, type: !4)
!1412 = distinct !DILexicalBlock(scope: !1395, file: !2, line: 381, column: 5)
!1413 = !DILocalVariable(name: "n", scope: !1414, file: !2, line: 468, type: !163)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 467, column: 11)
!1415 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 385, column: 9)
!1416 = !DILocalVariable(name: "v", scope: !1414, file: !2, line: 474, type: !163)
!1417 = !DILabel(scope: !1395, name: "eos", file: !2, line: 498)
!1418 = !DILocation(line: 0, scope: !1395, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 530, column: 20, scope: !1375, inlinedAt: !1391)
!1420 = !DILocation(line: 369, column: 3, scope: !1395, inlinedAt: !1419)
!1421 = !DILocation(line: 369, column: 19, scope: !1395, inlinedAt: !1419)
!1422 = !DILocation(line: 370, column: 34, scope: !1395, inlinedAt: !1419)
!1423 = !DILocation(line: 370, column: 23, scope: !1395, inlinedAt: !1419)
!1424 = !DILocation(line: 370, column: 13, scope: !1395, inlinedAt: !1419)
!1425 = !DILocation(line: 370, column: 11, scope: !1395, inlinedAt: !1419)
!1426 = !{!1427, !1066, i64 0}
!1427 = !{!"splitbuf", !1066, i64 0, !1149, i64 8, !1344, i64 16, !1149, i64 24, !1428, i64 28}
!1428 = !{!"_Bool", !1067, i64 0}
!1429 = !DILocation(line: 371, column: 11, scope: !1395, inlinedAt: !1419)
!1430 = !{!1427, !1149, i64 8}
!1431 = !DILocation(line: 372, column: 17, scope: !1395, inlinedAt: !1419)
!1432 = !{!1427, !1344, i64 16}
!1433 = !DILocation(line: 373, column: 17, scope: !1395, inlinedAt: !1419)
!1434 = !{!1427, !1149, i64 24}
!1435 = !DILocation(line: 374, column: 10, scope: !1395, inlinedAt: !1419)
!1436 = !{!1427, !1428, i64 28}
!1437 = !DILocation(line: 375, column: 3, scope: !1395, inlinedAt: !1419)
!1438 = !DILocation(line: 375, column: 20, scope: !1395, inlinedAt: !1419)
!1439 = !DILocation(line: 380, column: 10, scope: !1395, inlinedAt: !1419)
!1440 = !DILocation(line: 380, column: 3, scope: !1395, inlinedAt: !1419)
!1441 = !DILocation(line: 0, scope: !1412, inlinedAt: !1419)
!1442 = !DILocation(line: 384, column: 15, scope: !1412, inlinedAt: !1419)
!1443 = !DILocation(line: 384, column: 7, scope: !1412, inlinedAt: !1419)
!1444 = !DILocation(line: 387, column: 15, scope: !1445, inlinedAt: !1419)
!1445 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 387, column: 15)
!1446 = !DILocation(line: 387, column: 15, scope: !1415, inlinedAt: !1419)
!1447 = !DILocation(line: 389, column: 17, scope: !1415, inlinedAt: !1419)
!1448 = !DILocation(line: 389, column: 14, scope: !1415, inlinedAt: !1419)
!1449 = !DILocation(line: 390, column: 11, scope: !1415, inlinedAt: !1419)
!1450 = !DILocation(line: 391, column: 11, scope: !1415, inlinedAt: !1419)
!1451 = !DILocation(line: 392, column: 11, scope: !1415, inlinedAt: !1419)
!1452 = distinct !{!1452, !1440, !1453, !1195}
!1453 = !DILocation(line: 493, column: 5, scope: !1395, inlinedAt: !1419)
!1454 = !DILocation(line: 395, column: 15, scope: !1455, inlinedAt: !1419)
!1455 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 395, column: 15)
!1456 = !DILocation(line: 395, column: 15, scope: !1415, inlinedAt: !1419)
!1457 = !DILocation(line: 397, column: 17, scope: !1415, inlinedAt: !1419)
!1458 = !DILocation(line: 397, column: 14, scope: !1415, inlinedAt: !1419)
!1459 = !DILocation(line: 398, column: 11, scope: !1415, inlinedAt: !1419)
!1460 = !DILocation(line: 399, column: 11, scope: !1415, inlinedAt: !1419)
!1461 = !DILocation(line: 400, column: 11, scope: !1415, inlinedAt: !1419)
!1462 = distinct !{!1462, !1440, !1453, !1195}
!1463 = !DILocation(line: 404, column: 15, scope: !1464, inlinedAt: !1419)
!1464 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 404, column: 15)
!1465 = !DILocation(line: 404, column: 18, scope: !1464, inlinedAt: !1419)
!1466 = !DILocation(line: 406, column: 18, scope: !1415, inlinedAt: !1419)
!1467 = !DILocation(line: 407, column: 18, scope: !1415, inlinedAt: !1419)
!1468 = !DILocation(line: 407, column: 15, scope: !1415, inlinedAt: !1419)
!1469 = !DILocation(line: 408, column: 11, scope: !1415, inlinedAt: !1419)
!1470 = distinct !{!1470, !1440, !1453, !1195}
!1471 = !DILocation(line: 411, column: 19, scope: !1472, inlinedAt: !1419)
!1472 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 411, column: 15)
!1473 = !{i8 0, i8 2}
!1474 = !DILocation(line: 411, column: 15, scope: !1415, inlinedAt: !1419)
!1475 = !DILocation(line: 418, column: 15, scope: !1476, inlinedAt: !1419)
!1476 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 418, column: 15)
!1477 = !DILocation(line: 0, scope: !1415, inlinedAt: !1419)
!1478 = !DILocation(line: 418, column: 18, scope: !1476, inlinedAt: !1419)
!1479 = !DILocation(line: 418, column: 36, scope: !1476, inlinedAt: !1419)
!1480 = !DILocation(line: 423, column: 19, scope: !1415, inlinedAt: !1419)
!1481 = !DILocation(line: 423, column: 11, scope: !1415, inlinedAt: !1419)
!1482 = !DILocation(line: 430, column: 20, scope: !1483, inlinedAt: !1419)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 430, column: 19)
!1484 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 424, column: 13)
!1485 = !DILocation(line: 430, column: 19, scope: !1484, inlinedAt: !1419)
!1486 = !DILocation(line: 432, column: 19, scope: !1487, inlinedAt: !1419)
!1487 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 431, column: 17)
!1488 = !DILocation(line: 433, column: 26, scope: !1487, inlinedAt: !1419)
!1489 = !DILocation(line: 434, column: 19, scope: !1487, inlinedAt: !1419)
!1490 = distinct !{!1490, !1440, !1453, !1195}
!1491 = !DILocation(line: 440, column: 19, scope: !1492, inlinedAt: !1419)
!1492 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 440, column: 19)
!1493 = !DILocation(line: 440, column: 19, scope: !1484, inlinedAt: !1419)
!1494 = !DILocation(line: 441, column: 17, scope: !1492, inlinedAt: !1419)
!1495 = !DILocation(line: 445, column: 36, scope: !1484, inlinedAt: !1419)
!1496 = !DILocation(line: 446, column: 36, scope: !1484, inlinedAt: !1419)
!1497 = !DILocation(line: 447, column: 36, scope: !1484, inlinedAt: !1419)
!1498 = !DILocation(line: 448, column: 36, scope: !1484, inlinedAt: !1419)
!1499 = !DILocation(line: 449, column: 36, scope: !1484, inlinedAt: !1419)
!1500 = !DILocation(line: 452, column: 15, scope: !1484, inlinedAt: !1419)
!1501 = !DILocation(line: 456, column: 15, scope: !1484, inlinedAt: !1419)
!1502 = !DILocation(line: 463, column: 15, scope: !1503, inlinedAt: !1419)
!1503 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 463, column: 15)
!1504 = !DILocation(line: 463, column: 15, scope: !1415, inlinedAt: !1419)
!1505 = !DILocalVariable(name: "str", arg: 1, scope: !1506, file: !2, line: 233, type: !169)
!1506 = distinct !DISubprogram(name: "extract_varname", scope: !2, file: !2, line: 233, type: !1275, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1507)
!1507 = !{!1505, !1508, !1509}
!1508 = !DILocalVariable(name: "p", scope: !1506, file: !2, line: 235, type: !169)
!1509 = !DILocalVariable(name: "i", scope: !1506, file: !2, line: 241, type: !528)
!1510 = !DILocation(line: 0, scope: !1506, inlinedAt: !1511)
!1511 = distinct !DILocation(line: 468, column: 23, scope: !1414, inlinedAt: !1419)
!1512 = !DILocalVariable(name: "str", arg: 1, scope: !1513, file: !2, line: 213, type: !169)
!1513 = distinct !DISubprogram(name: "scan_varname", scope: !2, file: !2, line: 213, type: !1514, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1516)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!169, !169}
!1516 = !{!1512, !1517}
!1517 = !DILocalVariable(name: "end", scope: !1518, file: !2, line: 217, type: !169)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 216, column: 5)
!1519 = distinct !DILexicalBlock(scope: !1513, file: !2, line: 215, column: 7)
!1520 = !DILocation(line: 0, scope: !1513, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 235, column: 19, scope: !1506, inlinedAt: !1511)
!1522 = !DILocation(line: 215, column: 7, scope: !1519, inlinedAt: !1521)
!1523 = !DILocation(line: 215, column: 14, scope: !1519, inlinedAt: !1521)
!1524 = !DILocation(line: 215, column: 21, scope: !1519, inlinedAt: !1521)
!1525 = !DILocation(line: 215, column: 36, scope: !1519, inlinedAt: !1521)
!1526 = !DILocalVariable(name: "c", arg: 1, scope: !1527, file: !1528, line: 183, type: !122)
!1527 = distinct !DISubprogram(name: "c_isalpha", scope: !1528, file: !1528, line: 183, type: !1529, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1531)
!1528 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!231, !122}
!1531 = !{!1526}
!1532 = !DILocation(line: 0, scope: !1527, inlinedAt: !1533)
!1533 = distinct !DILocation(line: 215, column: 25, scope: !1519, inlinedAt: !1521)
!1534 = !DILocation(line: 185, column: 3, scope: !1527, inlinedAt: !1533)
!1535 = !DILocation(line: 215, column: 54, scope: !1519, inlinedAt: !1521)
!1536 = !DILocation(line: 215, column: 7, scope: !1513, inlinedAt: !1521)
!1537 = !DILocation(line: 217, column: 29, scope: !1518, inlinedAt: !1521)
!1538 = !DILocation(line: 0, scope: !1518, inlinedAt: !1521)
!1539 = !DILocation(line: 218, column: 7, scope: !1518, inlinedAt: !1521)
!1540 = !DILocation(line: 218, column: 25, scope: !1518, inlinedAt: !1521)
!1541 = !DILocation(line: 218, column: 14, scope: !1518, inlinedAt: !1521)
!1542 = !DILocation(line: 218, column: 31, scope: !1518, inlinedAt: !1521)
!1543 = !DILocation(line: 218, column: 34, scope: !1518, inlinedAt: !1521)
!1544 = !DILocation(line: 219, column: 9, scope: !1518, inlinedAt: !1521)
!1545 = distinct !{!1545, !1539, !1546, !1195}
!1546 = !DILocation(line: 219, column: 11, scope: !1518, inlinedAt: !1521)
!1547 = !DILocation(line: 241, column: 15, scope: !1506, inlinedAt: !1511)
!1548 = !DILocation(line: 241, column: 21, scope: !1506, inlinedAt: !1511)
!1549 = !DILocation(line: 243, column: 12, scope: !1550, inlinedAt: !1511)
!1550 = distinct !DILexicalBlock(scope: !1506, file: !2, line: 243, column: 7)
!1551 = !DILocation(line: 243, column: 9, scope: !1550, inlinedAt: !1511)
!1552 = !DILocation(line: 243, column: 7, scope: !1506, inlinedAt: !1511)
!1553 = !DILocation(line: 245, column: 7, scope: !1554, inlinedAt: !1511)
!1554 = distinct !DILexicalBlock(scope: !1550, file: !2, line: 244, column: 5)
!1555 = !DILocation(line: 246, column: 48, scope: !1554, inlinedAt: !1511)
!1556 = !DILocation(line: 246, column: 46, scope: !1554, inlinedAt: !1511)
!1557 = !DILocation(line: 246, column: 17, scope: !1554, inlinedAt: !1511)
!1558 = !DILocation(line: 246, column: 15, scope: !1554, inlinedAt: !1511)
!1559 = !DILocation(line: 247, column: 5, scope: !1554, inlinedAt: !1511)
!1560 = !DILocation(line: 0, scope: !1414, inlinedAt: !1419)
!1561 = !DILocation(line: 470, column: 15, scope: !1562, inlinedAt: !1419)
!1562 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 469, column: 17)
!1563 = !DILocation(line: 249, column: 11, scope: !1506, inlinedAt: !1511)
!1564 = !DILocalVariable(name: "__dest", arg: 1, scope: !1565, file: !1566, line: 26, type: !1569)
!1565 = distinct !DISubprogram(name: "memcpy", scope: !1566, file: !1566, line: 26, type: !1567, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1570)
!1566 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!164, !1569, !1296, !166}
!1569 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !164)
!1570 = !{!1564, !1571, !1572}
!1571 = !DILocalVariable(name: "__src", arg: 2, scope: !1565, file: !1566, line: 26, type: !1296)
!1572 = !DILocalVariable(name: "__len", arg: 3, scope: !1565, file: !1566, line: 26, type: !166)
!1573 = !DILocation(line: 0, scope: !1565, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 249, column: 3, scope: !1506, inlinedAt: !1511)
!1575 = !DILocation(line: 29, column: 10, scope: !1565, inlinedAt: !1574)
!1576 = !DILocation(line: 250, column: 3, scope: !1506, inlinedAt: !1511)
!1577 = !DILocation(line: 250, column: 14, scope: !1506, inlinedAt: !1511)
!1578 = !DILocation(line: 474, column: 23, scope: !1414, inlinedAt: !1419)
!1579 = !DILocation(line: 475, column: 17, scope: !1580, inlinedAt: !1419)
!1580 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 475, column: 17)
!1581 = !DILocation(line: 475, column: 17, scope: !1414, inlinedAt: !1419)
!1582 = !DILocation(line: 477, column: 17, scope: !1583, inlinedAt: !1419)
!1583 = distinct !DILexicalBlock(scope: !1580, file: !2, line: 476, column: 15)
!1584 = !DILocation(line: 478, column: 17, scope: !1585, inlinedAt: !1419)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !2, line: 478, column: 17)
!1586 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 478, column: 17)
!1587 = !DILocation(line: 478, column: 17, scope: !1586, inlinedAt: !1419)
!1588 = !DILocation(line: 479, column: 24, scope: !1589, inlinedAt: !1419)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 479, column: 17)
!1590 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 479, column: 17)
!1591 = !DILocation(line: 479, column: 17, scope: !1590, inlinedAt: !1419)
!1592 = !DILocation(line: 303, column: 48, scope: !1593, inlinedAt: !1601)
!1593 = distinct !DISubprogram(name: "splitbuf_append_byte", scope: !2, file: !2, line: 301, type: !1594, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1597)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{null, !1596, !4}
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1597 = !{!1598, !1599, !1600}
!1598 = !DILocalVariable(name: "ss", arg: 1, scope: !1593, file: !2, line: 301, type: !1596)
!1599 = !DILocalVariable(name: "c", arg: 2, scope: !1593, file: !2, line: 301, type: !4)
!1600 = !DILocalVariable(name: "string_bytes", scope: !1593, file: !2, line: 303, type: !528)
!1601 = distinct !DILocation(line: 480, column: 19, scope: !1589, inlinedAt: !1419)
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
!1622 = !DILocation(line: 296, column: 27, scope: !1612, inlinedAt: !1619)
!1623 = !DILocation(line: 296, column: 21, scope: !1612, inlinedAt: !1619)
!1624 = !DILocation(line: 296, column: 48, scope: !1612, inlinedAt: !1619)
!1625 = !DILocalVariable(name: "__dest", arg: 1, scope: !1626, file: !1566, line: 34, type: !164)
!1626 = distinct !DISubprogram(name: "memmove", scope: !1566, file: !1566, line: 34, type: !1627, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1629)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!164, !164, !1297, !166}
!1629 = !{!1625, !1630, !1631}
!1630 = !DILocalVariable(name: "__src", arg: 2, scope: !1626, file: !1566, line: 34, type: !1297)
!1631 = !DILocalVariable(name: "__len", arg: 3, scope: !1626, file: !1566, line: 34, type: !166)
!1632 = !DILocation(line: 0, scope: !1626, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 296, column: 3, scope: !1612, inlinedAt: !1619)
!1634 = !DILocation(line: 36, column: 10, scope: !1626, inlinedAt: !1633)
!1635 = !DILocation(line: 306, column: 18, scope: !1593, inlinedAt: !1601)
!1636 = !DILocation(line: 306, column: 29, scope: !1593, inlinedAt: !1601)
!1637 = !DILocation(line: 305, column: 5, scope: !1607, inlinedAt: !1601)
!1638 = !DILocation(line: 306, column: 23, scope: !1593, inlinedAt: !1601)
!1639 = !DILocation(line: 306, column: 3, scope: !1593, inlinedAt: !1601)
!1640 = !DILocation(line: 306, column: 56, scope: !1593, inlinedAt: !1601)
!1641 = !DILocation(line: 307, column: 58, scope: !1593, inlinedAt: !1601)
!1642 = !DILocation(line: 307, column: 24, scope: !1593, inlinedAt: !1601)
!1643 = !DILocation(line: 307, column: 7, scope: !1593, inlinedAt: !1601)
!1644 = !DILocation(line: 307, column: 16, scope: !1593, inlinedAt: !1601)
!1645 = !DILocation(line: 307, column: 3, scope: !1593, inlinedAt: !1601)
!1646 = !DILocation(line: 307, column: 22, scope: !1593, inlinedAt: !1601)
!1647 = !DILocation(line: 479, column: 29, scope: !1589, inlinedAt: !1419)
!1648 = distinct !{!1648, !1591, !1649, !1195}
!1649 = !DILocation(line: 480, column: 48, scope: !1590, inlinedAt: !1419)
!1650 = !DILocation(line: 483, column: 15, scope: !1651, inlinedAt: !1419)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 483, column: 15)
!1652 = distinct !DILexicalBlock(scope: !1580, file: !2, line: 483, column: 15)
!1653 = !DILocation(line: 483, column: 15, scope: !1652, inlinedAt: !1419)
!1654 = !DILocation(line: 485, column: 19, scope: !1414, inlinedAt: !1419)
!1655 = !DILocation(line: 485, column: 37, scope: !1414, inlinedAt: !1419)
!1656 = !DILocation(line: 490, column: 7, scope: !1412, inlinedAt: !1419)
!1657 = !DILocation(line: 0, scope: !1593, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 491, column: 7, scope: !1412, inlinedAt: !1419)
!1659 = !DILocation(line: 303, column: 39, scope: !1593, inlinedAt: !1658)
!1660 = !DILocation(line: 303, column: 48, scope: !1593, inlinedAt: !1658)
!1661 = !DILocation(line: 303, column: 35, scope: !1593, inlinedAt: !1658)
!1662 = !DILocation(line: 303, column: 24, scope: !1593, inlinedAt: !1658)
!1663 = !DILocation(line: 304, column: 11, scope: !1607, inlinedAt: !1658)
!1664 = !DILocation(line: 304, column: 22, scope: !1607, inlinedAt: !1658)
!1665 = !DILocation(line: 304, column: 41, scope: !1607, inlinedAt: !1658)
!1666 = !DILocation(line: 304, column: 7, scope: !1593, inlinedAt: !1658)
!1667 = !DILocation(line: 0, scope: !1612, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 305, column: 5, scope: !1607, inlinedAt: !1658)
!1669 = !DILocation(line: 294, column: 14, scope: !1612, inlinedAt: !1668)
!1670 = !DILocation(line: 294, column: 12, scope: !1612, inlinedAt: !1668)
!1671 = !DILocation(line: 296, column: 27, scope: !1612, inlinedAt: !1668)
!1672 = !DILocation(line: 296, column: 21, scope: !1612, inlinedAt: !1668)
!1673 = !DILocation(line: 296, column: 48, scope: !1612, inlinedAt: !1668)
!1674 = !DILocation(line: 0, scope: !1626, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 296, column: 3, scope: !1612, inlinedAt: !1668)
!1676 = !DILocation(line: 36, column: 10, scope: !1626, inlinedAt: !1675)
!1677 = !DILocation(line: 306, column: 18, scope: !1593, inlinedAt: !1658)
!1678 = !DILocation(line: 306, column: 29, scope: !1593, inlinedAt: !1658)
!1679 = !DILocation(line: 305, column: 5, scope: !1607, inlinedAt: !1658)
!1680 = !DILocation(line: 306, column: 23, scope: !1593, inlinedAt: !1658)
!1681 = !DILocation(line: 306, column: 3, scope: !1593, inlinedAt: !1658)
!1682 = !DILocation(line: 306, column: 56, scope: !1593, inlinedAt: !1658)
!1683 = !DILocation(line: 307, column: 58, scope: !1593, inlinedAt: !1658)
!1684 = !DILocation(line: 307, column: 24, scope: !1593, inlinedAt: !1658)
!1685 = !DILocation(line: 307, column: 7, scope: !1593, inlinedAt: !1658)
!1686 = !DILocation(line: 307, column: 16, scope: !1593, inlinedAt: !1658)
!1687 = !DILocation(line: 307, column: 3, scope: !1593, inlinedAt: !1658)
!1688 = !DILocation(line: 307, column: 22, scope: !1593, inlinedAt: !1658)
!1689 = !DILocation(line: 492, column: 7, scope: !1412, inlinedAt: !1419)
!1690 = !DILocation(line: 368, column: 8, scope: !1395, inlinedAt: !1419)
!1691 = !DILocation(line: 368, column: 20, scope: !1395, inlinedAt: !1419)
!1692 = !DILocation(line: 495, column: 7, scope: !1693, inlinedAt: !1419)
!1693 = distinct !DILexicalBlock(scope: !1395, file: !2, line: 495, column: 7)
!1694 = !DILocation(line: 495, column: 10, scope: !1693, inlinedAt: !1419)
!1695 = !DILocation(line: 496, column: 5, scope: !1693, inlinedAt: !1419)
!1696 = !DILocation(line: 498, column: 2, scope: !1395, inlinedAt: !1419)
!1697 = !DILocation(line: 0, scope: !1593, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 499, column: 3, scope: !1395, inlinedAt: !1419)
!1699 = !DILocation(line: 303, column: 39, scope: !1593, inlinedAt: !1698)
!1700 = !DILocation(line: 303, column: 48, scope: !1593, inlinedAt: !1698)
!1701 = !DILocation(line: 303, column: 35, scope: !1593, inlinedAt: !1698)
!1702 = !DILocation(line: 303, column: 24, scope: !1593, inlinedAt: !1698)
!1703 = !DILocation(line: 304, column: 11, scope: !1607, inlinedAt: !1698)
!1704 = !DILocation(line: 304, column: 22, scope: !1607, inlinedAt: !1698)
!1705 = !DILocation(line: 304, column: 41, scope: !1607, inlinedAt: !1698)
!1706 = !DILocation(line: 304, column: 7, scope: !1593, inlinedAt: !1698)
!1707 = !DILocation(line: 0, scope: !1612, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 305, column: 5, scope: !1607, inlinedAt: !1698)
!1709 = !DILocation(line: 294, column: 14, scope: !1612, inlinedAt: !1708)
!1710 = !DILocation(line: 294, column: 12, scope: !1612, inlinedAt: !1708)
!1711 = !DILocation(line: 296, column: 27, scope: !1612, inlinedAt: !1708)
!1712 = !DILocation(line: 296, column: 21, scope: !1612, inlinedAt: !1708)
!1713 = !DILocation(line: 296, column: 48, scope: !1612, inlinedAt: !1708)
!1714 = !DILocation(line: 0, scope: !1626, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 296, column: 3, scope: !1612, inlinedAt: !1708)
!1716 = !DILocation(line: 36, column: 10, scope: !1626, inlinedAt: !1715)
!1717 = !DILocation(line: 306, column: 18, scope: !1593, inlinedAt: !1698)
!1718 = !DILocation(line: 306, column: 29, scope: !1593, inlinedAt: !1698)
!1719 = !DILocation(line: 305, column: 5, scope: !1607, inlinedAt: !1698)
!1720 = !DILocation(line: 306, column: 23, scope: !1593, inlinedAt: !1698)
!1721 = !DILocation(line: 306, column: 3, scope: !1593, inlinedAt: !1698)
!1722 = !DILocation(line: 306, column: 56, scope: !1593, inlinedAt: !1698)
!1723 = !DILocation(line: 307, column: 58, scope: !1593, inlinedAt: !1698)
!1724 = !DILocation(line: 307, column: 24, scope: !1593, inlinedAt: !1698)
!1725 = !DILocation(line: 307, column: 7, scope: !1593, inlinedAt: !1698)
!1726 = !DILocation(line: 307, column: 16, scope: !1593, inlinedAt: !1698)
!1727 = !DILocation(line: 307, column: 3, scope: !1593, inlinedAt: !1698)
!1728 = !DILocation(line: 307, column: 22, scope: !1593, inlinedAt: !1698)
!1729 = !DILocalVariable(name: "ss", arg: 1, scope: !1730, file: !2, line: 330, type: !1596)
!1730 = distinct !DISubprogram(name: "splitbuf_finishup", scope: !2, file: !2, line: 330, type: !1731, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1733)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!226, !1596}
!1733 = !{!1729, !1734, !1735, !1736, !1737}
!1734 = !DILocalVariable(name: "argc", scope: !1730, file: !2, line: 332, type: !122)
!1735 = !DILocalVariable(name: "argv", scope: !1730, file: !2, line: 333, type: !226)
!1736 = !DILocalVariable(name: "stringbase", scope: !1730, file: !2, line: 334, type: !163)
!1737 = !DILocalVariable(name: "i", scope: !1738, file: !2, line: 335, type: !122)
!1738 = distinct !DILexicalBlock(scope: !1730, file: !2, line: 335, column: 3)
!1739 = !DILocation(line: 0, scope: !1730, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 501, column: 10, scope: !1395, inlinedAt: !1419)
!1741 = !DILocation(line: 333, column: 21, scope: !1730, inlinedAt: !1740)
!1742 = !DILocation(line: 334, column: 47, scope: !1730, inlinedAt: !1740)
!1743 = !DILocation(line: 334, column: 41, scope: !1730, inlinedAt: !1740)
!1744 = !DILocation(line: 0, scope: !1738, inlinedAt: !1740)
!1745 = !DILocation(line: 335, column: 21, scope: !1746, inlinedAt: !1740)
!1746 = distinct !DILexicalBlock(scope: !1738, file: !2, line: 335, column: 3)
!1747 = !DILocation(line: 335, column: 3, scope: !1738, inlinedAt: !1740)
!1748 = !DILocation(line: 502, column: 1, scope: !1395, inlinedAt: !1419)
!1749 = !DILocation(line: 533, column: 14, scope: !1375, inlinedAt: !1391)
!1750 = !DILocation(line: 533, column: 12, scope: !1375, inlinedAt: !1391)
!1751 = !DILocation(line: 536, column: 17, scope: !1389, inlinedAt: !1391)
!1752 = !DILocation(line: 336, column: 39, scope: !1746, inlinedAt: !1740)
!1753 = !DILocation(line: 336, column: 28, scope: !1746, inlinedAt: !1740)
!1754 = !DILocation(line: 336, column: 13, scope: !1746, inlinedAt: !1740)
!1755 = distinct !{!1755, !1747, !1756, !1195, !1757, !1758}
!1756 = !DILocation(line: 336, column: 45, scope: !1738, inlinedAt: !1740)
!1757 = !{!"llvm.loop.isvectorized", i32 1}
!1758 = !{!"llvm.loop.unroll.runtime.disable"}
!1759 = !DILocation(line: 336, column: 26, scope: !1746, inlinedAt: !1740)
!1760 = !DILocation(line: 335, column: 30, scope: !1746, inlinedAt: !1740)
!1761 = distinct !{!1761, !1747, !1756, !1195, !1758, !1757}
!1762 = !DILocation(line: 536, column: 7, scope: !1389, inlinedAt: !1391)
!1763 = !DILocation(line: 538, column: 7, scope: !1764, inlinedAt: !1391)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !2, line: 538, column: 7)
!1765 = distinct !DILexicalBlock(scope: !1388, file: !2, line: 538, column: 7)
!1766 = !DILocation(line: 539, column: 7, scope: !1767, inlinedAt: !1391)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !2, line: 539, column: 7)
!1768 = distinct !DILexicalBlock(scope: !1388, file: !2, line: 539, column: 7)
!1769 = !DILocation(line: 539, column: 7, scope: !1768, inlinedAt: !1391)
!1770 = !DILocation(line: 0, scope: !1387, inlinedAt: !1391)
!1771 = !DILocation(line: 540, column: 25, scope: !1772, inlinedAt: !1391)
!1772 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 540, column: 7)
!1773 = !DILocation(line: 540, column: 7, scope: !1387, inlinedAt: !1391)
!1774 = !DILocation(line: 541, column: 9, scope: !1775, inlinedAt: !1391)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !2, line: 541, column: 9)
!1776 = distinct !DILexicalBlock(scope: !1772, file: !2, line: 541, column: 9)
!1777 = !DILocation(line: 541, column: 9, scope: !1776, inlinedAt: !1391)
!1778 = !DILocation(line: 540, column: 37, scope: !1772, inlinedAt: !1391)
!1779 = distinct !{!1779, !1773, !1780, !1195}
!1780 = !DILocation(line: 541, column: 9, scope: !1387, inlinedAt: !1391)
!1781 = !DILocation(line: 546, column: 19, scope: !1375, inlinedAt: !1391)
!1782 = !DILocation(line: 546, column: 43, scope: !1375, inlinedAt: !1391)
!1783 = !DILocation(line: 546, column: 41, scope: !1375, inlinedAt: !1391)
!1784 = !DILocation(line: 547, column: 23, scope: !1375, inlinedAt: !1391)
!1785 = !DILocation(line: 547, column: 11, scope: !1375, inlinedAt: !1391)
!1786 = !DILocation(line: 547, column: 28, scope: !1375, inlinedAt: !1391)
!1787 = !DILocation(line: 0, scope: !1565, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 546, column: 3, scope: !1375, inlinedAt: !1391)
!1789 = !DILocation(line: 29, column: 10, scope: !1565, inlinedAt: !1788)
!1790 = !DILocation(line: 550, column: 24, scope: !1375, inlinedAt: !1391)
!1791 = !DILocation(line: 552, column: 16, scope: !1375, inlinedAt: !1391)
!1792 = !DILocation(line: 820, column: 11, scope: !1332)
!1793 = !DILocation(line: 826, column: 11, scope: !1332)
!1794 = !DILocation(line: 827, column: 11, scope: !1332)
!1795 = !DILocation(line: 828, column: 11, scope: !1332)
!1796 = !DILocation(line: 830, column: 9, scope: !1332)
!1797 = !DILocation(line: 831, column: 9, scope: !1332)
!1798 = !DILocation(line: 833, column: 11, scope: !1332)
!1799 = !DILocation(line: 837, column: 7, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !223, file: !2, line: 837, column: 7)
!1801 = !DILocation(line: 837, column: 14, scope: !1800)
!1802 = !DILocation(line: 837, column: 21, scope: !1800)
!1803 = !DILocation(line: 837, column: 31, scope: !1800)
!1804 = !DILocation(line: 0, scope: !1160, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 837, column: 24, scope: !1800)
!1806 = !DILocation(line: 1361, column: 11, scope: !1160, inlinedAt: !1805)
!1807 = !DILocation(line: 1361, column: 10, scope: !1160, inlinedAt: !1805)
!1808 = !DILocation(line: 837, column: 7, scope: !223)
!1809 = !DILocation(line: 840, column: 7, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1800, file: !2, line: 838, column: 5)
!1811 = !DILocation(line: 843, column: 7, scope: !223)
!1812 = !DILocation(line: 843, column: 7, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !223, file: !2, line: 843, column: 7)
!1814 = !DILocation(line: 845, column: 7, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !2, line: 845, column: 7)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !2, line: 845, column: 7)
!1817 = distinct !DILexicalBlock(scope: !1813, file: !2, line: 844, column: 5)
!1818 = !DILocation(line: 845, column: 7, scope: !1816)
!1819 = !DILocation(line: 847, column: 15, scope: !1817)
!1820 = !DILocation(line: 848, column: 5, scope: !1817)
!1821 = !DILocalVariable(name: "i", scope: !1822, file: !2, line: 196, type: !528)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !2, line: 196, column: 3)
!1823 = distinct !DISubprogram(name: "unset_envvars", scope: !2, file: !2, line: 194, type: !713, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1824)
!1824 = !{!1821}
!1825 = !DILocation(line: 0, scope: !1822, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 850, column: 5, scope: !1813)
!1827 = !DILocation(line: 196, column: 25, scope: !1828, inlinedAt: !1826)
!1828 = distinct !DILexicalBlock(scope: !1822, file: !2, line: 196, column: 3)
!1829 = !DILocation(line: 196, column: 23, scope: !1828, inlinedAt: !1826)
!1830 = !DILocation(line: 196, column: 3, scope: !1822, inlinedAt: !1826)
!1831 = !DILocation(line: 198, column: 7, scope: !1832, inlinedAt: !1826)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !2, line: 198, column: 7)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !2, line: 198, column: 7)
!1834 = distinct !DILexicalBlock(scope: !1828, file: !2, line: 197, column: 5)
!1835 = !DILocation(line: 198, column: 7, scope: !1833, inlinedAt: !1826)
!1836 = !DILocation(line: 200, column: 21, scope: !1837, inlinedAt: !1826)
!1837 = distinct !DILexicalBlock(scope: !1834, file: !2, line: 200, column: 11)
!1838 = !DILocation(line: 200, column: 11, scope: !1837, inlinedAt: !1826)
!1839 = !DILocation(line: 200, column: 11, scope: !1834, inlinedAt: !1826)
!1840 = !DILocation(line: 201, column: 9, scope: !1837, inlinedAt: !1826)
!1841 = !DILocation(line: 196, column: 38, scope: !1828, inlinedAt: !1826)
!1842 = distinct !{!1842, !1830, !1843, !1195}
!1843 = !DILocation(line: 203, column: 5, scope: !1822, inlinedAt: !1826)
!1844 = !DILocation(line: 853, column: 10, scope: !223)
!1845 = !DILocation(line: 853, column: 17, scope: !223)
!1846 = !DILocation(line: 853, column: 24, scope: !223)
!1847 = !DILocation(line: 853, column: 41, scope: !223)
!1848 = !DILocation(line: 853, column: 33, scope: !223)
!1849 = !DILocation(line: 853, column: 3, scope: !223)
!1850 = !DILocation(line: 855, column: 7, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !2, line: 855, column: 7)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !2, line: 855, column: 7)
!1853 = distinct !DILexicalBlock(scope: !223, file: !2, line: 854, column: 5)
!1854 = !DILocation(line: 855, column: 7, scope: !1852)
!1855 = !DILocation(line: 857, column: 24, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1853, file: !2, line: 857, column: 11)
!1857 = !DILocation(line: 857, column: 19, scope: !1856)
!1858 = !DILocation(line: 857, column: 11, scope: !1856)
!1859 = !DILocation(line: 857, column: 11, scope: !1853)
!1860 = !DILocation(line: 859, column: 15, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1856, file: !2, line: 858, column: 9)
!1862 = !DILocation(line: 860, column: 11, scope: !1861)
!1863 = !DILocation(line: 863, column: 13, scope: !1853)
!1864 = distinct !{!1864, !1849, !1865, !1195}
!1865 = !DILocation(line: 864, column: 5, scope: !223)
!1866 = !DILocation(line: 868, column: 7, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !223, file: !2, line: 868, column: 7)
!1868 = !DILocation(line: 868, column: 32, scope: !1867)
!1869 = !DILocation(line: 870, column: 7, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1867, file: !2, line: 869, column: 5)
!1871 = !DILocation(line: 871, column: 7, scope: !1870)
!1872 = !DILocation(line: 874, column: 7, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !223, file: !2, line: 874, column: 7)
!1874 = !DILocation(line: 874, column: 14, scope: !1873)
!1875 = !DILocation(line: 876, column: 7, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1873, file: !2, line: 875, column: 5)
!1877 = !DILocation(line: 877, column: 7, scope: !1876)
!1878 = !DILocation(line: 880, column: 7, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !223, file: !2, line: 880, column: 7)
!1880 = !DILocation(line: 880, column: 13, scope: !1879)
!1881 = !DILocation(line: 882, column: 7, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1879, file: !2, line: 881, column: 5)
!1883 = !DILocation(line: 883, column: 7, scope: !1882)
!1884 = !DILocation(line: 889, column: 24, scope: !239)
!1885 = !DILocation(line: 0, scope: !239)
!1886 = !DILocation(line: 890, column: 14, scope: !239)
!1887 = !DILocation(line: 890, column: 7, scope: !239)
!1888 = !DILocation(line: 891, column: 9, scope: !239)
!1889 = distinct !{!1889, !1887, !1888, !1195}
!1890 = !DILocalVariable(name: "i", scope: !1891, file: !2, line: 591, type: !122)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !2, line: 591, column: 3)
!1892 = distinct !DISubprogram(name: "reset_signal_handlers", scope: !2, file: !2, line: 589, type: !713, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1893)
!1893 = !{!1890, !1894, !1985, !1986, !1987, !1988}
!1894 = !DILocalVariable(name: "act", scope: !1895, file: !2, line: 593, type: !1897)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !2, line: 592, column: 5)
!1896 = distinct !DILexicalBlock(scope: !1891, file: !2, line: 591, column: 3)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1898, line: 27, size: 1216, elements: !1899)
!1898 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "", checksumkind: CSK_MD5, checksum: "95401d18e887df415f59d7a2cb411c28")
!1899 = !{!1900, !1982, !1983, !1984}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !1897, file: !1898, line: 38, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1897, file: !1898, line: 31, size: 64, elements: !1902)
!1902 = !{!1903, !1904}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1901, file: !1898, line: 34, baseType: !175, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !1901, file: !1898, line: 36, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !122, !1908, !164}
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !1910, line: 124, baseType: !1911)
!1910 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h", directory: "", checksumkind: CSK_MD5, checksum: "023cf7b0ef843da262cf07900eda0ac5")
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1910, line: 36, size: 1024, elements: !1912)
!1912 = !{!1913, !1914, !1915, !1916, !1917}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1911, file: !1910, line: 38, baseType: !122, size: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1911, file: !1910, line: 40, baseType: !122, size: 32, offset: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1911, file: !1910, line: 42, baseType: !122, size: 32, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1911, file: !1910, line: 48, baseType: !122, size: 32, offset: 96)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1911, file: !1910, line: 123, baseType: !1918, size: 896, offset: 128)
!1918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1911, file: !1910, line: 51, size: 896, elements: !1919)
!1919 = !{!1920, !1922, !1929, !1941, !1947, !1956, !1971, !1976}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !1918, file: !1910, line: 53, baseType: !1921, size: 896)
!1921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 896, elements: !900)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1918, file: !1910, line: 60, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1918, file: !1910, line: 56, size: 64, elements: !1924)
!1924 = !{!1925, !1927}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1923, file: !1910, line: 58, baseType: !1926, size: 32)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !353, line: 154, baseType: !122)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1923, file: !1910, line: 59, baseType: !1928, size: 32, offset: 32)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !353, line: 146, baseType: !109)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1918, file: !1910, line: 68, baseType: !1930, size: 128)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1918, file: !1910, line: 63, size: 128, elements: !1931)
!1931 = !{!1932, !1933, !1934}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !1930, file: !1910, line: 65, baseType: !122, size: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !1930, file: !1910, line: 66, baseType: !122, size: 32, offset: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1930, file: !1910, line: 67, baseType: !1935, size: 64, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigval_t", file: !1936, line: 30, baseType: !1937)
!1936 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h", directory: "", checksumkind: CSK_MD5, checksum: "bc7605d16e396c16f725f8da13f6eb20")
!1937 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1936, line: 24, size: 64, elements: !1938)
!1938 = !{!1939, !1940}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1937, file: !1936, line: 26, baseType: !122, size: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1937, file: !1936, line: 27, baseType: !164, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1918, file: !1910, line: 76, baseType: !1942, size: 128)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1918, file: !1910, line: 71, size: 128, elements: !1943)
!1943 = !{!1944, !1945, !1946}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1942, file: !1910, line: 73, baseType: !1926, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1942, file: !1910, line: 74, baseType: !1928, size: 32, offset: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1942, file: !1910, line: 75, baseType: !1935, size: 64, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1918, file: !1910, line: 86, baseType: !1948, size: 256)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1918, file: !1910, line: 79, size: 256, elements: !1949)
!1949 = !{!1950, !1951, !1952, !1953, !1955}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1948, file: !1910, line: 81, baseType: !1926, size: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1948, file: !1910, line: 82, baseType: !1928, size: 32, offset: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !1948, file: !1910, line: 83, baseType: !122, size: 32, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !1948, file: !1910, line: 84, baseType: !1954, size: 64, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !353, line: 156, baseType: !174)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !1948, file: !1910, line: 85, baseType: !1954, size: 64, offset: 192)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1918, file: !1910, line: 105, baseType: !1957, size: 256)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1918, file: !1910, line: 89, size: 256, elements: !1958)
!1958 = !{!1959, !1960, !1962}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !1957, file: !1910, line: 91, baseType: !164, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !1957, file: !1910, line: 93, baseType: !1961, size: 16, offset: 64)
!1961 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_bounds", scope: !1957, file: !1910, line: 104, baseType: !1963, size: 128, offset: 128)
!1963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1957, file: !1910, line: 94, size: 128, elements: !1964)
!1964 = !{!1965, !1970}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1963, file: !1910, line: 101, baseType: !1966, size: 128)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1963, file: !1910, line: 97, size: 128, elements: !1967)
!1967 = !{!1968, !1969}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1966, file: !1910, line: 99, baseType: !164, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1966, file: !1910, line: 100, baseType: !164, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1963, file: !1910, line: 103, baseType: !741, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1918, file: !1910, line: 112, baseType: !1972, size: 128)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1918, file: !1910, line: 108, size: 128, elements: !1973)
!1973 = !{!1974, !1975}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !1972, file: !1910, line: 110, baseType: !174, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !1972, file: !1910, line: 111, baseType: !122, size: 32, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1918, file: !1910, line: 121, baseType: !1977, size: 128)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1918, file: !1910, line: 116, size: 128, elements: !1978)
!1978 = !{!1979, !1980, !1981}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1977, file: !1910, line: 118, baseType: !164, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1977, file: !1910, line: 119, baseType: !122, size: 32, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1977, file: !1910, line: 120, baseType: !109, size: 32, offset: 96)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1897, file: !1898, line: 46, baseType: !549, size: 1024, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1897, file: !1898, line: 49, baseType: !122, size: 32, offset: 1088)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1897, file: !1898, line: 52, baseType: !712, size: 64, offset: 1152)
!1985 = !DILocalVariable(name: "ignore_errors", scope: !1895, file: !2, line: 598, type: !231)
!1986 = !DILocalVariable(name: "set_to_default", scope: !1895, file: !2, line: 601, type: !231)
!1987 = !DILocalVariable(name: "sig_err", scope: !1895, file: !2, line: 604, type: !122)
!1988 = !DILocalVariable(name: "signame", scope: !1989, file: !2, line: 621, type: !486)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !2, line: 620, column: 9)
!1990 = distinct !DILexicalBlock(scope: !1895, file: !2, line: 619, column: 11)
!1991 = !DILocation(line: 0, scope: !1891, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 895, column: 3, scope: !223)
!1993 = !DILocation(line: 591, column: 3, scope: !1891, inlinedAt: !1992)
!1994 = !DILocation(line: 593, column: 7, scope: !1895, inlinedAt: !1992)
!1995 = !DILocation(line: 593, column: 24, scope: !1895, inlinedAt: !1992)
!1996 = !DILocation(line: 595, column: 11, scope: !1997, inlinedAt: !1992)
!1997 = distinct !DILexicalBlock(scope: !1895, file: !2, line: 595, column: 11)
!1998 = !DILocation(line: 595, column: 11, scope: !1895, inlinedAt: !1992)
!1999 = !DILocation(line: 599, column: 29, scope: !1895, inlinedAt: !1992)
!2000 = !DILocation(line: 0, scope: !1895, inlinedAt: !1992)
!2001 = !DILocation(line: 602, column: 30, scope: !1895, inlinedAt: !1992)
!2002 = !DILocation(line: 604, column: 21, scope: !1895, inlinedAt: !1992)
!2003 = !DILocation(line: 606, column: 11, scope: !2004, inlinedAt: !1992)
!2004 = distinct !DILexicalBlock(scope: !1895, file: !2, line: 606, column: 11)
!2005 = !DILocation(line: 606, column: 19, scope: !2004, inlinedAt: !1992)
!2006 = !DILocation(line: 607, column: 9, scope: !2004, inlinedAt: !1992)
!2007 = !DILocation(line: 610, column: 11, scope: !1895, inlinedAt: !1992)
!2008 = !DILocation(line: 612, column: 28, scope: !2009, inlinedAt: !1992)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 611, column: 9)
!2010 = distinct !DILexicalBlock(scope: !1895, file: !2, line: 610, column: 11)
!2011 = !DILocation(line: 612, column: 26, scope: !2009, inlinedAt: !1992)
!2012 = !DILocation(line: 613, column: 21, scope: !2009, inlinedAt: !1992)
!2013 = !DILocation(line: 614, column: 15, scope: !2014, inlinedAt: !1992)
!2014 = distinct !DILexicalBlock(scope: !2009, file: !2, line: 614, column: 15)
!2015 = !DILocation(line: 614, column: 23, scope: !2014, inlinedAt: !1992)
!2016 = !DILocation(line: 615, column: 13, scope: !2014, inlinedAt: !1992)
!2017 = !DILocation(line: 619, column: 11, scope: !1990, inlinedAt: !1992)
!2018 = !DILocation(line: 619, column: 11, scope: !1895, inlinedAt: !1992)
!2019 = !DILocation(line: 621, column: 11, scope: !1989, inlinedAt: !1992)
!2020 = !DILocation(line: 621, column: 16, scope: !1989, inlinedAt: !1992)
!2021 = !DILocation(line: 622, column: 15, scope: !2022, inlinedAt: !1992)
!2022 = distinct !DILexicalBlock(scope: !1989, file: !2, line: 622, column: 15)
!2023 = !DILocation(line: 622, column: 36, scope: !2022, inlinedAt: !1992)
!2024 = !DILocation(line: 622, column: 15, scope: !1989, inlinedAt: !1992)
!2025 = !DILocation(line: 623, column: 13, scope: !2022, inlinedAt: !1992)
!2026 = !DILocation(line: 624, column: 11, scope: !2027, inlinedAt: !1992)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !2, line: 624, column: 11)
!2028 = distinct !DILexicalBlock(scope: !1989, file: !2, line: 624, column: 11)
!2029 = !DILocation(line: 624, column: 11, scope: !2028, inlinedAt: !1992)
!2030 = !DILocation(line: 628, column: 9, scope: !1990, inlinedAt: !1992)
!2031 = !DILocation(line: 628, column: 9, scope: !1989, inlinedAt: !1992)
!2032 = !DILocation(line: 629, column: 5, scope: !1896, inlinedAt: !1992)
!2033 = !DILocation(line: 591, column: 39, scope: !1896, inlinedAt: !1992)
!2034 = !DILocation(line: 591, column: 21, scope: !1896, inlinedAt: !1992)
!2035 = distinct !{!2035, !1993, !2036, !1195}
!2036 = !DILocation(line: 629, column: 5, scope: !1891, inlinedAt: !1992)
!2037 = !DILocation(line: 896, column: 7, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !223, file: !2, line: 896, column: 7)
!2039 = !DILocation(line: 896, column: 7, scope: !223)
!2040 = !DILocation(line: 686, column: 3, scope: !2041, inlinedAt: !2052)
!2041 = distinct !DISubprogram(name: "set_signal_proc_mask", scope: !2, file: !2, line: 683, type: !713, scopeLine: 684, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2042)
!2042 = !{!2043, !2044, !2046, !2049}
!2043 = !DILocalVariable(name: "set", scope: !2041, file: !2, line: 686, type: !547)
!2044 = !DILocalVariable(name: "i", scope: !2045, file: !2, line: 693, type: !122)
!2045 = distinct !DILexicalBlock(scope: !2041, file: !2, line: 693, column: 3)
!2046 = !DILocalVariable(name: "debug_act", scope: !2047, file: !2, line: 695, type: !169)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !2, line: 694, column: 5)
!2048 = distinct !DILexicalBlock(scope: !2045, file: !2, line: 693, column: 3)
!2049 = !DILocalVariable(name: "signame", scope: !2050, file: !2, line: 710, type: !486)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !2, line: 709, column: 9)
!2051 = distinct !DILexicalBlock(scope: !2047, file: !2, line: 708, column: 11)
!2052 = distinct !DILocation(line: 897, column: 5, scope: !2038)
!2053 = !DILocation(line: 686, column: 12, scope: !2041, inlinedAt: !2052)
!2054 = !DILocation(line: 688, column: 3, scope: !2041, inlinedAt: !2052)
!2055 = !DILocation(line: 690, column: 7, scope: !2056, inlinedAt: !2052)
!2056 = distinct !DILexicalBlock(scope: !2041, file: !2, line: 690, column: 7)
!2057 = !DILocation(line: 690, column: 7, scope: !2041, inlinedAt: !2052)
!2058 = !DILocation(line: 691, column: 5, scope: !2056, inlinedAt: !2052)
!2059 = !DILocation(line: 718, column: 7, scope: !2060, inlinedAt: !2052)
!2060 = distinct !DILexicalBlock(scope: !2041, file: !2, line: 718, column: 7)
!2061 = !DILocation(line: 718, column: 7, scope: !2041, inlinedAt: !2052)
!2062 = !DILocation(line: 0, scope: !2045, inlinedAt: !2052)
!2063 = !DILocation(line: 0, scope: !2047, inlinedAt: !2052)
!2064 = !DILocation(line: 697, column: 11, scope: !2065, inlinedAt: !2052)
!2065 = distinct !DILexicalBlock(scope: !2047, file: !2, line: 697, column: 11)
!2066 = !DILocation(line: 697, column: 11, scope: !2047, inlinedAt: !2052)
!2067 = !DILocation(line: 699, column: 11, scope: !2068, inlinedAt: !2052)
!2068 = distinct !DILexicalBlock(scope: !2065, file: !2, line: 698, column: 9)
!2069 = !DILocation(line: 701, column: 9, scope: !2068, inlinedAt: !2052)
!2070 = !DILocation(line: 702, column: 16, scope: !2071, inlinedAt: !2052)
!2071 = distinct !DILexicalBlock(scope: !2065, file: !2, line: 702, column: 16)
!2072 = !DILocation(line: 702, column: 16, scope: !2065, inlinedAt: !2052)
!2073 = !DILocation(line: 704, column: 11, scope: !2074, inlinedAt: !2052)
!2074 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 703, column: 9)
!2075 = !DILocation(line: 706, column: 9, scope: !2074, inlinedAt: !2052)
!2076 = !DILocation(line: 708, column: 11, scope: !2051, inlinedAt: !2052)
!2077 = !DILocation(line: 708, column: 21, scope: !2051, inlinedAt: !2052)
!2078 = !DILocation(line: 710, column: 11, scope: !2050, inlinedAt: !2052)
!2079 = !DILocation(line: 710, column: 16, scope: !2050, inlinedAt: !2052)
!2080 = !DILocation(line: 711, column: 15, scope: !2081, inlinedAt: !2052)
!2081 = distinct !DILexicalBlock(scope: !2050, file: !2, line: 711, column: 15)
!2082 = !DILocation(line: 711, column: 36, scope: !2081, inlinedAt: !2052)
!2083 = !DILocation(line: 711, column: 15, scope: !2050, inlinedAt: !2052)
!2084 = !DILocation(line: 712, column: 13, scope: !2081, inlinedAt: !2052)
!2085 = !DILocation(line: 713, column: 11, scope: !2086, inlinedAt: !2052)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !2, line: 713, column: 11)
!2087 = distinct !DILexicalBlock(scope: !2050, file: !2, line: 713, column: 11)
!2088 = !DILocation(line: 713, column: 11, scope: !2087, inlinedAt: !2052)
!2089 = !DILocation(line: 715, column: 9, scope: !2051, inlinedAt: !2052)
!2090 = !DILocation(line: 715, column: 9, scope: !2050, inlinedAt: !2052)
!2091 = !DILocation(line: 693, column: 39, scope: !2048, inlinedAt: !2052)
!2092 = !DILocation(line: 693, column: 21, scope: !2048, inlinedAt: !2052)
!2093 = !DILocation(line: 693, column: 3, scope: !2045, inlinedAt: !2052)
!2094 = distinct !{!2094, !2093, !2095, !1195}
!2095 = !DILocation(line: 716, column: 5, scope: !2045, inlinedAt: !2052)
!2096 = !DILocation(line: 719, column: 5, scope: !2060, inlinedAt: !2052)
!2097 = !DILocation(line: 720, column: 1, scope: !2041, inlinedAt: !2052)
!2098 = !DILocation(line: 897, column: 5, scope: !2038)
!2099 = !DILocation(line: 899, column: 7, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !223, file: !2, line: 899, column: 7)
!2101 = !DILocation(line: 899, column: 7, scope: !223)
!2102 = !DILocation(line: 725, column: 3, scope: !2103, inlinedAt: !2115)
!2103 = distinct !DISubprogram(name: "list_signal_handling", scope: !2, file: !2, line: 723, type: !713, scopeLine: 724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2104)
!2104 = !{!2105, !2106, !2108, !2111, !2112, !2113, !2114}
!2105 = !DILocalVariable(name: "set", scope: !2103, file: !2, line: 725, type: !547)
!2106 = !DILocalVariable(name: "i", scope: !2107, file: !2, line: 731, type: !122)
!2107 = distinct !DILexicalBlock(scope: !2103, file: !2, line: 731, column: 3)
!2108 = !DILocalVariable(name: "act", scope: !2109, file: !2, line: 733, type: !1897)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !2, line: 732, column: 5)
!2110 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 731, column: 3)
!2111 = !DILocalVariable(name: "ignored", scope: !2109, file: !2, line: 737, type: !169)
!2112 = !DILocalVariable(name: "blocked", scope: !2109, file: !2, line: 738, type: !169)
!2113 = !DILocalVariable(name: "connect", scope: !2109, file: !2, line: 739, type: !169)
!2114 = !DILocalVariable(name: "signame", scope: !2109, file: !2, line: 744, type: !486)
!2115 = distinct !DILocation(line: 900, column: 5, scope: !2100)
!2116 = !DILocation(line: 725, column: 12, scope: !2103, inlinedAt: !2115)
!2117 = !DILocation(line: 727, column: 3, scope: !2103, inlinedAt: !2115)
!2118 = !DILocation(line: 728, column: 7, scope: !2119, inlinedAt: !2115)
!2119 = distinct !DILexicalBlock(scope: !2103, file: !2, line: 728, column: 7)
!2120 = !DILocation(line: 728, column: 7, scope: !2103, inlinedAt: !2115)
!2121 = !DILocation(line: 729, column: 5, scope: !2119, inlinedAt: !2115)
!2122 = !DILocation(line: 0, scope: !2107, inlinedAt: !2115)
!2123 = !DILocation(line: 733, column: 7, scope: !2109, inlinedAt: !2115)
!2124 = !DILocation(line: 733, column: 24, scope: !2109, inlinedAt: !2115)
!2125 = !DILocation(line: 734, column: 11, scope: !2126, inlinedAt: !2115)
!2126 = distinct !DILexicalBlock(scope: !2109, file: !2, line: 734, column: 11)
!2127 = !DILocation(line: 734, column: 11, scope: !2109, inlinedAt: !2115)
!2128 = !DILocation(line: 737, column: 33, scope: !2109, inlinedAt: !2115)
!2129 = !DILocation(line: 737, column: 44, scope: !2109, inlinedAt: !2115)
!2130 = !DILocation(line: 737, column: 29, scope: !2109, inlinedAt: !2115)
!2131 = !DILocation(line: 0, scope: !2109, inlinedAt: !2115)
!2132 = !DILocation(line: 738, column: 29, scope: !2109, inlinedAt: !2115)
!2133 = !DILocation(line: 739, column: 29, scope: !2109, inlinedAt: !2115)
!2134 = !DILocation(line: 739, column: 38, scope: !2109, inlinedAt: !2115)
!2135 = !DILocation(line: 741, column: 22, scope: !2136, inlinedAt: !2115)
!2136 = distinct !DILexicalBlock(scope: !2109, file: !2, line: 741, column: 11)
!2137 = !DILocation(line: 744, column: 7, scope: !2109, inlinedAt: !2115)
!2138 = !DILocation(line: 744, column: 12, scope: !2109, inlinedAt: !2115)
!2139 = !DILocation(line: 745, column: 11, scope: !2140, inlinedAt: !2115)
!2140 = distinct !DILexicalBlock(scope: !2109, file: !2, line: 745, column: 11)
!2141 = !DILocation(line: 745, column: 32, scope: !2140, inlinedAt: !2115)
!2142 = !DILocation(line: 745, column: 11, scope: !2109, inlinedAt: !2115)
!2143 = !DILocation(line: 746, column: 9, scope: !2140, inlinedAt: !2115)
!2144 = !DILocation(line: 747, column: 7, scope: !2109, inlinedAt: !2115)
!2145 = !DILocation(line: 749, column: 5, scope: !2110, inlinedAt: !2115)
!2146 = !DILocation(line: 731, column: 39, scope: !2110, inlinedAt: !2115)
!2147 = !DILocation(line: 731, column: 21, scope: !2110, inlinedAt: !2115)
!2148 = !DILocation(line: 731, column: 3, scope: !2107, inlinedAt: !2115)
!2149 = distinct !{!2149, !2148, !2150, !1195}
!2150 = !DILocation(line: 749, column: 5, scope: !2107, inlinedAt: !2115)
!2151 = !DILocation(line: 750, column: 1, scope: !2103, inlinedAt: !2115)
!2152 = !DILocation(line: 900, column: 5, scope: !2100)
!2153 = !DILocation(line: 902, column: 7, scope: !223)
!2154 = !DILocation(line: 904, column: 7, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !2, line: 904, column: 7)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !2, line: 904, column: 7)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !2, line: 903, column: 5)
!2158 = distinct !DILexicalBlock(scope: !223, file: !2, line: 902, column: 7)
!2159 = !DILocation(line: 904, column: 7, scope: !2156)
!2160 = !DILocation(line: 906, column: 11, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2157, file: !2, line: 906, column: 11)
!2162 = !DILocation(line: 906, column: 26, scope: !2161)
!2163 = !DILocation(line: 906, column: 11, scope: !2157)
!2164 = !DILocation(line: 907, column: 9, scope: !2161)
!2165 = !DILocation(line: 911, column: 24, scope: !223)
!2166 = !DILocation(line: 911, column: 19, scope: !223)
!2167 = !DILocation(line: 912, column: 7, scope: !223)
!2168 = !DILocation(line: 914, column: 7, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !2, line: 914, column: 7)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !2, line: 914, column: 7)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !2, line: 913, column: 5)
!2172 = distinct !DILexicalBlock(scope: !223, file: !2, line: 912, column: 7)
!2173 = !DILocation(line: 914, column: 7, scope: !2170)
!2174 = !DILocation(line: 915, column: 12, scope: !2171)
!2175 = !DILocation(line: 915, column: 7, scope: !2171)
!2176 = !DILocation(line: 915, column: 20, scope: !2171)
!2177 = !DILocation(line: 916, column: 5, scope: !2171)
!2178 = !DILocation(line: 918, column: 7, scope: !247)
!2179 = !DILocation(line: 918, column: 7, scope: !223)
!2180 = !DILocation(line: 920, column: 7, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !2, line: 920, column: 7)
!2182 = distinct !DILexicalBlock(scope: !246, file: !2, line: 920, column: 7)
!2183 = !DILocation(line: 921, column: 18, scope: !245)
!2184 = !DILocation(line: 0, scope: !245)
!2185 = !DILocation(line: 921, column: 27, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !245, file: !2, line: 921, column: 7)
!2187 = !DILocation(line: 921, column: 7, scope: !245)
!2188 = !DILocation(line: 922, column: 9, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !2, line: 922, column: 9)
!2190 = distinct !DILexicalBlock(scope: !2186, file: !2, line: 922, column: 9)
!2191 = !DILocation(line: 922, column: 9, scope: !2190)
!2192 = !DILocation(line: 921, column: 34, scope: !2186)
!2193 = distinct !{!2193, !2187, !2194, !1195}
!2194 = !DILocation(line: 922, column: 9, scope: !245)
!2195 = !DILocation(line: 925, column: 26, scope: !223)
!2196 = !DILocation(line: 925, column: 21, scope: !223)
!2197 = !DILocation(line: 925, column: 3, scope: !223)
!2198 = !DILocation(line: 927, column: 21, scope: !223)
!2199 = !DILocation(line: 927, column: 27, scope: !223)
!2200 = !DILocation(line: 928, column: 3, scope: !223)
!2201 = !DILocation(line: 930, column: 34, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !223, file: !2, line: 930, column: 7)
!2203 = !DILocation(line: 930, column: 37, scope: !2202)
!2204 = !DILocation(line: 930, column: 7, scope: !223)
!2205 = !DILocation(line: 931, column: 5, scope: !2202)
!2206 = !DILocation(line: 934, column: 1, scope: !223)
!2207 = !DISubprogram(name: "bindtextdomain", scope: !1130, file: !1130, line: 86, type: !2208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!163, !169, !169}
!2210 = !DISubprogram(name: "textdomain", scope: !1130, file: !1130, line: 82, type: !1275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2211 = !DISubprogram(name: "atexit", scope: !1273, file: !1273, line: 602, type: !2212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!122, !712}
!2214 = !DISubprogram(name: "getopt_long", scope: !519, file: !519, line: 66, type: !2215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!122, !122, !241, !169, !2217, !524}
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!2218 = distinct !DISubprogram(name: "parse_signal_action_params", scope: !2, file: !2, line: 556, type: !2219, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2221)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{null, !169, !231}
!2221 = !{!2222, !2223, !2224, !2228, !2229, !2230}
!2222 = !DILocalVariable(name: "arg", arg: 1, scope: !2218, file: !2, line: 556, type: !169)
!2223 = !DILocalVariable(name: "set_default", arg: 2, scope: !2218, file: !2, line: 556, type: !231)
!2224 = !DILocalVariable(name: "i", scope: !2225, file: !2, line: 563, type: !122)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !2, line: 563, column: 7)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !2, line: 559, column: 5)
!2227 = distinct !DILexicalBlock(scope: !2218, file: !2, line: 558, column: 7)
!2228 = !DILocalVariable(name: "optarg_writable", scope: !2218, file: !2, line: 568, type: !163)
!2229 = !DILocalVariable(name: "opt_sig", scope: !2218, file: !2, line: 570, type: !163)
!2230 = !DILocalVariable(name: "signum", scope: !2231, file: !2, line: 573, type: !122)
!2231 = distinct !DILexicalBlock(scope: !2218, file: !2, line: 572, column: 5)
!2232 = !DILocation(line: 0, scope: !2218)
!2233 = !DILocation(line: 558, column: 9, scope: !2227)
!2234 = !DILocation(line: 558, column: 7, scope: !2218)
!2235 = !DILocation(line: 0, scope: !2225)
!2236 = !DILocation(line: 563, column: 7, scope: !2225)
!2237 = !DILocation(line: 564, column: 9, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2225, file: !2, line: 563, column: 7)
!2239 = !DILocation(line: 564, column: 20, scope: !2238)
!2240 = !DILocation(line: 586, column: 1, scope: !2218)
!2241 = !DILocation(line: 568, column: 27, scope: !2218)
!2242 = !DILocation(line: 570, column: 19, scope: !2218)
!2243 = !DILocation(line: 571, column: 3, scope: !2218)
!2244 = !DILocation(line: 573, column: 20, scope: !2231)
!2245 = !DILocation(line: 0, scope: !2231)
!2246 = !DILocation(line: 575, column: 18, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2231, file: !2, line: 575, column: 11)
!2248 = !DILocation(line: 575, column: 11, scope: !2231)
!2249 = !DILocation(line: 576, column: 9, scope: !2247)
!2250 = !DILocation(line: 577, column: 11, scope: !2231)
!2251 = !DILocation(line: 577, column: 18, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2231, file: !2, line: 577, column: 11)
!2253 = !DILocation(line: 578, column: 16, scope: !2252)
!2254 = !DILocation(line: 578, column: 9, scope: !2252)
!2255 = !DILocation(line: 580, column: 7, scope: !2231)
!2256 = !DILocation(line: 580, column: 23, scope: !2231)
!2257 = !DILocation(line: 582, column: 17, scope: !2231)
!2258 = distinct !{!2258, !2243, !2259, !1195}
!2259 = !DILocation(line: 583, column: 5, scope: !2218)
!2260 = !DILocation(line: 585, column: 3, scope: !2218)
!2261 = distinct !DISubprogram(name: "parse_block_signal_params", scope: !2, file: !2, line: 634, type: !2219, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2262)
!2262 = !{!2263, !2264, !2265, !2266, !2267}
!2263 = !DILocalVariable(name: "arg", arg: 1, scope: !2261, file: !2, line: 634, type: !169)
!2264 = !DILocalVariable(name: "block", arg: 2, scope: !2261, file: !2, line: 634, type: !231)
!2265 = !DILocalVariable(name: "optarg_writable", scope: !2261, file: !2, line: 654, type: !163)
!2266 = !DILocalVariable(name: "opt_sig", scope: !2261, file: !2, line: 656, type: !163)
!2267 = !DILocalVariable(name: "signum", scope: !2268, file: !2, line: 659, type: !122)
!2268 = distinct !DILexicalBlock(scope: !2261, file: !2, line: 658, column: 5)
!2269 = !DILocation(line: 0, scope: !2261)
!2270 = !DILocation(line: 636, column: 9, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2261, file: !2, line: 636, column: 7)
!2272 = !DILocation(line: 636, column: 7, scope: !2261)
!2273 = !DILocation(line: 642, column: 14, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2271, file: !2, line: 642, column: 12)
!2275 = !DILocation(line: 642, column: 12, scope: !2271)
!2276 = !DILocation(line: 645, column: 7, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2274, file: !2, line: 643, column: 5)
!2278 = !DILocation(line: 646, column: 7, scope: !2277)
!2279 = !DILocation(line: 647, column: 5, scope: !2277)
!2280 = !DILocation(line: 639, column: 19, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2271, file: !2, line: 637, column: 5)
!2282 = !DILocation(line: 639, column: 7, scope: !2281)
!2283 = !DILocation(line: 640, column: 20, scope: !2281)
!2284 = !DILocation(line: 640, column: 7, scope: !2281)
!2285 = !DILocation(line: 649, column: 20, scope: !2261)
!2286 = !DILocation(line: 651, column: 7, scope: !2261)
!2287 = !DILocation(line: 654, column: 27, scope: !2261)
!2288 = !DILocation(line: 656, column: 19, scope: !2261)
!2289 = !DILocation(line: 657, column: 3, scope: !2261)
!2290 = !DILocation(line: 659, column: 20, scope: !2268)
!2291 = !DILocation(line: 0, scope: !2268)
!2292 = !DILocation(line: 661, column: 18, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2268, file: !2, line: 661, column: 11)
!2294 = !DILocation(line: 661, column: 11, scope: !2268)
!2295 = !DILocation(line: 662, column: 9, scope: !2293)
!2296 = !DILocation(line: 663, column: 11, scope: !2268)
!2297 = !DILocation(line: 663, column: 18, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2268, file: !2, line: 663, column: 11)
!2299 = !DILocation(line: 664, column: 16, scope: !2298)
!2300 = !DILocation(line: 664, column: 9, scope: !2298)
!2301 = !DILocation(line: 666, column: 11, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2268, file: !2, line: 666, column: 11)
!2303 = !DILocation(line: 666, column: 73, scope: !2302)
!2304 = !DILocation(line: 666, column: 11, scope: !2268)
!2305 = !DILocation(line: 668, column: 15, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2302, file: !2, line: 667, column: 9)
!2307 = !DILocation(line: 669, column: 13, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2306, file: !2, line: 668, column: 15)
!2309 = !DILocation(line: 674, column: 9, scope: !2302)
!2310 = !DILocation(line: 676, column: 17, scope: !2268)
!2311 = distinct !{!2311, !2289, !2312, !1195}
!2312 = !DILocation(line: 677, column: 5, scope: !2261)
!2313 = !DILocation(line: 679, column: 3, scope: !2261)
!2314 = !DILocation(line: 680, column: 1, scope: !2261)
!2315 = distinct !DISubprogram(name: "check_start_new_arg", scope: !2, file: !2, line: 313, type: !1613, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2316)
!2316 = !{!2317, !2318}
!2317 = !DILocalVariable(name: "ss", arg: 1, scope: !2315, file: !2, line: 313, type: !1596)
!2318 = !DILocalVariable(name: "argc", scope: !2319, file: !2, line: 318, type: !122)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !2, line: 316, column: 5)
!2320 = distinct !DILexicalBlock(scope: !2315, file: !2, line: 315, column: 7)
!2321 = !DILocation(line: 0, scope: !2315)
!2322 = !DILocation(line: 315, column: 11, scope: !2320)
!2323 = !DILocation(line: 315, column: 7, scope: !2315)
!2324 = !DILocation(line: 0, scope: !1593, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 317, column: 7, scope: !2319)
!2326 = !DILocation(line: 303, column: 39, scope: !1593, inlinedAt: !2325)
!2327 = !DILocation(line: 303, column: 48, scope: !1593, inlinedAt: !2325)
!2328 = !DILocation(line: 303, column: 35, scope: !1593, inlinedAt: !2325)
!2329 = !DILocation(line: 303, column: 24, scope: !1593, inlinedAt: !2325)
!2330 = !DILocation(line: 304, column: 11, scope: !1607, inlinedAt: !2325)
!2331 = !DILocation(line: 304, column: 22, scope: !1607, inlinedAt: !2325)
!2332 = !DILocation(line: 304, column: 41, scope: !1607, inlinedAt: !2325)
!2333 = !DILocation(line: 304, column: 7, scope: !1593, inlinedAt: !2325)
!2334 = !DILocation(line: 0, scope: !1612, inlinedAt: !2335)
!2335 = distinct !DILocation(line: 305, column: 5, scope: !1607, inlinedAt: !2325)
!2336 = !DILocation(line: 294, column: 14, scope: !1612, inlinedAt: !2335)
!2337 = !DILocation(line: 294, column: 12, scope: !1612, inlinedAt: !2335)
!2338 = !DILocation(line: 296, column: 27, scope: !1612, inlinedAt: !2335)
!2339 = !DILocation(line: 296, column: 21, scope: !1612, inlinedAt: !2335)
!2340 = !DILocation(line: 296, column: 48, scope: !1612, inlinedAt: !2335)
!2341 = !DILocation(line: 0, scope: !1626, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 296, column: 3, scope: !1612, inlinedAt: !2335)
!2343 = !DILocation(line: 36, column: 10, scope: !1626, inlinedAt: !2342)
!2344 = !DILocation(line: 306, column: 18, scope: !1593, inlinedAt: !2325)
!2345 = !DILocation(line: 306, column: 29, scope: !1593, inlinedAt: !2325)
!2346 = !DILocation(line: 305, column: 5, scope: !1607, inlinedAt: !2325)
!2347 = !DILocation(line: 306, column: 23, scope: !1593, inlinedAt: !2325)
!2348 = !DILocation(line: 306, column: 3, scope: !1593, inlinedAt: !2325)
!2349 = !DILocation(line: 306, column: 56, scope: !1593, inlinedAt: !2325)
!2350 = !DILocation(line: 307, column: 58, scope: !1593, inlinedAt: !2325)
!2351 = !DILocation(line: 307, column: 24, scope: !1593, inlinedAt: !2325)
!2352 = !DILocation(line: 307, column: 7, scope: !1593, inlinedAt: !2325)
!2353 = !DILocation(line: 307, column: 16, scope: !1593, inlinedAt: !2325)
!2354 = !DILocation(line: 307, column: 3, scope: !1593, inlinedAt: !2325)
!2355 = !DILocation(line: 307, column: 22, scope: !1593, inlinedAt: !2325)
!2356 = !DILocation(line: 0, scope: !2319)
!2357 = !DILocation(line: 319, column: 15, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2319, file: !2, line: 319, column: 11)
!2359 = !DILocation(line: 319, column: 40, scope: !2358)
!2360 = !DILocation(line: 319, column: 34, scope: !2358)
!2361 = !DILocation(line: 319, column: 51, scope: !2358)
!2362 = !DILocation(line: 319, column: 29, scope: !2358)
!2363 = !DILocation(line: 319, column: 26, scope: !2358)
!2364 = !DILocation(line: 319, column: 11, scope: !2319)
!2365 = !DILocation(line: 0, scope: !1612, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 320, column: 9, scope: !2358)
!2367 = !DILocation(line: 293, column: 39, scope: !1612, inlinedAt: !2366)
!2368 = !DILocation(line: 293, column: 35, scope: !1612, inlinedAt: !2366)
!2369 = !DILocation(line: 293, column: 24, scope: !1612, inlinedAt: !2366)
!2370 = !DILocation(line: 294, column: 14, scope: !1612, inlinedAt: !2366)
!2371 = !DILocation(line: 294, column: 12, scope: !1612, inlinedAt: !2366)
!2372 = !DILocation(line: 296, column: 27, scope: !1612, inlinedAt: !2366)
!2373 = !DILocation(line: 296, column: 21, scope: !1612, inlinedAt: !2366)
!2374 = !DILocation(line: 296, column: 48, scope: !1612, inlinedAt: !2366)
!2375 = !DILocation(line: 0, scope: !1626, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 296, column: 3, scope: !1612, inlinedAt: !2366)
!2377 = !DILocation(line: 36, column: 10, scope: !1626, inlinedAt: !2376)
!2378 = !DILocation(line: 320, column: 9, scope: !2358)
!2379 = !DILocation(line: 321, column: 32, scope: !2319)
!2380 = !DILocation(line: 321, column: 28, scope: !2319)
!2381 = !DILocation(line: 321, column: 7, scope: !2319)
!2382 = !DILocation(line: 321, column: 26, scope: !2319)
!2383 = !DILocation(line: 322, column: 16, scope: !2319)
!2384 = !DILocation(line: 323, column: 15, scope: !2319)
!2385 = !DILocation(line: 324, column: 5, scope: !2319)
!2386 = !DILocation(line: 325, column: 1, scope: !2315)
!2387 = !DISubprogram(name: "free", scope: !1273, file: !1273, line: 555, type: !2388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{null, !164}
!2390 = !DISubprogram(name: "unsetenv", scope: !1273, file: !1273, line: 664, type: !2391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!122, !169}
!2393 = !DISubprogram(name: "__errno_location", scope: !2394, file: !2394, line: 37, type: !2395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2394 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!524}
!2397 = !DISubprogram(name: "putenv", scope: !1273, file: !1273, line: 654, type: !2398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!122, !163}
!2400 = !DISubprogram(name: "sigaction", scope: !176, file: !176, line: 243, type: !2401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!122, !122, !2403, !2406}
!2403 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2404)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1897)
!2406 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2407)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!2408 = !DISubprogram(name: "__builtin___snprintf_chk", scope: !2, file: !2, line: 623, type: !2409, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!122, !163, !168, !122, !168, !169, null}
!2411 = !DISubprogram(name: "sigemptyset", scope: !176, file: !176, line: 199, type: !2412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!122, !2414}
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!2415 = !DISubprogram(name: "sigprocmask", scope: !176, file: !176, line: 232, type: !2416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!122, !122, !2418, !2421}
!2418 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2419)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!2421 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2414)
!2422 = !DISubprogram(name: "sigismember", scope: !176, file: !176, line: 211, type: !2423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!122, !2419, !122}
!2425 = !DISubprogram(name: "sigaddset", scope: !176, file: !176, line: 205, type: !2426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!122, !2414, !122}
!2428 = !DISubprogram(name: "sigdelset", scope: !176, file: !176, line: 208, type: !2426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2429 = !DISubprogram(name: "chdir", scope: !2430, file: !2430, line: 517, type: !2391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2430 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2431 = !DISubprogram(name: "execvp", scope: !2430, file: !2430, line: 599, type: !2432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!122, !169, !241}
!2434 = !DISubprogram(name: "strpbrk", scope: !1269, file: !1269, line: 323, type: !2208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2435 = !DISubprogram(name: "sigfillset", scope: !176, file: !176, line: 202, type: !2412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2436 = !DISubprogram(name: "strtok", scope: !1269, file: !1269, line: 356, type: !2437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!163, !2439, !1138}
!2439 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !163)
!2440 = distinct !DISubprogram(name: "operand2sig", scope: !641, file: !641, line: 36, type: !2391, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !984, retainedNodes: !2441)
!2441 = !{!2442, !2443, !2444, !2447, !2448, !2449, !2451}
!2442 = !DILocalVariable(name: "operand", arg: 1, scope: !2440, file: !641, line: 36, type: !169)
!2443 = !DILocalVariable(name: "signum", scope: !2440, file: !641, line: 38, type: !122)
!2444 = !DILocalVariable(name: "endp", scope: !2445, file: !641, line: 53, type: !163)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !641, line: 41, column: 5)
!2446 = distinct !DILexicalBlock(scope: !2440, file: !641, line: 40, column: 7)
!2447 = !DILocalVariable(name: "l", scope: !2445, file: !641, line: 54, type: !174)
!2448 = !DILocalVariable(name: "i", scope: !2445, file: !641, line: 55, type: !122)
!2449 = !DILocalVariable(name: "upcased", scope: !2450, file: !641, line: 70, type: !163)
!2450 = distinct !DILexicalBlock(scope: !2446, file: !641, line: 67, column: 5)
!2451 = !DILocalVariable(name: "p", scope: !2452, file: !641, line: 71, type: !163)
!2452 = distinct !DILexicalBlock(scope: !2450, file: !641, line: 71, column: 7)
!2453 = !DILocation(line: 0, scope: !2440)
!2454 = !DILocation(line: 38, column: 3, scope: !2440)
!2455 = !DILocation(line: 40, column: 18, scope: !2446)
!2456 = !DILocalVariable(name: "c", arg: 1, scope: !2457, file: !1528, line: 233, type: !122)
!2457 = distinct !DISubprogram(name: "c_isdigit", scope: !1528, file: !1528, line: 233, type: !1529, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !984, retainedNodes: !2458)
!2458 = !{!2456}
!2459 = !DILocation(line: 0, scope: !2457, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 40, column: 7, scope: !2446)
!2461 = !DILocation(line: 235, column: 3, scope: !2457, inlinedAt: !2460)
!2462 = !DILocation(line: 40, column: 7, scope: !2440)
!2463 = !DILocation(line: 53, column: 7, scope: !2445)
!2464 = !DILocation(line: 54, column: 21, scope: !2445)
!2465 = !DILocation(line: 54, column: 27, scope: !2445)
!2466 = !DILocation(line: 0, scope: !2445)
!2467 = !DILocation(line: 54, column: 32, scope: !2445)
!2468 = !DILocation(line: 55, column: 15, scope: !2445)
!2469 = !DILocation(line: 56, column: 28, scope: !2445)
!2470 = !DILocation(line: 56, column: 25, scope: !2445)
!2471 = !DILocation(line: 56, column: 33, scope: !2445)
!2472 = !DILocation(line: 56, column: 36, scope: !2445)
!2473 = !DILocation(line: 56, column: 42, scope: !2445)
!2474 = !DILocation(line: 56, column: 45, scope: !2445)
!2475 = !DILocation(line: 56, column: 51, scope: !2445)
!2476 = !DILocation(line: 58, column: 18, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2445, file: !641, line: 58, column: 11)
!2478 = !DILocation(line: 58, column: 11, scope: !2445)
!2479 = !DILocation(line: 65, column: 5, scope: !2446)
!2480 = !DILocation(line: 65, column: 5, scope: !2445)
!2481 = !DILocation(line: 70, column: 23, scope: !2450)
!2482 = !DILocation(line: 0, scope: !2450)
!2483 = !DILocation(line: 0, scope: !2452)
!2484 = !DILocation(line: 71, column: 31, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2452, file: !641, line: 71, column: 7)
!2486 = !DILocation(line: 71, column: 7, scope: !2452)
!2487 = !DILocation(line: 77, column: 13, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2450, file: !641, line: 77, column: 11)
!2489 = !DILocation(line: 77, column: 40, scope: !2488)
!2490 = !DILocation(line: 78, column: 13, scope: !2488)
!2491 = !DILocation(line: 72, column: 51, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2485, file: !641, line: 72, column: 13)
!2493 = !DILocation(line: 72, column: 13, scope: !2492)
!2494 = !DILocation(line: 72, column: 13, scope: !2485)
!2495 = !DILocation(line: 73, column: 14, scope: !2492)
!2496 = !DILocation(line: 73, column: 11, scope: !2492)
!2497 = !DILocation(line: 71, column: 36, scope: !2485)
!2498 = distinct !{!2498, !2486, !2499, !1195}
!2499 = !DILocation(line: 73, column: 23, scope: !2452)
!2500 = !DILocation(line: 78, column: 17, scope: !2488)
!2501 = !DILocation(line: 78, column: 28, scope: !2488)
!2502 = !DILocation(line: 78, column: 35, scope: !2488)
!2503 = !DILocation(line: 78, column: 38, scope: !2488)
!2504 = !DILocation(line: 78, column: 49, scope: !2488)
!2505 = !DILocation(line: 78, column: 56, scope: !2488)
!2506 = !DILocation(line: 78, column: 59, scope: !2488)
!2507 = !DILocation(line: 78, column: 70, scope: !2488)
!2508 = !DILocation(line: 79, column: 17, scope: !2488)
!2509 = !DILocation(line: 79, column: 37, scope: !2488)
!2510 = !DILocation(line: 79, column: 20, scope: !2488)
!2511 = !DILocation(line: 79, column: 51, scope: !2488)
!2512 = !DILocation(line: 77, column: 11, scope: !2450)
!2513 = !DILocation(line: 80, column: 16, scope: !2488)
!2514 = !DILocation(line: 80, column: 9, scope: !2488)
!2515 = !DILocation(line: 82, column: 7, scope: !2450)
!2516 = !DILocation(line: 85, column: 11, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2440, file: !641, line: 85, column: 7)
!2518 = !DILocation(line: 85, column: 18, scope: !2517)
!2519 = !DILocation(line: 87, column: 7, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2517, file: !641, line: 86, column: 5)
!2521 = !DILocation(line: 88, column: 7, scope: !2520)
!2522 = !DILocation(line: 92, column: 1, scope: !2440)
!2523 = !DISubprogram(name: "strtol", scope: !1273, file: !1273, line: 177, type: !2524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!174, !1138, !2526, !122}
!2526 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !226)
!2527 = distinct !DISubprogram(name: "c_isalnum", scope: !1528, file: !1528, line: 169, type: !1529, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !2528)
!2528 = !{!2529}
!2529 = !DILocalVariable(name: "c", arg: 1, scope: !2527, file: !1528, line: 169, type: !122)
!2530 = !DILocation(line: 0, scope: !2527)
!2531 = !DILocation(line: 171, column: 3, scope: !2527)
!2532 = !DILocation(line: 178, column: 7, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2527, file: !1528, line: 172, column: 5)
!2534 = !DILocation(line: 0, scope: !2533)
!2535 = !DILocation(line: 180, column: 1, scope: !2527)
!2536 = distinct !DISubprogram(name: "c_isalpha", scope: !1528, file: !1528, line: 183, type: !1529, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !2537)
!2537 = !{!2538}
!2538 = !DILocalVariable(name: "c", arg: 1, scope: !2536, file: !1528, line: 183, type: !122)
!2539 = !DILocation(line: 0, scope: !2536)
!2540 = !DILocation(line: 185, column: 3, scope: !2536)
!2541 = !DILocation(line: 193, column: 1, scope: !2536)
!2542 = distinct !DISubprogram(name: "c_isascii", scope: !1528, file: !1528, line: 198, type: !1529, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !2543)
!2543 = !{!2544}
!2544 = !DILocalVariable(name: "c", arg: 1, scope: !2542, file: !1528, line: 198, type: !122)
!2545 = !DILocation(line: 0, scope: !2542)
!2546 = !DILocation(line: 200, column: 3, scope: !2542)
!2547 = !DILocation(line: 212, column: 1, scope: !2542)
!2548 = distinct !DISubprogram(name: "c_isblank", scope: !1528, file: !1528, line: 215, type: !1529, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !2549)
!2549 = !{!2550}
!2550 = !DILocalVariable(name: "c", arg: 1, scope: !2548, file: !1528, line: 215, type: !122)
!2551 = !DILocation(line: 0, scope: !2548)
!2552 = !DILocation(line: 217, column: 12, scope: !2548)
!2553 = !DILocation(line: 217, column: 19, scope: !2548)
!2554 = !DILocation(line: 217, column: 3, scope: !2548)
!2555 = distinct !DISubprogram(name: "c_iscntrl", scope: !1528, file: !1528, line: 221, type: !1529, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !2556)
!2556 = !{!2557}
!2557 = !DILocalVariable(name: "c", arg: 1, scope: !2555, file: !1528, line: 221, type: !122)
!2558 = !DILocation(line: 0, scope: !2555)
!2559 = !DILocation(line: 223, column: 3, scope: !2555)
!2560 = !DILocation(line: 228, column: 7, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2555, file: !1528, line: 224, column: 5)
!2562 = !DILocation(line: 0, scope: !2561)
!2563 = !DILocation(line: 230, column: 1, scope: !2555)
!2564 = distinct !DISubprogram(name: "c_isdigit", scope: !1528, file: !1528, line: 233, type: !1529, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !2565)
!2565 = !{!2566}
!2566 = !DILocalVariable(name: "c", arg: 1, scope: !2564, file: !1528, line: 233, type: !122)
!2567 = !DILocation(line: 0, scope: !2564)
!2568 = !DILocation(line: 235, column: 3, scope: !2564)
!2569 = !DILocation(line: 242, column: 1, scope: !2564)
!2570 = distinct !DISubprogram(name: "c_isgraph", scope: !1528, file: !1528, line: 245, type: !1529, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !2571)
!2571 = !{!2572}
!2572 = !DILocalVariable(name: "c", arg: 1, scope: !2570, file: !1528, line: 245, type: !122)
!2573 = !DILocation(line: 0, scope: !2570)
!2574 = !DILocation(line: 247, column: 3, scope: !2570)
!2575 = !DILocation(line: 257, column: 1, scope: !2570)
!2576 = distinct !DISubprogram(name: "c_islower", scope: !1528, file: !1528, line: 260, type: !1529, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !2577)
!2577 = !{!2578}
!2578 = !DILocalVariable(name: "c", arg: 1, scope: !2576, file: !1528, line: 260, type: !122)
!2579 = !DILocation(line: 0, scope: !2576)
!2580 = !DILocation(line: 262, column: 3, scope: !2576)
!2581 = !DILocation(line: 269, column: 1, scope: !2576)
!2582 = distinct !DISubprogram(name: "c_isprint", scope: !1528, file: !1528, line: 272, type: !1529, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !2583)
!2583 = !{!2584}
!2584 = !DILocalVariable(name: "c", arg: 1, scope: !2582, file: !1528, line: 272, type: !122)
!2585 = !DILocation(line: 0, scope: !2582)
!2586 = !DILocation(line: 274, column: 3, scope: !2582)
!2587 = !DILocation(line: 285, column: 1, scope: !2582)
!2588 = distinct !DISubprogram(name: "c_ispunct", scope: !1528, file: !1528, line: 288, type: !1529, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !2589)
!2589 = !{!2590}
!2590 = !DILocalVariable(name: "c", arg: 1, scope: !2588, file: !1528, line: 288, type: !122)
!2591 = !DILocation(line: 0, scope: !2588)
!2592 = !DILocation(line: 290, column: 3, scope: !2588)
!2593 = !DILocation(line: 295, column: 7, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2588, file: !1528, line: 291, column: 5)
!2595 = !DILocation(line: 0, scope: !2594)
!2596 = !DILocation(line: 297, column: 1, scope: !2588)
!2597 = distinct !DISubprogram(name: "c_isspace", scope: !1528, file: !1528, line: 300, type: !1529, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !2598)
!2598 = !{!2599}
!2599 = !DILocalVariable(name: "c", arg: 1, scope: !2597, file: !1528, line: 300, type: !122)
!2600 = !DILocation(line: 0, scope: !2597)
!2601 = !DILocation(line: 302, column: 3, scope: !2597)
!2602 = !DILocation(line: 309, column: 1, scope: !2597)
!2603 = distinct !DISubprogram(name: "c_isupper", scope: !1528, file: !1528, line: 312, type: !1529, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !2604)
!2604 = !{!2605}
!2605 = !DILocalVariable(name: "c", arg: 1, scope: !2603, file: !1528, line: 312, type: !122)
!2606 = !DILocation(line: 0, scope: !2603)
!2607 = !DILocation(line: 314, column: 3, scope: !2603)
!2608 = !DILocation(line: 321, column: 1, scope: !2603)
!2609 = distinct !DISubprogram(name: "c_isxdigit", scope: !1528, file: !1528, line: 324, type: !1529, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !2610)
!2610 = !{!2611}
!2611 = !DILocalVariable(name: "c", arg: 1, scope: !2609, file: !1528, line: 324, type: !122)
!2612 = !DILocation(line: 0, scope: !2609)
!2613 = !DILocation(line: 326, column: 3, scope: !2609)
!2614 = !DILocation(line: 334, column: 1, scope: !2609)
!2615 = distinct !DISubprogram(name: "c_tolower", scope: !1528, file: !1528, line: 337, type: !2616, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !2618)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!122, !122}
!2618 = !{!2619}
!2619 = !DILocalVariable(name: "c", arg: 1, scope: !2615, file: !1528, line: 337, type: !122)
!2620 = !DILocation(line: 0, scope: !2615)
!2621 = !DILocation(line: 339, column: 3, scope: !2615)
!2622 = !DILocation(line: 346, column: 1, scope: !2615)
!2623 = distinct !DISubprogram(name: "c_toupper", scope: !1528, file: !1528, line: 349, type: !2616, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !2624)
!2624 = !{!2625}
!2625 = !DILocalVariable(name: "c", arg: 1, scope: !2623, file: !1528, line: 349, type: !122)
!2626 = !DILocation(line: 0, scope: !2623)
!2627 = !DILocation(line: 351, column: 3, scope: !2623)
!2628 = !DILocation(line: 358, column: 1, scope: !2623)
!2629 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !654, file: !654, line: 50, type: !1093, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !653, retainedNodes: !2630)
!2630 = !{!2631}
!2631 = !DILocalVariable(name: "file", arg: 1, scope: !2629, file: !654, line: 50, type: !169)
!2632 = !DILocation(line: 0, scope: !2629)
!2633 = !DILocation(line: 52, column: 13, scope: !2629)
!2634 = !DILocation(line: 53, column: 1, scope: !2629)
!2635 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !654, file: !654, line: 87, type: !2636, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !653, retainedNodes: !2638)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{null, !231}
!2638 = !{!2639}
!2639 = !DILocalVariable(name: "ignore", arg: 1, scope: !2635, file: !654, line: 87, type: !231)
!2640 = !DILocation(line: 0, scope: !2635)
!2641 = !DILocation(line: 89, column: 16, scope: !2635)
!2642 = !{!1428, !1428, i64 0}
!2643 = !DILocation(line: 90, column: 1, scope: !2635)
!2644 = distinct !DISubprogram(name: "close_stdout", scope: !654, file: !654, line: 116, type: !713, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !653, retainedNodes: !2645)
!2645 = !{!2646}
!2646 = !DILocalVariable(name: "write_error", scope: !2647, file: !654, line: 121, type: !169)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !654, line: 120, column: 5)
!2648 = distinct !DILexicalBlock(scope: !2644, file: !654, line: 118, column: 7)
!2649 = !DILocation(line: 118, column: 21, scope: !2648)
!2650 = !DILocation(line: 118, column: 7, scope: !2648)
!2651 = !DILocation(line: 118, column: 29, scope: !2648)
!2652 = !DILocation(line: 119, column: 7, scope: !2648)
!2653 = !DILocation(line: 119, column: 12, scope: !2648)
!2654 = !DILocation(line: 119, column: 25, scope: !2648)
!2655 = !DILocation(line: 119, column: 28, scope: !2648)
!2656 = !DILocation(line: 119, column: 34, scope: !2648)
!2657 = !DILocation(line: 118, column: 7, scope: !2644)
!2658 = !DILocation(line: 121, column: 33, scope: !2647)
!2659 = !DILocation(line: 0, scope: !2647)
!2660 = !DILocation(line: 122, column: 11, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2647, file: !654, line: 122, column: 11)
!2662 = !DILocation(line: 0, scope: !2661)
!2663 = !DILocation(line: 122, column: 11, scope: !2647)
!2664 = !DILocation(line: 123, column: 9, scope: !2661)
!2665 = !DILocation(line: 126, column: 9, scope: !2661)
!2666 = !DILocation(line: 128, column: 14, scope: !2647)
!2667 = !DILocation(line: 128, column: 7, scope: !2647)
!2668 = !DILocation(line: 133, column: 42, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2644, file: !654, line: 133, column: 7)
!2670 = !DILocation(line: 133, column: 28, scope: !2669)
!2671 = !DILocation(line: 133, column: 50, scope: !2669)
!2672 = !DILocation(line: 133, column: 7, scope: !2644)
!2673 = !DILocation(line: 134, column: 12, scope: !2669)
!2674 = !DILocation(line: 134, column: 5, scope: !2669)
!2675 = !DILocation(line: 135, column: 1, scope: !2644)
!2676 = !DISubprogram(name: "_exit", scope: !2430, file: !2430, line: 624, type: !178, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2677 = distinct !DISubprogram(name: "verror", scope: !669, file: !669, line: 251, type: !2678, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{null, !122, !122, !169, !679}
!2680 = !{!2681, !2682, !2683, !2684}
!2681 = !DILocalVariable(name: "status", arg: 1, scope: !2677, file: !669, line: 251, type: !122)
!2682 = !DILocalVariable(name: "errnum", arg: 2, scope: !2677, file: !669, line: 251, type: !122)
!2683 = !DILocalVariable(name: "message", arg: 3, scope: !2677, file: !669, line: 251, type: !169)
!2684 = !DILocalVariable(name: "args", arg: 4, scope: !2677, file: !669, line: 251, type: !679)
!2685 = !DILocation(line: 0, scope: !2677)
!2686 = !DILocation(line: 261, column: 3, scope: !2677)
!2687 = !DILocation(line: 265, column: 7, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2677, file: !669, line: 265, column: 7)
!2689 = !DILocation(line: 265, column: 7, scope: !2677)
!2690 = !DILocation(line: 266, column: 5, scope: !2688)
!2691 = !DILocation(line: 272, column: 7, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2688, file: !669, line: 268, column: 5)
!2693 = !DILocation(line: 276, column: 3, scope: !2677)
!2694 = !DILocation(line: 282, column: 1, scope: !2677)
!2695 = distinct !DISubprogram(name: "flush_stdout", scope: !669, file: !669, line: 163, type: !713, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2696)
!2696 = !{!2697}
!2697 = !DILocalVariable(name: "stdout_fd", scope: !2695, file: !669, line: 166, type: !122)
!2698 = !DILocation(line: 0, scope: !2695)
!2699 = !DILocalVariable(name: "fd", arg: 1, scope: !2700, file: !669, line: 145, type: !122)
!2700 = distinct !DISubprogram(name: "is_open", scope: !669, file: !669, line: 145, type: !2616, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2701)
!2701 = !{!2699}
!2702 = !DILocation(line: 0, scope: !2700, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 182, column: 25, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2695, file: !669, line: 182, column: 7)
!2705 = !DILocation(line: 157, column: 15, scope: !2700, inlinedAt: !2703)
!2706 = !DILocation(line: 157, column: 12, scope: !2700, inlinedAt: !2703)
!2707 = !DILocation(line: 182, column: 7, scope: !2695)
!2708 = !DILocation(line: 184, column: 5, scope: !2704)
!2709 = !DILocation(line: 185, column: 1, scope: !2695)
!2710 = distinct !DISubprogram(name: "error_tail", scope: !669, file: !669, line: 219, type: !2678, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2711)
!2711 = !{!2712, !2713, !2714, !2715}
!2712 = !DILocalVariable(name: "status", arg: 1, scope: !2710, file: !669, line: 219, type: !122)
!2713 = !DILocalVariable(name: "errnum", arg: 2, scope: !2710, file: !669, line: 219, type: !122)
!2714 = !DILocalVariable(name: "message", arg: 3, scope: !2710, file: !669, line: 219, type: !169)
!2715 = !DILocalVariable(name: "args", arg: 4, scope: !2710, file: !669, line: 219, type: !679)
!2716 = !DILocation(line: 0, scope: !2710)
!2717 = !DILocation(line: 229, column: 13, scope: !2710)
!2718 = !DILocalVariable(name: "__stream", arg: 1, scope: !2719, file: !1134, line: 132, type: !2722)
!2719 = distinct !DISubprogram(name: "vfprintf", scope: !1134, file: !1134, line: 132, type: !2720, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2757)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!122, !2722, !1138, !679}
!2722 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2723)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !2725)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !2726)
!2726 = !{!2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2725, file: !330, line: 51, baseType: !122, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2725, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2725, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2725, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2725, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2725, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2725, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2725, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2725, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2725, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2725, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2725, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2725, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2725, file: !330, line: 70, baseType: !2741, size: 64, offset: 832)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2725, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2725, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2725, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2725, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2725, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2725, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2725, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2725, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2725, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2725, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2725, file: !330, line: 93, baseType: !2741, size: 64, offset: 1344)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2725, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2725, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2725, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2725, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!2757 = !{!2718, !2758, !2759}
!2758 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2719, file: !1134, line: 133, type: !1138)
!2759 = !DILocalVariable(name: "__ap", arg: 3, scope: !2719, file: !1134, line: 133, type: !679)
!2760 = !DILocation(line: 0, scope: !2719, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 229, column: 3, scope: !2710)
!2762 = !DILocation(line: 135, column: 10, scope: !2719, inlinedAt: !2761)
!2763 = !DILocation(line: 232, column: 3, scope: !2710)
!2764 = !DILocation(line: 233, column: 7, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2710, file: !669, line: 233, column: 7)
!2766 = !DILocation(line: 233, column: 7, scope: !2710)
!2767 = !DILocalVariable(name: "errnum", arg: 1, scope: !2768, file: !669, line: 188, type: !122)
!2768 = distinct !DISubprogram(name: "print_errno_message", scope: !669, file: !669, line: 188, type: !178, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2769)
!2769 = !{!2767, !2770, !2771}
!2770 = !DILocalVariable(name: "s", scope: !2768, file: !669, line: 190, type: !169)
!2771 = !DILocalVariable(name: "errbuf", scope: !2768, file: !669, line: 193, type: !2772)
!2772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2773)
!2773 = !{!2774}
!2774 = !DISubrange(count: 1024)
!2775 = !DILocation(line: 0, scope: !2768, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 234, column: 5, scope: !2765)
!2777 = !DILocation(line: 193, column: 3, scope: !2768, inlinedAt: !2776)
!2778 = !DILocation(line: 193, column: 8, scope: !2768, inlinedAt: !2776)
!2779 = !DILocation(line: 195, column: 7, scope: !2768, inlinedAt: !2776)
!2780 = !DILocation(line: 207, column: 9, scope: !2781, inlinedAt: !2776)
!2781 = distinct !DILexicalBlock(scope: !2768, file: !669, line: 207, column: 7)
!2782 = !DILocation(line: 207, column: 7, scope: !2768, inlinedAt: !2776)
!2783 = !DILocation(line: 208, column: 9, scope: !2781, inlinedAt: !2776)
!2784 = !DILocation(line: 208, column: 5, scope: !2781, inlinedAt: !2776)
!2785 = !DILocation(line: 214, column: 3, scope: !2768, inlinedAt: !2776)
!2786 = !DILocation(line: 216, column: 1, scope: !2768, inlinedAt: !2776)
!2787 = !DILocation(line: 234, column: 5, scope: !2765)
!2788 = !DILocation(line: 238, column: 3, scope: !2710)
!2789 = !DILocalVariable(name: "__c", arg: 1, scope: !2790, file: !2791, line: 101, type: !122)
!2790 = distinct !DISubprogram(name: "putc_unlocked", scope: !2791, file: !2791, line: 101, type: !2792, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2794)
!2791 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!122, !122, !2723}
!2794 = !{!2789, !2795}
!2795 = !DILocalVariable(name: "__stream", arg: 2, scope: !2790, file: !2791, line: 101, type: !2723)
!2796 = !DILocation(line: 0, scope: !2790, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 238, column: 3, scope: !2710)
!2798 = !DILocation(line: 103, column: 10, scope: !2790, inlinedAt: !2797)
!2799 = !{!2800, !1066, i64 40}
!2800 = !{!"_IO_FILE", !1149, i64 0, !1066, i64 8, !1066, i64 16, !1066, i64 24, !1066, i64 32, !1066, i64 40, !1066, i64 48, !1066, i64 56, !1066, i64 64, !1066, i64 72, !1066, i64 80, !1066, i64 88, !1066, i64 96, !1066, i64 104, !1149, i64 112, !1149, i64 116, !1344, i64 120, !1190, i64 128, !1067, i64 130, !1067, i64 131, !1066, i64 136, !1344, i64 144, !1066, i64 152, !1066, i64 160, !1066, i64 168, !1066, i64 176, !1344, i64 184, !1149, i64 192, !1067, i64 196}
!2801 = !{!2800, !1066, i64 48}
!2802 = !{!"branch_weights", i32 2000, i32 1}
!2803 = !DILocation(line: 240, column: 3, scope: !2710)
!2804 = !DILocation(line: 241, column: 7, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2710, file: !669, line: 241, column: 7)
!2806 = !DILocation(line: 241, column: 7, scope: !2710)
!2807 = !DILocation(line: 242, column: 5, scope: !2805)
!2808 = !DILocation(line: 243, column: 1, scope: !2710)
!2809 = !DISubprogram(name: "__vfprintf_chk", scope: !1134, file: !1134, line: 96, type: !2810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!122, !2722, !122, !1138, !679}
!2812 = !DISubprogram(name: "strerror_r", scope: !1269, file: !1269, line: 444, type: !2813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!163, !122, !163, !166}
!2815 = !DISubprogram(name: "__overflow", scope: !1143, file: !1143, line: 886, type: !2816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!122, !2723, !122}
!2818 = !DISubprogram(name: "fflush_unlocked", scope: !1143, file: !1143, line: 239, type: !2819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!122, !2723}
!2821 = !DISubprogram(name: "fcntl", scope: !2822, file: !2822, line: 149, type: !2823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2822 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!122, !122, !122, null}
!2825 = distinct !DISubprogram(name: "error", scope: !669, file: !669, line: 285, type: !2826, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2828)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{null, !122, !122, !169, null}
!2828 = !{!2829, !2830, !2831, !2832}
!2829 = !DILocalVariable(name: "status", arg: 1, scope: !2825, file: !669, line: 285, type: !122)
!2830 = !DILocalVariable(name: "errnum", arg: 2, scope: !2825, file: !669, line: 285, type: !122)
!2831 = !DILocalVariable(name: "message", arg: 3, scope: !2825, file: !669, line: 285, type: !169)
!2832 = !DILocalVariable(name: "ap", scope: !2825, file: !669, line: 287, type: !2833)
!2833 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1143, line: 52, baseType: !2834)
!2834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2835, line: 14, baseType: !2836)
!2835 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!2836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !683, baseType: !2837)
!2837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 192, elements: !91)
!2838 = !DILocation(line: 0, scope: !2825)
!2839 = !DILocation(line: 287, column: 3, scope: !2825)
!2840 = !DILocation(line: 287, column: 11, scope: !2825)
!2841 = !DILocation(line: 288, column: 3, scope: !2825)
!2842 = !DILocation(line: 289, column: 3, scope: !2825)
!2843 = !DILocation(line: 290, column: 3, scope: !2825)
!2844 = !DILocation(line: 291, column: 1, scope: !2825)
!2845 = !DILocation(line: 0, scope: !676)
!2846 = !DILocation(line: 302, column: 7, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !676, file: !669, line: 302, column: 7)
!2848 = !DILocation(line: 302, column: 7, scope: !676)
!2849 = !DILocation(line: 307, column: 11, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !669, line: 307, column: 11)
!2851 = distinct !DILexicalBlock(scope: !2847, file: !669, line: 303, column: 5)
!2852 = !DILocation(line: 307, column: 27, scope: !2850)
!2853 = !DILocation(line: 308, column: 11, scope: !2850)
!2854 = !DILocation(line: 308, column: 28, scope: !2850)
!2855 = !DILocation(line: 308, column: 25, scope: !2850)
!2856 = !DILocation(line: 309, column: 15, scope: !2850)
!2857 = !DILocation(line: 309, column: 33, scope: !2850)
!2858 = !DILocation(line: 310, column: 19, scope: !2850)
!2859 = !DILocation(line: 311, column: 22, scope: !2850)
!2860 = !DILocation(line: 311, column: 56, scope: !2850)
!2861 = !DILocation(line: 307, column: 11, scope: !2851)
!2862 = !DILocation(line: 316, column: 21, scope: !2851)
!2863 = !DILocation(line: 317, column: 23, scope: !2851)
!2864 = !DILocation(line: 318, column: 5, scope: !2851)
!2865 = !DILocation(line: 327, column: 3, scope: !676)
!2866 = !DILocation(line: 331, column: 7, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !676, file: !669, line: 331, column: 7)
!2868 = !DILocation(line: 331, column: 7, scope: !676)
!2869 = !DILocation(line: 332, column: 5, scope: !2867)
!2870 = !DILocation(line: 338, column: 7, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2867, file: !669, line: 334, column: 5)
!2872 = !DILocation(line: 346, column: 3, scope: !676)
!2873 = !DILocation(line: 350, column: 3, scope: !676)
!2874 = !DILocation(line: 356, column: 1, scope: !676)
!2875 = distinct !DISubprogram(name: "error_at_line", scope: !669, file: !669, line: 359, type: !2876, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2878)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{null, !122, !122, !169, !109, !169, null}
!2878 = !{!2879, !2880, !2881, !2882, !2883, !2884}
!2879 = !DILocalVariable(name: "status", arg: 1, scope: !2875, file: !669, line: 359, type: !122)
!2880 = !DILocalVariable(name: "errnum", arg: 2, scope: !2875, file: !669, line: 359, type: !122)
!2881 = !DILocalVariable(name: "file_name", arg: 3, scope: !2875, file: !669, line: 359, type: !169)
!2882 = !DILocalVariable(name: "line_number", arg: 4, scope: !2875, file: !669, line: 360, type: !109)
!2883 = !DILocalVariable(name: "message", arg: 5, scope: !2875, file: !669, line: 360, type: !169)
!2884 = !DILocalVariable(name: "ap", scope: !2875, file: !669, line: 362, type: !2833)
!2885 = !DILocation(line: 0, scope: !2875)
!2886 = !DILocation(line: 362, column: 3, scope: !2875)
!2887 = !DILocation(line: 362, column: 11, scope: !2875)
!2888 = !DILocation(line: 363, column: 3, scope: !2875)
!2889 = !DILocation(line: 364, column: 3, scope: !2875)
!2890 = !DILocation(line: 366, column: 3, scope: !2875)
!2891 = !DILocation(line: 367, column: 1, scope: !2875)
!2892 = distinct !DISubprogram(name: "getprogname", scope: !989, file: !989, line: 54, type: !2893, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !988, retainedNodes: !1074)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!169}
!2895 = !DILocation(line: 58, column: 10, scope: !2892)
!2896 = !DILocation(line: 58, column: 3, scope: !2892)
!2897 = distinct !DISubprogram(name: "set_program_name", scope: !718, file: !718, line: 37, type: !1093, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !2898)
!2898 = !{!2899, !2900, !2901}
!2899 = !DILocalVariable(name: "argv0", arg: 1, scope: !2897, file: !718, line: 37, type: !169)
!2900 = !DILocalVariable(name: "slash", scope: !2897, file: !718, line: 44, type: !169)
!2901 = !DILocalVariable(name: "base", scope: !2897, file: !718, line: 45, type: !169)
!2902 = !DILocation(line: 0, scope: !2897)
!2903 = !DILocation(line: 44, column: 23, scope: !2897)
!2904 = !DILocation(line: 45, column: 22, scope: !2897)
!2905 = !DILocation(line: 46, column: 17, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2897, file: !718, line: 46, column: 7)
!2907 = !DILocation(line: 46, column: 9, scope: !2906)
!2908 = !DILocation(line: 46, column: 25, scope: !2906)
!2909 = !DILocation(line: 46, column: 40, scope: !2906)
!2910 = !DILocalVariable(name: "__s1", arg: 1, scope: !2911, file: !1161, line: 974, type: !1297)
!2911 = distinct !DISubprogram(name: "memeq", scope: !1161, file: !1161, line: 974, type: !2912, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !2914)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!231, !1297, !1297, !166}
!2914 = !{!2910, !2915, !2916}
!2915 = !DILocalVariable(name: "__s2", arg: 2, scope: !2911, file: !1161, line: 974, type: !1297)
!2916 = !DILocalVariable(name: "__n", arg: 3, scope: !2911, file: !1161, line: 974, type: !166)
!2917 = !DILocation(line: 0, scope: !2911, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 46, column: 28, scope: !2906)
!2919 = !DILocation(line: 976, column: 11, scope: !2911, inlinedAt: !2918)
!2920 = !DILocation(line: 976, column: 10, scope: !2911, inlinedAt: !2918)
!2921 = !DILocation(line: 46, column: 7, scope: !2897)
!2922 = !DILocation(line: 49, column: 11, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !718, line: 49, column: 11)
!2924 = distinct !DILexicalBlock(scope: !2906, file: !718, line: 47, column: 5)
!2925 = !DILocation(line: 49, column: 36, scope: !2923)
!2926 = !DILocation(line: 49, column: 11, scope: !2924)
!2927 = !DILocation(line: 65, column: 16, scope: !2897)
!2928 = !DILocation(line: 71, column: 27, scope: !2897)
!2929 = !DILocation(line: 74, column: 33, scope: !2897)
!2930 = !DILocation(line: 76, column: 1, scope: !2897)
!2931 = !DISubprogram(name: "strrchr", scope: !1269, file: !1269, line: 273, type: !1284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2932 = !DILocation(line: 0, scope: !727)
!2933 = !DILocation(line: 40, column: 29, scope: !727)
!2934 = !DILocation(line: 41, column: 19, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !727, file: !728, line: 41, column: 7)
!2936 = !DILocation(line: 41, column: 7, scope: !727)
!2937 = !DILocation(line: 47, column: 3, scope: !727)
!2938 = !DILocation(line: 48, column: 3, scope: !727)
!2939 = !DILocation(line: 48, column: 13, scope: !727)
!2940 = !DILocalVariable(name: "ps", arg: 1, scope: !2941, file: !2942, line: 1135, type: !2945)
!2941 = distinct !DISubprogram(name: "mbszero", scope: !2942, file: !2942, line: 1135, type: !2943, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !2946)
!2942 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2943 = !DISubroutineType(types: !2944)
!2944 = !{null, !2945}
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!2946 = !{!2940}
!2947 = !DILocation(line: 0, scope: !2941, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 48, column: 18, scope: !727)
!2949 = !DILocalVariable(name: "__dest", arg: 1, scope: !2950, file: !1566, line: 57, type: !164)
!2950 = distinct !DISubprogram(name: "memset", scope: !1566, file: !1566, line: 57, type: !2951, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!164, !164, !122, !166}
!2953 = !{!2949, !2954, !2955}
!2954 = !DILocalVariable(name: "__ch", arg: 2, scope: !2950, file: !1566, line: 57, type: !122)
!2955 = !DILocalVariable(name: "__len", arg: 3, scope: !2950, file: !1566, line: 57, type: !166)
!2956 = !DILocation(line: 0, scope: !2950, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 1137, column: 3, scope: !2941, inlinedAt: !2948)
!2958 = !DILocation(line: 59, column: 10, scope: !2950, inlinedAt: !2957)
!2959 = !DILocation(line: 49, column: 7, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !727, file: !728, line: 49, column: 7)
!2961 = !DILocation(line: 49, column: 39, scope: !2960)
!2962 = !DILocation(line: 49, column: 44, scope: !2960)
!2963 = !DILocation(line: 54, column: 1, scope: !727)
!2964 = !DISubprogram(name: "mbrtoc32", scope: !739, file: !739, line: 57, type: !2965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!166, !2967, !1138, !166, !2969}
!2967 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2968)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2945)
!2970 = distinct !DISubprogram(name: "clone_quoting_options", scope: !758, file: !758, line: 113, type: !2971, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !2974)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!2973, !2973}
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!2974 = !{!2975, !2976, !2977}
!2975 = !DILocalVariable(name: "o", arg: 1, scope: !2970, file: !758, line: 113, type: !2973)
!2976 = !DILocalVariable(name: "saved_errno", scope: !2970, file: !758, line: 115, type: !122)
!2977 = !DILocalVariable(name: "p", scope: !2970, file: !758, line: 116, type: !2973)
!2978 = !DILocation(line: 0, scope: !2970)
!2979 = !DILocation(line: 115, column: 21, scope: !2970)
!2980 = !DILocation(line: 116, column: 40, scope: !2970)
!2981 = !DILocation(line: 116, column: 31, scope: !2970)
!2982 = !DILocation(line: 118, column: 9, scope: !2970)
!2983 = !DILocation(line: 119, column: 3, scope: !2970)
!2984 = distinct !DISubprogram(name: "get_quoting_style", scope: !758, file: !758, line: 124, type: !2985, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !2989)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!126, !2987}
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !794)
!2989 = !{!2990}
!2990 = !DILocalVariable(name: "o", arg: 1, scope: !2984, file: !758, line: 124, type: !2987)
!2991 = !DILocation(line: 0, scope: !2984)
!2992 = !DILocation(line: 126, column: 11, scope: !2984)
!2993 = !DILocation(line: 126, column: 46, scope: !2984)
!2994 = !{!2995, !1067, i64 0}
!2995 = !{!"quoting_options", !1067, i64 0, !1149, i64 4, !1067, i64 8, !1066, i64 40, !1066, i64 48}
!2996 = !DILocation(line: 126, column: 3, scope: !2984)
!2997 = distinct !DISubprogram(name: "set_quoting_style", scope: !758, file: !758, line: 132, type: !2998, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3000)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{null, !2973, !126}
!3000 = !{!3001, !3002}
!3001 = !DILocalVariable(name: "o", arg: 1, scope: !2997, file: !758, line: 132, type: !2973)
!3002 = !DILocalVariable(name: "s", arg: 2, scope: !2997, file: !758, line: 132, type: !126)
!3003 = !DILocation(line: 0, scope: !2997)
!3004 = !DILocation(line: 134, column: 4, scope: !2997)
!3005 = !DILocation(line: 134, column: 45, scope: !2997)
!3006 = !DILocation(line: 135, column: 1, scope: !2997)
!3007 = distinct !DISubprogram(name: "set_char_quoting", scope: !758, file: !758, line: 143, type: !3008, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3010)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!122, !2973, !4, !122}
!3010 = !{!3011, !3012, !3013, !3014, !3015, !3017, !3018}
!3011 = !DILocalVariable(name: "o", arg: 1, scope: !3007, file: !758, line: 143, type: !2973)
!3012 = !DILocalVariable(name: "c", arg: 2, scope: !3007, file: !758, line: 143, type: !4)
!3013 = !DILocalVariable(name: "i", arg: 3, scope: !3007, file: !758, line: 143, type: !122)
!3014 = !DILocalVariable(name: "uc", scope: !3007, file: !758, line: 145, type: !171)
!3015 = !DILocalVariable(name: "p", scope: !3007, file: !758, line: 146, type: !3016)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!3017 = !DILocalVariable(name: "shift", scope: !3007, file: !758, line: 148, type: !122)
!3018 = !DILocalVariable(name: "r", scope: !3007, file: !758, line: 149, type: !109)
!3019 = !DILocation(line: 0, scope: !3007)
!3020 = !DILocation(line: 147, column: 6, scope: !3007)
!3021 = !DILocation(line: 147, column: 41, scope: !3007)
!3022 = !DILocation(line: 147, column: 62, scope: !3007)
!3023 = !DILocation(line: 147, column: 57, scope: !3007)
!3024 = !DILocation(line: 148, column: 15, scope: !3007)
!3025 = !DILocation(line: 149, column: 21, scope: !3007)
!3026 = !DILocation(line: 149, column: 24, scope: !3007)
!3027 = !DILocation(line: 149, column: 34, scope: !3007)
!3028 = !DILocation(line: 150, column: 19, scope: !3007)
!3029 = !DILocation(line: 150, column: 24, scope: !3007)
!3030 = !DILocation(line: 150, column: 6, scope: !3007)
!3031 = !DILocation(line: 151, column: 3, scope: !3007)
!3032 = distinct !DISubprogram(name: "set_quoting_flags", scope: !758, file: !758, line: 159, type: !3033, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3035)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!122, !2973, !122}
!3035 = !{!3036, !3037, !3038}
!3036 = !DILocalVariable(name: "o", arg: 1, scope: !3032, file: !758, line: 159, type: !2973)
!3037 = !DILocalVariable(name: "i", arg: 2, scope: !3032, file: !758, line: 159, type: !122)
!3038 = !DILocalVariable(name: "r", scope: !3032, file: !758, line: 163, type: !122)
!3039 = !DILocation(line: 0, scope: !3032)
!3040 = !DILocation(line: 161, column: 8, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3032, file: !758, line: 161, column: 7)
!3042 = !DILocation(line: 161, column: 7, scope: !3032)
!3043 = !DILocation(line: 163, column: 14, scope: !3032)
!3044 = !{!2995, !1149, i64 4}
!3045 = !DILocation(line: 164, column: 12, scope: !3032)
!3046 = !DILocation(line: 165, column: 3, scope: !3032)
!3047 = distinct !DISubprogram(name: "set_custom_quoting", scope: !758, file: !758, line: 169, type: !3048, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3050)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{null, !2973, !169, !169}
!3050 = !{!3051, !3052, !3053}
!3051 = !DILocalVariable(name: "o", arg: 1, scope: !3047, file: !758, line: 169, type: !2973)
!3052 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3047, file: !758, line: 170, type: !169)
!3053 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3047, file: !758, line: 170, type: !169)
!3054 = !DILocation(line: 0, scope: !3047)
!3055 = !DILocation(line: 172, column: 8, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3047, file: !758, line: 172, column: 7)
!3057 = !DILocation(line: 172, column: 7, scope: !3047)
!3058 = !DILocation(line: 174, column: 12, scope: !3047)
!3059 = !DILocation(line: 175, column: 8, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3047, file: !758, line: 175, column: 7)
!3061 = !DILocation(line: 175, column: 19, scope: !3060)
!3062 = !DILocation(line: 176, column: 5, scope: !3060)
!3063 = !DILocation(line: 177, column: 6, scope: !3047)
!3064 = !DILocation(line: 177, column: 17, scope: !3047)
!3065 = !{!2995, !1066, i64 40}
!3066 = !DILocation(line: 178, column: 6, scope: !3047)
!3067 = !DILocation(line: 178, column: 18, scope: !3047)
!3068 = !{!2995, !1066, i64 48}
!3069 = !DILocation(line: 179, column: 1, scope: !3047)
!3070 = !DISubprogram(name: "abort", scope: !1273, file: !1273, line: 598, type: !713, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!3071 = distinct !DISubprogram(name: "quotearg_buffer", scope: !758, file: !758, line: 774, type: !3072, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3074)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!166, !163, !166, !169, !166, !2987}
!3074 = !{!3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082}
!3075 = !DILocalVariable(name: "buffer", arg: 1, scope: !3071, file: !758, line: 774, type: !163)
!3076 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3071, file: !758, line: 774, type: !166)
!3077 = !DILocalVariable(name: "arg", arg: 3, scope: !3071, file: !758, line: 775, type: !169)
!3078 = !DILocalVariable(name: "argsize", arg: 4, scope: !3071, file: !758, line: 775, type: !166)
!3079 = !DILocalVariable(name: "o", arg: 5, scope: !3071, file: !758, line: 776, type: !2987)
!3080 = !DILocalVariable(name: "p", scope: !3071, file: !758, line: 778, type: !2987)
!3081 = !DILocalVariable(name: "saved_errno", scope: !3071, file: !758, line: 779, type: !122)
!3082 = !DILocalVariable(name: "r", scope: !3071, file: !758, line: 780, type: !166)
!3083 = !DILocation(line: 0, scope: !3071)
!3084 = !DILocation(line: 778, column: 37, scope: !3071)
!3085 = !DILocation(line: 779, column: 21, scope: !3071)
!3086 = !DILocation(line: 781, column: 43, scope: !3071)
!3087 = !DILocation(line: 781, column: 53, scope: !3071)
!3088 = !DILocation(line: 781, column: 63, scope: !3071)
!3089 = !DILocation(line: 782, column: 43, scope: !3071)
!3090 = !DILocation(line: 782, column: 58, scope: !3071)
!3091 = !DILocation(line: 780, column: 14, scope: !3071)
!3092 = !DILocation(line: 783, column: 9, scope: !3071)
!3093 = !DILocation(line: 784, column: 3, scope: !3071)
!3094 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !758, file: !758, line: 251, type: !3095, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3099)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!166, !163, !166, !169, !166, !126, !122, !3097, !169, !169}
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!3099 = !{!3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3124, !3126, !3129, !3130, !3131, !3132, !3135, !3136, !3139, !3143, !3144, !3152, !3155, !3156, !3158, !3159, !3160, !3161}
!3100 = !DILocalVariable(name: "buffer", arg: 1, scope: !3094, file: !758, line: 251, type: !163)
!3101 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3094, file: !758, line: 251, type: !166)
!3102 = !DILocalVariable(name: "arg", arg: 3, scope: !3094, file: !758, line: 252, type: !169)
!3103 = !DILocalVariable(name: "argsize", arg: 4, scope: !3094, file: !758, line: 252, type: !166)
!3104 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3094, file: !758, line: 253, type: !126)
!3105 = !DILocalVariable(name: "flags", arg: 6, scope: !3094, file: !758, line: 253, type: !122)
!3106 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3094, file: !758, line: 254, type: !3097)
!3107 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3094, file: !758, line: 255, type: !169)
!3108 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3094, file: !758, line: 256, type: !169)
!3109 = !DILocalVariable(name: "unibyte_locale", scope: !3094, file: !758, line: 258, type: !231)
!3110 = !DILocalVariable(name: "len", scope: !3094, file: !758, line: 260, type: !166)
!3111 = !DILocalVariable(name: "orig_buffersize", scope: !3094, file: !758, line: 261, type: !166)
!3112 = !DILocalVariable(name: "quote_string", scope: !3094, file: !758, line: 262, type: !169)
!3113 = !DILocalVariable(name: "quote_string_len", scope: !3094, file: !758, line: 263, type: !166)
!3114 = !DILocalVariable(name: "backslash_escapes", scope: !3094, file: !758, line: 264, type: !231)
!3115 = !DILocalVariable(name: "elide_outer_quotes", scope: !3094, file: !758, line: 265, type: !231)
!3116 = !DILocalVariable(name: "encountered_single_quote", scope: !3094, file: !758, line: 266, type: !231)
!3117 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3094, file: !758, line: 267, type: !231)
!3118 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3094, file: !758, line: 309, type: !231)
!3119 = !DILocalVariable(name: "lq", scope: !3120, file: !758, line: 361, type: !169)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !758, line: 361, column: 11)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !758, line: 360, column: 13)
!3122 = distinct !DILexicalBlock(scope: !3123, file: !758, line: 333, column: 7)
!3123 = distinct !DILexicalBlock(scope: !3094, file: !758, line: 312, column: 5)
!3124 = !DILocalVariable(name: "i", scope: !3125, file: !758, line: 395, type: !166)
!3125 = distinct !DILexicalBlock(scope: !3094, file: !758, line: 395, column: 3)
!3126 = !DILocalVariable(name: "is_right_quote", scope: !3127, file: !758, line: 397, type: !231)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !758, line: 396, column: 5)
!3128 = distinct !DILexicalBlock(scope: !3125, file: !758, line: 395, column: 3)
!3129 = !DILocalVariable(name: "escaping", scope: !3127, file: !758, line: 398, type: !231)
!3130 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3127, file: !758, line: 399, type: !231)
!3131 = !DILocalVariable(name: "c", scope: !3127, file: !758, line: 417, type: !171)
!3132 = !DILocalVariable(name: "m", scope: !3133, file: !758, line: 598, type: !166)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !758, line: 596, column: 11)
!3134 = distinct !DILexicalBlock(scope: !3127, file: !758, line: 419, column: 9)
!3135 = !DILocalVariable(name: "printable", scope: !3133, file: !758, line: 600, type: !231)
!3136 = !DILocalVariable(name: "mbs", scope: !3137, file: !758, line: 609, type: !828)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !758, line: 608, column: 15)
!3138 = distinct !DILexicalBlock(scope: !3133, file: !758, line: 602, column: 17)
!3139 = !DILocalVariable(name: "w", scope: !3140, file: !758, line: 618, type: !738)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !758, line: 617, column: 19)
!3141 = distinct !DILexicalBlock(scope: !3142, file: !758, line: 616, column: 17)
!3142 = distinct !DILexicalBlock(scope: !3137, file: !758, line: 616, column: 17)
!3143 = !DILocalVariable(name: "bytes", scope: !3140, file: !758, line: 619, type: !166)
!3144 = !DILocalVariable(name: "j", scope: !3145, file: !758, line: 648, type: !166)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !758, line: 648, column: 29)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !758, line: 647, column: 27)
!3147 = distinct !DILexicalBlock(scope: !3148, file: !758, line: 645, column: 29)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !758, line: 636, column: 23)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !758, line: 628, column: 30)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !758, line: 623, column: 30)
!3151 = distinct !DILexicalBlock(scope: !3140, file: !758, line: 621, column: 25)
!3152 = !DILocalVariable(name: "ilim", scope: !3153, file: !758, line: 674, type: !166)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !758, line: 671, column: 15)
!3154 = distinct !DILexicalBlock(scope: !3133, file: !758, line: 670, column: 17)
!3155 = !DILabel(scope: !3094, name: "process_input", file: !758, line: 308)
!3156 = !DILabel(scope: !3157, name: "c_and_shell_escape", file: !758, line: 502)
!3157 = distinct !DILexicalBlock(scope: !3134, file: !758, line: 478, column: 9)
!3158 = !DILabel(scope: !3157, name: "c_escape", file: !758, line: 507)
!3159 = !DILabel(scope: !3127, name: "store_escape", file: !758, line: 709)
!3160 = !DILabel(scope: !3127, name: "store_c", file: !758, line: 712)
!3161 = !DILabel(scope: !3094, name: "force_outer_quoting_style", file: !758, line: 753)
!3162 = !DILocation(line: 0, scope: !3094)
!3163 = !DILocation(line: 258, column: 25, scope: !3094)
!3164 = !DILocation(line: 258, column: 36, scope: !3094)
!3165 = !DILocation(line: 265, column: 8, scope: !3094)
!3166 = !DILocation(line: 267, column: 3, scope: !3094)
!3167 = !DILocation(line: 261, column: 10, scope: !3094)
!3168 = !DILocation(line: 262, column: 15, scope: !3094)
!3169 = !DILocation(line: 263, column: 10, scope: !3094)
!3170 = !DILocation(line: 264, column: 8, scope: !3094)
!3171 = !DILocation(line: 266, column: 8, scope: !3094)
!3172 = !DILocation(line: 267, column: 8, scope: !3094)
!3173 = !DILocation(line: 308, column: 2, scope: !3094)
!3174 = !DILocation(line: 311, column: 3, scope: !3094)
!3175 = !DILocation(line: 318, column: 11, scope: !3123)
!3176 = !DILocation(line: 318, column: 12, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3123, file: !758, line: 318, column: 11)
!3178 = !DILocation(line: 319, column: 9, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3180, file: !758, line: 319, column: 9)
!3180 = distinct !DILexicalBlock(scope: !3177, file: !758, line: 319, column: 9)
!3181 = !DILocation(line: 319, column: 9, scope: !3180)
!3182 = !DILocation(line: 0, scope: !819, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 357, column: 26, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !758, line: 335, column: 11)
!3185 = distinct !DILexicalBlock(scope: !3122, file: !758, line: 334, column: 13)
!3186 = !DILocation(line: 199, column: 29, scope: !819, inlinedAt: !3183)
!3187 = !DILocation(line: 201, column: 19, scope: !3188, inlinedAt: !3183)
!3188 = distinct !DILexicalBlock(scope: !819, file: !758, line: 201, column: 7)
!3189 = !DILocation(line: 201, column: 7, scope: !819, inlinedAt: !3183)
!3190 = !DILocation(line: 229, column: 3, scope: !819, inlinedAt: !3183)
!3191 = !DILocation(line: 230, column: 3, scope: !819, inlinedAt: !3183)
!3192 = !DILocation(line: 230, column: 13, scope: !819, inlinedAt: !3183)
!3193 = !DILocalVariable(name: "ps", arg: 1, scope: !3194, file: !2942, line: 1135, type: !3197)
!3194 = distinct !DISubprogram(name: "mbszero", scope: !2942, file: !2942, line: 1135, type: !3195, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3198)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{null, !3197}
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!3198 = !{!3193}
!3199 = !DILocation(line: 0, scope: !3194, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 230, column: 18, scope: !819, inlinedAt: !3183)
!3201 = !DILocalVariable(name: "__dest", arg: 1, scope: !3202, file: !1566, line: 57, type: !164)
!3202 = distinct !DISubprogram(name: "memset", scope: !1566, file: !1566, line: 57, type: !2951, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3203)
!3203 = !{!3201, !3204, !3205}
!3204 = !DILocalVariable(name: "__ch", arg: 2, scope: !3202, file: !1566, line: 57, type: !122)
!3205 = !DILocalVariable(name: "__len", arg: 3, scope: !3202, file: !1566, line: 57, type: !166)
!3206 = !DILocation(line: 0, scope: !3202, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 1137, column: 3, scope: !3194, inlinedAt: !3200)
!3208 = !DILocation(line: 59, column: 10, scope: !3202, inlinedAt: !3207)
!3209 = !DILocation(line: 231, column: 7, scope: !3210, inlinedAt: !3183)
!3210 = distinct !DILexicalBlock(scope: !819, file: !758, line: 231, column: 7)
!3211 = !DILocation(line: 231, column: 40, scope: !3210, inlinedAt: !3183)
!3212 = !DILocation(line: 231, column: 45, scope: !3210, inlinedAt: !3183)
!3213 = !DILocation(line: 235, column: 1, scope: !819, inlinedAt: !3183)
!3214 = !DILocation(line: 0, scope: !819, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 358, column: 27, scope: !3184)
!3216 = !DILocation(line: 199, column: 29, scope: !819, inlinedAt: !3215)
!3217 = !DILocation(line: 201, column: 19, scope: !3188, inlinedAt: !3215)
!3218 = !DILocation(line: 201, column: 7, scope: !819, inlinedAt: !3215)
!3219 = !DILocation(line: 229, column: 3, scope: !819, inlinedAt: !3215)
!3220 = !DILocation(line: 230, column: 3, scope: !819, inlinedAt: !3215)
!3221 = !DILocation(line: 230, column: 13, scope: !819, inlinedAt: !3215)
!3222 = !DILocation(line: 0, scope: !3194, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 230, column: 18, scope: !819, inlinedAt: !3215)
!3224 = !DILocation(line: 0, scope: !3202, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 1137, column: 3, scope: !3194, inlinedAt: !3223)
!3226 = !DILocation(line: 59, column: 10, scope: !3202, inlinedAt: !3225)
!3227 = !DILocation(line: 231, column: 7, scope: !3210, inlinedAt: !3215)
!3228 = !DILocation(line: 231, column: 40, scope: !3210, inlinedAt: !3215)
!3229 = !DILocation(line: 231, column: 45, scope: !3210, inlinedAt: !3215)
!3230 = !DILocation(line: 235, column: 1, scope: !819, inlinedAt: !3215)
!3231 = !DILocation(line: 360, column: 14, scope: !3121)
!3232 = !DILocation(line: 360, column: 13, scope: !3122)
!3233 = !DILocation(line: 0, scope: !3120)
!3234 = !DILocation(line: 361, column: 45, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3120, file: !758, line: 361, column: 11)
!3236 = !DILocation(line: 361, column: 11, scope: !3120)
!3237 = !DILocation(line: 362, column: 13, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !758, line: 362, column: 13)
!3239 = distinct !DILexicalBlock(scope: !3235, file: !758, line: 362, column: 13)
!3240 = !DILocation(line: 362, column: 13, scope: !3239)
!3241 = !DILocation(line: 361, column: 52, scope: !3235)
!3242 = distinct !{!3242, !3236, !3243, !1195}
!3243 = !DILocation(line: 362, column: 13, scope: !3120)
!3244 = !DILocation(line: 260, column: 10, scope: !3094)
!3245 = !DILocation(line: 365, column: 28, scope: !3122)
!3246 = !DILocation(line: 367, column: 7, scope: !3123)
!3247 = !DILocation(line: 370, column: 7, scope: !3123)
!3248 = !DILocation(line: 373, column: 7, scope: !3123)
!3249 = !DILocation(line: 376, column: 12, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3123, file: !758, line: 376, column: 11)
!3251 = !DILocation(line: 376, column: 11, scope: !3123)
!3252 = !DILocation(line: 381, column: 12, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3123, file: !758, line: 381, column: 11)
!3254 = !DILocation(line: 381, column: 11, scope: !3123)
!3255 = !DILocation(line: 382, column: 9, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3257, file: !758, line: 382, column: 9)
!3257 = distinct !DILexicalBlock(scope: !3253, file: !758, line: 382, column: 9)
!3258 = !DILocation(line: 382, column: 9, scope: !3257)
!3259 = !DILocation(line: 389, column: 7, scope: !3123)
!3260 = !DILocation(line: 392, column: 7, scope: !3123)
!3261 = !DILocation(line: 0, scope: !3125)
!3262 = !DILocation(line: 395, column: 8, scope: !3125)
!3263 = !DILocation(line: 309, column: 8, scope: !3094)
!3264 = !DILocation(line: 395, scope: !3125)
!3265 = !DILocation(line: 395, column: 34, scope: !3128)
!3266 = !DILocation(line: 395, column: 26, scope: !3128)
!3267 = !DILocation(line: 395, column: 48, scope: !3128)
!3268 = !DILocation(line: 395, column: 55, scope: !3128)
!3269 = !DILocation(line: 395, column: 3, scope: !3125)
!3270 = !DILocation(line: 395, column: 67, scope: !3128)
!3271 = !DILocation(line: 0, scope: !3127)
!3272 = !DILocation(line: 402, column: 11, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3127, file: !758, line: 401, column: 11)
!3274 = !DILocation(line: 404, column: 17, scope: !3273)
!3275 = !DILocation(line: 405, column: 39, scope: !3273)
!3276 = !DILocation(line: 409, column: 32, scope: !3273)
!3277 = !DILocation(line: 405, column: 19, scope: !3273)
!3278 = !DILocation(line: 405, column: 15, scope: !3273)
!3279 = !DILocation(line: 410, column: 11, scope: !3273)
!3280 = !DILocation(line: 410, column: 25, scope: !3273)
!3281 = !DILocalVariable(name: "__s1", arg: 1, scope: !3282, file: !1161, line: 974, type: !1297)
!3282 = distinct !DISubprogram(name: "memeq", scope: !1161, file: !1161, line: 974, type: !2912, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3283)
!3283 = !{!3281, !3284, !3285}
!3284 = !DILocalVariable(name: "__s2", arg: 2, scope: !3282, file: !1161, line: 974, type: !1297)
!3285 = !DILocalVariable(name: "__n", arg: 3, scope: !3282, file: !1161, line: 974, type: !166)
!3286 = !DILocation(line: 0, scope: !3282, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 410, column: 14, scope: !3273)
!3288 = !DILocation(line: 976, column: 11, scope: !3282, inlinedAt: !3287)
!3289 = !DILocation(line: 976, column: 10, scope: !3282, inlinedAt: !3287)
!3290 = !DILocation(line: 401, column: 11, scope: !3127)
!3291 = !DILocation(line: 417, column: 25, scope: !3127)
!3292 = !DILocation(line: 418, column: 7, scope: !3127)
!3293 = !DILocation(line: 421, column: 15, scope: !3134)
!3294 = !DILocation(line: 423, column: 15, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !758, line: 423, column: 15)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !758, line: 422, column: 13)
!3297 = distinct !DILexicalBlock(scope: !3134, file: !758, line: 421, column: 15)
!3298 = !DILocation(line: 423, column: 15, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3295, file: !758, line: 423, column: 15)
!3300 = !DILocation(line: 423, column: 15, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !758, line: 423, column: 15)
!3302 = distinct !DILexicalBlock(scope: !3303, file: !758, line: 423, column: 15)
!3303 = distinct !DILexicalBlock(scope: !3299, file: !758, line: 423, column: 15)
!3304 = !DILocation(line: 423, column: 15, scope: !3302)
!3305 = !DILocation(line: 423, column: 15, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !758, line: 423, column: 15)
!3307 = distinct !DILexicalBlock(scope: !3303, file: !758, line: 423, column: 15)
!3308 = !DILocation(line: 423, column: 15, scope: !3307)
!3309 = !DILocation(line: 423, column: 15, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3311, file: !758, line: 423, column: 15)
!3311 = distinct !DILexicalBlock(scope: !3303, file: !758, line: 423, column: 15)
!3312 = !DILocation(line: 423, column: 15, scope: !3311)
!3313 = !DILocation(line: 423, column: 15, scope: !3303)
!3314 = !DILocation(line: 423, column: 15, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3316, file: !758, line: 423, column: 15)
!3316 = distinct !DILexicalBlock(scope: !3295, file: !758, line: 423, column: 15)
!3317 = !DILocation(line: 423, column: 15, scope: !3316)
!3318 = !DILocation(line: 431, column: 19, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3296, file: !758, line: 430, column: 19)
!3320 = !DILocation(line: 431, column: 24, scope: !3319)
!3321 = !DILocation(line: 431, column: 28, scope: !3319)
!3322 = !DILocation(line: 431, column: 38, scope: !3319)
!3323 = !DILocation(line: 431, column: 48, scope: !3319)
!3324 = !DILocation(line: 431, column: 59, scope: !3319)
!3325 = !DILocation(line: 433, column: 19, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !758, line: 433, column: 19)
!3327 = distinct !DILexicalBlock(scope: !3328, file: !758, line: 433, column: 19)
!3328 = distinct !DILexicalBlock(scope: !3319, file: !758, line: 432, column: 17)
!3329 = !DILocation(line: 433, column: 19, scope: !3327)
!3330 = !DILocation(line: 434, column: 19, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3332, file: !758, line: 434, column: 19)
!3332 = distinct !DILexicalBlock(scope: !3328, file: !758, line: 434, column: 19)
!3333 = !DILocation(line: 434, column: 19, scope: !3332)
!3334 = !DILocation(line: 435, column: 17, scope: !3328)
!3335 = !DILocation(line: 442, column: 20, scope: !3297)
!3336 = !DILocation(line: 447, column: 11, scope: !3134)
!3337 = !DILocation(line: 450, column: 19, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3134, file: !758, line: 448, column: 13)
!3339 = !DILocation(line: 456, column: 19, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3338, file: !758, line: 455, column: 19)
!3341 = !DILocation(line: 456, column: 24, scope: !3340)
!3342 = !DILocation(line: 456, column: 28, scope: !3340)
!3343 = !DILocation(line: 456, column: 38, scope: !3340)
!3344 = !DILocation(line: 456, column: 47, scope: !3340)
!3345 = !DILocation(line: 456, column: 41, scope: !3340)
!3346 = !DILocation(line: 456, column: 52, scope: !3340)
!3347 = !DILocation(line: 455, column: 19, scope: !3338)
!3348 = !DILocation(line: 457, column: 25, scope: !3340)
!3349 = !DILocation(line: 457, column: 17, scope: !3340)
!3350 = !DILocation(line: 464, column: 25, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3340, file: !758, line: 458, column: 19)
!3352 = !DILocation(line: 468, column: 21, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3354, file: !758, line: 468, column: 21)
!3354 = distinct !DILexicalBlock(scope: !3351, file: !758, line: 468, column: 21)
!3355 = !DILocation(line: 468, column: 21, scope: !3354)
!3356 = !DILocation(line: 469, column: 21, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3358, file: !758, line: 469, column: 21)
!3358 = distinct !DILexicalBlock(scope: !3351, file: !758, line: 469, column: 21)
!3359 = !DILocation(line: 469, column: 21, scope: !3358)
!3360 = !DILocation(line: 470, column: 21, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !758, line: 470, column: 21)
!3362 = distinct !DILexicalBlock(scope: !3351, file: !758, line: 470, column: 21)
!3363 = !DILocation(line: 470, column: 21, scope: !3362)
!3364 = !DILocation(line: 471, column: 21, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !758, line: 471, column: 21)
!3366 = distinct !DILexicalBlock(scope: !3351, file: !758, line: 471, column: 21)
!3367 = !DILocation(line: 471, column: 21, scope: !3366)
!3368 = !DILocation(line: 472, column: 21, scope: !3351)
!3369 = !DILocation(line: 482, column: 33, scope: !3157)
!3370 = !DILocation(line: 483, column: 33, scope: !3157)
!3371 = !DILocation(line: 485, column: 33, scope: !3157)
!3372 = !DILocation(line: 486, column: 33, scope: !3157)
!3373 = !DILocation(line: 487, column: 33, scope: !3157)
!3374 = !DILocation(line: 490, column: 17, scope: !3157)
!3375 = !DILocation(line: 492, column: 21, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3377, file: !758, line: 491, column: 15)
!3377 = distinct !DILexicalBlock(scope: !3157, file: !758, line: 490, column: 17)
!3378 = !DILocation(line: 499, column: 35, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3157, file: !758, line: 499, column: 17)
!3380 = !DILocation(line: 499, column: 57, scope: !3379)
!3381 = !DILocation(line: 0, scope: !3157)
!3382 = !DILocation(line: 502, column: 11, scope: !3157)
!3383 = !DILocation(line: 504, column: 17, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3157, file: !758, line: 503, column: 17)
!3385 = !DILocation(line: 507, column: 11, scope: !3157)
!3386 = !DILocation(line: 508, column: 17, scope: !3157)
!3387 = !DILocation(line: 517, column: 15, scope: !3134)
!3388 = !DILocation(line: 517, column: 40, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3134, file: !758, line: 517, column: 15)
!3390 = !DILocation(line: 517, column: 47, scope: !3389)
!3391 = !DILocation(line: 517, column: 18, scope: !3389)
!3392 = !DILocation(line: 521, column: 17, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3134, file: !758, line: 521, column: 15)
!3394 = !DILocation(line: 521, column: 15, scope: !3134)
!3395 = !DILocation(line: 525, column: 11, scope: !3134)
!3396 = !DILocation(line: 537, column: 15, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3134, file: !758, line: 536, column: 15)
!3398 = !DILocation(line: 544, column: 15, scope: !3134)
!3399 = !DILocation(line: 546, column: 19, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !758, line: 545, column: 13)
!3401 = distinct !DILexicalBlock(scope: !3134, file: !758, line: 544, column: 15)
!3402 = !DILocation(line: 549, column: 19, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3400, file: !758, line: 549, column: 19)
!3404 = !DILocation(line: 549, column: 30, scope: !3403)
!3405 = !DILocation(line: 558, column: 15, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3407, file: !758, line: 558, column: 15)
!3407 = distinct !DILexicalBlock(scope: !3400, file: !758, line: 558, column: 15)
!3408 = !DILocation(line: 558, column: 15, scope: !3407)
!3409 = !DILocation(line: 559, column: 15, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !758, line: 559, column: 15)
!3411 = distinct !DILexicalBlock(scope: !3400, file: !758, line: 559, column: 15)
!3412 = !DILocation(line: 559, column: 15, scope: !3411)
!3413 = !DILocation(line: 560, column: 15, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3415, file: !758, line: 560, column: 15)
!3415 = distinct !DILexicalBlock(scope: !3400, file: !758, line: 560, column: 15)
!3416 = !DILocation(line: 560, column: 15, scope: !3415)
!3417 = !DILocation(line: 562, column: 13, scope: !3400)
!3418 = !DILocation(line: 602, column: 17, scope: !3133)
!3419 = !DILocation(line: 0, scope: !3133)
!3420 = !DILocation(line: 605, column: 29, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3138, file: !758, line: 603, column: 15)
!3422 = !DILocation(line: 605, column: 27, scope: !3421)
!3423 = !DILocation(line: 668, column: 40, scope: !3133)
!3424 = !DILocation(line: 670, column: 23, scope: !3154)
!3425 = !DILocation(line: 609, column: 17, scope: !3137)
!3426 = !DILocation(line: 609, column: 27, scope: !3137)
!3427 = !DILocation(line: 0, scope: !3194, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 609, column: 32, scope: !3137)
!3429 = !DILocation(line: 0, scope: !3202, inlinedAt: !3430)
!3430 = distinct !DILocation(line: 1137, column: 3, scope: !3194, inlinedAt: !3428)
!3431 = !DILocation(line: 59, column: 10, scope: !3202, inlinedAt: !3430)
!3432 = !DILocation(line: 613, column: 29, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3137, file: !758, line: 613, column: 21)
!3434 = !DILocation(line: 613, column: 21, scope: !3137)
!3435 = !DILocation(line: 614, column: 29, scope: !3433)
!3436 = !DILocation(line: 614, column: 19, scope: !3433)
!3437 = !DILocation(line: 618, column: 21, scope: !3140)
!3438 = !DILocation(line: 620, column: 54, scope: !3140)
!3439 = !DILocation(line: 0, scope: !3140)
!3440 = !DILocation(line: 619, column: 36, scope: !3140)
!3441 = !DILocation(line: 621, column: 25, scope: !3140)
!3442 = !DILocation(line: 631, column: 38, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3149, file: !758, line: 629, column: 23)
!3444 = !DILocation(line: 631, column: 48, scope: !3443)
!3445 = !DILocation(line: 665, column: 19, scope: !3141)
!3446 = !DILocation(line: 666, column: 15, scope: !3138)
!3447 = !DILocation(line: 626, column: 25, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3150, file: !758, line: 624, column: 23)
!3449 = !DILocation(line: 631, column: 51, scope: !3443)
!3450 = !DILocation(line: 631, column: 25, scope: !3443)
!3451 = !DILocation(line: 632, column: 28, scope: !3443)
!3452 = !DILocation(line: 631, column: 34, scope: !3443)
!3453 = distinct !{!3453, !3450, !3451, !1195}
!3454 = !DILocation(line: 646, column: 29, scope: !3147)
!3455 = !DILocation(line: 0, scope: !3145)
!3456 = !DILocation(line: 649, column: 49, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3145, file: !758, line: 648, column: 29)
!3458 = !DILocation(line: 649, column: 39, scope: !3457)
!3459 = !DILocation(line: 649, column: 31, scope: !3457)
!3460 = !DILocation(line: 648, column: 60, scope: !3457)
!3461 = !DILocation(line: 648, column: 50, scope: !3457)
!3462 = !DILocation(line: 648, column: 29, scope: !3145)
!3463 = distinct !{!3463, !3462, !3464, !1195}
!3464 = !DILocation(line: 654, column: 33, scope: !3145)
!3465 = !DILocation(line: 657, column: 43, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3148, file: !758, line: 657, column: 29)
!3467 = !DILocalVariable(name: "wc", arg: 1, scope: !3468, file: !3469, line: 865, type: !3472)
!3468 = distinct !DISubprogram(name: "c32isprint", scope: !3469, file: !3469, line: 865, type: !3470, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3474)
!3469 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!122, !3472}
!3472 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3473, line: 20, baseType: !109)
!3473 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3474 = !{!3467}
!3475 = !DILocation(line: 0, scope: !3468, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 657, column: 31, scope: !3466)
!3477 = !DILocation(line: 871, column: 10, scope: !3468, inlinedAt: !3476)
!3478 = !DILocation(line: 657, column: 31, scope: !3466)
!3479 = !DILocation(line: 657, column: 29, scope: !3148)
!3480 = !DILocation(line: 664, column: 23, scope: !3140)
!3481 = !DILocation(line: 670, column: 19, scope: !3154)
!3482 = !DILocation(line: 670, column: 45, scope: !3154)
!3483 = !DILocation(line: 674, column: 33, scope: !3153)
!3484 = !DILocation(line: 0, scope: !3153)
!3485 = !DILocation(line: 676, column: 17, scope: !3153)
!3486 = !DILocation(line: 398, column: 12, scope: !3127)
!3487 = !DILocation(line: 678, column: 43, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3489, file: !758, line: 678, column: 25)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !758, line: 677, column: 19)
!3490 = distinct !DILexicalBlock(scope: !3491, file: !758, line: 676, column: 17)
!3491 = distinct !DILexicalBlock(scope: !3153, file: !758, line: 676, column: 17)
!3492 = !DILocation(line: 680, column: 25, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !758, line: 680, column: 25)
!3494 = distinct !DILexicalBlock(scope: !3488, file: !758, line: 679, column: 23)
!3495 = !DILocation(line: 680, column: 25, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3493, file: !758, line: 680, column: 25)
!3497 = !DILocation(line: 680, column: 25, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !758, line: 680, column: 25)
!3499 = distinct !DILexicalBlock(scope: !3500, file: !758, line: 680, column: 25)
!3500 = distinct !DILexicalBlock(scope: !3496, file: !758, line: 680, column: 25)
!3501 = !DILocation(line: 680, column: 25, scope: !3499)
!3502 = !DILocation(line: 680, column: 25, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !758, line: 680, column: 25)
!3504 = distinct !DILexicalBlock(scope: !3500, file: !758, line: 680, column: 25)
!3505 = !DILocation(line: 680, column: 25, scope: !3504)
!3506 = !DILocation(line: 680, column: 25, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !758, line: 680, column: 25)
!3508 = distinct !DILexicalBlock(scope: !3500, file: !758, line: 680, column: 25)
!3509 = !DILocation(line: 680, column: 25, scope: !3508)
!3510 = !DILocation(line: 680, column: 25, scope: !3500)
!3511 = !DILocation(line: 680, column: 25, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !758, line: 680, column: 25)
!3513 = distinct !DILexicalBlock(scope: !3493, file: !758, line: 680, column: 25)
!3514 = !DILocation(line: 680, column: 25, scope: !3513)
!3515 = !DILocation(line: 681, column: 25, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !758, line: 681, column: 25)
!3517 = distinct !DILexicalBlock(scope: !3494, file: !758, line: 681, column: 25)
!3518 = !DILocation(line: 681, column: 25, scope: !3517)
!3519 = !DILocation(line: 682, column: 25, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3521, file: !758, line: 682, column: 25)
!3521 = distinct !DILexicalBlock(scope: !3494, file: !758, line: 682, column: 25)
!3522 = !DILocation(line: 682, column: 25, scope: !3521)
!3523 = !DILocation(line: 683, column: 38, scope: !3494)
!3524 = !DILocation(line: 683, column: 33, scope: !3494)
!3525 = !DILocation(line: 684, column: 23, scope: !3494)
!3526 = !DILocation(line: 685, column: 30, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3488, file: !758, line: 685, column: 30)
!3528 = !DILocation(line: 685, column: 30, scope: !3488)
!3529 = !DILocation(line: 687, column: 25, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !758, line: 687, column: 25)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !758, line: 687, column: 25)
!3532 = distinct !DILexicalBlock(scope: !3527, file: !758, line: 686, column: 23)
!3533 = !DILocation(line: 687, column: 25, scope: !3531)
!3534 = !DILocation(line: 689, column: 23, scope: !3532)
!3535 = !DILocation(line: 690, column: 35, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3489, file: !758, line: 690, column: 25)
!3537 = !DILocation(line: 690, column: 30, scope: !3536)
!3538 = !DILocation(line: 690, column: 25, scope: !3489)
!3539 = !DILocation(line: 692, column: 21, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !758, line: 692, column: 21)
!3541 = distinct !DILexicalBlock(scope: !3489, file: !758, line: 692, column: 21)
!3542 = !DILocation(line: 692, column: 21, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !758, line: 692, column: 21)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !758, line: 692, column: 21)
!3545 = distinct !DILexicalBlock(scope: !3540, file: !758, line: 692, column: 21)
!3546 = !DILocation(line: 692, column: 21, scope: !3544)
!3547 = !DILocation(line: 692, column: 21, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !758, line: 692, column: 21)
!3549 = distinct !DILexicalBlock(scope: !3545, file: !758, line: 692, column: 21)
!3550 = !DILocation(line: 692, column: 21, scope: !3549)
!3551 = !DILocation(line: 692, column: 21, scope: !3545)
!3552 = !DILocation(line: 0, scope: !3489)
!3553 = !DILocation(line: 693, column: 21, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !758, line: 693, column: 21)
!3555 = distinct !DILexicalBlock(scope: !3489, file: !758, line: 693, column: 21)
!3556 = !DILocation(line: 693, column: 21, scope: !3555)
!3557 = !DILocation(line: 694, column: 25, scope: !3489)
!3558 = !DILocation(line: 676, column: 17, scope: !3490)
!3559 = distinct !{!3559, !3560, !3561}
!3560 = !DILocation(line: 676, column: 17, scope: !3491)
!3561 = !DILocation(line: 695, column: 19, scope: !3491)
!3562 = !DILocation(line: 409, column: 30, scope: !3273)
!3563 = !DILocation(line: 702, column: 34, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3127, file: !758, line: 702, column: 11)
!3565 = !DILocation(line: 704, column: 14, scope: !3564)
!3566 = !DILocation(line: 705, column: 14, scope: !3564)
!3567 = !DILocation(line: 705, column: 35, scope: !3564)
!3568 = !DILocation(line: 705, column: 17, scope: !3564)
!3569 = !DILocation(line: 705, column: 47, scope: !3564)
!3570 = !DILocation(line: 705, column: 65, scope: !3564)
!3571 = !DILocation(line: 706, column: 11, scope: !3564)
!3572 = !DILocation(line: 702, column: 11, scope: !3127)
!3573 = !DILocation(line: 395, column: 15, scope: !3125)
!3574 = !DILocation(line: 709, column: 5, scope: !3127)
!3575 = !DILocation(line: 710, column: 7, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3127, file: !758, line: 710, column: 7)
!3577 = !DILocation(line: 710, column: 7, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3576, file: !758, line: 710, column: 7)
!3579 = !DILocation(line: 710, column: 7, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3581, file: !758, line: 710, column: 7)
!3581 = distinct !DILexicalBlock(scope: !3582, file: !758, line: 710, column: 7)
!3582 = distinct !DILexicalBlock(scope: !3578, file: !758, line: 710, column: 7)
!3583 = !DILocation(line: 710, column: 7, scope: !3581)
!3584 = !DILocation(line: 710, column: 7, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3586, file: !758, line: 710, column: 7)
!3586 = distinct !DILexicalBlock(scope: !3582, file: !758, line: 710, column: 7)
!3587 = !DILocation(line: 710, column: 7, scope: !3586)
!3588 = !DILocation(line: 710, column: 7, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !758, line: 710, column: 7)
!3590 = distinct !DILexicalBlock(scope: !3582, file: !758, line: 710, column: 7)
!3591 = !DILocation(line: 710, column: 7, scope: !3590)
!3592 = !DILocation(line: 710, column: 7, scope: !3582)
!3593 = !DILocation(line: 710, column: 7, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !758, line: 710, column: 7)
!3595 = distinct !DILexicalBlock(scope: !3576, file: !758, line: 710, column: 7)
!3596 = !DILocation(line: 710, column: 7, scope: !3595)
!3597 = !DILocation(line: 712, column: 5, scope: !3127)
!3598 = !DILocation(line: 713, column: 7, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3600, file: !758, line: 713, column: 7)
!3600 = distinct !DILexicalBlock(scope: !3127, file: !758, line: 713, column: 7)
!3601 = !DILocation(line: 417, column: 21, scope: !3127)
!3602 = !DILocation(line: 713, column: 7, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3604, file: !758, line: 713, column: 7)
!3604 = distinct !DILexicalBlock(scope: !3605, file: !758, line: 713, column: 7)
!3605 = distinct !DILexicalBlock(scope: !3599, file: !758, line: 713, column: 7)
!3606 = !DILocation(line: 713, column: 7, scope: !3604)
!3607 = !DILocation(line: 713, column: 7, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3609, file: !758, line: 713, column: 7)
!3609 = distinct !DILexicalBlock(scope: !3605, file: !758, line: 713, column: 7)
!3610 = !DILocation(line: 713, column: 7, scope: !3609)
!3611 = !DILocation(line: 713, column: 7, scope: !3605)
!3612 = !DILocation(line: 714, column: 7, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3614, file: !758, line: 714, column: 7)
!3614 = distinct !DILexicalBlock(scope: !3127, file: !758, line: 714, column: 7)
!3615 = !DILocation(line: 714, column: 7, scope: !3614)
!3616 = !DILocation(line: 716, column: 13, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3127, file: !758, line: 716, column: 11)
!3618 = !DILocation(line: 716, column: 11, scope: !3127)
!3619 = !DILocation(line: 718, column: 5, scope: !3128)
!3620 = !DILocation(line: 395, column: 82, scope: !3128)
!3621 = !DILocation(line: 395, column: 3, scope: !3128)
!3622 = distinct !{!3622, !3269, !3623, !1195}
!3623 = !DILocation(line: 718, column: 5, scope: !3125)
!3624 = !DILocation(line: 720, column: 11, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3094, file: !758, line: 720, column: 7)
!3626 = !DILocation(line: 720, column: 16, scope: !3625)
!3627 = !DILocation(line: 728, column: 51, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3094, file: !758, line: 728, column: 7)
!3629 = !DILocation(line: 731, column: 11, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3631, file: !758, line: 731, column: 11)
!3631 = distinct !DILexicalBlock(scope: !3628, file: !758, line: 730, column: 5)
!3632 = !DILocation(line: 731, column: 11, scope: !3631)
!3633 = !DILocation(line: 732, column: 16, scope: !3630)
!3634 = !DILocation(line: 732, column: 9, scope: !3630)
!3635 = !DILocation(line: 736, column: 18, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3630, file: !758, line: 736, column: 16)
!3637 = !DILocation(line: 736, column: 29, scope: !3636)
!3638 = !DILocation(line: 745, column: 7, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3094, file: !758, line: 745, column: 7)
!3640 = !DILocation(line: 745, column: 20, scope: !3639)
!3641 = !DILocation(line: 746, column: 12, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3643, file: !758, line: 746, column: 5)
!3643 = distinct !DILexicalBlock(scope: !3639, file: !758, line: 746, column: 5)
!3644 = !DILocation(line: 746, column: 5, scope: !3643)
!3645 = !DILocation(line: 747, column: 7, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3647, file: !758, line: 747, column: 7)
!3647 = distinct !DILexicalBlock(scope: !3642, file: !758, line: 747, column: 7)
!3648 = !DILocation(line: 747, column: 7, scope: !3647)
!3649 = !DILocation(line: 746, column: 39, scope: !3642)
!3650 = distinct !{!3650, !3644, !3651, !1195}
!3651 = !DILocation(line: 747, column: 7, scope: !3643)
!3652 = !DILocation(line: 749, column: 11, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3094, file: !758, line: 749, column: 7)
!3654 = !DILocation(line: 749, column: 7, scope: !3094)
!3655 = !DILocation(line: 750, column: 5, scope: !3653)
!3656 = !DILocation(line: 750, column: 17, scope: !3653)
!3657 = !DILocation(line: 753, column: 2, scope: !3094)
!3658 = !DILocation(line: 756, column: 51, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3094, file: !758, line: 756, column: 7)
!3660 = !DILocation(line: 756, column: 21, scope: !3659)
!3661 = !DILocation(line: 760, column: 42, scope: !3094)
!3662 = !DILocation(line: 758, column: 10, scope: !3094)
!3663 = !DILocation(line: 758, column: 3, scope: !3094)
!3664 = !DILocation(line: 762, column: 1, scope: !3094)
!3665 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1273, file: !1273, line: 98, type: !3666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!166}
!3668 = !DISubprogram(name: "strlen", scope: !1269, file: !1269, line: 407, type: !3669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!168, !169}
!3671 = !DISubprogram(name: "iswprint", scope: !3672, file: !3672, line: 120, type: !3470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!3672 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3673 = distinct !DISubprogram(name: "quotearg_alloc", scope: !758, file: !758, line: 788, type: !3674, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3676)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!163, !169, !166, !2987}
!3676 = !{!3677, !3678, !3679}
!3677 = !DILocalVariable(name: "arg", arg: 1, scope: !3673, file: !758, line: 788, type: !169)
!3678 = !DILocalVariable(name: "argsize", arg: 2, scope: !3673, file: !758, line: 788, type: !166)
!3679 = !DILocalVariable(name: "o", arg: 3, scope: !3673, file: !758, line: 789, type: !2987)
!3680 = !DILocation(line: 0, scope: !3673)
!3681 = !DILocalVariable(name: "arg", arg: 1, scope: !3682, file: !758, line: 801, type: !169)
!3682 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !758, file: !758, line: 801, type: !3683, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3685)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!163, !169, !166, !1004, !2987}
!3685 = !{!3681, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693}
!3686 = !DILocalVariable(name: "argsize", arg: 2, scope: !3682, file: !758, line: 801, type: !166)
!3687 = !DILocalVariable(name: "size", arg: 3, scope: !3682, file: !758, line: 801, type: !1004)
!3688 = !DILocalVariable(name: "o", arg: 4, scope: !3682, file: !758, line: 802, type: !2987)
!3689 = !DILocalVariable(name: "p", scope: !3682, file: !758, line: 804, type: !2987)
!3690 = !DILocalVariable(name: "saved_errno", scope: !3682, file: !758, line: 805, type: !122)
!3691 = !DILocalVariable(name: "flags", scope: !3682, file: !758, line: 807, type: !122)
!3692 = !DILocalVariable(name: "bufsize", scope: !3682, file: !758, line: 808, type: !166)
!3693 = !DILocalVariable(name: "buf", scope: !3682, file: !758, line: 812, type: !163)
!3694 = !DILocation(line: 0, scope: !3682, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 791, column: 10, scope: !3673)
!3696 = !DILocation(line: 804, column: 37, scope: !3682, inlinedAt: !3695)
!3697 = !DILocation(line: 805, column: 21, scope: !3682, inlinedAt: !3695)
!3698 = !DILocation(line: 807, column: 18, scope: !3682, inlinedAt: !3695)
!3699 = !DILocation(line: 807, column: 24, scope: !3682, inlinedAt: !3695)
!3700 = !DILocation(line: 808, column: 72, scope: !3682, inlinedAt: !3695)
!3701 = !DILocation(line: 809, column: 56, scope: !3682, inlinedAt: !3695)
!3702 = !DILocation(line: 810, column: 49, scope: !3682, inlinedAt: !3695)
!3703 = !DILocation(line: 811, column: 49, scope: !3682, inlinedAt: !3695)
!3704 = !DILocation(line: 808, column: 20, scope: !3682, inlinedAt: !3695)
!3705 = !DILocation(line: 811, column: 62, scope: !3682, inlinedAt: !3695)
!3706 = !DILocation(line: 812, column: 15, scope: !3682, inlinedAt: !3695)
!3707 = !DILocation(line: 813, column: 60, scope: !3682, inlinedAt: !3695)
!3708 = !DILocation(line: 815, column: 32, scope: !3682, inlinedAt: !3695)
!3709 = !DILocation(line: 815, column: 47, scope: !3682, inlinedAt: !3695)
!3710 = !DILocation(line: 813, column: 3, scope: !3682, inlinedAt: !3695)
!3711 = !DILocation(line: 816, column: 9, scope: !3682, inlinedAt: !3695)
!3712 = !DILocation(line: 791, column: 3, scope: !3673)
!3713 = !DILocation(line: 0, scope: !3682)
!3714 = !DILocation(line: 804, column: 37, scope: !3682)
!3715 = !DILocation(line: 805, column: 21, scope: !3682)
!3716 = !DILocation(line: 807, column: 18, scope: !3682)
!3717 = !DILocation(line: 807, column: 27, scope: !3682)
!3718 = !DILocation(line: 807, column: 24, scope: !3682)
!3719 = !DILocation(line: 808, column: 72, scope: !3682)
!3720 = !DILocation(line: 809, column: 56, scope: !3682)
!3721 = !DILocation(line: 810, column: 49, scope: !3682)
!3722 = !DILocation(line: 811, column: 49, scope: !3682)
!3723 = !DILocation(line: 808, column: 20, scope: !3682)
!3724 = !DILocation(line: 811, column: 62, scope: !3682)
!3725 = !DILocation(line: 812, column: 15, scope: !3682)
!3726 = !DILocation(line: 813, column: 60, scope: !3682)
!3727 = !DILocation(line: 815, column: 32, scope: !3682)
!3728 = !DILocation(line: 815, column: 47, scope: !3682)
!3729 = !DILocation(line: 813, column: 3, scope: !3682)
!3730 = !DILocation(line: 816, column: 9, scope: !3682)
!3731 = !DILocation(line: 817, column: 7, scope: !3682)
!3732 = !DILocation(line: 818, column: 11, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3682, file: !758, line: 817, column: 7)
!3734 = !DILocation(line: 818, column: 5, scope: !3733)
!3735 = !DILocation(line: 819, column: 3, scope: !3682)
!3736 = distinct !DISubprogram(name: "quotearg_free", scope: !758, file: !758, line: 837, type: !713, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3737)
!3737 = !{!3738, !3739}
!3738 = !DILocalVariable(name: "sv", scope: !3736, file: !758, line: 839, type: !842)
!3739 = !DILocalVariable(name: "i", scope: !3740, file: !758, line: 840, type: !122)
!3740 = distinct !DILexicalBlock(scope: !3736, file: !758, line: 840, column: 3)
!3741 = !DILocation(line: 839, column: 24, scope: !3736)
!3742 = !DILocation(line: 0, scope: !3736)
!3743 = !DILocation(line: 0, scope: !3740)
!3744 = !DILocation(line: 840, column: 21, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3740, file: !758, line: 840, column: 3)
!3746 = !DILocation(line: 840, column: 3, scope: !3740)
!3747 = !DILocation(line: 842, column: 13, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3736, file: !758, line: 842, column: 7)
!3749 = !{!3750, !1066, i64 8}
!3750 = !{!"slotvec", !1344, i64 0, !1066, i64 8}
!3751 = !DILocation(line: 842, column: 17, scope: !3748)
!3752 = !DILocation(line: 842, column: 7, scope: !3736)
!3753 = !DILocation(line: 841, column: 17, scope: !3745)
!3754 = !DILocation(line: 841, column: 5, scope: !3745)
!3755 = !DILocation(line: 840, column: 32, scope: !3745)
!3756 = distinct !{!3756, !3746, !3757, !1195}
!3757 = !DILocation(line: 841, column: 20, scope: !3740)
!3758 = !DILocation(line: 844, column: 7, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3748, file: !758, line: 843, column: 5)
!3760 = !DILocation(line: 845, column: 21, scope: !3759)
!3761 = !{!3750, !1344, i64 0}
!3762 = !DILocation(line: 846, column: 20, scope: !3759)
!3763 = !DILocation(line: 847, column: 5, scope: !3759)
!3764 = !DILocation(line: 848, column: 10, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3736, file: !758, line: 848, column: 7)
!3766 = !DILocation(line: 848, column: 7, scope: !3736)
!3767 = !DILocation(line: 850, column: 7, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3765, file: !758, line: 849, column: 5)
!3769 = !DILocation(line: 851, column: 15, scope: !3768)
!3770 = !DILocation(line: 852, column: 5, scope: !3768)
!3771 = !DILocation(line: 853, column: 10, scope: !3736)
!3772 = !DILocation(line: 854, column: 1, scope: !3736)
!3773 = distinct !DISubprogram(name: "quotearg_n", scope: !758, file: !758, line: 919, type: !1266, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3774)
!3774 = !{!3775, !3776}
!3775 = !DILocalVariable(name: "n", arg: 1, scope: !3773, file: !758, line: 919, type: !122)
!3776 = !DILocalVariable(name: "arg", arg: 2, scope: !3773, file: !758, line: 919, type: !169)
!3777 = !DILocation(line: 0, scope: !3773)
!3778 = !DILocation(line: 921, column: 10, scope: !3773)
!3779 = !DILocation(line: 921, column: 3, scope: !3773)
!3780 = distinct !DISubprogram(name: "quotearg_n_options", scope: !758, file: !758, line: 866, type: !3781, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3783)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!163, !122, !169, !166, !2987}
!3783 = !{!3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3794, !3795, !3797, !3798, !3799}
!3784 = !DILocalVariable(name: "n", arg: 1, scope: !3780, file: !758, line: 866, type: !122)
!3785 = !DILocalVariable(name: "arg", arg: 2, scope: !3780, file: !758, line: 866, type: !169)
!3786 = !DILocalVariable(name: "argsize", arg: 3, scope: !3780, file: !758, line: 866, type: !166)
!3787 = !DILocalVariable(name: "options", arg: 4, scope: !3780, file: !758, line: 867, type: !2987)
!3788 = !DILocalVariable(name: "saved_errno", scope: !3780, file: !758, line: 869, type: !122)
!3789 = !DILocalVariable(name: "sv", scope: !3780, file: !758, line: 871, type: !842)
!3790 = !DILocalVariable(name: "nslots_max", scope: !3780, file: !758, line: 873, type: !122)
!3791 = !DILocalVariable(name: "preallocated", scope: !3792, file: !758, line: 879, type: !231)
!3792 = distinct !DILexicalBlock(scope: !3793, file: !758, line: 878, column: 5)
!3793 = distinct !DILexicalBlock(scope: !3780, file: !758, line: 877, column: 7)
!3794 = !DILocalVariable(name: "new_nslots", scope: !3792, file: !758, line: 880, type: !528)
!3795 = !DILocalVariable(name: "size", scope: !3796, file: !758, line: 891, type: !166)
!3796 = distinct !DILexicalBlock(scope: !3780, file: !758, line: 890, column: 3)
!3797 = !DILocalVariable(name: "val", scope: !3796, file: !758, line: 892, type: !163)
!3798 = !DILocalVariable(name: "flags", scope: !3796, file: !758, line: 894, type: !122)
!3799 = !DILocalVariable(name: "qsize", scope: !3796, file: !758, line: 895, type: !166)
!3800 = !DILocation(line: 0, scope: !3780)
!3801 = !DILocation(line: 869, column: 21, scope: !3780)
!3802 = !DILocation(line: 871, column: 24, scope: !3780)
!3803 = !DILocation(line: 874, column: 17, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3780, file: !758, line: 874, column: 7)
!3805 = !DILocation(line: 875, column: 5, scope: !3804)
!3806 = !DILocation(line: 877, column: 7, scope: !3793)
!3807 = !DILocation(line: 877, column: 14, scope: !3793)
!3808 = !DILocation(line: 877, column: 7, scope: !3780)
!3809 = !DILocation(line: 879, column: 31, scope: !3792)
!3810 = !DILocation(line: 0, scope: !3792)
!3811 = !DILocation(line: 880, column: 7, scope: !3792)
!3812 = !DILocation(line: 880, column: 26, scope: !3792)
!3813 = !DILocation(line: 880, column: 13, scope: !3792)
!3814 = !DILocation(line: 882, column: 31, scope: !3792)
!3815 = !DILocation(line: 883, column: 33, scope: !3792)
!3816 = !DILocation(line: 883, column: 42, scope: !3792)
!3817 = !DILocation(line: 883, column: 31, scope: !3792)
!3818 = !DILocation(line: 882, column: 22, scope: !3792)
!3819 = !DILocation(line: 882, column: 15, scope: !3792)
!3820 = !DILocation(line: 884, column: 11, scope: !3792)
!3821 = !DILocation(line: 885, column: 15, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3792, file: !758, line: 884, column: 11)
!3823 = !{i64 0, i64 8, !1343, i64 8, i64 8, !1065}
!3824 = !DILocation(line: 885, column: 9, scope: !3822)
!3825 = !DILocation(line: 886, column: 20, scope: !3792)
!3826 = !DILocation(line: 886, column: 18, scope: !3792)
!3827 = !DILocation(line: 886, column: 32, scope: !3792)
!3828 = !DILocation(line: 886, column: 43, scope: !3792)
!3829 = !DILocation(line: 886, column: 53, scope: !3792)
!3830 = !DILocation(line: 0, scope: !3202, inlinedAt: !3831)
!3831 = distinct !DILocation(line: 886, column: 7, scope: !3792)
!3832 = !DILocation(line: 59, column: 10, scope: !3202, inlinedAt: !3831)
!3833 = !DILocation(line: 887, column: 16, scope: !3792)
!3834 = !DILocation(line: 887, column: 14, scope: !3792)
!3835 = !DILocation(line: 888, column: 5, scope: !3793)
!3836 = !DILocation(line: 888, column: 5, scope: !3792)
!3837 = !DILocation(line: 891, column: 19, scope: !3796)
!3838 = !DILocation(line: 891, column: 25, scope: !3796)
!3839 = !DILocation(line: 0, scope: !3796)
!3840 = !DILocation(line: 892, column: 23, scope: !3796)
!3841 = !DILocation(line: 894, column: 26, scope: !3796)
!3842 = !DILocation(line: 894, column: 32, scope: !3796)
!3843 = !DILocation(line: 896, column: 55, scope: !3796)
!3844 = !DILocation(line: 897, column: 55, scope: !3796)
!3845 = !DILocation(line: 898, column: 55, scope: !3796)
!3846 = !DILocation(line: 899, column: 55, scope: !3796)
!3847 = !DILocation(line: 895, column: 20, scope: !3796)
!3848 = !DILocation(line: 901, column: 14, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3796, file: !758, line: 901, column: 9)
!3850 = !DILocation(line: 901, column: 9, scope: !3796)
!3851 = !DILocation(line: 903, column: 35, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3849, file: !758, line: 902, column: 7)
!3853 = !DILocation(line: 903, column: 20, scope: !3852)
!3854 = !DILocation(line: 904, column: 17, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3852, file: !758, line: 904, column: 13)
!3856 = !DILocation(line: 904, column: 13, scope: !3852)
!3857 = !DILocation(line: 905, column: 11, scope: !3855)
!3858 = !DILocation(line: 906, column: 27, scope: !3852)
!3859 = !DILocation(line: 906, column: 19, scope: !3852)
!3860 = !DILocation(line: 907, column: 69, scope: !3852)
!3861 = !DILocation(line: 909, column: 44, scope: !3852)
!3862 = !DILocation(line: 910, column: 44, scope: !3852)
!3863 = !DILocation(line: 907, column: 9, scope: !3852)
!3864 = !DILocation(line: 911, column: 7, scope: !3852)
!3865 = !DILocation(line: 913, column: 11, scope: !3796)
!3866 = !DILocation(line: 914, column: 5, scope: !3796)
!3867 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !758, file: !758, line: 925, type: !3868, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3870)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!163, !122, !169, !166}
!3870 = !{!3871, !3872, !3873}
!3871 = !DILocalVariable(name: "n", arg: 1, scope: !3867, file: !758, line: 925, type: !122)
!3872 = !DILocalVariable(name: "arg", arg: 2, scope: !3867, file: !758, line: 925, type: !169)
!3873 = !DILocalVariable(name: "argsize", arg: 3, scope: !3867, file: !758, line: 925, type: !166)
!3874 = !DILocation(line: 0, scope: !3867)
!3875 = !DILocation(line: 927, column: 10, scope: !3867)
!3876 = !DILocation(line: 927, column: 3, scope: !3867)
!3877 = distinct !DISubprogram(name: "quotearg", scope: !758, file: !758, line: 931, type: !1275, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3878)
!3878 = !{!3879}
!3879 = !DILocalVariable(name: "arg", arg: 1, scope: !3877, file: !758, line: 931, type: !169)
!3880 = !DILocation(line: 0, scope: !3877)
!3881 = !DILocation(line: 0, scope: !3773, inlinedAt: !3882)
!3882 = distinct !DILocation(line: 933, column: 10, scope: !3877)
!3883 = !DILocation(line: 921, column: 10, scope: !3773, inlinedAt: !3882)
!3884 = !DILocation(line: 933, column: 3, scope: !3877)
!3885 = distinct !DISubprogram(name: "quotearg_mem", scope: !758, file: !758, line: 937, type: !3886, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3888)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!163, !169, !166}
!3888 = !{!3889, !3890}
!3889 = !DILocalVariable(name: "arg", arg: 1, scope: !3885, file: !758, line: 937, type: !169)
!3890 = !DILocalVariable(name: "argsize", arg: 2, scope: !3885, file: !758, line: 937, type: !166)
!3891 = !DILocation(line: 0, scope: !3885)
!3892 = !DILocation(line: 0, scope: !3867, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 939, column: 10, scope: !3885)
!3894 = !DILocation(line: 927, column: 10, scope: !3867, inlinedAt: !3893)
!3895 = !DILocation(line: 939, column: 3, scope: !3885)
!3896 = distinct !DISubprogram(name: "quotearg_n_style", scope: !758, file: !758, line: 943, type: !3897, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3899)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!163, !122, !126, !169}
!3899 = !{!3900, !3901, !3902, !3903}
!3900 = !DILocalVariable(name: "n", arg: 1, scope: !3896, file: !758, line: 943, type: !122)
!3901 = !DILocalVariable(name: "s", arg: 2, scope: !3896, file: !758, line: 943, type: !126)
!3902 = !DILocalVariable(name: "arg", arg: 3, scope: !3896, file: !758, line: 943, type: !169)
!3903 = !DILocalVariable(name: "o", scope: !3896, file: !758, line: 945, type: !2988)
!3904 = !DILocation(line: 0, scope: !3896)
!3905 = !DILocation(line: 945, column: 3, scope: !3896)
!3906 = !DILocation(line: 945, column: 32, scope: !3896)
!3907 = !{!3908}
!3908 = distinct !{!3908, !3909, !"quoting_options_from_style: argument 0"}
!3909 = distinct !{!3909, !"quoting_options_from_style"}
!3910 = !DILocation(line: 945, column: 36, scope: !3896)
!3911 = !DILocalVariable(name: "style", arg: 1, scope: !3912, file: !758, line: 183, type: !126)
!3912 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !758, file: !758, line: 183, type: !3913, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3915)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!794, !126}
!3915 = !{!3911, !3916}
!3916 = !DILocalVariable(name: "o", scope: !3912, file: !758, line: 185, type: !794)
!3917 = !DILocation(line: 0, scope: !3912, inlinedAt: !3918)
!3918 = distinct !DILocation(line: 945, column: 36, scope: !3896)
!3919 = !DILocation(line: 185, column: 26, scope: !3912, inlinedAt: !3918)
!3920 = !DILocation(line: 186, column: 13, scope: !3921, inlinedAt: !3918)
!3921 = distinct !DILexicalBlock(scope: !3912, file: !758, line: 186, column: 7)
!3922 = !DILocation(line: 186, column: 7, scope: !3912, inlinedAt: !3918)
!3923 = !DILocation(line: 187, column: 5, scope: !3921, inlinedAt: !3918)
!3924 = !DILocation(line: 188, column: 11, scope: !3912, inlinedAt: !3918)
!3925 = !DILocation(line: 946, column: 10, scope: !3896)
!3926 = !DILocation(line: 947, column: 1, scope: !3896)
!3927 = !DILocation(line: 946, column: 3, scope: !3896)
!3928 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !758, file: !758, line: 950, type: !3929, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3931)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!163, !122, !126, !169, !166}
!3931 = !{!3932, !3933, !3934, !3935, !3936}
!3932 = !DILocalVariable(name: "n", arg: 1, scope: !3928, file: !758, line: 950, type: !122)
!3933 = !DILocalVariable(name: "s", arg: 2, scope: !3928, file: !758, line: 950, type: !126)
!3934 = !DILocalVariable(name: "arg", arg: 3, scope: !3928, file: !758, line: 951, type: !169)
!3935 = !DILocalVariable(name: "argsize", arg: 4, scope: !3928, file: !758, line: 951, type: !166)
!3936 = !DILocalVariable(name: "o", scope: !3928, file: !758, line: 953, type: !2988)
!3937 = !DILocation(line: 0, scope: !3928)
!3938 = !DILocation(line: 953, column: 3, scope: !3928)
!3939 = !DILocation(line: 953, column: 32, scope: !3928)
!3940 = !{!3941}
!3941 = distinct !{!3941, !3942, !"quoting_options_from_style: argument 0"}
!3942 = distinct !{!3942, !"quoting_options_from_style"}
!3943 = !DILocation(line: 953, column: 36, scope: !3928)
!3944 = !DILocation(line: 0, scope: !3912, inlinedAt: !3945)
!3945 = distinct !DILocation(line: 953, column: 36, scope: !3928)
!3946 = !DILocation(line: 185, column: 26, scope: !3912, inlinedAt: !3945)
!3947 = !DILocation(line: 186, column: 13, scope: !3921, inlinedAt: !3945)
!3948 = !DILocation(line: 186, column: 7, scope: !3912, inlinedAt: !3945)
!3949 = !DILocation(line: 187, column: 5, scope: !3921, inlinedAt: !3945)
!3950 = !DILocation(line: 188, column: 11, scope: !3912, inlinedAt: !3945)
!3951 = !DILocation(line: 954, column: 10, scope: !3928)
!3952 = !DILocation(line: 955, column: 1, scope: !3928)
!3953 = !DILocation(line: 954, column: 3, scope: !3928)
!3954 = distinct !DISubprogram(name: "quotearg_style", scope: !758, file: !758, line: 958, type: !3955, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3957)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!163, !126, !169}
!3957 = !{!3958, !3959}
!3958 = !DILocalVariable(name: "s", arg: 1, scope: !3954, file: !758, line: 958, type: !126)
!3959 = !DILocalVariable(name: "arg", arg: 2, scope: !3954, file: !758, line: 958, type: !169)
!3960 = !DILocation(line: 0, scope: !3954)
!3961 = !DILocation(line: 0, scope: !3896, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 960, column: 10, scope: !3954)
!3963 = !DILocation(line: 945, column: 3, scope: !3896, inlinedAt: !3962)
!3964 = !DILocation(line: 945, column: 32, scope: !3896, inlinedAt: !3962)
!3965 = !{!3966}
!3966 = distinct !{!3966, !3967, !"quoting_options_from_style: argument 0"}
!3967 = distinct !{!3967, !"quoting_options_from_style"}
!3968 = !DILocation(line: 945, column: 36, scope: !3896, inlinedAt: !3962)
!3969 = !DILocation(line: 0, scope: !3912, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 945, column: 36, scope: !3896, inlinedAt: !3962)
!3971 = !DILocation(line: 185, column: 26, scope: !3912, inlinedAt: !3970)
!3972 = !DILocation(line: 186, column: 13, scope: !3921, inlinedAt: !3970)
!3973 = !DILocation(line: 186, column: 7, scope: !3912, inlinedAt: !3970)
!3974 = !DILocation(line: 187, column: 5, scope: !3921, inlinedAt: !3970)
!3975 = !DILocation(line: 188, column: 11, scope: !3912, inlinedAt: !3970)
!3976 = !DILocation(line: 946, column: 10, scope: !3896, inlinedAt: !3962)
!3977 = !DILocation(line: 947, column: 1, scope: !3896, inlinedAt: !3962)
!3978 = !DILocation(line: 960, column: 3, scope: !3954)
!3979 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !758, file: !758, line: 964, type: !3980, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3982)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!163, !126, !169, !166}
!3982 = !{!3983, !3984, !3985}
!3983 = !DILocalVariable(name: "s", arg: 1, scope: !3979, file: !758, line: 964, type: !126)
!3984 = !DILocalVariable(name: "arg", arg: 2, scope: !3979, file: !758, line: 964, type: !169)
!3985 = !DILocalVariable(name: "argsize", arg: 3, scope: !3979, file: !758, line: 964, type: !166)
!3986 = !DILocation(line: 0, scope: !3979)
!3987 = !DILocation(line: 0, scope: !3928, inlinedAt: !3988)
!3988 = distinct !DILocation(line: 966, column: 10, scope: !3979)
!3989 = !DILocation(line: 953, column: 3, scope: !3928, inlinedAt: !3988)
!3990 = !DILocation(line: 953, column: 32, scope: !3928, inlinedAt: !3988)
!3991 = !{!3992}
!3992 = distinct !{!3992, !3993, !"quoting_options_from_style: argument 0"}
!3993 = distinct !{!3993, !"quoting_options_from_style"}
!3994 = !DILocation(line: 953, column: 36, scope: !3928, inlinedAt: !3988)
!3995 = !DILocation(line: 0, scope: !3912, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 953, column: 36, scope: !3928, inlinedAt: !3988)
!3997 = !DILocation(line: 185, column: 26, scope: !3912, inlinedAt: !3996)
!3998 = !DILocation(line: 186, column: 13, scope: !3921, inlinedAt: !3996)
!3999 = !DILocation(line: 186, column: 7, scope: !3912, inlinedAt: !3996)
!4000 = !DILocation(line: 187, column: 5, scope: !3921, inlinedAt: !3996)
!4001 = !DILocation(line: 188, column: 11, scope: !3912, inlinedAt: !3996)
!4002 = !DILocation(line: 954, column: 10, scope: !3928, inlinedAt: !3988)
!4003 = !DILocation(line: 955, column: 1, scope: !3928, inlinedAt: !3988)
!4004 = !DILocation(line: 966, column: 3, scope: !3979)
!4005 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !758, file: !758, line: 970, type: !4006, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4008)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!163, !169, !166, !4}
!4008 = !{!4009, !4010, !4011, !4012}
!4009 = !DILocalVariable(name: "arg", arg: 1, scope: !4005, file: !758, line: 970, type: !169)
!4010 = !DILocalVariable(name: "argsize", arg: 2, scope: !4005, file: !758, line: 970, type: !166)
!4011 = !DILocalVariable(name: "ch", arg: 3, scope: !4005, file: !758, line: 970, type: !4)
!4012 = !DILocalVariable(name: "options", scope: !4005, file: !758, line: 972, type: !794)
!4013 = !DILocation(line: 0, scope: !4005)
!4014 = !DILocation(line: 972, column: 3, scope: !4005)
!4015 = !DILocation(line: 972, column: 26, scope: !4005)
!4016 = !DILocation(line: 973, column: 13, scope: !4005)
!4017 = !{i64 0, i64 4, !1157, i64 4, i64 4, !1148, i64 8, i64 32, !1157, i64 40, i64 8, !1065, i64 48, i64 8, !1065}
!4018 = !DILocation(line: 0, scope: !3007, inlinedAt: !4019)
!4019 = distinct !DILocation(line: 974, column: 3, scope: !4005)
!4020 = !DILocation(line: 147, column: 41, scope: !3007, inlinedAt: !4019)
!4021 = !DILocation(line: 147, column: 62, scope: !3007, inlinedAt: !4019)
!4022 = !DILocation(line: 147, column: 57, scope: !3007, inlinedAt: !4019)
!4023 = !DILocation(line: 148, column: 15, scope: !3007, inlinedAt: !4019)
!4024 = !DILocation(line: 149, column: 21, scope: !3007, inlinedAt: !4019)
!4025 = !DILocation(line: 149, column: 24, scope: !3007, inlinedAt: !4019)
!4026 = !DILocation(line: 150, column: 19, scope: !3007, inlinedAt: !4019)
!4027 = !DILocation(line: 150, column: 24, scope: !3007, inlinedAt: !4019)
!4028 = !DILocation(line: 150, column: 6, scope: !3007, inlinedAt: !4019)
!4029 = !DILocation(line: 975, column: 10, scope: !4005)
!4030 = !DILocation(line: 976, column: 1, scope: !4005)
!4031 = !DILocation(line: 975, column: 3, scope: !4005)
!4032 = distinct !DISubprogram(name: "quotearg_char", scope: !758, file: !758, line: 979, type: !4033, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4035)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!163, !169, !4}
!4035 = !{!4036, !4037}
!4036 = !DILocalVariable(name: "arg", arg: 1, scope: !4032, file: !758, line: 979, type: !169)
!4037 = !DILocalVariable(name: "ch", arg: 2, scope: !4032, file: !758, line: 979, type: !4)
!4038 = !DILocation(line: 0, scope: !4032)
!4039 = !DILocation(line: 0, scope: !4005, inlinedAt: !4040)
!4040 = distinct !DILocation(line: 981, column: 10, scope: !4032)
!4041 = !DILocation(line: 972, column: 3, scope: !4005, inlinedAt: !4040)
!4042 = !DILocation(line: 972, column: 26, scope: !4005, inlinedAt: !4040)
!4043 = !DILocation(line: 973, column: 13, scope: !4005, inlinedAt: !4040)
!4044 = !DILocation(line: 0, scope: !3007, inlinedAt: !4045)
!4045 = distinct !DILocation(line: 974, column: 3, scope: !4005, inlinedAt: !4040)
!4046 = !DILocation(line: 147, column: 41, scope: !3007, inlinedAt: !4045)
!4047 = !DILocation(line: 147, column: 62, scope: !3007, inlinedAt: !4045)
!4048 = !DILocation(line: 147, column: 57, scope: !3007, inlinedAt: !4045)
!4049 = !DILocation(line: 148, column: 15, scope: !3007, inlinedAt: !4045)
!4050 = !DILocation(line: 149, column: 21, scope: !3007, inlinedAt: !4045)
!4051 = !DILocation(line: 149, column: 24, scope: !3007, inlinedAt: !4045)
!4052 = !DILocation(line: 150, column: 19, scope: !3007, inlinedAt: !4045)
!4053 = !DILocation(line: 150, column: 24, scope: !3007, inlinedAt: !4045)
!4054 = !DILocation(line: 150, column: 6, scope: !3007, inlinedAt: !4045)
!4055 = !DILocation(line: 975, column: 10, scope: !4005, inlinedAt: !4040)
!4056 = !DILocation(line: 976, column: 1, scope: !4005, inlinedAt: !4040)
!4057 = !DILocation(line: 981, column: 3, scope: !4032)
!4058 = distinct !DISubprogram(name: "quotearg_colon", scope: !758, file: !758, line: 985, type: !1275, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4059)
!4059 = !{!4060}
!4060 = !DILocalVariable(name: "arg", arg: 1, scope: !4058, file: !758, line: 985, type: !169)
!4061 = !DILocation(line: 0, scope: !4058)
!4062 = !DILocation(line: 0, scope: !4032, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 987, column: 10, scope: !4058)
!4064 = !DILocation(line: 0, scope: !4005, inlinedAt: !4065)
!4065 = distinct !DILocation(line: 981, column: 10, scope: !4032, inlinedAt: !4063)
!4066 = !DILocation(line: 972, column: 3, scope: !4005, inlinedAt: !4065)
!4067 = !DILocation(line: 972, column: 26, scope: !4005, inlinedAt: !4065)
!4068 = !DILocation(line: 973, column: 13, scope: !4005, inlinedAt: !4065)
!4069 = !DILocation(line: 0, scope: !3007, inlinedAt: !4070)
!4070 = distinct !DILocation(line: 974, column: 3, scope: !4005, inlinedAt: !4065)
!4071 = !DILocation(line: 147, column: 57, scope: !3007, inlinedAt: !4070)
!4072 = !DILocation(line: 149, column: 21, scope: !3007, inlinedAt: !4070)
!4073 = !DILocation(line: 150, column: 6, scope: !3007, inlinedAt: !4070)
!4074 = !DILocation(line: 975, column: 10, scope: !4005, inlinedAt: !4065)
!4075 = !DILocation(line: 976, column: 1, scope: !4005, inlinedAt: !4065)
!4076 = !DILocation(line: 987, column: 3, scope: !4058)
!4077 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !758, file: !758, line: 991, type: !3886, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4078)
!4078 = !{!4079, !4080}
!4079 = !DILocalVariable(name: "arg", arg: 1, scope: !4077, file: !758, line: 991, type: !169)
!4080 = !DILocalVariable(name: "argsize", arg: 2, scope: !4077, file: !758, line: 991, type: !166)
!4081 = !DILocation(line: 0, scope: !4077)
!4082 = !DILocation(line: 0, scope: !4005, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 993, column: 10, scope: !4077)
!4084 = !DILocation(line: 972, column: 3, scope: !4005, inlinedAt: !4083)
!4085 = !DILocation(line: 972, column: 26, scope: !4005, inlinedAt: !4083)
!4086 = !DILocation(line: 973, column: 13, scope: !4005, inlinedAt: !4083)
!4087 = !DILocation(line: 0, scope: !3007, inlinedAt: !4088)
!4088 = distinct !DILocation(line: 974, column: 3, scope: !4005, inlinedAt: !4083)
!4089 = !DILocation(line: 147, column: 57, scope: !3007, inlinedAt: !4088)
!4090 = !DILocation(line: 149, column: 21, scope: !3007, inlinedAt: !4088)
!4091 = !DILocation(line: 150, column: 6, scope: !3007, inlinedAt: !4088)
!4092 = !DILocation(line: 975, column: 10, scope: !4005, inlinedAt: !4083)
!4093 = !DILocation(line: 976, column: 1, scope: !4005, inlinedAt: !4083)
!4094 = !DILocation(line: 993, column: 3, scope: !4077)
!4095 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !758, file: !758, line: 997, type: !3897, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4096)
!4096 = !{!4097, !4098, !4099, !4100}
!4097 = !DILocalVariable(name: "n", arg: 1, scope: !4095, file: !758, line: 997, type: !122)
!4098 = !DILocalVariable(name: "s", arg: 2, scope: !4095, file: !758, line: 997, type: !126)
!4099 = !DILocalVariable(name: "arg", arg: 3, scope: !4095, file: !758, line: 997, type: !169)
!4100 = !DILocalVariable(name: "options", scope: !4095, file: !758, line: 999, type: !794)
!4101 = !DILocation(line: 185, column: 26, scope: !3912, inlinedAt: !4102)
!4102 = distinct !DILocation(line: 1000, column: 13, scope: !4095)
!4103 = !DILocation(line: 0, scope: !4095)
!4104 = !DILocation(line: 999, column: 3, scope: !4095)
!4105 = !DILocation(line: 999, column: 26, scope: !4095)
!4106 = !DILocation(line: 0, scope: !3912, inlinedAt: !4102)
!4107 = !DILocation(line: 186, column: 13, scope: !3921, inlinedAt: !4102)
!4108 = !DILocation(line: 186, column: 7, scope: !3912, inlinedAt: !4102)
!4109 = !DILocation(line: 187, column: 5, scope: !3921, inlinedAt: !4102)
!4110 = !{!4111}
!4111 = distinct !{!4111, !4112, !"quoting_options_from_style: argument 0"}
!4112 = distinct !{!4112, !"quoting_options_from_style"}
!4113 = !DILocation(line: 1000, column: 13, scope: !4095)
!4114 = !DILocation(line: 0, scope: !3007, inlinedAt: !4115)
!4115 = distinct !DILocation(line: 1001, column: 3, scope: !4095)
!4116 = !DILocation(line: 147, column: 57, scope: !3007, inlinedAt: !4115)
!4117 = !DILocation(line: 149, column: 21, scope: !3007, inlinedAt: !4115)
!4118 = !DILocation(line: 150, column: 6, scope: !3007, inlinedAt: !4115)
!4119 = !DILocation(line: 1002, column: 10, scope: !4095)
!4120 = !DILocation(line: 1003, column: 1, scope: !4095)
!4121 = !DILocation(line: 1002, column: 3, scope: !4095)
!4122 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !758, file: !758, line: 1006, type: !4123, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4125)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!163, !122, !169, !169, !169}
!4125 = !{!4126, !4127, !4128, !4129}
!4126 = !DILocalVariable(name: "n", arg: 1, scope: !4122, file: !758, line: 1006, type: !122)
!4127 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4122, file: !758, line: 1006, type: !169)
!4128 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4122, file: !758, line: 1007, type: !169)
!4129 = !DILocalVariable(name: "arg", arg: 4, scope: !4122, file: !758, line: 1007, type: !169)
!4130 = !DILocation(line: 0, scope: !4122)
!4131 = !DILocalVariable(name: "n", arg: 1, scope: !4132, file: !758, line: 1014, type: !122)
!4132 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !758, file: !758, line: 1014, type: !4133, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4135)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!163, !122, !169, !169, !169, !166}
!4135 = !{!4131, !4136, !4137, !4138, !4139, !4140}
!4136 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4132, file: !758, line: 1014, type: !169)
!4137 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4132, file: !758, line: 1015, type: !169)
!4138 = !DILocalVariable(name: "arg", arg: 4, scope: !4132, file: !758, line: 1016, type: !169)
!4139 = !DILocalVariable(name: "argsize", arg: 5, scope: !4132, file: !758, line: 1016, type: !166)
!4140 = !DILocalVariable(name: "o", scope: !4132, file: !758, line: 1018, type: !794)
!4141 = !DILocation(line: 0, scope: !4132, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 1009, column: 10, scope: !4122)
!4143 = !DILocation(line: 1018, column: 3, scope: !4132, inlinedAt: !4142)
!4144 = !DILocation(line: 1018, column: 26, scope: !4132, inlinedAt: !4142)
!4145 = !DILocation(line: 1018, column: 30, scope: !4132, inlinedAt: !4142)
!4146 = !DILocation(line: 0, scope: !3047, inlinedAt: !4147)
!4147 = distinct !DILocation(line: 1019, column: 3, scope: !4132, inlinedAt: !4142)
!4148 = !DILocation(line: 174, column: 12, scope: !3047, inlinedAt: !4147)
!4149 = !DILocation(line: 175, column: 8, scope: !3060, inlinedAt: !4147)
!4150 = !DILocation(line: 175, column: 19, scope: !3060, inlinedAt: !4147)
!4151 = !DILocation(line: 176, column: 5, scope: !3060, inlinedAt: !4147)
!4152 = !DILocation(line: 177, column: 6, scope: !3047, inlinedAt: !4147)
!4153 = !DILocation(line: 177, column: 17, scope: !3047, inlinedAt: !4147)
!4154 = !DILocation(line: 178, column: 6, scope: !3047, inlinedAt: !4147)
!4155 = !DILocation(line: 178, column: 18, scope: !3047, inlinedAt: !4147)
!4156 = !DILocation(line: 1020, column: 10, scope: !4132, inlinedAt: !4142)
!4157 = !DILocation(line: 1021, column: 1, scope: !4132, inlinedAt: !4142)
!4158 = !DILocation(line: 1009, column: 3, scope: !4122)
!4159 = !DILocation(line: 0, scope: !4132)
!4160 = !DILocation(line: 1018, column: 3, scope: !4132)
!4161 = !DILocation(line: 1018, column: 26, scope: !4132)
!4162 = !DILocation(line: 1018, column: 30, scope: !4132)
!4163 = !DILocation(line: 0, scope: !3047, inlinedAt: !4164)
!4164 = distinct !DILocation(line: 1019, column: 3, scope: !4132)
!4165 = !DILocation(line: 174, column: 12, scope: !3047, inlinedAt: !4164)
!4166 = !DILocation(line: 175, column: 8, scope: !3060, inlinedAt: !4164)
!4167 = !DILocation(line: 175, column: 19, scope: !3060, inlinedAt: !4164)
!4168 = !DILocation(line: 176, column: 5, scope: !3060, inlinedAt: !4164)
!4169 = !DILocation(line: 177, column: 6, scope: !3047, inlinedAt: !4164)
!4170 = !DILocation(line: 177, column: 17, scope: !3047, inlinedAt: !4164)
!4171 = !DILocation(line: 178, column: 6, scope: !3047, inlinedAt: !4164)
!4172 = !DILocation(line: 178, column: 18, scope: !3047, inlinedAt: !4164)
!4173 = !DILocation(line: 1020, column: 10, scope: !4132)
!4174 = !DILocation(line: 1021, column: 1, scope: !4132)
!4175 = !DILocation(line: 1020, column: 3, scope: !4132)
!4176 = distinct !DISubprogram(name: "quotearg_custom", scope: !758, file: !758, line: 1024, type: !4177, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4179)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!163, !169, !169, !169}
!4179 = !{!4180, !4181, !4182}
!4180 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4176, file: !758, line: 1024, type: !169)
!4181 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4176, file: !758, line: 1024, type: !169)
!4182 = !DILocalVariable(name: "arg", arg: 3, scope: !4176, file: !758, line: 1025, type: !169)
!4183 = !DILocation(line: 0, scope: !4176)
!4184 = !DILocation(line: 0, scope: !4122, inlinedAt: !4185)
!4185 = distinct !DILocation(line: 1027, column: 10, scope: !4176)
!4186 = !DILocation(line: 0, scope: !4132, inlinedAt: !4187)
!4187 = distinct !DILocation(line: 1009, column: 10, scope: !4122, inlinedAt: !4185)
!4188 = !DILocation(line: 1018, column: 3, scope: !4132, inlinedAt: !4187)
!4189 = !DILocation(line: 1018, column: 26, scope: !4132, inlinedAt: !4187)
!4190 = !DILocation(line: 1018, column: 30, scope: !4132, inlinedAt: !4187)
!4191 = !DILocation(line: 0, scope: !3047, inlinedAt: !4192)
!4192 = distinct !DILocation(line: 1019, column: 3, scope: !4132, inlinedAt: !4187)
!4193 = !DILocation(line: 174, column: 12, scope: !3047, inlinedAt: !4192)
!4194 = !DILocation(line: 175, column: 8, scope: !3060, inlinedAt: !4192)
!4195 = !DILocation(line: 175, column: 19, scope: !3060, inlinedAt: !4192)
!4196 = !DILocation(line: 176, column: 5, scope: !3060, inlinedAt: !4192)
!4197 = !DILocation(line: 177, column: 6, scope: !3047, inlinedAt: !4192)
!4198 = !DILocation(line: 177, column: 17, scope: !3047, inlinedAt: !4192)
!4199 = !DILocation(line: 178, column: 6, scope: !3047, inlinedAt: !4192)
!4200 = !DILocation(line: 178, column: 18, scope: !3047, inlinedAt: !4192)
!4201 = !DILocation(line: 1020, column: 10, scope: !4132, inlinedAt: !4187)
!4202 = !DILocation(line: 1021, column: 1, scope: !4132, inlinedAt: !4187)
!4203 = !DILocation(line: 1027, column: 3, scope: !4176)
!4204 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !758, file: !758, line: 1031, type: !4205, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4207)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!163, !169, !169, !169, !166}
!4207 = !{!4208, !4209, !4210, !4211}
!4208 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4204, file: !758, line: 1031, type: !169)
!4209 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4204, file: !758, line: 1031, type: !169)
!4210 = !DILocalVariable(name: "arg", arg: 3, scope: !4204, file: !758, line: 1032, type: !169)
!4211 = !DILocalVariable(name: "argsize", arg: 4, scope: !4204, file: !758, line: 1032, type: !166)
!4212 = !DILocation(line: 0, scope: !4204)
!4213 = !DILocation(line: 0, scope: !4132, inlinedAt: !4214)
!4214 = distinct !DILocation(line: 1034, column: 10, scope: !4204)
!4215 = !DILocation(line: 1018, column: 3, scope: !4132, inlinedAt: !4214)
!4216 = !DILocation(line: 1018, column: 26, scope: !4132, inlinedAt: !4214)
!4217 = !DILocation(line: 1018, column: 30, scope: !4132, inlinedAt: !4214)
!4218 = !DILocation(line: 0, scope: !3047, inlinedAt: !4219)
!4219 = distinct !DILocation(line: 1019, column: 3, scope: !4132, inlinedAt: !4214)
!4220 = !DILocation(line: 174, column: 12, scope: !3047, inlinedAt: !4219)
!4221 = !DILocation(line: 175, column: 8, scope: !3060, inlinedAt: !4219)
!4222 = !DILocation(line: 175, column: 19, scope: !3060, inlinedAt: !4219)
!4223 = !DILocation(line: 176, column: 5, scope: !3060, inlinedAt: !4219)
!4224 = !DILocation(line: 177, column: 6, scope: !3047, inlinedAt: !4219)
!4225 = !DILocation(line: 177, column: 17, scope: !3047, inlinedAt: !4219)
!4226 = !DILocation(line: 178, column: 6, scope: !3047, inlinedAt: !4219)
!4227 = !DILocation(line: 178, column: 18, scope: !3047, inlinedAt: !4219)
!4228 = !DILocation(line: 1020, column: 10, scope: !4132, inlinedAt: !4214)
!4229 = !DILocation(line: 1021, column: 1, scope: !4132, inlinedAt: !4214)
!4230 = !DILocation(line: 1034, column: 3, scope: !4204)
!4231 = distinct !DISubprogram(name: "quote_n_mem", scope: !758, file: !758, line: 1049, type: !4232, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4234)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!169, !122, !169, !166}
!4234 = !{!4235, !4236, !4237}
!4235 = !DILocalVariable(name: "n", arg: 1, scope: !4231, file: !758, line: 1049, type: !122)
!4236 = !DILocalVariable(name: "arg", arg: 2, scope: !4231, file: !758, line: 1049, type: !169)
!4237 = !DILocalVariable(name: "argsize", arg: 3, scope: !4231, file: !758, line: 1049, type: !166)
!4238 = !DILocation(line: 0, scope: !4231)
!4239 = !DILocation(line: 1051, column: 10, scope: !4231)
!4240 = !DILocation(line: 1051, column: 3, scope: !4231)
!4241 = distinct !DISubprogram(name: "quote_mem", scope: !758, file: !758, line: 1055, type: !4242, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4244)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!169, !169, !166}
!4244 = !{!4245, !4246}
!4245 = !DILocalVariable(name: "arg", arg: 1, scope: !4241, file: !758, line: 1055, type: !169)
!4246 = !DILocalVariable(name: "argsize", arg: 2, scope: !4241, file: !758, line: 1055, type: !166)
!4247 = !DILocation(line: 0, scope: !4241)
!4248 = !DILocation(line: 0, scope: !4231, inlinedAt: !4249)
!4249 = distinct !DILocation(line: 1057, column: 10, scope: !4241)
!4250 = !DILocation(line: 1051, column: 10, scope: !4231, inlinedAt: !4249)
!4251 = !DILocation(line: 1057, column: 3, scope: !4241)
!4252 = distinct !DISubprogram(name: "quote_n", scope: !758, file: !758, line: 1061, type: !4253, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4255)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!169, !122, !169}
!4255 = !{!4256, !4257}
!4256 = !DILocalVariable(name: "n", arg: 1, scope: !4252, file: !758, line: 1061, type: !122)
!4257 = !DILocalVariable(name: "arg", arg: 2, scope: !4252, file: !758, line: 1061, type: !169)
!4258 = !DILocation(line: 0, scope: !4252)
!4259 = !DILocation(line: 0, scope: !4231, inlinedAt: !4260)
!4260 = distinct !DILocation(line: 1063, column: 10, scope: !4252)
!4261 = !DILocation(line: 1051, column: 10, scope: !4231, inlinedAt: !4260)
!4262 = !DILocation(line: 1063, column: 3, scope: !4252)
!4263 = distinct !DISubprogram(name: "quote", scope: !758, file: !758, line: 1067, type: !1514, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4264)
!4264 = !{!4265}
!4265 = !DILocalVariable(name: "arg", arg: 1, scope: !4263, file: !758, line: 1067, type: !169)
!4266 = !DILocation(line: 0, scope: !4263)
!4267 = !DILocation(line: 0, scope: !4252, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 1069, column: 10, scope: !4263)
!4269 = !DILocation(line: 0, scope: !4231, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 1063, column: 10, scope: !4252, inlinedAt: !4268)
!4271 = !DILocation(line: 1051, column: 10, scope: !4231, inlinedAt: !4270)
!4272 = !DILocation(line: 1069, column: 3, scope: !4263)
!4273 = distinct !DISubprogram(name: "str2sig", scope: !858, file: !858, line: 321, type: !4274, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !4276)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!122, !169, !524}
!4276 = !{!4277, !4278}
!4277 = !DILocalVariable(name: "signame", arg: 1, scope: !4273, file: !858, line: 321, type: !169)
!4278 = !DILocalVariable(name: "signum", arg: 2, scope: !4273, file: !858, line: 321, type: !524)
!4279 = !DILocation(line: 0, scope: !4273)
!4280 = !DILocalVariable(name: "signame", arg: 1, scope: !4281, file: !858, line: 278, type: !169)
!4281 = distinct !DISubprogram(name: "str2signum", scope: !858, file: !858, line: 278, type: !2391, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !4282)
!4282 = !{!4280, !4283, !4286, !4287, !4290, !4292, !4293, !4296, !4297, !4300}
!4283 = !DILocalVariable(name: "endp", scope: !4284, file: !858, line: 282, type: !163)
!4284 = distinct !DILexicalBlock(scope: !4285, file: !858, line: 281, column: 5)
!4285 = distinct !DILexicalBlock(scope: !4281, file: !858, line: 280, column: 7)
!4286 = !DILocalVariable(name: "n", scope: !4284, file: !858, line: 283, type: !174)
!4287 = !DILocalVariable(name: "i", scope: !4288, file: !858, line: 289, type: !109)
!4288 = distinct !DILexicalBlock(scope: !4289, file: !858, line: 289, column: 7)
!4289 = distinct !DILexicalBlock(scope: !4285, file: !858, line: 288, column: 5)
!4290 = !DILocalVariable(name: "rtmin", scope: !4291, file: !858, line: 294, type: !122)
!4291 = distinct !DILexicalBlock(scope: !4289, file: !858, line: 293, column: 7)
!4292 = !DILocalVariable(name: "rtmax", scope: !4291, file: !858, line: 295, type: !122)
!4293 = !DILocalVariable(name: "endp", scope: !4294, file: !858, line: 299, type: !163)
!4294 = distinct !DILexicalBlock(scope: !4295, file: !858, line: 298, column: 11)
!4295 = distinct !DILexicalBlock(scope: !4291, file: !858, line: 297, column: 13)
!4296 = !DILocalVariable(name: "n", scope: !4294, file: !858, line: 300, type: !174)
!4297 = !DILocalVariable(name: "endp", scope: !4298, file: !858, line: 306, type: !163)
!4298 = distinct !DILexicalBlock(scope: !4299, file: !858, line: 305, column: 11)
!4299 = distinct !DILexicalBlock(scope: !4295, file: !858, line: 304, column: 18)
!4300 = !DILocalVariable(name: "n", scope: !4298, file: !858, line: 307, type: !174)
!4301 = !DILocation(line: 0, scope: !4281, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 323, column: 13, scope: !4273)
!4303 = !DILocation(line: 280, column: 7, scope: !4285, inlinedAt: !4302)
!4304 = !DILocation(line: 280, column: 7, scope: !4281, inlinedAt: !4302)
!4305 = !DILocation(line: 282, column: 7, scope: !4284, inlinedAt: !4302)
!4306 = !DILocation(line: 0, scope: !4284, inlinedAt: !4302)
!4307 = !DILocation(line: 283, column: 20, scope: !4284, inlinedAt: !4302)
!4308 = !DILocation(line: 284, column: 14, scope: !4309, inlinedAt: !4302)
!4309 = distinct !DILexicalBlock(scope: !4284, file: !858, line: 284, column: 11)
!4310 = !DILocation(line: 284, column: 13, scope: !4309, inlinedAt: !4302)
!4311 = !DILocation(line: 284, column: 19, scope: !4309, inlinedAt: !4302)
!4312 = !DILocation(line: 286, column: 5, scope: !4285, inlinedAt: !4302)
!4313 = !DILocation(line: 0, scope: !4288, inlinedAt: !4302)
!4314 = !DILocation(line: 290, column: 37, scope: !4315, inlinedAt: !4302)
!4315 = distinct !DILexicalBlock(scope: !4316, file: !858, line: 290, column: 13)
!4316 = distinct !DILexicalBlock(scope: !4288, file: !858, line: 289, column: 7)
!4317 = !DILocalVariable(name: "__s1", arg: 1, scope: !4318, file: !1161, line: 1359, type: !169)
!4318 = distinct !DISubprogram(name: "streq", scope: !1161, file: !1161, line: 1359, type: !1162, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !4319)
!4319 = !{!4317, !4320}
!4320 = !DILocalVariable(name: "__s2", arg: 2, scope: !4318, file: !1161, line: 1359, type: !169)
!4321 = !DILocation(line: 0, scope: !4318, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 290, column: 13, scope: !4315, inlinedAt: !4302)
!4323 = !DILocation(line: 1361, column: 11, scope: !4318, inlinedAt: !4322)
!4324 = !DILocation(line: 1361, column: 10, scope: !4318, inlinedAt: !4322)
!4325 = !DILocation(line: 290, column: 13, scope: !4316, inlinedAt: !4302)
!4326 = !DILocation(line: 289, column: 54, scope: !4316, inlinedAt: !4302)
!4327 = !DILocation(line: 289, column: 34, scope: !4316, inlinedAt: !4302)
!4328 = !DILocation(line: 289, column: 7, scope: !4288, inlinedAt: !4302)
!4329 = distinct !{!4329, !4328, !4330, !1195}
!4330 = !DILocation(line: 291, column: 35, scope: !4288, inlinedAt: !4302)
!4331 = !DILocation(line: 289, column: 32, scope: !4316, inlinedAt: !4302)
!4332 = !DILocation(line: 290, column: 20, scope: !4315, inlinedAt: !4302)
!4333 = !DILocation(line: 291, column: 35, scope: !4315, inlinedAt: !4302)
!4334 = !{!4335, !1149, i64 0}
!4335 = !{!"numname", !1149, i64 0, !1067, i64 4}
!4336 = !DILocation(line: 294, column: 21, scope: !4291, inlinedAt: !4302)
!4337 = !DILocation(line: 0, scope: !4291, inlinedAt: !4302)
!4338 = !DILocation(line: 295, column: 21, scope: !4291, inlinedAt: !4302)
!4339 = !DILocation(line: 297, column: 15, scope: !4295, inlinedAt: !4302)
!4340 = !DILocation(line: 297, column: 23, scope: !4295, inlinedAt: !4302)
!4341 = !DILocation(line: 297, column: 26, scope: !4295, inlinedAt: !4302)
!4342 = !DILocation(line: 297, column: 56, scope: !4295, inlinedAt: !4302)
!4343 = !DILocation(line: 297, column: 13, scope: !4291, inlinedAt: !4302)
!4344 = !DILocation(line: 299, column: 13, scope: !4294, inlinedAt: !4302)
!4345 = !DILocation(line: 300, column: 42, scope: !4294, inlinedAt: !4302)
!4346 = !DILocation(line: 0, scope: !4294, inlinedAt: !4302)
!4347 = !DILocation(line: 300, column: 26, scope: !4294, inlinedAt: !4302)
!4348 = !DILocation(line: 301, column: 20, scope: !4349, inlinedAt: !4302)
!4349 = distinct !DILexicalBlock(scope: !4294, file: !858, line: 301, column: 17)
!4350 = !DILocation(line: 301, column: 19, scope: !4349, inlinedAt: !4302)
!4351 = !DILocation(line: 301, column: 25, scope: !4349, inlinedAt: !4302)
!4352 = !DILocation(line: 301, column: 49, scope: !4349, inlinedAt: !4302)
!4353 = !DILocation(line: 301, column: 43, scope: !4349, inlinedAt: !4302)
!4354 = !DILocation(line: 301, column: 40, scope: !4349, inlinedAt: !4302)
!4355 = !DILocation(line: 301, column: 17, scope: !4294, inlinedAt: !4302)
!4356 = !DILocation(line: 303, column: 11, scope: !4295, inlinedAt: !4302)
!4357 = !DILocation(line: 302, column: 22, scope: !4349, inlinedAt: !4302)
!4358 = !DILocation(line: 304, column: 20, scope: !4299, inlinedAt: !4302)
!4359 = !DILocation(line: 304, column: 28, scope: !4299, inlinedAt: !4302)
!4360 = !DILocation(line: 304, column: 31, scope: !4299, inlinedAt: !4302)
!4361 = !DILocation(line: 304, column: 61, scope: !4299, inlinedAt: !4302)
!4362 = !DILocation(line: 304, column: 18, scope: !4295, inlinedAt: !4302)
!4363 = !DILocation(line: 306, column: 13, scope: !4298, inlinedAt: !4302)
!4364 = !DILocation(line: 307, column: 42, scope: !4298, inlinedAt: !4302)
!4365 = !DILocation(line: 0, scope: !4298, inlinedAt: !4302)
!4366 = !DILocation(line: 307, column: 26, scope: !4298, inlinedAt: !4302)
!4367 = !DILocation(line: 308, column: 20, scope: !4368, inlinedAt: !4302)
!4368 = distinct !DILexicalBlock(scope: !4298, file: !858, line: 308, column: 17)
!4369 = !DILocation(line: 308, column: 19, scope: !4368, inlinedAt: !4302)
!4370 = !DILocation(line: 308, column: 25, scope: !4368, inlinedAt: !4302)
!4371 = !DILocation(line: 308, column: 34, scope: !4368, inlinedAt: !4302)
!4372 = !DILocation(line: 308, column: 28, scope: !4368, inlinedAt: !4302)
!4373 = !DILocation(line: 308, column: 42, scope: !4368, inlinedAt: !4302)
!4374 = !DILocation(line: 308, column: 47, scope: !4368, inlinedAt: !4302)
!4375 = !DILocation(line: 310, column: 11, scope: !4299, inlinedAt: !4302)
!4376 = !DILocation(line: 309, column: 22, scope: !4368, inlinedAt: !4302)
!4377 = !DILocation(line: 314, column: 3, scope: !4281, inlinedAt: !4302)
!4378 = !DILocation(line: 323, column: 11, scope: !4273)
!4379 = !DILocation(line: 324, column: 10, scope: !4273)
!4380 = !DILocation(line: 324, column: 3, scope: !4273)
!4381 = !DISubprogram(name: "__libc_current_sigrtmin", scope: !176, file: !176, line: 383, type: !4382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!122}
!4384 = !DISubprogram(name: "__libc_current_sigrtmax", scope: !176, file: !176, line: 385, type: !4382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!4385 = distinct !DISubprogram(name: "sig2str", scope: !858, file: !858, line: 332, type: !4386, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !4388)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!122, !122, !163}
!4388 = !{!4389, !4390, !4391, !4393, !4395, !4396, !4397}
!4389 = !DILocalVariable(name: "signum", arg: 1, scope: !4385, file: !858, line: 332, type: !122)
!4390 = !DILocalVariable(name: "signame", arg: 2, scope: !4385, file: !858, line: 332, type: !163)
!4391 = !DILocalVariable(name: "i", scope: !4392, file: !858, line: 334, type: !109)
!4392 = distinct !DILexicalBlock(scope: !4385, file: !858, line: 334, column: 3)
!4393 = !DILocalVariable(name: "rtmin", scope: !4394, file: !858, line: 342, type: !122)
!4394 = distinct !DILexicalBlock(scope: !4385, file: !858, line: 341, column: 3)
!4395 = !DILocalVariable(name: "rtmax", scope: !4394, file: !858, line: 343, type: !122)
!4396 = !DILocalVariable(name: "base", scope: !4394, file: !858, line: 348, type: !122)
!4397 = !DILocalVariable(name: "delta", scope: !4394, file: !858, line: 360, type: !122)
!4398 = !DILocation(line: 0, scope: !4385)
!4399 = !DILocation(line: 0, scope: !4392)
!4400 = !DILocation(line: 334, column: 3, scope: !4392)
!4401 = !DILocation(line: 335, column: 9, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4403, file: !858, line: 335, column: 9)
!4403 = distinct !DILexicalBlock(scope: !4392, file: !858, line: 334, column: 3)
!4404 = !DILocation(line: 335, column: 26, scope: !4402)
!4405 = !DILocation(line: 335, column: 30, scope: !4402)
!4406 = !DILocation(line: 335, column: 9, scope: !4403)
!4407 = !DILocation(line: 334, column: 50, scope: !4403)
!4408 = !DILocation(line: 334, column: 30, scope: !4403)
!4409 = distinct !{!4409, !4400, !4410, !1195}
!4410 = !DILocation(line: 339, column: 7, scope: !4392)
!4411 = !DILocation(line: 334, column: 28, scope: !4403)
!4412 = !DILocation(line: 337, column: 43, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4402, file: !858, line: 336, column: 7)
!4414 = !DILocalVariable(name: "__dest", arg: 1, scope: !4415, file: !1566, line: 77, type: !2439)
!4415 = distinct !DISubprogram(name: "strcpy", scope: !1566, file: !1566, line: 77, type: !2437, scopeLine: 78, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !4416)
!4416 = !{!4414, !4417}
!4417 = !DILocalVariable(name: "__src", arg: 2, scope: !4415, file: !1566, line: 77, type: !1138)
!4418 = !DILocation(line: 0, scope: !4415, inlinedAt: !4419)
!4419 = distinct !DILocation(line: 337, column: 9, scope: !4413)
!4420 = !DILocation(line: 79, column: 10, scope: !4415, inlinedAt: !4419)
!4421 = !DILocation(line: 342, column: 17, scope: !4394)
!4422 = !DILocation(line: 0, scope: !4394)
!4423 = !DILocation(line: 343, column: 17, scope: !4394)
!4424 = !DILocation(line: 345, column: 18, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4394, file: !858, line: 345, column: 9)
!4426 = !DILocation(line: 345, column: 28, scope: !4425)
!4427 = !DILocation(line: 349, column: 34, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4394, file: !858, line: 349, column: 9)
!4429 = !DILocation(line: 349, column: 43, scope: !4428)
!4430 = !DILocation(line: 349, column: 25, scope: !4428)
!4431 = !DILocation(line: 349, column: 16, scope: !4428)
!4432 = !DILocation(line: 0, scope: !4415, inlinedAt: !4433)
!4433 = distinct !DILocation(line: 356, column: 9, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4428, file: !858, line: 355, column: 7)
!4435 = !DILocation(line: 0, scope: !4415, inlinedAt: !4436)
!4436 = distinct !DILocation(line: 351, column: 9, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4428, file: !858, line: 350, column: 7)
!4438 = !DILocation(line: 0, scope: !4428)
!4439 = !DILocation(line: 361, column: 15, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4394, file: !858, line: 361, column: 9)
!4441 = !DILocation(line: 361, column: 9, scope: !4394)
!4442 = !DILocation(line: 360, column: 24, scope: !4394)
!4443 = !DILocation(line: 362, column: 7, scope: !4440)
!4444 = !DILocation(line: 365, column: 1, scope: !4385)
!4445 = !DISubprogram(name: "__builtin___sprintf_chk", scope: !858, file: !858, line: 362, type: !4446, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!122, !163, !122, !168, !169, null}
!4448 = distinct !DISubprogram(name: "version_etc_arn", scope: !877, file: !877, line: 61, type: !4449, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !990, retainedNodes: !4486)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{null, !4451, !169, !169, !169, !4485, !166}
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !4453)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !4454)
!4454 = !{!4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4453, file: !330, line: 51, baseType: !122, size: 32)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4453, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4453, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4453, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4453, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4453, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4453, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4453, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4453, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4453, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4453, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4453, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4453, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4453, file: !330, line: 70, baseType: !4469, size: 64, offset: 832)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4453, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4453, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4453, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4453, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4453, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4453, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4453, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4453, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4453, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4453, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4453, file: !330, line: 93, baseType: !4469, size: 64, offset: 1344)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4453, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4453, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4453, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4453, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!4486 = !{!4487, !4488, !4489, !4490, !4491, !4492}
!4487 = !DILocalVariable(name: "stream", arg: 1, scope: !4448, file: !877, line: 61, type: !4451)
!4488 = !DILocalVariable(name: "command_name", arg: 2, scope: !4448, file: !877, line: 62, type: !169)
!4489 = !DILocalVariable(name: "package", arg: 3, scope: !4448, file: !877, line: 62, type: !169)
!4490 = !DILocalVariable(name: "version", arg: 4, scope: !4448, file: !877, line: 63, type: !169)
!4491 = !DILocalVariable(name: "authors", arg: 5, scope: !4448, file: !877, line: 64, type: !4485)
!4492 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4448, file: !877, line: 64, type: !166)
!4493 = !DILocation(line: 0, scope: !4448)
!4494 = !DILocation(line: 66, column: 7, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4448, file: !877, line: 66, column: 7)
!4496 = !DILocation(line: 66, column: 7, scope: !4448)
!4497 = !DILocation(line: 67, column: 5, scope: !4495)
!4498 = !DILocation(line: 69, column: 5, scope: !4495)
!4499 = !DILocation(line: 83, column: 3, scope: !4448)
!4500 = !DILocation(line: 85, column: 3, scope: !4448)
!4501 = !DILocation(line: 88, column: 3, scope: !4448)
!4502 = !DILocation(line: 95, column: 3, scope: !4448)
!4503 = !DILocation(line: 97, column: 3, scope: !4448)
!4504 = !DILocation(line: 105, column: 7, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4448, file: !877, line: 98, column: 5)
!4506 = !DILocation(line: 106, column: 7, scope: !4505)
!4507 = !DILocation(line: 109, column: 7, scope: !4505)
!4508 = !DILocation(line: 110, column: 7, scope: !4505)
!4509 = !DILocation(line: 113, column: 7, scope: !4505)
!4510 = !DILocation(line: 115, column: 7, scope: !4505)
!4511 = !DILocation(line: 120, column: 7, scope: !4505)
!4512 = !DILocation(line: 122, column: 7, scope: !4505)
!4513 = !DILocation(line: 127, column: 7, scope: !4505)
!4514 = !DILocation(line: 129, column: 7, scope: !4505)
!4515 = !DILocation(line: 134, column: 7, scope: !4505)
!4516 = !DILocation(line: 137, column: 7, scope: !4505)
!4517 = !DILocation(line: 142, column: 7, scope: !4505)
!4518 = !DILocation(line: 145, column: 7, scope: !4505)
!4519 = !DILocation(line: 150, column: 7, scope: !4505)
!4520 = !DILocation(line: 154, column: 7, scope: !4505)
!4521 = !DILocation(line: 159, column: 7, scope: !4505)
!4522 = !DILocation(line: 163, column: 7, scope: !4505)
!4523 = !DILocation(line: 170, column: 7, scope: !4505)
!4524 = !DILocation(line: 174, column: 7, scope: !4505)
!4525 = !DILocation(line: 176, column: 1, scope: !4448)
!4526 = distinct !DISubprogram(name: "version_etc_ar", scope: !877, file: !877, line: 183, type: !4527, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !990, retainedNodes: !4529)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{null, !4451, !169, !169, !169, !4485}
!4529 = !{!4530, !4531, !4532, !4533, !4534, !4535}
!4530 = !DILocalVariable(name: "stream", arg: 1, scope: !4526, file: !877, line: 183, type: !4451)
!4531 = !DILocalVariable(name: "command_name", arg: 2, scope: !4526, file: !877, line: 184, type: !169)
!4532 = !DILocalVariable(name: "package", arg: 3, scope: !4526, file: !877, line: 184, type: !169)
!4533 = !DILocalVariable(name: "version", arg: 4, scope: !4526, file: !877, line: 185, type: !169)
!4534 = !DILocalVariable(name: "authors", arg: 5, scope: !4526, file: !877, line: 185, type: !4485)
!4535 = !DILocalVariable(name: "n_authors", scope: !4526, file: !877, line: 187, type: !166)
!4536 = !DILocation(line: 0, scope: !4526)
!4537 = !DILocation(line: 189, column: 8, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4526, file: !877, line: 189, column: 3)
!4539 = !DILocation(line: 189, scope: !4538)
!4540 = !DILocation(line: 189, column: 23, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4538, file: !877, line: 189, column: 3)
!4542 = !DILocation(line: 189, column: 3, scope: !4538)
!4543 = !DILocation(line: 189, column: 52, scope: !4541)
!4544 = distinct !{!4544, !4542, !4545, !1195}
!4545 = !DILocation(line: 190, column: 5, scope: !4538)
!4546 = !DILocation(line: 191, column: 3, scope: !4526)
!4547 = !DILocation(line: 192, column: 1, scope: !4526)
!4548 = distinct !DISubprogram(name: "version_etc_va", scope: !877, file: !877, line: 199, type: !4549, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !990, retainedNodes: !4559)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{null, !4451, !169, !169, !169, !4551}
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4553)
!4553 = !{!4554, !4556, !4557, !4558}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4552, file: !4555, line: 192, baseType: !109, size: 32)
!4555 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4552, file: !4555, line: 192, baseType: !109, size: 32, offset: 32)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4552, file: !4555, line: 192, baseType: !164, size: 64, offset: 64)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4552, file: !4555, line: 192, baseType: !164, size: 64, offset: 128)
!4559 = !{!4560, !4561, !4562, !4563, !4564, !4565, !4566}
!4560 = !DILocalVariable(name: "stream", arg: 1, scope: !4548, file: !877, line: 199, type: !4451)
!4561 = !DILocalVariable(name: "command_name", arg: 2, scope: !4548, file: !877, line: 200, type: !169)
!4562 = !DILocalVariable(name: "package", arg: 3, scope: !4548, file: !877, line: 200, type: !169)
!4563 = !DILocalVariable(name: "version", arg: 4, scope: !4548, file: !877, line: 201, type: !169)
!4564 = !DILocalVariable(name: "authors", arg: 5, scope: !4548, file: !877, line: 201, type: !4551)
!4565 = !DILocalVariable(name: "n_authors", scope: !4548, file: !877, line: 203, type: !166)
!4566 = !DILocalVariable(name: "authtab", scope: !4548, file: !877, line: 204, type: !4567)
!4567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 640, elements: !96)
!4568 = !DILocation(line: 0, scope: !4548)
!4569 = !DILocation(line: 204, column: 3, scope: !4548)
!4570 = !DILocation(line: 204, column: 15, scope: !4548)
!4571 = !DILocation(line: 208, column: 35, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4573, file: !877, line: 206, column: 3)
!4573 = distinct !DILexicalBlock(scope: !4548, file: !877, line: 206, column: 3)
!4574 = !DILocation(line: 208, column: 33, scope: !4572)
!4575 = !DILocation(line: 208, column: 67, scope: !4572)
!4576 = !DILocation(line: 206, column: 3, scope: !4573)
!4577 = !DILocation(line: 208, column: 14, scope: !4572)
!4578 = !DILocation(line: 0, scope: !4573)
!4579 = !DILocation(line: 211, column: 3, scope: !4548)
!4580 = !DILocation(line: 213, column: 1, scope: !4548)
!4581 = distinct !DISubprogram(name: "version_etc", scope: !877, file: !877, line: 230, type: !4582, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !990, retainedNodes: !4584)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{null, !4451, !169, !169, !169, null}
!4584 = !{!4585, !4586, !4587, !4588, !4589}
!4585 = !DILocalVariable(name: "stream", arg: 1, scope: !4581, file: !877, line: 230, type: !4451)
!4586 = !DILocalVariable(name: "command_name", arg: 2, scope: !4581, file: !877, line: 231, type: !169)
!4587 = !DILocalVariable(name: "package", arg: 3, scope: !4581, file: !877, line: 231, type: !169)
!4588 = !DILocalVariable(name: "version", arg: 4, scope: !4581, file: !877, line: 232, type: !169)
!4589 = !DILocalVariable(name: "authors", scope: !4581, file: !877, line: 234, type: !4590)
!4590 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1143, line: 52, baseType: !4591)
!4591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2835, line: 14, baseType: !4592)
!4592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4555, baseType: !4593)
!4593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4552, size: 192, elements: !91)
!4594 = !DILocation(line: 0, scope: !4581)
!4595 = !DILocation(line: 234, column: 3, scope: !4581)
!4596 = !DILocation(line: 234, column: 11, scope: !4581)
!4597 = !DILocation(line: 235, column: 3, scope: !4581)
!4598 = !DILocation(line: 236, column: 3, scope: !4581)
!4599 = !DILocation(line: 237, column: 3, scope: !4581)
!4600 = !DILocation(line: 238, column: 1, scope: !4581)
!4601 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !877, file: !877, line: 241, type: !713, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !990, retainedNodes: !1074)
!4602 = !DILocation(line: 243, column: 3, scope: !4601)
!4603 = !DILocation(line: 248, column: 3, scope: !4601)
!4604 = !DILocation(line: 254, column: 3, scope: !4601)
!4605 = !DILocation(line: 259, column: 3, scope: !4601)
!4606 = !DILocation(line: 261, column: 1, scope: !4601)
!4607 = distinct !DISubprogram(name: "xnrealloc", scope: !4608, file: !4608, line: 147, type: !4609, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4611)
!4608 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!164, !164, !166, !166}
!4611 = !{!4612, !4613, !4614}
!4612 = !DILocalVariable(name: "p", arg: 1, scope: !4607, file: !4608, line: 147, type: !164)
!4613 = !DILocalVariable(name: "n", arg: 2, scope: !4607, file: !4608, line: 147, type: !166)
!4614 = !DILocalVariable(name: "s", arg: 3, scope: !4607, file: !4608, line: 147, type: !166)
!4615 = !DILocation(line: 0, scope: !4607)
!4616 = !DILocalVariable(name: "p", arg: 1, scope: !4617, file: !998, line: 83, type: !164)
!4617 = distinct !DISubprogram(name: "xreallocarray", scope: !998, file: !998, line: 83, type: !4609, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4618)
!4618 = !{!4616, !4619, !4620}
!4619 = !DILocalVariable(name: "n", arg: 2, scope: !4617, file: !998, line: 83, type: !166)
!4620 = !DILocalVariable(name: "s", arg: 3, scope: !4617, file: !998, line: 83, type: !166)
!4621 = !DILocation(line: 0, scope: !4617, inlinedAt: !4622)
!4622 = distinct !DILocation(line: 149, column: 10, scope: !4607)
!4623 = !DILocation(line: 85, column: 25, scope: !4617, inlinedAt: !4622)
!4624 = !DILocalVariable(name: "p", arg: 1, scope: !4625, file: !998, line: 37, type: !164)
!4625 = distinct !DISubprogram(name: "check_nonnull", scope: !998, file: !998, line: 37, type: !4626, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4628)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!164, !164}
!4628 = !{!4624}
!4629 = !DILocation(line: 0, scope: !4625, inlinedAt: !4630)
!4630 = distinct !DILocation(line: 85, column: 10, scope: !4617, inlinedAt: !4622)
!4631 = !DILocation(line: 39, column: 8, scope: !4632, inlinedAt: !4630)
!4632 = distinct !DILexicalBlock(scope: !4625, file: !998, line: 39, column: 7)
!4633 = !DILocation(line: 39, column: 7, scope: !4625, inlinedAt: !4630)
!4634 = !DILocation(line: 40, column: 5, scope: !4632, inlinedAt: !4630)
!4635 = !DILocation(line: 149, column: 3, scope: !4607)
!4636 = !DILocation(line: 0, scope: !4617)
!4637 = !DILocation(line: 85, column: 25, scope: !4617)
!4638 = !DILocation(line: 0, scope: !4625, inlinedAt: !4639)
!4639 = distinct !DILocation(line: 85, column: 10, scope: !4617)
!4640 = !DILocation(line: 39, column: 8, scope: !4632, inlinedAt: !4639)
!4641 = !DILocation(line: 39, column: 7, scope: !4625, inlinedAt: !4639)
!4642 = !DILocation(line: 40, column: 5, scope: !4632, inlinedAt: !4639)
!4643 = !DILocation(line: 85, column: 3, scope: !4617)
!4644 = distinct !DISubprogram(name: "xmalloc", scope: !998, file: !998, line: 47, type: !4645, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4647)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!164, !166}
!4647 = !{!4648}
!4648 = !DILocalVariable(name: "s", arg: 1, scope: !4644, file: !998, line: 47, type: !166)
!4649 = !DILocation(line: 0, scope: !4644)
!4650 = !DILocation(line: 49, column: 25, scope: !4644)
!4651 = !DILocation(line: 0, scope: !4625, inlinedAt: !4652)
!4652 = distinct !DILocation(line: 49, column: 10, scope: !4644)
!4653 = !DILocation(line: 39, column: 8, scope: !4632, inlinedAt: !4652)
!4654 = !DILocation(line: 39, column: 7, scope: !4625, inlinedAt: !4652)
!4655 = !DILocation(line: 40, column: 5, scope: !4632, inlinedAt: !4652)
!4656 = !DILocation(line: 49, column: 3, scope: !4644)
!4657 = !DISubprogram(name: "malloc", scope: !1273, file: !1273, line: 540, type: !4645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!4658 = distinct !DISubprogram(name: "ximalloc", scope: !998, file: !998, line: 53, type: !4659, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4661)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!164, !528}
!4661 = !{!4662}
!4662 = !DILocalVariable(name: "s", arg: 1, scope: !4658, file: !998, line: 53, type: !528)
!4663 = !DILocation(line: 0, scope: !4658)
!4664 = !DILocalVariable(name: "s", arg: 1, scope: !4665, file: !4666, line: 55, type: !528)
!4665 = distinct !DISubprogram(name: "imalloc", scope: !4666, file: !4666, line: 55, type: !4659, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4667)
!4666 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4667 = !{!4664}
!4668 = !DILocation(line: 0, scope: !4665, inlinedAt: !4669)
!4669 = distinct !DILocation(line: 55, column: 25, scope: !4658)
!4670 = !DILocation(line: 57, column: 26, scope: !4665, inlinedAt: !4669)
!4671 = !DILocation(line: 0, scope: !4625, inlinedAt: !4672)
!4672 = distinct !DILocation(line: 55, column: 10, scope: !4658)
!4673 = !DILocation(line: 39, column: 8, scope: !4632, inlinedAt: !4672)
!4674 = !DILocation(line: 39, column: 7, scope: !4625, inlinedAt: !4672)
!4675 = !DILocation(line: 40, column: 5, scope: !4632, inlinedAt: !4672)
!4676 = !DILocation(line: 55, column: 3, scope: !4658)
!4677 = distinct !DISubprogram(name: "xcharalloc", scope: !998, file: !998, line: 59, type: !4678, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4680)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!163, !166}
!4680 = !{!4681}
!4681 = !DILocalVariable(name: "n", arg: 1, scope: !4677, file: !998, line: 59, type: !166)
!4682 = !DILocation(line: 0, scope: !4677)
!4683 = !DILocation(line: 0, scope: !4644, inlinedAt: !4684)
!4684 = distinct !DILocation(line: 61, column: 10, scope: !4677)
!4685 = !DILocation(line: 49, column: 25, scope: !4644, inlinedAt: !4684)
!4686 = !DILocation(line: 0, scope: !4625, inlinedAt: !4687)
!4687 = distinct !DILocation(line: 49, column: 10, scope: !4644, inlinedAt: !4684)
!4688 = !DILocation(line: 39, column: 8, scope: !4632, inlinedAt: !4687)
!4689 = !DILocation(line: 39, column: 7, scope: !4625, inlinedAt: !4687)
!4690 = !DILocation(line: 40, column: 5, scope: !4632, inlinedAt: !4687)
!4691 = !DILocation(line: 61, column: 3, scope: !4677)
!4692 = distinct !DISubprogram(name: "xrealloc", scope: !998, file: !998, line: 68, type: !4693, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4695)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!164, !164, !166}
!4695 = !{!4696, !4697}
!4696 = !DILocalVariable(name: "p", arg: 1, scope: !4692, file: !998, line: 68, type: !164)
!4697 = !DILocalVariable(name: "s", arg: 2, scope: !4692, file: !998, line: 68, type: !166)
!4698 = !DILocation(line: 0, scope: !4692)
!4699 = !DILocalVariable(name: "ptr", arg: 1, scope: !4700, file: !4701, line: 2057, type: !164)
!4700 = distinct !DISubprogram(name: "rpl_realloc", scope: !4701, file: !4701, line: 2057, type: !4693, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4702)
!4701 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4702 = !{!4699, !4703}
!4703 = !DILocalVariable(name: "size", arg: 2, scope: !4700, file: !4701, line: 2057, type: !166)
!4704 = !DILocation(line: 0, scope: !4700, inlinedAt: !4705)
!4705 = distinct !DILocation(line: 70, column: 25, scope: !4692)
!4706 = !DILocation(line: 2059, column: 24, scope: !4700, inlinedAt: !4705)
!4707 = !DILocation(line: 2059, column: 10, scope: !4700, inlinedAt: !4705)
!4708 = !DILocation(line: 0, scope: !4625, inlinedAt: !4709)
!4709 = distinct !DILocation(line: 70, column: 10, scope: !4692)
!4710 = !DILocation(line: 39, column: 8, scope: !4632, inlinedAt: !4709)
!4711 = !DILocation(line: 39, column: 7, scope: !4625, inlinedAt: !4709)
!4712 = !DILocation(line: 40, column: 5, scope: !4632, inlinedAt: !4709)
!4713 = !DILocation(line: 70, column: 3, scope: !4692)
!4714 = !DISubprogram(name: "realloc", scope: !1273, file: !1273, line: 551, type: !4693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!4715 = distinct !DISubprogram(name: "xirealloc", scope: !998, file: !998, line: 74, type: !4716, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4718)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{!164, !164, !528}
!4718 = !{!4719, !4720}
!4719 = !DILocalVariable(name: "p", arg: 1, scope: !4715, file: !998, line: 74, type: !164)
!4720 = !DILocalVariable(name: "s", arg: 2, scope: !4715, file: !998, line: 74, type: !528)
!4721 = !DILocation(line: 0, scope: !4715)
!4722 = !DILocalVariable(name: "p", arg: 1, scope: !4723, file: !4666, line: 66, type: !164)
!4723 = distinct !DISubprogram(name: "irealloc", scope: !4666, file: !4666, line: 66, type: !4716, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4724)
!4724 = !{!4722, !4725}
!4725 = !DILocalVariable(name: "s", arg: 2, scope: !4723, file: !4666, line: 66, type: !528)
!4726 = !DILocation(line: 0, scope: !4723, inlinedAt: !4727)
!4727 = distinct !DILocation(line: 76, column: 25, scope: !4715)
!4728 = !DILocation(line: 0, scope: !4700, inlinedAt: !4729)
!4729 = distinct !DILocation(line: 68, column: 26, scope: !4723, inlinedAt: !4727)
!4730 = !DILocation(line: 2059, column: 24, scope: !4700, inlinedAt: !4729)
!4731 = !DILocation(line: 2059, column: 10, scope: !4700, inlinedAt: !4729)
!4732 = !DILocation(line: 0, scope: !4625, inlinedAt: !4733)
!4733 = distinct !DILocation(line: 76, column: 10, scope: !4715)
!4734 = !DILocation(line: 39, column: 8, scope: !4632, inlinedAt: !4733)
!4735 = !DILocation(line: 39, column: 7, scope: !4625, inlinedAt: !4733)
!4736 = !DILocation(line: 40, column: 5, scope: !4632, inlinedAt: !4733)
!4737 = !DILocation(line: 76, column: 3, scope: !4715)
!4738 = distinct !DISubprogram(name: "xireallocarray", scope: !998, file: !998, line: 89, type: !4739, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4741)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!164, !164, !528, !528}
!4741 = !{!4742, !4743, !4744}
!4742 = !DILocalVariable(name: "p", arg: 1, scope: !4738, file: !998, line: 89, type: !164)
!4743 = !DILocalVariable(name: "n", arg: 2, scope: !4738, file: !998, line: 89, type: !528)
!4744 = !DILocalVariable(name: "s", arg: 3, scope: !4738, file: !998, line: 89, type: !528)
!4745 = !DILocation(line: 0, scope: !4738)
!4746 = !DILocalVariable(name: "p", arg: 1, scope: !4747, file: !4666, line: 98, type: !164)
!4747 = distinct !DISubprogram(name: "ireallocarray", scope: !4666, file: !4666, line: 98, type: !4739, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4748)
!4748 = !{!4746, !4749, !4750}
!4749 = !DILocalVariable(name: "n", arg: 2, scope: !4747, file: !4666, line: 98, type: !528)
!4750 = !DILocalVariable(name: "s", arg: 3, scope: !4747, file: !4666, line: 98, type: !528)
!4751 = !DILocation(line: 0, scope: !4747, inlinedAt: !4752)
!4752 = distinct !DILocation(line: 91, column: 25, scope: !4738)
!4753 = !DILocation(line: 101, column: 13, scope: !4747, inlinedAt: !4752)
!4754 = !DILocation(line: 0, scope: !4625, inlinedAt: !4755)
!4755 = distinct !DILocation(line: 91, column: 10, scope: !4738)
!4756 = !DILocation(line: 39, column: 8, scope: !4632, inlinedAt: !4755)
!4757 = !DILocation(line: 39, column: 7, scope: !4625, inlinedAt: !4755)
!4758 = !DILocation(line: 40, column: 5, scope: !4632, inlinedAt: !4755)
!4759 = !DILocation(line: 91, column: 3, scope: !4738)
!4760 = distinct !DISubprogram(name: "xnmalloc", scope: !998, file: !998, line: 98, type: !4761, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4763)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{!164, !166, !166}
!4763 = !{!4764, !4765}
!4764 = !DILocalVariable(name: "n", arg: 1, scope: !4760, file: !998, line: 98, type: !166)
!4765 = !DILocalVariable(name: "s", arg: 2, scope: !4760, file: !998, line: 98, type: !166)
!4766 = !DILocation(line: 0, scope: !4760)
!4767 = !DILocation(line: 0, scope: !4617, inlinedAt: !4768)
!4768 = distinct !DILocation(line: 100, column: 10, scope: !4760)
!4769 = !DILocation(line: 85, column: 25, scope: !4617, inlinedAt: !4768)
!4770 = !DILocation(line: 0, scope: !4625, inlinedAt: !4771)
!4771 = distinct !DILocation(line: 85, column: 10, scope: !4617, inlinedAt: !4768)
!4772 = !DILocation(line: 39, column: 8, scope: !4632, inlinedAt: !4771)
!4773 = !DILocation(line: 39, column: 7, scope: !4625, inlinedAt: !4771)
!4774 = !DILocation(line: 40, column: 5, scope: !4632, inlinedAt: !4771)
!4775 = !DILocation(line: 100, column: 3, scope: !4760)
!4776 = distinct !DISubprogram(name: "xinmalloc", scope: !998, file: !998, line: 104, type: !4777, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4779)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!164, !528, !528}
!4779 = !{!4780, !4781}
!4780 = !DILocalVariable(name: "n", arg: 1, scope: !4776, file: !998, line: 104, type: !528)
!4781 = !DILocalVariable(name: "s", arg: 2, scope: !4776, file: !998, line: 104, type: !528)
!4782 = !DILocation(line: 0, scope: !4776)
!4783 = !DILocation(line: 0, scope: !4738, inlinedAt: !4784)
!4784 = distinct !DILocation(line: 106, column: 10, scope: !4776)
!4785 = !DILocation(line: 0, scope: !4747, inlinedAt: !4786)
!4786 = distinct !DILocation(line: 91, column: 25, scope: !4738, inlinedAt: !4784)
!4787 = !DILocation(line: 101, column: 13, scope: !4747, inlinedAt: !4786)
!4788 = !DILocation(line: 0, scope: !4625, inlinedAt: !4789)
!4789 = distinct !DILocation(line: 91, column: 10, scope: !4738, inlinedAt: !4784)
!4790 = !DILocation(line: 39, column: 8, scope: !4632, inlinedAt: !4789)
!4791 = !DILocation(line: 39, column: 7, scope: !4625, inlinedAt: !4789)
!4792 = !DILocation(line: 40, column: 5, scope: !4632, inlinedAt: !4789)
!4793 = !DILocation(line: 106, column: 3, scope: !4776)
!4794 = distinct !DISubprogram(name: "x2realloc", scope: !998, file: !998, line: 116, type: !4795, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4797)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!164, !164, !1004}
!4797 = !{!4798, !4799}
!4798 = !DILocalVariable(name: "p", arg: 1, scope: !4794, file: !998, line: 116, type: !164)
!4799 = !DILocalVariable(name: "ps", arg: 2, scope: !4794, file: !998, line: 116, type: !1004)
!4800 = !DILocation(line: 0, scope: !4794)
!4801 = !DILocation(line: 0, scope: !1001, inlinedAt: !4802)
!4802 = distinct !DILocation(line: 118, column: 10, scope: !4794)
!4803 = !DILocation(line: 178, column: 14, scope: !1001, inlinedAt: !4802)
!4804 = !DILocation(line: 180, column: 9, scope: !4805, inlinedAt: !4802)
!4805 = distinct !DILexicalBlock(scope: !1001, file: !998, line: 180, column: 7)
!4806 = !DILocation(line: 180, column: 7, scope: !1001, inlinedAt: !4802)
!4807 = !DILocation(line: 182, column: 13, scope: !4808, inlinedAt: !4802)
!4808 = distinct !DILexicalBlock(scope: !4809, file: !998, line: 182, column: 11)
!4809 = distinct !DILexicalBlock(scope: !4805, file: !998, line: 181, column: 5)
!4810 = !DILocation(line: 182, column: 11, scope: !4809, inlinedAt: !4802)
!4811 = !DILocation(line: 197, column: 11, scope: !4812, inlinedAt: !4802)
!4812 = distinct !DILexicalBlock(scope: !4813, file: !998, line: 197, column: 11)
!4813 = distinct !DILexicalBlock(scope: !4805, file: !998, line: 195, column: 5)
!4814 = !DILocation(line: 197, column: 11, scope: !4813, inlinedAt: !4802)
!4815 = !DILocation(line: 198, column: 9, scope: !4812, inlinedAt: !4802)
!4816 = !DILocation(line: 0, scope: !4617, inlinedAt: !4817)
!4817 = distinct !DILocation(line: 201, column: 7, scope: !1001, inlinedAt: !4802)
!4818 = !DILocation(line: 85, column: 25, scope: !4617, inlinedAt: !4817)
!4819 = !DILocation(line: 0, scope: !4625, inlinedAt: !4820)
!4820 = distinct !DILocation(line: 85, column: 10, scope: !4617, inlinedAt: !4817)
!4821 = !DILocation(line: 39, column: 8, scope: !4632, inlinedAt: !4820)
!4822 = !DILocation(line: 39, column: 7, scope: !4625, inlinedAt: !4820)
!4823 = !DILocation(line: 40, column: 5, scope: !4632, inlinedAt: !4820)
!4824 = !DILocation(line: 202, column: 7, scope: !1001, inlinedAt: !4802)
!4825 = !DILocation(line: 118, column: 3, scope: !4794)
!4826 = !DILocation(line: 0, scope: !1001)
!4827 = !DILocation(line: 178, column: 14, scope: !1001)
!4828 = !DILocation(line: 180, column: 9, scope: !4805)
!4829 = !DILocation(line: 180, column: 7, scope: !1001)
!4830 = !DILocation(line: 182, column: 13, scope: !4808)
!4831 = !DILocation(line: 182, column: 11, scope: !4809)
!4832 = !DILocation(line: 190, column: 30, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4808, file: !998, line: 183, column: 9)
!4834 = !DILocation(line: 191, column: 16, scope: !4833)
!4835 = !DILocation(line: 191, column: 13, scope: !4833)
!4836 = !DILocation(line: 192, column: 9, scope: !4833)
!4837 = !DILocation(line: 197, column: 11, scope: !4812)
!4838 = !DILocation(line: 197, column: 11, scope: !4813)
!4839 = !DILocation(line: 198, column: 9, scope: !4812)
!4840 = !DILocation(line: 0, scope: !4617, inlinedAt: !4841)
!4841 = distinct !DILocation(line: 201, column: 7, scope: !1001)
!4842 = !DILocation(line: 85, column: 25, scope: !4617, inlinedAt: !4841)
!4843 = !DILocation(line: 0, scope: !4625, inlinedAt: !4844)
!4844 = distinct !DILocation(line: 85, column: 10, scope: !4617, inlinedAt: !4841)
!4845 = !DILocation(line: 39, column: 8, scope: !4632, inlinedAt: !4844)
!4846 = !DILocation(line: 39, column: 7, scope: !4625, inlinedAt: !4844)
!4847 = !DILocation(line: 40, column: 5, scope: !4632, inlinedAt: !4844)
!4848 = !DILocation(line: 202, column: 7, scope: !1001)
!4849 = !DILocation(line: 203, column: 3, scope: !1001)
!4850 = !DILocation(line: 0, scope: !1013)
!4851 = !DILocation(line: 230, column: 14, scope: !1013)
!4852 = !DILocation(line: 238, column: 7, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !1013, file: !998, line: 238, column: 7)
!4854 = !DILocation(line: 238, column: 7, scope: !1013)
!4855 = !DILocation(line: 240, column: 9, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !1013, file: !998, line: 240, column: 7)
!4857 = !DILocation(line: 240, column: 18, scope: !4856)
!4858 = !DILocation(line: 253, column: 8, scope: !1013)
!4859 = !DILocation(line: 258, column: 27, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4861, file: !998, line: 257, column: 5)
!4861 = distinct !DILexicalBlock(scope: !1013, file: !998, line: 256, column: 7)
!4862 = !DILocation(line: 259, column: 50, scope: !4860)
!4863 = !DILocation(line: 259, column: 32, scope: !4860)
!4864 = !DILocation(line: 260, column: 5, scope: !4860)
!4865 = !DILocation(line: 262, column: 9, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !1013, file: !998, line: 262, column: 7)
!4867 = !DILocation(line: 262, column: 7, scope: !1013)
!4868 = !DILocation(line: 263, column: 9, scope: !4866)
!4869 = !DILocation(line: 263, column: 5, scope: !4866)
!4870 = !DILocation(line: 264, column: 9, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !1013, file: !998, line: 264, column: 7)
!4872 = !DILocation(line: 264, column: 14, scope: !4871)
!4873 = !DILocation(line: 265, column: 7, scope: !4871)
!4874 = !DILocation(line: 265, column: 11, scope: !4871)
!4875 = !DILocation(line: 266, column: 11, scope: !4871)
!4876 = !DILocation(line: 267, column: 14, scope: !4871)
!4877 = !DILocation(line: 264, column: 7, scope: !1013)
!4878 = !DILocation(line: 268, column: 5, scope: !4871)
!4879 = !DILocation(line: 0, scope: !4692, inlinedAt: !4880)
!4880 = distinct !DILocation(line: 269, column: 8, scope: !1013)
!4881 = !DILocation(line: 0, scope: !4700, inlinedAt: !4882)
!4882 = distinct !DILocation(line: 70, column: 25, scope: !4692, inlinedAt: !4880)
!4883 = !DILocation(line: 2059, column: 24, scope: !4700, inlinedAt: !4882)
!4884 = !DILocation(line: 2059, column: 10, scope: !4700, inlinedAt: !4882)
!4885 = !DILocation(line: 0, scope: !4625, inlinedAt: !4886)
!4886 = distinct !DILocation(line: 70, column: 10, scope: !4692, inlinedAt: !4880)
!4887 = !DILocation(line: 39, column: 8, scope: !4632, inlinedAt: !4886)
!4888 = !DILocation(line: 39, column: 7, scope: !4625, inlinedAt: !4886)
!4889 = !DILocation(line: 40, column: 5, scope: !4632, inlinedAt: !4886)
!4890 = !DILocation(line: 270, column: 7, scope: !1013)
!4891 = !DILocation(line: 271, column: 3, scope: !1013)
!4892 = distinct !DISubprogram(name: "xzalloc", scope: !998, file: !998, line: 279, type: !4645, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4893)
!4893 = !{!4894}
!4894 = !DILocalVariable(name: "s", arg: 1, scope: !4892, file: !998, line: 279, type: !166)
!4895 = !DILocation(line: 0, scope: !4892)
!4896 = !DILocalVariable(name: "n", arg: 1, scope: !4897, file: !998, line: 294, type: !166)
!4897 = distinct !DISubprogram(name: "xcalloc", scope: !998, file: !998, line: 294, type: !4761, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4898)
!4898 = !{!4896, !4899}
!4899 = !DILocalVariable(name: "s", arg: 2, scope: !4897, file: !998, line: 294, type: !166)
!4900 = !DILocation(line: 0, scope: !4897, inlinedAt: !4901)
!4901 = distinct !DILocation(line: 281, column: 10, scope: !4892)
!4902 = !DILocation(line: 296, column: 25, scope: !4897, inlinedAt: !4901)
!4903 = !DILocation(line: 0, scope: !4625, inlinedAt: !4904)
!4904 = distinct !DILocation(line: 296, column: 10, scope: !4897, inlinedAt: !4901)
!4905 = !DILocation(line: 39, column: 8, scope: !4632, inlinedAt: !4904)
!4906 = !DILocation(line: 39, column: 7, scope: !4625, inlinedAt: !4904)
!4907 = !DILocation(line: 40, column: 5, scope: !4632, inlinedAt: !4904)
!4908 = !DILocation(line: 281, column: 3, scope: !4892)
!4909 = !DISubprogram(name: "calloc", scope: !1273, file: !1273, line: 543, type: !4761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!4910 = !DILocation(line: 0, scope: !4897)
!4911 = !DILocation(line: 296, column: 25, scope: !4897)
!4912 = !DILocation(line: 0, scope: !4625, inlinedAt: !4913)
!4913 = distinct !DILocation(line: 296, column: 10, scope: !4897)
!4914 = !DILocation(line: 39, column: 8, scope: !4632, inlinedAt: !4913)
!4915 = !DILocation(line: 39, column: 7, scope: !4625, inlinedAt: !4913)
!4916 = !DILocation(line: 40, column: 5, scope: !4632, inlinedAt: !4913)
!4917 = !DILocation(line: 296, column: 3, scope: !4897)
!4918 = distinct !DISubprogram(name: "xizalloc", scope: !998, file: !998, line: 285, type: !4659, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4919)
!4919 = !{!4920}
!4920 = !DILocalVariable(name: "s", arg: 1, scope: !4918, file: !998, line: 285, type: !528)
!4921 = !DILocation(line: 0, scope: !4918)
!4922 = !DILocalVariable(name: "n", arg: 1, scope: !4923, file: !998, line: 300, type: !528)
!4923 = distinct !DISubprogram(name: "xicalloc", scope: !998, file: !998, line: 300, type: !4777, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4924)
!4924 = !{!4922, !4925}
!4925 = !DILocalVariable(name: "s", arg: 2, scope: !4923, file: !998, line: 300, type: !528)
!4926 = !DILocation(line: 0, scope: !4923, inlinedAt: !4927)
!4927 = distinct !DILocation(line: 287, column: 10, scope: !4918)
!4928 = !DILocalVariable(name: "n", arg: 1, scope: !4929, file: !4666, line: 77, type: !528)
!4929 = distinct !DISubprogram(name: "icalloc", scope: !4666, file: !4666, line: 77, type: !4777, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4930)
!4930 = !{!4928, !4931}
!4931 = !DILocalVariable(name: "s", arg: 2, scope: !4929, file: !4666, line: 77, type: !528)
!4932 = !DILocation(line: 0, scope: !4929, inlinedAt: !4933)
!4933 = distinct !DILocation(line: 302, column: 25, scope: !4923, inlinedAt: !4927)
!4934 = !DILocation(line: 91, column: 10, scope: !4929, inlinedAt: !4933)
!4935 = !DILocation(line: 0, scope: !4625, inlinedAt: !4936)
!4936 = distinct !DILocation(line: 302, column: 10, scope: !4923, inlinedAt: !4927)
!4937 = !DILocation(line: 39, column: 8, scope: !4632, inlinedAt: !4936)
!4938 = !DILocation(line: 39, column: 7, scope: !4625, inlinedAt: !4936)
!4939 = !DILocation(line: 40, column: 5, scope: !4632, inlinedAt: !4936)
!4940 = !DILocation(line: 287, column: 3, scope: !4918)
!4941 = !DILocation(line: 0, scope: !4923)
!4942 = !DILocation(line: 0, scope: !4929, inlinedAt: !4943)
!4943 = distinct !DILocation(line: 302, column: 25, scope: !4923)
!4944 = !DILocation(line: 91, column: 10, scope: !4929, inlinedAt: !4943)
!4945 = !DILocation(line: 0, scope: !4625, inlinedAt: !4946)
!4946 = distinct !DILocation(line: 302, column: 10, scope: !4923)
!4947 = !DILocation(line: 39, column: 8, scope: !4632, inlinedAt: !4946)
!4948 = !DILocation(line: 39, column: 7, scope: !4625, inlinedAt: !4946)
!4949 = !DILocation(line: 40, column: 5, scope: !4632, inlinedAt: !4946)
!4950 = !DILocation(line: 302, column: 3, scope: !4923)
!4951 = distinct !DISubprogram(name: "xmemdup", scope: !998, file: !998, line: 310, type: !4952, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4954)
!4952 = !DISubroutineType(types: !4953)
!4953 = !{!164, !1297, !166}
!4954 = !{!4955, !4956}
!4955 = !DILocalVariable(name: "p", arg: 1, scope: !4951, file: !998, line: 310, type: !1297)
!4956 = !DILocalVariable(name: "s", arg: 2, scope: !4951, file: !998, line: 310, type: !166)
!4957 = !DILocation(line: 0, scope: !4951)
!4958 = !DILocation(line: 0, scope: !4644, inlinedAt: !4959)
!4959 = distinct !DILocation(line: 312, column: 18, scope: !4951)
!4960 = !DILocation(line: 49, column: 25, scope: !4644, inlinedAt: !4959)
!4961 = !DILocation(line: 0, scope: !4625, inlinedAt: !4962)
!4962 = distinct !DILocation(line: 49, column: 10, scope: !4644, inlinedAt: !4959)
!4963 = !DILocation(line: 39, column: 8, scope: !4632, inlinedAt: !4962)
!4964 = !DILocation(line: 39, column: 7, scope: !4625, inlinedAt: !4962)
!4965 = !DILocation(line: 40, column: 5, scope: !4632, inlinedAt: !4962)
!4966 = !DILocalVariable(name: "__dest", arg: 1, scope: !4967, file: !1566, line: 26, type: !1569)
!4967 = distinct !DISubprogram(name: "memcpy", scope: !1566, file: !1566, line: 26, type: !1567, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4968)
!4968 = !{!4966, !4969, !4970}
!4969 = !DILocalVariable(name: "__src", arg: 2, scope: !4967, file: !1566, line: 26, type: !1296)
!4970 = !DILocalVariable(name: "__len", arg: 3, scope: !4967, file: !1566, line: 26, type: !166)
!4971 = !DILocation(line: 0, scope: !4967, inlinedAt: !4972)
!4972 = distinct !DILocation(line: 312, column: 10, scope: !4951)
!4973 = !DILocation(line: 29, column: 10, scope: !4967, inlinedAt: !4972)
!4974 = !DILocation(line: 312, column: 3, scope: !4951)
!4975 = distinct !DISubprogram(name: "ximemdup", scope: !998, file: !998, line: 316, type: !4976, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4978)
!4976 = !DISubroutineType(types: !4977)
!4977 = !{!164, !1297, !528}
!4978 = !{!4979, !4980}
!4979 = !DILocalVariable(name: "p", arg: 1, scope: !4975, file: !998, line: 316, type: !1297)
!4980 = !DILocalVariable(name: "s", arg: 2, scope: !4975, file: !998, line: 316, type: !528)
!4981 = !DILocation(line: 0, scope: !4975)
!4982 = !DILocation(line: 0, scope: !4658, inlinedAt: !4983)
!4983 = distinct !DILocation(line: 318, column: 18, scope: !4975)
!4984 = !DILocation(line: 0, scope: !4665, inlinedAt: !4985)
!4985 = distinct !DILocation(line: 55, column: 25, scope: !4658, inlinedAt: !4983)
!4986 = !DILocation(line: 57, column: 26, scope: !4665, inlinedAt: !4985)
!4987 = !DILocation(line: 0, scope: !4625, inlinedAt: !4988)
!4988 = distinct !DILocation(line: 55, column: 10, scope: !4658, inlinedAt: !4983)
!4989 = !DILocation(line: 39, column: 8, scope: !4632, inlinedAt: !4988)
!4990 = !DILocation(line: 39, column: 7, scope: !4625, inlinedAt: !4988)
!4991 = !DILocation(line: 40, column: 5, scope: !4632, inlinedAt: !4988)
!4992 = !DILocation(line: 0, scope: !4967, inlinedAt: !4993)
!4993 = distinct !DILocation(line: 318, column: 10, scope: !4975)
!4994 = !DILocation(line: 29, column: 10, scope: !4967, inlinedAt: !4993)
!4995 = !DILocation(line: 318, column: 3, scope: !4975)
!4996 = distinct !DISubprogram(name: "ximemdup0", scope: !998, file: !998, line: 325, type: !4997, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4999)
!4997 = !DISubroutineType(types: !4998)
!4998 = !{!163, !1297, !528}
!4999 = !{!5000, !5001, !5002}
!5000 = !DILocalVariable(name: "p", arg: 1, scope: !4996, file: !998, line: 325, type: !1297)
!5001 = !DILocalVariable(name: "s", arg: 2, scope: !4996, file: !998, line: 325, type: !528)
!5002 = !DILocalVariable(name: "result", scope: !4996, file: !998, line: 327, type: !163)
!5003 = !DILocation(line: 0, scope: !4996)
!5004 = !DILocation(line: 327, column: 30, scope: !4996)
!5005 = !DILocation(line: 0, scope: !4658, inlinedAt: !5006)
!5006 = distinct !DILocation(line: 327, column: 18, scope: !4996)
!5007 = !DILocation(line: 0, scope: !4665, inlinedAt: !5008)
!5008 = distinct !DILocation(line: 55, column: 25, scope: !4658, inlinedAt: !5006)
!5009 = !DILocation(line: 57, column: 26, scope: !4665, inlinedAt: !5008)
!5010 = !DILocation(line: 0, scope: !4625, inlinedAt: !5011)
!5011 = distinct !DILocation(line: 55, column: 10, scope: !4658, inlinedAt: !5006)
!5012 = !DILocation(line: 39, column: 8, scope: !4632, inlinedAt: !5011)
!5013 = !DILocation(line: 39, column: 7, scope: !4625, inlinedAt: !5011)
!5014 = !DILocation(line: 40, column: 5, scope: !4632, inlinedAt: !5011)
!5015 = !DILocation(line: 328, column: 3, scope: !4996)
!5016 = !DILocation(line: 328, column: 13, scope: !4996)
!5017 = !DILocation(line: 0, scope: !4967, inlinedAt: !5018)
!5018 = distinct !DILocation(line: 329, column: 10, scope: !4996)
!5019 = !DILocation(line: 29, column: 10, scope: !4967, inlinedAt: !5018)
!5020 = !DILocation(line: 329, column: 3, scope: !4996)
!5021 = distinct !DISubprogram(name: "xstrdup", scope: !998, file: !998, line: 335, type: !1275, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !5022)
!5022 = !{!5023}
!5023 = !DILocalVariable(name: "string", arg: 1, scope: !5021, file: !998, line: 335, type: !169)
!5024 = !DILocation(line: 0, scope: !5021)
!5025 = !DILocation(line: 337, column: 27, scope: !5021)
!5026 = !DILocation(line: 337, column: 43, scope: !5021)
!5027 = !DILocation(line: 0, scope: !4951, inlinedAt: !5028)
!5028 = distinct !DILocation(line: 337, column: 10, scope: !5021)
!5029 = !DILocation(line: 0, scope: !4644, inlinedAt: !5030)
!5030 = distinct !DILocation(line: 312, column: 18, scope: !4951, inlinedAt: !5028)
!5031 = !DILocation(line: 49, column: 25, scope: !4644, inlinedAt: !5030)
!5032 = !DILocation(line: 0, scope: !4625, inlinedAt: !5033)
!5033 = distinct !DILocation(line: 49, column: 10, scope: !4644, inlinedAt: !5030)
!5034 = !DILocation(line: 39, column: 8, scope: !4632, inlinedAt: !5033)
!5035 = !DILocation(line: 39, column: 7, scope: !4625, inlinedAt: !5033)
!5036 = !DILocation(line: 40, column: 5, scope: !4632, inlinedAt: !5033)
!5037 = !DILocation(line: 0, scope: !4967, inlinedAt: !5038)
!5038 = distinct !DILocation(line: 312, column: 10, scope: !4951, inlinedAt: !5028)
!5039 = !DILocation(line: 29, column: 10, scope: !4967, inlinedAt: !5038)
!5040 = !DILocation(line: 337, column: 3, scope: !5021)
!5041 = distinct !DISubprogram(name: "xalloc_die", scope: !958, file: !958, line: 32, type: !713, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !5042)
!5042 = !{!5043}
!5043 = !DILocalVariable(name: "__errstatus", scope: !5044, file: !958, line: 34, type: !5045)
!5044 = distinct !DILexicalBlock(scope: !5041, file: !958, line: 34, column: 3)
!5045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!5046 = !DILocation(line: 34, column: 3, scope: !5044)
!5047 = !DILocation(line: 0, scope: !5044)
!5048 = !DILocation(line: 40, column: 3, scope: !5041)
!5049 = distinct !DISubprogram(name: "close_stream", scope: !1031, file: !1031, line: 55, type: !5050, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !5086)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{!122, !5052}
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5053, size: 64)
!5053 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !5054)
!5054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !5055)
!5055 = !{!5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5071, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085}
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5054, file: !330, line: 51, baseType: !122, size: 32)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5054, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5054, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5054, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5054, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5054, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5054, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5054, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5054, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5054, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5054, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5054, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5054, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5054, file: !330, line: 70, baseType: !5070, size: 64, offset: 832)
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5054, size: 64)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5054, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5054, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5054, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5054, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5054, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5054, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5054, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5054, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5054, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5054, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5054, file: !330, line: 93, baseType: !5070, size: 64, offset: 1344)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5054, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5054, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5054, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5054, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!5086 = !{!5087, !5088, !5090, !5091}
!5087 = !DILocalVariable(name: "stream", arg: 1, scope: !5049, file: !1031, line: 55, type: !5052)
!5088 = !DILocalVariable(name: "some_pending", scope: !5049, file: !1031, line: 57, type: !5089)
!5089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!5090 = !DILocalVariable(name: "prev_fail", scope: !5049, file: !1031, line: 58, type: !5089)
!5091 = !DILocalVariable(name: "fclose_fail", scope: !5049, file: !1031, line: 59, type: !5089)
!5092 = !DILocation(line: 0, scope: !5049)
!5093 = !DILocation(line: 57, column: 30, scope: !5049)
!5094 = !DILocalVariable(name: "__stream", arg: 1, scope: !5095, file: !2791, line: 135, type: !5052)
!5095 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2791, file: !2791, line: 135, type: !5050, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !5096)
!5096 = !{!5094}
!5097 = !DILocation(line: 0, scope: !5095, inlinedAt: !5098)
!5098 = distinct !DILocation(line: 58, column: 27, scope: !5049)
!5099 = !DILocation(line: 137, column: 10, scope: !5095, inlinedAt: !5098)
!5100 = !{!2800, !1149, i64 0}
!5101 = !DILocation(line: 58, column: 43, scope: !5049)
!5102 = !DILocation(line: 59, column: 29, scope: !5049)
!5103 = !DILocation(line: 59, column: 45, scope: !5049)
!5104 = !DILocation(line: 69, column: 17, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5049, file: !1031, line: 69, column: 7)
!5106 = !DILocation(line: 57, column: 50, scope: !5049)
!5107 = !DILocation(line: 69, column: 33, scope: !5105)
!5108 = !DILocation(line: 69, column: 53, scope: !5105)
!5109 = !DILocation(line: 69, column: 59, scope: !5105)
!5110 = !DILocation(line: 69, column: 7, scope: !5049)
!5111 = !DILocation(line: 71, column: 11, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5105, file: !1031, line: 70, column: 5)
!5113 = !DILocation(line: 72, column: 9, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5112, file: !1031, line: 71, column: 11)
!5115 = !DILocation(line: 72, column: 15, scope: !5114)
!5116 = !DILocation(line: 77, column: 1, scope: !5049)
!5117 = !DISubprogram(name: "__fpending", scope: !5118, file: !5118, line: 75, type: !5119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!5118 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!5119 = !DISubroutineType(types: !5120)
!5120 = !{!166, !5052}
!5121 = distinct !DISubprogram(name: "rpl_fclose", scope: !1033, file: !1033, line: 58, type: !5122, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !5158)
!5122 = !DISubroutineType(types: !5123)
!5123 = !{!122, !5124}
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !5126)
!5126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !5127)
!5127 = !{!5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5126, file: !330, line: 51, baseType: !122, size: 32)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5126, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5126, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5126, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5126, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5126, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5126, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5126, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5126, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5126, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5126, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5126, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5126, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5126, file: !330, line: 70, baseType: !5142, size: 64, offset: 832)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5126, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5126, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5126, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5126, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5126, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5126, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5126, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5126, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5126, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5126, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5126, file: !330, line: 93, baseType: !5142, size: 64, offset: 1344)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5126, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5126, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5126, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5126, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!5158 = !{!5159, !5160, !5161, !5162}
!5159 = !DILocalVariable(name: "fp", arg: 1, scope: !5121, file: !1033, line: 58, type: !5124)
!5160 = !DILocalVariable(name: "saved_errno", scope: !5121, file: !1033, line: 60, type: !122)
!5161 = !DILocalVariable(name: "fd", scope: !5121, file: !1033, line: 63, type: !122)
!5162 = !DILocalVariable(name: "result", scope: !5121, file: !1033, line: 74, type: !122)
!5163 = !DILocation(line: 0, scope: !5121)
!5164 = !DILocation(line: 63, column: 12, scope: !5121)
!5165 = !DILocation(line: 64, column: 10, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5121, file: !1033, line: 64, column: 7)
!5167 = !DILocation(line: 64, column: 7, scope: !5121)
!5168 = !DILocation(line: 65, column: 12, scope: !5166)
!5169 = !DILocation(line: 65, column: 5, scope: !5166)
!5170 = !DILocation(line: 70, column: 9, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5121, file: !1033, line: 70, column: 7)
!5172 = !DILocation(line: 70, column: 23, scope: !5171)
!5173 = !DILocation(line: 70, column: 33, scope: !5171)
!5174 = !DILocation(line: 70, column: 26, scope: !5171)
!5175 = !DILocation(line: 70, column: 59, scope: !5171)
!5176 = !DILocation(line: 71, column: 7, scope: !5171)
!5177 = !DILocation(line: 71, column: 10, scope: !5171)
!5178 = !DILocation(line: 70, column: 7, scope: !5121)
!5179 = !DILocation(line: 100, column: 12, scope: !5121)
!5180 = !DILocation(line: 105, column: 7, scope: !5121)
!5181 = !DILocation(line: 72, column: 19, scope: !5171)
!5182 = !DILocation(line: 105, column: 19, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5121, file: !1033, line: 105, column: 7)
!5184 = !DILocation(line: 107, column: 13, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5183, file: !1033, line: 106, column: 5)
!5186 = !DILocation(line: 109, column: 5, scope: !5185)
!5187 = !DILocation(line: 112, column: 1, scope: !5121)
!5188 = !DISubprogram(name: "fileno", scope: !1143, file: !1143, line: 809, type: !5122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!5189 = !DISubprogram(name: "fclose", scope: !1143, file: !1143, line: 178, type: !5122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!5190 = !DISubprogram(name: "__freading", scope: !5118, file: !5118, line: 51, type: !5122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!5191 = !DISubprogram(name: "lseek", scope: !2430, file: !2430, line: 339, type: !5192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!5192 = !DISubroutineType(types: !5193)
!5193 = !{!352, !122, !352, !122}
!5194 = distinct !DISubprogram(name: "rpl_fflush", scope: !1035, file: !1035, line: 130, type: !5195, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !5231)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{!122, !5197}
!5197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5198, size: 64)
!5198 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !5199)
!5199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !5200)
!5200 = !{!5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230}
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5199, file: !330, line: 51, baseType: !122, size: 32)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5199, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5199, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5199, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5199, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5199, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5199, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5199, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5199, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5199, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5199, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5199, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5199, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5199, file: !330, line: 70, baseType: !5215, size: 64, offset: 832)
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5199, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5199, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5199, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5199, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5199, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5199, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5199, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5199, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5199, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5199, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5199, file: !330, line: 93, baseType: !5215, size: 64, offset: 1344)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5199, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5199, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5199, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5199, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!5231 = !{!5232}
!5232 = !DILocalVariable(name: "stream", arg: 1, scope: !5194, file: !1035, line: 130, type: !5197)
!5233 = !DILocation(line: 0, scope: !5194)
!5234 = !DILocation(line: 151, column: 14, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5194, file: !1035, line: 151, column: 7)
!5236 = !DILocation(line: 151, column: 22, scope: !5235)
!5237 = !DILocation(line: 151, column: 27, scope: !5235)
!5238 = !DILocation(line: 151, column: 7, scope: !5194)
!5239 = !DILocation(line: 152, column: 12, scope: !5235)
!5240 = !DILocation(line: 152, column: 5, scope: !5235)
!5241 = !DILocalVariable(name: "fp", arg: 1, scope: !5242, file: !1035, line: 42, type: !5197)
!5242 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1035, file: !1035, line: 42, type: !5243, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !5245)
!5243 = !DISubroutineType(types: !5244)
!5244 = !{null, !5197}
!5245 = !{!5241}
!5246 = !DILocation(line: 0, scope: !5242, inlinedAt: !5247)
!5247 = distinct !DILocation(line: 157, column: 3, scope: !5194)
!5248 = !DILocation(line: 44, column: 12, scope: !5249, inlinedAt: !5247)
!5249 = distinct !DILexicalBlock(scope: !5242, file: !1035, line: 44, column: 7)
!5250 = !DILocation(line: 44, column: 19, scope: !5249, inlinedAt: !5247)
!5251 = !DILocation(line: 44, column: 7, scope: !5242, inlinedAt: !5247)
!5252 = !DILocation(line: 46, column: 5, scope: !5249, inlinedAt: !5247)
!5253 = !DILocation(line: 159, column: 10, scope: !5194)
!5254 = !DILocation(line: 159, column: 3, scope: !5194)
!5255 = !DILocation(line: 236, column: 1, scope: !5194)
!5256 = !DISubprogram(name: "fflush", scope: !1143, file: !1143, line: 230, type: !5195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!5257 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1037, file: !1037, line: 28, type: !5258, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1036, retainedNodes: !5295)
!5258 = !DISubroutineType(types: !5259)
!5259 = !{!122, !5260, !5294, !122}
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5261, size: 64)
!5261 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !5262)
!5262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !5263)
!5263 = !{!5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293}
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5262, file: !330, line: 51, baseType: !122, size: 32)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5262, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5262, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5262, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5262, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5262, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5262, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5262, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5262, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5262, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5262, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5262, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5262, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5262, file: !330, line: 70, baseType: !5278, size: 64, offset: 832)
!5278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5262, size: 64)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5262, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5262, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5262, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5262, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5262, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5262, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5262, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5262, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5262, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5262, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5262, file: !330, line: 93, baseType: !5278, size: 64, offset: 1344)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5262, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5262, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5262, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5262, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!5294 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1143, line: 63, baseType: !352)
!5295 = !{!5296, !5297, !5298, !5299}
!5296 = !DILocalVariable(name: "fp", arg: 1, scope: !5257, file: !1037, line: 28, type: !5260)
!5297 = !DILocalVariable(name: "offset", arg: 2, scope: !5257, file: !1037, line: 28, type: !5294)
!5298 = !DILocalVariable(name: "whence", arg: 3, scope: !5257, file: !1037, line: 28, type: !122)
!5299 = !DILocalVariable(name: "pos", scope: !5300, file: !1037, line: 123, type: !5294)
!5300 = distinct !DILexicalBlock(scope: !5301, file: !1037, line: 119, column: 5)
!5301 = distinct !DILexicalBlock(scope: !5257, file: !1037, line: 55, column: 7)
!5302 = !DILocation(line: 0, scope: !5257)
!5303 = !DILocation(line: 55, column: 12, scope: !5301)
!5304 = !{!2800, !1066, i64 16}
!5305 = !DILocation(line: 55, column: 33, scope: !5301)
!5306 = !{!2800, !1066, i64 8}
!5307 = !DILocation(line: 55, column: 25, scope: !5301)
!5308 = !DILocation(line: 56, column: 7, scope: !5301)
!5309 = !DILocation(line: 56, column: 15, scope: !5301)
!5310 = !DILocation(line: 56, column: 37, scope: !5301)
!5311 = !{!2800, !1066, i64 32}
!5312 = !DILocation(line: 56, column: 29, scope: !5301)
!5313 = !DILocation(line: 57, column: 7, scope: !5301)
!5314 = !DILocation(line: 57, column: 15, scope: !5301)
!5315 = !{!2800, !1066, i64 72}
!5316 = !DILocation(line: 57, column: 29, scope: !5301)
!5317 = !DILocation(line: 55, column: 7, scope: !5257)
!5318 = !DILocation(line: 123, column: 26, scope: !5300)
!5319 = !DILocation(line: 123, column: 19, scope: !5300)
!5320 = !DILocation(line: 0, scope: !5300)
!5321 = !DILocation(line: 124, column: 15, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5300, file: !1037, line: 124, column: 11)
!5323 = !DILocation(line: 124, column: 11, scope: !5300)
!5324 = !DILocation(line: 135, column: 19, scope: !5300)
!5325 = !DILocation(line: 136, column: 12, scope: !5300)
!5326 = !DILocation(line: 136, column: 20, scope: !5300)
!5327 = !{!2800, !1344, i64 144}
!5328 = !DILocation(line: 167, column: 7, scope: !5300)
!5329 = !DILocation(line: 169, column: 10, scope: !5257)
!5330 = !DILocation(line: 169, column: 3, scope: !5257)
!5331 = !DILocation(line: 170, column: 1, scope: !5257)
!5332 = !DISubprogram(name: "fseeko", scope: !1143, file: !1143, line: 736, type: !5333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!5333 = !DISubroutineType(types: !5334)
!5334 = !{!122, !5260, !352, !122}
!5335 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !965, file: !965, line: 100, type: !5336, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !5339)
!5336 = !DISubroutineType(types: !5337)
!5337 = !{!166, !2968, !169, !166, !5338}
!5338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!5339 = !{!5340, !5341, !5342, !5343, !5344}
!5340 = !DILocalVariable(name: "pwc", arg: 1, scope: !5335, file: !965, line: 100, type: !2968)
!5341 = !DILocalVariable(name: "s", arg: 2, scope: !5335, file: !965, line: 100, type: !169)
!5342 = !DILocalVariable(name: "n", arg: 3, scope: !5335, file: !965, line: 100, type: !166)
!5343 = !DILocalVariable(name: "ps", arg: 4, scope: !5335, file: !965, line: 100, type: !5338)
!5344 = !DILocalVariable(name: "ret", scope: !5335, file: !965, line: 130, type: !166)
!5345 = !DILocation(line: 0, scope: !5335)
!5346 = !DILocation(line: 105, column: 9, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5335, file: !965, line: 105, column: 7)
!5348 = !DILocation(line: 105, column: 7, scope: !5335)
!5349 = !DILocation(line: 117, column: 10, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5335, file: !965, line: 117, column: 7)
!5351 = !DILocation(line: 117, column: 7, scope: !5335)
!5352 = !DILocation(line: 130, column: 16, scope: !5335)
!5353 = !DILocation(line: 135, column: 11, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5335, file: !965, line: 135, column: 7)
!5355 = !DILocation(line: 135, column: 25, scope: !5354)
!5356 = !DILocation(line: 135, column: 30, scope: !5354)
!5357 = !DILocation(line: 135, column: 7, scope: !5335)
!5358 = !DILocalVariable(name: "ps", arg: 1, scope: !5359, file: !2942, line: 1135, type: !5338)
!5359 = distinct !DISubprogram(name: "mbszero", scope: !2942, file: !2942, line: 1135, type: !5360, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !5362)
!5360 = !DISubroutineType(types: !5361)
!5361 = !{null, !5338}
!5362 = !{!5358}
!5363 = !DILocation(line: 0, scope: !5359, inlinedAt: !5364)
!5364 = distinct !DILocation(line: 137, column: 5, scope: !5354)
!5365 = !DILocalVariable(name: "__dest", arg: 1, scope: !5366, file: !1566, line: 57, type: !164)
!5366 = distinct !DISubprogram(name: "memset", scope: !1566, file: !1566, line: 57, type: !2951, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !5367)
!5367 = !{!5365, !5368, !5369}
!5368 = !DILocalVariable(name: "__ch", arg: 2, scope: !5366, file: !1566, line: 57, type: !122)
!5369 = !DILocalVariable(name: "__len", arg: 3, scope: !5366, file: !1566, line: 57, type: !166)
!5370 = !DILocation(line: 0, scope: !5366, inlinedAt: !5371)
!5371 = distinct !DILocation(line: 1137, column: 3, scope: !5359, inlinedAt: !5364)
!5372 = !DILocation(line: 59, column: 10, scope: !5366, inlinedAt: !5371)
!5373 = !DILocation(line: 137, column: 5, scope: !5354)
!5374 = !DILocation(line: 138, column: 11, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5335, file: !965, line: 138, column: 7)
!5376 = !DILocation(line: 138, column: 7, scope: !5335)
!5377 = !DILocation(line: 139, column: 5, scope: !5375)
!5378 = !DILocation(line: 143, column: 26, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5335, file: !965, line: 143, column: 7)
!5380 = !DILocation(line: 143, column: 41, scope: !5379)
!5381 = !DILocation(line: 143, column: 7, scope: !5335)
!5382 = !DILocation(line: 145, column: 15, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5384, file: !965, line: 145, column: 11)
!5384 = distinct !DILexicalBlock(scope: !5379, file: !965, line: 144, column: 5)
!5385 = !DILocation(line: 145, column: 11, scope: !5384)
!5386 = !DILocation(line: 146, column: 32, scope: !5383)
!5387 = !DILocation(line: 146, column: 16, scope: !5383)
!5388 = !DILocation(line: 146, column: 14, scope: !5383)
!5389 = !DILocation(line: 146, column: 9, scope: !5383)
!5390 = !DILocation(line: 286, column: 1, scope: !5335)
!5391 = !DISubprogram(name: "mbsinit", scope: !5392, file: !5392, line: 293, type: !5393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1074)
!5392 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5393 = !DISubroutineType(types: !5394)
!5394 = !{!122, !5395}
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !971)
!5397 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1039, file: !1039, line: 27, type: !4609, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1038, retainedNodes: !5398)
!5398 = !{!5399, !5400, !5401, !5402}
!5399 = !DILocalVariable(name: "ptr", arg: 1, scope: !5397, file: !1039, line: 27, type: !164)
!5400 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5397, file: !1039, line: 27, type: !166)
!5401 = !DILocalVariable(name: "size", arg: 3, scope: !5397, file: !1039, line: 27, type: !166)
!5402 = !DILocalVariable(name: "nbytes", scope: !5397, file: !1039, line: 29, type: !166)
!5403 = !DILocation(line: 0, scope: !5397)
!5404 = !DILocation(line: 30, column: 7, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5397, file: !1039, line: 30, column: 7)
!5406 = !DILocalVariable(name: "ptr", arg: 1, scope: !5407, file: !4701, line: 2057, type: !164)
!5407 = distinct !DISubprogram(name: "rpl_realloc", scope: !4701, file: !4701, line: 2057, type: !4693, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1038, retainedNodes: !5408)
!5408 = !{!5406, !5409}
!5409 = !DILocalVariable(name: "size", arg: 2, scope: !5407, file: !4701, line: 2057, type: !166)
!5410 = !DILocation(line: 0, scope: !5407, inlinedAt: !5411)
!5411 = distinct !DILocation(line: 37, column: 10, scope: !5397)
!5412 = !DILocation(line: 2059, column: 24, scope: !5407, inlinedAt: !5411)
!5413 = !DILocation(line: 2059, column: 10, scope: !5407, inlinedAt: !5411)
!5414 = !DILocation(line: 37, column: 3, scope: !5397)
!5415 = !DILocation(line: 32, column: 7, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5405, file: !1039, line: 31, column: 5)
!5417 = !DILocation(line: 32, column: 13, scope: !5416)
!5418 = !DILocation(line: 33, column: 7, scope: !5416)
!5419 = !DILocation(line: 38, column: 1, scope: !5397)
!5420 = distinct !DISubprogram(name: "hard_locale", scope: !983, file: !983, line: 28, type: !1529, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !5421)
!5421 = !{!5422, !5423}
!5422 = !DILocalVariable(name: "category", arg: 1, scope: !5420, file: !983, line: 28, type: !122)
!5423 = !DILocalVariable(name: "locale", scope: !5420, file: !983, line: 30, type: !5424)
!5424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5425)
!5425 = !{!5426}
!5426 = !DISubrange(count: 257)
!5427 = !DILocation(line: 0, scope: !5420)
!5428 = !DILocation(line: 30, column: 3, scope: !5420)
!5429 = !DILocation(line: 30, column: 8, scope: !5420)
!5430 = !DILocation(line: 32, column: 7, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5420, file: !983, line: 32, column: 7)
!5432 = !DILocation(line: 32, column: 7, scope: !5420)
!5433 = !DILocalVariable(name: "__s1", arg: 1, scope: !5434, file: !1161, line: 1359, type: !169)
!5434 = distinct !DISubprogram(name: "streq", scope: !1161, file: !1161, line: 1359, type: !1162, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !5435)
!5435 = !{!5433, !5436}
!5436 = !DILocalVariable(name: "__s2", arg: 2, scope: !5434, file: !1161, line: 1359, type: !169)
!5437 = !DILocation(line: 0, scope: !5434, inlinedAt: !5438)
!5438 = distinct !DILocation(line: 35, column: 9, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5420, file: !983, line: 35, column: 7)
!5440 = !DILocation(line: 1361, column: 11, scope: !5434, inlinedAt: !5438)
!5441 = !DILocation(line: 35, column: 29, scope: !5439)
!5442 = !DILocation(line: 0, scope: !5434, inlinedAt: !5443)
!5443 = distinct !DILocation(line: 35, column: 32, scope: !5439)
!5444 = !DILocation(line: 1361, column: 11, scope: !5434, inlinedAt: !5443)
!5445 = !DILocation(line: 1361, column: 10, scope: !5434, inlinedAt: !5443)
!5446 = !DILocation(line: 35, column: 7, scope: !5420)
!5447 = !DILocation(line: 46, column: 3, scope: !5420)
!5448 = !DILocation(line: 47, column: 1, scope: !5420)
!5449 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1046, file: !1046, line: 154, type: !5450, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1045, retainedNodes: !5452)
!5450 = !DISubroutineType(types: !5451)
!5451 = !{!122, !122, !163, !166}
!5452 = !{!5453, !5454, !5455}
!5453 = !DILocalVariable(name: "category", arg: 1, scope: !5449, file: !1046, line: 154, type: !122)
!5454 = !DILocalVariable(name: "buf", arg: 2, scope: !5449, file: !1046, line: 154, type: !163)
!5455 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5449, file: !1046, line: 154, type: !166)
!5456 = !DILocation(line: 0, scope: !5449)
!5457 = !DILocation(line: 159, column: 10, scope: !5449)
!5458 = !DILocation(line: 159, column: 3, scope: !5449)
!5459 = distinct !DISubprogram(name: "setlocale_null", scope: !1046, file: !1046, line: 186, type: !5460, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1045, retainedNodes: !5462)
!5460 = !DISubroutineType(types: !5461)
!5461 = !{!169, !122}
!5462 = !{!5463}
!5463 = !DILocalVariable(name: "category", arg: 1, scope: !5459, file: !1046, line: 186, type: !122)
!5464 = !DILocation(line: 0, scope: !5459)
!5465 = !DILocation(line: 189, column: 10, scope: !5459)
!5466 = !DILocation(line: 189, column: 3, scope: !5459)
!5467 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1048, file: !1048, line: 35, type: !5460, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1047, retainedNodes: !5468)
!5468 = !{!5469, !5470}
!5469 = !DILocalVariable(name: "category", arg: 1, scope: !5467, file: !1048, line: 35, type: !122)
!5470 = !DILocalVariable(name: "result", scope: !5467, file: !1048, line: 37, type: !169)
!5471 = !DILocation(line: 0, scope: !5467)
!5472 = !DILocation(line: 37, column: 24, scope: !5467)
!5473 = !DILocation(line: 62, column: 3, scope: !5467)
!5474 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1048, file: !1048, line: 66, type: !5450, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1047, retainedNodes: !5475)
!5475 = !{!5476, !5477, !5478, !5479, !5480}
!5476 = !DILocalVariable(name: "category", arg: 1, scope: !5474, file: !1048, line: 66, type: !122)
!5477 = !DILocalVariable(name: "buf", arg: 2, scope: !5474, file: !1048, line: 66, type: !163)
!5478 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5474, file: !1048, line: 66, type: !166)
!5479 = !DILocalVariable(name: "result", scope: !5474, file: !1048, line: 111, type: !169)
!5480 = !DILocalVariable(name: "length", scope: !5481, file: !1048, line: 125, type: !166)
!5481 = distinct !DILexicalBlock(scope: !5482, file: !1048, line: 124, column: 5)
!5482 = distinct !DILexicalBlock(scope: !5474, file: !1048, line: 113, column: 7)
!5483 = !DILocation(line: 0, scope: !5474)
!5484 = !DILocation(line: 0, scope: !5467, inlinedAt: !5485)
!5485 = distinct !DILocation(line: 111, column: 24, scope: !5474)
!5486 = !DILocation(line: 37, column: 24, scope: !5467, inlinedAt: !5485)
!5487 = !DILocation(line: 113, column: 14, scope: !5482)
!5488 = !DILocation(line: 113, column: 7, scope: !5474)
!5489 = !DILocation(line: 116, column: 19, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5491, file: !1048, line: 116, column: 11)
!5491 = distinct !DILexicalBlock(scope: !5482, file: !1048, line: 114, column: 5)
!5492 = !DILocation(line: 116, column: 11, scope: !5491)
!5493 = !DILocation(line: 120, column: 16, scope: !5490)
!5494 = !DILocation(line: 120, column: 9, scope: !5490)
!5495 = !DILocation(line: 125, column: 23, scope: !5481)
!5496 = !DILocation(line: 0, scope: !5481)
!5497 = !DILocation(line: 126, column: 18, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5481, file: !1048, line: 126, column: 11)
!5499 = !DILocation(line: 126, column: 11, scope: !5481)
!5500 = !DILocation(line: 128, column: 39, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5498, file: !1048, line: 127, column: 9)
!5502 = !DILocalVariable(name: "__dest", arg: 1, scope: !5503, file: !1566, line: 26, type: !1569)
!5503 = distinct !DISubprogram(name: "memcpy", scope: !1566, file: !1566, line: 26, type: !1567, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1047, retainedNodes: !5504)
!5504 = !{!5502, !5505, !5506}
!5505 = !DILocalVariable(name: "__src", arg: 2, scope: !5503, file: !1566, line: 26, type: !1296)
!5506 = !DILocalVariable(name: "__len", arg: 3, scope: !5503, file: !1566, line: 26, type: !166)
!5507 = !DILocation(line: 0, scope: !5503, inlinedAt: !5508)
!5508 = distinct !DILocation(line: 128, column: 11, scope: !5501)
!5509 = !DILocation(line: 29, column: 10, scope: !5503, inlinedAt: !5508)
!5510 = !DILocation(line: 129, column: 11, scope: !5501)
!5511 = !DILocation(line: 133, column: 23, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5513, file: !1048, line: 133, column: 15)
!5513 = distinct !DILexicalBlock(scope: !5498, file: !1048, line: 132, column: 9)
!5514 = !DILocation(line: 133, column: 15, scope: !5513)
!5515 = !DILocation(line: 138, column: 44, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5512, file: !1048, line: 134, column: 13)
!5517 = !DILocation(line: 0, scope: !5503, inlinedAt: !5518)
!5518 = distinct !DILocation(line: 138, column: 15, scope: !5516)
!5519 = !DILocation(line: 29, column: 10, scope: !5503, inlinedAt: !5518)
!5520 = !DILocation(line: 139, column: 15, scope: !5516)
!5521 = !DILocation(line: 139, column: 32, scope: !5516)
!5522 = !DILocation(line: 140, column: 13, scope: !5516)
!5523 = !DILocation(line: 0, scope: !5482)
!5524 = !DILocation(line: 145, column: 1, scope: !5474)
