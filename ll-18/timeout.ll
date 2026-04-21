; ModuleID = 'src/timeout.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.numname = type { i32, [8 x i8] }
%struct.__mbstate_t = type { i32, %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, ptr }
%union.anon = type { ptr }
%struct.__sigset_t = type { [16 x i64] }
%struct.itimerspec = type { %struct.timespec, %struct.timespec }
%struct.timespec = type { i64, i64 }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [49 x i8] c"Usage: %s [OPTION]... DURATION COMMAND [ARG]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [61 x i8] c"Start COMMAND, and kill it if still running after DURATION.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [214 x i8] c"  -f, --foreground\0A         when not running timeout directly from a shell prompt,\0A         allow COMMAND to read from the TTY and get TTY signals;\0A         in this mode, children of COMMAND will not be timed out\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [143 x i8] c"  -k, --kill-after=DURATION\0A         also send a KILL signal if COMMAND is still running\0A         this long after the initial signal was sent\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [113 x i8] c"  -p, --preserve-status\0A         exit with the same status as COMMAND,\0A         even when the command times out\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [173 x i8] c"  -s, --signal=SIGNAL\0A         specify the signal to be sent on timeout;\0A         SIGNAL may be a name like 'HUP' or a number;\0A         see 'kill -l' for a list of signals\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [82 x i8] c"  -v, --verbose\0A         diagnose to standard error any signal sent upon timeout\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [191 x i8] c"\0ADURATION is a floating point number with an optional suffix:\0A's' for seconds (the default), 'm' for minutes, 'h' for hours or 'd' for days.\0AA duration of 0 disables the associated timeout.\0A\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [234 x i8] c"\0AUpon timeout, send the TERM signal to COMMAND, if no other SIGNAL specified.\0AThe TERM signal kills any process that does not block or catch that signal.\0AIt may be necessary to use the KILL signal, since this signal can't be caught.\0A\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [327 x i8] c"\0AExit status:\0A  124  if COMMAND times out, and --preserve-status is not specified\0A  125  if the timeout command itself fails\0A  126  if COMMAND is found but cannot be invoked\0A  127  if COMMAND cannot be found\0A  137  if COMMAND (or timeout itself) is sent the KILL (9) signal (128+9)\0A  -    the exit status of COMMAND otherwise\0A\00", align 1, !dbg !67
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !72
@.str.15 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !77
@.str.16 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !82
@.str.17 = private unnamed_addr constant [9 x i8] c"+fk:ps:v\00", align 1, !dbg !87
@long_options = internal constant [8 x %struct.option] [%struct.option { ptr @.str.63, i32 0, ptr null, i32 102 }, %struct.option { ptr @.str.64, i32 1, ptr null, i32 107 }, %struct.option { ptr @.str.65, i32 0, ptr null, i32 112 }, %struct.option { ptr @.str.66, i32 1, ptr null, i32 115 }, %struct.option { ptr @.str.67, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.68, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.69, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !92
@foreground = internal unnamed_addr global i1 false, align 1, !dbg !454
@optarg = external local_unnamed_addr global ptr, align 8
@kill_after = internal unnamed_addr global double 0.000000e+00, align 8, !dbg !185
@preserve_status = internal unnamed_addr global i1 false, align 1, !dbg !455
@term_signal = internal unnamed_addr global i32 15, align 4, !dbg !413
@verbose = internal unnamed_addr global i1 false, align 1, !dbg !456
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !141
@.str.19 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1, !dbg !146
@.str.20 = private unnamed_addr constant [15 x i8] c"P\C3\A1draig Brady\00", align 1, !dbg !148
@optind = external local_unnamed_addr global i32, align 4
@command = internal unnamed_addr global ptr null, align 8, !dbg !195
@monitored_pid = internal unnamed_addr global i32 0, align 4, !dbg !179
@.str.21 = private unnamed_addr constant [24 x i8] c"fork system call failed\00", align 1, !dbg !153
@.str.22 = private unnamed_addr constant [34 x i8] c"child failed to reset signal mask\00", align 1, !dbg !155
@.str.23 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1, !dbg !160
@.str.24 = private unnamed_addr constant [26 x i8] c"error waiting for command\00", align 1, !dbg !165
@.str.25 = private unnamed_addr constant [34 x i8] c"the monitored command dumped core\00", align 1, !dbg !170
@timed_out = internal unnamed_addr global i1 false, align 4, !dbg !457
@.str.26 = private unnamed_addr constant [33 x i8] c"unknown status from command (%d)\00", align 1, !dbg !172
@.str.27 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !197
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !202
@.str.28 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !282
@.str.29 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !287
@.str.30 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !289
@.str.31 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !294
@.str.45 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !334
@.str.46 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !336
@.str.47 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !338
@.str.48 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !343
@.str.49 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !348
@.str.50 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !350
@.str.51 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !352
@.str.52 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !354
@.str.53 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !356
@.str.54 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !358
@.str.58 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !372
@.str.59 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !374
@.str.60 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !379
@.str.61 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !384
@.str.62 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !389
@.str.63 = private unnamed_addr constant [11 x i8] c"foreground\00", align 1, !dbg !394
@.str.64 = private unnamed_addr constant [11 x i8] c"kill-after\00", align 1, !dbg !399
@.str.65 = private unnamed_addr constant [16 x i8] c"preserve-status\00", align 1, !dbg !401
@.str.66 = private unnamed_addr constant [7 x i8] c"signal\00", align 1, !dbg !403
@.str.67 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1, !dbg !405
@.str.68 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !407
@.str.69 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !409
@.str.70 = private unnamed_addr constant [25 x i8] c"invalid time interval %s\00", align 1, !dbg !411
@term_sig = internal unnamed_addr constant [22 x i32] [i32 14, i32 2, i32 3, i32 1, i32 15, i32 13, i32 10, i32 12, i32 4, i32 5, i32 6, i32 7, i32 8, i32 11, i32 24, i32 25, i32 31, i32 26, i32 27, i32 29, i32 30, i32 16], align 4, !dbg !422
@.str.71 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !415
@.str.72 = private unnamed_addr constant [32 x i8] c"sending signal %s to command %s\00", align 1, !dbg !417
@.str.73 = private unnamed_addr constant [21 x i8] c"warning: sigprocmask\00", align 1, !dbg !427
@.str.74 = private unnamed_addr constant [23 x i8] c"warning: timer_settime\00", align 1, !dbg !432
@.str.75 = private unnamed_addr constant [22 x i8] c"warning: timer_create\00", align 1, !dbg !437
@.str.76 = private unnamed_addr constant [37 x i8] c"warning: disabling core dumps failed\00", align 1, !dbg !439
@.str.1.3 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1, !dbg !458
@.str.32 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !464
@Version = dso_local local_unnamed_addr global ptr @.str.32, align 8, !dbg !467
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !471
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !484
@.str.37 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !476
@.str.1.38 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !478
@.str.2.39 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !480
@.str.3.40 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !482
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !486
@stderr = external local_unnamed_addr global ptr, align 8
@.str.43 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !492
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !528
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !494
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !518
@.str.1.49 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !520
@.str.2.51 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !522
@.str.3.50 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !524
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !526
@.str.4.44 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !530
@.str.5.45 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !532
@.str.6.46 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !534
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !539
@.str.77 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !545
@.str.1.78 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !547
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !549
@.str.81 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !580
@.str.1.82 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !583
@.str.2.83 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !585
@.str.3.84 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !590
@.str.4.85 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !592
@.str.5.86 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !594
@.str.6.87 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !596
@.str.7.88 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !598
@.str.8.89 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !600
@.str.9.90 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !602
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.81, ptr @.str.1.82, ptr @.str.2.83, ptr @.str.3.84, ptr @.str.4.85, ptr @.str.5.86, ptr @.str.6.87, ptr @.str.7.88, ptr @.str.8.89, ptr @.str.9.90, ptr null], align 8, !dbg !604
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !629
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !643
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !681
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !688
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !645
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !690
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !633
@.str.10.93 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !650
@.str.11.91 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !652
@.str.12.94 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !654
@.str.13.92 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !656
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !658
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 4, !dbg !694
@.str.101 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1, !dbg !700
@.str.1.102 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1, !dbg !702
@.str.2.105 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1, !dbg !704
@.str.106 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !714
@.str.1.107 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !717
@.str.2.108 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !719
@.str.3.109 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !721
@.str.4.110 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !723
@.str.5.111 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !725
@.str.6.112 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !730
@.str.7.113 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !732
@.str.8.114 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !734
@.str.9.115 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !736
@.str.10.116 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !741
@.str.11.117 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !743
@.str.12.118 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !748
@.str.13.119 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !750
@.str.14.120 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !755
@.str.15.121 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !760
@.str.16.122 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !765
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.127 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !770
@.str.18.128 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !772
@.str.19.129 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !774
@.str.20.130 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !776
@.str.21.131 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !778
@.str.22.132 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !780
@.str.23.133 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !782
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !787
@exit_failure = dso_local global i32 1, align 4, !dbg !795
@.str.148 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !801
@.str.1.146 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !804
@.str.2.147 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !806
@c_locale_cache = internal global ptr null, align 8, !dbg !808
@.str.151 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !833
@.str.162 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !836
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !839
@.str.167 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !854
@.str.1.168 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !857

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !947 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !949, metadata !DIExpression()), !dbg !950
  %2 = icmp eq i32 %0, 0, !dbg !951
  br i1 %2, label %8, label %3, !dbg !953

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !954, !tbaa !956
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #41, !dbg !954
  %6 = load ptr, ptr @program_name, align 8, !dbg !954, !tbaa !956
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #41, !dbg !954
  br label %48, !dbg !954

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #41, !dbg !960
  %10 = load ptr, ptr @program_name, align 8, !dbg !960, !tbaa !956
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #41, !dbg !960
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #41, !dbg !962
  %13 = load ptr, ptr @stdout, align 8, !dbg !962, !tbaa !956
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !962
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #41, !dbg !963
  %16 = load ptr, ptr @stdout, align 8, !dbg !963, !tbaa !956
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !963
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #41, !dbg !966
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !966
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #41, !dbg !967
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !967
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #41, !dbg !968
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !968
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #41, !dbg !969
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !969
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #41, !dbg !970
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !970
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #41, !dbg !971
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !971
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #41, !dbg !972
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !972
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #41, !dbg !973
  %26 = load ptr, ptr @stdout, align 8, !dbg !973, !tbaa !956
  %27 = tail call i32 @fputs_unlocked(ptr noundef %25, ptr noundef %26), !dbg !973
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #41, !dbg !974
  %29 = load ptr, ptr @stdout, align 8, !dbg !974, !tbaa !956
  %30 = tail call i32 @fputs_unlocked(ptr noundef %28, ptr noundef %29), !dbg !974
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #41, !dbg !975
  %32 = load ptr, ptr @stdout, align 8, !dbg !975, !tbaa !956
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !975
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !976, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata !995, metadata !989, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata ptr poison, metadata !988, metadata !DIExpression()), !dbg !993
  tail call void @emit_bug_reporting_address() #41, !dbg !996
  %34 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #41, !dbg !997
  call void @llvm.dbg.value(metadata ptr %34, metadata !991, metadata !DIExpression()), !dbg !993
  %35 = icmp eq ptr %34, null, !dbg !998
  br i1 %35, label %43, label %36, !dbg !1000

36:                                               ; preds = %8
  %37 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(4) @.str.58, i64 noundef 3) #42, !dbg !1001
  %38 = icmp eq i32 %37, 0, !dbg !1001
  br i1 %38, label %43, label %39, !dbg !1002

39:                                               ; preds = %36
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #41, !dbg !1003
  %41 = load ptr, ptr @stdout, align 8, !dbg !1003, !tbaa !956
  %42 = tail call i32 @fputs_unlocked(ptr noundef %40, ptr noundef %41), !dbg !1003
  br label %43, !dbg !1005

43:                                               ; preds = %8, %36, %39
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !988, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !992, metadata !DIExpression()), !dbg !993
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #41, !dbg !1006
  %45 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %44, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.3) #41, !dbg !1006
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #41, !dbg !1007
  %47 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %46, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.62) #41, !dbg !1007
  br label %48

48:                                               ; preds = %43, %3
  tail call void @exit(i32 noundef %0) #43, !dbg !1008
  unreachable, !dbg !1008
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1009 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1013 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1019 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1022 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !204 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !208, metadata !DIExpression()), !dbg !1025
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !209, metadata !DIExpression()), !dbg !1025
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1026, !tbaa !1027
  %3 = icmp eq i32 %2, -1, !dbg !1029
  br i1 %3, label %4, label %16, !dbg !1030

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.28) #41, !dbg !1031
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !210, metadata !DIExpression()), !dbg !1032
  %6 = icmp eq ptr %5, null, !dbg !1033
  br i1 %6, label %14, label %7, !dbg !1034

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1035, !tbaa !1036
  %9 = icmp eq i8 %8, 0, !dbg !1035
  br i1 %9, label %14, label %10, !dbg !1037

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1038, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata ptr @.str.29, metadata !1044, metadata !DIExpression()), !dbg !1045
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.29) #42, !dbg !1047
  %12 = icmp eq i32 %11, 0, !dbg !1048
  %13 = zext i1 %12 to i32, !dbg !1037
  br label %14, !dbg !1037

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1049, !tbaa !1027
  br label %16, !dbg !1050

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1051
  %18 = icmp eq i32 %17, 0, !dbg !1051
  br i1 %18, label %22, label %19, !dbg !1053

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1054, !tbaa !956
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1054
  br label %121, !dbg !1056

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !213, metadata !DIExpression()), !dbg !1025
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.30) #42, !dbg !1057
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1058
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !214, metadata !DIExpression()), !dbg !1025
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #42, !dbg !1059
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !215, metadata !DIExpression()), !dbg !1025
  %26 = icmp eq ptr %25, null, !dbg !1060
  br i1 %26, label %53, label %27, !dbg !1061

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1062
  br i1 %28, label %53, label %29, !dbg !1063

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !216, metadata !DIExpression()), !dbg !1064
  tail call void @llvm.dbg.value(metadata i64 0, metadata !220, metadata !DIExpression()), !dbg !1064
  %30 = icmp ult ptr %24, %25, !dbg !1065
  br i1 %30, label %31, label %53, !dbg !1066

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #44, !dbg !1025
  %33 = load ptr, ptr %32, align 8, !tbaa !956
  br label %34, !dbg !1066

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !216, metadata !DIExpression()), !dbg !1064
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !220, metadata !DIExpression()), !dbg !1064
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1067
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !216, metadata !DIExpression()), !dbg !1064
  %38 = load i8, ptr %35, align 1, !dbg !1067, !tbaa !1036
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1067
  %41 = load i16, ptr %40, align 2, !dbg !1067, !tbaa !1068
  %42 = freeze i16 %41, !dbg !1070
  %43 = lshr i16 %42, 13, !dbg !1070
  %44 = and i16 %43, 1, !dbg !1070
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1071
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !220, metadata !DIExpression()), !dbg !1064
  %47 = icmp ult ptr %37, %25, !dbg !1065
  %48 = icmp ult i64 %46, 2, !dbg !1072
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1072
  br i1 %49, label %34, label %50, !dbg !1066, !llvm.loop !1073

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !1071
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !1075
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1077
  br label %53, !dbg !1077

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1025
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !213, metadata !DIExpression()), !dbg !1025
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !215, metadata !DIExpression()), !dbg !1025
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.31) #42, !dbg !1078
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !221, metadata !DIExpression()), !dbg !1025
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !1079
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !222, metadata !DIExpression()), !dbg !1025
  br label %58, !dbg !1080

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !1025
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !213, metadata !DIExpression()), !dbg !1025
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !222, metadata !DIExpression()), !dbg !1025
  %61 = load i8, ptr %59, align 1, !dbg !1081, !tbaa !1036
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !1082

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1083
  %64 = load i8, ptr %63, align 1, !dbg !1086, !tbaa !1036
  %65 = icmp ne i8 %64, 45, !dbg !1087
  %66 = select i1 %65, i1 %60, i1 false, !dbg !1088
  br label %67, !dbg !1088

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !213, metadata !DIExpression()), !dbg !1025
  %69 = tail call ptr @__ctype_b_loc() #44, !dbg !1089
  %70 = load ptr, ptr %69, align 8, !dbg !1089, !tbaa !956
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !1089
  %73 = load i16, ptr %72, align 2, !dbg !1089, !tbaa !1068
  %74 = and i16 %73, 8192, !dbg !1089
  %75 = icmp eq i16 %74, 0, !dbg !1089
  br i1 %75, label %89, label %76, !dbg !1091

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !1092
  br i1 %77, label %91, label %78, !dbg !1095

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1096
  %80 = load i8, ptr %79, align 1, !dbg !1096, !tbaa !1036
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !1096
  %83 = load i16, ptr %82, align 2, !dbg !1096, !tbaa !1068
  %84 = and i16 %83, 8192, !dbg !1096
  %85 = icmp eq i16 %84, 0, !dbg !1096
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !1097
  br i1 %88, label %89, label %91, !dbg !1097

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1098
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !222, metadata !DIExpression()), !dbg !1025
  br label %58, !dbg !1080, !llvm.loop !1099

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !1025
  %92 = ptrtoint ptr %24 to i64, !dbg !1101
  %93 = load ptr, ptr @stdout, align 8, !dbg !1101, !tbaa !956
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !1101
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata !995, metadata !1044, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1038, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata !995, metadata !1044, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1038, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata !995, metadata !1044, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1038, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata !995, metadata !1044, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1038, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata !995, metadata !1044, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1038, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata !995, metadata !1044, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1038, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata !995, metadata !1044, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1038, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata !995, metadata !1044, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1038, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata !995, metadata !1044, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1038, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata !995, metadata !1044, metadata !DIExpression()), !dbg !1120
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !277, metadata !DIExpression()), !dbg !1025
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.45, i64 noundef 6) #42, !dbg !1122
  %96 = icmp eq i32 %95, 0, !dbg !1122
  br i1 %96, label %100, label %97, !dbg !1124

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.46, i64 noundef 9) #42, !dbg !1125
  %99 = icmp eq i32 %98, 0, !dbg !1125
  br i1 %99, label %100, label %103, !dbg !1126

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1127
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #41, !dbg !1127
  br label %106, !dbg !1129

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1130
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #41, !dbg !1130
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1132, !tbaa !956
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.51, ptr noundef %107), !dbg !1132
  %109 = load ptr, ptr @stdout, align 8, !dbg !1133, !tbaa !956
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.52, ptr noundef %109), !dbg !1133
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1134
  %112 = sub i64 %111, %92, !dbg !1134
  %113 = load ptr, ptr @stdout, align 8, !dbg !1134, !tbaa !956
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1134
  %115 = load ptr, ptr @stdout, align 8, !dbg !1135, !tbaa !956
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.53, ptr noundef %115), !dbg !1135
  %117 = load ptr, ptr @stdout, align 8, !dbg !1136, !tbaa !956
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.54, ptr noundef %117), !dbg !1136
  %119 = load ptr, ptr @stdout, align 8, !dbg !1137, !tbaa !956
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1137
  br label %121, !dbg !1138

121:                                              ; preds = %106, %19
  ret void, !dbg !1138
}

; Function Attrs: nounwind
declare !dbg !1139 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1143 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1147 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1149 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1152 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1155 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1158 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1161 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1165 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1166 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1172 {
  %3 = alloca %struct.sigaction, align 8, !DIAssignID !1204
  %4 = alloca %struct.sigaction, align 8, !DIAssignID !1205
  %5 = alloca %struct.__sigset_t, align 8, !DIAssignID !1206
  %6 = alloca %struct.sigaction, align 8, !DIAssignID !1207
  %7 = alloca %struct.sigaction, align 8, !DIAssignID !1208
  %8 = alloca %struct.sigaction, align 8, !DIAssignID !1209
  %9 = alloca %struct.sigaction, align 8, !DIAssignID !1210
  %10 = alloca %struct.__sigset_t, align 8, !DIAssignID !1211
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1181, metadata !DIExpression(), metadata !1211, metadata ptr %10, metadata !DIExpression()), !dbg !1212
  %11 = alloca i32, align 4, !DIAssignID !1213
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1197, metadata !DIExpression(), metadata !1213, metadata ptr %11, metadata !DIExpression()), !dbg !1214
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1177, metadata !DIExpression()), !dbg !1212
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1178, metadata !DIExpression()), !dbg !1212
  %12 = load ptr, ptr %1, align 8, !dbg !1215, !tbaa !956
  tail call void @set_program_name(ptr noundef %12) #41, !dbg !1216
  %13 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.14) #41, !dbg !1217
  %14 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #41, !dbg !1218
  %15 = tail call ptr @textdomain(ptr noundef nonnull @.str.15) #41, !dbg !1219
  tail call void @llvm.dbg.value(metadata i32 125, metadata !1220, metadata !DIExpression()), !dbg !1223
  store volatile i32 125, ptr @exit_failure, align 4, !dbg !1225, !tbaa !1027
  %16 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #41, !dbg !1227
  br label %17, !dbg !1228

17:                                               ; preds = %28, %2
  %18 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @long_options, ptr noundef null) #41, !dbg !1229
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !1180, metadata !DIExpression()), !dbg !1212
  switch i32 %18, label %36 [
    i32 -1, label %37
    i32 102, label %19
    i32 107, label %20
    i32 112, label %23
    i32 115, label %24
    i32 118, label %30
    i32 -2, label %31
    i32 -3, label %32
  ], !dbg !1228

19:                                               ; preds = %17
  store i1 true, ptr @foreground, align 1, !dbg !1230
  br label %28, !dbg !1233

20:                                               ; preds = %17
  %21 = load ptr, ptr @optarg, align 8, !dbg !1234, !tbaa !956
  %22 = tail call fastcc double @parse_duration(ptr noundef %21), !dbg !1235
  store double %22, ptr @kill_after, align 8, !dbg !1236, !tbaa !1237
  br label %28, !dbg !1239

23:                                               ; preds = %17
  store i1 true, ptr @preserve_status, align 1, !dbg !1240
  br label %28, !dbg !1241

24:                                               ; preds = %17
  %25 = load ptr, ptr @optarg, align 8, !dbg !1242, !tbaa !956
  %26 = tail call i32 @operand2sig(ptr noundef %25) #41, !dbg !1243
  store i32 %26, ptr @term_signal, align 4, !dbg !1244, !tbaa !1027
  %27 = icmp eq i32 %26, -1, !dbg !1245
  br i1 %27, label %29, label %28, !dbg !1247

28:                                               ; preds = %24, %30, %23, %20, %19
  br label %17, !dbg !1229, !llvm.loop !1248

29:                                               ; preds = %24
  tail call void @usage(i32 noundef 125) #45, !dbg !1250
  unreachable, !dbg !1250

30:                                               ; preds = %17
  store i1 true, ptr @verbose, align 1, !dbg !1251
  br label %28, !dbg !1252

31:                                               ; preds = %17
  tail call void @usage(i32 noundef 0) #45, !dbg !1253
  unreachable, !dbg !1253

32:                                               ; preds = %17
  %33 = load ptr, ptr @stdout, align 8, !dbg !1254, !tbaa !956
  %34 = load ptr, ptr @Version, align 8, !dbg !1254, !tbaa !956
  %35 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #41, !dbg !1254
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18, ptr noundef %34, ptr noundef %35, ptr noundef null) #41, !dbg !1254
  tail call void @exit(i32 noundef 0) #43, !dbg !1254
  unreachable, !dbg !1254

36:                                               ; preds = %17
  tail call void @usage(i32 noundef 125) #45, !dbg !1255
  unreachable, !dbg !1255

37:                                               ; preds = %17
  %38 = load i32, ptr @optind, align 4, !dbg !1256, !tbaa !1027
  %39 = sub nsw i32 %0, %38, !dbg !1258
  %40 = icmp slt i32 %39, 2, !dbg !1259
  br i1 %40, label %41, label %42, !dbg !1260

41:                                               ; preds = %37
  tail call void @usage(i32 noundef 125) #45, !dbg !1261
  unreachable, !dbg !1261

42:                                               ; preds = %37
  %43 = add nsw i32 %38, 1, !dbg !1262
  store i32 %43, ptr @optind, align 4, !dbg !1262, !tbaa !1027
  %44 = sext i32 %38 to i64, !dbg !1263
  %45 = getelementptr inbounds ptr, ptr %1, i64 %44, !dbg !1263
  %46 = load ptr, ptr %45, align 8, !dbg !1263, !tbaa !956
  %47 = tail call fastcc double @parse_duration(ptr noundef %46), !dbg !1264
  tail call void @llvm.dbg.value(metadata double %47, metadata !1179, metadata !DIExpression()), !dbg !1212
  %48 = load i32, ptr @optind, align 4, !dbg !1265, !tbaa !1027
  %49 = sext i32 %48 to i64, !dbg !1266
  %50 = getelementptr inbounds ptr, ptr %1, i64 %49, !dbg !1266
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !1178, metadata !DIExpression()), !dbg !1212
  %51 = load ptr, ptr %50, align 8, !dbg !1267, !tbaa !956
  store ptr %51, ptr @command, align 8, !dbg !1268, !tbaa !956
  %52 = load i1, ptr @foreground, align 1, !dbg !1269
  br i1 %52, label %55, label %53, !dbg !1271

53:                                               ; preds = %42
  %54 = tail call i32 @setpgid(i32 noundef 0, i32 noundef 0) #41, !dbg !1272
  br label %55, !dbg !1272

55:                                               ; preds = %53, %42
  %56 = load i32, ptr @term_signal, align 4, !dbg !1273, !tbaa !1027
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1274, metadata !DIExpression(), metadata !1210, metadata ptr %9, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i32 %56, metadata !1277, metadata !DIExpression()), !dbg !1369
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %9) #41, !dbg !1371
  %57 = getelementptr inbounds %struct.sigaction, ptr %9, i64 0, i32 1, !dbg !1372
  %58 = call i32 @sigemptyset(ptr noundef nonnull %57) #41, !dbg !1373
  store ptr @cleanup, ptr %9, align 8, !dbg !1374, !tbaa !1036, !DIAssignID !1375
  call void @llvm.dbg.assign(metadata ptr @cleanup, metadata !1274, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1375, metadata ptr %9, metadata !DIExpression()), !dbg !1369
  %59 = getelementptr inbounds %struct.sigaction, ptr %9, i64 0, i32 2, !dbg !1376
  store i32 268435456, ptr %59, align 8, !dbg !1377, !tbaa !1378, !DIAssignID !1381
  call void @llvm.dbg.assign(metadata i32 268435456, metadata !1274, metadata !DIExpression(DW_OP_LLVM_fragment, 1088, 32), metadata !1381, metadata ptr %59, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i64 0, metadata !1278, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1383, metadata !DIExpression(), metadata !1209, metadata ptr %8, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i32 14, metadata !1388, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i32 %56, metadata !1389, metadata !DIExpression()), !dbg !1391
  %60 = call i32 @sigaction(i32 noundef 14, ptr noundef nonnull %9, ptr noundef null) #41, !dbg !1395
  call void @llvm.dbg.value(metadata i64 1, metadata !1278, metadata !DIExpression()), !dbg !1382
  br label %65, !dbg !1396

61:                                               ; preds = %76
  %62 = call i32 @__libc_current_sigrtmin() #41, !dbg !1397
  call void @llvm.dbg.value(metadata i32 %62, metadata !1280, metadata !DIExpression()), !dbg !1398
  %63 = call i32 @__libc_current_sigrtmax() #41, !dbg !1399
  %64 = icmp sgt i32 %62, %63, !dbg !1401
  br i1 %64, label %94, label %.preheader3, !dbg !1402

.preheader3:                                      ; preds = %61
  br label %79, !dbg !1402

65:                                               ; preds = %76, %55
  %66 = phi i64 [ 1, %55 ], [ %77, %76 ]
  call void @llvm.dbg.value(metadata i64 %66, metadata !1278, metadata !DIExpression()), !dbg !1382
  %67 = getelementptr inbounds [22 x i32], ptr @term_sig, i64 0, i64 %66, !dbg !1403
  %68 = load i32, ptr %67, align 4, !dbg !1403, !tbaa !1027
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1383, metadata !DIExpression(), metadata !1209, metadata ptr %8, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i32 %68, metadata !1388, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i32 %56, metadata !1389, metadata !DIExpression()), !dbg !1391
  %69 = icmp eq i32 %68, %56
  br i1 %69, label %74, label %70, !dbg !1404

70:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %8) #41, !dbg !1406
  %71 = call i32 @sigaction(i32 noundef %68, ptr noundef null, ptr noundef nonnull %8) #41, !dbg !1407
  %72 = load ptr, ptr %8, align 8, !dbg !1408, !tbaa !1036
  %73 = icmp eq ptr %72, inttoptr (i64 1 to ptr), !dbg !1409
  call void @llvm.dbg.value(metadata i1 %73, metadata !1390, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1391
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %8) #41, !dbg !1410
  br i1 %73, label %76, label %74, !dbg !1411

74:                                               ; preds = %70, %65
  %75 = call i32 @sigaction(i32 noundef %68, ptr noundef nonnull %9, ptr noundef null) #41, !dbg !1395
  br label %76, !dbg !1395

76:                                               ; preds = %74, %70
  %77 = add nuw nsw i64 %66, 1, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %77, metadata !1278, metadata !DIExpression()), !dbg !1382
  %78 = icmp eq i64 %77, 22, !dbg !1413
  br i1 %78, label %61, label %65, !dbg !1396, !llvm.loop !1414

79:                                               ; preds = %.preheader3, %90
  %80 = phi i32 [ %91, %90 ], [ %62, %.preheader3 ]
  call void @llvm.dbg.value(metadata i32 %80, metadata !1280, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1383, metadata !DIExpression(), metadata !1208, metadata ptr %7, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i32 %80, metadata !1388, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i32 %56, metadata !1389, metadata !DIExpression()), !dbg !1417
  %81 = icmp eq i32 %80, 14, !dbg !1420
  %82 = icmp eq i32 %80, %56
  %83 = or i1 %81, %82, !dbg !1421
  br i1 %83, label %88, label %84, !dbg !1421

84:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %7) #41, !dbg !1422
  %85 = call i32 @sigaction(i32 noundef %80, ptr noundef null, ptr noundef nonnull %7) #41, !dbg !1423
  %86 = load ptr, ptr %7, align 8, !dbg !1424, !tbaa !1036
  %87 = icmp eq ptr %86, inttoptr (i64 1 to ptr), !dbg !1425
  call void @llvm.dbg.value(metadata i1 %87, metadata !1390, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1417
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %7) #41, !dbg !1426
  br i1 %87, label %90, label %88, !dbg !1427

88:                                               ; preds = %84, %79
  %89 = call i32 @sigaction(i32 noundef %80, ptr noundef nonnull %9, ptr noundef null) #41, !dbg !1428
  br label %90, !dbg !1428

90:                                               ; preds = %88, %84
  %91 = add nsw i32 %80, 1, !dbg !1429
  call void @llvm.dbg.value(metadata i32 %91, metadata !1280, metadata !DIExpression()), !dbg !1398
  %92 = call i32 @__libc_current_sigrtmax() #41, !dbg !1399
  %93 = icmp slt i32 %80, %92, !dbg !1401
  br i1 %93, label %79, label %.loopexit4, !dbg !1402, !llvm.loop !1430

.loopexit4:                                       ; preds = %90
  br label %94, !dbg !1432

94:                                               ; preds = %.loopexit4, %61
  %95 = call i32 @sigaction(i32 noundef %56, ptr noundef nonnull %9, ptr noundef null) #41, !dbg !1432
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %9) #41, !dbg !1433
  %96 = call ptr @signal(i32 noundef 21, ptr noundef nonnull inttoptr (i64 1 to ptr)) #41, !dbg !1434
  %97 = call ptr @signal(i32 noundef 22, ptr noundef nonnull inttoptr (i64 1 to ptr)) #41, !dbg !1435
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1436, metadata !DIExpression(), metadata !1207, metadata ptr %6, metadata !DIExpression()), !dbg !1439
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %6) #41, !dbg !1441
  %98 = getelementptr inbounds %struct.sigaction, ptr %6, i64 0, i32 1, !dbg !1442
  %99 = call i32 @sigemptyset(ptr noundef nonnull %98) #41, !dbg !1443
  store ptr @chld, ptr %6, align 8, !dbg !1444, !tbaa !1036, !DIAssignID !1445
  call void @llvm.dbg.assign(metadata ptr @chld, metadata !1436, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1445, metadata ptr %6, metadata !DIExpression()), !dbg !1439
  %100 = getelementptr inbounds %struct.sigaction, ptr %6, i64 0, i32 2, !dbg !1446
  store i32 268435456, ptr %100, align 8, !dbg !1447, !tbaa !1378, !DIAssignID !1448
  call void @llvm.dbg.assign(metadata i32 268435456, metadata !1436, metadata !DIExpression(DW_OP_LLVM_fragment, 1088, 32), metadata !1448, metadata ptr %100, metadata !DIExpression()), !dbg !1439
  %101 = call i32 @sigaction(i32 noundef 17, ptr noundef nonnull %6, ptr noundef null) #41, !dbg !1449
  call fastcc void @unblock_signal(i32 noundef 17), !dbg !1450
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %6) #41, !dbg !1451
  call fastcc void @unblock_signal(i32 noundef 14), !dbg !1452
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #41, !dbg !1453
  %102 = load i32, ptr @term_signal, align 4, !dbg !1454, !tbaa !1027
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1455, metadata !DIExpression(), metadata !1206, metadata ptr %5, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata i32 %102, metadata !1461, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata ptr %10, metadata !1462, metadata !DIExpression()), !dbg !1467
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #41, !dbg !1469
  %103 = call i32 @sigemptyset(ptr noundef nonnull %5) #41, !dbg !1470
  call void @llvm.dbg.value(metadata i64 0, metadata !1463, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1383, metadata !DIExpression(), metadata !1205, metadata ptr %4, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i32 14, metadata !1388, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i32 %102, metadata !1389, metadata !DIExpression()), !dbg !1472
  %104 = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef 14) #41, !dbg !1476
  call void @llvm.dbg.value(metadata i64 1, metadata !1463, metadata !DIExpression()), !dbg !1471
  br label %109, !dbg !1477

105:                                              ; preds = %120
  %106 = call i32 @__libc_current_sigrtmin() #41, !dbg !1478
  call void @llvm.dbg.value(metadata i32 %106, metadata !1465, metadata !DIExpression()), !dbg !1479
  %107 = call i32 @__libc_current_sigrtmax() #41, !dbg !1480
  %108 = icmp sgt i32 %106, %107, !dbg !1482
  br i1 %108, label %123, label %.preheader1, !dbg !1483

.preheader1:                                      ; preds = %105
  br label %128, !dbg !1483

109:                                              ; preds = %120, %94
  %110 = phi i64 [ 1, %94 ], [ %121, %120 ]
  call void @llvm.dbg.value(metadata i64 %110, metadata !1463, metadata !DIExpression()), !dbg !1471
  %111 = getelementptr inbounds [22 x i32], ptr @term_sig, i64 0, i64 %110, !dbg !1484
  %112 = load i32, ptr %111, align 4, !dbg !1484, !tbaa !1027
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1383, metadata !DIExpression(), metadata !1205, metadata ptr %4, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i32 %112, metadata !1388, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i32 %102, metadata !1389, metadata !DIExpression()), !dbg !1472
  %113 = icmp eq i32 %112, %102
  br i1 %113, label %118, label %114, !dbg !1485

114:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %4) #41, !dbg !1486
  %115 = call i32 @sigaction(i32 noundef %112, ptr noundef null, ptr noundef nonnull %4) #41, !dbg !1487
  %116 = load ptr, ptr %4, align 8, !dbg !1488, !tbaa !1036
  %117 = icmp eq ptr %116, inttoptr (i64 1 to ptr), !dbg !1489
  call void @llvm.dbg.value(metadata i1 %117, metadata !1390, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1472
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %4) #41, !dbg !1490
  br i1 %117, label %120, label %118, !dbg !1491

118:                                              ; preds = %114, %109
  %119 = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef %112) #41, !dbg !1476
  br label %120, !dbg !1476

120:                                              ; preds = %118, %114
  %121 = add nuw nsw i64 %110, 1, !dbg !1492
  call void @llvm.dbg.value(metadata i64 %121, metadata !1463, metadata !DIExpression()), !dbg !1471
  %122 = icmp eq i64 %121, 22, !dbg !1493
  br i1 %122, label %105, label %109, !dbg !1477, !llvm.loop !1494

.loopexit2:                                       ; preds = %139
  br label %123, !dbg !1496

123:                                              ; preds = %.loopexit2, %105
  %124 = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef %102) #41, !dbg !1496
  %125 = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef 17) #41, !dbg !1497
  %126 = call i32 @sigprocmask(i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %10) #41, !dbg !1498
  %127 = icmp eq i32 %126, 0, !dbg !1500
  br i1 %127, label %147, label %143, !dbg !1501

128:                                              ; preds = %.preheader1, %139
  %129 = phi i32 [ %140, %139 ], [ %106, %.preheader1 ]
  call void @llvm.dbg.value(metadata i32 %129, metadata !1465, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1383, metadata !DIExpression(), metadata !1204, metadata ptr %3, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i32 %129, metadata !1388, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i32 %102, metadata !1389, metadata !DIExpression()), !dbg !1502
  %130 = icmp eq i32 %129, 14, !dbg !1505
  %131 = icmp eq i32 %129, %102
  %132 = or i1 %130, %131, !dbg !1506
  br i1 %132, label %137, label %133, !dbg !1506

133:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %3) #41, !dbg !1507
  %134 = call i32 @sigaction(i32 noundef %129, ptr noundef null, ptr noundef nonnull %3) #41, !dbg !1508
  %135 = load ptr, ptr %3, align 8, !dbg !1509, !tbaa !1036
  %136 = icmp eq ptr %135, inttoptr (i64 1 to ptr), !dbg !1510
  call void @llvm.dbg.value(metadata i1 %136, metadata !1390, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1502
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %3) #41, !dbg !1511
  br i1 %136, label %139, label %137, !dbg !1512

137:                                              ; preds = %133, %128
  %138 = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef %129) #41, !dbg !1513
  br label %139, !dbg !1513

139:                                              ; preds = %137, %133
  %140 = add nsw i32 %129, 1, !dbg !1514
  call void @llvm.dbg.value(metadata i32 %140, metadata !1465, metadata !DIExpression()), !dbg !1479
  %141 = call i32 @__libc_current_sigrtmax() #41, !dbg !1480
  %142 = icmp slt i32 %129, %141, !dbg !1482
  br i1 %142, label %128, label %.loopexit2, !dbg !1483, !llvm.loop !1515

143:                                              ; preds = %123
  %144 = tail call ptr @__errno_location() #44, !dbg !1517
  %145 = load i32, ptr %144, align 4, !dbg !1517, !tbaa !1027
  %146 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.73, i32 noundef 5) #41, !dbg !1517
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %145, ptr noundef %146) #41, !dbg !1517
  br label %147, !dbg !1517

147:                                              ; preds = %123, %143
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #41, !dbg !1518
  %148 = call i32 @getpid() #41, !dbg !1519
  tail call void @llvm.dbg.value(metadata i32 %148, metadata !1190, metadata !DIExpression()), !dbg !1212
  %149 = call i32 @fork() #41, !dbg !1520
  store i32 %149, ptr @monitored_pid, align 4, !dbg !1521, !tbaa !1027
  switch i32 %149, label %178 [
    i32 -1, label %150
    i32 0, label %154
  ], !dbg !1522

150:                                              ; preds = %147
  %151 = tail call ptr @__errno_location() #44, !dbg !1523
  %152 = load i32, ptr %151, align 4, !dbg !1523, !tbaa !1027
  %153 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #41, !dbg !1523
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %152, ptr noundef %153) #41, !dbg !1523
  br label %238, !dbg !1525

154:                                              ; preds = %147
  %155 = load i32, ptr @term_signal, align 4, !dbg !1526, !tbaa !1027
  %156 = call i32 (i32, ...) @prctl(i32 noundef 1, i32 noundef %155) #41, !dbg !1527
  %157 = call i32 @getppid() #41, !dbg !1528
  %158 = icmp eq i32 %157, %148, !dbg !1530
  br i1 %158, label %159, label %238, !dbg !1531

159:                                              ; preds = %154
  %160 = call i32 @sigprocmask(i32 noundef 2, ptr noundef nonnull %10, ptr noundef null) #41, !dbg !1532
  %161 = icmp eq i32 %160, 0, !dbg !1534
  br i1 %161, label %166, label %162, !dbg !1535

162:                                              ; preds = %159
  %163 = tail call ptr @__errno_location() #44, !dbg !1536
  %164 = load i32, ptr %163, align 4, !dbg !1536, !tbaa !1027
  %165 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #41, !dbg !1536
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %164, ptr noundef %165) #41, !dbg !1536
  br label %238, !dbg !1538

166:                                              ; preds = %159
  %167 = call ptr @signal(i32 noundef 21, ptr noundef null) #41, !dbg !1539
  %168 = call ptr @signal(i32 noundef 22, ptr noundef null) #41, !dbg !1540
  %169 = load ptr, ptr %50, align 8, !dbg !1541, !tbaa !956
  %170 = call i32 @execvp(ptr noundef %169, ptr noundef nonnull %50) #41, !dbg !1542
  %171 = tail call ptr @__errno_location() #44, !dbg !1543
  %172 = load i32, ptr %171, align 4, !dbg !1543, !tbaa !1027
  %173 = icmp eq i32 %172, 2, !dbg !1544
  %174 = select i1 %173, i32 127, i32 126, !dbg !1543
  tail call void @llvm.dbg.value(metadata i32 %174, metadata !1191, metadata !DIExpression()), !dbg !1545
  %175 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #41, !dbg !1546
  %176 = load ptr, ptr @command, align 8, !dbg !1546, !tbaa !956
  %177 = call ptr @quote(ptr noundef %176) #41, !dbg !1546
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %172, ptr noundef %175, ptr noundef %177) #41, !dbg !1546
  br label %238

178:                                              ; preds = %147
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #41, !dbg !1547
  call fastcc void @settimeout(double noundef %47, i1 noundef true), !dbg !1548
  %179 = load i32, ptr @monitored_pid, align 4, !dbg !1549, !tbaa !1027
  %180 = call i32 @waitpid(i32 noundef %179, ptr noundef nonnull %11, i32 noundef 1) #41, !dbg !1550
  tail call void @llvm.dbg.value(metadata i32 %180, metadata !1195, metadata !DIExpression()), !dbg !1214
  %181 = icmp eq i32 %180, 0, !dbg !1551
  br i1 %181, label %.preheader, label %187, !dbg !1552

.preheader:                                       ; preds = %178
  br label %182, !dbg !1552

182:                                              ; preds = %.preheader, %182
  %183 = call i32 @sigsuspend(ptr noundef nonnull %10) #41, !dbg !1553
  %184 = load i32, ptr @monitored_pid, align 4, !dbg !1549, !tbaa !1027
  %185 = call i32 @waitpid(i32 noundef %184, ptr noundef nonnull %11, i32 noundef 1) #41, !dbg !1550
  tail call void @llvm.dbg.value(metadata i32 %185, metadata !1195, metadata !DIExpression()), !dbg !1214
  %186 = icmp eq i32 %185, 0, !dbg !1551
  br i1 %186, label %182, label %.loopexit, !dbg !1552, !llvm.loop !1554

.loopexit:                                        ; preds = %182
  %.lcssa = phi i32 [ %185, %182 ], !dbg !1550
  br label %187, !dbg !1556

187:                                              ; preds = %.loopexit, %178
  %188 = phi i32 [ %180, %178 ], [ %.lcssa, %.loopexit ], !dbg !1550
  %189 = icmp slt i32 %188, 0, !dbg !1556
  br i1 %189, label %190, label %194, !dbg !1557

190:                                              ; preds = %187
  %191 = tail call ptr @__errno_location() #44, !dbg !1558
  %192 = load i32, ptr %191, align 4, !dbg !1558, !tbaa !1027
  %193 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #41, !dbg !1558
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %192, ptr noundef %193) #41, !dbg !1558
  call void @llvm.dbg.assign(metadata i32 125, metadata !1197, metadata !DIExpression(), metadata !1560, metadata ptr %11, metadata !DIExpression()), !dbg !1214
  br label %232, !dbg !1561

194:                                              ; preds = %187
  %195 = load i32, ptr %11, align 4, !dbg !1562, !tbaa !1027
  %196 = and i32 %195, 127, !dbg !1562
  %197 = icmp eq i32 %196, 0, !dbg !1562
  br i1 %197, label %198, label %201, !dbg !1563

198:                                              ; preds = %194
  %199 = lshr i32 %195, 8
  %200 = and i32 %199, 255
  call void @llvm.dbg.assign(metadata i32 %200, metadata !1197, metadata !DIExpression(), metadata !1564, metadata ptr %11, metadata !DIExpression()), !dbg !1214
  br label %232, !dbg !1565

201:                                              ; preds = %194
  %202 = shl nuw nsw i32 %196, 24, !dbg !1566
  %203 = add nuw i32 %202, 16777216, !dbg !1566
  %204 = icmp sgt i32 %203, 33554431, !dbg !1566
  br i1 %204, label %205, label %229, !dbg !1567

205:                                              ; preds = %201
  tail call void @llvm.dbg.value(metadata i32 %196, metadata !1198, metadata !DIExpression()), !dbg !1568
  %206 = and i32 %195, 128, !dbg !1569
  %207 = icmp eq i32 %206, 0, !dbg !1569
  br i1 %207, label %210, label %208, !dbg !1571

208:                                              ; preds = %205
  %209 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #41, !dbg !1572
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %209) #41, !dbg !1572
  br label %210, !dbg !1572

210:                                              ; preds = %208, %205
  %211 = load i1, ptr @timed_out, align 4, !dbg !1573
  br i1 %211, label %222, label %212, !dbg !1575

212:                                              ; preds = %210
  %213 = call i32 (i32, ...) @prctl(i32 noundef 4, i32 noundef 0) #41, !dbg !1576
  %214 = icmp eq i32 %213, 0, !dbg !1582
  br i1 %214, label %219, label %215, !dbg !1583

215:                                              ; preds = %212
  %216 = tail call ptr @__errno_location() #44, !dbg !1584
  %217 = load i32, ptr %216, align 4, !dbg !1584, !tbaa !1027
  %218 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.76, i32 noundef 5) #41, !dbg !1584
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %217, ptr noundef %218) #41, !dbg !1584
  br label %222, !dbg !1585

219:                                              ; preds = %212
  %220 = call ptr @signal(i32 noundef %196, ptr noundef null) #41, !dbg !1586
  call fastcc void @unblock_signal(i32 noundef %196), !dbg !1588
  %221 = call i32 @raise(i32 noundef %196) #41, !dbg !1589
  br label %222, !dbg !1590

222:                                              ; preds = %215, %219, %210
  %223 = load i1, ptr @timed_out, align 4, !dbg !1591
  %224 = icmp eq i32 %196, 9
  %225 = and i1 %224, %223, !dbg !1593
  br i1 %225, label %226, label %227, !dbg !1593

226:                                              ; preds = %222
  store i1 true, ptr @preserve_status, align 1, !dbg !1594
  br label %227, !dbg !1595

227:                                              ; preds = %226, %222
  %228 = or disjoint i32 %196, 128, !dbg !1596
  call void @llvm.dbg.assign(metadata i32 %228, metadata !1197, metadata !DIExpression(), metadata !1597, metadata ptr %11, metadata !DIExpression()), !dbg !1214
  br label %232, !dbg !1598

229:                                              ; preds = %201
  %230 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #41, !dbg !1599
  %231 = load i32, ptr %11, align 4, !dbg !1599, !tbaa !1027
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %230, i32 noundef %231) #41, !dbg !1599
  call void @llvm.dbg.assign(metadata i32 1, metadata !1197, metadata !DIExpression(), metadata !1601, metadata ptr %11, metadata !DIExpression()), !dbg !1214
  br label %232

232:                                              ; preds = %198, %229, %227, %190
  %233 = phi i32 [ %200, %198 ], [ 1, %229 ], [ %228, %227 ], [ 125, %190 ]
  %234 = load i1, ptr @timed_out, align 4, !dbg !1602
  %235 = load i1, ptr @preserve_status, align 1, !dbg !1604
  %236 = select i1 %235, i32 %233, i32 124, !dbg !1604
  %237 = select i1 %234, i32 %236, i32 %233, !dbg !1604
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #41, !dbg !1605
  br label %238

238:                                              ; preds = %154, %232, %166, %162, %150
  %239 = phi i32 [ 125, %150 ], [ 125, %162 ], [ %174, %166 ], [ %237, %232 ], [ 125, %154 ], !dbg !1606
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #41, !dbg !1607
  ret i32 %239, !dbg !1607
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1608 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1611 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1612 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1615 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc double @parse_duration(ptr noundef %0) unnamed_addr #10 !dbg !1621 {
  %2 = alloca ptr, align 8, !DIAssignID !1629
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1626, metadata !DIExpression(), metadata !1629, metadata ptr %2, metadata !DIExpression()), !dbg !1630
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1625, metadata !DIExpression()), !dbg !1630
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #41, !dbg !1631
  %3 = tail call ptr @__errno_location() #44, !dbg !1632
  store i32 0, ptr %3, align 4, !dbg !1633, !tbaa !1027
  %4 = call double @cl_strtod(ptr noundef %0, ptr noundef nonnull %2) #41, !dbg !1634
  tail call void @llvm.dbg.value(metadata double %4, metadata !1627, metadata !DIExpression()), !dbg !1630
  %5 = load i32, ptr %3, align 4, !dbg !1635, !tbaa !1027
  call void @llvm.dbg.value(metadata double %4, metadata !1636, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 %5, metadata !1642, metadata !DIExpression()), !dbg !1644
  %6 = icmp eq i32 %5, 34, !dbg !1646
  %7 = fcmp oeq double %4, 0.000000e+00
  %8 = and i1 %7, %6, !dbg !1648
  %9 = call double @llvm.copysign.f64(double 4.940660e-324, double %4), !dbg !1648
  %10 = call double @llvm.fmuladd.f64(double %4, double 0x3CA0000000000001, double %4), !dbg !1648
  %11 = select i1 %8, double %9, double %10, !dbg !1648
  tail call void @llvm.dbg.value(metadata double %11, metadata !1628, metadata !DIExpression()), !dbg !1630
  %12 = load ptr, ptr %2, align 8, !dbg !1649, !tbaa !956
  %13 = icmp ne ptr %12, %0, !dbg !1651
  %14 = fcmp oge double %11, 0.000000e+00
  %15 = select i1 %13, i1 %14, i1 false, !dbg !1652
  br i1 %15, label %16, label %27, !dbg !1652

16:                                               ; preds = %1
  %17 = load i8, ptr %12, align 1, !dbg !1653, !tbaa !1036
  %18 = icmp eq i8 %17, 0, !dbg !1653
  br i1 %18, label %30, label %19, !dbg !1654

19:                                               ; preds = %16
  %20 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !1655
  %21 = load i8, ptr %20, align 1, !dbg !1656, !tbaa !1036
  %22 = icmp eq i8 %21, 0, !dbg !1656
  br i1 %22, label %23, label %27, !dbg !1657

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr undef, metadata !1658, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %17, metadata !1664, metadata !DIExpression()), !dbg !1666
  switch i8 %17, label %27 [
    i8 100, label %26
    i8 115, label %30
    i8 109, label %24
    i8 104, label %25
  ], !dbg !1668

24:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 60, metadata !1665, metadata !DIExpression()), !dbg !1666
  br label %30, !dbg !1669

25:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 3600, metadata !1665, metadata !DIExpression()), !dbg !1666
  br label %30, !dbg !1671

26:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 86400, metadata !1665, metadata !DIExpression()), !dbg !1666
  br label %30, !dbg !1672

27:                                               ; preds = %23, %19, %1
  %28 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.70, i32 noundef 5) #41, !dbg !1673
  %29 = call ptr @quote(ptr noundef %0) #41, !dbg !1673
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %28, ptr noundef %29) #41, !dbg !1673
  call void @usage(i32 noundef 125) #45, !dbg !1675
  unreachable, !dbg !1675

30:                                               ; preds = %16, %23, %24, %25, %26
  %31 = phi double [ 8.640000e+04, %26 ], [ 3.600000e+03, %25 ], [ 6.000000e+01, %24 ], [ 1.000000e+00, %23 ], [ 1.000000e+00, %16 ], !dbg !1676
  call void @llvm.dbg.value(metadata i32 poison, metadata !1665, metadata !DIExpression()), !dbg !1666
  %32 = fmul double %11, %31, !dbg !1677
  call void @llvm.dbg.value(metadata double %32, metadata !1636, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.value(metadata i32 0, metadata !1642, metadata !DIExpression()), !dbg !1678
  %33 = call double @llvm.fmuladd.f64(double %32, double 0x3CA0000000000001, double %32), !dbg !1680
  tail call void @llvm.dbg.value(metadata double %33, metadata !1628, metadata !DIExpression()), !dbg !1630
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #41, !dbg !1681
  ret double %33, !dbg !1682
}

; Function Attrs: nounwind
declare !dbg !1683 i32 @setpgid(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind
declare !dbg !1687 i32 @sigemptyset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @cleanup(i32 noundef %0) #10 !dbg !1690 {
  %2 = alloca [19 x i8], align 1, !DIAssignID !1701
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1698, metadata !DIExpression(), metadata !1701, metadata ptr %2, metadata !DIExpression()), !dbg !1702
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1692, metadata !DIExpression()), !dbg !1703
  %3 = icmp eq i32 %0, 14, !dbg !1704
  br i1 %3, label %4, label %6, !dbg !1706

4:                                                ; preds = %1
  store i1 true, ptr @timed_out, align 4, !dbg !1707
  tail call void @llvm.dbg.value(metadata i32 124, metadata !1220, metadata !DIExpression()), !dbg !1709
  store volatile i32 124, ptr @exit_failure, align 4, !dbg !1711, !tbaa !1027
  %5 = load i32, ptr @term_signal, align 4, !dbg !1712, !tbaa !1027
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1692, metadata !DIExpression()), !dbg !1703
  br label %6, !dbg !1713

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %0, %1 ]
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1692, metadata !DIExpression()), !dbg !1703
  %8 = load i32, ptr @monitored_pid, align 4, !dbg !1714, !tbaa !1027
  %9 = icmp sgt i32 %8, 0, !dbg !1715
  br i1 %9, label %10, label %49, !dbg !1716

10:                                               ; preds = %6
  %11 = load double, ptr @kill_after, align 8, !dbg !1717, !tbaa !1237
  %12 = fcmp une double %11, 0.000000e+00, !dbg !1717
  br i1 %12, label %13, label %16, !dbg !1718

13:                                               ; preds = %10
  %14 = tail call ptr @__errno_location() #44, !dbg !1719
  %15 = load i32, ptr %14, align 4, !dbg !1719, !tbaa !1027
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1693, metadata !DIExpression()), !dbg !1720
  store i32 9, ptr @term_signal, align 4, !dbg !1721, !tbaa !1027
  tail call fastcc void @settimeout(double noundef %11, i1 noundef false), !dbg !1722
  store double 0.000000e+00, ptr @kill_after, align 8, !dbg !1723, !tbaa !1237
  store i32 %15, ptr %14, align 4, !dbg !1724, !tbaa !1027
  br label %16, !dbg !1725

16:                                               ; preds = %13, %10
  %17 = load i1, ptr @verbose, align 1, !dbg !1726
  br i1 %17, label %18, label %29, !dbg !1727

18:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %2) #41, !dbg !1728
  %19 = icmp eq i32 %7, 0, !dbg !1729
  br i1 %19, label %23, label %20, !dbg !1731

20:                                               ; preds = %18
  %21 = call i32 @sig2str(i32 noundef %7, ptr noundef nonnull %2) #41, !dbg !1732
  %22 = icmp eq i32 %21, 0, !dbg !1733
  br i1 %22, label %25, label %23, !dbg !1734

23:                                               ; preds = %20, %18
  %24 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %2, i64 noundef 19, i32 noundef 1, i64 noundef 19, ptr noundef nonnull @.str.71, i32 noundef %7) #41, !dbg !1735
  br label %25, !dbg !1735

25:                                               ; preds = %23, %20
  %26 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.72, i32 noundef 5) #41, !dbg !1736
  %27 = load ptr, ptr @command, align 8, !dbg !1736, !tbaa !956
  %28 = call ptr @quote(ptr noundef %27) #41, !dbg !1736
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %26, ptr noundef nonnull %2, ptr noundef %28) #41, !dbg !1736
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %2) #41, !dbg !1737
  br label %29, !dbg !1738

29:                                               ; preds = %25, %16
  %30 = load i32, ptr @monitored_pid, align 4, !dbg !1739, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %30, metadata !1740, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i32 %7, metadata !1745, metadata !DIExpression()), !dbg !1746
  %31 = icmp eq i32 %30, 0, !dbg !1748
  br i1 %31, label %32, label %34, !dbg !1750

32:                                               ; preds = %29
  %33 = call ptr @signal(i32 noundef %7, ptr noundef nonnull inttoptr (i64 1 to ptr)) #41, !dbg !1751
  br label %34, !dbg !1751

34:                                               ; preds = %29, %32
  %35 = call i32 @kill(i32 noundef %30, i32 noundef %7) #41, !dbg !1752
  %36 = load i1, ptr @foreground, align 1, !dbg !1753
  br i1 %36, label %53, label %37, !dbg !1755

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 0, metadata !1740, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i32 %7, metadata !1745, metadata !DIExpression()), !dbg !1756
  %38 = call ptr @signal(i32 noundef %7, ptr noundef nonnull inttoptr (i64 1 to ptr)) #41, !dbg !1759
  %39 = call i32 @kill(i32 noundef 0, i32 noundef %7) #41, !dbg !1760
  switch i32 %7, label %40 [
    i32 18, label %53
    i32 9, label %53
  ], !dbg !1761

40:                                               ; preds = %37
  %41 = load i32, ptr @monitored_pid, align 4, !dbg !1763, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %41, metadata !1740, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 18, metadata !1745, metadata !DIExpression()), !dbg !1765
  %42 = icmp eq i32 %41, 0, !dbg !1767
  br i1 %42, label %43, label %45, !dbg !1768

43:                                               ; preds = %40
  %44 = call ptr @signal(i32 noundef 18, ptr noundef nonnull inttoptr (i64 1 to ptr)) #41, !dbg !1769
  br label %45, !dbg !1769

45:                                               ; preds = %40, %43
  %46 = call i32 @kill(i32 noundef %41, i32 noundef 18) #41, !dbg !1770
  call void @llvm.dbg.value(metadata i32 0, metadata !1740, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i32 18, metadata !1745, metadata !DIExpression()), !dbg !1771
  %47 = call ptr @signal(i32 noundef 18, ptr noundef nonnull inttoptr (i64 1 to ptr)) #41, !dbg !1773
  %48 = call i32 @kill(i32 noundef 0, i32 noundef 18) #41, !dbg !1774
  br label %53, !dbg !1775

49:                                               ; preds = %6
  %50 = icmp eq i32 %8, -1, !dbg !1776
  br i1 %50, label %53, label %51, !dbg !1778

51:                                               ; preds = %49
  %52 = add nsw i32 %7, 128, !dbg !1779
  tail call void @_exit(i32 noundef %52) #43, !dbg !1781
  unreachable, !dbg !1781

53:                                               ; preds = %37, %37, %49, %34, %45
  ret void, !dbg !1782
}

; Function Attrs: nounwind
declare !dbg !1783 i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1791 i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1794 i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind
declare !dbg !1795 ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @chld(i32 %0) #12 !dbg !1798 {
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1800, metadata !DIExpression()), !dbg !1801
  ret void, !dbg !1802
}

; Function Attrs: nounwind uwtable
define internal fastcc void @unblock_signal(i32 noundef %0) unnamed_addr #10 !dbg !1803 {
  %2 = alloca %struct.__sigset_t, align 8, !DIAssignID !1807
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1806, metadata !DIExpression(), metadata !1807, metadata ptr %2, metadata !DIExpression()), !dbg !1808
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1805, metadata !DIExpression()), !dbg !1808
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #41, !dbg !1809
  %3 = call i32 @sigemptyset(ptr noundef nonnull %2) #41, !dbg !1810
  %4 = call i32 @sigaddset(ptr noundef nonnull %2, i32 noundef %0) #41, !dbg !1811
  %5 = call i32 @sigprocmask(i32 noundef 1, ptr noundef nonnull %2, ptr noundef null) #41, !dbg !1812
  %6 = icmp eq i32 %5, 0, !dbg !1814
  br i1 %6, label %11, label %7, !dbg !1815

7:                                                ; preds = %1
  %8 = tail call ptr @__errno_location() #44, !dbg !1816
  %9 = load i32, ptr %8, align 4, !dbg !1816, !tbaa !1027
  %10 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.73, i32 noundef 5) #41, !dbg !1816
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %9, ptr noundef %10) #41, !dbg !1816
  br label %11, !dbg !1816

11:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #41, !dbg !1817
  ret void, !dbg !1817
}

; Function Attrs: nounwind
declare !dbg !1818 i32 @sigaddset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1821 i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1828 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1832 i32 @getpid() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1835 i32 @fork() local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1836 i32 @prctl(i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1840 i32 @getppid() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1841 i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @settimeout(double noundef %0, i1 noundef %1) unnamed_addr #10 !dbg !1844 {
  %3 = alloca %struct.itimerspec, align 8, !DIAssignID !1871
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1857, metadata !DIExpression(), metadata !1871, metadata ptr %3, metadata !DIExpression()), !dbg !1872
  %4 = alloca ptr, align 8, !DIAssignID !1873
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1863, metadata !DIExpression(), metadata !1873, metadata ptr %4, metadata !DIExpression()), !dbg !1872
  tail call void @llvm.dbg.value(metadata double %0, metadata !1848, metadata !DIExpression()), !dbg !1872
  tail call void @llvm.dbg.value(metadata i1 %1, metadata !1849, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1872
  %5 = tail call [2 x i64] @dtotimespec(double noundef %0) #44, !dbg !1874
  %6 = extractvalue [2 x i64] %5, 0, !dbg !1874
  %7 = extractvalue [2 x i64] %5, 1, !dbg !1874
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1850, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1872
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !1850, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1872
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #41, !dbg !1875
  call void @llvm.dbg.assign(metadata i64 0, metadata !1857, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1876, metadata ptr %3, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.assign(metadata i64 0, metadata !1857, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1876, metadata ptr %3, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !1872
  %8 = getelementptr inbounds %struct.itimerspec, ptr %3, i64 0, i32 1, !dbg !1877
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !1878, !DIAssignID !1876
  store i64 %6, ptr %8, align 8, !dbg !1879, !tbaa.struct !1880, !DIAssignID !1883
  %9 = getelementptr inbounds %struct.itimerspec, ptr %3, i64 0, i32 1, i32 1, !dbg !1879
  store i64 %7, ptr %9, align 8, !dbg !1879, !tbaa.struct !1884, !DIAssignID !1885
  call void @llvm.dbg.assign(metadata i64 %6, metadata !1857, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64), metadata !1883, metadata ptr %8, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.assign(metadata i64 %7, metadata !1857, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64), metadata !1885, metadata ptr %9, metadata !DIExpression()), !dbg !1872
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #41, !dbg !1886
  %10 = call i32 @timer_create(i32 noundef 0, ptr noundef null, ptr noundef nonnull %4) #41, !dbg !1887
  %11 = icmp eq i32 %10, 0, !dbg !1889
  br i1 %11, label %12, label %24, !dbg !1890

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8, !dbg !1891, !tbaa !956
  %14 = call i32 @timer_settime(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %3, ptr noundef null) #41, !dbg !1894
  %15 = icmp eq i32 %14, 0, !dbg !1895
  br i1 %15, label %42, label %16, !dbg !1896

16:                                               ; preds = %12
  br i1 %1, label %17, label %21, !dbg !1897

17:                                               ; preds = %16
  %18 = tail call ptr @__errno_location() #44, !dbg !1899
  %19 = load i32, ptr %18, align 4, !dbg !1899, !tbaa !1027
  %20 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef 5) #41, !dbg !1899
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %19, ptr noundef %20) #41, !dbg !1899
  br label %21, !dbg !1899

21:                                               ; preds = %17, %16
  %22 = load ptr, ptr %4, align 8, !dbg !1901, !tbaa !956
  %23 = call i32 @timer_delete(ptr noundef %22) #41, !dbg !1902
  br label %31, !dbg !1903

24:                                               ; preds = %2
  br i1 %1, label %25, label %31, !dbg !1904

25:                                               ; preds = %24
  %26 = tail call ptr @__errno_location() #44, !dbg !1906
  %27 = load i32, ptr %26, align 4, !dbg !1906, !tbaa !1027
  %28 = icmp eq i32 %27, 38, !dbg !1907
  br i1 %28, label %31, label %29, !dbg !1908

29:                                               ; preds = %25
  %30 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.75, i32 noundef 5) #41, !dbg !1909
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %27, ptr noundef %30) #41, !dbg !1909
  br label %31, !dbg !1909

31:                                               ; preds = %24, %25, %29, %21
  %32 = fcmp ult double %0, 0x41EFFFFFFFE00000, !dbg !1910
  br i1 %32, label %33, label %39, !dbg !1911

33:                                               ; preds = %31
  %34 = fptoui double %0 to i32, !dbg !1912
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !1868, metadata !DIExpression()), !dbg !1913
  %35 = uitofp i32 %34 to double, !dbg !1914
  %36 = fcmp olt double %35, %0, !dbg !1915
  %37 = zext i1 %36 to i32, !dbg !1915
  %38 = add i32 %37, %34, !dbg !1916
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !1867, metadata !DIExpression()), !dbg !1872
  br label %39

39:                                               ; preds = %31, %33
  %40 = phi i32 [ %38, %33 ], [ -1, %31 ], !dbg !1917
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !1867, metadata !DIExpression()), !dbg !1872
  %41 = call i32 @alarm(i32 noundef %40) #41, !dbg !1918
  br label %42, !dbg !1919

42:                                               ; preds = %12, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !1919
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #41, !dbg !1919
  ret void, !dbg !1919
}

declare !dbg !1920 i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1924 i32 @sigsuspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1927 i32 @raise(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nounwind
declare !dbg !1930 i32 @timer_create(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1971 i32 @timer_settime(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1979 i32 @timer_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1982 i32 @alarm(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !1985 i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: nounwind
declare !dbg !1989 i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare !dbg !1992 void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @operand2sig(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !1993 {
  %2 = alloca i32, align 4, !DIAssignID !2008
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1998, metadata !DIExpression(), metadata !2008, metadata ptr %2, metadata !DIExpression()), !dbg !2009
  %3 = alloca ptr, align 8, !DIAssignID !2010
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1999, metadata !DIExpression(), metadata !2010, metadata ptr %3, metadata !DIExpression()), !dbg !2011
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1997, metadata !DIExpression()), !dbg !2009
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #41, !dbg !2012
  %4 = load i8, ptr %0, align 1, !dbg !2013, !tbaa !1036
  %5 = zext i8 %4 to i32, !dbg !2013
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2014, metadata !DIExpression()), !dbg !2020
  %6 = add nsw i32 %5, -48, !dbg !2022
  %7 = icmp ult i32 %6, 10, !dbg !2022
  br i1 %7, label %8, label %34, !dbg !2023

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #41, !dbg !2024
  %9 = tail call ptr @__errno_location() #44, !dbg !2025
  store i32 0, ptr %9, align 4, !dbg !2026, !tbaa !1027
  %10 = call i64 @strtol(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 10) #41, !dbg !2027
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !2002, metadata !DIExpression()), !dbg !2011
  %11 = freeze i64 %10, !dbg !2028
  %12 = trunc i64 %11 to i32, !dbg !2028
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2003, metadata !DIExpression()), !dbg !2011
  %13 = load ptr, ptr %3, align 8, !dbg !2029, !tbaa !956
  %14 = icmp eq ptr %13, %0, !dbg !2030
  br i1 %14, label %32, label %15, !dbg !2031

15:                                               ; preds = %8
  %16 = load i8, ptr %13, align 1, !dbg !2032, !tbaa !1036
  %17 = icmp eq i8 %16, 0, !dbg !2032
  br i1 %17, label %18, label %32, !dbg !2033

18:                                               ; preds = %15
  %19 = load i32, ptr %9, align 4, !dbg !2034, !tbaa !1027
  %20 = icmp eq i32 %19, 0, !dbg !2034
  %21 = add i64 %11, 2147483648
  %22 = icmp ult i64 %21, 4294967296
  %23 = and i1 %20, %22, !dbg !2035
  br i1 %23, label %24, label %32, !dbg !2035

24:                                               ; preds = %18
  call void @llvm.dbg.assign(metadata i32 %12, metadata !1998, metadata !DIExpression(), metadata !2036, metadata ptr %2, metadata !DIExpression()), !dbg !2009
  %25 = icmp slt i32 %12, 255, !dbg !2037
  br i1 %25, label %26, label %30, !dbg !2037

26:                                               ; preds = %24
  %27 = icmp eq i32 %12, -1, !dbg !2038
  %28 = and i32 %12, 127, !dbg !2037
  %29 = select i1 %27, i32 -1, i32 %28, !dbg !2037
  br label %32, !dbg !2037

30:                                               ; preds = %24
  %31 = and i32 %12, 255, !dbg !2037
  br label %32, !dbg !2037

32:                                               ; preds = %26, %8, %15, %18, %30
  %33 = phi i32 [ %31, %30 ], [ -1, %8 ], [ -1, %15 ], [ -1, %18 ], [ %29, %26 ]
  store i32 %33, ptr %2, align 4, !dbg !2011, !tbaa !1027, !DIAssignID !2036
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41, !dbg !2040
  br label %70, !dbg !2041

34:                                               ; preds = %1
  %35 = tail call noalias nonnull ptr @xstrdup(ptr noundef nonnull %0) #41, !dbg !2042
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !2004, metadata !DIExpression()), !dbg !2043
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !2006, metadata !DIExpression()), !dbg !2044
  %36 = load i8, ptr %35, align 1, !dbg !2045, !tbaa !1036
  %37 = icmp eq i8 %36, 0, !dbg !2047
  br i1 %37, label %38, label %.preheader, !dbg !2047

.preheader:                                       ; preds = %34
  br label %41, !dbg !2047

.loopexit:                                        ; preds = %48
  br label %38, !dbg !2048

38:                                               ; preds = %.loopexit, %34
  %39 = call i32 @str2sig(ptr noundef nonnull %35, ptr noundef nonnull %2) #41, !dbg !2048
  %40 = icmp eq i32 %39, 0, !dbg !2050
  br i1 %40, label %68, label %52, !dbg !2051

41:                                               ; preds = %.preheader, %48
  %42 = phi i8 [ %50, %48 ], [ %36, %.preheader ]
  %43 = phi ptr [ %49, %48 ], [ %35, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %43, metadata !2006, metadata !DIExpression()), !dbg !2044
  %44 = add i8 %42, -123, !dbg !2052
  %45 = icmp ult i8 %44, -26, !dbg !2052
  br i1 %45, label %48, label %46, !dbg !2054

46:                                               ; preds = %41
  %47 = add nsw i8 %42, -32, !dbg !2055
  store i8 %47, ptr %43, align 1, !dbg !2055, !tbaa !1036
  br label %48, !dbg !2056

48:                                               ; preds = %41, %46
  %49 = getelementptr inbounds i8, ptr %43, i64 1, !dbg !2057
  tail call void @llvm.dbg.value(metadata ptr %49, metadata !2006, metadata !DIExpression()), !dbg !2044
  %50 = load i8, ptr %49, align 1, !dbg !2045, !tbaa !1036
  %51 = icmp eq i8 %50, 0, !dbg !2047
  br i1 %51, label %.loopexit, label %41, !dbg !2047, !llvm.loop !2058

52:                                               ; preds = %38
  %53 = load i8, ptr %35, align 1, !dbg !2060, !tbaa !1036
  %54 = icmp eq i8 %53, 83, !dbg !2061
  br i1 %54, label %55, label %67, !dbg !2062

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !2063
  %57 = load i8, ptr %56, align 1, !dbg !2063, !tbaa !1036
  %58 = icmp eq i8 %57, 73, !dbg !2064
  br i1 %58, label %59, label %67, !dbg !2065

59:                                               ; preds = %55
  %60 = getelementptr inbounds i8, ptr %35, i64 2, !dbg !2066
  %61 = load i8, ptr %60, align 1, !dbg !2066, !tbaa !1036
  %62 = icmp eq i8 %61, 71, !dbg !2067
  br i1 %62, label %63, label %67, !dbg !2068

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %35, i64 3, !dbg !2069
  %65 = call i32 @str2sig(ptr noundef nonnull %64, ptr noundef nonnull %2) #41, !dbg !2070
  %66 = icmp eq i32 %65, 0, !dbg !2071
  br i1 %66, label %68, label %67, !dbg !2072

67:                                               ; preds = %63, %59, %55, %52
  store i32 -1, ptr %2, align 4, !dbg !2073, !tbaa !1027, !DIAssignID !2074
  call void @llvm.dbg.assign(metadata i32 -1, metadata !1998, metadata !DIExpression(), metadata !2074, metadata ptr %2, metadata !DIExpression()), !dbg !2009
  br label %68, !dbg !2075

68:                                               ; preds = %67, %63, %38
  call void @free(ptr noundef nonnull %35) #41, !dbg !2076
  %69 = load i32, ptr %2, align 4, !dbg !2077
  br label %70

70:                                               ; preds = %68, %32
  %71 = phi i32 [ %69, %68 ], [ %33, %32 ], !dbg !2077
  %72 = icmp ugt i32 %71, 64, !dbg !2079
  br i1 %72, label %73, label %76, !dbg !2079

73:                                               ; preds = %70
  %74 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.3, i32 noundef 5) #41, !dbg !2080
  %75 = call ptr @quote(ptr noundef nonnull %0) #41, !dbg !2080
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %74, ptr noundef %75) #41, !dbg !2080
  br label %76, !dbg !2082

76:                                               ; preds = %70, %73
  %77 = phi i32 [ -1, %73 ], [ %71, %70 ], !dbg !2009
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #41, !dbg !2083
  ret i32 %77, !dbg !2083
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2084 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2088 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local double @cl_strtod(ptr noundef nonnull %0, ptr noalias noundef writeonly %1) local_unnamed_addr #10 !dbg !2091 {
  %3 = alloca ptr, align 8, !DIAssignID !2104
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2097, metadata !DIExpression(), metadata !2104, metadata ptr %3, metadata !DIExpression()), !dbg !2105
  %4 = alloca ptr, align 8, !DIAssignID !2106
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2102, metadata !DIExpression(), metadata !2106, metadata ptr %4, metadata !DIExpression()), !dbg !2107
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2095, metadata !DIExpression()), !dbg !2105
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2096, metadata !DIExpression()), !dbg !2105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #41, !dbg !2108
  %5 = call double @strtod(ptr noundef nonnull %0, ptr noundef nonnull %3) #41, !dbg !2109
  tail call void @llvm.dbg.value(metadata double %5, metadata !2098, metadata !DIExpression()), !dbg !2105
  %6 = load ptr, ptr %3, align 8, !dbg !2110, !tbaa !956
  %7 = load i8, ptr %6, align 1, !dbg !2111, !tbaa !1036
  %8 = icmp eq i8 %7, 0, !dbg !2111
  br i1 %8, label %19, label %9, !dbg !2112

9:                                                ; preds = %2
  %10 = tail call ptr @__errno_location() #44, !dbg !2113
  %11 = load i32, ptr %10, align 4, !dbg !2113, !tbaa !1027
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2099, metadata !DIExpression()), !dbg !2107
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #41, !dbg !2114
  %12 = call double @c_strtod(ptr noundef nonnull %0, ptr noundef nonnull %4) #41, !dbg !2115
  tail call void @llvm.dbg.value(metadata double %12, metadata !2103, metadata !DIExpression()), !dbg !2107
  %13 = load ptr, ptr %4, align 8, !dbg !2116, !tbaa !956
  %14 = icmp ult ptr %6, %13, !dbg !2118
  br i1 %14, label %16, label %15, !dbg !2119

15:                                               ; preds = %9
  store i32 %11, ptr %10, align 4, !dbg !2120, !tbaa !1027
  br label %16

16:                                               ; preds = %9, %15
  %17 = phi ptr [ %6, %15 ], [ %13, %9 ]
  %18 = phi double [ %5, %15 ], [ %12, %9 ], !dbg !2105
  tail call void @llvm.dbg.value(metadata double %18, metadata !2098, metadata !DIExpression()), !dbg !2105
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !2121
  br label %19, !dbg !2122

19:                                               ; preds = %16, %2
  %20 = phi ptr [ %17, %16 ], [ %6, %2 ]
  %21 = phi double [ %18, %16 ], [ %5, %2 ], !dbg !2105
  tail call void @llvm.dbg.value(metadata double %21, metadata !2098, metadata !DIExpression()), !dbg !2105
  %22 = icmp eq ptr %1, null, !dbg !2123
  br i1 %22, label %24, label %23, !dbg !2125

23:                                               ; preds = %19
  store ptr %20, ptr %1, align 8, !dbg !2126, !tbaa !956
  br label %24, !dbg !2127

24:                                               ; preds = %23, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41, !dbg !2128
  ret double %21, !dbg !2129
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2130 double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #18 !dbg !2133 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2135, metadata !DIExpression()), !dbg !2136
  store ptr %0, ptr @file_name, align 8, !dbg !2137, !tbaa !956
  ret void, !dbg !2138
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #18 !dbg !2139 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2143, metadata !DIExpression()), !dbg !2144
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !2145, !tbaa !2146
  ret void, !dbg !2148
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2149 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2154, !tbaa !956
  %2 = tail call i32 @close_stream(ptr noundef %1) #41, !dbg !2155
  %3 = icmp eq i32 %2, 0, !dbg !2156
  br i1 %3, label %22, label %4, !dbg !2157

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !2158, !tbaa !2146, !range !2159, !noundef !995
  %6 = icmp eq i8 %5, 0, !dbg !2158
  br i1 %6, label %11, label %7, !dbg !2160

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #44, !dbg !2161
  %9 = load i32, ptr %8, align 4, !dbg !2161, !tbaa !1027
  %10 = icmp eq i32 %9, 32, !dbg !2162
  br i1 %10, label %22, label %11, !dbg !2163

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1.38, i32 noundef 5) #41, !dbg !2164
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !2151, metadata !DIExpression()), !dbg !2165
  %13 = load ptr, ptr @file_name, align 8, !dbg !2166, !tbaa !956
  %14 = icmp eq ptr %13, null, !dbg !2166
  %15 = tail call ptr @__errno_location() #44, !dbg !2168
  %16 = load i32, ptr %15, align 4, !dbg !2168, !tbaa !1027
  br i1 %14, label %19, label %17, !dbg !2169

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #41, !dbg !2170
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.39, ptr noundef %18, ptr noundef %12) #41, !dbg !2170
  br label %20, !dbg !2170

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.40, ptr noundef %12) #41, !dbg !2171
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2172, !tbaa !1027
  tail call void @_exit(i32 noundef %21) #43, !dbg !2173
  unreachable, !dbg !2173

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2174, !tbaa !956
  %24 = tail call i32 @close_stream(ptr noundef %23) #41, !dbg !2176
  %25 = icmp eq i32 %24, 0, !dbg !2177
  br i1 %25, label %28, label %26, !dbg !2178

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2179, !tbaa !1027
  tail call void @_exit(i32 noundef %27) #43, !dbg !2180
  unreachable, !dbg !2180

28:                                               ; preds = %22
  ret void, !dbg !2181
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local [2 x i64] @dtotimespec(double noundef %0) local_unnamed_addr #12 !dbg !2182 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !2190, metadata !DIExpression()), !dbg !2197
  %2 = fcmp ogt double %0, 0xC3E0000000000000, !dbg !2198
  br i1 %2, label %3, label %27, !dbg !2199

3:                                                ; preds = %1
  %4 = fcmp olt double %0, 0x43E0000000000000, !dbg !2200
  br i1 %4, label %5, label %27, !dbg !2201

5:                                                ; preds = %3
  %6 = fptosi double %0 to i64, !dbg !2202
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !2191, metadata !DIExpression()), !dbg !2203
  %7 = sitofp i64 %6 to double, !dbg !2204
  %8 = fsub double %0, %7, !dbg !2205
  %9 = fmul double %8, 1.000000e+09, !dbg !2206
  tail call void @llvm.dbg.value(metadata double %9, metadata !2195, metadata !DIExpression()), !dbg !2203
  %10 = fptosi double %9 to i64, !dbg !2207
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !2196, metadata !DIExpression()), !dbg !2203
  %11 = sitofp i64 %10 to double, !dbg !2208
  %12 = fcmp ogt double %9, %11, !dbg !2209
  %13 = zext i1 %12 to i64
  %14 = add nsw i64 %13, %10, !dbg !2210
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2196, metadata !DIExpression()), !dbg !2203
  %15 = freeze i64 %14
  %16 = sdiv i64 %15, 1000000000, !dbg !2211
  %17 = add nsw i64 %16, %6, !dbg !2212
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !2191, metadata !DIExpression()), !dbg !2203
  %18 = mul i64 %16, 1000000000
  %19 = sub i64 %15, %18
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !2196, metadata !DIExpression()), !dbg !2203
  %20 = icmp slt i64 %19, 0, !dbg !2213
  %21 = add nsw i64 %19, 1000000000, !dbg !2215
  %22 = ashr i64 %19, 63, !dbg !2215
  %23 = add nsw i64 %17, %22, !dbg !2215
  %24 = select i1 %20, i64 %21, i64 %19, !dbg !2215
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !2196, metadata !DIExpression()), !dbg !2203
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !2191, metadata !DIExpression()), !dbg !2203
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !2216, metadata !DIExpression()), !dbg !2222
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !2221, metadata !DIExpression()), !dbg !2222
  %25 = insertvalue [2 x i64] poison, i64 %23, 0, !dbg !2224
  %26 = insertvalue [2 x i64] %25, i64 %24, 1, !dbg !2224
  br label %27

27:                                               ; preds = %3, %1, %5
  %28 = phi [2 x i64] [ %26, %5 ], [ [i64 -9223372036854775808, i64 0], %1 ], [ [i64 9223372036854775807, i64 999999999], %3 ]
  ret [2 x i64] %28, !dbg !2225
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #19 !dbg !2226 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2230, metadata !DIExpression()), !dbg !2234
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2231, metadata !DIExpression()), !dbg !2234
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2232, metadata !DIExpression()), !dbg !2234
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2233, metadata !DIExpression(DW_OP_deref)), !dbg !2234
  tail call fastcc void @flush_stdout(), !dbg !2235
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2236, !tbaa !956
  %7 = icmp eq ptr %6, null, !dbg !2236
  br i1 %7, label %9, label %8, !dbg !2238

8:                                                ; preds = %4
  tail call void %6() #41, !dbg !2239
  br label %13, !dbg !2239

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2240, !tbaa !956
  %11 = tail call ptr @getprogname() #42, !dbg !2240
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef %11) #41, !dbg !2240
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41, !dbg !2242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2242, !tbaa.struct !2243
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2242
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41, !dbg !2242
  ret void, !dbg !2244
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2245 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2247, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 1, metadata !2249, metadata !DIExpression()), !dbg !2252
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #41, !dbg !2255
  %2 = icmp slt i32 %1, 0, !dbg !2256
  br i1 %2, label %6, label %3, !dbg !2257

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2258, !tbaa !956
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #41, !dbg !2258
  br label %6, !dbg !2258

6:                                                ; preds = %3, %0
  ret void, !dbg !2259
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #20

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2260 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !2266
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2262, metadata !DIExpression()), !dbg !2267
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2263, metadata !DIExpression()), !dbg !2267
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2264, metadata !DIExpression()), !dbg !2267
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2265, metadata !DIExpression(DW_OP_deref)), !dbg !2267
  %7 = load ptr, ptr @stderr, align 8, !dbg !2268, !tbaa !956
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #41, !dbg !2269, !noalias !2313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2317
  call void @llvm.dbg.value(metadata ptr %7, metadata !2309, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata ptr %2, metadata !2310, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata ptr poison, metadata !2311, metadata !DIExpression(DW_OP_deref)), !dbg !2318
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #41, !dbg !2269
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #41, !dbg !2269, !noalias !2313
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2319, !tbaa !1027
  %10 = add i32 %9, 1, !dbg !2319
  store i32 %10, ptr @error_message_count, align 4, !dbg !2319, !tbaa !1027
  %11 = icmp eq i32 %1, 0, !dbg !2320
  br i1 %11, label %21, label %12, !dbg !2322

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2323, metadata !DIExpression(), metadata !2266, metadata ptr %5, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i32 %1, metadata !2326, metadata !DIExpression()), !dbg !2331
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #41, !dbg !2333
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #41, !dbg !2334
  call void @llvm.dbg.value(metadata ptr %13, metadata !2327, metadata !DIExpression()), !dbg !2331
  %14 = icmp eq ptr %13, null, !dbg !2335
  br i1 %14, label %15, label %17, !dbg !2337

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.44, ptr noundef nonnull @.str.5.45, i32 noundef 5) #41, !dbg !2338
  call void @llvm.dbg.value(metadata ptr %16, metadata !2327, metadata !DIExpression()), !dbg !2331
  br label %17, !dbg !2339

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2331
  call void @llvm.dbg.value(metadata ptr %18, metadata !2327, metadata !DIExpression()), !dbg !2331
  %19 = load ptr, ptr @stderr, align 8, !dbg !2340, !tbaa !956
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.46, ptr noundef %18) #41, !dbg !2340
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #41, !dbg !2341
  br label %21, !dbg !2342

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2343, !tbaa !956
  call void @llvm.dbg.value(metadata i32 10, metadata !2344, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata ptr %22, metadata !2350, metadata !DIExpression()), !dbg !2351
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2353
  %24 = load ptr, ptr %23, align 8, !dbg !2353, !tbaa !2354
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2353
  %26 = load ptr, ptr %25, align 8, !dbg !2353, !tbaa !2356
  %27 = icmp ult ptr %24, %26, !dbg !2353
  br i1 %27, label %30, label %28, !dbg !2353, !prof !2357

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #41, !dbg !2353
  br label %32, !dbg !2353

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2353
  store ptr %31, ptr %23, align 8, !dbg !2353, !tbaa !2354
  store i8 10, ptr %24, align 1, !dbg !2353, !tbaa !1036
  br label %32, !dbg !2353

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2358, !tbaa !956
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #41, !dbg !2358
  %35 = icmp eq i32 %0, 0, !dbg !2359
  br i1 %35, label %37, label %36, !dbg !2361

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #43, !dbg !2362
  unreachable, !dbg !2362

37:                                               ; preds = %32
  ret void, !dbg !2363
}

declare !dbg !2364 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2367 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2370 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2373 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2376 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2380 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !2388
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2387, metadata !DIExpression(), metadata !2388, metadata ptr %4, metadata !DIExpression()), !dbg !2389
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2384, metadata !DIExpression()), !dbg !2389
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2385, metadata !DIExpression()), !dbg !2389
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2386, metadata !DIExpression()), !dbg !2389
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #41, !dbg !2390
  call void @llvm.va_start(ptr nonnull %4), !dbg !2391
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41, !dbg !2392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2392, !tbaa.struct !2243
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #46, !dbg !2392
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41, !dbg !2392
  call void @llvm.va_end(ptr nonnull %4), !dbg !2393
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #41, !dbg !2394
  ret void, !dbg !2394
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #21

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #19 !dbg !496 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !512, metadata !DIExpression()), !dbg !2395
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !513, metadata !DIExpression()), !dbg !2395
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !514, metadata !DIExpression()), !dbg !2395
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !515, metadata !DIExpression()), !dbg !2395
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !516, metadata !DIExpression()), !dbg !2395
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !517, metadata !DIExpression(DW_OP_deref)), !dbg !2395
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2396, !tbaa !1027
  %9 = icmp eq i32 %8, 0, !dbg !2396
  br i1 %9, label %24, label %10, !dbg !2398

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2399, !tbaa !1027
  %12 = icmp eq i32 %11, %3, !dbg !2402
  br i1 %12, label %13, label %23, !dbg !2403

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2404, !tbaa !956
  %15 = icmp eq ptr %14, %2, !dbg !2405
  br i1 %15, label %37, label %16, !dbg !2406

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2407
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2408
  br i1 %19, label %20, label %23, !dbg !2408

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2409
  %22 = icmp eq i32 %21, 0, !dbg !2410
  br i1 %22, label %37, label %23, !dbg !2411

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2412, !tbaa !956
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2413, !tbaa !1027
  br label %24, !dbg !2414

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2415
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2416, !tbaa !956
  %26 = icmp eq ptr %25, null, !dbg !2416
  br i1 %26, label %28, label %27, !dbg !2418

27:                                               ; preds = %24
  tail call void %25() #41, !dbg !2419
  br label %32, !dbg !2419

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2420, !tbaa !956
  %30 = tail call ptr @getprogname() #42, !dbg !2420
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.49, ptr noundef %30) #41, !dbg !2420
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2422, !tbaa !956
  %34 = icmp eq ptr %2, null, !dbg !2422
  %35 = select i1 %34, ptr @.str.3.50, ptr @.str.2.51, !dbg !2422
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #41, !dbg !2422
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #41, !dbg !2423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2423, !tbaa.struct !2243
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2423
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #41, !dbg !2423
  br label %37, !dbg !2424

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2424
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2425 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !2435
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2434, metadata !DIExpression(), metadata !2435, metadata ptr %6, metadata !DIExpression()), !dbg !2436
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2429, metadata !DIExpression()), !dbg !2436
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2430, metadata !DIExpression()), !dbg !2436
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2431, metadata !DIExpression()), !dbg !2436
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2432, metadata !DIExpression()), !dbg !2436
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2433, metadata !DIExpression()), !dbg !2436
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #41, !dbg !2437
  call void @llvm.va_start(ptr nonnull %6), !dbg !2438
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #41, !dbg !2439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2439, !tbaa.struct !2243
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #46, !dbg !2439
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #41, !dbg !2439
  call void @llvm.va_end(ptr nonnull %6), !dbg !2440
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #41, !dbg !2441
  ret void, !dbg !2441
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #22 !dbg !2442 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2445, !tbaa !956
  ret ptr %1, !dbg !2446
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #23 !dbg !2447 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2449, metadata !DIExpression()), !dbg !2452
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #42, !dbg !2453
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2450, metadata !DIExpression()), !dbg !2452
  %3 = icmp eq ptr %2, null, !dbg !2454
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2454
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2454
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2451, metadata !DIExpression()), !dbg !2452
  %6 = ptrtoint ptr %5 to i64, !dbg !2455
  %7 = ptrtoint ptr %0 to i64, !dbg !2455
  %8 = sub i64 %6, %7, !dbg !2455
  %9 = icmp sgt i64 %8, 6, !dbg !2457
  br i1 %9, label %10, label %19, !dbg !2458

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2459
  call void @llvm.dbg.value(metadata ptr %11, metadata !2460, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata ptr @.str.77, metadata !2465, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i64 7, metadata !2466, metadata !DIExpression()), !dbg !2467
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.77, i64 7), !dbg !2469
  %13 = icmp eq i32 %12, 0, !dbg !2470
  br i1 %13, label %14, label %19, !dbg !2471

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2449, metadata !DIExpression()), !dbg !2452
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.78, i64 noundef 3) #42, !dbg !2472
  %16 = icmp eq i32 %15, 0, !dbg !2475
  %17 = select i1 %16, i64 3, i64 0, !dbg !2476
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2476
  br label %19, !dbg !2476

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2452
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2451, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2449, metadata !DIExpression()), !dbg !2452
  store ptr %20, ptr @program_name, align 8, !dbg !2477, !tbaa !956
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2478, !tbaa !956
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2479, !tbaa !956
  ret void, !dbg !2480
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2481 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !551 {
  %3 = alloca i32, align 4, !DIAssignID !2482
  call void @llvm.dbg.assign(metadata i1 undef, metadata !561, metadata !DIExpression(), metadata !2482, metadata ptr %3, metadata !DIExpression()), !dbg !2483
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2484
  call void @llvm.dbg.assign(metadata i1 undef, metadata !566, metadata !DIExpression(), metadata !2484, metadata ptr %4, metadata !DIExpression()), !dbg !2483
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !558, metadata !DIExpression()), !dbg !2483
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !559, metadata !DIExpression()), !dbg !2483
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #41, !dbg !2485
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !560, metadata !DIExpression()), !dbg !2483
  %6 = icmp eq ptr %5, %0, !dbg !2486
  br i1 %6, label %7, label %14, !dbg !2488

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #41, !dbg !2489
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #41, !dbg !2490
  call void @llvm.dbg.value(metadata ptr %4, metadata !2491, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata ptr %4, metadata !2500, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i32 0, metadata !2506, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i64 8, metadata !2507, metadata !DIExpression()), !dbg !2508
  store i64 0, ptr %4, align 8, !dbg !2510
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #41, !dbg !2511
  %9 = icmp eq i64 %8, 2, !dbg !2513
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2514
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2483
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !2515
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #41, !dbg !2515
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2483
  ret ptr %15, !dbg !2515
}

; Function Attrs: nounwind
declare !dbg !2516 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2522 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2527, metadata !DIExpression()), !dbg !2530
  %2 = tail call ptr @__errno_location() #44, !dbg !2531
  %3 = load i32, ptr %2, align 4, !dbg !2531, !tbaa !1027
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2528, metadata !DIExpression()), !dbg !2530
  %4 = icmp eq ptr %0, null, !dbg !2532
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2532
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #47, !dbg !2533
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2529, metadata !DIExpression()), !dbg !2530
  store i32 %3, ptr %2, align 4, !dbg !2534, !tbaa !1027
  ret ptr %6, !dbg !2535
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #25 !dbg !2536 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2542, metadata !DIExpression()), !dbg !2543
  %2 = icmp eq ptr %0, null, !dbg !2544
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2544
  %4 = load i32, ptr %3, align 8, !dbg !2545, !tbaa !2546
  ret i32 %4, !dbg !2548
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2549 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2553, metadata !DIExpression()), !dbg !2555
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2554, metadata !DIExpression()), !dbg !2555
  %3 = icmp eq ptr %0, null, !dbg !2556
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2556
  store i32 %1, ptr %4, align 8, !dbg !2557, !tbaa !2546
  ret void, !dbg !2558
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #27 !dbg !2559 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2563, metadata !DIExpression()), !dbg !2571
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2564, metadata !DIExpression()), !dbg !2571
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2565, metadata !DIExpression()), !dbg !2571
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2566, metadata !DIExpression()), !dbg !2571
  %4 = icmp eq ptr %0, null, !dbg !2572
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2572
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2573
  %7 = lshr i8 %1, 5, !dbg !2574
  %8 = zext nneg i8 %7 to i64, !dbg !2574
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2575
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2567, metadata !DIExpression()), !dbg !2571
  %10 = and i8 %1, 31, !dbg !2576
  %11 = zext nneg i8 %10 to i32, !dbg !2576
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2569, metadata !DIExpression()), !dbg !2571
  %12 = load i32, ptr %9, align 4, !dbg !2577, !tbaa !1027
  %13 = lshr i32 %12, %11, !dbg !2578
  %14 = and i32 %13, 1, !dbg !2579
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2570, metadata !DIExpression()), !dbg !2571
  %15 = xor i32 %13, %2, !dbg !2580
  %16 = and i32 %15, 1, !dbg !2580
  %17 = shl nuw i32 %16, %11, !dbg !2581
  %18 = xor i32 %17, %12, !dbg !2582
  store i32 %18, ptr %9, align 4, !dbg !2582, !tbaa !1027
  ret i32 %14, !dbg !2583
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #27 !dbg !2584 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2588, metadata !DIExpression()), !dbg !2591
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2589, metadata !DIExpression()), !dbg !2591
  %3 = icmp eq ptr %0, null, !dbg !2592
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2594
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2588, metadata !DIExpression()), !dbg !2591
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2595
  %6 = load i32, ptr %5, align 4, !dbg !2595, !tbaa !2596
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2590, metadata !DIExpression()), !dbg !2591
  store i32 %1, ptr %5, align 4, !dbg !2597, !tbaa !2596
  ret i32 %6, !dbg !2598
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2599 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2603, metadata !DIExpression()), !dbg !2606
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2604, metadata !DIExpression()), !dbg !2606
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2605, metadata !DIExpression()), !dbg !2606
  %4 = icmp eq ptr %0, null, !dbg !2607
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2609
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2603, metadata !DIExpression()), !dbg !2606
  store i32 10, ptr %5, align 8, !dbg !2610, !tbaa !2546
  %6 = icmp ne ptr %1, null, !dbg !2611
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2613
  br i1 %8, label %10, label %9, !dbg !2613

9:                                                ; preds = %3
  tail call void @abort() #43, !dbg !2614
  unreachable, !dbg !2614

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2615
  store ptr %1, ptr %11, align 8, !dbg !2616, !tbaa !2617
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2618
  store ptr %2, ptr %12, align 8, !dbg !2619, !tbaa !2620
  ret void, !dbg !2621
}

; Function Attrs: noreturn nounwind
declare !dbg !2622 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2623 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2627, metadata !DIExpression()), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2628, metadata !DIExpression()), !dbg !2635
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2629, metadata !DIExpression()), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2630, metadata !DIExpression()), !dbg !2635
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2631, metadata !DIExpression()), !dbg !2635
  %6 = icmp eq ptr %4, null, !dbg !2636
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2632, metadata !DIExpression()), !dbg !2635
  %8 = tail call ptr @__errno_location() #44, !dbg !2637
  %9 = load i32, ptr %8, align 4, !dbg !2637, !tbaa !1027
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2633, metadata !DIExpression()), !dbg !2635
  %10 = load i32, ptr %7, align 8, !dbg !2638, !tbaa !2546
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2639
  %12 = load i32, ptr %11, align 4, !dbg !2639, !tbaa !2596
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2640
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2641
  %15 = load ptr, ptr %14, align 8, !dbg !2641, !tbaa !2617
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2642
  %17 = load ptr, ptr %16, align 8, !dbg !2642, !tbaa !2620
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2634, metadata !DIExpression()), !dbg !2635
  store i32 %9, ptr %8, align 4, !dbg !2644, !tbaa !1027
  ret i64 %18, !dbg !2645
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2646 {
  %10 = alloca i32, align 4, !DIAssignID !2714
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2715
  %12 = alloca i32, align 4, !DIAssignID !2716
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2717
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2718
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2692, metadata !DIExpression(), metadata !2718, metadata ptr %14, metadata !DIExpression()), !dbg !2719
  %15 = alloca i32, align 4, !DIAssignID !2720
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2695, metadata !DIExpression(), metadata !2720, metadata ptr %15, metadata !DIExpression()), !dbg !2721
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2652, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2653, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2654, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2655, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2656, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2657, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2658, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2659, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2660, metadata !DIExpression()), !dbg !2722
  %16 = tail call i64 @__ctype_get_mb_cur_max() #41, !dbg !2723
  %17 = icmp eq i64 %16, 1, !dbg !2724
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2661, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2662, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2663, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2664, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2665, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2666, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2667, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2668, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2669, metadata !DIExpression()), !dbg !2722
  %18 = and i32 %5, 2, !dbg !2725
  %19 = icmp ne i32 %18, 0, !dbg !2725
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2725

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !2726
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !2727
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !2728
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !2653, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2669, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2668, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2667, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2666, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !2665, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2664, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2663, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2662, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !2655, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2660, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !2659, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2656, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.label(metadata !2670), !dbg !2729
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2671, metadata !DIExpression()), !dbg !2722
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
  ], !dbg !2730

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2667, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2656, metadata !DIExpression()), !dbg !2722
  br label %101, !dbg !2731

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2667, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2656, metadata !DIExpression()), !dbg !2722
  br i1 %36, label %101, label %42, !dbg !2731

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2732
  br i1 %43, label %101, label %44, !dbg !2736

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2732, !tbaa !1036
  br label %101, !dbg !2732

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !667, metadata !DIExpression(), metadata !2716, metadata ptr %12, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.assign(metadata i1 undef, metadata !668, metadata !DIExpression(), metadata !2717, metadata ptr %13, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata ptr @.str.11.91, metadata !664, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i32 %28, metadata !665, metadata !DIExpression()), !dbg !2737
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.92, ptr noundef nonnull @.str.11.91, i32 noundef 5) #41, !dbg !2741
  call void @llvm.dbg.value(metadata ptr %46, metadata !666, metadata !DIExpression()), !dbg !2737
  %47 = icmp eq ptr %46, @.str.11.91, !dbg !2742
  br i1 %47, label %48, label %57, !dbg !2744

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #41, !dbg !2745
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #41, !dbg !2746
  call void @llvm.dbg.value(metadata ptr %13, metadata !2747, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata ptr %13, metadata !2755, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i32 0, metadata !2758, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 8, metadata !2759, metadata !DIExpression()), !dbg !2760
  store i64 0, ptr %13, align 8, !dbg !2762
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #41, !dbg !2763
  %50 = icmp eq i64 %49, 3, !dbg !2765
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2766
  %54 = icmp eq i32 %28, 9, !dbg !2766
  %55 = select i1 %54, ptr @.str.10.93, ptr @.str.12.94, !dbg !2766
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2766
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #41, !dbg !2767
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #41, !dbg !2767
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2737
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !2659, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.assign(metadata i1 undef, metadata !667, metadata !DIExpression(), metadata !2714, metadata ptr %10, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.assign(metadata i1 undef, metadata !668, metadata !DIExpression(), metadata !2715, metadata ptr %11, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr @.str.12.94, metadata !664, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i32 %28, metadata !665, metadata !DIExpression()), !dbg !2768
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.92, ptr noundef nonnull @.str.12.94, i32 noundef 5) #41, !dbg !2770
  call void @llvm.dbg.value(metadata ptr %59, metadata !666, metadata !DIExpression()), !dbg !2768
  %60 = icmp eq ptr %59, @.str.12.94, !dbg !2771
  br i1 %60, label %61, label %70, !dbg !2772

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #41, !dbg !2773
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #41, !dbg !2774
  call void @llvm.dbg.value(metadata ptr %11, metadata !2747, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata ptr %11, metadata !2755, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i32 0, metadata !2758, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64 8, metadata !2759, metadata !DIExpression()), !dbg !2777
  store i64 0, ptr %11, align 8, !dbg !2779
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #41, !dbg !2780
  %63 = icmp eq i64 %62, 3, !dbg !2781
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2782
  %67 = icmp eq i32 %28, 9, !dbg !2782
  %68 = select i1 %67, ptr @.str.10.93, ptr @.str.12.94, !dbg !2782
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2782
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #41, !dbg !2783
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #41, !dbg !2783
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2660, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2659, metadata !DIExpression()), !dbg !2722
  br i1 %36, label %88, label %73, !dbg !2784

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2672, metadata !DIExpression()), !dbg !2785
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2662, metadata !DIExpression()), !dbg !2722
  %74 = load i8, ptr %71, align 1, !dbg !2786, !tbaa !1036
  %75 = icmp eq i8 %74, 0, !dbg !2788
  br i1 %75, label %88, label %.preheader11, !dbg !2788

.preheader11:                                     ; preds = %73
  br label %76, !dbg !2788

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !2672, metadata !DIExpression()), !dbg !2785
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !2662, metadata !DIExpression()), !dbg !2722
  %80 = icmp ult i64 %79, %39, !dbg !2789
  br i1 %80, label %81, label %83, !dbg !2792

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2789
  store i8 %77, ptr %82, align 1, !dbg !2789, !tbaa !1036
  br label %83, !dbg !2789

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2792
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2662, metadata !DIExpression()), !dbg !2722
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2793
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !2672, metadata !DIExpression()), !dbg !2785
  %86 = load i8, ptr %85, align 1, !dbg !2786, !tbaa !1036
  %87 = icmp eq i8 %86, 0, !dbg !2788
  br i1 %87, label %.loopexit12, label %76, !dbg !2788, !llvm.loop !2794

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !2792
  br label %88, !dbg !2796

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2662, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2666, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2664, metadata !DIExpression()), !dbg !2722
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #42, !dbg !2796
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !2665, metadata !DIExpression()), !dbg !2722
  br label %101, !dbg !2798

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2666, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2667, metadata !DIExpression()), !dbg !2722
  br label %101, !dbg !2799

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2667, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2666, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2656, metadata !DIExpression()), !dbg !2722
  br label %101, !dbg !2800

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2667, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2666, metadata !DIExpression()), !dbg !2722
  br i1 %36, label %101, label %95, !dbg !2801

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2667, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2666, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2656, metadata !DIExpression()), !dbg !2722
  br i1 %36, label %101, label %95, !dbg !2800

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !2802
  br i1 %97, label %101, label %98, !dbg !2806

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !2802, !tbaa !1036
  br label %101, !dbg !2802

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2667, metadata !DIExpression()), !dbg !2722
  br label %101, !dbg !2807

100:                                              ; preds = %27
  call void @abort() #43, !dbg !2808
  unreachable, !dbg !2808

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2797
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.93, %42 ], [ @.str.10.93, %44 ], [ @.str.10.93, %41 ], [ %33, %27 ], [ @.str.12.94, %95 ], [ @.str.12.94, %98 ], [ @.str.12.94, %94 ], [ @.str.10.93, %40 ], [ @.str.12.94, %91 ], [ @.str.12.94, %92 ], [ @.str.12.94, %93 ], !dbg !2722
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !2722
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2667, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2666, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !2665, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !2664, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !2662, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !2660, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !2659, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2656, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2677, metadata !DIExpression()), !dbg !2809
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
  br label %121, !dbg !2810

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2797
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !2726
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !2811
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !2653, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !2677, metadata !DIExpression()), !dbg !2809
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2671, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2669, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2668, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !2663, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !2662, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !2655, metadata !DIExpression()), !dbg !2722
  %130 = icmp eq i64 %122, -1, !dbg !2812
  br i1 %130, label %131, label %135, !dbg !2813

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2814
  %133 = load i8, ptr %132, align 1, !dbg !2814, !tbaa !1036
  %134 = icmp eq i8 %133, 0, !dbg !2815
  br i1 %134, label %573, label %137, !dbg !2816

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !2817
  br i1 %136, label %573, label %137, !dbg !2816

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2679, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2682, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2683, metadata !DIExpression()), !dbg !2818
  br i1 %113, label %138, label %151, !dbg !2819

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !2821
  %140 = select i1 %130, i1 %114, i1 false, !dbg !2822
  br i1 %140, label %141, label %143, !dbg !2822

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2823
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !2655, metadata !DIExpression()), !dbg !2722
  br label %143, !dbg !2824

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !2824
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !2655, metadata !DIExpression()), !dbg !2722
  %145 = icmp ugt i64 %139, %144, !dbg !2825
  br i1 %145, label %151, label %146, !dbg !2826

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2827
  call void @llvm.dbg.value(metadata ptr %147, metadata !2828, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata ptr %106, metadata !2831, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i64 %107, metadata !2832, metadata !DIExpression()), !dbg !2833
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !2835
  %149 = icmp eq i32 %148, 0, !dbg !2836
  %150 = and i1 %149, %109, !dbg !2837
  br i1 %150, label %.loopexit7, label %151, !dbg !2837

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2679, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !2655, metadata !DIExpression()), !dbg !2722
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2838
  %155 = load i8, ptr %154, align 1, !dbg !2838, !tbaa !1036
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !2684, metadata !DIExpression()), !dbg !2818
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
  ], !dbg !2839

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !2840

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !2841

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2682, metadata !DIExpression()), !dbg !2818
  %159 = select i1 %110, i1 true, i1 %127, !dbg !2845
  br i1 %159, label %176, label %160, !dbg !2845

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !2847
  br i1 %161, label %162, label %164, !dbg !2851

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2847
  store i8 39, ptr %163, align 1, !dbg !2847, !tbaa !1036
  br label %164, !dbg !2847

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !2851
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !2662, metadata !DIExpression()), !dbg !2722
  %166 = icmp ult i64 %165, %129, !dbg !2852
  br i1 %166, label %167, label %169, !dbg !2855

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !2852
  store i8 36, ptr %168, align 1, !dbg !2852, !tbaa !1036
  br label %169, !dbg !2852

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2855
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !2662, metadata !DIExpression()), !dbg !2722
  %171 = icmp ult i64 %170, %129, !dbg !2856
  br i1 %171, label %172, label %174, !dbg !2859

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2856
  store i8 39, ptr %173, align 1, !dbg !2856, !tbaa !1036
  br label %174, !dbg !2856

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2859
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !2662, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2671, metadata !DIExpression()), !dbg !2722
  br label %176, !dbg !2860

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !2722
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2671, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !2662, metadata !DIExpression()), !dbg !2722
  %179 = icmp ult i64 %177, %129, !dbg !2861
  br i1 %179, label %180, label %182, !dbg !2864

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2861
  store i8 92, ptr %181, align 1, !dbg !2861, !tbaa !1036
  br label %182, !dbg !2861

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2864
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !2662, metadata !DIExpression()), !dbg !2722
  br i1 %110, label %184, label %476, !dbg !2865

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2867
  %186 = icmp ult i64 %185, %152, !dbg !2868
  br i1 %186, label %187, label %433, !dbg !2869

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2870
  %189 = load i8, ptr %188, align 1, !dbg !2870, !tbaa !1036
  %190 = add i8 %189, -48, !dbg !2871
  %191 = icmp ult i8 %190, 10, !dbg !2871
  br i1 %191, label %192, label %433, !dbg !2871

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2872
  br i1 %193, label %194, label %196, !dbg !2876

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2872
  store i8 48, ptr %195, align 1, !dbg !2872, !tbaa !1036
  br label %196, !dbg !2872

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2876
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2662, metadata !DIExpression()), !dbg !2722
  %198 = icmp ult i64 %197, %129, !dbg !2877
  br i1 %198, label %199, label %201, !dbg !2880

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2877
  store i8 48, ptr %200, align 1, !dbg !2877, !tbaa !1036
  br label %201, !dbg !2877

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2880
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !2662, metadata !DIExpression()), !dbg !2722
  br label %433, !dbg !2881

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2882

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2883

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2884

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2886

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2888
  %209 = icmp ult i64 %208, %152, !dbg !2889
  br i1 %209, label %210, label %433, !dbg !2890

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2891
  %212 = load i8, ptr %211, align 1, !dbg !2891, !tbaa !1036
  %213 = icmp eq i8 %212, 63, !dbg !2892
  br i1 %213, label %214, label %433, !dbg !2893

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2894
  %216 = load i8, ptr %215, align 1, !dbg !2894, !tbaa !1036
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
  ], !dbg !2895

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2896

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !2684, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !2677, metadata !DIExpression()), !dbg !2809
  %219 = icmp ult i64 %123, %129, !dbg !2898
  br i1 %219, label %220, label %222, !dbg !2901

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2898
  store i8 63, ptr %221, align 1, !dbg !2898, !tbaa !1036
  br label %222, !dbg !2898

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2901
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !2662, metadata !DIExpression()), !dbg !2722
  %224 = icmp ult i64 %223, %129, !dbg !2902
  br i1 %224, label %225, label %227, !dbg !2905

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2902
  store i8 34, ptr %226, align 1, !dbg !2902, !tbaa !1036
  br label %227, !dbg !2902

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2905
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !2662, metadata !DIExpression()), !dbg !2722
  %229 = icmp ult i64 %228, %129, !dbg !2906
  br i1 %229, label %230, label %232, !dbg !2909

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2906
  store i8 34, ptr %231, align 1, !dbg !2906, !tbaa !1036
  br label %232, !dbg !2906

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2909
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !2662, metadata !DIExpression()), !dbg !2722
  %234 = icmp ult i64 %233, %129, !dbg !2910
  br i1 %234, label %235, label %237, !dbg !2913

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2910
  store i8 63, ptr %236, align 1, !dbg !2910, !tbaa !1036
  br label %237, !dbg !2910

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2913
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !2662, metadata !DIExpression()), !dbg !2722
  br label %433, !dbg !2914

239:                                              ; preds = %151
  br label %249, !dbg !2915

240:                                              ; preds = %151
  br label %249, !dbg !2916

241:                                              ; preds = %151
  br label %247, !dbg !2917

242:                                              ; preds = %151
  br label %247, !dbg !2918

243:                                              ; preds = %151
  br label %249, !dbg !2919

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2920

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2921

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2924

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2926
  call void @llvm.dbg.label(metadata !2685), !dbg !2927
  br i1 %118, label %.loopexit8, label %249, !dbg !2928

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2926
  call void @llvm.dbg.label(metadata !2688), !dbg !2930
  br i1 %108, label %487, label %444, !dbg !2931

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2932

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2933, !tbaa !1036
  %254 = icmp eq i8 %253, 0, !dbg !2935
  br i1 %254, label %255, label %433, !dbg !2936

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2937
  br i1 %256, label %257, label %433, !dbg !2939

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2683, metadata !DIExpression()), !dbg !2818
  br label %258, !dbg !2940

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2818
  br i1 %115, label %260, label %433, !dbg !2941

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2943

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2668, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2683, metadata !DIExpression()), !dbg !2818
  br i1 %115, label %262, label %433, !dbg !2944

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2945

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2948
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2950
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2950
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2950
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !2653, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !2663, metadata !DIExpression()), !dbg !2722
  %269 = icmp ult i64 %123, %268, !dbg !2951
  br i1 %269, label %270, label %272, !dbg !2954

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2951
  store i8 39, ptr %271, align 1, !dbg !2951, !tbaa !1036
  br label %272, !dbg !2951

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2954
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !2662, metadata !DIExpression()), !dbg !2722
  %274 = icmp ult i64 %273, %268, !dbg !2955
  br i1 %274, label %275, label %277, !dbg !2958

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2955
  store i8 92, ptr %276, align 1, !dbg !2955, !tbaa !1036
  br label %277, !dbg !2955

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2958
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !2662, metadata !DIExpression()), !dbg !2722
  %279 = icmp ult i64 %278, %268, !dbg !2959
  br i1 %279, label %280, label %282, !dbg !2962

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2959
  store i8 39, ptr %281, align 1, !dbg !2959, !tbaa !1036
  br label %282, !dbg !2959

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2962
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !2662, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2671, metadata !DIExpression()), !dbg !2722
  br label %433, !dbg !2963

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2964

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2689, metadata !DIExpression()), !dbg !2965
  %286 = tail call ptr @__ctype_b_loc() #44, !dbg !2966
  %287 = load ptr, ptr %286, align 8, !dbg !2966, !tbaa !956
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2966
  %290 = load i16, ptr %289, align 2, !dbg !2966, !tbaa !1068
  %291 = and i16 %290, 16384, !dbg !2966
  %292 = icmp ne i16 %291, 0, !dbg !2968
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !2691, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2965
  br label %334, !dbg !2969

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #41, !dbg !2970
  call void @llvm.dbg.value(metadata ptr %14, metadata !2747, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata ptr %14, metadata !2755, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i32 0, metadata !2758, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 8, metadata !2759, metadata !DIExpression()), !dbg !2973
  store i64 0, ptr %14, align 8, !dbg !2975
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2689, metadata !DIExpression()), !dbg !2965
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2691, metadata !DIExpression()), !dbg !2965
  %294 = icmp eq i64 %152, -1, !dbg !2976
  br i1 %294, label %295, label %297, !dbg !2978

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2979
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !2655, metadata !DIExpression()), !dbg !2722
  br label %297, !dbg !2980

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !2818
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !2655, metadata !DIExpression()), !dbg !2722
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #41, !dbg !2981
  %299 = sub i64 %298, %128, !dbg !2982
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #41, !dbg !2983
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2699, metadata !DIExpression()), !dbg !2721
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2984

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2689, metadata !DIExpression()), !dbg !2965
  %302 = icmp ult i64 %128, %298, !dbg !2985
  br i1 %302, label %.preheader5, label %329, !dbg !2987

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2988

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2691, metadata !DIExpression()), !dbg !2965
  br label %329, !dbg !2989

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !2689, metadata !DIExpression()), !dbg !2965
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2991
  %308 = load i8, ptr %307, align 1, !dbg !2991, !tbaa !1036
  %309 = icmp eq i8 %308, 0, !dbg !2987
  br i1 %309, label %.loopexit6, label %310, !dbg !2988

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2992
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !2689, metadata !DIExpression()), !dbg !2965
  %312 = add i64 %311, %128, !dbg !2993
  %313 = icmp eq i64 %311, %299, !dbg !2985
  br i1 %313, label %.loopexit6, label %304, !dbg !2987, !llvm.loop !2994

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2700, metadata !DIExpression()), !dbg !2995
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2996
  %317 = and i1 %316, %109, !dbg !2996
  br i1 %317, label %.preheader3, label %325, !dbg !2996

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2997

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2700, metadata !DIExpression()), !dbg !2995
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2998
  %321 = load i8, ptr %320, align 1, !dbg !2998, !tbaa !1036
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !3000

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !3001
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2700, metadata !DIExpression()), !dbg !2995
  %324 = icmp eq i64 %323, %300, !dbg !3002
  br i1 %324, label %.loopexit4, label %318, !dbg !2997, !llvm.loop !3003

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !3005

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !3005, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %326, metadata !3007, metadata !DIExpression()), !dbg !3015
  %327 = call i32 @iswprint(i32 noundef %326) #41, !dbg !3017
  %328 = icmp ne i32 %327, 0, !dbg !3018
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2691, metadata !DIExpression()), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2689, metadata !DIExpression()), !dbg !2965
  br label %329, !dbg !3019

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !3020

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2691, metadata !DIExpression()), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !2689, metadata !DIExpression()), !dbg !2965
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3020
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3021
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !2818
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2691, metadata !DIExpression()), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2689, metadata !DIExpression()), !dbg !2965
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3020
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3021
  call void @llvm.dbg.label(metadata !2713), !dbg !3022
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !3023
  br label %624, !dbg !3023

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !2818
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !3025
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2691, metadata !DIExpression()), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !2689, metadata !DIExpression()), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !2655, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !2683, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2818
  %338 = icmp ult i64 %336, 2, !dbg !3026
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !3027
  br i1 %340, label %433, label %341, !dbg !3027

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !3028
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !2708, metadata !DIExpression()), !dbg !3029
  br label %343, !dbg !3030

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !2722
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !2809
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !2818
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !2684, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2682, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2679, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !2677, metadata !DIExpression()), !dbg !2809
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2671, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !2662, metadata !DIExpression()), !dbg !2722
  br i1 %339, label %394, label %350, !dbg !3031

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !3036

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2682, metadata !DIExpression()), !dbg !2818
  %352 = select i1 %110, i1 true, i1 %345, !dbg !3039
  br i1 %352, label %369, label %353, !dbg !3039

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !3041
  br i1 %354, label %355, label %357, !dbg !3045

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3041
  store i8 39, ptr %356, align 1, !dbg !3041, !tbaa !1036
  br label %357, !dbg !3041

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !2662, metadata !DIExpression()), !dbg !2722
  %359 = icmp ult i64 %358, %129, !dbg !3046
  br i1 %359, label %360, label %362, !dbg !3049

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !3046
  store i8 36, ptr %361, align 1, !dbg !3046, !tbaa !1036
  br label %362, !dbg !3046

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !3049
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2662, metadata !DIExpression()), !dbg !2722
  %364 = icmp ult i64 %363, %129, !dbg !3050
  br i1 %364, label %365, label %367, !dbg !3053

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !3050
  store i8 39, ptr %366, align 1, !dbg !3050, !tbaa !1036
  br label %367, !dbg !3050

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !3053
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !2662, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2671, metadata !DIExpression()), !dbg !2722
  br label %369, !dbg !3054

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !2722
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2671, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !2662, metadata !DIExpression()), !dbg !2722
  %372 = icmp ult i64 %370, %129, !dbg !3055
  br i1 %372, label %373, label %375, !dbg !3058

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !3055
  store i8 92, ptr %374, align 1, !dbg !3055, !tbaa !1036
  br label %375, !dbg !3055

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !2662, metadata !DIExpression()), !dbg !2722
  %377 = icmp ult i64 %376, %129, !dbg !3059
  br i1 %377, label %378, label %382, !dbg !3062

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !3059
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !3059
  store i8 %380, ptr %381, align 1, !dbg !3059, !tbaa !1036
  br label %382, !dbg !3059

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !3062
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !2662, metadata !DIExpression()), !dbg !2722
  %384 = icmp ult i64 %383, %129, !dbg !3063
  br i1 %384, label %385, label %390, !dbg !3066

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !3063
  %388 = or disjoint i8 %387, 48, !dbg !3063
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !3063
  store i8 %388, ptr %389, align 1, !dbg !3063, !tbaa !1036
  br label %390, !dbg !3063

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !3066
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2662, metadata !DIExpression()), !dbg !2722
  %392 = and i8 %349, 7, !dbg !3067
  %393 = or disjoint i8 %392, 48, !dbg !3068
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !2684, metadata !DIExpression()), !dbg !2818
  br label %401, !dbg !3069

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !3070

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !3071
  br i1 %396, label %397, label %399, !dbg !3076

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3071
  store i8 92, ptr %398, align 1, !dbg !3071, !tbaa !1036
  br label %399, !dbg !3071

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !3076
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !2662, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2679, metadata !DIExpression()), !dbg !2818
  br label %401, !dbg !3077

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !2722
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !2818
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !2684, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2682, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2679, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2671, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !2662, metadata !DIExpression()), !dbg !2722
  %407 = add i64 %346, 1, !dbg !3078
  %408 = icmp ugt i64 %342, %407, !dbg !3080
  br i1 %408, label %409, label %.loopexit2, !dbg !3081

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !3082
  %411 = select i1 %410, i1 true, i1 %405, !dbg !3082
  br i1 %411, label %423, label %412, !dbg !3082

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !3085
  br i1 %413, label %414, label %416, !dbg !3089

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !3085
  store i8 39, ptr %415, align 1, !dbg !3085, !tbaa !1036
  br label %416, !dbg !3085

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !3089
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !2662, metadata !DIExpression()), !dbg !2722
  %418 = icmp ult i64 %417, %129, !dbg !3090
  br i1 %418, label %419, label %421, !dbg !3093

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !3090
  store i8 39, ptr %420, align 1, !dbg !3090, !tbaa !1036
  br label %421, !dbg !3090

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !3093
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !2662, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2671, metadata !DIExpression()), !dbg !2722
  br label %423, !dbg !3094

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !3095
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2671, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !2662, metadata !DIExpression()), !dbg !2722
  %426 = icmp ult i64 %424, %129, !dbg !3096
  br i1 %426, label %427, label %429, !dbg !3099

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !3096
  store i8 %406, ptr %428, align 1, !dbg !3096, !tbaa !1036
  br label %429, !dbg !3096

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !3099
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !2662, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !2677, metadata !DIExpression()), !dbg !2809
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !3100
  %432 = load i8, ptr %431, align 1, !dbg !3100, !tbaa !1036
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !2684, metadata !DIExpression()), !dbg !2818
  br label %343, !dbg !3101, !llvm.loop !3102

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !3105
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !2722
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !2726
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !2809
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !2818
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !2653, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !2684, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2682, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2679, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !2677, metadata !DIExpression()), !dbg !2809
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2671, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2668, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !2663, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !2662, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !2655, metadata !DIExpression()), !dbg !2722
  br i1 %111, label %455, label %444, !dbg !3106

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
  br i1 %120, label %456, label %476, !dbg !3108

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !3109

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
  %467 = lshr i8 %458, 5, !dbg !3110
  %468 = zext nneg i8 %467 to i64, !dbg !3110
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !3111
  %470 = load i32, ptr %469, align 4, !dbg !3111, !tbaa !1027
  %471 = and i8 %458, 31, !dbg !3112
  %472 = zext nneg i8 %471 to i32, !dbg !3112
  %473 = shl nuw i32 1, %472, !dbg !3113
  %474 = and i32 %470, %473, !dbg !3113
  %475 = icmp eq i32 %474, 0, !dbg !3113
  br i1 %475, label %476, label %487, !dbg !3114

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
  br i1 %153, label %487, label %523, !dbg !3115

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !3105
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !2722
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !2726
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !3116
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !2818
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2653, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2684, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2677, metadata !DIExpression()), !dbg !2809
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2671, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2668, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2663, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !2662, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2655, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.label(metadata !2711), !dbg !3117
  br i1 %109, label %.loopexit8, label %497, !dbg !3118

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2682, metadata !DIExpression()), !dbg !2818
  %498 = select i1 %110, i1 true, i1 %492, !dbg !3120
  br i1 %498, label %515, label %499, !dbg !3120

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !3122
  br i1 %500, label %501, label %503, !dbg !3126

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !3122
  store i8 39, ptr %502, align 1, !dbg !3122, !tbaa !1036
  br label %503, !dbg !3122

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !3126
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !2662, metadata !DIExpression()), !dbg !2722
  %505 = icmp ult i64 %504, %496, !dbg !3127
  br i1 %505, label %506, label %508, !dbg !3130

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !3127
  store i8 36, ptr %507, align 1, !dbg !3127, !tbaa !1036
  br label %508, !dbg !3127

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !3130
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !2662, metadata !DIExpression()), !dbg !2722
  %510 = icmp ult i64 %509, %496, !dbg !3131
  br i1 %510, label %511, label %513, !dbg !3134

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !3131
  store i8 39, ptr %512, align 1, !dbg !3131, !tbaa !1036
  br label %513, !dbg !3131

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !3134
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !2662, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2671, metadata !DIExpression()), !dbg !2722
  br label %515, !dbg !3135

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !2818
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2671, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !2662, metadata !DIExpression()), !dbg !2722
  %518 = icmp ult i64 %516, %496, !dbg !3136
  br i1 %518, label %519, label %521, !dbg !3139

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !3136
  store i8 92, ptr %520, align 1, !dbg !3136, !tbaa !1036
  br label %521, !dbg !3136

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !3139
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2653, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2684, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2682, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2677, metadata !DIExpression()), !dbg !2809
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2671, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2668, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2663, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2662, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2655, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.label(metadata !2712), !dbg !3140
  br label %547, !dbg !3141

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !2722
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !2818
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !2809
  br label %523, !dbg !3141

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !3105
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !2722
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !2726
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !3116
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !3144
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !2653, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !2684, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2682, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2677, metadata !DIExpression()), !dbg !2809
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2671, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2668, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2663, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !2662, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !2655, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.label(metadata !2712), !dbg !3140
  %534 = xor i1 %528, true, !dbg !3141
  %535 = select i1 %534, i1 true, i1 %530, !dbg !3141
  br i1 %535, label %547, label %536, !dbg !3141

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !3145
  br i1 %537, label %538, label %540, !dbg !3149

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !3145
  store i8 39, ptr %539, align 1, !dbg !3145, !tbaa !1036
  br label %540, !dbg !3145

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !2662, metadata !DIExpression()), !dbg !2722
  %542 = icmp ult i64 %541, %533, !dbg !3150
  br i1 %542, label %543, label %545, !dbg !3153

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !3150
  store i8 39, ptr %544, align 1, !dbg !3150, !tbaa !1036
  br label %545, !dbg !3150

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !3153
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !2662, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2671, metadata !DIExpression()), !dbg !2722
  br label %547, !dbg !3154

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !2818
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2671, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !2662, metadata !DIExpression()), !dbg !2722
  %557 = icmp ult i64 %555, %548, !dbg !3155
  br i1 %557, label %558, label %560, !dbg !3158

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !3155
  store i8 %549, ptr %559, align 1, !dbg !3155, !tbaa !1036
  br label %560, !dbg !3155

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !3158
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2662, metadata !DIExpression()), !dbg !2722
  %562 = select i1 %550, i1 %126, i1 false, !dbg !3159
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2669, metadata !DIExpression()), !dbg !2722
  br label %563, !dbg !3160

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !3105
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !2722
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !2726
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !3116
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !2653, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !2677, metadata !DIExpression()), !dbg !2809
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2671, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2669, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2668, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !2663, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !2662, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2655, metadata !DIExpression()), !dbg !2722
  %572 = add i64 %570, 1, !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !2677, metadata !DIExpression()), !dbg !2809
  br label %121, !dbg !3162, !llvm.loop !3163

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2797
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !2726
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !2653, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2669, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2668, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !2663, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !2662, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !2655, metadata !DIExpression()), !dbg !2722
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !3165
  %575 = xor i1 %109, true, !dbg !3167
  %576 = or i1 %574, %575, !dbg !3167
  %577 = or i1 %576, %110, !dbg !3167
  br i1 %577, label %578, label %.loopexit13, !dbg !3167

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !3168
  %580 = xor i1 %.lcssa38, true, !dbg !3168
  %581 = select i1 %579, i1 true, i1 %580, !dbg !3168
  br i1 %581, label %589, label %582, !dbg !3168

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !3170

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !2726
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !3172
  br label %638, !dbg !3174

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !3175
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !3177
  br i1 %588, label %27, label %589, !dbg !3177

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !2722
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2797
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !3178
  %592 = or i1 %591, %590, !dbg !3180
  br i1 %592, label %608, label %593, !dbg !3180

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !2664, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !2662, metadata !DIExpression()), !dbg !2722
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !3181, !tbaa !1036
  %595 = icmp eq i8 %594, 0, !dbg !3184
  br i1 %595, label %608, label %.preheader, !dbg !3184

.preheader:                                       ; preds = %593
  br label %596, !dbg !3184

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !2664, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2662, metadata !DIExpression()), !dbg !2722
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !3185
  br i1 %600, label %601, label %603, !dbg !3188

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !3185
  store i8 %597, ptr %602, align 1, !dbg !3185, !tbaa !1036
  br label %603, !dbg !3185

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !3188
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2662, metadata !DIExpression()), !dbg !2722
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !3189
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !2664, metadata !DIExpression()), !dbg !2722
  %606 = load i8, ptr %605, align 1, !dbg !3181, !tbaa !1036
  %607 = icmp eq i8 %606, 0, !dbg !3184
  br i1 %607, label %.loopexit, label %596, !dbg !3184, !llvm.loop !3190

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !3188
  br label %608, !dbg !3192

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2662, metadata !DIExpression()), !dbg !2722
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !3192
  br i1 %610, label %611, label %638, !dbg !3194

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !3195
  store i8 0, ptr %612, align 1, !dbg !3196, !tbaa !1036
  br label %638, !dbg !3195

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !2713), !dbg !3022
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !3197
  br i1 %614, label %624, label %630, !dbg !3023

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !2818
  br label %615, !dbg !3197

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !3197

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !3197

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !2713), !dbg !3022
  %622 = icmp eq i32 %616, 2, !dbg !3197
  %623 = select i1 %619, i32 4, i32 2, !dbg !3023
  br i1 %622, label %624, label %630, !dbg !3023

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !3023

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !2824
  br label %630, !dbg !3198

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !2656, metadata !DIExpression()), !dbg !2722
  %636 = and i32 %5, -3, !dbg !3198
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !3199
  br label %638, !dbg !3200

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !3201
}

; Function Attrs: nounwind
declare !dbg !3202 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3205 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3208 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3210 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3214, metadata !DIExpression()), !dbg !3217
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3215, metadata !DIExpression()), !dbg !3217
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3216, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata ptr %0, metadata !3218, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 %1, metadata !3223, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata ptr null, metadata !3224, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata ptr %2, metadata !3225, metadata !DIExpression()), !dbg !3231
  %4 = icmp eq ptr %2, null, !dbg !3233
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3233
  call void @llvm.dbg.value(metadata ptr %5, metadata !3226, metadata !DIExpression()), !dbg !3231
  %6 = tail call ptr @__errno_location() #44, !dbg !3234
  %7 = load i32, ptr %6, align 4, !dbg !3234, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %7, metadata !3227, metadata !DIExpression()), !dbg !3231
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3235
  %9 = load i32, ptr %8, align 4, !dbg !3235, !tbaa !2596
  %10 = or i32 %9, 1, !dbg !3236
  call void @llvm.dbg.value(metadata i32 %10, metadata !3228, metadata !DIExpression()), !dbg !3231
  %11 = load i32, ptr %5, align 8, !dbg !3237, !tbaa !2546
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3238
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3239
  %14 = load ptr, ptr %13, align 8, !dbg !3239, !tbaa !2617
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3240
  %16 = load ptr, ptr %15, align 8, !dbg !3240, !tbaa !2620
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3241
  %18 = add i64 %17, 1, !dbg !3242
  call void @llvm.dbg.value(metadata i64 %18, metadata !3229, metadata !DIExpression()), !dbg !3231
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #48, !dbg !3243
  call void @llvm.dbg.value(metadata ptr %19, metadata !3230, metadata !DIExpression()), !dbg !3231
  %20 = load i32, ptr %5, align 8, !dbg !3244, !tbaa !2546
  %21 = load ptr, ptr %13, align 8, !dbg !3245, !tbaa !2617
  %22 = load ptr, ptr %15, align 8, !dbg !3246, !tbaa !2620
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3247
  store i32 %7, ptr %6, align 4, !dbg !3248, !tbaa !1027
  ret ptr %19, !dbg !3249
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3219 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3218, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3223, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3224, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3225, metadata !DIExpression()), !dbg !3250
  %5 = icmp eq ptr %3, null, !dbg !3251
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3251
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3226, metadata !DIExpression()), !dbg !3250
  %7 = tail call ptr @__errno_location() #44, !dbg !3252
  %8 = load i32, ptr %7, align 4, !dbg !3252, !tbaa !1027
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3227, metadata !DIExpression()), !dbg !3250
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3253
  %10 = load i32, ptr %9, align 4, !dbg !3253, !tbaa !2596
  %11 = icmp eq ptr %2, null, !dbg !3254
  %12 = zext i1 %11 to i32, !dbg !3254
  %13 = or i32 %10, %12, !dbg !3255
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3228, metadata !DIExpression()), !dbg !3250
  %14 = load i32, ptr %6, align 8, !dbg !3256, !tbaa !2546
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3257
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3258
  %17 = load ptr, ptr %16, align 8, !dbg !3258, !tbaa !2617
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3259
  %19 = load ptr, ptr %18, align 8, !dbg !3259, !tbaa !2620
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3260
  %21 = add i64 %20, 1, !dbg !3261
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3229, metadata !DIExpression()), !dbg !3250
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #48, !dbg !3262
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3230, metadata !DIExpression()), !dbg !3250
  %23 = load i32, ptr %6, align 8, !dbg !3263, !tbaa !2546
  %24 = load ptr, ptr %16, align 8, !dbg !3264, !tbaa !2617
  %25 = load ptr, ptr %18, align 8, !dbg !3265, !tbaa !2620
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3266
  store i32 %8, ptr %7, align 4, !dbg !3267, !tbaa !1027
  br i1 %11, label %28, label %27, !dbg !3268

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3269, !tbaa !1881
  br label %28, !dbg !3271

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3272
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3273 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3278, !tbaa !956
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3275, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3276, metadata !DIExpression()), !dbg !3280
  %2 = load i32, ptr @nslots, align 4, !tbaa !1027
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3276, metadata !DIExpression()), !dbg !3280
  %3 = icmp sgt i32 %2, 1, !dbg !3281
  br i1 %3, label %4, label %6, !dbg !3283

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3281
  br label %10, !dbg !3283

.loopexit:                                        ; preds = %10
  br label %6, !dbg !3284

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3284
  %8 = load ptr, ptr %7, align 8, !dbg !3284, !tbaa !3286
  %9 = icmp eq ptr %8, @slot0, !dbg !3288
  br i1 %9, label %17, label %16, !dbg !3289

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3276, metadata !DIExpression()), !dbg !3280
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3290
  %13 = load ptr, ptr %12, align 8, !dbg !3290, !tbaa !3286
  tail call void @free(ptr noundef %13) #41, !dbg !3291
  %14 = add nuw nsw i64 %11, 1, !dbg !3292
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3276, metadata !DIExpression()), !dbg !3280
  %15 = icmp eq i64 %14, %5, !dbg !3281
  br i1 %15, label %.loopexit, label %10, !dbg !3283, !llvm.loop !3293

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #41, !dbg !3295
  store i64 256, ptr @slotvec0, align 8, !dbg !3297, !tbaa !3298
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3299, !tbaa !3286
  br label %17, !dbg !3300

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3301
  br i1 %18, label %20, label %19, !dbg !3303

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #41, !dbg !3304
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3306, !tbaa !956
  br label %20, !dbg !3307

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3308, !tbaa !1027
  ret void, !dbg !3309
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3310 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3312, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3313, metadata !DIExpression()), !dbg !3314
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3315
  ret ptr %3, !dbg !3316
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3317 {
  %5 = alloca i64, align 8, !DIAssignID !3337
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3331, metadata !DIExpression(), metadata !3337, metadata ptr %5, metadata !DIExpression()), !dbg !3338
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3321, metadata !DIExpression()), !dbg !3339
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3322, metadata !DIExpression()), !dbg !3339
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3323, metadata !DIExpression()), !dbg !3339
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3324, metadata !DIExpression()), !dbg !3339
  %6 = tail call ptr @__errno_location() #44, !dbg !3340
  %7 = load i32, ptr %6, align 4, !dbg !3340, !tbaa !1027
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3325, metadata !DIExpression()), !dbg !3339
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3341, !tbaa !956
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3326, metadata !DIExpression()), !dbg !3339
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3327, metadata !DIExpression()), !dbg !3339
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3342
  br i1 %9, label %10, label %11, !dbg !3342

10:                                               ; preds = %4
  tail call void @abort() #43, !dbg !3344
  unreachable, !dbg !3344

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3345, !tbaa !1027
  %13 = icmp sgt i32 %12, %0, !dbg !3346
  br i1 %13, label %32, label %14, !dbg !3347

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3348
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3328, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3338
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #41, !dbg !3349
  %16 = sext i32 %12 to i64, !dbg !3350
  store i64 %16, ptr %5, align 8, !dbg !3351, !tbaa !1881, !DIAssignID !3352
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3331, metadata !DIExpression(), metadata !3352, metadata ptr %5, metadata !DIExpression()), !dbg !3338
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3353
  %18 = add nuw nsw i32 %0, 1, !dbg !3354
  %19 = sub i32 %18, %12, !dbg !3355
  %20 = sext i32 %19 to i64, !dbg !3356
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !3357
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3326, metadata !DIExpression()), !dbg !3339
  store ptr %21, ptr @slotvec, align 8, !dbg !3358, !tbaa !956
  br i1 %15, label %22, label %23, !dbg !3359

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3360, !tbaa.struct !3362
  br label %23, !dbg !3363

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3364, !tbaa !1027
  %25 = sext i32 %24 to i64, !dbg !3365
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3365
  %27 = load i64, ptr %5, align 8, !dbg !3366, !tbaa !1881
  %28 = sub nsw i64 %27, %25, !dbg !3367
  %29 = shl i64 %28, 4, !dbg !3368
  call void @llvm.dbg.value(metadata ptr %26, metadata !2755, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i32 0, metadata !2758, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i64 %29, metadata !2759, metadata !DIExpression()), !dbg !3369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #41, !dbg !3371
  %30 = load i64, ptr %5, align 8, !dbg !3372, !tbaa !1881
  %31 = trunc i64 %30 to i32, !dbg !3372
  store i32 %31, ptr @nslots, align 4, !dbg !3373, !tbaa !1027
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #41, !dbg !3374
  br label %32, !dbg !3375

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3339
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3326, metadata !DIExpression()), !dbg !3339
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3376
  %36 = load i64, ptr %35, align 8, !dbg !3377, !tbaa !3298
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3332, metadata !DIExpression()), !dbg !3378
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3379
  %38 = load ptr, ptr %37, align 8, !dbg !3379, !tbaa !3286
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3334, metadata !DIExpression()), !dbg !3378
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3380
  %40 = load i32, ptr %39, align 4, !dbg !3380, !tbaa !2596
  %41 = or i32 %40, 1, !dbg !3381
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3335, metadata !DIExpression()), !dbg !3378
  %42 = load i32, ptr %3, align 8, !dbg !3382, !tbaa !2546
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3383
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3384
  %45 = load ptr, ptr %44, align 8, !dbg !3384, !tbaa !2617
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3385
  %47 = load ptr, ptr %46, align 8, !dbg !3385, !tbaa !2620
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3386
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3336, metadata !DIExpression()), !dbg !3378
  %49 = icmp ugt i64 %36, %48, !dbg !3387
  br i1 %49, label %60, label %50, !dbg !3389

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3390
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3332, metadata !DIExpression()), !dbg !3378
  store i64 %51, ptr %35, align 8, !dbg !3392, !tbaa !3298
  %52 = icmp eq ptr %38, @slot0, !dbg !3393
  br i1 %52, label %54, label %53, !dbg !3395

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #41, !dbg !3396
  br label %54, !dbg !3396

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #48, !dbg !3397
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3334, metadata !DIExpression()), !dbg !3378
  store ptr %55, ptr %37, align 8, !dbg !3398, !tbaa !3286
  %56 = load i32, ptr %3, align 8, !dbg !3399, !tbaa !2546
  %57 = load ptr, ptr %44, align 8, !dbg !3400, !tbaa !2617
  %58 = load ptr, ptr %46, align 8, !dbg !3401, !tbaa !2620
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3402
  br label %60, !dbg !3403

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3378
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3334, metadata !DIExpression()), !dbg !3378
  store i32 %7, ptr %6, align 4, !dbg !3404, !tbaa !1027
  ret ptr %61, !dbg !3405
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3406 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3410, metadata !DIExpression()), !dbg !3413
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3411, metadata !DIExpression()), !dbg !3413
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3412, metadata !DIExpression()), !dbg !3413
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3414
  ret ptr %4, !dbg !3415
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3416 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3418, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i32 0, metadata !3312, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata ptr %0, metadata !3313, metadata !DIExpression()), !dbg !3420
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3422
  ret ptr %2, !dbg !3423
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3424 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3428, metadata !DIExpression()), !dbg !3430
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3429, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i32 0, metadata !3410, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata ptr %0, metadata !3411, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i64 %1, metadata !3412, metadata !DIExpression()), !dbg !3431
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3433
  ret ptr %3, !dbg !3434
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3435 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3443
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3442, metadata !DIExpression(), metadata !3443, metadata ptr %4, metadata !DIExpression()), !dbg !3444
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3439, metadata !DIExpression()), !dbg !3444
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3440, metadata !DIExpression()), !dbg !3444
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3441, metadata !DIExpression()), !dbg !3444
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3445
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3446), !dbg !3449
  call void @llvm.dbg.value(metadata i32 %1, metadata !3450, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3455, metadata !DIExpression()), !dbg !3458
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3458, !alias.scope !3446, !DIAssignID !3459
  call void @llvm.dbg.assign(metadata i8 0, metadata !3442, metadata !DIExpression(), metadata !3459, metadata ptr %4, metadata !DIExpression()), !dbg !3444
  %5 = icmp eq i32 %1, 10, !dbg !3460
  br i1 %5, label %6, label %7, !dbg !3462

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3463, !noalias !3446
  unreachable, !dbg !3463

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3464, !tbaa !2546, !alias.scope !3446, !DIAssignID !3465
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3442, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3465, metadata ptr %4, metadata !DIExpression()), !dbg !3444
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3466
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3467
  ret ptr %8, !dbg !3468
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3469 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3478
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3477, metadata !DIExpression(), metadata !3478, metadata ptr %5, metadata !DIExpression()), !dbg !3479
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3473, metadata !DIExpression()), !dbg !3479
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3474, metadata !DIExpression()), !dbg !3479
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3475, metadata !DIExpression()), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3476, metadata !DIExpression()), !dbg !3479
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3480
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3481), !dbg !3484
  call void @llvm.dbg.value(metadata i32 %1, metadata !3450, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3455, metadata !DIExpression()), !dbg !3487
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3487, !alias.scope !3481, !DIAssignID !3488
  call void @llvm.dbg.assign(metadata i8 0, metadata !3477, metadata !DIExpression(), metadata !3488, metadata ptr %5, metadata !DIExpression()), !dbg !3479
  %6 = icmp eq i32 %1, 10, !dbg !3489
  br i1 %6, label %7, label %8, !dbg !3490

7:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3491, !noalias !3481
  unreachable, !dbg !3491

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3492, !tbaa !2546, !alias.scope !3481, !DIAssignID !3493
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3477, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3493, metadata ptr %5, metadata !DIExpression()), !dbg !3479
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3494
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3495
  ret ptr %9, !dbg !3496
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3497 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3503
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3501, metadata !DIExpression()), !dbg !3504
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3502, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3442, metadata !DIExpression(), metadata !3503, metadata ptr %3, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i32 0, metadata !3439, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i32 %0, metadata !3440, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata ptr %1, metadata !3441, metadata !DIExpression()), !dbg !3505
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3507
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3508), !dbg !3511
  call void @llvm.dbg.value(metadata i32 %0, metadata !3450, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3455, metadata !DIExpression()), !dbg !3514
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3514, !alias.scope !3508, !DIAssignID !3515
  call void @llvm.dbg.assign(metadata i8 0, metadata !3442, metadata !DIExpression(), metadata !3515, metadata ptr %3, metadata !DIExpression()), !dbg !3505
  %4 = icmp eq i32 %0, 10, !dbg !3516
  br i1 %4, label %5, label %6, !dbg !3517

5:                                                ; preds = %2
  tail call void @abort() #43, !dbg !3518, !noalias !3508
  unreachable, !dbg !3518

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3519, !tbaa !2546, !alias.scope !3508, !DIAssignID !3520
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3442, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3520, metadata ptr %3, metadata !DIExpression()), !dbg !3505
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3521
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3522
  ret ptr %7, !dbg !3523
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3524 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3531
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3528, metadata !DIExpression()), !dbg !3532
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3529, metadata !DIExpression()), !dbg !3532
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3530, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3477, metadata !DIExpression(), metadata !3531, metadata ptr %4, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i32 0, metadata !3473, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i32 %0, metadata !3474, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata ptr %1, metadata !3475, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 %2, metadata !3476, metadata !DIExpression()), !dbg !3533
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3536), !dbg !3539
  call void @llvm.dbg.value(metadata i32 %0, metadata !3450, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3455, metadata !DIExpression()), !dbg !3542
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3542, !alias.scope !3536, !DIAssignID !3543
  call void @llvm.dbg.assign(metadata i8 0, metadata !3477, metadata !DIExpression(), metadata !3543, metadata ptr %4, metadata !DIExpression()), !dbg !3533
  %5 = icmp eq i32 %0, 10, !dbg !3544
  br i1 %5, label %6, label %7, !dbg !3545

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3546, !noalias !3536
  unreachable, !dbg !3546

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3547, !tbaa !2546, !alias.scope !3536, !DIAssignID !3548
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3477, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3548, metadata ptr %4, metadata !DIExpression()), !dbg !3533
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3549
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3550
  ret ptr %8, !dbg !3551
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3552 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3560
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3559, metadata !DIExpression(), metadata !3560, metadata ptr %4, metadata !DIExpression()), !dbg !3561
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3556, metadata !DIExpression()), !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3557, metadata !DIExpression()), !dbg !3561
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3558, metadata !DIExpression()), !dbg !3561
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3563, !tbaa.struct !3564, !DIAssignID !3565
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3559, metadata !DIExpression(), metadata !3565, metadata ptr %4, metadata !DIExpression()), !dbg !3561
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2563, metadata !DIExpression()), !dbg !3566
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2564, metadata !DIExpression()), !dbg !3566
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2565, metadata !DIExpression()), !dbg !3566
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2566, metadata !DIExpression()), !dbg !3566
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3568
  %6 = lshr i8 %2, 5, !dbg !3569
  %7 = zext nneg i8 %6 to i64, !dbg !3569
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3570
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2567, metadata !DIExpression()), !dbg !3566
  %9 = and i8 %2, 31, !dbg !3571
  %10 = zext nneg i8 %9 to i32, !dbg !3571
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2569, metadata !DIExpression()), !dbg !3566
  %11 = load i32, ptr %8, align 4, !dbg !3572, !tbaa !1027
  %12 = lshr i32 %11, %10, !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2570, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3566
  %13 = and i32 %12, 1, !dbg !3574
  %14 = xor i32 %13, 1, !dbg !3574
  %15 = shl nuw i32 %14, %10, !dbg !3575
  %16 = xor i32 %15, %11, !dbg !3576
  store i32 %16, ptr %8, align 4, !dbg !3576, !tbaa !1027
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3577
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3578
  ret ptr %17, !dbg !3579
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3580 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3586
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3584, metadata !DIExpression()), !dbg !3587
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3585, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3559, metadata !DIExpression(), metadata !3586, metadata ptr %3, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata ptr %0, metadata !3556, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i64 -1, metadata !3557, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i8 %1, metadata !3558, metadata !DIExpression()), !dbg !3588
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3590
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3591, !tbaa.struct !3564, !DIAssignID !3592
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3559, metadata !DIExpression(), metadata !3592, metadata ptr %3, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata ptr %3, metadata !2563, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i8 %1, metadata !2564, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i32 1, metadata !2565, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i8 %1, metadata !2566, metadata !DIExpression()), !dbg !3593
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3595
  %5 = lshr i8 %1, 5, !dbg !3596
  %6 = zext nneg i8 %5 to i64, !dbg !3596
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3597
  call void @llvm.dbg.value(metadata ptr %7, metadata !2567, metadata !DIExpression()), !dbg !3593
  %8 = and i8 %1, 31, !dbg !3598
  %9 = zext nneg i8 %8 to i32, !dbg !3598
  call void @llvm.dbg.value(metadata i32 %9, metadata !2569, metadata !DIExpression()), !dbg !3593
  %10 = load i32, ptr %7, align 4, !dbg !3599, !tbaa !1027
  %11 = lshr i32 %10, %9, !dbg !3600
  call void @llvm.dbg.value(metadata i32 %11, metadata !2570, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3593
  %12 = and i32 %11, 1, !dbg !3601
  %13 = xor i32 %12, 1, !dbg !3601
  %14 = shl nuw i32 %13, %9, !dbg !3602
  %15 = xor i32 %14, %10, !dbg !3603
  store i32 %15, ptr %7, align 4, !dbg !3603, !tbaa !1027
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3604
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3605
  ret ptr %16, !dbg !3606
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3607 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3610
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3609, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata ptr %0, metadata !3584, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i8 58, metadata !3585, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3559, metadata !DIExpression(), metadata !3610, metadata ptr %2, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata ptr %0, metadata !3556, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i64 -1, metadata !3557, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i8 58, metadata !3558, metadata !DIExpression()), !dbg !3614
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #41, !dbg !3616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3617, !tbaa.struct !3564, !DIAssignID !3618
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3559, metadata !DIExpression(), metadata !3618, metadata ptr %2, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata ptr %2, metadata !2563, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i8 58, metadata !2564, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i32 1, metadata !2565, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i8 58, metadata !2566, metadata !DIExpression()), !dbg !3619
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3621
  call void @llvm.dbg.value(metadata ptr %3, metadata !2567, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i32 26, metadata !2569, metadata !DIExpression()), !dbg !3619
  %4 = load i32, ptr %3, align 4, !dbg !3622, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %4, metadata !2570, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3619
  %5 = or i32 %4, 67108864, !dbg !3623
  store i32 %5, ptr %3, align 4, !dbg !3623, !tbaa !1027
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3624
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #41, !dbg !3625
  ret ptr %6, !dbg !3626
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3627 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3631
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3629, metadata !DIExpression()), !dbg !3632
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3630, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3559, metadata !DIExpression(), metadata !3631, metadata ptr %3, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata ptr %0, metadata !3556, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i64 %1, metadata !3557, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i8 58, metadata !3558, metadata !DIExpression()), !dbg !3633
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3635
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3636, !tbaa.struct !3564, !DIAssignID !3637
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3559, metadata !DIExpression(), metadata !3637, metadata ptr %3, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata ptr %3, metadata !2563, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i8 58, metadata !2564, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i32 1, metadata !2565, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i8 58, metadata !2566, metadata !DIExpression()), !dbg !3638
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3640
  call void @llvm.dbg.value(metadata ptr %4, metadata !2567, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i32 26, metadata !2569, metadata !DIExpression()), !dbg !3638
  %5 = load i32, ptr %4, align 4, !dbg !3641, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %5, metadata !2570, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3638
  %6 = or i32 %5, 67108864, !dbg !3642
  store i32 %6, ptr %4, align 4, !dbg !3642, !tbaa !1027
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3643
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3644
  ret ptr %7, !dbg !3645
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3646 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3652
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3651, metadata !DIExpression(), metadata !3652, metadata ptr %4, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3455, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3654
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3648, metadata !DIExpression()), !dbg !3653
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3649, metadata !DIExpression()), !dbg !3653
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3650, metadata !DIExpression()), !dbg !3653
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3656
  call void @llvm.dbg.value(metadata i32 %1, metadata !3450, metadata !DIExpression()), !dbg !3657
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3455, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3657
  %5 = icmp eq i32 %1, 10, !dbg !3658
  br i1 %5, label %6, label %7, !dbg !3659

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3660, !noalias !3661
  unreachable, !dbg !3660

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3455, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3657
  store i32 %1, ptr %4, align 8, !dbg !3664, !tbaa.struct !3564, !DIAssignID !3665
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3664
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3651, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3665, metadata ptr %4, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3651, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3666, metadata ptr %8, metadata !DIExpression()), !dbg !3653
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2563, metadata !DIExpression()), !dbg !3667
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2564, metadata !DIExpression()), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2565, metadata !DIExpression()), !dbg !3667
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2566, metadata !DIExpression()), !dbg !3667
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3669
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2567, metadata !DIExpression()), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2569, metadata !DIExpression()), !dbg !3667
  %10 = load i32, ptr %9, align 4, !dbg !3670, !tbaa !1027
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2570, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3667
  %11 = or i32 %10, 67108864, !dbg !3671
  store i32 %11, ptr %9, align 4, !dbg !3671, !tbaa !1027, !DIAssignID !3672
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3651, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3672, metadata ptr %9, metadata !DIExpression()), !dbg !3653
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3673
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3674
  ret ptr %12, !dbg !3675
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3676 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3684
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3680, metadata !DIExpression()), !dbg !3685
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3681, metadata !DIExpression()), !dbg !3685
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3682, metadata !DIExpression()), !dbg !3685
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3683, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3686, metadata !DIExpression(), metadata !3684, metadata ptr %5, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 %0, metadata !3691, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata ptr %1, metadata !3692, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata ptr %2, metadata !3693, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata ptr %3, metadata !3694, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i64 -1, metadata !3695, metadata !DIExpression()), !dbg !3696
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3699, !tbaa.struct !3564, !DIAssignID !3700
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3686, metadata !DIExpression(), metadata !3700, metadata ptr %5, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3686, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3701, metadata ptr undef, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata ptr %5, metadata !2603, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata ptr %1, metadata !2604, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata ptr %2, metadata !2605, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata ptr %5, metadata !2603, metadata !DIExpression()), !dbg !3702
  store i32 10, ptr %5, align 8, !dbg !3704, !tbaa !2546, !DIAssignID !3705
  call void @llvm.dbg.assign(metadata i32 10, metadata !3686, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3705, metadata ptr %5, metadata !DIExpression()), !dbg !3696
  %6 = icmp ne ptr %1, null, !dbg !3706
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3707
  br i1 %8, label %10, label %9, !dbg !3707

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3708
  unreachable, !dbg !3708

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3709
  store ptr %1, ptr %11, align 8, !dbg !3710, !tbaa !2617, !DIAssignID !3711
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3686, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3711, metadata ptr %11, metadata !DIExpression()), !dbg !3696
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3712
  store ptr %2, ptr %12, align 8, !dbg !3713, !tbaa !2620, !DIAssignID !3714
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3686, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3714, metadata ptr %12, metadata !DIExpression()), !dbg !3696
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3715
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3716
  ret ptr %13, !dbg !3717
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3687 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3718
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3686, metadata !DIExpression(), metadata !3718, metadata ptr %6, metadata !DIExpression()), !dbg !3719
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3691, metadata !DIExpression()), !dbg !3719
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3692, metadata !DIExpression()), !dbg !3719
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3693, metadata !DIExpression()), !dbg !3719
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3694, metadata !DIExpression()), !dbg !3719
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3695, metadata !DIExpression()), !dbg !3719
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #41, !dbg !3720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3721, !tbaa.struct !3564, !DIAssignID !3722
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3686, metadata !DIExpression(), metadata !3722, metadata ptr %6, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3686, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3723, metadata ptr undef, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata ptr %6, metadata !2603, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata ptr %1, metadata !2604, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata ptr %2, metadata !2605, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata ptr %6, metadata !2603, metadata !DIExpression()), !dbg !3724
  store i32 10, ptr %6, align 8, !dbg !3726, !tbaa !2546, !DIAssignID !3727
  call void @llvm.dbg.assign(metadata i32 10, metadata !3686, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3727, metadata ptr %6, metadata !DIExpression()), !dbg !3719
  %7 = icmp ne ptr %1, null, !dbg !3728
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3729
  br i1 %9, label %11, label %10, !dbg !3729

10:                                               ; preds = %5
  tail call void @abort() #43, !dbg !3730
  unreachable, !dbg !3730

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3731
  store ptr %1, ptr %12, align 8, !dbg !3732, !tbaa !2617, !DIAssignID !3733
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3686, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3733, metadata ptr %12, metadata !DIExpression()), !dbg !3719
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3734
  store ptr %2, ptr %13, align 8, !dbg !3735, !tbaa !2620, !DIAssignID !3736
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3686, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3736, metadata ptr %13, metadata !DIExpression()), !dbg !3719
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3737
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #41, !dbg !3738
  ret ptr %14, !dbg !3739
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3740 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3747
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3744, metadata !DIExpression()), !dbg !3748
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3745, metadata !DIExpression()), !dbg !3748
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3746, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i32 0, metadata !3680, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata ptr %0, metadata !3681, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata ptr %1, metadata !3682, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata ptr %2, metadata !3683, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3686, metadata !DIExpression(), metadata !3747, metadata ptr %4, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 0, metadata !3691, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata ptr %0, metadata !3692, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata ptr %1, metadata !3693, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata ptr %2, metadata !3694, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i64 -1, metadata !3695, metadata !DIExpression()), !dbg !3751
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3753
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3754, !tbaa.struct !3564, !DIAssignID !3755
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3686, metadata !DIExpression(), metadata !3755, metadata ptr %4, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3686, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3756, metadata ptr undef, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata ptr %4, metadata !2603, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata ptr %0, metadata !2604, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata ptr %1, metadata !2605, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata ptr %4, metadata !2603, metadata !DIExpression()), !dbg !3757
  store i32 10, ptr %4, align 8, !dbg !3759, !tbaa !2546, !DIAssignID !3760
  call void @llvm.dbg.assign(metadata i32 10, metadata !3686, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3760, metadata ptr %4, metadata !DIExpression()), !dbg !3751
  %5 = icmp ne ptr %0, null, !dbg !3761
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3762
  br i1 %7, label %9, label %8, !dbg !3762

8:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3763
  unreachable, !dbg !3763

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3764
  store ptr %0, ptr %10, align 8, !dbg !3765, !tbaa !2617, !DIAssignID !3766
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3686, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3766, metadata ptr %10, metadata !DIExpression()), !dbg !3751
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3767
  store ptr %1, ptr %11, align 8, !dbg !3768, !tbaa !2620, !DIAssignID !3769
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3686, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3769, metadata ptr %11, metadata !DIExpression()), !dbg !3751
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3770
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3771
  ret ptr %12, !dbg !3772
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3773 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3781
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3777, metadata !DIExpression()), !dbg !3782
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3778, metadata !DIExpression()), !dbg !3782
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3779, metadata !DIExpression()), !dbg !3782
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3780, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3686, metadata !DIExpression(), metadata !3781, metadata ptr %5, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i32 0, metadata !3691, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata ptr %0, metadata !3692, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata ptr %1, metadata !3693, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata ptr %2, metadata !3694, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i64 %3, metadata !3695, metadata !DIExpression()), !dbg !3783
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3786, !tbaa.struct !3564, !DIAssignID !3787
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3686, metadata !DIExpression(), metadata !3787, metadata ptr %5, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3686, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3788, metadata ptr undef, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata ptr %5, metadata !2603, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata ptr %0, metadata !2604, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata ptr %1, metadata !2605, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata ptr %5, metadata !2603, metadata !DIExpression()), !dbg !3789
  store i32 10, ptr %5, align 8, !dbg !3791, !tbaa !2546, !DIAssignID !3792
  call void @llvm.dbg.assign(metadata i32 10, metadata !3686, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3792, metadata ptr %5, metadata !DIExpression()), !dbg !3783
  %6 = icmp ne ptr %0, null, !dbg !3793
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3794
  br i1 %8, label %10, label %9, !dbg !3794

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3795
  unreachable, !dbg !3795

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3796
  store ptr %0, ptr %11, align 8, !dbg !3797, !tbaa !2617, !DIAssignID !3798
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3686, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3798, metadata ptr %11, metadata !DIExpression()), !dbg !3783
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3799
  store ptr %1, ptr %12, align 8, !dbg !3800, !tbaa !2620, !DIAssignID !3801
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3686, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3801, metadata ptr %12, metadata !DIExpression()), !dbg !3783
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3802
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3803
  ret ptr %13, !dbg !3804
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3805 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3809, metadata !DIExpression()), !dbg !3812
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3810, metadata !DIExpression()), !dbg !3812
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3811, metadata !DIExpression()), !dbg !3812
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3813
  ret ptr %4, !dbg !3814
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3815 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3819, metadata !DIExpression()), !dbg !3821
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3820, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i32 0, metadata !3809, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata ptr %0, metadata !3810, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i64 %1, metadata !3811, metadata !DIExpression()), !dbg !3822
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3824
  ret ptr %3, !dbg !3825
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3826 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3830, metadata !DIExpression()), !dbg !3832
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3831, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.value(metadata i32 %0, metadata !3809, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata ptr %1, metadata !3810, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i64 -1, metadata !3811, metadata !DIExpression()), !dbg !3833
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3835
  ret ptr %3, !dbg !3836
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3837 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3841, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i32 0, metadata !3830, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata ptr %0, metadata !3831, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata i32 0, metadata !3809, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata ptr %0, metadata !3810, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 -1, metadata !3811, metadata !DIExpression()), !dbg !3845
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3847
  ret ptr %2, !dbg !3848
}

; Function Attrs: nounwind uwtable
define dso_local i32 @str2sig(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 !dbg !3849 {
  %3 = alloca ptr, align 8, !DIAssignID !3855
  %4 = alloca ptr, align 8, !DIAssignID !3856
  %5 = alloca ptr, align 8, !DIAssignID !3857
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3853, metadata !DIExpression()), !dbg !3858
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3854, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3859, metadata !DIExpression(), metadata !3855, metadata ptr %3, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3872, metadata !DIExpression(), metadata !3856, metadata ptr %4, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3876, metadata !DIExpression(), metadata !3857, metadata ptr %5, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata ptr %0, metadata !3864, metadata !DIExpression()), !dbg !3884
  %6 = load i8, ptr %0, align 1, !dbg !3885, !tbaa !1036
  %7 = zext i8 %6 to i32, !dbg !3885
  %8 = add nsw i32 %7, -48, !dbg !3885
  %9 = icmp ult i32 %8, 10, !dbg !3885
  br i1 %9, label %10, label %.preheader, !dbg !3886

.preheader:                                       ; preds = %2
  br label %21, !dbg !3887

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #41, !dbg !3888
  %11 = call i64 @strtol(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 10) #41, !dbg !3889
  call void @llvm.dbg.value(metadata i64 %11, metadata !3865, metadata !DIExpression()), !dbg !3880
  %12 = load ptr, ptr %3, align 8, !dbg !3890, !tbaa !956
  %13 = load i8, ptr %12, align 1, !dbg !3892, !tbaa !1036
  %14 = icmp ne i8 %13, 0, !dbg !3892
  %15 = icmp sgt i64 %11, 64
  %16 = select i1 %14, i1 true, i1 %15, !dbg !3893
  %17 = trunc i64 %11 to i32, !dbg !3893
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41, !dbg !3894
  br i1 %16, label %73, label %74

18:                                               ; preds = %21
  %19 = add nuw nsw i64 %22, 1, !dbg !3895
  call void @llvm.dbg.value(metadata i64 %19, metadata !3866, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i64 %19, metadata !3866, metadata !DIExpression()), !dbg !3897
  %20 = icmp eq i64 %19, 35, !dbg !3898
  br i1 %20, label %29, label %21, !dbg !3887, !llvm.loop !3899

21:                                               ; preds = %.preheader, %18
  %22 = phi i64 [ %19, %18 ], [ 0, %.preheader ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !3866, metadata !DIExpression()), !dbg !3897
  %23 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %22, i32 1, !dbg !3901
  call void @llvm.dbg.value(metadata ptr %23, metadata !3903, metadata !DIExpression()), !dbg !3907
  call void @llvm.dbg.value(metadata ptr %0, metadata !3906, metadata !DIExpression()), !dbg !3907
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %0) #42, !dbg !3909
  %25 = icmp eq i32 %24, 0, !dbg !3910
  call void @llvm.dbg.value(metadata i64 %22, metadata !3866, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3897
  br i1 %25, label %26, label %18, !dbg !3911

26:                                               ; preds = %21
  %.lcssa = phi i64 [ %22, %21 ]
  %27 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %.lcssa, !dbg !3912
  %28 = load i32, ptr %27, align 4, !dbg !3913, !tbaa !3914
  br label %74

29:                                               ; preds = %18
  %30 = tail call i32 @__libc_current_sigrtmin() #41, !dbg !3916
  call void @llvm.dbg.value(metadata i32 %30, metadata !3869, metadata !DIExpression()), !dbg !3917
  %31 = tail call i32 @__libc_current_sigrtmax() #41, !dbg !3918
  call void @llvm.dbg.value(metadata i32 %31, metadata !3871, metadata !DIExpression()), !dbg !3917
  %32 = icmp sgt i32 %30, 0, !dbg !3919
  br i1 %32, label %33, label %52, !dbg !3920

33:                                               ; preds = %29
  %34 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.101, i64 noundef 5) #42, !dbg !3921
  %35 = icmp eq i32 %34, 0, !dbg !3922
  br i1 %35, label %36, label %52, !dbg !3923

36:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #41, !dbg !3924
  %37 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !3925
  %38 = call i64 @strtol(ptr noundef nonnull %37, ptr noundef nonnull %4, i32 noundef 10) #41, !dbg !3926
  call void @llvm.dbg.value(metadata i64 %38, metadata !3875, metadata !DIExpression()), !dbg !3882
  %39 = load ptr, ptr %4, align 8, !dbg !3927, !tbaa !956
  %40 = load i8, ptr %39, align 1, !dbg !3929, !tbaa !1036
  %41 = icmp eq i8 %40, 0, !dbg !3929
  %42 = icmp sgt i64 %38, -1
  %43 = select i1 %41, i1 %42, i1 false, !dbg !3930
  br i1 %43, label %44, label %48, !dbg !3930

44:                                               ; preds = %36
  %45 = sub nsw i32 %31, %30, !dbg !3931
  %46 = sext i32 %45 to i64, !dbg !3932
  %47 = icmp sgt i64 %38, %46, !dbg !3933
  br i1 %47, label %48, label %49, !dbg !3934

48:                                               ; preds = %44, %36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !3935
  br label %73

49:                                               ; preds = %44
  %50 = trunc i64 %38 to i32, !dbg !3936
  %51 = add nuw i32 %30, %50, !dbg !3936
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !3935
  br label %74

52:                                               ; preds = %33, %29
  %53 = icmp sgt i32 %31, 0, !dbg !3937
  br i1 %53, label %54, label %73, !dbg !3938

54:                                               ; preds = %52
  %55 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.1.102, i64 noundef 5) #42, !dbg !3939
  %56 = icmp eq i32 %55, 0, !dbg !3940
  br i1 %56, label %57, label %73, !dbg !3941

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #41, !dbg !3942
  %58 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !3943
  %59 = call i64 @strtol(ptr noundef nonnull %58, ptr noundef nonnull %5, i32 noundef 10) #41, !dbg !3944
  call void @llvm.dbg.value(metadata i64 %59, metadata !3879, metadata !DIExpression()), !dbg !3883
  %60 = load ptr, ptr %5, align 8, !dbg !3945, !tbaa !956
  %61 = load i8, ptr %60, align 1, !dbg !3947, !tbaa !1036
  %62 = icmp eq i8 %61, 0, !dbg !3947
  br i1 %62, label %63, label %69, !dbg !3948

63:                                               ; preds = %57
  %64 = sub nsw i32 %30, %31, !dbg !3949
  %65 = sext i32 %64 to i64, !dbg !3950
  %66 = icmp sge i64 %59, %65, !dbg !3951
  %67 = icmp slt i64 %59, 1
  %68 = and i1 %66, %67, !dbg !3952
  br i1 %68, label %70, label %69, !dbg !3952

69:                                               ; preds = %63, %57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #41, !dbg !3953
  br label %73

70:                                               ; preds = %63
  %71 = trunc i64 %59 to i32, !dbg !3954
  %72 = add nsw i32 %31, %71, !dbg !3954
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #41, !dbg !3953
  br label %74

73:                                               ; preds = %69, %54, %52, %48, %10
  br label %74, !dbg !3955

74:                                               ; preds = %10, %26, %49, %70, %73
  %75 = phi i32 [ %17, %10 ], [ -1, %73 ], [ %28, %26 ], [ %51, %49 ], [ %72, %70 ], !dbg !3884
  store i32 %75, ptr %1, align 4, !dbg !3956, !tbaa !1027
  %76 = ashr i32 %75, 31, !dbg !3957
  ret i32 %76, !dbg !3958
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @sig2str(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3959 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3963, metadata !DIExpression()), !dbg !3972
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3964, metadata !DIExpression()), !dbg !3972
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3965, metadata !DIExpression()), !dbg !3973
  br label %6, !dbg !3974

3:                                                ; preds = %6
  %4 = add nuw nsw i64 %7, 1, !dbg !3975
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3965, metadata !DIExpression()), !dbg !3973
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3965, metadata !DIExpression()), !dbg !3973
  %5 = icmp eq i64 %4, 35, !dbg !3977
  br i1 %5, label %14, label %6, !dbg !3974, !llvm.loop !3978

6:                                                ; preds = %2, %3
  %7 = phi i64 [ 0, %2 ], [ %4, %3 ]
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3965, metadata !DIExpression()), !dbg !3973
  %8 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %7, !dbg !3980
  %9 = load i32, ptr %8, align 4, !dbg !3982, !tbaa !3914
  %10 = icmp eq i32 %9, %0, !dbg !3983
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3965, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3973
  br i1 %10, label %11, label %3, !dbg !3984

11:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ]
  %12 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %.lcssa, i32 1, !dbg !3985
  call void @llvm.dbg.value(metadata ptr %1, metadata !3987, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata ptr %12, metadata !3992, metadata !DIExpression()), !dbg !3993
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %12), !dbg !3995
  br label %32

14:                                               ; preds = %3
  %15 = tail call i32 @__libc_current_sigrtmin() #41, !dbg !3996
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !3967, metadata !DIExpression()), !dbg !3997
  %16 = tail call i32 @__libc_current_sigrtmax() #41, !dbg !3998
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !3969, metadata !DIExpression()), !dbg !3997
  %17 = icmp sgt i32 %15, %0, !dbg !3999
  %18 = icmp slt i32 %16, %0
  %19 = select i1 %17, i1 true, i1 %18, !dbg !4001
  br i1 %19, label %32, label %20, !dbg !4001

20:                                               ; preds = %14
  %21 = sub nsw i32 %16, %15, !dbg !4002
  %22 = sdiv i32 %21, 2, !dbg !4004
  %23 = add nsw i32 %22, %15, !dbg !4005
  %24 = icmp slt i32 %23, %0, !dbg !4006
  call void @llvm.dbg.value(metadata ptr %1, metadata !3987, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata ptr %1, metadata !3987, metadata !DIExpression()), !dbg !4010
  %25 = select i1 %24, ptr @.str.1.102, ptr @.str.101
  %26 = select i1 %24, i32 %16, i32 %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) %25, i64 6, i1 false), !dbg !4013
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !3970, metadata !DIExpression()), !dbg !3997
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %0, i32 %26), metadata !3971, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3997
  %27 = icmp eq i32 %26, %0, !dbg !4015
  br i1 %27, label %32, label %28, !dbg !4017

28:                                               ; preds = %20
  %29 = sub nsw i32 %0, %26, !dbg !4018
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !3971, metadata !DIExpression()), !dbg !3997
  %30 = getelementptr inbounds i8, ptr %1, i64 5, !dbg !4019
  %31 = tail call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %30, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.2.105, i32 noundef %29) #41, !dbg !4019
  br label %32, !dbg !4019

32:                                               ; preds = %11, %14, %28, %20
  %33 = phi i32 [ 0, %11 ], [ -1, %14 ], [ 0, %28 ], [ 0, %20 ], !dbg !3972
  ret i32 %33, !dbg !4020
}

; Function Attrs: nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias nocapture readonly) #29

; Function Attrs: nofree
declare !dbg !4021 i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4024 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4063, metadata !DIExpression()), !dbg !4069
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4064, metadata !DIExpression()), !dbg !4069
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4065, metadata !DIExpression()), !dbg !4069
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4066, metadata !DIExpression()), !dbg !4069
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4067, metadata !DIExpression()), !dbg !4069
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4068, metadata !DIExpression()), !dbg !4069
  %7 = icmp eq ptr %1, null, !dbg !4070
  br i1 %7, label %10, label %8, !dbg !4072

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.106, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #41, !dbg !4073
  br label %12, !dbg !4073

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.107, ptr noundef %2, ptr noundef %3) #41, !dbg !4074
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.3.109, i32 noundef 5) #41, !dbg !4075
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #41, !dbg !4075
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.110, ptr noundef %0), !dbg !4076
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.5.111, i32 noundef 5) #41, !dbg !4077
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.112) #41, !dbg !4077
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.110, ptr noundef %0), !dbg !4078
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
  ], !dbg !4079

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.7.113, i32 noundef 5) #41, !dbg !4080
  %21 = load ptr, ptr %4, align 8, !dbg !4080, !tbaa !956
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #41, !dbg !4080
  br label %147, !dbg !4082

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.8.114, i32 noundef 5) #41, !dbg !4083
  %25 = load ptr, ptr %4, align 8, !dbg !4083, !tbaa !956
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4083
  %27 = load ptr, ptr %26, align 8, !dbg !4083, !tbaa !956
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #41, !dbg !4083
  br label %147, !dbg !4084

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.9.115, i32 noundef 5) #41, !dbg !4085
  %31 = load ptr, ptr %4, align 8, !dbg !4085, !tbaa !956
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4085
  %33 = load ptr, ptr %32, align 8, !dbg !4085, !tbaa !956
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4085
  %35 = load ptr, ptr %34, align 8, !dbg !4085, !tbaa !956
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #41, !dbg !4085
  br label %147, !dbg !4086

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.10.116, i32 noundef 5) #41, !dbg !4087
  %39 = load ptr, ptr %4, align 8, !dbg !4087, !tbaa !956
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4087
  %41 = load ptr, ptr %40, align 8, !dbg !4087, !tbaa !956
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4087
  %43 = load ptr, ptr %42, align 8, !dbg !4087, !tbaa !956
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4087
  %45 = load ptr, ptr %44, align 8, !dbg !4087, !tbaa !956
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #41, !dbg !4087
  br label %147, !dbg !4088

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.11.117, i32 noundef 5) #41, !dbg !4089
  %49 = load ptr, ptr %4, align 8, !dbg !4089, !tbaa !956
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4089
  %51 = load ptr, ptr %50, align 8, !dbg !4089, !tbaa !956
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4089
  %53 = load ptr, ptr %52, align 8, !dbg !4089, !tbaa !956
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4089
  %55 = load ptr, ptr %54, align 8, !dbg !4089, !tbaa !956
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4089
  %57 = load ptr, ptr %56, align 8, !dbg !4089, !tbaa !956
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #41, !dbg !4089
  br label %147, !dbg !4090

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.12.118, i32 noundef 5) #41, !dbg !4091
  %61 = load ptr, ptr %4, align 8, !dbg !4091, !tbaa !956
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4091
  %63 = load ptr, ptr %62, align 8, !dbg !4091, !tbaa !956
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4091
  %65 = load ptr, ptr %64, align 8, !dbg !4091, !tbaa !956
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4091
  %67 = load ptr, ptr %66, align 8, !dbg !4091, !tbaa !956
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4091
  %69 = load ptr, ptr %68, align 8, !dbg !4091, !tbaa !956
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4091
  %71 = load ptr, ptr %70, align 8, !dbg !4091, !tbaa !956
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #41, !dbg !4091
  br label %147, !dbg !4092

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.13.119, i32 noundef 5) #41, !dbg !4093
  %75 = load ptr, ptr %4, align 8, !dbg !4093, !tbaa !956
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4093
  %77 = load ptr, ptr %76, align 8, !dbg !4093, !tbaa !956
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4093
  %79 = load ptr, ptr %78, align 8, !dbg !4093, !tbaa !956
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4093
  %81 = load ptr, ptr %80, align 8, !dbg !4093, !tbaa !956
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4093
  %83 = load ptr, ptr %82, align 8, !dbg !4093, !tbaa !956
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4093
  %85 = load ptr, ptr %84, align 8, !dbg !4093, !tbaa !956
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4093
  %87 = load ptr, ptr %86, align 8, !dbg !4093, !tbaa !956
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #41, !dbg !4093
  br label %147, !dbg !4094

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.14.120, i32 noundef 5) #41, !dbg !4095
  %91 = load ptr, ptr %4, align 8, !dbg !4095, !tbaa !956
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4095
  %93 = load ptr, ptr %92, align 8, !dbg !4095, !tbaa !956
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4095
  %95 = load ptr, ptr %94, align 8, !dbg !4095, !tbaa !956
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4095
  %97 = load ptr, ptr %96, align 8, !dbg !4095, !tbaa !956
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4095
  %99 = load ptr, ptr %98, align 8, !dbg !4095, !tbaa !956
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4095
  %101 = load ptr, ptr %100, align 8, !dbg !4095, !tbaa !956
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4095
  %103 = load ptr, ptr %102, align 8, !dbg !4095, !tbaa !956
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4095
  %105 = load ptr, ptr %104, align 8, !dbg !4095, !tbaa !956
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #41, !dbg !4095
  br label %147, !dbg !4096

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.15.121, i32 noundef 5) #41, !dbg !4097
  %109 = load ptr, ptr %4, align 8, !dbg !4097, !tbaa !956
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4097
  %111 = load ptr, ptr %110, align 8, !dbg !4097, !tbaa !956
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4097
  %113 = load ptr, ptr %112, align 8, !dbg !4097, !tbaa !956
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4097
  %115 = load ptr, ptr %114, align 8, !dbg !4097, !tbaa !956
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4097
  %117 = load ptr, ptr %116, align 8, !dbg !4097, !tbaa !956
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4097
  %119 = load ptr, ptr %118, align 8, !dbg !4097, !tbaa !956
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4097
  %121 = load ptr, ptr %120, align 8, !dbg !4097, !tbaa !956
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4097
  %123 = load ptr, ptr %122, align 8, !dbg !4097, !tbaa !956
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4097
  %125 = load ptr, ptr %124, align 8, !dbg !4097, !tbaa !956
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #41, !dbg !4097
  br label %147, !dbg !4098

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.16.122, i32 noundef 5) #41, !dbg !4099
  %129 = load ptr, ptr %4, align 8, !dbg !4099, !tbaa !956
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4099
  %131 = load ptr, ptr %130, align 8, !dbg !4099, !tbaa !956
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4099
  %133 = load ptr, ptr %132, align 8, !dbg !4099, !tbaa !956
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4099
  %135 = load ptr, ptr %134, align 8, !dbg !4099, !tbaa !956
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4099
  %137 = load ptr, ptr %136, align 8, !dbg !4099, !tbaa !956
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4099
  %139 = load ptr, ptr %138, align 8, !dbg !4099, !tbaa !956
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4099
  %141 = load ptr, ptr %140, align 8, !dbg !4099, !tbaa !956
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4099
  %143 = load ptr, ptr %142, align 8, !dbg !4099, !tbaa !956
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4099
  %145 = load ptr, ptr %144, align 8, !dbg !4099, !tbaa !956
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #41, !dbg !4099
  br label %147, !dbg !4100

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4101
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4102 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4106, metadata !DIExpression()), !dbg !4112
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4107, metadata !DIExpression()), !dbg !4112
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4108, metadata !DIExpression()), !dbg !4112
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4109, metadata !DIExpression()), !dbg !4112
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4110, metadata !DIExpression()), !dbg !4112
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4111, metadata !DIExpression()), !dbg !4112
  br label %6, !dbg !4113

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4115
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4111, metadata !DIExpression()), !dbg !4112
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4116
  %9 = load ptr, ptr %8, align 8, !dbg !4116, !tbaa !956
  %10 = icmp eq ptr %9, null, !dbg !4118
  %11 = add i64 %7, 1, !dbg !4119
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4111, metadata !DIExpression()), !dbg !4112
  br i1 %10, label %12, label %6, !dbg !4118, !llvm.loop !4120

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !4115
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !4122
  ret void, !dbg !4123
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4124 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !4146
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4144, metadata !DIExpression(), metadata !4146, metadata ptr %6, metadata !DIExpression()), !dbg !4147
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4138, metadata !DIExpression()), !dbg !4147
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4139, metadata !DIExpression()), !dbg !4147
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4140, metadata !DIExpression()), !dbg !4147
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4141, metadata !DIExpression()), !dbg !4147
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4142, metadata !DIExpression(DW_OP_deref)), !dbg !4147
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #41, !dbg !4148
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4143, metadata !DIExpression()), !dbg !4147
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4143, metadata !DIExpression()), !dbg !4147
  %10 = icmp sgt i32 %9, -1, !dbg !4149
  br i1 %10, label %18, label %11, !dbg !4149

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4149
  store i32 %12, ptr %7, align 8, !dbg !4149
  %13 = icmp ult i32 %9, -7, !dbg !4149
  br i1 %13, label %14, label %18, !dbg !4149

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4149
  %16 = sext i32 %9 to i64, !dbg !4149
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4149
  br label %22, !dbg !4149

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4149
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4149
  store ptr %21, ptr %4, align 8, !dbg !4149
  br label %22, !dbg !4149

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4149
  %25 = load ptr, ptr %24, align 8, !dbg !4149
  store ptr %25, ptr %6, align 8, !dbg !4152, !tbaa !956
  %26 = icmp eq ptr %25, null, !dbg !4153
  br i1 %26, label %197, label %27, !dbg !4154

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4143, metadata !DIExpression()), !dbg !4147
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4143, metadata !DIExpression()), !dbg !4147
  %28 = icmp sgt i32 %23, -1, !dbg !4149
  br i1 %28, label %36, label %29, !dbg !4149

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4149
  store i32 %30, ptr %7, align 8, !dbg !4149
  %31 = icmp ult i32 %23, -7, !dbg !4149
  br i1 %31, label %32, label %36, !dbg !4149

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4149
  %34 = sext i32 %23 to i64, !dbg !4149
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4149
  br label %40, !dbg !4149

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4149
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4149
  store ptr %39, ptr %4, align 8, !dbg !4149
  br label %40, !dbg !4149

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4149
  %43 = load ptr, ptr %42, align 8, !dbg !4149
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4155
  store ptr %43, ptr %44, align 8, !dbg !4152, !tbaa !956
  %45 = icmp eq ptr %43, null, !dbg !4153
  br i1 %45, label %197, label %46, !dbg !4154

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4143, metadata !DIExpression()), !dbg !4147
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4143, metadata !DIExpression()), !dbg !4147
  %47 = icmp sgt i32 %41, -1, !dbg !4149
  br i1 %47, label %55, label %48, !dbg !4149

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4149
  store i32 %49, ptr %7, align 8, !dbg !4149
  %50 = icmp ult i32 %41, -7, !dbg !4149
  br i1 %50, label %51, label %55, !dbg !4149

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4149
  %53 = sext i32 %41 to i64, !dbg !4149
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4149
  br label %59, !dbg !4149

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4149
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4149
  store ptr %58, ptr %4, align 8, !dbg !4149
  br label %59, !dbg !4149

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4149
  %62 = load ptr, ptr %61, align 8, !dbg !4149
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4155
  store ptr %62, ptr %63, align 8, !dbg !4152, !tbaa !956
  %64 = icmp eq ptr %62, null, !dbg !4153
  br i1 %64, label %197, label %65, !dbg !4154

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4143, metadata !DIExpression()), !dbg !4147
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4143, metadata !DIExpression()), !dbg !4147
  %66 = icmp sgt i32 %60, -1, !dbg !4149
  br i1 %66, label %74, label %67, !dbg !4149

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4149
  store i32 %68, ptr %7, align 8, !dbg !4149
  %69 = icmp ult i32 %60, -7, !dbg !4149
  br i1 %69, label %70, label %74, !dbg !4149

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4149
  %72 = sext i32 %60 to i64, !dbg !4149
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4149
  br label %78, !dbg !4149

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4149
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4149
  store ptr %77, ptr %4, align 8, !dbg !4149
  br label %78, !dbg !4149

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4149
  %81 = load ptr, ptr %80, align 8, !dbg !4149
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4155
  store ptr %81, ptr %82, align 8, !dbg !4152, !tbaa !956
  %83 = icmp eq ptr %81, null, !dbg !4153
  br i1 %83, label %197, label %84, !dbg !4154

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4143, metadata !DIExpression()), !dbg !4147
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4143, metadata !DIExpression()), !dbg !4147
  %85 = icmp sgt i32 %79, -1, !dbg !4149
  br i1 %85, label %93, label %86, !dbg !4149

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4149
  store i32 %87, ptr %7, align 8, !dbg !4149
  %88 = icmp ult i32 %79, -7, !dbg !4149
  br i1 %88, label %89, label %93, !dbg !4149

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4149
  %91 = sext i32 %79 to i64, !dbg !4149
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4149
  br label %97, !dbg !4149

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4149
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4149
  store ptr %96, ptr %4, align 8, !dbg !4149
  br label %97, !dbg !4149

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4149
  %100 = load ptr, ptr %99, align 8, !dbg !4149
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4155
  store ptr %100, ptr %101, align 8, !dbg !4152, !tbaa !956
  %102 = icmp eq ptr %100, null, !dbg !4153
  br i1 %102, label %197, label %103, !dbg !4154

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4143, metadata !DIExpression()), !dbg !4147
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4143, metadata !DIExpression()), !dbg !4147
  %104 = icmp sgt i32 %98, -1, !dbg !4149
  br i1 %104, label %112, label %105, !dbg !4149

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4149
  store i32 %106, ptr %7, align 8, !dbg !4149
  %107 = icmp ult i32 %98, -7, !dbg !4149
  br i1 %107, label %108, label %112, !dbg !4149

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4149
  %110 = sext i32 %98 to i64, !dbg !4149
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4149
  br label %116, !dbg !4149

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4149
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4149
  store ptr %115, ptr %4, align 8, !dbg !4149
  br label %116, !dbg !4149

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4149
  %119 = load ptr, ptr %118, align 8, !dbg !4149
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4155
  store ptr %119, ptr %120, align 8, !dbg !4152, !tbaa !956
  %121 = icmp eq ptr %119, null, !dbg !4153
  br i1 %121, label %197, label %122, !dbg !4154

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4143, metadata !DIExpression()), !dbg !4147
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4143, metadata !DIExpression()), !dbg !4147
  %123 = icmp sgt i32 %117, -1, !dbg !4149
  br i1 %123, label %131, label %124, !dbg !4149

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4149
  store i32 %125, ptr %7, align 8, !dbg !4149
  %126 = icmp ult i32 %117, -7, !dbg !4149
  br i1 %126, label %127, label %131, !dbg !4149

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4149
  %129 = sext i32 %117 to i64, !dbg !4149
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4149
  br label %135, !dbg !4149

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4149
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4149
  store ptr %134, ptr %4, align 8, !dbg !4149
  br label %135, !dbg !4149

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4149
  %138 = load ptr, ptr %137, align 8, !dbg !4149
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4155
  store ptr %138, ptr %139, align 8, !dbg !4152, !tbaa !956
  %140 = icmp eq ptr %138, null, !dbg !4153
  br i1 %140, label %197, label %141, !dbg !4154

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4143, metadata !DIExpression()), !dbg !4147
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4143, metadata !DIExpression()), !dbg !4147
  %142 = icmp sgt i32 %136, -1, !dbg !4149
  br i1 %142, label %150, label %143, !dbg !4149

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4149
  store i32 %144, ptr %7, align 8, !dbg !4149
  %145 = icmp ult i32 %136, -7, !dbg !4149
  br i1 %145, label %146, label %150, !dbg !4149

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4149
  %148 = sext i32 %136 to i64, !dbg !4149
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4149
  br label %154, !dbg !4149

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4149
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4149
  store ptr %153, ptr %4, align 8, !dbg !4149
  br label %154, !dbg !4149

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4149
  %157 = load ptr, ptr %156, align 8, !dbg !4149
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4155
  store ptr %157, ptr %158, align 8, !dbg !4152, !tbaa !956
  %159 = icmp eq ptr %157, null, !dbg !4153
  br i1 %159, label %197, label %160, !dbg !4154

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4143, metadata !DIExpression()), !dbg !4147
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4143, metadata !DIExpression()), !dbg !4147
  %161 = icmp sgt i32 %155, -1, !dbg !4149
  br i1 %161, label %169, label %162, !dbg !4149

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4149
  store i32 %163, ptr %7, align 8, !dbg !4149
  %164 = icmp ult i32 %155, -7, !dbg !4149
  br i1 %164, label %165, label %169, !dbg !4149

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4149
  %167 = sext i32 %155 to i64, !dbg !4149
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4149
  br label %173, !dbg !4149

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4149
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4149
  store ptr %172, ptr %4, align 8, !dbg !4149
  br label %173, !dbg !4149

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4149
  %176 = load ptr, ptr %175, align 8, !dbg !4149
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4155
  store ptr %176, ptr %177, align 8, !dbg !4152, !tbaa !956
  %178 = icmp eq ptr %176, null, !dbg !4153
  br i1 %178, label %197, label %179, !dbg !4154

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4143, metadata !DIExpression()), !dbg !4147
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4143, metadata !DIExpression()), !dbg !4147
  %180 = icmp sgt i32 %174, -1, !dbg !4149
  br i1 %180, label %188, label %181, !dbg !4149

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4149
  store i32 %182, ptr %7, align 8, !dbg !4149
  %183 = icmp ult i32 %174, -7, !dbg !4149
  br i1 %183, label %184, label %188, !dbg !4149

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4149
  %186 = sext i32 %174 to i64, !dbg !4149
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4149
  br label %191, !dbg !4149

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4149
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4149
  store ptr %190, ptr %4, align 8, !dbg !4149
  br label %191, !dbg !4149

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4149
  %193 = load ptr, ptr %192, align 8, !dbg !4149
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4155
  store ptr %193, ptr %194, align 8, !dbg !4152, !tbaa !956
  %195 = icmp eq ptr %193, null, !dbg !4153
  %196 = select i1 %195, i64 9, i64 10, !dbg !4154
  br label %197, !dbg !4154

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4156
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4157
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #41, !dbg !4158
  ret void, !dbg !4158
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4159 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !4168
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4167, metadata !DIExpression(), metadata !4168, metadata ptr %5, metadata !DIExpression()), !dbg !4169
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4163, metadata !DIExpression()), !dbg !4169
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4164, metadata !DIExpression()), !dbg !4169
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4165, metadata !DIExpression()), !dbg !4169
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4166, metadata !DIExpression()), !dbg !4169
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41, !dbg !4170
  call void @llvm.va_start(ptr nonnull %5), !dbg !4171
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #41, !dbg !4172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4172, !tbaa.struct !2243
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4172
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #41, !dbg !4172
  call void @llvm.va_end(ptr nonnull %5), !dbg !4173
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41, !dbg !4174
  ret void, !dbg !4174
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4175 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4176, !tbaa !956
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.110, ptr noundef %1), !dbg !4176
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.17.127, i32 noundef 5) #41, !dbg !4177
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.128) #41, !dbg !4177
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.19.129, i32 noundef 5) #41, !dbg !4178
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.130, ptr noundef nonnull @.str.21.131) #41, !dbg !4178
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.22.132, i32 noundef 5) #41, !dbg !4179
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.133) #41, !dbg !4179
  ret void, !dbg !4180
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4181 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4186, metadata !DIExpression()), !dbg !4189
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4187, metadata !DIExpression()), !dbg !4189
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4188, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata ptr %0, metadata !4190, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.value(metadata i64 %1, metadata !4193, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.value(metadata i64 %2, metadata !4194, metadata !DIExpression()), !dbg !4195
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4197
  call void @llvm.dbg.value(metadata ptr %4, metadata !4198, metadata !DIExpression()), !dbg !4203
  %5 = icmp eq ptr %4, null, !dbg !4205
  br i1 %5, label %6, label %7, !dbg !4207

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4208
  unreachable, !dbg !4208

7:                                                ; preds = %3
  ret ptr %4, !dbg !4209
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4191 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4190, metadata !DIExpression()), !dbg !4210
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4193, metadata !DIExpression()), !dbg !4210
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4194, metadata !DIExpression()), !dbg !4210
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4211
  call void @llvm.dbg.value(metadata ptr %4, metadata !4198, metadata !DIExpression()), !dbg !4212
  %5 = icmp eq ptr %4, null, !dbg !4214
  br i1 %5, label %6, label %7, !dbg !4215

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4216
  unreachable, !dbg !4216

7:                                                ; preds = %3
  ret ptr %4, !dbg !4217
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4218 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4222, metadata !DIExpression()), !dbg !4223
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4224
  call void @llvm.dbg.value(metadata ptr %2, metadata !4198, metadata !DIExpression()), !dbg !4225
  %3 = icmp eq ptr %2, null, !dbg !4227
  br i1 %3, label %4, label %5, !dbg !4228

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4229
  unreachable, !dbg !4229

5:                                                ; preds = %1
  ret ptr %2, !dbg !4230
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4231 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4232 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4236, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i64 %0, metadata !4238, metadata !DIExpression()), !dbg !4242
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4244
  call void @llvm.dbg.value(metadata ptr %2, metadata !4198, metadata !DIExpression()), !dbg !4245
  %3 = icmp eq ptr %2, null, !dbg !4247
  br i1 %3, label %4, label %5, !dbg !4248

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4249
  unreachable, !dbg !4249

5:                                                ; preds = %1
  ret ptr %2, !dbg !4250
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4251 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4255, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i64 %0, metadata !4222, metadata !DIExpression()), !dbg !4257
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4259
  call void @llvm.dbg.value(metadata ptr %2, metadata !4198, metadata !DIExpression()), !dbg !4260
  %3 = icmp eq ptr %2, null, !dbg !4262
  br i1 %3, label %4, label %5, !dbg !4263

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4264
  unreachable, !dbg !4264

5:                                                ; preds = %1
  ret ptr %2, !dbg !4265
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4266 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4270, metadata !DIExpression()), !dbg !4272
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4271, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata ptr %0, metadata !4273, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata i64 %1, metadata !4277, metadata !DIExpression()), !dbg !4278
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4280
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !4281
  call void @llvm.dbg.value(metadata ptr %4, metadata !4198, metadata !DIExpression()), !dbg !4282
  %5 = icmp eq ptr %4, null, !dbg !4284
  br i1 %5, label %6, label %7, !dbg !4285

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4286
  unreachable, !dbg !4286

7:                                                ; preds = %2
  ret ptr %4, !dbg !4287
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4288 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4289 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4293, metadata !DIExpression()), !dbg !4295
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4294, metadata !DIExpression()), !dbg !4295
  call void @llvm.dbg.value(metadata ptr %0, metadata !4296, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i64 %1, metadata !4299, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata ptr %0, metadata !4273, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i64 %1, metadata !4277, metadata !DIExpression()), !dbg !4302
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4304
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !4305
  call void @llvm.dbg.value(metadata ptr %4, metadata !4198, metadata !DIExpression()), !dbg !4306
  %5 = icmp eq ptr %4, null, !dbg !4308
  br i1 %5, label %6, label %7, !dbg !4309

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4310
  unreachable, !dbg !4310

7:                                                ; preds = %2
  ret ptr %4, !dbg !4311
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4312 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4316, metadata !DIExpression()), !dbg !4319
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4317, metadata !DIExpression()), !dbg !4319
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4318, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata ptr %0, metadata !4320, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata i64 %1, metadata !4323, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata i64 %2, metadata !4324, metadata !DIExpression()), !dbg !4325
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4327
  call void @llvm.dbg.value(metadata ptr %4, metadata !4198, metadata !DIExpression()), !dbg !4328
  %5 = icmp eq ptr %4, null, !dbg !4330
  br i1 %5, label %6, label %7, !dbg !4331

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4332
  unreachable, !dbg !4332

7:                                                ; preds = %3
  ret ptr %4, !dbg !4333
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4334 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4338, metadata !DIExpression()), !dbg !4340
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4339, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata ptr null, metadata !4190, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i64 %0, metadata !4193, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i64 %1, metadata !4194, metadata !DIExpression()), !dbg !4341
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4343
  call void @llvm.dbg.value(metadata ptr %3, metadata !4198, metadata !DIExpression()), !dbg !4344
  %4 = icmp eq ptr %3, null, !dbg !4346
  br i1 %4, label %5, label %6, !dbg !4347

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4348
  unreachable, !dbg !4348

6:                                                ; preds = %2
  ret ptr %3, !dbg !4349
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4350 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4354, metadata !DIExpression()), !dbg !4356
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4355, metadata !DIExpression()), !dbg !4356
  call void @llvm.dbg.value(metadata ptr null, metadata !4316, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.value(metadata i64 %0, metadata !4317, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.value(metadata i64 %1, metadata !4318, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.value(metadata ptr null, metadata !4320, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata i64 %0, metadata !4323, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata i64 %1, metadata !4324, metadata !DIExpression()), !dbg !4359
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4361
  call void @llvm.dbg.value(metadata ptr %3, metadata !4198, metadata !DIExpression()), !dbg !4362
  %4 = icmp eq ptr %3, null, !dbg !4364
  br i1 %4, label %5, label %6, !dbg !4365

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4366
  unreachable, !dbg !4366

6:                                                ; preds = %2
  ret ptr %3, !dbg !4367
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4368 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4372, metadata !DIExpression()), !dbg !4374
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4373, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata ptr %0, metadata !894, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata ptr %1, metadata !895, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata i64 1, metadata !896, metadata !DIExpression()), !dbg !4375
  %3 = load i64, ptr %1, align 8, !dbg !4377, !tbaa !1881
  call void @llvm.dbg.value(metadata i64 %3, metadata !897, metadata !DIExpression()), !dbg !4375
  %4 = icmp eq ptr %0, null, !dbg !4378
  br i1 %4, label %5, label %8, !dbg !4380

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4381
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4384
  br label %15, !dbg !4384

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4385
  %10 = add nuw i64 %9, 1, !dbg !4385
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4385
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4385
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4385
  call void @llvm.dbg.value(metadata i64 %13, metadata !897, metadata !DIExpression()), !dbg !4375
  br i1 %12, label %14, label %15, !dbg !4388

14:                                               ; preds = %8
  tail call void @xalloc_die() #43, !dbg !4389
  unreachable, !dbg !4389

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4375
  call void @llvm.dbg.value(metadata i64 %16, metadata !897, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata ptr %0, metadata !4190, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata i64 %16, metadata !4193, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata i64 1, metadata !4194, metadata !DIExpression()), !dbg !4390
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #41, !dbg !4392
  call void @llvm.dbg.value(metadata ptr %17, metadata !4198, metadata !DIExpression()), !dbg !4393
  %18 = icmp eq ptr %17, null, !dbg !4395
  br i1 %18, label %19, label %20, !dbg !4396

19:                                               ; preds = %15
  tail call void @xalloc_die() #43, !dbg !4397
  unreachable, !dbg !4397

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !894, metadata !DIExpression()), !dbg !4375
  store i64 %16, ptr %1, align 8, !dbg !4398, !tbaa !1881
  ret ptr %17, !dbg !4399
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !889 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !894, metadata !DIExpression()), !dbg !4400
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !895, metadata !DIExpression()), !dbg !4400
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !896, metadata !DIExpression()), !dbg !4400
  %4 = load i64, ptr %1, align 8, !dbg !4401, !tbaa !1881
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !897, metadata !DIExpression()), !dbg !4400
  %5 = icmp eq ptr %0, null, !dbg !4402
  br i1 %5, label %6, label %13, !dbg !4403

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4404
  br i1 %7, label %8, label %20, !dbg !4405

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4406
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !897, metadata !DIExpression()), !dbg !4400
  %10 = icmp ugt i64 %2, 128, !dbg !4408
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4409
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !897, metadata !DIExpression()), !dbg !4400
  br label %20, !dbg !4410

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4411
  %15 = add nuw i64 %14, 1, !dbg !4411
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4411
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4411
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4411
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !897, metadata !DIExpression()), !dbg !4400
  br i1 %17, label %19, label %20, !dbg !4412

19:                                               ; preds = %13
  tail call void @xalloc_die() #43, !dbg !4413
  unreachable, !dbg !4413

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4400
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !897, metadata !DIExpression()), !dbg !4400
  call void @llvm.dbg.value(metadata ptr %0, metadata !4190, metadata !DIExpression()), !dbg !4414
  call void @llvm.dbg.value(metadata i64 %21, metadata !4193, metadata !DIExpression()), !dbg !4414
  call void @llvm.dbg.value(metadata i64 %2, metadata !4194, metadata !DIExpression()), !dbg !4414
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #41, !dbg !4416
  call void @llvm.dbg.value(metadata ptr %22, metadata !4198, metadata !DIExpression()), !dbg !4417
  %23 = icmp eq ptr %22, null, !dbg !4419
  br i1 %23, label %24, label %25, !dbg !4420

24:                                               ; preds = %20
  tail call void @xalloc_die() #43, !dbg !4421
  unreachable, !dbg !4421

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !894, metadata !DIExpression()), !dbg !4400
  store i64 %21, ptr %1, align 8, !dbg !4422, !tbaa !1881
  ret ptr %22, !dbg !4423
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !901 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !910, metadata !DIExpression()), !dbg !4424
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !911, metadata !DIExpression()), !dbg !4424
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !912, metadata !DIExpression()), !dbg !4424
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !913, metadata !DIExpression()), !dbg !4424
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !914, metadata !DIExpression()), !dbg !4424
  %6 = load i64, ptr %1, align 8, !dbg !4425, !tbaa !1881
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !915, metadata !DIExpression()), !dbg !4424
  %7 = ashr i64 %6, 1, !dbg !4426
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4426
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4426
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4426
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !916, metadata !DIExpression()), !dbg !4424
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4428
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !916, metadata !DIExpression()), !dbg !4424
  %12 = icmp sgt i64 %3, -1, !dbg !4429
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4431
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4431
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !916, metadata !DIExpression()), !dbg !4424
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4432
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4432
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4432
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !917, metadata !DIExpression()), !dbg !4424
  %18 = icmp slt i64 %17, 128, !dbg !4432
  %19 = select i1 %18, i64 128, i64 0, !dbg !4432
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4432
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !918, metadata !DIExpression()), !dbg !4424
  %21 = icmp eq i64 %20, 0, !dbg !4433
  br i1 %21, label %28, label %22, !dbg !4435

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !4436
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !916, metadata !DIExpression()), !dbg !4424
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !4438
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !917, metadata !DIExpression()), !dbg !4424
  br label %28, !dbg !4439

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !4424
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !4424
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !917, metadata !DIExpression()), !dbg !4424
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !916, metadata !DIExpression()), !dbg !4424
  %31 = icmp eq ptr %0, null, !dbg !4440
  br i1 %31, label %32, label %33, !dbg !4442

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !4443, !tbaa !1881
  br label %33, !dbg !4444

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !4445
  %35 = icmp slt i64 %34, %2, !dbg !4447
  br i1 %35, label %36, label %48, !dbg !4448

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4449
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !4449
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !4449
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !916, metadata !DIExpression()), !dbg !4424
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !4450
  br i1 %42, label %47, label %43, !dbg !4450

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !4451
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !4451
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !4451
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !917, metadata !DIExpression()), !dbg !4424
  br i1 %45, label %47, label %48, !dbg !4452

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #43, !dbg !4453
  unreachable, !dbg !4453

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !4424
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !4424
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !917, metadata !DIExpression()), !dbg !4424
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !916, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata ptr %0, metadata !4270, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i64 %50, metadata !4271, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata ptr %0, metadata !4273, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.value(metadata i64 %50, metadata !4277, metadata !DIExpression()), !dbg !4456
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !4458
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #47, !dbg !4459
  call void @llvm.dbg.value(metadata ptr %52, metadata !4198, metadata !DIExpression()), !dbg !4460
  %53 = icmp eq ptr %52, null, !dbg !4462
  br i1 %53, label %54, label %55, !dbg !4463

54:                                               ; preds = %48
  tail call void @xalloc_die() #43, !dbg !4464
  unreachable, !dbg !4464

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !910, metadata !DIExpression()), !dbg !4424
  store i64 %49, ptr %1, align 8, !dbg !4465, !tbaa !1881
  ret ptr %52, !dbg !4466
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4467 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4469, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata i64 %0, metadata !4471, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.value(metadata i64 1, metadata !4474, metadata !DIExpression()), !dbg !4475
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4477
  call void @llvm.dbg.value(metadata ptr %2, metadata !4198, metadata !DIExpression()), !dbg !4478
  %3 = icmp eq ptr %2, null, !dbg !4480
  br i1 %3, label %4, label %5, !dbg !4481

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4482
  unreachable, !dbg !4482

5:                                                ; preds = %1
  ret ptr %2, !dbg !4483
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4484 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4472 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4471, metadata !DIExpression()), !dbg !4485
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4474, metadata !DIExpression()), !dbg !4485
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4486
  call void @llvm.dbg.value(metadata ptr %3, metadata !4198, metadata !DIExpression()), !dbg !4487
  %4 = icmp eq ptr %3, null, !dbg !4489
  br i1 %4, label %5, label %6, !dbg !4490

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4491
  unreachable, !dbg !4491

6:                                                ; preds = %2
  ret ptr %3, !dbg !4492
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4493 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4495, metadata !DIExpression()), !dbg !4496
  call void @llvm.dbg.value(metadata i64 %0, metadata !4497, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 1, metadata !4500, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %0, metadata !4503, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata i64 1, metadata !4506, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata i64 %0, metadata !4503, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata i64 1, metadata !4506, metadata !DIExpression()), !dbg !4507
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4509
  call void @llvm.dbg.value(metadata ptr %2, metadata !4198, metadata !DIExpression()), !dbg !4510
  %3 = icmp eq ptr %2, null, !dbg !4512
  br i1 %3, label %4, label %5, !dbg !4513

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4514
  unreachable, !dbg !4514

5:                                                ; preds = %1
  ret ptr %2, !dbg !4515
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4498 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4497, metadata !DIExpression()), !dbg !4516
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4500, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i64 %0, metadata !4503, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata i64 %1, metadata !4506, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata i64 %0, metadata !4503, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata i64 %1, metadata !4506, metadata !DIExpression()), !dbg !4517
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4519
  call void @llvm.dbg.value(metadata ptr %3, metadata !4198, metadata !DIExpression()), !dbg !4520
  %4 = icmp eq ptr %3, null, !dbg !4522
  br i1 %4, label %5, label %6, !dbg !4523

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4524
  unreachable, !dbg !4524

6:                                                ; preds = %2
  ret ptr %3, !dbg !4525
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4526 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4530, metadata !DIExpression()), !dbg !4532
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4531, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i64 %1, metadata !4222, metadata !DIExpression()), !dbg !4533
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4535
  call void @llvm.dbg.value(metadata ptr %3, metadata !4198, metadata !DIExpression()), !dbg !4536
  %4 = icmp eq ptr %3, null, !dbg !4538
  br i1 %4, label %5, label %6, !dbg !4539

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4540
  unreachable, !dbg !4540

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4541, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata ptr %0, metadata !4547, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i64 %1, metadata !4548, metadata !DIExpression()), !dbg !4549
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4551
  ret ptr %3, !dbg !4552
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4553 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4557, metadata !DIExpression()), !dbg !4559
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4558, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i64 %1, metadata !4236, metadata !DIExpression()), !dbg !4560
  call void @llvm.dbg.value(metadata i64 %1, metadata !4238, metadata !DIExpression()), !dbg !4562
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4564
  call void @llvm.dbg.value(metadata ptr %3, metadata !4198, metadata !DIExpression()), !dbg !4565
  %4 = icmp eq ptr %3, null, !dbg !4567
  br i1 %4, label %5, label %6, !dbg !4568

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4569
  unreachable, !dbg !4569

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4541, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata ptr %0, metadata !4547, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i64 %1, metadata !4548, metadata !DIExpression()), !dbg !4570
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4572
  ret ptr %3, !dbg !4573
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4574 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4578, metadata !DIExpression()), !dbg !4581
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4579, metadata !DIExpression()), !dbg !4581
  %3 = add nsw i64 %1, 1, !dbg !4582
  call void @llvm.dbg.value(metadata i64 %3, metadata !4236, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.value(metadata i64 %3, metadata !4238, metadata !DIExpression()), !dbg !4585
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4587
  call void @llvm.dbg.value(metadata ptr %4, metadata !4198, metadata !DIExpression()), !dbg !4588
  %5 = icmp eq ptr %4, null, !dbg !4590
  br i1 %5, label %6, label %7, !dbg !4591

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4592
  unreachable, !dbg !4592

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4580, metadata !DIExpression()), !dbg !4581
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4593
  store i8 0, ptr %8, align 1, !dbg !4594, !tbaa !1036
  call void @llvm.dbg.value(metadata ptr %4, metadata !4541, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata ptr %0, metadata !4547, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata i64 %1, metadata !4548, metadata !DIExpression()), !dbg !4595
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4597
  ret ptr %4, !dbg !4598
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4599 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4601, metadata !DIExpression()), !dbg !4602
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #42, !dbg !4603
  %3 = add i64 %2, 1, !dbg !4604
  call void @llvm.dbg.value(metadata ptr %0, metadata !4530, metadata !DIExpression()), !dbg !4605
  call void @llvm.dbg.value(metadata i64 %3, metadata !4531, metadata !DIExpression()), !dbg !4605
  call void @llvm.dbg.value(metadata i64 %3, metadata !4222, metadata !DIExpression()), !dbg !4607
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4609
  call void @llvm.dbg.value(metadata ptr %4, metadata !4198, metadata !DIExpression()), !dbg !4610
  %5 = icmp eq ptr %4, null, !dbg !4612
  br i1 %5, label %6, label %7, !dbg !4613

6:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4614
  unreachable, !dbg !4614

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4541, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata ptr %0, metadata !4547, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 %3, metadata !4548, metadata !DIExpression()), !dbg !4615
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #41, !dbg !4617
  ret ptr %4, !dbg !4618
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4619 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4623, !tbaa !1027
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4621, metadata !DIExpression()), !dbg !4624
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.146, ptr noundef nonnull @.str.2.147, i32 noundef 5) #41, !dbg !4623
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.148, ptr noundef %2) #41, !dbg !4623
  %3 = icmp eq i32 %1, 0, !dbg !4623
  tail call void @llvm.assume(i1 %3), !dbg !4623
  tail call void @abort() #43, !dbg !4625
  unreachable, !dbg !4625
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #38

; Function Attrs: nounwind uwtable
define dso_local double @c_strtod(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4626 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4630, metadata !DIExpression()), !dbg !4634
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4631, metadata !DIExpression()), !dbg !4634
  %3 = load volatile ptr, ptr @c_locale_cache, align 8, !dbg !4635, !tbaa !956
  %4 = icmp eq ptr %3, null, !dbg !4635
  br i1 %4, label %5, label %7, !dbg !4641

5:                                                ; preds = %2
  %6 = tail call ptr @newlocale(i32 noundef 8127, ptr noundef nonnull @.str.151, ptr noundef null) #41, !dbg !4642
  store volatile ptr %6, ptr @c_locale_cache, align 8, !dbg !4643, !tbaa !956
  br label %7, !dbg !4644

7:                                                ; preds = %2, %5
  %8 = load volatile ptr, ptr @c_locale_cache, align 8, !dbg !4645, !tbaa !956
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !4633, metadata !DIExpression()), !dbg !4634
  %9 = icmp eq ptr %8, null, !dbg !4646
  br i1 %9, label %10, label %13, !dbg !4648

10:                                               ; preds = %7
  %11 = icmp eq ptr %1, null, !dbg !4649
  br i1 %11, label %15, label %12, !dbg !4652

12:                                               ; preds = %10
  store ptr %0, ptr %1, align 8, !dbg !4653, !tbaa !956
  br label %15, !dbg !4654

13:                                               ; preds = %7
  %14 = tail call double @strtod_l(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8) #41, !dbg !4655
  tail call void @llvm.dbg.value(metadata double %14, metadata !4632, metadata !DIExpression()), !dbg !4634
  br label %15, !dbg !4656

15:                                               ; preds = %10, %12, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %10 ], !dbg !4634
  ret double %16, !dbg !4657
}

; Function Attrs: nounwind
declare !dbg !4658 ptr @newlocale(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4661 double @strtod_l(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4664 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4702, metadata !DIExpression()), !dbg !4707
  %2 = tail call i64 @__fpending(ptr noundef %0) #41, !dbg !4708
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4703, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4707
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4709, metadata !DIExpression()), !dbg !4712
  %3 = load i32, ptr %0, align 8, !dbg !4714, !tbaa !4715
  %4 = and i32 %3, 32, !dbg !4716
  %5 = icmp eq i32 %4, 0, !dbg !4716
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4705, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4707
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #41, !dbg !4717
  %7 = icmp eq i32 %6, 0, !dbg !4718
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4706, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4707
  br i1 %5, label %8, label %18, !dbg !4719

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4721
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4703, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4707
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4722
  %11 = xor i1 %7, true, !dbg !4722
  %12 = sext i1 %11 to i32, !dbg !4722
  br i1 %10, label %21, label %13, !dbg !4722

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #44, !dbg !4723
  %15 = load i32, ptr %14, align 4, !dbg !4723, !tbaa !1027
  %16 = icmp ne i32 %15, 9, !dbg !4724
  %17 = sext i1 %16 to i32, !dbg !4725
  br label %21, !dbg !4725

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4726

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #44, !dbg !4728
  store i32 0, ptr %20, align 4, !dbg !4730, !tbaa !1027
  br label %21, !dbg !4728

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4707
  ret i32 %22, !dbg !4731
}

; Function Attrs: nounwind
declare !dbg !4732 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4736 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4774, metadata !DIExpression()), !dbg !4778
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4775, metadata !DIExpression()), !dbg !4778
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !4779
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4776, metadata !DIExpression()), !dbg !4778
  %3 = icmp slt i32 %2, 0, !dbg !4780
  br i1 %3, label %4, label %6, !dbg !4782

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4783
  br label %24, !dbg !4784

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !4785
  %8 = icmp eq i32 %7, 0, !dbg !4785
  br i1 %8, label %13, label %9, !dbg !4787

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !4788
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #41, !dbg !4789
  %12 = icmp eq i64 %11, -1, !dbg !4790
  br i1 %12, label %16, label %13, !dbg !4791

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #41, !dbg !4792
  %15 = icmp eq i32 %14, 0, !dbg !4792
  br i1 %15, label %16, label %18, !dbg !4793

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4775, metadata !DIExpression()), !dbg !4778
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4777, metadata !DIExpression()), !dbg !4778
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4794
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4777, metadata !DIExpression()), !dbg !4778
  br label %24, !dbg !4795

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #44, !dbg !4796
  %20 = load i32, ptr %19, align 4, !dbg !4796, !tbaa !1027
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4775, metadata !DIExpression()), !dbg !4778
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4777, metadata !DIExpression()), !dbg !4778
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4794
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4777, metadata !DIExpression()), !dbg !4778
  %22 = icmp eq i32 %20, 0, !dbg !4797
  br i1 %22, label %24, label %23, !dbg !4795

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4799, !tbaa !1027
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4777, metadata !DIExpression()), !dbg !4778
  br label %24, !dbg !4801

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4778
  ret i32 %25, !dbg !4802
}

; Function Attrs: nofree nounwind
declare !dbg !4803 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4804 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4805 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4806 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4809 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4847, metadata !DIExpression()), !dbg !4848
  %2 = icmp eq ptr %0, null, !dbg !4849
  br i1 %2, label %6, label %3, !dbg !4851

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !4852
  %5 = icmp eq i32 %4, 0, !dbg !4852
  br i1 %5, label %6, label %8, !dbg !4853

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4854
  br label %16, !dbg !4855

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4856, metadata !DIExpression()), !dbg !4861
  %9 = load i32, ptr %0, align 8, !dbg !4863, !tbaa !4715
  %10 = and i32 %9, 256, !dbg !4865
  %11 = icmp eq i32 %10, 0, !dbg !4865
  br i1 %11, label %14, label %12, !dbg !4866

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #41, !dbg !4867
  br label %14, !dbg !4867

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4868
  br label %16, !dbg !4869

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4848
  ret i32 %17, !dbg !4870
}

; Function Attrs: nofree nounwind
declare !dbg !4871 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4872 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4911, metadata !DIExpression()), !dbg !4917
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4912, metadata !DIExpression()), !dbg !4917
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4913, metadata !DIExpression()), !dbg !4917
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4918
  %5 = load ptr, ptr %4, align 8, !dbg !4918, !tbaa !4919
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4920
  %7 = load ptr, ptr %6, align 8, !dbg !4920, !tbaa !4921
  %8 = icmp eq ptr %5, %7, !dbg !4922
  br i1 %8, label %9, label %27, !dbg !4923

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4924
  %11 = load ptr, ptr %10, align 8, !dbg !4924, !tbaa !2354
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4925
  %13 = load ptr, ptr %12, align 8, !dbg !4925, !tbaa !4926
  %14 = icmp eq ptr %11, %13, !dbg !4927
  br i1 %14, label %15, label %27, !dbg !4928

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4929
  %17 = load ptr, ptr %16, align 8, !dbg !4929, !tbaa !4930
  %18 = icmp eq ptr %17, null, !dbg !4931
  br i1 %18, label %19, label %27, !dbg !4932

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !4933
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #41, !dbg !4934
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4914, metadata !DIExpression()), !dbg !4935
  %22 = icmp eq i64 %21, -1, !dbg !4936
  br i1 %22, label %29, label %23, !dbg !4938

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4939, !tbaa !4715
  %25 = and i32 %24, -17, !dbg !4939
  store i32 %25, ptr %0, align 8, !dbg !4939, !tbaa !4715
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4940
  store i64 %21, ptr %26, align 8, !dbg !4941, !tbaa !4942
  br label %29, !dbg !4943

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4944
  br label %29, !dbg !4945

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4917
  ret i32 %30, !dbg !4946
}

; Function Attrs: nofree nounwind
declare !dbg !4947 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4950 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4955, metadata !DIExpression()), !dbg !4960
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4956, metadata !DIExpression()), !dbg !4960
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4957, metadata !DIExpression()), !dbg !4960
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4958, metadata !DIExpression()), !dbg !4960
  %5 = icmp eq ptr %1, null, !dbg !4961
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4963
  %7 = select i1 %5, ptr @.str.162, ptr %1, !dbg !4963
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4963
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4957, metadata !DIExpression()), !dbg !4960
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4956, metadata !DIExpression()), !dbg !4960
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4955, metadata !DIExpression()), !dbg !4960
  %9 = icmp eq ptr %3, null, !dbg !4964
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4966
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4958, metadata !DIExpression()), !dbg !4960
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #41, !dbg !4967
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4959, metadata !DIExpression()), !dbg !4960
  %12 = icmp ult i64 %11, -3, !dbg !4968
  br i1 %12, label %13, label %17, !dbg !4970

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #42, !dbg !4971
  %15 = icmp eq i32 %14, 0, !dbg !4971
  br i1 %15, label %16, label %29, !dbg !4972

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4973, metadata !DIExpression()), !dbg !4978
  call void @llvm.dbg.value(metadata ptr %10, metadata !4980, metadata !DIExpression()), !dbg !4985
  call void @llvm.dbg.value(metadata i32 0, metadata !4983, metadata !DIExpression()), !dbg !4985
  call void @llvm.dbg.value(metadata i64 8, metadata !4984, metadata !DIExpression()), !dbg !4985
  store i64 0, ptr %10, align 1, !dbg !4987
  br label %29, !dbg !4988

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4989
  br i1 %18, label %19, label %20, !dbg !4991

19:                                               ; preds = %17
  tail call void @abort() #43, !dbg !4992
  unreachable, !dbg !4992

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4993

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #41, !dbg !4995
  br i1 %23, label %29, label %24, !dbg !4996

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4997
  br i1 %25, label %29, label %26, !dbg !5000

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5001, !tbaa !1036
  %28 = zext i8 %27 to i32, !dbg !5002
  store i32 %28, ptr %6, align 4, !dbg !5003, !tbaa !1027
  br label %29, !dbg !5004

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4960
  ret i64 %30, !dbg !5005
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5006 i32 @mbsinit(ptr noundef) local_unnamed_addr #39

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #40 !dbg !5012 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5014, metadata !DIExpression()), !dbg !5018
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5015, metadata !DIExpression()), !dbg !5018
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5016, metadata !DIExpression()), !dbg !5018
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5019
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5019
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5017, metadata !DIExpression()), !dbg !5018
  br i1 %5, label %6, label %8, !dbg !5021

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #44, !dbg !5022
  store i32 12, ptr %7, align 4, !dbg !5024, !tbaa !1027
  br label %12, !dbg !5025

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5019
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5017, metadata !DIExpression()), !dbg !5018
  call void @llvm.dbg.value(metadata ptr %0, metadata !5026, metadata !DIExpression()), !dbg !5030
  call void @llvm.dbg.value(metadata i64 %9, metadata !5029, metadata !DIExpression()), !dbg !5030
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5032
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #47, !dbg !5033
  br label %12, !dbg !5034

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5018
  ret ptr %13, !dbg !5035
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5036 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !5043
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5039, metadata !DIExpression(), metadata !5043, metadata ptr %2, metadata !DIExpression()), !dbg !5044
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5038, metadata !DIExpression()), !dbg !5044
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #41, !dbg !5045
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #41, !dbg !5046
  %4 = icmp eq i32 %3, 0, !dbg !5046
  br i1 %4, label %5, label %12, !dbg !5048

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5049, metadata !DIExpression()), !dbg !5053
  call void @llvm.dbg.value(metadata ptr @.str.167, metadata !5052, metadata !DIExpression()), !dbg !5053
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.167, i64 2), !dbg !5056
  %7 = icmp eq i32 %6, 0, !dbg !5057
  br i1 %7, label %11, label %8, !dbg !5058

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5049, metadata !DIExpression()), !dbg !5059
  call void @llvm.dbg.value(metadata ptr @.str.1.168, metadata !5052, metadata !DIExpression()), !dbg !5059
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.168, i64 6), !dbg !5061
  %10 = icmp eq i32 %9, 0, !dbg !5062
  br i1 %10, label %11, label %12, !dbg !5063

11:                                               ; preds = %8, %5
  br label %12, !dbg !5064

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5044
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #41, !dbg !5065
  ret i1 %13, !dbg !5065
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5066 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5070, metadata !DIExpression()), !dbg !5073
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5071, metadata !DIExpression()), !dbg !5073
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5072, metadata !DIExpression()), !dbg !5073
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #41, !dbg !5074
  ret i32 %4, !dbg !5075
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5076 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5080, metadata !DIExpression()), !dbg !5081
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #41, !dbg !5082
  ret ptr %2, !dbg !5083
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5084 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5086, metadata !DIExpression()), !dbg !5088
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !5089
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5087, metadata !DIExpression()), !dbg !5088
  ret ptr %2, !dbg !5090
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5091 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5093, metadata !DIExpression()), !dbg !5100
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5094, metadata !DIExpression()), !dbg !5100
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5095, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata i32 %0, metadata !5086, metadata !DIExpression()), !dbg !5101
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !5103
  call void @llvm.dbg.value(metadata ptr %4, metadata !5087, metadata !DIExpression()), !dbg !5101
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5096, metadata !DIExpression()), !dbg !5100
  %5 = icmp eq ptr %4, null, !dbg !5104
  br i1 %5, label %6, label %9, !dbg !5105

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5106
  br i1 %7, label %19, label %8, !dbg !5109

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5110, !tbaa !1036
  br label %19, !dbg !5111

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #42, !dbg !5112
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5097, metadata !DIExpression()), !dbg !5113
  %11 = icmp ult i64 %10, %2, !dbg !5114
  br i1 %11, label %12, label %14, !dbg !5116

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5117
  call void @llvm.dbg.value(metadata ptr %1, metadata !5119, metadata !DIExpression()), !dbg !5124
  call void @llvm.dbg.value(metadata ptr %4, metadata !5122, metadata !DIExpression()), !dbg !5124
  call void @llvm.dbg.value(metadata i64 %13, metadata !5123, metadata !DIExpression()), !dbg !5124
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #41, !dbg !5126
  br label %19, !dbg !5127

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5128
  br i1 %15, label %19, label %16, !dbg !5131

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5132
  call void @llvm.dbg.value(metadata ptr %1, metadata !5119, metadata !DIExpression()), !dbg !5134
  call void @llvm.dbg.value(metadata ptr %4, metadata !5122, metadata !DIExpression()), !dbg !5134
  call void @llvm.dbg.value(metadata i64 %17, metadata !5123, metadata !DIExpression()), !dbg !5134
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #41, !dbg !5136
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5137
  store i8 0, ptr %18, align 1, !dbg !5138, !tbaa !1036
  br label %19, !dbg !5139

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5140
  ret i32 %20, !dbg !5141
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
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
attributes #45 = { noreturn }
attributes #46 = { cold }
attributes #47 = { nounwind allocsize(1) }
attributes #48 = { nounwind allocsize(0) }
attributes #49 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!94, !859, !469, !863, !473, !865, !488, !797, !876, !541, !555, !606, !696, !878, !789, !885, !920, !810, !922, !924, !926, !928, !841, !930, !932, !934, !936}
!llvm.ident = !{!938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938}
!llvm.module.flags = !{!939, !940, !941, !942, !943, !944, !945, !946}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 267, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/timeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afbf26e7b41c5b018c2877c8d9f1f2ff")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 49)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 273, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 61)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 279, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 8)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 279, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1712, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 214)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 285, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1144, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 143)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 290, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 904, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 113)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1384, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 173)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 656, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 82)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 306, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 50)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 307, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 62)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 309, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1528, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 191)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 314, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1872, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 234)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 320, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2616, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 327)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 515, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 516, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 10)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 516, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 24)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 522, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 9)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "long_options", scope: !94, file: !2, line: 97, type: !444, isLocal: true, isDefinition: true)
!94 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/timeout.o -MD -MP -MF src/.deps/timeout.Tpo -c src/timeout.c -o src/.timeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !95, retainedTypes: !124, globals: !140, splitDebugInlining: false, nameTableKind: None)
!95 = !{!96, !104, !109}
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !97, line: 90, baseType: !98, size: 32, elements: !99)
!97 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!98 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!99 = !{!100, !101, !102, !103}
!100 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!101 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!102 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!103 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !97, line: 337, baseType: !105, size: 32, elements: !106)
!105 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!106 = !{!107, !108}
!107 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!108 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !110, line: 46, baseType: !98, size: 32, elements: !111)
!110 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123}
!112 = !DIEnumerator(name: "_ISupper", value: 256)
!113 = !DIEnumerator(name: "_ISlower", value: 512)
!114 = !DIEnumerator(name: "_ISalpha", value: 1024)
!115 = !DIEnumerator(name: "_ISdigit", value: 2048)
!116 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!117 = !DIEnumerator(name: "_ISspace", value: 8192)
!118 = !DIEnumerator(name: "_ISprint", value: 16384)
!119 = !DIEnumerator(name: "_ISgraph", value: 32768)
!120 = !DIEnumerator(name: "_ISblank", value: 1)
!121 = !DIEnumerator(name: "_IScntrl", value: 2)
!122 = !DIEnumerator(name: "_ISpunct", value: 4)
!123 = !DIEnumerator(name: "_ISalnum", value: 8)
!124 = !{!125, !126, !127, !132, !105, !133, !134, !137, !139}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !128, line: 72, baseType: !129)
!128 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !105}
!132 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!133 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !135, line: 18, baseType: !136)
!135 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!136 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!139 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!140 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !72, !77, !82, !87, !141, !146, !148, !153, !155, !160, !165, !170, !172, !177, !179, !185, !188, !191, !193, !195, !197, !202, !282, !287, !289, !294, !299, !304, !306, !308, !313, !315, !317, !319, !324, !326, !328, !330, !332, !334, !336, !338, !343, !348, !350, !352, !354, !356, !358, !360, !365, !370, !372, !374, !379, !384, !389, !394, !399, !401, !403, !405, !407, !409, !92, !411, !413, !415, !417, !422, !427, !432, !437, !439}
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !2, line: 551, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 14)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !2, line: 551, type: !143, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !2, line: 551, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 15)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 603, type: !84, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !2, line: 621, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 34)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !2, line: 633, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 25)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 653, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 26)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !2, line: 664, type: !157, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !2, line: 682, type: !174, isLocal: true, isDefinition: true)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 33)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "timed_out", scope: !94, file: !2, line: 88, type: !105, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "monitored_pid", scope: !94, file: !2, line: 90, type: !181, isLocal: true, isDefinition: true)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !182, line: 97, baseType: !183)
!182 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !184, line: 154, baseType: !105)
!184 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "kill_after", scope: !94, file: !2, line: 91, type: !187, isLocal: true, isDefinition: true)
!187 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "foreground", scope: !94, file: !2, line: 92, type: !190, isLocal: true, isDefinition: true)
!190 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "preserve_status", scope: !94, file: !2, line: 93, type: !190, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "verbose", scope: !94, file: !2, line: 94, type: !190, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "command", scope: !94, file: !2, line: 95, type: !137, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !97, line: 736, type: !199, isLocal: true, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 75)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !204, file: !97, line: 575, type: !105, isLocal: true, isDefinition: true)
!204 = distinct !DISubprogram(name: "oputs_", scope: !97, file: !97, line: 573, type: !205, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !207)
!205 = !DISubroutineType(cc: DW_CC_nocall, types: !206)
!206 = !{null, !137, !137}
!207 = !{!208, !209, !210, !213, !214, !215, !216, !220, !221, !222, !223, !225, !276, !277, !278, !280, !281}
!208 = !DILocalVariable(name: "program", arg: 1, scope: !204, file: !97, line: 573, type: !137)
!209 = !DILocalVariable(name: "option", arg: 2, scope: !204, file: !97, line: 573, type: !137)
!210 = !DILocalVariable(name: "term", scope: !211, file: !97, line: 585, type: !137)
!211 = distinct !DILexicalBlock(scope: !212, file: !97, line: 582, column: 5)
!212 = distinct !DILexicalBlock(scope: !204, file: !97, line: 581, column: 7)
!213 = !DILocalVariable(name: "double_space", scope: !204, file: !97, line: 594, type: !190)
!214 = !DILocalVariable(name: "first_word", scope: !204, file: !97, line: 595, type: !137)
!215 = !DILocalVariable(name: "option_text", scope: !204, file: !97, line: 596, type: !137)
!216 = !DILocalVariable(name: "s", scope: !217, file: !97, line: 608, type: !137)
!217 = distinct !DILexicalBlock(scope: !218, file: !97, line: 605, column: 5)
!218 = distinct !DILexicalBlock(scope: !219, file: !97, line: 604, column: 12)
!219 = distinct !DILexicalBlock(scope: !204, file: !97, line: 597, column: 7)
!220 = !DILocalVariable(name: "spaces", scope: !217, file: !97, line: 609, type: !134)
!221 = !DILocalVariable(name: "anchor_len", scope: !204, file: !97, line: 620, type: !134)
!222 = !DILocalVariable(name: "desc_text", scope: !204, file: !97, line: 625, type: !137)
!223 = !DILocalVariable(name: "__ptr", scope: !224, file: !97, line: 644, type: !137)
!224 = distinct !DILexicalBlock(scope: !204, file: !97, line: 644, column: 3)
!225 = !DILocalVariable(name: "__stream", scope: !224, file: !97, line: 644, type: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !229)
!228 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !231)
!230 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !247, !249, !250, !251, !254, !255, !256, !257, !260, !262, !265, !268, !269, !270, !271, !272}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !229, file: !230, line: 51, baseType: !105, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !229, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !229, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !229, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !229, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !229, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !229, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !229, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !229, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !229, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !229, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !229, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !229, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !230, line: 36, flags: DIFlagFwdDecl)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !229, file: !230, line: 70, baseType: !248, size: 64, offset: 832)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !229, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !229, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !229, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !184, line: 152, baseType: !253)
!253 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !229, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !229, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !229, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !229, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !230, line: 43, baseType: null)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !229, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !184, line: 153, baseType: !253)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !229, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !230, line: 37, flags: DIFlagFwdDecl)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !229, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !230, line: 38, flags: DIFlagFwdDecl)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !229, file: !230, line: 93, baseType: !248, size: 64, offset: 1344)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !229, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !229, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !229, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !229, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 20)
!276 = !DILocalVariable(name: "__cnt", scope: !224, file: !97, line: 644, type: !134)
!277 = !DILocalVariable(name: "url_program", scope: !204, file: !97, line: 648, type: !137)
!278 = !DILocalVariable(name: "__ptr", scope: !279, file: !97, line: 686, type: !137)
!279 = distinct !DILexicalBlock(scope: !204, file: !97, line: 686, column: 3)
!280 = !DILocalVariable(name: "__stream", scope: !279, file: !97, line: 686, type: !226)
!281 = !DILocalVariable(name: "__cnt", scope: !279, file: !97, line: 686, type: !134)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !97, line: 585, type: !284, isLocal: true, isDefinition: true)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 5)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !97, line: 586, type: !284, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !97, line: 595, type: !291, isLocal: true, isDefinition: true)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 4)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !97, line: 620, type: !296, isLocal: true, isDefinition: true)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 6)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !97, line: 648, type: !301, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 2)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !97, line: 648, type: !284, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !97, line: 649, type: !291, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !97, line: 649, type: !310, isLocal: true, isDefinition: true)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 3)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !97, line: 650, type: !284, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !97, line: 651, type: !296, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !97, line: 651, type: !296, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !97, line: 652, type: !321, isLocal: true, isDefinition: true)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 7)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !97, line: 653, type: !19, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !97, line: 654, type: !79, isLocal: true, isDefinition: true)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !97, line: 655, type: !79, isLocal: true, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !97, line: 656, type: !79, isLocal: true, isDefinition: true)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !97, line: 657, type: !79, isLocal: true, isDefinition: true)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !97, line: 663, type: !321, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !97, line: 664, type: !79, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !97, line: 669, type: !340, isLocal: true, isDefinition: true)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 17)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !97, line: 669, type: !345, isLocal: true, isDefinition: true)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 40)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !97, line: 676, type: !150, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !97, line: 676, type: !14, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !97, line: 679, type: !310, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !97, line: 683, type: !284, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !97, line: 688, type: !284, isLocal: true, isDefinition: true)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !97, line: 691, type: !19, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !97, line: 839, type: !362, isLocal: true, isDefinition: true)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 16)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !97, line: 840, type: !367, isLocal: true, isDefinition: true)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 22)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !97, line: 841, type: !150, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !97, line: 862, type: !291, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !97, line: 868, type: !376, isLocal: true, isDefinition: true)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 71)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !97, line: 875, type: !381, isLocal: true, isDefinition: true)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 27)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !97, line: 877, type: !386, isLocal: true, isDefinition: true)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 51)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !97, line: 877, type: !391, isLocal: true, isDefinition: true)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 12)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !396, isLocal: true, isDefinition: true)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 11)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !396, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !362, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !321, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !19, isLocal: true, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !284, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !19, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !2, line: 386, type: !162, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(name: "term_signal", scope: !94, file: !2, line: 89, type: !105, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !2, line: 236, type: !310, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !2, line: 237, type: !419, isLocal: true, isDefinition: true)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 32)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(name: "term_sig", scope: !94, file: !424, line: 6, type: !425, isLocal: true, isDefinition: true)
!424 = !DIFile(filename: "src/term-sig.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d5de988e1d621d74adbec0ff67a5bdb7")
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 704, elements: !368)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !2, line: 400, type: !429, isLocal: true, isDefinition: true)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 21)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !434, isLocal: true, isDefinition: true)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 23)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !367, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !2, line: 503, type: !441, isLocal: true, isDefinition: true)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 37)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 2048, elements: !20)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !447, line: 50, size: 256, elements: !448)
!447 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!448 = !{!449, !450, !451, !453}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !446, file: !447, line: 52, baseType: !137, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !446, file: !447, line: 55, baseType: !105, size: 32, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !446, file: !447, line: 56, baseType: !452, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !446, file: !447, line: 57, baseType: !105, size: 32, offset: 192)
!454 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!455 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!456 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!457 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !460, line: 87, type: !461, isLocal: true, isDefinition: true)
!460 = !DIFile(filename: "src/operand2sig.c", directory: "/src", checksumkind: CSK_MD5, checksum: "46beb430284fcb3f5c7434dd479a51b3")
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !462)
!462 = !{!463}
!463 = !DISubrange(count: 19)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !466, line: 3, type: !150, isLocal: true, isDefinition: true)
!466 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(name: "Version", scope: !469, file: !466, line: 3, type: !137, isLocal: false, isDefinition: true)
!469 = distinct !DICompileUnit(language: DW_LANG_C11, file: !466, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !470, splitDebugInlining: false, nameTableKind: None)
!470 = !{!464, !467}
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(name: "file_name", scope: !473, file: !474, line: 45, type: !137, isLocal: true, isDefinition: true)
!473 = distinct !DICompileUnit(language: DW_LANG_C11, file: !474, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !475, splitDebugInlining: false, nameTableKind: None)
!474 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!475 = !{!476, !478, !480, !482, !471, !484}
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !474, line: 121, type: !321, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !474, line: 121, type: !391, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !474, line: 123, type: !321, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !474, line: 126, type: !310, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !473, file: !474, line: 55, type: !190, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !488, file: !489, line: 66, type: !536, isLocal: false, isDefinition: true)
!488 = distinct !DICompileUnit(language: DW_LANG_C11, file: !489, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !490, globals: !491, splitDebugInlining: false, nameTableKind: None)
!489 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!490 = !{!126, !139}
!491 = !{!492, !494, !518, !520, !522, !524, !486, !526, !528, !530, !532, !534}
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(scope: null, file: !489, line: 272, type: !284, isLocal: true, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(name: "old_file_name", scope: !496, file: !489, line: 304, type: !137, isLocal: true, isDefinition: true)
!496 = distinct !DISubprogram(name: "verror_at_line", scope: !489, file: !489, line: 298, type: !497, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !511)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !105, !105, !137, !98, !137, !499}
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !500, line: 52, baseType: !501)
!500 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !502, line: 12, baseType: !503)
!502 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !489, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !505)
!505 = !{!506, !507, !508, !509, !510}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !504, file: !489, baseType: !126, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !504, file: !489, baseType: !126, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !504, file: !489, baseType: !126, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !504, file: !489, baseType: !105, size: 32, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !504, file: !489, baseType: !105, size: 32, offset: 224)
!511 = !{!512, !513, !514, !515, !516, !517}
!512 = !DILocalVariable(name: "status", arg: 1, scope: !496, file: !489, line: 298, type: !105)
!513 = !DILocalVariable(name: "errnum", arg: 2, scope: !496, file: !489, line: 298, type: !105)
!514 = !DILocalVariable(name: "file_name", arg: 3, scope: !496, file: !489, line: 298, type: !137)
!515 = !DILocalVariable(name: "line_number", arg: 4, scope: !496, file: !489, line: 298, type: !98)
!516 = !DILocalVariable(name: "message", arg: 5, scope: !496, file: !489, line: 298, type: !137)
!517 = !DILocalVariable(name: "args", arg: 6, scope: !496, file: !489, line: 298, type: !499)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "old_line_number", scope: !496, file: !489, line: 305, type: !98, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !489, line: 338, type: !291, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !489, line: 346, type: !19, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !489, line: 346, type: !301, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(name: "error_message_count", scope: !488, file: !489, line: 69, type: !98, isLocal: false, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !488, file: !489, line: 295, type: !105, isLocal: false, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !489, line: 208, type: !321, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !489, line: 208, type: !429, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !489, line: 214, type: !284, isLocal: true, isDefinition: true)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{null}
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(name: "program_name", scope: !541, file: !542, line: 31, type: !137, isLocal: false, isDefinition: true)
!541 = distinct !DICompileUnit(language: DW_LANG_C11, file: !542, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !543, globals: !544, splitDebugInlining: false, nameTableKind: None)
!542 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!543 = !{!126, !125}
!544 = !{!539, !545, !547}
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !542, line: 46, type: !19, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !542, line: 49, type: !291, isLocal: true, isDefinition: true)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(name: "utf07FF", scope: !551, file: !552, line: 46, type: !579, isLocal: true, isDefinition: true)
!551 = distinct !DISubprogram(name: "proper_name_lite", scope: !552, file: !552, line: 38, type: !553, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !557)
!552 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!553 = !DISubroutineType(types: !554)
!554 = !{!137, !137, !137}
!555 = distinct !DICompileUnit(language: DW_LANG_C11, file: !552, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !556, splitDebugInlining: false, nameTableKind: None)
!556 = !{!549}
!557 = !{!558, !559, !560, !561, !566}
!558 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !551, file: !552, line: 38, type: !137)
!559 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !551, file: !552, line: 38, type: !137)
!560 = !DILocalVariable(name: "translation", scope: !551, file: !552, line: 40, type: !137)
!561 = !DILocalVariable(name: "w", scope: !551, file: !552, line: 47, type: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !563, line: 37, baseType: !564)
!563 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !184, line: 57, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !184, line: 42, baseType: !98)
!566 = !DILocalVariable(name: "mbs", scope: !551, file: !552, line: 48, type: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !568, line: 6, baseType: !569)
!568 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !570, line: 21, baseType: !571)
!570 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !570, line: 13, size: 64, elements: !572)
!572 = !{!573, !574}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !571, file: !570, line: 15, baseType: !105, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !571, file: !570, line: 20, baseType: !575, size: 32, offset: 32)
!575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !571, file: !570, line: 16, size: 32, elements: !576)
!576 = !{!577, !578}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !575, file: !570, line: 18, baseType: !98, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !575, file: !570, line: 19, baseType: !291, size: 32)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 16, elements: !302)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(scope: null, file: !582, line: 78, type: !19, isLocal: true, isDefinition: true)
!582 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !582, line: 79, type: !296, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !582, line: 80, type: !587, isLocal: true, isDefinition: true)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !588)
!588 = !{!589}
!589 = !DISubrange(count: 13)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !582, line: 81, type: !587, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !582, line: 82, type: !273, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !582, line: 83, type: !301, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !582, line: 84, type: !19, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !582, line: 85, type: !321, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !582, line: 86, type: !321, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !582, line: 87, type: !19, isLocal: true, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !606, file: !582, line: 76, type: !692, isLocal: false, isDefinition: true)
!606 = distinct !DICompileUnit(language: DW_LANG_C11, file: !582, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !607, retainedTypes: !627, globals: !628, splitDebugInlining: false, nameTableKind: None)
!607 = !{!608, !622, !109}
!608 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !609, line: 42, baseType: !98, size: 32, elements: !610)
!609 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!610 = !{!611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!611 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!612 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!613 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!614 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!615 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!616 = !DIEnumerator(name: "c_quoting_style", value: 5)
!617 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!618 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!619 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!620 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!621 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!622 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !609, line: 254, baseType: !98, size: 32, elements: !623)
!623 = !{!624, !625, !626}
!624 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!625 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!626 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!627 = !{!126, !105, !133, !134}
!628 = !{!580, !583, !585, !590, !592, !594, !596, !598, !600, !602, !604, !629, !633, !643, !645, !650, !652, !654, !656, !658, !681, !688, !690}
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !606, file: !582, line: 92, type: !631, isLocal: false, isDefinition: true)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 320, elements: !80)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !606, file: !582, line: 1040, type: !635, isLocal: false, isDefinition: true)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !582, line: 56, size: 448, elements: !636)
!636 = !{!637, !638, !639, !641, !642}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !635, file: !582, line: 59, baseType: !608, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !635, file: !582, line: 62, baseType: !105, size: 32, offset: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !635, file: !582, line: 66, baseType: !640, size: 256, offset: 64)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 256, elements: !20)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !635, file: !582, line: 69, baseType: !137, size: 64, offset: 320)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !635, file: !582, line: 72, baseType: !137, size: 64, offset: 384)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !606, file: !582, line: 107, type: !635, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(name: "slot0", scope: !606, file: !582, line: 831, type: !647, isLocal: true, isDefinition: true)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !648)
!648 = !{!649}
!649 = !DISubrange(count: 256)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !582, line: 321, type: !301, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !582, line: 357, type: !301, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !582, line: 358, type: !301, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !582, line: 199, type: !321, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(name: "quote", scope: !660, file: !582, line: 228, type: !679, isLocal: true, isDefinition: true)
!660 = distinct !DISubprogram(name: "gettext_quote", scope: !582, file: !582, line: 197, type: !661, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !663)
!661 = !DISubroutineType(types: !662)
!662 = !{!137, !137, !608}
!663 = !{!664, !665, !666, !667, !668}
!664 = !DILocalVariable(name: "msgid", arg: 1, scope: !660, file: !582, line: 197, type: !137)
!665 = !DILocalVariable(name: "s", arg: 2, scope: !660, file: !582, line: 197, type: !608)
!666 = !DILocalVariable(name: "translation", scope: !660, file: !582, line: 199, type: !137)
!667 = !DILocalVariable(name: "w", scope: !660, file: !582, line: 229, type: !562)
!668 = !DILocalVariable(name: "mbs", scope: !660, file: !582, line: 230, type: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !568, line: 6, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !570, line: 21, baseType: !671)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !570, line: 13, size: 64, elements: !672)
!672 = !{!673, !674}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !671, file: !570, line: 15, baseType: !105, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !671, file: !570, line: 20, baseType: !675, size: 32, offset: 32)
!675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !671, file: !570, line: 16, size: 32, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !675, file: !570, line: 18, baseType: !98, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !675, file: !570, line: 19, baseType: !291, size: 32)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !680)
!680 = !{!303, !293}
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(name: "slotvec", scope: !606, file: !582, line: 834, type: !683, isLocal: true, isDefinition: true)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !582, line: 823, size: 128, elements: !685)
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !684, file: !582, line: 825, baseType: !134, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !684, file: !582, line: 826, baseType: !125, size: 64, offset: 64)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(name: "nslots", scope: !606, file: !582, line: 832, type: !105, isLocal: true, isDefinition: true)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(name: "slotvec0", scope: !606, file: !582, line: 833, type: !684, isLocal: true, isDefinition: true)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 704, elements: !397)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(name: "numname_table", scope: !696, file: !697, line: 43, type: !706, isLocal: true, isDefinition: true)
!696 = distinct !DICompileUnit(language: DW_LANG_C11, file: !697, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-sig2str.o -MD -MP -MF lib/.deps/libcoreutils_a-sig2str.Tpo -c lib/sig2str.c -o lib/.libcoreutils_a-sig2str.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !698, globals: !699, splitDebugInlining: false, nameTableKind: None)
!697 = !DIFile(filename: "lib/sig2str.c", directory: "/src", checksumkind: CSK_MD5, checksum: "828136ef7ede39101f7053cda7cea598")
!698 = !{!98}
!699 = !{!700, !702, !704, !694}
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !697, line: 351, type: !296, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !697, line: 356, type: !296, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !697, line: 362, type: !291, isLocal: true, isDefinition: true)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 3360, elements: !712)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numname", file: !697, line: 43, size: 96, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !707, file: !697, line: 43, baseType: !105, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !707, file: !697, line: 43, baseType: !711, size: 64, offset: 32)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !20)
!712 = !{!713}
!713 = !DISubrange(count: 35)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !716, line: 67, type: !391, isLocal: true, isDefinition: true)
!716 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !716, line: 69, type: !321, isLocal: true, isDefinition: true)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(scope: null, file: !716, line: 83, type: !321, isLocal: true, isDefinition: true)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !716, line: 83, type: !291, isLocal: true, isDefinition: true)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(scope: null, file: !716, line: 85, type: !301, isLocal: true, isDefinition: true)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(scope: null, file: !716, line: 88, type: !727, isLocal: true, isDefinition: true)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !728)
!728 = !{!729}
!729 = !DISubrange(count: 171)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !716, line: 88, type: !157, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !716, line: 105, type: !362, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !716, line: 109, type: !434, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !716, line: 113, type: !738, isLocal: true, isDefinition: true)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !739)
!739 = !{!740}
!740 = !DISubrange(count: 28)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !716, line: 120, type: !419, isLocal: true, isDefinition: true)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !716, line: 127, type: !745, isLocal: true, isDefinition: true)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !746)
!746 = !{!747}
!747 = !DISubrange(count: 36)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !716, line: 134, type: !345, isLocal: true, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !716, line: 142, type: !752, isLocal: true, isDefinition: true)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !753)
!753 = !{!754}
!754 = !DISubrange(count: 44)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !716, line: 150, type: !757, isLocal: true, isDefinition: true)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 48)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(scope: null, file: !716, line: 159, type: !762, isLocal: true, isDefinition: true)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !763)
!763 = !{!764}
!764 = !DISubrange(count: 52)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !716, line: 170, type: !767, isLocal: true, isDefinition: true)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !768)
!768 = !{!769}
!769 = !DISubrange(count: 60)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(scope: null, file: !716, line: 248, type: !273, isLocal: true, isDefinition: true)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(scope: null, file: !716, line: 248, type: !367, isLocal: true, isDefinition: true)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(scope: null, file: !716, line: 254, type: !273, isLocal: true, isDefinition: true)
!776 = !DIGlobalVariableExpression(var: !777, expr: !DIExpression())
!777 = distinct !DIGlobalVariable(scope: null, file: !716, line: 254, type: !143, isLocal: true, isDefinition: true)
!778 = !DIGlobalVariableExpression(var: !779, expr: !DIExpression())
!779 = distinct !DIGlobalVariable(scope: null, file: !716, line: 254, type: !345, isLocal: true, isDefinition: true)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(scope: null, file: !716, line: 259, type: !3, isLocal: true, isDefinition: true)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(scope: null, file: !716, line: 259, type: !784, isLocal: true, isDefinition: true)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !785)
!785 = !{!786}
!786 = !DISubrange(count: 29)
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !789, file: !790, line: 26, type: !792, isLocal: false, isDefinition: true)
!789 = distinct !DICompileUnit(language: DW_LANG_C11, file: !790, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !791, splitDebugInlining: false, nameTableKind: None)
!790 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!791 = !{!787}
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 376, elements: !793)
!793 = !{!794}
!794 = !DISubrange(count: 47)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(name: "exit_failure", scope: !797, file: !798, line: 24, type: !800, isLocal: false, isDefinition: true)
!797 = distinct !DICompileUnit(language: DW_LANG_C11, file: !798, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !799, splitDebugInlining: false, nameTableKind: None)
!798 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!799 = !{!795}
!800 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !105)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(scope: null, file: !803, line: 34, type: !310, isLocal: true, isDefinition: true)
!803 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !803, line: 34, type: !321, isLocal: true, isDefinition: true)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(scope: null, file: !803, line: 34, type: !340, isLocal: true, isDefinition: true)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !810, file: !811, line: 58, type: !835, isLocal: true, isDefinition: true)
!810 = distinct !DICompileUnit(language: DW_LANG_C11, file: !811, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-c-strtod.o -MD -MP -MF lib/.deps/libcoreutils_a-c-strtod.Tpo -c lib/c-strtod.c -o lib/.libcoreutils_a-c-strtod.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !812, globals: !832, splitDebugInlining: false, nameTableKind: None)
!811 = !DIFile(filename: "lib/c-strtod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5149e55c3d66a821d48006aa16ce6f10")
!812 = !{!125, !813}
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !814, line: 24, baseType: !815)
!814 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/locale_t.h", directory: "", checksumkind: CSK_MD5, checksum: "4752f26e930c42056083e96227ff0057")
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !816, line: 41, baseType: !817)
!816 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__locale_t.h", directory: "", checksumkind: CSK_MD5, checksum: "79eea70c97dfcbc51f94cdf9446ea8a8")
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !816, line: 27, size: 1856, elements: !819)
!819 = !{!820, !824, !827, !829, !830}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !818, file: !816, line: 30, baseType: !821, size: 832)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !822, size: 832, elements: !588)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !816, line: 30, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !818, file: !816, line: 33, baseType: !825, size: 64, offset: 832)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !818, file: !816, line: 34, baseType: !828, size: 64, offset: 896)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !818, file: !816, line: 35, baseType: !828, size: 64, offset: 960)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !818, file: !816, line: 38, baseType: !831, size: 832, offset: 1024)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 832, elements: !588)
!832 = !{!833, !808}
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(scope: null, file: !811, line: 66, type: !301, isLocal: true, isDefinition: true)
!835 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !813)
!836 = !DIGlobalVariableExpression(var: !837, expr: !DIExpression())
!837 = distinct !DIGlobalVariable(scope: null, file: !838, line: 108, type: !74, isLocal: true, isDefinition: true)
!838 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(name: "internal_state", scope: !841, file: !838, line: 97, type: !844, isLocal: true, isDefinition: true)
!841 = distinct !DICompileUnit(language: DW_LANG_C11, file: !838, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !842, globals: !843, splitDebugInlining: false, nameTableKind: None)
!842 = !{!126, !134, !139}
!843 = !{!836, !839}
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !568, line: 6, baseType: !845)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !570, line: 21, baseType: !846)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !570, line: 13, size: 64, elements: !847)
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !846, file: !570, line: 15, baseType: !105, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !846, file: !570, line: 20, baseType: !850, size: 32, offset: 32)
!850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !846, file: !570, line: 16, size: 32, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !850, file: !570, line: 18, baseType: !98, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !850, file: !570, line: 19, baseType: !291, size: 32)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(scope: null, file: !856, line: 35, type: !301, isLocal: true, isDefinition: true)
!856 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!857 = !DIGlobalVariableExpression(var: !858, expr: !DIExpression())
!858 = distinct !DIGlobalVariable(scope: null, file: !856, line: 35, type: !296, isLocal: true, isDefinition: true)
!859 = distinct !DICompileUnit(language: DW_LANG_C11, file: !460, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/operand2sig.o -MD -MP -MF src/.deps/operand2sig.Tpo -c src/operand2sig.c -o src/.operand2sig.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !860, splitDebugInlining: false, nameTableKind: None)
!860 = !{!861, !458}
!861 = !DIGlobalVariableExpression(var: !862, expr: !DIExpression())
!862 = distinct !DIGlobalVariable(scope: null, file: !460, line: 72, type: !381, isLocal: true, isDefinition: true)
!863 = distinct !DICompileUnit(language: DW_LANG_C11, file: !864, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-cl-strtod.o -MD -MP -MF lib/.deps/libcoreutils_a-cl-strtod.Tpo -c lib/cl-strtod.c -o lib/.libcoreutils_a-cl-strtod.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!864 = !DIFile(filename: "lib/cl-strtod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a67239aa557b1854772fcd1589240f00")
!865 = distinct !DICompileUnit(language: DW_LANG_C11, file: !866, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-dtotimespec.o -MD -MP -MF lib/.deps/libcoreutils_a-dtotimespec.Tpo -c lib/dtotimespec.c -o lib/.libcoreutils_a-dtotimespec.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !867, retainedTypes: !872, splitDebugInlining: false, nameTableKind: None)
!866 = !DIFile(filename: "lib/dtotimespec.c", directory: "/src", checksumkind: CSK_MD5, checksum: "863541a7a9cbed8b745823733251add6")
!867 = !{!868}
!868 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !869, line: 44, baseType: !98, size: 32, elements: !870)
!869 = !DIFile(filename: "lib/timespec.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f2321879fdee55a014e00353b7423449")
!870 = !{!871}
!871 = !DIEnumerator(name: "TIMESPEC_HZ", value: 1000000000)
!872 = !{!873}
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !874, line: 10, baseType: !875)
!874 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !184, line: 160, baseType: !253)
!876 = distinct !DICompileUnit(language: DW_LANG_C11, file: !877, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!877 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!878 = distinct !DICompileUnit(language: DW_LANG_C11, file: !716, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !879, retainedTypes: !883, globals: !884, splitDebugInlining: false, nameTableKind: None)
!879 = !{!880}
!880 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !716, line: 40, baseType: !98, size: 32, elements: !881)
!881 = !{!882}
!882 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!883 = !{!126}
!884 = !{!714, !717, !719, !721, !723, !725, !730, !732, !734, !736, !741, !743, !748, !750, !755, !760, !765, !770, !772, !774, !776, !778, !780, !782}
!885 = distinct !DICompileUnit(language: DW_LANG_C11, file: !886, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !887, retainedTypes: !919, splitDebugInlining: false, nameTableKind: None)
!886 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!887 = !{!888, !900}
!888 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !889, file: !886, line: 188, baseType: !98, size: 32, elements: !898)
!889 = distinct !DISubprogram(name: "x2nrealloc", scope: !886, file: !886, line: 176, type: !890, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !893)
!890 = !DISubroutineType(types: !891)
!891 = !{!126, !126, !892, !134}
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!893 = !{!894, !895, !896, !897}
!894 = !DILocalVariable(name: "p", arg: 1, scope: !889, file: !886, line: 176, type: !126)
!895 = !DILocalVariable(name: "pn", arg: 2, scope: !889, file: !886, line: 176, type: !892)
!896 = !DILocalVariable(name: "s", arg: 3, scope: !889, file: !886, line: 176, type: !134)
!897 = !DILocalVariable(name: "n", scope: !889, file: !886, line: 178, type: !134)
!898 = !{!899}
!899 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!900 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !901, file: !886, line: 228, baseType: !98, size: 32, elements: !898)
!901 = distinct !DISubprogram(name: "xpalloc", scope: !886, file: !886, line: 223, type: !902, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !909)
!902 = !DISubroutineType(types: !903)
!903 = !{!126, !126, !904, !905, !907, !905}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !906, line: 130, baseType: !907)
!906 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !908, line: 18, baseType: !253)
!908 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!909 = !{!910, !911, !912, !913, !914, !915, !916, !917, !918}
!910 = !DILocalVariable(name: "pa", arg: 1, scope: !901, file: !886, line: 223, type: !126)
!911 = !DILocalVariable(name: "pn", arg: 2, scope: !901, file: !886, line: 223, type: !904)
!912 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !901, file: !886, line: 223, type: !905)
!913 = !DILocalVariable(name: "n_max", arg: 4, scope: !901, file: !886, line: 223, type: !907)
!914 = !DILocalVariable(name: "s", arg: 5, scope: !901, file: !886, line: 223, type: !905)
!915 = !DILocalVariable(name: "n0", scope: !901, file: !886, line: 230, type: !905)
!916 = !DILocalVariable(name: "n", scope: !901, file: !886, line: 237, type: !905)
!917 = !DILocalVariable(name: "nbytes", scope: !901, file: !886, line: 248, type: !905)
!918 = !DILocalVariable(name: "adjusted_nbytes", scope: !901, file: !886, line: 252, type: !905)
!919 = !{!125, !126}
!920 = distinct !DICompileUnit(language: DW_LANG_C11, file: !803, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !921, splitDebugInlining: false, nameTableKind: None)
!921 = !{!801, !804, !806}
!922 = distinct !DICompileUnit(language: DW_LANG_C11, file: !923, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!923 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!924 = distinct !DICompileUnit(language: DW_LANG_C11, file: !925, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!925 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!926 = distinct !DICompileUnit(language: DW_LANG_C11, file: !927, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !883, splitDebugInlining: false, nameTableKind: None)
!927 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!928 = distinct !DICompileUnit(language: DW_LANG_C11, file: !929, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !883, splitDebugInlining: false, nameTableKind: None)
!929 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!930 = distinct !DICompileUnit(language: DW_LANG_C11, file: !931, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !883, splitDebugInlining: false, nameTableKind: None)
!931 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!932 = distinct !DICompileUnit(language: DW_LANG_C11, file: !856, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !933, splitDebugInlining: false, nameTableKind: None)
!933 = !{!854, !857}
!934 = distinct !DICompileUnit(language: DW_LANG_C11, file: !935, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!935 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!936 = distinct !DICompileUnit(language: DW_LANG_C11, file: !937, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !883, splitDebugInlining: false, nameTableKind: None)
!937 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!938 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!939 = !{i32 7, !"Dwarf Version", i32 5}
!940 = !{i32 2, !"Debug Info Version", i32 3}
!941 = !{i32 1, !"wchar_size", i32 4}
!942 = !{i32 8, !"PIC Level", i32 2}
!943 = !{i32 7, !"PIE Level", i32 2}
!944 = !{i32 7, !"uwtable", i32 2}
!945 = !{i32 7, !"frame-pointer", i32 1}
!946 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!947 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 264, type: !130, scopeLine: 265, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !948)
!948 = !{!949}
!949 = !DILocalVariable(name: "status", arg: 1, scope: !947, file: !2, line: 264, type: !105)
!950 = !DILocation(line: 0, scope: !947)
!951 = !DILocation(line: 266, column: 14, scope: !952)
!952 = distinct !DILexicalBlock(scope: !947, file: !2, line: 266, column: 7)
!953 = !DILocation(line: 266, column: 7, scope: !947)
!954 = !DILocation(line: 267, column: 5, scope: !955)
!955 = distinct !DILexicalBlock(scope: !952, file: !2, line: 267, column: 5)
!956 = !{!957, !957, i64 0}
!957 = !{!"any pointer", !958, i64 0}
!958 = !{!"omnipotent char", !959, i64 0}
!959 = !{!"Simple C/C++ TBAA"}
!960 = !DILocation(line: 270, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !952, file: !2, line: 269, column: 5)
!962 = !DILocation(line: 273, column: 7, scope: !961)
!963 = !DILocation(line: 736, column: 3, scope: !964, inlinedAt: !965)
!964 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !97, file: !97, line: 734, type: !537, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94)
!965 = distinct !DILocation(line: 277, column: 7, scope: !961)
!966 = !DILocation(line: 279, column: 7, scope: !961)
!967 = !DILocation(line: 285, column: 7, scope: !961)
!968 = !DILocation(line: 290, column: 7, scope: !961)
!969 = !DILocation(line: 295, column: 7, scope: !961)
!970 = !DILocation(line: 301, column: 7, scope: !961)
!971 = !DILocation(line: 306, column: 7, scope: !961)
!972 = !DILocation(line: 307, column: 7, scope: !961)
!973 = !DILocation(line: 309, column: 7, scope: !961)
!974 = !DILocation(line: 314, column: 7, scope: !961)
!975 = !DILocation(line: 320, column: 7, scope: !961)
!976 = !DILocalVariable(name: "program", arg: 1, scope: !977, file: !97, line: 836, type: !137)
!977 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !97, file: !97, line: 836, type: !978, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !980)
!978 = !DISubroutineType(types: !979)
!979 = !{null, !137}
!980 = !{!976, !981, !988, !989, !991, !992}
!981 = !DILocalVariable(name: "infomap", scope: !977, file: !97, line: 838, type: !982)
!982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !983, size: 896, elements: !322)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !977, file: !97, line: 838, size: 128, elements: !985)
!985 = !{!986, !987}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !984, file: !97, line: 838, baseType: !137, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !984, file: !97, line: 838, baseType: !137, size: 64, offset: 64)
!988 = !DILocalVariable(name: "node", scope: !977, file: !97, line: 848, type: !137)
!989 = !DILocalVariable(name: "map_prog", scope: !977, file: !97, line: 849, type: !990)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!991 = !DILocalVariable(name: "lc_messages", scope: !977, file: !97, line: 861, type: !137)
!992 = !DILocalVariable(name: "url_program", scope: !977, file: !97, line: 874, type: !137)
!993 = !DILocation(line: 0, scope: !977, inlinedAt: !994)
!994 = distinct !DILocation(line: 330, column: 7, scope: !961)
!995 = !{}
!996 = !DILocation(line: 857, column: 3, scope: !977, inlinedAt: !994)
!997 = !DILocation(line: 861, column: 29, scope: !977, inlinedAt: !994)
!998 = !DILocation(line: 862, column: 7, scope: !999, inlinedAt: !994)
!999 = distinct !DILexicalBlock(scope: !977, file: !97, line: 862, column: 7)
!1000 = !DILocation(line: 862, column: 19, scope: !999, inlinedAt: !994)
!1001 = !DILocation(line: 862, column: 22, scope: !999, inlinedAt: !994)
!1002 = !DILocation(line: 862, column: 7, scope: !977, inlinedAt: !994)
!1003 = !DILocation(line: 868, column: 7, scope: !1004, inlinedAt: !994)
!1004 = distinct !DILexicalBlock(scope: !999, file: !97, line: 863, column: 5)
!1005 = !DILocation(line: 870, column: 5, scope: !1004, inlinedAt: !994)
!1006 = !DILocation(line: 875, column: 3, scope: !977, inlinedAt: !994)
!1007 = !DILocation(line: 877, column: 3, scope: !977, inlinedAt: !994)
!1008 = !DILocation(line: 332, column: 3, scope: !947)
!1009 = !DISubprogram(name: "dcgettext", scope: !1010, file: !1010, line: 51, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1010 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!125, !137, !137, !105}
!1013 = !DISubprogram(name: "__fprintf_chk", scope: !1014, file: !1014, line: 93, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1014 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!105, !1017, !105, !1018, null}
!1017 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !226)
!1018 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !137)
!1019 = !DISubprogram(name: "__printf_chk", scope: !1014, file: !1014, line: 95, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!105, !105, !1018, null}
!1022 = !DISubprogram(name: "fputs_unlocked", scope: !500, file: !500, line: 691, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!105, !1018, !1017}
!1025 = !DILocation(line: 0, scope: !204)
!1026 = !DILocation(line: 581, column: 7, scope: !212)
!1027 = !{!1028, !1028, i64 0}
!1028 = !{!"int", !958, i64 0}
!1029 = !DILocation(line: 581, column: 19, scope: !212)
!1030 = !DILocation(line: 581, column: 7, scope: !204)
!1031 = !DILocation(line: 585, column: 26, scope: !211)
!1032 = !DILocation(line: 0, scope: !211)
!1033 = !DILocation(line: 586, column: 23, scope: !211)
!1034 = !DILocation(line: 586, column: 28, scope: !211)
!1035 = !DILocation(line: 586, column: 32, scope: !211)
!1036 = !{!958, !958, i64 0}
!1037 = !DILocation(line: 586, column: 38, scope: !211)
!1038 = !DILocalVariable(name: "__s1", arg: 1, scope: !1039, file: !1040, line: 1359, type: !137)
!1039 = distinct !DISubprogram(name: "streq", scope: !1040, file: !1040, line: 1359, type: !1041, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1043)
!1040 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!190, !137, !137}
!1043 = !{!1038, !1044}
!1044 = !DILocalVariable(name: "__s2", arg: 2, scope: !1039, file: !1040, line: 1359, type: !137)
!1045 = !DILocation(line: 0, scope: !1039, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 586, column: 41, scope: !211)
!1047 = !DILocation(line: 1361, column: 11, scope: !1039, inlinedAt: !1046)
!1048 = !DILocation(line: 1361, column: 10, scope: !1039, inlinedAt: !1046)
!1049 = !DILocation(line: 586, column: 19, scope: !211)
!1050 = !DILocation(line: 587, column: 5, scope: !211)
!1051 = !DILocation(line: 588, column: 7, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !204, file: !97, line: 588, column: 7)
!1053 = !DILocation(line: 588, column: 7, scope: !204)
!1054 = !DILocation(line: 590, column: 7, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1052, file: !97, line: 589, column: 5)
!1056 = !DILocation(line: 591, column: 7, scope: !1055)
!1057 = !DILocation(line: 595, column: 37, scope: !204)
!1058 = !DILocation(line: 595, column: 35, scope: !204)
!1059 = !DILocation(line: 596, column: 29, scope: !204)
!1060 = !DILocation(line: 597, column: 8, scope: !219)
!1061 = !DILocation(line: 597, column: 7, scope: !204)
!1062 = !DILocation(line: 604, column: 24, scope: !218)
!1063 = !DILocation(line: 604, column: 12, scope: !219)
!1064 = !DILocation(line: 0, scope: !217)
!1065 = !DILocation(line: 610, column: 16, scope: !217)
!1066 = !DILocation(line: 610, column: 7, scope: !217)
!1067 = !DILocation(line: 611, column: 21, scope: !217)
!1068 = !{!1069, !1069, i64 0}
!1069 = !{!"short", !958, i64 0}
!1070 = !DILocation(line: 611, column: 19, scope: !217)
!1071 = !DILocation(line: 611, column: 16, scope: !217)
!1072 = !DILocation(line: 610, column: 30, scope: !217)
!1073 = distinct !{!1073, !1066, !1067, !1074}
!1074 = !{!"llvm.loop.mustprogress"}
!1075 = !DILocation(line: 612, column: 18, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !217, file: !97, line: 612, column: 11)
!1077 = !DILocation(line: 612, column: 11, scope: !217)
!1078 = !DILocation(line: 620, column: 23, scope: !204)
!1079 = !DILocation(line: 625, column: 39, scope: !204)
!1080 = !DILocation(line: 626, column: 3, scope: !204)
!1081 = !DILocation(line: 626, column: 10, scope: !204)
!1082 = !DILocation(line: 626, column: 21, scope: !204)
!1083 = !DILocation(line: 628, column: 44, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !97, line: 628, column: 11)
!1085 = distinct !DILexicalBlock(scope: !204, file: !97, line: 627, column: 5)
!1086 = !DILocation(line: 628, column: 32, scope: !1084)
!1087 = !DILocation(line: 628, column: 49, scope: !1084)
!1088 = !DILocation(line: 628, column: 11, scope: !1085)
!1089 = !DILocation(line: 630, column: 11, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1085, file: !97, line: 630, column: 11)
!1091 = !DILocation(line: 630, column: 11, scope: !1085)
!1092 = !DILocation(line: 632, column: 26, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !97, line: 632, column: 15)
!1094 = distinct !DILexicalBlock(scope: !1090, file: !97, line: 631, column: 9)
!1095 = !DILocation(line: 632, column: 34, scope: !1093)
!1096 = !DILocation(line: 632, column: 37, scope: !1093)
!1097 = !DILocation(line: 632, column: 15, scope: !1094)
!1098 = !DILocation(line: 640, column: 16, scope: !1085)
!1099 = distinct !{!1099, !1080, !1100, !1074}
!1100 = !DILocation(line: 641, column: 5, scope: !204)
!1101 = !DILocation(line: 644, column: 3, scope: !204)
!1102 = !DILocation(line: 0, scope: !1039, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 648, column: 31, scope: !204)
!1104 = !DILocation(line: 0, scope: !1039, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 649, column: 31, scope: !204)
!1106 = !DILocation(line: 0, scope: !1039, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 650, column: 31, scope: !204)
!1108 = !DILocation(line: 0, scope: !1039, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 651, column: 31, scope: !204)
!1110 = !DILocation(line: 0, scope: !1039, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 652, column: 31, scope: !204)
!1112 = !DILocation(line: 0, scope: !1039, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 653, column: 31, scope: !204)
!1114 = !DILocation(line: 0, scope: !1039, inlinedAt: !1115)
!1115 = distinct !DILocation(line: 654, column: 31, scope: !204)
!1116 = !DILocation(line: 0, scope: !1039, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 655, column: 31, scope: !204)
!1118 = !DILocation(line: 0, scope: !1039, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 656, column: 31, scope: !204)
!1120 = !DILocation(line: 0, scope: !1039, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 657, column: 31, scope: !204)
!1122 = !DILocation(line: 663, column: 7, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !204, file: !97, line: 663, column: 7)
!1124 = !DILocation(line: 664, column: 7, scope: !1123)
!1125 = !DILocation(line: 664, column: 10, scope: !1123)
!1126 = !DILocation(line: 663, column: 7, scope: !204)
!1127 = !DILocation(line: 669, column: 7, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1123, file: !97, line: 665, column: 5)
!1129 = !DILocation(line: 671, column: 5, scope: !1128)
!1130 = !DILocation(line: 676, column: 7, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1123, file: !97, line: 673, column: 5)
!1132 = !DILocation(line: 679, column: 3, scope: !204)
!1133 = !DILocation(line: 683, column: 3, scope: !204)
!1134 = !DILocation(line: 686, column: 3, scope: !204)
!1135 = !DILocation(line: 688, column: 3, scope: !204)
!1136 = !DILocation(line: 691, column: 3, scope: !204)
!1137 = !DILocation(line: 695, column: 3, scope: !204)
!1138 = !DILocation(line: 696, column: 1, scope: !204)
!1139 = !DISubprogram(name: "setlocale", scope: !1140, file: !1140, line: 122, type: !1141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1140 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!125, !105, !137}
!1143 = !DISubprogram(name: "strncmp", scope: !1144, file: !1144, line: 159, type: !1145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1144 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!105, !137, !137, !134}
!1147 = !DISubprogram(name: "exit", scope: !1148, file: !1148, line: 624, type: !130, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1148 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1149 = !DISubprogram(name: "getenv", scope: !1148, file: !1148, line: 641, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!125, !137}
!1152 = !DISubprogram(name: "strcmp", scope: !1144, file: !1144, line: 156, type: !1153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!105, !137, !137}
!1155 = !DISubprogram(name: "strspn", scope: !1144, file: !1144, line: 297, type: !1156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!136, !137, !137}
!1158 = !DISubprogram(name: "strchr", scope: !1144, file: !1144, line: 246, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!125, !137, !105}
!1161 = !DISubprogram(name: "__ctype_b_loc", scope: !110, file: !110, line: 79, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!1164}
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!1165 = !DISubprogram(name: "strcspn", scope: !1144, file: !1144, line: 293, type: !1156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1166 = !DISubprogram(name: "fwrite_unlocked", scope: !500, file: !500, line: 704, type: !1167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!134, !1169, !134, !134, !1017}
!1169 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1170)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1172 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 508, type: !1173, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1176)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!105, !105, !1175}
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1190, !1191, !1195, !1197, !1198}
!1177 = !DILocalVariable(name: "argc", arg: 1, scope: !1172, file: !2, line: 508, type: !105)
!1178 = !DILocalVariable(name: "argv", arg: 2, scope: !1172, file: !2, line: 508, type: !1175)
!1179 = !DILocalVariable(name: "timeout", scope: !1172, file: !2, line: 510, type: !187)
!1180 = !DILocalVariable(name: "c", scope: !1172, file: !2, line: 511, type: !105)
!1181 = !DILocalVariable(name: "orig_set", scope: !1172, file: !2, line: 586, type: !1182)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1183, line: 7, baseType: !1184)
!1183 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "c2b978aaf49d5c0e2b1e9c2e1b7f7848")
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !1185, line: 8, baseType: !1186)
!1185 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "acc6b14c0967857fec362a8d433e1cf2")
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1185, line: 5, size: 1024, elements: !1187)
!1187 = !{!1188}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !1186, file: !1185, line: 7, baseType: !1189, size: 1024)
!1189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 1024, elements: !363)
!1190 = !DILocalVariable(name: "timeout_pid", scope: !1172, file: !2, line: 593, type: !181)
!1191 = !DILocalVariable(name: "exit_status", scope: !1192, file: !2, line: 632, type: !105)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 607, column: 5)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 606, column: 12)
!1194 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 601, column: 7)
!1195 = !DILocalVariable(name: "wait_result", scope: !1196, file: !2, line: 638, type: !181)
!1196 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 637, column: 5)
!1197 = !DILocalVariable(name: "status", scope: !1196, file: !2, line: 639, type: !105)
!1198 = !DILocalVariable(name: "sig", scope: !1199, file: !2, line: 662, type: !105)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 661, column: 13)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 660, column: 20)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 658, column: 15)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 657, column: 9)
!1203 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 650, column: 11)
!1204 = distinct !DIAssignID()
!1205 = distinct !DIAssignID()
!1206 = distinct !DIAssignID()
!1207 = distinct !DIAssignID()
!1208 = distinct !DIAssignID()
!1209 = distinct !DIAssignID()
!1210 = distinct !DIAssignID()
!1211 = distinct !DIAssignID()
!1212 = !DILocation(line: 0, scope: !1172)
!1213 = distinct !DIAssignID()
!1214 = !DILocation(line: 0, scope: !1196)
!1215 = !DILocation(line: 514, column: 21, scope: !1172)
!1216 = !DILocation(line: 514, column: 3, scope: !1172)
!1217 = !DILocation(line: 515, column: 3, scope: !1172)
!1218 = !DILocation(line: 516, column: 3, scope: !1172)
!1219 = !DILocation(line: 517, column: 3, scope: !1172)
!1220 = !DILocalVariable(name: "status", arg: 1, scope: !1221, file: !97, line: 102, type: !105)
!1221 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !97, file: !97, line: 102, type: !130, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1222)
!1222 = !{!1220}
!1223 = !DILocation(line: 0, scope: !1221, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 519, column: 3, scope: !1172)
!1225 = !DILocation(line: 105, column: 18, scope: !1226, inlinedAt: !1224)
!1226 = distinct !DILexicalBlock(scope: !1221, file: !97, line: 104, column: 7)
!1227 = !DILocation(line: 520, column: 3, scope: !1172)
!1228 = !DILocation(line: 522, column: 3, scope: !1172)
!1229 = !DILocation(line: 522, column: 15, scope: !1172)
!1230 = !DILocation(line: 528, column: 22, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 526, column: 9)
!1232 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 524, column: 5)
!1233 = !DILocation(line: 529, column: 11, scope: !1231)
!1234 = !DILocation(line: 532, column: 40, scope: !1231)
!1235 = !DILocation(line: 532, column: 24, scope: !1231)
!1236 = !DILocation(line: 532, column: 22, scope: !1231)
!1237 = !{!1238, !1238, i64 0}
!1238 = !{!"double", !958, i64 0}
!1239 = !DILocation(line: 533, column: 11, scope: !1231)
!1240 = !DILocation(line: 536, column: 27, scope: !1231)
!1241 = !DILocation(line: 537, column: 11, scope: !1231)
!1242 = !DILocation(line: 540, column: 38, scope: !1231)
!1243 = !DILocation(line: 540, column: 25, scope: !1231)
!1244 = !DILocation(line: 540, column: 23, scope: !1231)
!1245 = !DILocation(line: 541, column: 27, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1231, file: !2, line: 541, column: 15)
!1247 = !DILocation(line: 541, column: 15, scope: !1231)
!1248 = distinct !{!1248, !1228, !1249, !1074}
!1249 = !DILocation(line: 557, column: 5, scope: !1172)
!1250 = !DILocation(line: 542, column: 13, scope: !1246)
!1251 = !DILocation(line: 546, column: 19, scope: !1231)
!1252 = !DILocation(line: 547, column: 11, scope: !1231)
!1253 = !DILocation(line: 549, column: 9, scope: !1231)
!1254 = !DILocation(line: 551, column: 9, scope: !1231)
!1255 = !DILocation(line: 554, column: 11, scope: !1231)
!1256 = !DILocation(line: 559, column: 14, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 559, column: 7)
!1258 = !DILocation(line: 559, column: 12, scope: !1257)
!1259 = !DILocation(line: 559, column: 21, scope: !1257)
!1260 = !DILocation(line: 559, column: 7, scope: !1172)
!1261 = !DILocation(line: 560, column: 5, scope: !1257)
!1262 = !DILocation(line: 562, column: 40, scope: !1172)
!1263 = !DILocation(line: 562, column: 29, scope: !1172)
!1264 = !DILocation(line: 562, column: 13, scope: !1172)
!1265 = !DILocation(line: 564, column: 11, scope: !1172)
!1266 = !DILocation(line: 564, column: 8, scope: !1172)
!1267 = !DILocation(line: 565, column: 13, scope: !1172)
!1268 = !DILocation(line: 565, column: 11, scope: !1172)
!1269 = !DILocation(line: 571, column: 8, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 571, column: 7)
!1271 = !DILocation(line: 571, column: 7, scope: !1172)
!1272 = !DILocation(line: 572, column: 5, scope: !1270)
!1273 = !DILocation(line: 576, column: 20, scope: !1172)
!1274 = !DILocalVariable(name: "sa", scope: !1275, file: !2, line: 439, type: !1282)
!1275 = distinct !DISubprogram(name: "install_cleanup", scope: !2, file: !2, line: 437, type: !130, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1276)
!1276 = !{!1277, !1274, !1278, !1280}
!1277 = !DILocalVariable(name: "sigterm", arg: 1, scope: !1275, file: !2, line: 437, type: !105)
!1278 = !DILocalVariable(name: "i", scope: !1279, file: !2, line: 445, type: !105)
!1279 = distinct !DILexicalBlock(scope: !1275, file: !2, line: 445, column: 3)
!1280 = !DILocalVariable(name: "s", scope: !1281, file: !2, line: 450, type: !105)
!1281 = distinct !DILexicalBlock(scope: !1275, file: !2, line: 450, column: 3)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1283, line: 27, size: 1216, elements: !1284)
!1283 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/sigaction.h", directory: "", checksumkind: CSK_MD5, checksum: "95401d18e887df415f59d7a2cb411c28")
!1284 = !{!1285, !1366, !1367, !1368}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !1282, file: !1283, line: 38, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1282, file: !1283, line: 31, size: 64, elements: !1287)
!1287 = !{!1288, !1289}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1286, file: !1283, line: 34, baseType: !127, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !1286, file: !1283, line: 36, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{null, !105, !1293, !126}
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !1295, line: 124, baseType: !1296)
!1295 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/siginfo_t.h", directory: "", checksumkind: CSK_MD5, checksum: "023cf7b0ef843da262cf07900eda0ac5")
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1295, line: 36, size: 1024, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1301, !1302}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1296, file: !1295, line: 38, baseType: !105, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1296, file: !1295, line: 40, baseType: !105, size: 32, offset: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1296, file: !1295, line: 42, baseType: !105, size: 32, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1296, file: !1295, line: 48, baseType: !105, size: 32, offset: 96)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1296, file: !1295, line: 123, baseType: !1303, size: 896, offset: 128)
!1303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1296, file: !1295, line: 51, size: 896, elements: !1304)
!1304 = !{!1305, !1307, !1313, !1325, !1331, !1340, !1355, !1360}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !1303, file: !1295, line: 53, baseType: !1306, size: 896)
!1306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 896, elements: !739)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1303, file: !1295, line: 60, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1303, file: !1295, line: 56, size: 64, elements: !1309)
!1309 = !{!1310, !1311}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1308, file: !1295, line: 58, baseType: !183, size: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1308, file: !1295, line: 59, baseType: !1312, size: 32, offset: 32)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !184, line: 146, baseType: !98)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1303, file: !1295, line: 68, baseType: !1314, size: 128)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1303, file: !1295, line: 63, size: 128, elements: !1315)
!1315 = !{!1316, !1317, !1318}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !1314, file: !1295, line: 65, baseType: !105, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !1314, file: !1295, line: 66, baseType: !105, size: 32, offset: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1314, file: !1295, line: 67, baseType: !1319, size: 64, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigval_t", file: !1320, line: 30, baseType: !1321)
!1320 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__sigval_t.h", directory: "", checksumkind: CSK_MD5, checksum: "bc7605d16e396c16f725f8da13f6eb20")
!1321 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1320, line: 24, size: 64, elements: !1322)
!1322 = !{!1323, !1324}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1321, file: !1320, line: 26, baseType: !105, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1321, file: !1320, line: 27, baseType: !126, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1303, file: !1295, line: 76, baseType: !1326, size: 128)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1303, file: !1295, line: 71, size: 128, elements: !1327)
!1327 = !{!1328, !1329, !1330}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1326, file: !1295, line: 73, baseType: !183, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1326, file: !1295, line: 74, baseType: !1312, size: 32, offset: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1326, file: !1295, line: 75, baseType: !1319, size: 64, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1303, file: !1295, line: 86, baseType: !1332, size: 256)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1303, file: !1295, line: 79, size: 256, elements: !1333)
!1333 = !{!1334, !1335, !1336, !1337, !1339}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1332, file: !1295, line: 81, baseType: !183, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1332, file: !1295, line: 82, baseType: !1312, size: 32, offset: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !1332, file: !1295, line: 83, baseType: !105, size: 32, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !1332, file: !1295, line: 84, baseType: !1338, size: 64, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !184, line: 156, baseType: !253)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !1332, file: !1295, line: 85, baseType: !1338, size: 64, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1303, file: !1295, line: 105, baseType: !1341, size: 256)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1303, file: !1295, line: 89, size: 256, elements: !1342)
!1342 = !{!1343, !1344, !1346}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !1341, file: !1295, line: 91, baseType: !126, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !1341, file: !1295, line: 93, baseType: !1345, size: 16, offset: 64)
!1345 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_bounds", scope: !1341, file: !1295, line: 104, baseType: !1347, size: 128, offset: 128)
!1347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1341, file: !1295, line: 94, size: 128, elements: !1348)
!1348 = !{!1349, !1354}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1347, file: !1295, line: 101, baseType: !1350, size: 128)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1347, file: !1295, line: 97, size: 128, elements: !1351)
!1351 = !{!1352, !1353}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1350, file: !1295, line: 99, baseType: !126, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1350, file: !1295, line: 100, baseType: !126, size: 64, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1347, file: !1295, line: 103, baseType: !565, size: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1303, file: !1295, line: 112, baseType: !1356, size: 128)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1303, file: !1295, line: 108, size: 128, elements: !1357)
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !1356, file: !1295, line: 110, baseType: !253, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !1356, file: !1295, line: 111, baseType: !105, size: 32, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1303, file: !1295, line: 121, baseType: !1361, size: 128)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1303, file: !1295, line: 116, size: 128, elements: !1362)
!1362 = !{!1363, !1364, !1365}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1361, file: !1295, line: 118, baseType: !126, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1361, file: !1295, line: 119, baseType: !105, size: 32, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1361, file: !1295, line: 120, baseType: !98, size: 32, offset: 96)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1282, file: !1283, line: 46, baseType: !1184, size: 1024, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1282, file: !1283, line: 49, baseType: !105, size: 32, offset: 1088)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1282, file: !1283, line: 52, baseType: !536, size: 64, offset: 1152)
!1369 = !DILocation(line: 0, scope: !1275, inlinedAt: !1370)
!1370 = distinct !DILocation(line: 576, column: 3, scope: !1172)
!1371 = !DILocation(line: 439, column: 3, scope: !1275, inlinedAt: !1370)
!1372 = !DILocation(line: 440, column: 20, scope: !1275, inlinedAt: !1370)
!1373 = !DILocation(line: 440, column: 3, scope: !1275, inlinedAt: !1370)
!1374 = !DILocation(line: 441, column: 17, scope: !1275, inlinedAt: !1370)
!1375 = distinct !DIAssignID()
!1376 = !DILocation(line: 442, column: 6, scope: !1275, inlinedAt: !1370)
!1377 = !DILocation(line: 442, column: 15, scope: !1275, inlinedAt: !1370)
!1378 = !{!1379, !1028, i64 136}
!1379 = !{!"sigaction", !958, i64 0, !1380, i64 8, !1028, i64 136, !957, i64 144}
!1380 = !{!"", !958, i64 0}
!1381 = distinct !DIAssignID()
!1382 = !DILocation(line: 0, scope: !1279, inlinedAt: !1370)
!1383 = !DILocalVariable(name: "old_sa", scope: !1384, file: !2, line: 430, type: !1282)
!1384 = distinct !DISubprogram(name: "sig_needs_handling", scope: !2, file: !2, line: 422, type: !1385, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1387)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!190, !105, !105}
!1387 = !{!1388, !1389, !1383, !1390}
!1388 = !DILocalVariable(name: "sig", arg: 1, scope: !1384, file: !2, line: 422, type: !105)
!1389 = !DILocalVariable(name: "sigterm", arg: 2, scope: !1384, file: !2, line: 422, type: !105)
!1390 = !DILocalVariable(name: "ret", scope: !1384, file: !2, line: 432, type: !190)
!1391 = !DILocation(line: 0, scope: !1384, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 446, column: 9, scope: !1393, inlinedAt: !1370)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !2, line: 446, column: 9)
!1394 = distinct !DILexicalBlock(scope: !1279, file: !2, line: 445, column: 3)
!1395 = !DILocation(line: 447, column: 7, scope: !1393, inlinedAt: !1370)
!1396 = !DILocation(line: 445, column: 3, scope: !1279, inlinedAt: !1370)
!1397 = !DILocation(line: 450, column: 16, scope: !1281, inlinedAt: !1370)
!1398 = !DILocation(line: 0, scope: !1281, inlinedAt: !1370)
!1399 = !DILocation(line: 450, column: 31, scope: !1400, inlinedAt: !1370)
!1400 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 450, column: 3)
!1401 = !DILocation(line: 450, column: 28, scope: !1400, inlinedAt: !1370)
!1402 = !DILocation(line: 450, column: 3, scope: !1281, inlinedAt: !1370)
!1403 = !DILocation(line: 446, column: 29, scope: !1393, inlinedAt: !1370)
!1404 = !DILocation(line: 424, column: 22, scope: !1405, inlinedAt: !1392)
!1405 = distinct !DILexicalBlock(scope: !1384, file: !2, line: 424, column: 7)
!1406 = !DILocation(line: 430, column: 3, scope: !1384, inlinedAt: !1392)
!1407 = !DILocation(line: 431, column: 3, scope: !1384, inlinedAt: !1392)
!1408 = !DILocation(line: 432, column: 21, scope: !1384, inlinedAt: !1392)
!1409 = !DILocation(line: 432, column: 32, scope: !1384, inlinedAt: !1392)
!1410 = !DILocation(line: 434, column: 1, scope: !1384, inlinedAt: !1392)
!1411 = !DILocation(line: 446, column: 9, scope: !1394, inlinedAt: !1370)
!1412 = !DILocation(line: 445, column: 44, scope: !1394, inlinedAt: !1370)
!1413 = !DILocation(line: 445, column: 21, scope: !1394, inlinedAt: !1370)
!1414 = distinct !{!1414, !1396, !1415, !1074, !1416}
!1415 = !DILocation(line: 447, column: 40, scope: !1279, inlinedAt: !1370)
!1416 = !{!"llvm.loop.peeled.count", i32 1}
!1417 = !DILocation(line: 0, scope: !1384, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 451, column: 9, scope: !1419, inlinedAt: !1370)
!1419 = distinct !DILexicalBlock(scope: !1400, file: !2, line: 451, column: 9)
!1420 = !DILocation(line: 424, column: 11, scope: !1405, inlinedAt: !1418)
!1421 = !DILocation(line: 424, column: 22, scope: !1405, inlinedAt: !1418)
!1422 = !DILocation(line: 430, column: 3, scope: !1384, inlinedAt: !1418)
!1423 = !DILocation(line: 431, column: 3, scope: !1384, inlinedAt: !1418)
!1424 = !DILocation(line: 432, column: 21, scope: !1384, inlinedAt: !1418)
!1425 = !DILocation(line: 432, column: 32, scope: !1384, inlinedAt: !1418)
!1426 = !DILocation(line: 434, column: 1, scope: !1384, inlinedAt: !1418)
!1427 = !DILocation(line: 451, column: 9, scope: !1400, inlinedAt: !1370)
!1428 = !DILocation(line: 452, column: 7, scope: !1419, inlinedAt: !1370)
!1429 = !DILocation(line: 450, column: 42, scope: !1400, inlinedAt: !1370)
!1430 = distinct !{!1430, !1402, !1431, !1074}
!1431 = !DILocation(line: 452, column: 30, scope: !1281, inlinedAt: !1370)
!1432 = !DILocation(line: 454, column: 3, scope: !1275, inlinedAt: !1370)
!1433 = !DILocation(line: 455, column: 1, scope: !1275, inlinedAt: !1370)
!1434 = !DILocation(line: 577, column: 3, scope: !1172)
!1435 = !DILocation(line: 578, column: 3, scope: !1172)
!1436 = !DILocalVariable(name: "sa", scope: !1437, file: !2, line: 406, type: !1282)
!1437 = distinct !DISubprogram(name: "install_sigchld", scope: !2, file: !2, line: 404, type: !537, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1438)
!1438 = !{!1436}
!1439 = !DILocation(line: 0, scope: !1437, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 579, column: 3, scope: !1172)
!1441 = !DILocation(line: 406, column: 3, scope: !1437, inlinedAt: !1440)
!1442 = !DILocation(line: 407, column: 20, scope: !1437, inlinedAt: !1440)
!1443 = !DILocation(line: 407, column: 3, scope: !1437, inlinedAt: !1440)
!1444 = !DILocation(line: 408, column: 17, scope: !1437, inlinedAt: !1440)
!1445 = distinct !DIAssignID()
!1446 = !DILocation(line: 409, column: 6, scope: !1437, inlinedAt: !1440)
!1447 = !DILocation(line: 409, column: 15, scope: !1437, inlinedAt: !1440)
!1448 = distinct !DIAssignID()
!1449 = !DILocation(line: 412, column: 3, scope: !1437, inlinedAt: !1440)
!1450 = !DILocation(line: 416, column: 3, scope: !1437, inlinedAt: !1440)
!1451 = !DILocation(line: 417, column: 1, scope: !1437, inlinedAt: !1440)
!1452 = !DILocation(line: 583, column: 3, scope: !1172)
!1453 = !DILocation(line: 586, column: 3, scope: !1172)
!1454 = !DILocation(line: 587, column: 27, scope: !1172)
!1455 = !DILocalVariable(name: "block_set", scope: !1456, file: !2, line: 465, type: !1182)
!1456 = distinct !DISubprogram(name: "block_cleanup_and_chld", scope: !2, file: !2, line: 463, type: !1457, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1460)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{null, !105, !1459}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1460 = !{!1461, !1462, !1455, !1463, !1465}
!1461 = !DILocalVariable(name: "sigterm", arg: 1, scope: !1456, file: !2, line: 463, type: !105)
!1462 = !DILocalVariable(name: "old_set", arg: 2, scope: !1456, file: !2, line: 463, type: !1459)
!1463 = !DILocalVariable(name: "i", scope: !1464, file: !2, line: 468, type: !105)
!1464 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 468, column: 3)
!1465 = !DILocalVariable(name: "s", scope: !1466, file: !2, line: 472, type: !105)
!1466 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 472, column: 3)
!1467 = !DILocation(line: 0, scope: !1456, inlinedAt: !1468)
!1468 = distinct !DILocation(line: 587, column: 3, scope: !1172)
!1469 = !DILocation(line: 465, column: 3, scope: !1456, inlinedAt: !1468)
!1470 = !DILocation(line: 466, column: 3, scope: !1456, inlinedAt: !1468)
!1471 = !DILocation(line: 0, scope: !1464, inlinedAt: !1468)
!1472 = !DILocation(line: 0, scope: !1384, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 469, column: 9, scope: !1474, inlinedAt: !1468)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !2, line: 469, column: 9)
!1475 = distinct !DILexicalBlock(scope: !1464, file: !2, line: 468, column: 3)
!1476 = !DILocation(line: 470, column: 7, scope: !1474, inlinedAt: !1468)
!1477 = !DILocation(line: 468, column: 3, scope: !1464, inlinedAt: !1468)
!1478 = !DILocation(line: 472, column: 16, scope: !1466, inlinedAt: !1468)
!1479 = !DILocation(line: 0, scope: !1466, inlinedAt: !1468)
!1480 = !DILocation(line: 472, column: 31, scope: !1481, inlinedAt: !1468)
!1481 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 472, column: 3)
!1482 = !DILocation(line: 472, column: 28, scope: !1481, inlinedAt: !1468)
!1483 = !DILocation(line: 472, column: 3, scope: !1466, inlinedAt: !1468)
!1484 = !DILocation(line: 469, column: 29, scope: !1474, inlinedAt: !1468)
!1485 = !DILocation(line: 424, column: 22, scope: !1405, inlinedAt: !1473)
!1486 = !DILocation(line: 430, column: 3, scope: !1384, inlinedAt: !1473)
!1487 = !DILocation(line: 431, column: 3, scope: !1384, inlinedAt: !1473)
!1488 = !DILocation(line: 432, column: 21, scope: !1384, inlinedAt: !1473)
!1489 = !DILocation(line: 432, column: 32, scope: !1384, inlinedAt: !1473)
!1490 = !DILocation(line: 434, column: 1, scope: !1384, inlinedAt: !1473)
!1491 = !DILocation(line: 469, column: 9, scope: !1475, inlinedAt: !1468)
!1492 = !DILocation(line: 468, column: 44, scope: !1475, inlinedAt: !1468)
!1493 = !DILocation(line: 468, column: 21, scope: !1475, inlinedAt: !1468)
!1494 = distinct !{!1494, !1477, !1495, !1074, !1416}
!1495 = !DILocation(line: 470, column: 41, scope: !1464, inlinedAt: !1468)
!1496 = !DILocation(line: 476, column: 3, scope: !1456, inlinedAt: !1468)
!1497 = !DILocation(line: 478, column: 3, scope: !1456, inlinedAt: !1468)
!1498 = !DILocation(line: 480, column: 7, scope: !1499, inlinedAt: !1468)
!1499 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 480, column: 7)
!1500 = !DILocation(line: 480, column: 52, scope: !1499, inlinedAt: !1468)
!1501 = !DILocation(line: 480, column: 7, scope: !1456, inlinedAt: !1468)
!1502 = !DILocation(line: 0, scope: !1384, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 473, column: 9, scope: !1504, inlinedAt: !1468)
!1504 = distinct !DILexicalBlock(scope: !1481, file: !2, line: 473, column: 9)
!1505 = !DILocation(line: 424, column: 11, scope: !1405, inlinedAt: !1503)
!1506 = !DILocation(line: 424, column: 22, scope: !1405, inlinedAt: !1503)
!1507 = !DILocation(line: 430, column: 3, scope: !1384, inlinedAt: !1503)
!1508 = !DILocation(line: 431, column: 3, scope: !1384, inlinedAt: !1503)
!1509 = !DILocation(line: 432, column: 21, scope: !1384, inlinedAt: !1503)
!1510 = !DILocation(line: 432, column: 32, scope: !1384, inlinedAt: !1503)
!1511 = !DILocation(line: 434, column: 1, scope: !1384, inlinedAt: !1503)
!1512 = !DILocation(line: 473, column: 9, scope: !1481, inlinedAt: !1468)
!1513 = !DILocation(line: 474, column: 7, scope: !1504, inlinedAt: !1468)
!1514 = !DILocation(line: 472, column: 42, scope: !1481, inlinedAt: !1468)
!1515 = distinct !{!1515, !1483, !1516, !1074}
!1516 = !DILocation(line: 474, column: 31, scope: !1466, inlinedAt: !1468)
!1517 = !DILocation(line: 481, column: 5, scope: !1499, inlinedAt: !1468)
!1518 = !DILocation(line: 482, column: 1, scope: !1456, inlinedAt: !1468)
!1519 = !DILocation(line: 593, column: 23, scope: !1172)
!1520 = !DILocation(line: 600, column: 19, scope: !1172)
!1521 = !DILocation(line: 600, column: 17, scope: !1172)
!1522 = !DILocation(line: 601, column: 7, scope: !1172)
!1523 = !DILocation(line: 603, column: 7, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 602, column: 5)
!1525 = !DILocation(line: 604, column: 7, scope: !1524)
!1526 = !DILocation(line: 610, column: 32, scope: !1192)
!1527 = !DILocation(line: 610, column: 7, scope: !1192)
!1528 = !DILocation(line: 615, column: 11, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 615, column: 11)
!1530 = !DILocation(line: 615, column: 22, scope: !1529)
!1531 = !DILocation(line: 615, column: 11, scope: !1192)
!1532 = !DILocation(line: 619, column: 11, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 619, column: 11)
!1534 = !DILocation(line: 619, column: 54, scope: !1533)
!1535 = !DILocation(line: 619, column: 11, scope: !1192)
!1536 = !DILocation(line: 621, column: 11, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1533, file: !2, line: 620, column: 9)
!1538 = !DILocation(line: 622, column: 11, scope: !1537)
!1539 = !DILocation(line: 626, column: 7, scope: !1192)
!1540 = !DILocation(line: 627, column: 7, scope: !1192)
!1541 = !DILocation(line: 629, column: 15, scope: !1192)
!1542 = !DILocation(line: 629, column: 7, scope: !1192)
!1543 = !DILocation(line: 632, column: 25, scope: !1192)
!1544 = !DILocation(line: 632, column: 31, scope: !1192)
!1545 = !DILocation(line: 0, scope: !1192)
!1546 = !DILocation(line: 633, column: 7, scope: !1192)
!1547 = !DILocation(line: 639, column: 7, scope: !1196)
!1548 = !DILocation(line: 641, column: 7, scope: !1196)
!1549 = !DILocation(line: 647, column: 38, scope: !1196)
!1550 = !DILocation(line: 647, column: 29, scope: !1196)
!1551 = !DILocation(line: 647, column: 72, scope: !1196)
!1552 = !DILocation(line: 647, column: 7, scope: !1196)
!1553 = !DILocation(line: 648, column: 9, scope: !1196)
!1554 = distinct !{!1554, !1552, !1555, !1074}
!1555 = !DILocation(line: 648, column: 30, scope: !1196)
!1556 = !DILocation(line: 650, column: 23, scope: !1203)
!1557 = !DILocation(line: 650, column: 11, scope: !1196)
!1558 = !DILocation(line: 653, column: 11, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 651, column: 9)
!1560 = distinct !DIAssignID()
!1561 = !DILocation(line: 655, column: 9, scope: !1559)
!1562 = !DILocation(line: 658, column: 15, scope: !1201)
!1563 = !DILocation(line: 658, column: 15, scope: !1202)
!1564 = distinct !DIAssignID()
!1565 = !DILocation(line: 659, column: 13, scope: !1201)
!1566 = !DILocation(line: 660, column: 20, scope: !1200)
!1567 = !DILocation(line: 660, column: 20, scope: !1201)
!1568 = !DILocation(line: 0, scope: !1199)
!1569 = !DILocation(line: 663, column: 19, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 663, column: 19)
!1571 = !DILocation(line: 663, column: 19, scope: !1199)
!1572 = !DILocation(line: 664, column: 17, scope: !1570)
!1573 = !DILocation(line: 665, column: 20, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 665, column: 19)
!1575 = !DILocation(line: 665, column: 30, scope: !1574)
!1576 = !DILocation(line: 490, column: 7, scope: !1577, inlinedAt: !1581)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !2, line: 490, column: 7)
!1578 = distinct !DISubprogram(name: "disable_core_dumps", scope: !2, file: !2, line: 487, type: !1579, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!190}
!1581 = distinct !DILocation(line: 665, column: 33, scope: !1574)
!1582 = !DILocation(line: 490, column: 34, scope: !1577, inlinedAt: !1581)
!1583 = !DILocation(line: 490, column: 7, scope: !1578, inlinedAt: !1581)
!1584 = !DILocation(line: 503, column: 3, scope: !1578, inlinedAt: !1581)
!1585 = !DILocation(line: 665, column: 19, scope: !1199)
!1586 = !DILocation(line: 668, column: 19, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1574, file: !2, line: 666, column: 17)
!1588 = !DILocation(line: 669, column: 19, scope: !1587)
!1589 = !DILocation(line: 670, column: 19, scope: !1587)
!1590 = !DILocation(line: 671, column: 17, scope: !1587)
!1591 = !DILocation(line: 675, column: 19, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 675, column: 19)
!1593 = !DILocation(line: 675, column: 29, scope: !1592)
!1594 = !DILocation(line: 676, column: 33, scope: !1592)
!1595 = !DILocation(line: 676, column: 17, scope: !1592)
!1596 = !DILocation(line: 677, column: 28, scope: !1199)
!1597 = distinct !DIAssignID()
!1598 = !DILocation(line: 678, column: 13, scope: !1199)
!1599 = !DILocation(line: 682, column: 15, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 680, column: 13)
!1601 = distinct !DIAssignID()
!1602 = !DILocation(line: 687, column: 11, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 687, column: 11)
!1604 = !DILocation(line: 687, column: 21, scope: !1603)
!1605 = !DILocation(line: 690, column: 5, scope: !1193)
!1606 = !DILocation(line: 0, scope: !1194)
!1607 = !DILocation(line: 691, column: 1, scope: !1172)
!1608 = !DISubprogram(name: "bindtextdomain", scope: !1010, file: !1010, line: 86, type: !1609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!125, !137, !137}
!1611 = !DISubprogram(name: "textdomain", scope: !1010, file: !1010, line: 82, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1612 = !DISubprogram(name: "atexit", scope: !1148, file: !1148, line: 602, type: !1613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!105, !536}
!1615 = !DISubprogram(name: "getopt_long", scope: !447, file: !447, line: 66, type: !1616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!105, !105, !1618, !137, !1620, !452}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!1621 = distinct !DISubprogram(name: "parse_duration", scope: !2, file: !2, line: 371, type: !1622, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1624)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!187, !137}
!1624 = !{!1625, !1626, !1627, !1628}
!1625 = !DILocalVariable(name: "str", arg: 1, scope: !1621, file: !2, line: 371, type: !137)
!1626 = !DILocalVariable(name: "ep", scope: !1621, file: !2, line: 373, type: !125)
!1627 = !DILocalVariable(name: "duration", scope: !1621, file: !2, line: 375, type: !187)
!1628 = !DILocalVariable(name: "s", scope: !1621, file: !2, line: 376, type: !187)
!1629 = distinct !DIAssignID()
!1630 = !DILocation(line: 0, scope: !1621)
!1631 = !DILocation(line: 373, column: 3, scope: !1621)
!1632 = !DILocation(line: 374, column: 3, scope: !1621)
!1633 = !DILocation(line: 374, column: 9, scope: !1621)
!1634 = !DILocation(line: 375, column: 21, scope: !1621)
!1635 = !DILocation(line: 376, column: 41, scope: !1621)
!1636 = !DILocalVariable(name: "c", arg: 1, scope: !1637, file: !1638, line: 54, type: !187)
!1637 = distinct !DISubprogram(name: "dtimespec_bound", scope: !1638, file: !1638, line: 54, type: !1639, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1641)
!1638 = !DIFile(filename: "./lib/dtimespec-bound.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1c1d0447ed5234421679b9baaf454c86")
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!187, !187, !105}
!1641 = !{!1636, !1642, !1643}
!1642 = !DILocalVariable(name: "err", arg: 2, scope: !1637, file: !1638, line: 54, type: !105)
!1643 = !DILocalVariable(name: "phi", scope: !1637, file: !1638, line: 70, type: !187)
!1644 = !DILocation(line: 0, scope: !1637, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 376, column: 14, scope: !1621)
!1646 = !DILocation(line: 60, column: 11, scope: !1647, inlinedAt: !1645)
!1647 = distinct !DILexicalBlock(scope: !1637, file: !1638, line: 60, column: 7)
!1648 = !DILocation(line: 60, column: 21, scope: !1647, inlinedAt: !1645)
!1649 = !DILocation(line: 378, column: 7, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1621, file: !2, line: 378, column: 7)
!1651 = !DILocation(line: 378, column: 10, scope: !1650)
!1652 = !DILocation(line: 380, column: 7, scope: !1650)
!1653 = !DILocation(line: 382, column: 11, scope: !1650)
!1654 = !DILocation(line: 382, column: 15, scope: !1650)
!1655 = !DILocation(line: 382, column: 23, scope: !1650)
!1656 = !DILocation(line: 382, column: 18, scope: !1650)
!1657 = !DILocation(line: 384, column: 7, scope: !1650)
!1658 = !DILocalVariable(name: "x", arg: 1, scope: !1659, file: !2, line: 342, type: !1662)
!1659 = distinct !DISubprogram(name: "apply_time_suffix", scope: !2, file: !2, line: 342, type: !1660, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1663)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!190, !1662, !4}
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!1663 = !{!1658, !1664, !1665}
!1664 = !DILocalVariable(name: "suffix_char", arg: 2, scope: !1659, file: !2, line: 342, type: !4)
!1665 = !DILocalVariable(name: "multiplier", scope: !1659, file: !2, line: 344, type: !105)
!1666 = !DILocation(line: 0, scope: !1659, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 384, column: 11, scope: !1650)
!1668 = !DILocation(line: 346, column: 3, scope: !1659, inlinedAt: !1667)
!1669 = !DILocation(line: 354, column: 7, scope: !1670, inlinedAt: !1667)
!1670 = distinct !DILexicalBlock(scope: !1659, file: !2, line: 347, column: 5)
!1671 = !DILocation(line: 357, column: 7, scope: !1670, inlinedAt: !1667)
!1672 = !DILocation(line: 360, column: 7, scope: !1670, inlinedAt: !1667)
!1673 = !DILocation(line: 386, column: 7, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1650, file: !2, line: 385, column: 5)
!1675 = !DILocation(line: 387, column: 7, scope: !1674)
!1676 = !DILocation(line: 0, scope: !1670, inlinedAt: !1667)
!1677 = !DILocation(line: 365, column: 28, scope: !1659, inlinedAt: !1667)
!1678 = !DILocation(line: 0, scope: !1637, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 365, column: 8, scope: !1659, inlinedAt: !1667)
!1680 = !DILocation(line: 60, column: 21, scope: !1647, inlinedAt: !1679)
!1681 = !DILocation(line: 391, column: 1, scope: !1621)
!1682 = !DILocation(line: 390, column: 3, scope: !1621)
!1683 = !DISubprogram(name: "setpgid", scope: !1684, file: !1684, line: 668, type: !1685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1684 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!105, !183, !183}
!1687 = !DISubprogram(name: "sigemptyset", scope: !128, file: !128, line: 199, type: !1688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!105, !1459}
!1690 = distinct !DISubprogram(name: "cleanup", scope: !2, file: !2, line: 204, type: !130, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1691)
!1691 = !{!1692, !1693, !1698}
!1692 = !DILocalVariable(name: "sig", arg: 1, scope: !1690, file: !2, line: 204, type: !105)
!1693 = !DILocalVariable(name: "saved_errno", scope: !1694, file: !2, line: 221, type: !105)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !2, line: 220, column: 9)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !2, line: 219, column: 11)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !2, line: 218, column: 5)
!1697 = distinct !DILexicalBlock(scope: !1690, file: !2, line: 217, column: 7)
!1698 = !DILocalVariable(name: "signame", scope: !1699, file: !2, line: 234, type: !461)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !2, line: 233, column: 9)
!1700 = distinct !DILexicalBlock(scope: !1696, file: !2, line: 232, column: 11)
!1701 = distinct !DIAssignID()
!1702 = !DILocation(line: 0, scope: !1699)
!1703 = !DILocation(line: 0, scope: !1690)
!1704 = !DILocation(line: 206, column: 11, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1690, file: !2, line: 206, column: 7)
!1706 = !DILocation(line: 206, column: 7, scope: !1690)
!1707 = !DILocation(line: 208, column: 17, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1705, file: !2, line: 207, column: 5)
!1709 = !DILocation(line: 0, scope: !1221, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 214, column: 7, scope: !1708)
!1711 = !DILocation(line: 105, column: 18, scope: !1226, inlinedAt: !1710)
!1712 = !DILocation(line: 215, column: 13, scope: !1708)
!1713 = !DILocation(line: 216, column: 5, scope: !1708)
!1714 = !DILocation(line: 217, column: 11, scope: !1697)
!1715 = !DILocation(line: 217, column: 9, scope: !1697)
!1716 = !DILocation(line: 217, column: 7, scope: !1690)
!1717 = !DILocation(line: 219, column: 11, scope: !1695)
!1718 = !DILocation(line: 219, column: 11, scope: !1696)
!1719 = !DILocation(line: 221, column: 29, scope: !1694)
!1720 = !DILocation(line: 0, scope: !1694)
!1721 = !DILocation(line: 223, column: 23, scope: !1694)
!1722 = !DILocation(line: 224, column: 11, scope: !1694)
!1723 = !DILocation(line: 225, column: 22, scope: !1694)
!1724 = !DILocation(line: 226, column: 17, scope: !1694)
!1725 = !DILocation(line: 227, column: 9, scope: !1694)
!1726 = !DILocation(line: 232, column: 11, scope: !1700)
!1727 = !DILocation(line: 232, column: 11, scope: !1696)
!1728 = !DILocation(line: 234, column: 11, scope: !1699)
!1729 = !DILocation(line: 235, column: 19, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1699, file: !2, line: 235, column: 15)
!1731 = !DILocation(line: 235, column: 24, scope: !1730)
!1732 = !DILocation(line: 235, column: 27, scope: !1730)
!1733 = !DILocation(line: 235, column: 50, scope: !1730)
!1734 = !DILocation(line: 235, column: 15, scope: !1699)
!1735 = !DILocation(line: 236, column: 13, scope: !1730)
!1736 = !DILocation(line: 237, column: 11, scope: !1699)
!1737 = !DILocation(line: 239, column: 9, scope: !1700)
!1738 = !DILocation(line: 239, column: 9, scope: !1699)
!1739 = !DILocation(line: 240, column: 17, scope: !1696)
!1740 = !DILocalVariable(name: "where", arg: 1, scope: !1741, file: !2, line: 182, type: !181)
!1741 = distinct !DISubprogram(name: "send_sig", scope: !2, file: !2, line: 182, type: !1742, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1744)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!105, !181, !105}
!1744 = !{!1740, !1745}
!1745 = !DILocalVariable(name: "sig", arg: 2, scope: !1741, file: !2, line: 182, type: !105)
!1746 = !DILocation(line: 0, scope: !1741, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 240, column: 7, scope: !1696)
!1748 = !DILocation(line: 191, column: 13, scope: !1749, inlinedAt: !1747)
!1749 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 191, column: 7)
!1750 = !DILocation(line: 191, column: 7, scope: !1741, inlinedAt: !1747)
!1751 = !DILocation(line: 192, column: 5, scope: !1749, inlinedAt: !1747)
!1752 = !DILocation(line: 193, column: 10, scope: !1741, inlinedAt: !1747)
!1753 = !DILocation(line: 244, column: 12, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1696, file: !2, line: 244, column: 11)
!1755 = !DILocation(line: 244, column: 11, scope: !1696)
!1756 = !DILocation(line: 0, scope: !1741, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 246, column: 11, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1754, file: !2, line: 245, column: 9)
!1759 = !DILocation(line: 192, column: 5, scope: !1749, inlinedAt: !1757)
!1760 = !DILocation(line: 193, column: 10, scope: !1741, inlinedAt: !1757)
!1761 = !DILocation(line: 247, column: 30, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1758, file: !2, line: 247, column: 15)
!1763 = !DILocation(line: 249, column: 25, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 248, column: 13)
!1765 = !DILocation(line: 0, scope: !1741, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 249, column: 15, scope: !1764)
!1767 = !DILocation(line: 191, column: 13, scope: !1749, inlinedAt: !1766)
!1768 = !DILocation(line: 191, column: 7, scope: !1741, inlinedAt: !1766)
!1769 = !DILocation(line: 192, column: 5, scope: !1749, inlinedAt: !1766)
!1770 = !DILocation(line: 193, column: 10, scope: !1741, inlinedAt: !1766)
!1771 = !DILocation(line: 0, scope: !1741, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 250, column: 15, scope: !1764)
!1773 = !DILocation(line: 192, column: 5, scope: !1749, inlinedAt: !1772)
!1774 = !DILocation(line: 193, column: 10, scope: !1741, inlinedAt: !1772)
!1775 = !DILocation(line: 251, column: 13, scope: !1764)
!1776 = !DILocation(line: 254, column: 26, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1697, file: !2, line: 254, column: 12)
!1778 = !DILocation(line: 254, column: 12, scope: !1697)
!1779 = !DILocation(line: 259, column: 18, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1777, file: !2, line: 258, column: 5)
!1781 = !DILocation(line: 259, column: 7, scope: !1780)
!1782 = !DILocation(line: 261, column: 1, scope: !1690)
!1783 = !DISubprogram(name: "sigaction", scope: !128, file: !128, line: 243, type: !1784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!105, !105, !1786, !1789}
!1786 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1787)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1282)
!1789 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1790)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1791 = !DISubprogram(name: "__libc_current_sigrtmin", scope: !128, file: !128, line: 383, type: !1792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!105}
!1794 = !DISubprogram(name: "__libc_current_sigrtmax", scope: !128, file: !128, line: 385, type: !1792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1795 = !DISubprogram(name: "signal", scope: !128, file: !128, line: 88, type: !1796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!127, !105, !127}
!1798 = distinct !DISubprogram(name: "chld", scope: !2, file: !2, line: 199, type: !130, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1799)
!1799 = !{!1800}
!1800 = !DILocalVariable(name: "sig", arg: 1, scope: !1798, file: !2, line: 199, type: !105)
!1801 = !DILocation(line: 0, scope: !1798)
!1802 = !DILocation(line: 201, column: 1, scope: !1798)
!1803 = distinct !DISubprogram(name: "unblock_signal", scope: !2, file: !2, line: 394, type: !130, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1804)
!1804 = !{!1805, !1806}
!1805 = !DILocalVariable(name: "sig", arg: 1, scope: !1803, file: !2, line: 394, type: !105)
!1806 = !DILocalVariable(name: "unblock_set", scope: !1803, file: !2, line: 396, type: !1182)
!1807 = distinct !DIAssignID()
!1808 = !DILocation(line: 0, scope: !1803)
!1809 = !DILocation(line: 396, column: 3, scope: !1803)
!1810 = !DILocation(line: 397, column: 3, scope: !1803)
!1811 = !DILocation(line: 398, column: 3, scope: !1803)
!1812 = !DILocation(line: 399, column: 7, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1803, file: !2, line: 399, column: 7)
!1814 = !DILocation(line: 399, column: 53, scope: !1813)
!1815 = !DILocation(line: 399, column: 7, scope: !1803)
!1816 = !DILocation(line: 400, column: 5, scope: !1813)
!1817 = !DILocation(line: 401, column: 1, scope: !1803)
!1818 = !DISubprogram(name: "sigaddset", scope: !128, file: !128, line: 205, type: !1819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!105, !1459, !105}
!1821 = !DISubprogram(name: "sigprocmask", scope: !128, file: !128, line: 232, type: !1822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!105, !105, !1824, !1827}
!1824 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1825)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1182)
!1827 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1459)
!1828 = !DISubprogram(name: "__errno_location", scope: !1829, file: !1829, line: 37, type: !1830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1829 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!452}
!1832 = !DISubprogram(name: "getpid", scope: !1684, file: !1684, line: 650, type: !1833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!183}
!1835 = !DISubprogram(name: "fork", scope: !1684, file: !1684, line: 778, type: !1833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1836 = !DISubprogram(name: "prctl", scope: !1837, file: !1837, line: 42, type: !1838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1837 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/prctl.h", directory: "", checksumkind: CSK_MD5, checksum: "03df3307493f4e984a818e48f1f1ebd0")
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!105, !105, null}
!1840 = !DISubprogram(name: "getppid", scope: !1684, file: !1684, line: 653, type: !1833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1841 = !DISubprogram(name: "execvp", scope: !1684, file: !1684, line: 599, type: !1842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!105, !137, !1618}
!1844 = distinct !DISubprogram(name: "settimeout", scope: !2, file: !2, line: 115, type: !1845, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1847)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{null, !187, !190}
!1847 = !{!1848, !1849, !1850, !1857, !1863, !1867, !1868}
!1848 = !DILocalVariable(name: "duration", arg: 1, scope: !1844, file: !2, line: 115, type: !187)
!1849 = !DILocalVariable(name: "warn", arg: 2, scope: !1844, file: !2, line: 115, type: !190)
!1850 = !DILocalVariable(name: "ts", scope: !1844, file: !2, line: 121, type: !1851)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1852, line: 11, size: 128, elements: !1853)
!1852 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1853 = !{!1854, !1855}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1851, file: !1852, line: 16, baseType: !875, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1851, file: !1852, line: 21, baseType: !1856, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !184, line: 197, baseType: !253)
!1857 = !DILocalVariable(name: "its", scope: !1844, file: !2, line: 122, type: !1858)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "itimerspec", file: !1859, line: 8, size: 256, elements: !1860)
!1859 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_itimerspec.h", directory: "", checksumkind: CSK_MD5, checksum: "dfcd7ec63e6a27775d5c6dbba8655c7d")
!1860 = !{!1861, !1862}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "it_interval", scope: !1858, file: !1859, line: 10, baseType: !1851, size: 128)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "it_value", scope: !1858, file: !1859, line: 11, baseType: !1851, size: 128, offset: 128)
!1863 = !DILocalVariable(name: "timerid", scope: !1844, file: !2, line: 123, type: !1864)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "timer_t", file: !1865, line: 7, baseType: !1866)
!1865 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/timer_t.h", directory: "", checksumkind: CSK_MD5, checksum: "b257b0db40a7b7cec2ff2d7c51baed44")
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__timer_t", file: !184, line: 172, baseType: !126)
!1867 = !DILocalVariable(name: "timeint", scope: !1844, file: !2, line: 168, type: !98)
!1868 = !DILocalVariable(name: "duration_floor", scope: !1869, file: !2, line: 173, type: !98)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !2, line: 172, column: 5)
!1870 = distinct !DILexicalBlock(scope: !1844, file: !2, line: 169, column: 7)
!1871 = distinct !DIAssignID()
!1872 = !DILocation(line: 0, scope: !1844)
!1873 = distinct !DIAssignID()
!1874 = !DILocation(line: 121, column: 24, scope: !1844)
!1875 = !DILocation(line: 122, column: 3, scope: !1844)
!1876 = distinct !DIAssignID()
!1877 = !DILocation(line: 122, column: 27, scope: !1844)
!1878 = !DILocation(line: 122, column: 43, scope: !1844)
!1879 = !DILocation(line: 122, column: 60, scope: !1844)
!1880 = !{i64 0, i64 8, !1881, i64 8, i64 8, !1881}
!1881 = !{!1882, !1882, i64 0}
!1882 = !{!"long", !958, i64 0}
!1883 = distinct !DIAssignID()
!1884 = !{i64 0, i64 8, !1881}
!1885 = distinct !DIAssignID()
!1886 = !DILocation(line: 123, column: 3, scope: !1844)
!1887 = !DILocation(line: 124, column: 7, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1844, file: !2, line: 124, column: 7)
!1889 = !DILocation(line: 124, column: 53, scope: !1888)
!1890 = !DILocation(line: 124, column: 7, scope: !1844)
!1891 = !DILocation(line: 126, column: 26, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !2, line: 126, column: 11)
!1893 = distinct !DILexicalBlock(scope: !1888, file: !2, line: 125, column: 5)
!1894 = !DILocation(line: 126, column: 11, scope: !1892)
!1895 = !DILocation(line: 126, column: 50, scope: !1892)
!1896 = !DILocation(line: 126, column: 11, scope: !1893)
!1897 = !DILocation(line: 130, column: 15, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1892, file: !2, line: 129, column: 9)
!1899 = !DILocation(line: 131, column: 13, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1898, file: !2, line: 130, column: 15)
!1901 = !DILocation(line: 132, column: 25, scope: !1898)
!1902 = !DILocation(line: 132, column: 11, scope: !1898)
!1903 = !DILocation(line: 134, column: 5, scope: !1893)
!1904 = !DILocation(line: 135, column: 17, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1888, file: !2, line: 135, column: 12)
!1906 = !DILocation(line: 135, column: 20, scope: !1905)
!1907 = !DILocation(line: 135, column: 26, scope: !1905)
!1908 = !DILocation(line: 135, column: 12, scope: !1888)
!1909 = !DILocation(line: 136, column: 5, scope: !1905)
!1910 = !DILocation(line: 169, column: 16, scope: !1870)
!1911 = !DILocation(line: 169, column: 7, scope: !1844)
!1912 = !DILocation(line: 173, column: 37, scope: !1869)
!1913 = !DILocation(line: 0, scope: !1869)
!1914 = !DILocation(line: 174, column: 35, scope: !1869)
!1915 = !DILocation(line: 174, column: 50, scope: !1869)
!1916 = !DILocation(line: 174, column: 32, scope: !1869)
!1917 = !DILocation(line: 0, scope: !1870)
!1918 = !DILocation(line: 176, column: 3, scope: !1844)
!1919 = !DILocation(line: 177, column: 1, scope: !1844)
!1920 = !DISubprogram(name: "waitpid", scope: !1921, file: !1921, line: 111, type: !1922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1921 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/wait.h", directory: "", checksumkind: CSK_MD5, checksum: "f653fe63e16922d44e1c6e15caa2acb6")
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!183, !183, !452, !105}
!1924 = !DISubprogram(name: "sigsuspend", scope: !128, file: !128, line: 240, type: !1925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!105, !1825}
!1927 = !DISubprogram(name: "raise", scope: !128, file: !128, line: 123, type: !1928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!105, !105}
!1930 = !DISubprogram(name: "timer_create", scope: !1931, file: !1931, line: 331, type: !1932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1931 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!105, !1934, !1937, !1969}
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !1935, line: 7, baseType: !1936)
!1935 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/clockid_t.h", directory: "", checksumkind: CSK_MD5, checksum: "099a80153c2ad48bc7f5f4a188cb6d24")
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clockid_t", file: !184, line: 169, baseType: !105)
!1937 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1938)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigevent", file: !1940, line: 22, size: 512, elements: !1941)
!1940 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/sigevent_t.h", directory: "", checksumkind: CSK_MD5, checksum: "816c6e661f14523d03101a714ce8e208")
!1941 = !{!1942, !1943, !1944, !1945}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_value", scope: !1939, file: !1940, line: 24, baseType: !1319, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_signo", scope: !1939, file: !1940, line: 25, baseType: !105, size: 32, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_notify", scope: !1939, file: !1940, line: 26, baseType: !105, size: 32, offset: 96)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_sigev_un", scope: !1939, file: !1940, line: 41, baseType: !1946, size: 384, offset: 128)
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1939, file: !1940, line: 28, size: 384, elements: !1947)
!1947 = !{!1948, !1950, !1951}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !1946, file: !1940, line: 30, baseType: !1949, size: 384)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 384, elements: !392)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1946, file: !1940, line: 34, baseType: !183, size: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_sigev_thread", scope: !1946, file: !1940, line: 40, baseType: !1952, size: 128)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1946, file: !1940, line: 36, size: 128, elements: !1953)
!1953 = !{!1954, !1958}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_function", scope: !1952, file: !1940, line: 38, baseType: !1955, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{null, !1319}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_attribute", scope: !1952, file: !1940, line: 39, baseType: !1959, size: 64, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !1961, line: 62, baseType: !1962)
!1961 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!1962 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !1961, line: 56, size: 512, elements: !1963)
!1963 = !{!1964, !1968}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1962, file: !1961, line: 58, baseType: !1965, size: 512)
!1965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1966)
!1966 = !{!1967}
!1967 = !DISubrange(count: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1962, file: !1961, line: 59, baseType: !253, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1970)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1971 = !DISubprogram(name: "timer_settime", scope: !1931, file: !1931, line: 340, type: !1972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!105, !1864, !105, !1974, !1977}
!1974 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1975)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1858)
!1977 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1978)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1979 = !DISubprogram(name: "timer_delete", scope: !1931, file: !1931, line: 336, type: !1980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!105, !1864}
!1982 = !DISubprogram(name: "alarm", scope: !1684, file: !1684, line: 452, type: !1983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!98, !98}
!1985 = !DISubprogram(name: "__builtin___snprintf_chk", scope: !2, file: !2, line: 236, type: !1986, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!105, !1988, !136, !105, !136, !1018, null}
!1988 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !125)
!1989 = !DISubprogram(name: "kill", scope: !128, file: !128, line: 112, type: !1990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!105, !183, !105}
!1992 = !DISubprogram(name: "_exit", scope: !1684, file: !1684, line: 624, type: !130, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1993 = distinct !DISubprogram(name: "operand2sig", scope: !460, file: !460, line: 36, type: !1994, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !1996)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!105, !137}
!1996 = !{!1997, !1998, !1999, !2002, !2003, !2004, !2006}
!1997 = !DILocalVariable(name: "operand", arg: 1, scope: !1993, file: !460, line: 36, type: !137)
!1998 = !DILocalVariable(name: "signum", scope: !1993, file: !460, line: 38, type: !105)
!1999 = !DILocalVariable(name: "endp", scope: !2000, file: !460, line: 53, type: !125)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !460, line: 41, column: 5)
!2001 = distinct !DILexicalBlock(scope: !1993, file: !460, line: 40, column: 7)
!2002 = !DILocalVariable(name: "l", scope: !2000, file: !460, line: 54, type: !253)
!2003 = !DILocalVariable(name: "i", scope: !2000, file: !460, line: 55, type: !105)
!2004 = !DILocalVariable(name: "upcased", scope: !2005, file: !460, line: 70, type: !125)
!2005 = distinct !DILexicalBlock(scope: !2001, file: !460, line: 67, column: 5)
!2006 = !DILocalVariable(name: "p", scope: !2007, file: !460, line: 71, type: !125)
!2007 = distinct !DILexicalBlock(scope: !2005, file: !460, line: 71, column: 7)
!2008 = distinct !DIAssignID()
!2009 = !DILocation(line: 0, scope: !1993)
!2010 = distinct !DIAssignID()
!2011 = !DILocation(line: 0, scope: !2000)
!2012 = !DILocation(line: 38, column: 3, scope: !1993)
!2013 = !DILocation(line: 40, column: 18, scope: !2001)
!2014 = !DILocalVariable(name: "c", arg: 1, scope: !2015, file: !2016, line: 233, type: !105)
!2015 = distinct !DISubprogram(name: "c_isdigit", scope: !2016, file: !2016, line: 233, type: !2017, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !2019)
!2016 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!190, !105}
!2019 = !{!2014}
!2020 = !DILocation(line: 0, scope: !2015, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 40, column: 7, scope: !2001)
!2022 = !DILocation(line: 235, column: 3, scope: !2015, inlinedAt: !2021)
!2023 = !DILocation(line: 40, column: 7, scope: !1993)
!2024 = !DILocation(line: 53, column: 7, scope: !2000)
!2025 = !DILocation(line: 54, column: 21, scope: !2000)
!2026 = !DILocation(line: 54, column: 27, scope: !2000)
!2027 = !DILocation(line: 54, column: 32, scope: !2000)
!2028 = !DILocation(line: 55, column: 15, scope: !2000)
!2029 = !DILocation(line: 56, column: 28, scope: !2000)
!2030 = !DILocation(line: 56, column: 25, scope: !2000)
!2031 = !DILocation(line: 56, column: 33, scope: !2000)
!2032 = !DILocation(line: 56, column: 36, scope: !2000)
!2033 = !DILocation(line: 56, column: 42, scope: !2000)
!2034 = !DILocation(line: 56, column: 45, scope: !2000)
!2035 = !DILocation(line: 56, column: 51, scope: !2000)
!2036 = distinct !DIAssignID()
!2037 = !DILocation(line: 58, column: 11, scope: !2000)
!2038 = !DILocation(line: 58, column: 18, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2000, file: !460, line: 58, column: 11)
!2040 = !DILocation(line: 65, column: 5, scope: !2001)
!2041 = !DILocation(line: 65, column: 5, scope: !2000)
!2042 = !DILocation(line: 70, column: 23, scope: !2005)
!2043 = !DILocation(line: 0, scope: !2005)
!2044 = !DILocation(line: 0, scope: !2007)
!2045 = !DILocation(line: 71, column: 31, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2007, file: !460, line: 71, column: 7)
!2047 = !DILocation(line: 71, column: 7, scope: !2007)
!2048 = !DILocation(line: 77, column: 13, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2005, file: !460, line: 77, column: 11)
!2050 = !DILocation(line: 77, column: 40, scope: !2049)
!2051 = !DILocation(line: 78, column: 13, scope: !2049)
!2052 = !DILocation(line: 72, column: 13, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2046, file: !460, line: 72, column: 13)
!2054 = !DILocation(line: 72, column: 13, scope: !2046)
!2055 = !DILocation(line: 73, column: 14, scope: !2053)
!2056 = !DILocation(line: 73, column: 11, scope: !2053)
!2057 = !DILocation(line: 71, column: 36, scope: !2046)
!2058 = distinct !{!2058, !2047, !2059, !1074}
!2059 = !DILocation(line: 73, column: 23, scope: !2007)
!2060 = !DILocation(line: 78, column: 17, scope: !2049)
!2061 = !DILocation(line: 78, column: 28, scope: !2049)
!2062 = !DILocation(line: 78, column: 35, scope: !2049)
!2063 = !DILocation(line: 78, column: 38, scope: !2049)
!2064 = !DILocation(line: 78, column: 49, scope: !2049)
!2065 = !DILocation(line: 78, column: 56, scope: !2049)
!2066 = !DILocation(line: 78, column: 59, scope: !2049)
!2067 = !DILocation(line: 78, column: 70, scope: !2049)
!2068 = !DILocation(line: 79, column: 17, scope: !2049)
!2069 = !DILocation(line: 79, column: 37, scope: !2049)
!2070 = !DILocation(line: 79, column: 20, scope: !2049)
!2071 = !DILocation(line: 79, column: 51, scope: !2049)
!2072 = !DILocation(line: 77, column: 11, scope: !2005)
!2073 = !DILocation(line: 80, column: 16, scope: !2049)
!2074 = distinct !DIAssignID()
!2075 = !DILocation(line: 80, column: 9, scope: !2049)
!2076 = !DILocation(line: 82, column: 7, scope: !2005)
!2077 = !DILocation(line: 85, column: 11, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1993, file: !460, line: 85, column: 7)
!2079 = !DILocation(line: 85, column: 18, scope: !2078)
!2080 = !DILocation(line: 87, column: 7, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2078, file: !460, line: 86, column: 5)
!2082 = !DILocation(line: 88, column: 7, scope: !2081)
!2083 = !DILocation(line: 92, column: 1, scope: !1993)
!2084 = !DISubprogram(name: "strtol", scope: !1148, file: !1148, line: 177, type: !2085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!253, !1018, !2087, !105}
!2087 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1175)
!2088 = !DISubprogram(name: "free", scope: !1148, file: !1148, line: 555, type: !2089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{null, !126}
!2091 = distinct !DISubprogram(name: "cl_strtod", scope: !864, file: !864, line: 59, type: !2092, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !863, retainedNodes: !2094)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!187, !137, !2087}
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2102, !2103}
!2095 = !DILocalVariable(name: "nptr", arg: 1, scope: !2091, file: !864, line: 59, type: !137)
!2096 = !DILocalVariable(name: "endptr", arg: 2, scope: !2091, file: !864, line: 59, type: !2087)
!2097 = !DILocalVariable(name: "end", scope: !2091, file: !864, line: 61, type: !125)
!2098 = !DILocalVariable(name: "d", scope: !2091, file: !864, line: 62, type: !187)
!2099 = !DILocalVariable(name: "strtod_errno", scope: !2100, file: !864, line: 65, type: !105)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !864, line: 64, column: 5)
!2101 = distinct !DILexicalBlock(scope: !2091, file: !864, line: 63, column: 7)
!2102 = !DILocalVariable(name: "c_end", scope: !2100, file: !864, line: 66, type: !125)
!2103 = !DILocalVariable(name: "c", scope: !2100, file: !864, line: 67, type: !187)
!2104 = distinct !DIAssignID()
!2105 = !DILocation(line: 0, scope: !2091)
!2106 = distinct !DIAssignID()
!2107 = !DILocation(line: 0, scope: !2100)
!2108 = !DILocation(line: 61, column: 3, scope: !2091)
!2109 = !DILocation(line: 62, column: 14, scope: !2091)
!2110 = !DILocation(line: 63, column: 8, scope: !2101)
!2111 = !DILocation(line: 63, column: 7, scope: !2101)
!2112 = !DILocation(line: 63, column: 7, scope: !2091)
!2113 = !DILocation(line: 65, column: 26, scope: !2100)
!2114 = !DILocation(line: 66, column: 7, scope: !2100)
!2115 = !DILocation(line: 67, column: 18, scope: !2100)
!2116 = !DILocation(line: 68, column: 17, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2100, file: !864, line: 68, column: 11)
!2118 = !DILocation(line: 68, column: 15, scope: !2117)
!2119 = !DILocation(line: 68, column: 11, scope: !2100)
!2120 = !DILocation(line: 71, column: 15, scope: !2117)
!2121 = !DILocation(line: 72, column: 5, scope: !2101)
!2122 = !DILocation(line: 72, column: 5, scope: !2100)
!2123 = !DILocation(line: 73, column: 7, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2091, file: !864, line: 73, column: 7)
!2125 = !DILocation(line: 73, column: 7, scope: !2091)
!2126 = !DILocation(line: 74, column: 13, scope: !2124)
!2127 = !DILocation(line: 74, column: 5, scope: !2124)
!2128 = !DILocation(line: 76, column: 1, scope: !2091)
!2129 = !DILocation(line: 75, column: 3, scope: !2091)
!2130 = !DISubprogram(name: "strtod", scope: !1148, file: !1148, line: 118, type: !2131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!187, !1018, !2087}
!2133 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !474, file: !474, line: 50, type: !978, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2134)
!2134 = !{!2135}
!2135 = !DILocalVariable(name: "file", arg: 1, scope: !2133, file: !474, line: 50, type: !137)
!2136 = !DILocation(line: 0, scope: !2133)
!2137 = !DILocation(line: 52, column: 13, scope: !2133)
!2138 = !DILocation(line: 53, column: 1, scope: !2133)
!2139 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !474, file: !474, line: 87, type: !2140, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2142)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !190}
!2142 = !{!2143}
!2143 = !DILocalVariable(name: "ignore", arg: 1, scope: !2139, file: !474, line: 87, type: !190)
!2144 = !DILocation(line: 0, scope: !2139)
!2145 = !DILocation(line: 89, column: 16, scope: !2139)
!2146 = !{!2147, !2147, i64 0}
!2147 = !{!"_Bool", !958, i64 0}
!2148 = !DILocation(line: 90, column: 1, scope: !2139)
!2149 = distinct !DISubprogram(name: "close_stdout", scope: !474, file: !474, line: 116, type: !537, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2150)
!2150 = !{!2151}
!2151 = !DILocalVariable(name: "write_error", scope: !2152, file: !474, line: 121, type: !137)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !474, line: 120, column: 5)
!2153 = distinct !DILexicalBlock(scope: !2149, file: !474, line: 118, column: 7)
!2154 = !DILocation(line: 118, column: 21, scope: !2153)
!2155 = !DILocation(line: 118, column: 7, scope: !2153)
!2156 = !DILocation(line: 118, column: 29, scope: !2153)
!2157 = !DILocation(line: 119, column: 7, scope: !2153)
!2158 = !DILocation(line: 119, column: 12, scope: !2153)
!2159 = !{i8 0, i8 2}
!2160 = !DILocation(line: 119, column: 25, scope: !2153)
!2161 = !DILocation(line: 119, column: 28, scope: !2153)
!2162 = !DILocation(line: 119, column: 34, scope: !2153)
!2163 = !DILocation(line: 118, column: 7, scope: !2149)
!2164 = !DILocation(line: 121, column: 33, scope: !2152)
!2165 = !DILocation(line: 0, scope: !2152)
!2166 = !DILocation(line: 122, column: 11, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2152, file: !474, line: 122, column: 11)
!2168 = !DILocation(line: 0, scope: !2167)
!2169 = !DILocation(line: 122, column: 11, scope: !2152)
!2170 = !DILocation(line: 123, column: 9, scope: !2167)
!2171 = !DILocation(line: 126, column: 9, scope: !2167)
!2172 = !DILocation(line: 128, column: 14, scope: !2152)
!2173 = !DILocation(line: 128, column: 7, scope: !2152)
!2174 = !DILocation(line: 133, column: 42, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2149, file: !474, line: 133, column: 7)
!2176 = !DILocation(line: 133, column: 28, scope: !2175)
!2177 = !DILocation(line: 133, column: 50, scope: !2175)
!2178 = !DILocation(line: 133, column: 7, scope: !2149)
!2179 = !DILocation(line: 134, column: 12, scope: !2175)
!2180 = !DILocation(line: 134, column: 5, scope: !2175)
!2181 = !DILocation(line: 135, column: 1, scope: !2149)
!2182 = distinct !DISubprogram(name: "dtotimespec", scope: !866, file: !866, line: 30, type: !2183, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !865, retainedNodes: !2189)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!2185, !187}
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1852, line: 11, size: 128, elements: !2186)
!2186 = !{!2187, !2188}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2185, file: !1852, line: 16, baseType: !875, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2185, file: !1852, line: 21, baseType: !1856, size: 64, offset: 64)
!2189 = !{!2190, !2191, !2195, !2196}
!2190 = !DILocalVariable(name: "sec", arg: 1, scope: !2182, file: !866, line: 30, type: !187)
!2191 = !DILocalVariable(name: "s", scope: !2192, file: !866, line: 38, type: !873)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !866, line: 37, column: 5)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !866, line: 34, column: 12)
!2194 = distinct !DILexicalBlock(scope: !2182, file: !866, line: 32, column: 7)
!2195 = !DILocalVariable(name: "frac", scope: !2192, file: !866, line: 39, type: !187)
!2196 = !DILocalVariable(name: "ns", scope: !2192, file: !866, line: 40, type: !253)
!2197 = !DILocation(line: 0, scope: !2182)
!2198 = !DILocation(line: 32, column: 32, scope: !2194)
!2199 = !DILocation(line: 32, column: 7, scope: !2182)
!2200 = !DILocation(line: 34, column: 19, scope: !2193)
!2201 = !DILocation(line: 34, column: 12, scope: !2194)
!2202 = !DILocation(line: 38, column: 18, scope: !2192)
!2203 = !DILocation(line: 0, scope: !2192)
!2204 = !DILocation(line: 39, column: 42, scope: !2192)
!2205 = !DILocation(line: 39, column: 40, scope: !2192)
!2206 = !DILocation(line: 39, column: 33, scope: !2192)
!2207 = !DILocation(line: 40, column: 17, scope: !2192)
!2208 = !DILocation(line: 41, column: 13, scope: !2192)
!2209 = !DILocation(line: 41, column: 16, scope: !2192)
!2210 = !DILocation(line: 41, column: 10, scope: !2192)
!2211 = !DILocation(line: 42, column: 15, scope: !2192)
!2212 = !DILocation(line: 42, column: 9, scope: !2192)
!2213 = !DILocation(line: 45, column: 14, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2192, file: !866, line: 45, column: 11)
!2215 = !DILocation(line: 45, column: 11, scope: !2192)
!2216 = !DILocalVariable(name: "s", arg: 1, scope: !2217, file: !869, line: 56, type: !873)
!2217 = distinct !DISubprogram(name: "make_timespec", scope: !869, file: !869, line: 56, type: !2218, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !865, retainedNodes: !2220)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!2185, !873, !253}
!2220 = !{!2216, !2221}
!2221 = !DILocalVariable(name: "ns", arg: 2, scope: !2217, file: !869, line: 56, type: !253)
!2222 = !DILocation(line: 0, scope: !2217, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 51, column: 14, scope: !2192)
!2224 = !DILocation(line: 58, column: 3, scope: !2217, inlinedAt: !2223)
!2225 = !DILocation(line: 53, column: 1, scope: !2182)
!2226 = distinct !DISubprogram(name: "verror", scope: !489, file: !489, line: 251, type: !2227, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2229)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{null, !105, !105, !137, !499}
!2229 = !{!2230, !2231, !2232, !2233}
!2230 = !DILocalVariable(name: "status", arg: 1, scope: !2226, file: !489, line: 251, type: !105)
!2231 = !DILocalVariable(name: "errnum", arg: 2, scope: !2226, file: !489, line: 251, type: !105)
!2232 = !DILocalVariable(name: "message", arg: 3, scope: !2226, file: !489, line: 251, type: !137)
!2233 = !DILocalVariable(name: "args", arg: 4, scope: !2226, file: !489, line: 251, type: !499)
!2234 = !DILocation(line: 0, scope: !2226)
!2235 = !DILocation(line: 261, column: 3, scope: !2226)
!2236 = !DILocation(line: 265, column: 7, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2226, file: !489, line: 265, column: 7)
!2238 = !DILocation(line: 265, column: 7, scope: !2226)
!2239 = !DILocation(line: 266, column: 5, scope: !2237)
!2240 = !DILocation(line: 272, column: 7, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !489, line: 268, column: 5)
!2242 = !DILocation(line: 276, column: 3, scope: !2226)
!2243 = !{i64 0, i64 8, !956, i64 8, i64 8, !956, i64 16, i64 8, !956, i64 24, i64 4, !1027, i64 28, i64 4, !1027}
!2244 = !DILocation(line: 282, column: 1, scope: !2226)
!2245 = distinct !DISubprogram(name: "flush_stdout", scope: !489, file: !489, line: 163, type: !537, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2246)
!2246 = !{!2247}
!2247 = !DILocalVariable(name: "stdout_fd", scope: !2245, file: !489, line: 166, type: !105)
!2248 = !DILocation(line: 0, scope: !2245)
!2249 = !DILocalVariable(name: "fd", arg: 1, scope: !2250, file: !489, line: 145, type: !105)
!2250 = distinct !DISubprogram(name: "is_open", scope: !489, file: !489, line: 145, type: !1928, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2251)
!2251 = !{!2249}
!2252 = !DILocation(line: 0, scope: !2250, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 182, column: 25, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2245, file: !489, line: 182, column: 7)
!2255 = !DILocation(line: 157, column: 15, scope: !2250, inlinedAt: !2253)
!2256 = !DILocation(line: 157, column: 12, scope: !2250, inlinedAt: !2253)
!2257 = !DILocation(line: 182, column: 7, scope: !2245)
!2258 = !DILocation(line: 184, column: 5, scope: !2254)
!2259 = !DILocation(line: 185, column: 1, scope: !2245)
!2260 = distinct !DISubprogram(name: "error_tail", scope: !489, file: !489, line: 219, type: !2227, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2261)
!2261 = !{!2262, !2263, !2264, !2265}
!2262 = !DILocalVariable(name: "status", arg: 1, scope: !2260, file: !489, line: 219, type: !105)
!2263 = !DILocalVariable(name: "errnum", arg: 2, scope: !2260, file: !489, line: 219, type: !105)
!2264 = !DILocalVariable(name: "message", arg: 3, scope: !2260, file: !489, line: 219, type: !137)
!2265 = !DILocalVariable(name: "args", arg: 4, scope: !2260, file: !489, line: 219, type: !499)
!2266 = distinct !DIAssignID()
!2267 = !DILocation(line: 0, scope: !2260)
!2268 = !DILocation(line: 229, column: 13, scope: !2260)
!2269 = !DILocation(line: 135, column: 10, scope: !2270, inlinedAt: !2312)
!2270 = distinct !DISubprogram(name: "vfprintf", scope: !1014, file: !1014, line: 132, type: !2271, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2308)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!105, !2273, !1018, !501}
!2273 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2274)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !2276)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !2277)
!2277 = !{!2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2276, file: !230, line: 51, baseType: !105, size: 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2276, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2276, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2276, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2276, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2276, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2276, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2276, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2276, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2276, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2276, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2276, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2276, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2276, file: !230, line: 70, baseType: !2292, size: 64, offset: 832)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2276, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2276, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2276, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2276, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2276, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2276, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2276, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2276, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2276, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2276, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2276, file: !230, line: 93, baseType: !2292, size: 64, offset: 1344)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2276, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2276, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2276, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2276, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!2308 = !{!2309, !2310, !2311}
!2309 = !DILocalVariable(name: "__stream", arg: 1, scope: !2270, file: !1014, line: 132, type: !2273)
!2310 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2270, file: !1014, line: 133, type: !1018)
!2311 = !DILocalVariable(name: "__ap", arg: 3, scope: !2270, file: !1014, line: 133, type: !501)
!2312 = distinct !DILocation(line: 229, column: 3, scope: !2260)
!2313 = !{!2314, !2316}
!2314 = distinct !{!2314, !2315, !"vfprintf.inline: argument 0"}
!2315 = distinct !{!2315, !"vfprintf.inline"}
!2316 = distinct !{!2316, !2315, !"vfprintf.inline: argument 1"}
!2317 = !DILocation(line: 229, column: 3, scope: !2260)
!2318 = !DILocation(line: 0, scope: !2270, inlinedAt: !2312)
!2319 = !DILocation(line: 232, column: 3, scope: !2260)
!2320 = !DILocation(line: 233, column: 7, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2260, file: !489, line: 233, column: 7)
!2322 = !DILocation(line: 233, column: 7, scope: !2260)
!2323 = !DILocalVariable(name: "errbuf", scope: !2324, file: !489, line: 193, type: !2328)
!2324 = distinct !DISubprogram(name: "print_errno_message", scope: !489, file: !489, line: 188, type: !130, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2325)
!2325 = !{!2326, !2327, !2323}
!2326 = !DILocalVariable(name: "errnum", arg: 1, scope: !2324, file: !489, line: 188, type: !105)
!2327 = !DILocalVariable(name: "s", scope: !2324, file: !489, line: 190, type: !137)
!2328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2329)
!2329 = !{!2330}
!2330 = !DISubrange(count: 1024)
!2331 = !DILocation(line: 0, scope: !2324, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 234, column: 5, scope: !2321)
!2333 = !DILocation(line: 193, column: 3, scope: !2324, inlinedAt: !2332)
!2334 = !DILocation(line: 195, column: 7, scope: !2324, inlinedAt: !2332)
!2335 = !DILocation(line: 207, column: 9, scope: !2336, inlinedAt: !2332)
!2336 = distinct !DILexicalBlock(scope: !2324, file: !489, line: 207, column: 7)
!2337 = !DILocation(line: 207, column: 7, scope: !2324, inlinedAt: !2332)
!2338 = !DILocation(line: 208, column: 9, scope: !2336, inlinedAt: !2332)
!2339 = !DILocation(line: 208, column: 5, scope: !2336, inlinedAt: !2332)
!2340 = !DILocation(line: 214, column: 3, scope: !2324, inlinedAt: !2332)
!2341 = !DILocation(line: 216, column: 1, scope: !2324, inlinedAt: !2332)
!2342 = !DILocation(line: 234, column: 5, scope: !2321)
!2343 = !DILocation(line: 238, column: 3, scope: !2260)
!2344 = !DILocalVariable(name: "__c", arg: 1, scope: !2345, file: !2346, line: 101, type: !105)
!2345 = distinct !DISubprogram(name: "putc_unlocked", scope: !2346, file: !2346, line: 101, type: !2347, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2349)
!2346 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!105, !105, !2274}
!2349 = !{!2344, !2350}
!2350 = !DILocalVariable(name: "__stream", arg: 2, scope: !2345, file: !2346, line: 101, type: !2274)
!2351 = !DILocation(line: 0, scope: !2345, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 238, column: 3, scope: !2260)
!2353 = !DILocation(line: 103, column: 10, scope: !2345, inlinedAt: !2352)
!2354 = !{!2355, !957, i64 40}
!2355 = !{!"_IO_FILE", !1028, i64 0, !957, i64 8, !957, i64 16, !957, i64 24, !957, i64 32, !957, i64 40, !957, i64 48, !957, i64 56, !957, i64 64, !957, i64 72, !957, i64 80, !957, i64 88, !957, i64 96, !957, i64 104, !1028, i64 112, !1028, i64 116, !1882, i64 120, !1069, i64 128, !958, i64 130, !958, i64 131, !957, i64 136, !1882, i64 144, !957, i64 152, !957, i64 160, !957, i64 168, !957, i64 176, !1882, i64 184, !1028, i64 192, !958, i64 196}
!2356 = !{!2355, !957, i64 48}
!2357 = !{!"branch_weights", i32 2000, i32 1}
!2358 = !DILocation(line: 240, column: 3, scope: !2260)
!2359 = !DILocation(line: 241, column: 7, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2260, file: !489, line: 241, column: 7)
!2361 = !DILocation(line: 241, column: 7, scope: !2260)
!2362 = !DILocation(line: 242, column: 5, scope: !2360)
!2363 = !DILocation(line: 243, column: 1, scope: !2260)
!2364 = !DISubprogram(name: "__vfprintf_chk", scope: !1014, file: !1014, line: 96, type: !2365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!105, !2273, !105, !1018, !501}
!2367 = !DISubprogram(name: "strerror_r", scope: !1144, file: !1144, line: 444, type: !2368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!125, !105, !125, !134}
!2370 = !DISubprogram(name: "__overflow", scope: !500, file: !500, line: 886, type: !2371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!105, !2274, !105}
!2373 = !DISubprogram(name: "fflush_unlocked", scope: !500, file: !500, line: 239, type: !2374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!105, !2274}
!2376 = !DISubprogram(name: "fcntl", scope: !2377, file: !2377, line: 149, type: !2378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2377 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!105, !105, !105, null}
!2380 = distinct !DISubprogram(name: "error", scope: !489, file: !489, line: 285, type: !2381, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2383)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{null, !105, !105, !137, null}
!2383 = !{!2384, !2385, !2386, !2387}
!2384 = !DILocalVariable(name: "status", arg: 1, scope: !2380, file: !489, line: 285, type: !105)
!2385 = !DILocalVariable(name: "errnum", arg: 2, scope: !2380, file: !489, line: 285, type: !105)
!2386 = !DILocalVariable(name: "message", arg: 3, scope: !2380, file: !489, line: 285, type: !137)
!2387 = !DILocalVariable(name: "ap", scope: !2380, file: !489, line: 287, type: !499)
!2388 = distinct !DIAssignID()
!2389 = !DILocation(line: 0, scope: !2380)
!2390 = !DILocation(line: 287, column: 3, scope: !2380)
!2391 = !DILocation(line: 288, column: 3, scope: !2380)
!2392 = !DILocation(line: 289, column: 3, scope: !2380)
!2393 = !DILocation(line: 290, column: 3, scope: !2380)
!2394 = !DILocation(line: 291, column: 1, scope: !2380)
!2395 = !DILocation(line: 0, scope: !496)
!2396 = !DILocation(line: 302, column: 7, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !496, file: !489, line: 302, column: 7)
!2398 = !DILocation(line: 302, column: 7, scope: !496)
!2399 = !DILocation(line: 307, column: 11, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !489, line: 307, column: 11)
!2401 = distinct !DILexicalBlock(scope: !2397, file: !489, line: 303, column: 5)
!2402 = !DILocation(line: 307, column: 27, scope: !2400)
!2403 = !DILocation(line: 308, column: 11, scope: !2400)
!2404 = !DILocation(line: 308, column: 28, scope: !2400)
!2405 = !DILocation(line: 308, column: 25, scope: !2400)
!2406 = !DILocation(line: 309, column: 15, scope: !2400)
!2407 = !DILocation(line: 309, column: 33, scope: !2400)
!2408 = !DILocation(line: 310, column: 19, scope: !2400)
!2409 = !DILocation(line: 311, column: 22, scope: !2400)
!2410 = !DILocation(line: 311, column: 56, scope: !2400)
!2411 = !DILocation(line: 307, column: 11, scope: !2401)
!2412 = !DILocation(line: 316, column: 21, scope: !2401)
!2413 = !DILocation(line: 317, column: 23, scope: !2401)
!2414 = !DILocation(line: 318, column: 5, scope: !2401)
!2415 = !DILocation(line: 327, column: 3, scope: !496)
!2416 = !DILocation(line: 331, column: 7, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !496, file: !489, line: 331, column: 7)
!2418 = !DILocation(line: 331, column: 7, scope: !496)
!2419 = !DILocation(line: 332, column: 5, scope: !2417)
!2420 = !DILocation(line: 338, column: 7, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2417, file: !489, line: 334, column: 5)
!2422 = !DILocation(line: 346, column: 3, scope: !496)
!2423 = !DILocation(line: 350, column: 3, scope: !496)
!2424 = !DILocation(line: 356, column: 1, scope: !496)
!2425 = distinct !DISubprogram(name: "error_at_line", scope: !489, file: !489, line: 359, type: !2426, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2428)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{null, !105, !105, !137, !98, !137, null}
!2428 = !{!2429, !2430, !2431, !2432, !2433, !2434}
!2429 = !DILocalVariable(name: "status", arg: 1, scope: !2425, file: !489, line: 359, type: !105)
!2430 = !DILocalVariable(name: "errnum", arg: 2, scope: !2425, file: !489, line: 359, type: !105)
!2431 = !DILocalVariable(name: "file_name", arg: 3, scope: !2425, file: !489, line: 359, type: !137)
!2432 = !DILocalVariable(name: "line_number", arg: 4, scope: !2425, file: !489, line: 360, type: !98)
!2433 = !DILocalVariable(name: "message", arg: 5, scope: !2425, file: !489, line: 360, type: !137)
!2434 = !DILocalVariable(name: "ap", scope: !2425, file: !489, line: 362, type: !499)
!2435 = distinct !DIAssignID()
!2436 = !DILocation(line: 0, scope: !2425)
!2437 = !DILocation(line: 362, column: 3, scope: !2425)
!2438 = !DILocation(line: 363, column: 3, scope: !2425)
!2439 = !DILocation(line: 364, column: 3, scope: !2425)
!2440 = !DILocation(line: 366, column: 3, scope: !2425)
!2441 = !DILocation(line: 367, column: 1, scope: !2425)
!2442 = distinct !DISubprogram(name: "getprogname", scope: !877, file: !877, line: 54, type: !2443, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!137}
!2445 = !DILocation(line: 58, column: 10, scope: !2442)
!2446 = !DILocation(line: 58, column: 3, scope: !2442)
!2447 = distinct !DISubprogram(name: "set_program_name", scope: !542, file: !542, line: 37, type: !978, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2448)
!2448 = !{!2449, !2450, !2451}
!2449 = !DILocalVariable(name: "argv0", arg: 1, scope: !2447, file: !542, line: 37, type: !137)
!2450 = !DILocalVariable(name: "slash", scope: !2447, file: !542, line: 44, type: !137)
!2451 = !DILocalVariable(name: "base", scope: !2447, file: !542, line: 45, type: !137)
!2452 = !DILocation(line: 0, scope: !2447)
!2453 = !DILocation(line: 44, column: 23, scope: !2447)
!2454 = !DILocation(line: 45, column: 22, scope: !2447)
!2455 = !DILocation(line: 46, column: 17, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2447, file: !542, line: 46, column: 7)
!2457 = !DILocation(line: 46, column: 9, scope: !2456)
!2458 = !DILocation(line: 46, column: 25, scope: !2456)
!2459 = !DILocation(line: 46, column: 40, scope: !2456)
!2460 = !DILocalVariable(name: "__s1", arg: 1, scope: !2461, file: !1040, line: 974, type: !1170)
!2461 = distinct !DISubprogram(name: "memeq", scope: !1040, file: !1040, line: 974, type: !2462, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2464)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!190, !1170, !1170, !134}
!2464 = !{!2460, !2465, !2466}
!2465 = !DILocalVariable(name: "__s2", arg: 2, scope: !2461, file: !1040, line: 974, type: !1170)
!2466 = !DILocalVariable(name: "__n", arg: 3, scope: !2461, file: !1040, line: 974, type: !134)
!2467 = !DILocation(line: 0, scope: !2461, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 46, column: 28, scope: !2456)
!2469 = !DILocation(line: 976, column: 11, scope: !2461, inlinedAt: !2468)
!2470 = !DILocation(line: 976, column: 10, scope: !2461, inlinedAt: !2468)
!2471 = !DILocation(line: 46, column: 7, scope: !2447)
!2472 = !DILocation(line: 49, column: 11, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !542, line: 49, column: 11)
!2474 = distinct !DILexicalBlock(scope: !2456, file: !542, line: 47, column: 5)
!2475 = !DILocation(line: 49, column: 36, scope: !2473)
!2476 = !DILocation(line: 49, column: 11, scope: !2474)
!2477 = !DILocation(line: 65, column: 16, scope: !2447)
!2478 = !DILocation(line: 71, column: 27, scope: !2447)
!2479 = !DILocation(line: 74, column: 33, scope: !2447)
!2480 = !DILocation(line: 76, column: 1, scope: !2447)
!2481 = !DISubprogram(name: "strrchr", scope: !1144, file: !1144, line: 273, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2482 = distinct !DIAssignID()
!2483 = !DILocation(line: 0, scope: !551)
!2484 = distinct !DIAssignID()
!2485 = !DILocation(line: 40, column: 29, scope: !551)
!2486 = !DILocation(line: 41, column: 19, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !551, file: !552, line: 41, column: 7)
!2488 = !DILocation(line: 41, column: 7, scope: !551)
!2489 = !DILocation(line: 47, column: 3, scope: !551)
!2490 = !DILocation(line: 48, column: 3, scope: !551)
!2491 = !DILocalVariable(name: "ps", arg: 1, scope: !2492, file: !2493, line: 1135, type: !2496)
!2492 = distinct !DISubprogram(name: "mbszero", scope: !2493, file: !2493, line: 1135, type: !2494, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2497)
!2493 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2494 = !DISubroutineType(types: !2495)
!2495 = !{null, !2496}
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!2497 = !{!2491}
!2498 = !DILocation(line: 0, scope: !2492, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 48, column: 18, scope: !551)
!2500 = !DILocalVariable(name: "__dest", arg: 1, scope: !2501, file: !2502, line: 57, type: !126)
!2501 = distinct !DISubprogram(name: "memset", scope: !2502, file: !2502, line: 57, type: !2503, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2505)
!2502 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!126, !126, !105, !134}
!2505 = !{!2500, !2506, !2507}
!2506 = !DILocalVariable(name: "__ch", arg: 2, scope: !2501, file: !2502, line: 57, type: !105)
!2507 = !DILocalVariable(name: "__len", arg: 3, scope: !2501, file: !2502, line: 57, type: !134)
!2508 = !DILocation(line: 0, scope: !2501, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 1137, column: 3, scope: !2492, inlinedAt: !2499)
!2510 = !DILocation(line: 59, column: 10, scope: !2501, inlinedAt: !2509)
!2511 = !DILocation(line: 49, column: 7, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !551, file: !552, line: 49, column: 7)
!2513 = !DILocation(line: 49, column: 39, scope: !2512)
!2514 = !DILocation(line: 49, column: 44, scope: !2512)
!2515 = !DILocation(line: 54, column: 1, scope: !551)
!2516 = !DISubprogram(name: "mbrtoc32", scope: !563, file: !563, line: 57, type: !2517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!134, !2519, !1018, !134, !2521}
!2519 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2520)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2496)
!2522 = distinct !DISubprogram(name: "clone_quoting_options", scope: !582, file: !582, line: 113, type: !2523, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !2526)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!2525, !2525}
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!2526 = !{!2527, !2528, !2529}
!2527 = !DILocalVariable(name: "o", arg: 1, scope: !2522, file: !582, line: 113, type: !2525)
!2528 = !DILocalVariable(name: "saved_errno", scope: !2522, file: !582, line: 115, type: !105)
!2529 = !DILocalVariable(name: "p", scope: !2522, file: !582, line: 116, type: !2525)
!2530 = !DILocation(line: 0, scope: !2522)
!2531 = !DILocation(line: 115, column: 21, scope: !2522)
!2532 = !DILocation(line: 116, column: 40, scope: !2522)
!2533 = !DILocation(line: 116, column: 31, scope: !2522)
!2534 = !DILocation(line: 118, column: 9, scope: !2522)
!2535 = !DILocation(line: 119, column: 3, scope: !2522)
!2536 = distinct !DISubprogram(name: "get_quoting_style", scope: !582, file: !582, line: 124, type: !2537, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !2541)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!608, !2539}
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !635)
!2541 = !{!2542}
!2542 = !DILocalVariable(name: "o", arg: 1, scope: !2536, file: !582, line: 124, type: !2539)
!2543 = !DILocation(line: 0, scope: !2536)
!2544 = !DILocation(line: 126, column: 11, scope: !2536)
!2545 = !DILocation(line: 126, column: 46, scope: !2536)
!2546 = !{!2547, !1028, i64 0}
!2547 = !{!"quoting_options", !1028, i64 0, !1028, i64 4, !958, i64 8, !957, i64 40, !957, i64 48}
!2548 = !DILocation(line: 126, column: 3, scope: !2536)
!2549 = distinct !DISubprogram(name: "set_quoting_style", scope: !582, file: !582, line: 132, type: !2550, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !2552)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{null, !2525, !608}
!2552 = !{!2553, !2554}
!2553 = !DILocalVariable(name: "o", arg: 1, scope: !2549, file: !582, line: 132, type: !2525)
!2554 = !DILocalVariable(name: "s", arg: 2, scope: !2549, file: !582, line: 132, type: !608)
!2555 = !DILocation(line: 0, scope: !2549)
!2556 = !DILocation(line: 134, column: 4, scope: !2549)
!2557 = !DILocation(line: 134, column: 45, scope: !2549)
!2558 = !DILocation(line: 135, column: 1, scope: !2549)
!2559 = distinct !DISubprogram(name: "set_char_quoting", scope: !582, file: !582, line: 143, type: !2560, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !2562)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!105, !2525, !4, !105}
!2562 = !{!2563, !2564, !2565, !2566, !2567, !2569, !2570}
!2563 = !DILocalVariable(name: "o", arg: 1, scope: !2559, file: !582, line: 143, type: !2525)
!2564 = !DILocalVariable(name: "c", arg: 2, scope: !2559, file: !582, line: 143, type: !4)
!2565 = !DILocalVariable(name: "i", arg: 3, scope: !2559, file: !582, line: 143, type: !105)
!2566 = !DILocalVariable(name: "uc", scope: !2559, file: !582, line: 145, type: !139)
!2567 = !DILocalVariable(name: "p", scope: !2559, file: !582, line: 146, type: !2568)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!2569 = !DILocalVariable(name: "shift", scope: !2559, file: !582, line: 148, type: !105)
!2570 = !DILocalVariable(name: "r", scope: !2559, file: !582, line: 149, type: !98)
!2571 = !DILocation(line: 0, scope: !2559)
!2572 = !DILocation(line: 147, column: 6, scope: !2559)
!2573 = !DILocation(line: 147, column: 41, scope: !2559)
!2574 = !DILocation(line: 147, column: 62, scope: !2559)
!2575 = !DILocation(line: 147, column: 57, scope: !2559)
!2576 = !DILocation(line: 148, column: 15, scope: !2559)
!2577 = !DILocation(line: 149, column: 21, scope: !2559)
!2578 = !DILocation(line: 149, column: 24, scope: !2559)
!2579 = !DILocation(line: 149, column: 34, scope: !2559)
!2580 = !DILocation(line: 150, column: 19, scope: !2559)
!2581 = !DILocation(line: 150, column: 24, scope: !2559)
!2582 = !DILocation(line: 150, column: 6, scope: !2559)
!2583 = !DILocation(line: 151, column: 3, scope: !2559)
!2584 = distinct !DISubprogram(name: "set_quoting_flags", scope: !582, file: !582, line: 159, type: !2585, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !2587)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!105, !2525, !105}
!2587 = !{!2588, !2589, !2590}
!2588 = !DILocalVariable(name: "o", arg: 1, scope: !2584, file: !582, line: 159, type: !2525)
!2589 = !DILocalVariable(name: "i", arg: 2, scope: !2584, file: !582, line: 159, type: !105)
!2590 = !DILocalVariable(name: "r", scope: !2584, file: !582, line: 163, type: !105)
!2591 = !DILocation(line: 0, scope: !2584)
!2592 = !DILocation(line: 161, column: 8, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2584, file: !582, line: 161, column: 7)
!2594 = !DILocation(line: 161, column: 7, scope: !2584)
!2595 = !DILocation(line: 163, column: 14, scope: !2584)
!2596 = !{!2547, !1028, i64 4}
!2597 = !DILocation(line: 164, column: 12, scope: !2584)
!2598 = !DILocation(line: 165, column: 3, scope: !2584)
!2599 = distinct !DISubprogram(name: "set_custom_quoting", scope: !582, file: !582, line: 169, type: !2600, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !2602)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{null, !2525, !137, !137}
!2602 = !{!2603, !2604, !2605}
!2603 = !DILocalVariable(name: "o", arg: 1, scope: !2599, file: !582, line: 169, type: !2525)
!2604 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2599, file: !582, line: 170, type: !137)
!2605 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2599, file: !582, line: 170, type: !137)
!2606 = !DILocation(line: 0, scope: !2599)
!2607 = !DILocation(line: 172, column: 8, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2599, file: !582, line: 172, column: 7)
!2609 = !DILocation(line: 172, column: 7, scope: !2599)
!2610 = !DILocation(line: 174, column: 12, scope: !2599)
!2611 = !DILocation(line: 175, column: 8, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2599, file: !582, line: 175, column: 7)
!2613 = !DILocation(line: 175, column: 19, scope: !2612)
!2614 = !DILocation(line: 176, column: 5, scope: !2612)
!2615 = !DILocation(line: 177, column: 6, scope: !2599)
!2616 = !DILocation(line: 177, column: 17, scope: !2599)
!2617 = !{!2547, !957, i64 40}
!2618 = !DILocation(line: 178, column: 6, scope: !2599)
!2619 = !DILocation(line: 178, column: 18, scope: !2599)
!2620 = !{!2547, !957, i64 48}
!2621 = !DILocation(line: 179, column: 1, scope: !2599)
!2622 = !DISubprogram(name: "abort", scope: !1148, file: !1148, line: 598, type: !537, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2623 = distinct !DISubprogram(name: "quotearg_buffer", scope: !582, file: !582, line: 774, type: !2624, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !2626)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!134, !125, !134, !137, !134, !2539}
!2626 = !{!2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634}
!2627 = !DILocalVariable(name: "buffer", arg: 1, scope: !2623, file: !582, line: 774, type: !125)
!2628 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2623, file: !582, line: 774, type: !134)
!2629 = !DILocalVariable(name: "arg", arg: 3, scope: !2623, file: !582, line: 775, type: !137)
!2630 = !DILocalVariable(name: "argsize", arg: 4, scope: !2623, file: !582, line: 775, type: !134)
!2631 = !DILocalVariable(name: "o", arg: 5, scope: !2623, file: !582, line: 776, type: !2539)
!2632 = !DILocalVariable(name: "p", scope: !2623, file: !582, line: 778, type: !2539)
!2633 = !DILocalVariable(name: "saved_errno", scope: !2623, file: !582, line: 779, type: !105)
!2634 = !DILocalVariable(name: "r", scope: !2623, file: !582, line: 780, type: !134)
!2635 = !DILocation(line: 0, scope: !2623)
!2636 = !DILocation(line: 778, column: 37, scope: !2623)
!2637 = !DILocation(line: 779, column: 21, scope: !2623)
!2638 = !DILocation(line: 781, column: 43, scope: !2623)
!2639 = !DILocation(line: 781, column: 53, scope: !2623)
!2640 = !DILocation(line: 781, column: 63, scope: !2623)
!2641 = !DILocation(line: 782, column: 43, scope: !2623)
!2642 = !DILocation(line: 782, column: 58, scope: !2623)
!2643 = !DILocation(line: 780, column: 14, scope: !2623)
!2644 = !DILocation(line: 783, column: 9, scope: !2623)
!2645 = !DILocation(line: 784, column: 3, scope: !2623)
!2646 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !582, file: !582, line: 251, type: !2647, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !2651)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!134, !125, !134, !137, !134, !608, !105, !2649, !137, !137}
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!2651 = !{!2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2677, !2679, !2682, !2683, !2684, !2685, !2688, !2689, !2691, !2692, !2695, !2699, !2700, !2708, !2711, !2712, !2713}
!2652 = !DILocalVariable(name: "buffer", arg: 1, scope: !2646, file: !582, line: 251, type: !125)
!2653 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2646, file: !582, line: 251, type: !134)
!2654 = !DILocalVariable(name: "arg", arg: 3, scope: !2646, file: !582, line: 252, type: !137)
!2655 = !DILocalVariable(name: "argsize", arg: 4, scope: !2646, file: !582, line: 252, type: !134)
!2656 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2646, file: !582, line: 253, type: !608)
!2657 = !DILocalVariable(name: "flags", arg: 6, scope: !2646, file: !582, line: 253, type: !105)
!2658 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2646, file: !582, line: 254, type: !2649)
!2659 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2646, file: !582, line: 255, type: !137)
!2660 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2646, file: !582, line: 256, type: !137)
!2661 = !DILocalVariable(name: "unibyte_locale", scope: !2646, file: !582, line: 258, type: !190)
!2662 = !DILocalVariable(name: "len", scope: !2646, file: !582, line: 260, type: !134)
!2663 = !DILocalVariable(name: "orig_buffersize", scope: !2646, file: !582, line: 261, type: !134)
!2664 = !DILocalVariable(name: "quote_string", scope: !2646, file: !582, line: 262, type: !137)
!2665 = !DILocalVariable(name: "quote_string_len", scope: !2646, file: !582, line: 263, type: !134)
!2666 = !DILocalVariable(name: "backslash_escapes", scope: !2646, file: !582, line: 264, type: !190)
!2667 = !DILocalVariable(name: "elide_outer_quotes", scope: !2646, file: !582, line: 265, type: !190)
!2668 = !DILocalVariable(name: "encountered_single_quote", scope: !2646, file: !582, line: 266, type: !190)
!2669 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2646, file: !582, line: 267, type: !190)
!2670 = !DILabel(scope: !2646, name: "process_input", file: !582, line: 308)
!2671 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2646, file: !582, line: 309, type: !190)
!2672 = !DILocalVariable(name: "lq", scope: !2673, file: !582, line: 361, type: !137)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !582, line: 361, column: 11)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !582, line: 360, column: 13)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !582, line: 333, column: 7)
!2676 = distinct !DILexicalBlock(scope: !2646, file: !582, line: 312, column: 5)
!2677 = !DILocalVariable(name: "i", scope: !2678, file: !582, line: 395, type: !134)
!2678 = distinct !DILexicalBlock(scope: !2646, file: !582, line: 395, column: 3)
!2679 = !DILocalVariable(name: "is_right_quote", scope: !2680, file: !582, line: 397, type: !190)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !582, line: 396, column: 5)
!2681 = distinct !DILexicalBlock(scope: !2678, file: !582, line: 395, column: 3)
!2682 = !DILocalVariable(name: "escaping", scope: !2680, file: !582, line: 398, type: !190)
!2683 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2680, file: !582, line: 399, type: !190)
!2684 = !DILocalVariable(name: "c", scope: !2680, file: !582, line: 417, type: !139)
!2685 = !DILabel(scope: !2686, name: "c_and_shell_escape", file: !582, line: 502)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !582, line: 478, column: 9)
!2687 = distinct !DILexicalBlock(scope: !2680, file: !582, line: 419, column: 9)
!2688 = !DILabel(scope: !2686, name: "c_escape", file: !582, line: 507)
!2689 = !DILocalVariable(name: "m", scope: !2690, file: !582, line: 598, type: !134)
!2690 = distinct !DILexicalBlock(scope: !2687, file: !582, line: 596, column: 11)
!2691 = !DILocalVariable(name: "printable", scope: !2690, file: !582, line: 600, type: !190)
!2692 = !DILocalVariable(name: "mbs", scope: !2693, file: !582, line: 609, type: !669)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !582, line: 608, column: 15)
!2694 = distinct !DILexicalBlock(scope: !2690, file: !582, line: 602, column: 17)
!2695 = !DILocalVariable(name: "w", scope: !2696, file: !582, line: 618, type: !562)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !582, line: 617, column: 19)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !582, line: 616, column: 17)
!2698 = distinct !DILexicalBlock(scope: !2693, file: !582, line: 616, column: 17)
!2699 = !DILocalVariable(name: "bytes", scope: !2696, file: !582, line: 619, type: !134)
!2700 = !DILocalVariable(name: "j", scope: !2701, file: !582, line: 648, type: !134)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !582, line: 648, column: 29)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !582, line: 647, column: 27)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !582, line: 645, column: 29)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !582, line: 636, column: 23)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !582, line: 628, column: 30)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !582, line: 623, column: 30)
!2707 = distinct !DILexicalBlock(scope: !2696, file: !582, line: 621, column: 25)
!2708 = !DILocalVariable(name: "ilim", scope: !2709, file: !582, line: 674, type: !134)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !582, line: 671, column: 15)
!2710 = distinct !DILexicalBlock(scope: !2690, file: !582, line: 670, column: 17)
!2711 = !DILabel(scope: !2680, name: "store_escape", file: !582, line: 709)
!2712 = !DILabel(scope: !2680, name: "store_c", file: !582, line: 712)
!2713 = !DILabel(scope: !2646, name: "force_outer_quoting_style", file: !582, line: 753)
!2714 = distinct !DIAssignID()
!2715 = distinct !DIAssignID()
!2716 = distinct !DIAssignID()
!2717 = distinct !DIAssignID()
!2718 = distinct !DIAssignID()
!2719 = !DILocation(line: 0, scope: !2693)
!2720 = distinct !DIAssignID()
!2721 = !DILocation(line: 0, scope: !2696)
!2722 = !DILocation(line: 0, scope: !2646)
!2723 = !DILocation(line: 258, column: 25, scope: !2646)
!2724 = !DILocation(line: 258, column: 36, scope: !2646)
!2725 = !DILocation(line: 267, column: 3, scope: !2646)
!2726 = !DILocation(line: 261, column: 10, scope: !2646)
!2727 = !DILocation(line: 262, column: 15, scope: !2646)
!2728 = !DILocation(line: 263, column: 10, scope: !2646)
!2729 = !DILocation(line: 308, column: 2, scope: !2646)
!2730 = !DILocation(line: 311, column: 3, scope: !2646)
!2731 = !DILocation(line: 318, column: 11, scope: !2676)
!2732 = !DILocation(line: 319, column: 9, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !582, line: 319, column: 9)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !582, line: 319, column: 9)
!2735 = distinct !DILexicalBlock(scope: !2676, file: !582, line: 318, column: 11)
!2736 = !DILocation(line: 319, column: 9, scope: !2734)
!2737 = !DILocation(line: 0, scope: !660, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 357, column: 26, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !582, line: 335, column: 11)
!2740 = distinct !DILexicalBlock(scope: !2675, file: !582, line: 334, column: 13)
!2741 = !DILocation(line: 199, column: 29, scope: !660, inlinedAt: !2738)
!2742 = !DILocation(line: 201, column: 19, scope: !2743, inlinedAt: !2738)
!2743 = distinct !DILexicalBlock(scope: !660, file: !582, line: 201, column: 7)
!2744 = !DILocation(line: 201, column: 7, scope: !660, inlinedAt: !2738)
!2745 = !DILocation(line: 229, column: 3, scope: !660, inlinedAt: !2738)
!2746 = !DILocation(line: 230, column: 3, scope: !660, inlinedAt: !2738)
!2747 = !DILocalVariable(name: "ps", arg: 1, scope: !2748, file: !2493, line: 1135, type: !2751)
!2748 = distinct !DISubprogram(name: "mbszero", scope: !2493, file: !2493, line: 1135, type: !2749, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !2752)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{null, !2751}
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!2752 = !{!2747}
!2753 = !DILocation(line: 0, scope: !2748, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 230, column: 18, scope: !660, inlinedAt: !2738)
!2755 = !DILocalVariable(name: "__dest", arg: 1, scope: !2756, file: !2502, line: 57, type: !126)
!2756 = distinct !DISubprogram(name: "memset", scope: !2502, file: !2502, line: 57, type: !2503, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !2757)
!2757 = !{!2755, !2758, !2759}
!2758 = !DILocalVariable(name: "__ch", arg: 2, scope: !2756, file: !2502, line: 57, type: !105)
!2759 = !DILocalVariable(name: "__len", arg: 3, scope: !2756, file: !2502, line: 57, type: !134)
!2760 = !DILocation(line: 0, scope: !2756, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 1137, column: 3, scope: !2748, inlinedAt: !2754)
!2762 = !DILocation(line: 59, column: 10, scope: !2756, inlinedAt: !2761)
!2763 = !DILocation(line: 231, column: 7, scope: !2764, inlinedAt: !2738)
!2764 = distinct !DILexicalBlock(scope: !660, file: !582, line: 231, column: 7)
!2765 = !DILocation(line: 231, column: 40, scope: !2764, inlinedAt: !2738)
!2766 = !DILocation(line: 231, column: 45, scope: !2764, inlinedAt: !2738)
!2767 = !DILocation(line: 235, column: 1, scope: !660, inlinedAt: !2738)
!2768 = !DILocation(line: 0, scope: !660, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 358, column: 27, scope: !2739)
!2770 = !DILocation(line: 199, column: 29, scope: !660, inlinedAt: !2769)
!2771 = !DILocation(line: 201, column: 19, scope: !2743, inlinedAt: !2769)
!2772 = !DILocation(line: 201, column: 7, scope: !660, inlinedAt: !2769)
!2773 = !DILocation(line: 229, column: 3, scope: !660, inlinedAt: !2769)
!2774 = !DILocation(line: 230, column: 3, scope: !660, inlinedAt: !2769)
!2775 = !DILocation(line: 0, scope: !2748, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 230, column: 18, scope: !660, inlinedAt: !2769)
!2777 = !DILocation(line: 0, scope: !2756, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 1137, column: 3, scope: !2748, inlinedAt: !2776)
!2779 = !DILocation(line: 59, column: 10, scope: !2756, inlinedAt: !2778)
!2780 = !DILocation(line: 231, column: 7, scope: !2764, inlinedAt: !2769)
!2781 = !DILocation(line: 231, column: 40, scope: !2764, inlinedAt: !2769)
!2782 = !DILocation(line: 231, column: 45, scope: !2764, inlinedAt: !2769)
!2783 = !DILocation(line: 235, column: 1, scope: !660, inlinedAt: !2769)
!2784 = !DILocation(line: 360, column: 13, scope: !2675)
!2785 = !DILocation(line: 0, scope: !2673)
!2786 = !DILocation(line: 361, column: 45, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2673, file: !582, line: 361, column: 11)
!2788 = !DILocation(line: 361, column: 11, scope: !2673)
!2789 = !DILocation(line: 362, column: 13, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !582, line: 362, column: 13)
!2791 = distinct !DILexicalBlock(scope: !2787, file: !582, line: 362, column: 13)
!2792 = !DILocation(line: 362, column: 13, scope: !2791)
!2793 = !DILocation(line: 361, column: 52, scope: !2787)
!2794 = distinct !{!2794, !2788, !2795, !1074}
!2795 = !DILocation(line: 362, column: 13, scope: !2673)
!2796 = !DILocation(line: 365, column: 28, scope: !2675)
!2797 = !DILocation(line: 260, column: 10, scope: !2646)
!2798 = !DILocation(line: 367, column: 7, scope: !2676)
!2799 = !DILocation(line: 373, column: 7, scope: !2676)
!2800 = !DILocation(line: 381, column: 11, scope: !2676)
!2801 = !DILocation(line: 376, column: 11, scope: !2676)
!2802 = !DILocation(line: 382, column: 9, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !582, line: 382, column: 9)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !582, line: 382, column: 9)
!2805 = distinct !DILexicalBlock(scope: !2676, file: !582, line: 381, column: 11)
!2806 = !DILocation(line: 382, column: 9, scope: !2804)
!2807 = !DILocation(line: 389, column: 7, scope: !2676)
!2808 = !DILocation(line: 392, column: 7, scope: !2676)
!2809 = !DILocation(line: 0, scope: !2678)
!2810 = !DILocation(line: 395, column: 8, scope: !2678)
!2811 = !DILocation(line: 395, scope: !2678)
!2812 = !DILocation(line: 395, column: 34, scope: !2681)
!2813 = !DILocation(line: 395, column: 26, scope: !2681)
!2814 = !DILocation(line: 395, column: 48, scope: !2681)
!2815 = !DILocation(line: 395, column: 55, scope: !2681)
!2816 = !DILocation(line: 395, column: 3, scope: !2678)
!2817 = !DILocation(line: 395, column: 67, scope: !2681)
!2818 = !DILocation(line: 0, scope: !2680)
!2819 = !DILocation(line: 402, column: 11, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2680, file: !582, line: 401, column: 11)
!2821 = !DILocation(line: 404, column: 17, scope: !2820)
!2822 = !DILocation(line: 405, column: 39, scope: !2820)
!2823 = !DILocation(line: 409, column: 32, scope: !2820)
!2824 = !DILocation(line: 405, column: 19, scope: !2820)
!2825 = !DILocation(line: 405, column: 15, scope: !2820)
!2826 = !DILocation(line: 410, column: 11, scope: !2820)
!2827 = !DILocation(line: 410, column: 25, scope: !2820)
!2828 = !DILocalVariable(name: "__s1", arg: 1, scope: !2829, file: !1040, line: 974, type: !1170)
!2829 = distinct !DISubprogram(name: "memeq", scope: !1040, file: !1040, line: 974, type: !2462, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !2830)
!2830 = !{!2828, !2831, !2832}
!2831 = !DILocalVariable(name: "__s2", arg: 2, scope: !2829, file: !1040, line: 974, type: !1170)
!2832 = !DILocalVariable(name: "__n", arg: 3, scope: !2829, file: !1040, line: 974, type: !134)
!2833 = !DILocation(line: 0, scope: !2829, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 410, column: 14, scope: !2820)
!2835 = !DILocation(line: 976, column: 11, scope: !2829, inlinedAt: !2834)
!2836 = !DILocation(line: 976, column: 10, scope: !2829, inlinedAt: !2834)
!2837 = !DILocation(line: 401, column: 11, scope: !2680)
!2838 = !DILocation(line: 417, column: 25, scope: !2680)
!2839 = !DILocation(line: 418, column: 7, scope: !2680)
!2840 = !DILocation(line: 421, column: 15, scope: !2687)
!2841 = !DILocation(line: 423, column: 15, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !582, line: 423, column: 15)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !582, line: 422, column: 13)
!2844 = distinct !DILexicalBlock(scope: !2687, file: !582, line: 421, column: 15)
!2845 = !DILocation(line: 423, column: 15, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2842, file: !582, line: 423, column: 15)
!2847 = !DILocation(line: 423, column: 15, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !582, line: 423, column: 15)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !582, line: 423, column: 15)
!2850 = distinct !DILexicalBlock(scope: !2846, file: !582, line: 423, column: 15)
!2851 = !DILocation(line: 423, column: 15, scope: !2849)
!2852 = !DILocation(line: 423, column: 15, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !582, line: 423, column: 15)
!2854 = distinct !DILexicalBlock(scope: !2850, file: !582, line: 423, column: 15)
!2855 = !DILocation(line: 423, column: 15, scope: !2854)
!2856 = !DILocation(line: 423, column: 15, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !582, line: 423, column: 15)
!2858 = distinct !DILexicalBlock(scope: !2850, file: !582, line: 423, column: 15)
!2859 = !DILocation(line: 423, column: 15, scope: !2858)
!2860 = !DILocation(line: 423, column: 15, scope: !2850)
!2861 = !DILocation(line: 423, column: 15, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !582, line: 423, column: 15)
!2863 = distinct !DILexicalBlock(scope: !2842, file: !582, line: 423, column: 15)
!2864 = !DILocation(line: 423, column: 15, scope: !2863)
!2865 = !DILocation(line: 431, column: 19, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2843, file: !582, line: 430, column: 19)
!2867 = !DILocation(line: 431, column: 24, scope: !2866)
!2868 = !DILocation(line: 431, column: 28, scope: !2866)
!2869 = !DILocation(line: 431, column: 38, scope: !2866)
!2870 = !DILocation(line: 431, column: 48, scope: !2866)
!2871 = !DILocation(line: 431, column: 59, scope: !2866)
!2872 = !DILocation(line: 433, column: 19, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !582, line: 433, column: 19)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !582, line: 433, column: 19)
!2875 = distinct !DILexicalBlock(scope: !2866, file: !582, line: 432, column: 17)
!2876 = !DILocation(line: 433, column: 19, scope: !2874)
!2877 = !DILocation(line: 434, column: 19, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !582, line: 434, column: 19)
!2879 = distinct !DILexicalBlock(scope: !2875, file: !582, line: 434, column: 19)
!2880 = !DILocation(line: 434, column: 19, scope: !2879)
!2881 = !DILocation(line: 435, column: 17, scope: !2875)
!2882 = !DILocation(line: 442, column: 20, scope: !2844)
!2883 = !DILocation(line: 447, column: 11, scope: !2687)
!2884 = !DILocation(line: 450, column: 19, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2687, file: !582, line: 448, column: 13)
!2886 = !DILocation(line: 456, column: 19, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2885, file: !582, line: 455, column: 19)
!2888 = !DILocation(line: 456, column: 24, scope: !2887)
!2889 = !DILocation(line: 456, column: 28, scope: !2887)
!2890 = !DILocation(line: 456, column: 38, scope: !2887)
!2891 = !DILocation(line: 456, column: 41, scope: !2887)
!2892 = !DILocation(line: 456, column: 52, scope: !2887)
!2893 = !DILocation(line: 455, column: 19, scope: !2885)
!2894 = !DILocation(line: 457, column: 25, scope: !2887)
!2895 = !DILocation(line: 457, column: 17, scope: !2887)
!2896 = !DILocation(line: 464, column: 25, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2887, file: !582, line: 458, column: 19)
!2898 = !DILocation(line: 468, column: 21, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !582, line: 468, column: 21)
!2900 = distinct !DILexicalBlock(scope: !2897, file: !582, line: 468, column: 21)
!2901 = !DILocation(line: 468, column: 21, scope: !2900)
!2902 = !DILocation(line: 469, column: 21, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !582, line: 469, column: 21)
!2904 = distinct !DILexicalBlock(scope: !2897, file: !582, line: 469, column: 21)
!2905 = !DILocation(line: 469, column: 21, scope: !2904)
!2906 = !DILocation(line: 470, column: 21, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !582, line: 470, column: 21)
!2908 = distinct !DILexicalBlock(scope: !2897, file: !582, line: 470, column: 21)
!2909 = !DILocation(line: 470, column: 21, scope: !2908)
!2910 = !DILocation(line: 471, column: 21, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !582, line: 471, column: 21)
!2912 = distinct !DILexicalBlock(scope: !2897, file: !582, line: 471, column: 21)
!2913 = !DILocation(line: 471, column: 21, scope: !2912)
!2914 = !DILocation(line: 472, column: 21, scope: !2897)
!2915 = !DILocation(line: 482, column: 33, scope: !2686)
!2916 = !DILocation(line: 483, column: 33, scope: !2686)
!2917 = !DILocation(line: 485, column: 33, scope: !2686)
!2918 = !DILocation(line: 486, column: 33, scope: !2686)
!2919 = !DILocation(line: 487, column: 33, scope: !2686)
!2920 = !DILocation(line: 490, column: 17, scope: !2686)
!2921 = !DILocation(line: 492, column: 21, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !582, line: 491, column: 15)
!2923 = distinct !DILexicalBlock(scope: !2686, file: !582, line: 490, column: 17)
!2924 = !DILocation(line: 499, column: 35, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2686, file: !582, line: 499, column: 17)
!2926 = !DILocation(line: 0, scope: !2686)
!2927 = !DILocation(line: 502, column: 11, scope: !2686)
!2928 = !DILocation(line: 504, column: 17, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2686, file: !582, line: 503, column: 17)
!2930 = !DILocation(line: 507, column: 11, scope: !2686)
!2931 = !DILocation(line: 508, column: 17, scope: !2686)
!2932 = !DILocation(line: 517, column: 15, scope: !2687)
!2933 = !DILocation(line: 517, column: 40, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2687, file: !582, line: 517, column: 15)
!2935 = !DILocation(line: 517, column: 47, scope: !2934)
!2936 = !DILocation(line: 517, column: 18, scope: !2934)
!2937 = !DILocation(line: 521, column: 17, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2687, file: !582, line: 521, column: 15)
!2939 = !DILocation(line: 521, column: 15, scope: !2687)
!2940 = !DILocation(line: 525, column: 11, scope: !2687)
!2941 = !DILocation(line: 537, column: 15, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2687, file: !582, line: 536, column: 15)
!2943 = !DILocation(line: 536, column: 15, scope: !2687)
!2944 = !DILocation(line: 544, column: 15, scope: !2687)
!2945 = !DILocation(line: 546, column: 19, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !582, line: 545, column: 13)
!2947 = distinct !DILexicalBlock(scope: !2687, file: !582, line: 544, column: 15)
!2948 = !DILocation(line: 549, column: 19, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2946, file: !582, line: 549, column: 19)
!2950 = !DILocation(line: 549, column: 30, scope: !2949)
!2951 = !DILocation(line: 558, column: 15, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !582, line: 558, column: 15)
!2953 = distinct !DILexicalBlock(scope: !2946, file: !582, line: 558, column: 15)
!2954 = !DILocation(line: 558, column: 15, scope: !2953)
!2955 = !DILocation(line: 559, column: 15, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !582, line: 559, column: 15)
!2957 = distinct !DILexicalBlock(scope: !2946, file: !582, line: 559, column: 15)
!2958 = !DILocation(line: 559, column: 15, scope: !2957)
!2959 = !DILocation(line: 560, column: 15, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !582, line: 560, column: 15)
!2961 = distinct !DILexicalBlock(scope: !2946, file: !582, line: 560, column: 15)
!2962 = !DILocation(line: 560, column: 15, scope: !2961)
!2963 = !DILocation(line: 562, column: 13, scope: !2946)
!2964 = !DILocation(line: 602, column: 17, scope: !2690)
!2965 = !DILocation(line: 0, scope: !2690)
!2966 = !DILocation(line: 605, column: 29, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2694, file: !582, line: 603, column: 15)
!2968 = !DILocation(line: 605, column: 41, scope: !2967)
!2969 = !DILocation(line: 606, column: 15, scope: !2967)
!2970 = !DILocation(line: 609, column: 17, scope: !2693)
!2971 = !DILocation(line: 0, scope: !2748, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 609, column: 32, scope: !2693)
!2973 = !DILocation(line: 0, scope: !2756, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 1137, column: 3, scope: !2748, inlinedAt: !2972)
!2975 = !DILocation(line: 59, column: 10, scope: !2756, inlinedAt: !2974)
!2976 = !DILocation(line: 613, column: 29, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2693, file: !582, line: 613, column: 21)
!2978 = !DILocation(line: 613, column: 21, scope: !2693)
!2979 = !DILocation(line: 614, column: 29, scope: !2977)
!2980 = !DILocation(line: 614, column: 19, scope: !2977)
!2981 = !DILocation(line: 618, column: 21, scope: !2696)
!2982 = !DILocation(line: 620, column: 54, scope: !2696)
!2983 = !DILocation(line: 619, column: 36, scope: !2696)
!2984 = !DILocation(line: 621, column: 25, scope: !2696)
!2985 = !DILocation(line: 631, column: 38, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2705, file: !582, line: 629, column: 23)
!2987 = !DILocation(line: 631, column: 48, scope: !2986)
!2988 = !DILocation(line: 631, column: 25, scope: !2986)
!2989 = !DILocation(line: 626, column: 25, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2706, file: !582, line: 624, column: 23)
!2991 = !DILocation(line: 631, column: 51, scope: !2986)
!2992 = !DILocation(line: 632, column: 28, scope: !2986)
!2993 = !DILocation(line: 631, column: 34, scope: !2986)
!2994 = distinct !{!2994, !2988, !2992, !1074}
!2995 = !DILocation(line: 0, scope: !2701)
!2996 = !DILocation(line: 646, column: 29, scope: !2703)
!2997 = !DILocation(line: 648, column: 29, scope: !2701)
!2998 = !DILocation(line: 649, column: 39, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2701, file: !582, line: 648, column: 29)
!3000 = !DILocation(line: 649, column: 31, scope: !2999)
!3001 = !DILocation(line: 648, column: 60, scope: !2999)
!3002 = !DILocation(line: 648, column: 50, scope: !2999)
!3003 = distinct !{!3003, !2997, !3004, !1074}
!3004 = !DILocation(line: 654, column: 33, scope: !2701)
!3005 = !DILocation(line: 657, column: 43, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2704, file: !582, line: 657, column: 29)
!3007 = !DILocalVariable(name: "wc", arg: 1, scope: !3008, file: !3009, line: 865, type: !3012)
!3008 = distinct !DISubprogram(name: "c32isprint", scope: !3009, file: !3009, line: 865, type: !3010, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3014)
!3009 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!105, !3012}
!3012 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3013, line: 20, baseType: !98)
!3013 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3014 = !{!3007}
!3015 = !DILocation(line: 0, scope: !3008, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 657, column: 31, scope: !3006)
!3017 = !DILocation(line: 871, column: 10, scope: !3008, inlinedAt: !3016)
!3018 = !DILocation(line: 657, column: 31, scope: !3006)
!3019 = !DILocation(line: 664, column: 23, scope: !2696)
!3020 = !DILocation(line: 665, column: 19, scope: !2697)
!3021 = !DILocation(line: 666, column: 15, scope: !2694)
!3022 = !DILocation(line: 753, column: 2, scope: !2646)
!3023 = !DILocation(line: 756, column: 51, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !2646, file: !582, line: 756, column: 7)
!3025 = !DILocation(line: 0, scope: !2694)
!3026 = !DILocation(line: 670, column: 19, scope: !2710)
!3027 = !DILocation(line: 670, column: 23, scope: !2710)
!3028 = !DILocation(line: 674, column: 33, scope: !2709)
!3029 = !DILocation(line: 0, scope: !2709)
!3030 = !DILocation(line: 676, column: 17, scope: !2709)
!3031 = !DILocation(line: 678, column: 43, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !582, line: 678, column: 25)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !582, line: 677, column: 19)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !582, line: 676, column: 17)
!3035 = distinct !DILexicalBlock(scope: !2709, file: !582, line: 676, column: 17)
!3036 = !DILocation(line: 680, column: 25, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !582, line: 680, column: 25)
!3038 = distinct !DILexicalBlock(scope: !3032, file: !582, line: 679, column: 23)
!3039 = !DILocation(line: 680, column: 25, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3037, file: !582, line: 680, column: 25)
!3041 = !DILocation(line: 680, column: 25, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !582, line: 680, column: 25)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !582, line: 680, column: 25)
!3044 = distinct !DILexicalBlock(scope: !3040, file: !582, line: 680, column: 25)
!3045 = !DILocation(line: 680, column: 25, scope: !3043)
!3046 = !DILocation(line: 680, column: 25, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !582, line: 680, column: 25)
!3048 = distinct !DILexicalBlock(scope: !3044, file: !582, line: 680, column: 25)
!3049 = !DILocation(line: 680, column: 25, scope: !3048)
!3050 = !DILocation(line: 680, column: 25, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !582, line: 680, column: 25)
!3052 = distinct !DILexicalBlock(scope: !3044, file: !582, line: 680, column: 25)
!3053 = !DILocation(line: 680, column: 25, scope: !3052)
!3054 = !DILocation(line: 680, column: 25, scope: !3044)
!3055 = !DILocation(line: 680, column: 25, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !582, line: 680, column: 25)
!3057 = distinct !DILexicalBlock(scope: !3037, file: !582, line: 680, column: 25)
!3058 = !DILocation(line: 680, column: 25, scope: !3057)
!3059 = !DILocation(line: 681, column: 25, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !582, line: 681, column: 25)
!3061 = distinct !DILexicalBlock(scope: !3038, file: !582, line: 681, column: 25)
!3062 = !DILocation(line: 681, column: 25, scope: !3061)
!3063 = !DILocation(line: 682, column: 25, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3065, file: !582, line: 682, column: 25)
!3065 = distinct !DILexicalBlock(scope: !3038, file: !582, line: 682, column: 25)
!3066 = !DILocation(line: 682, column: 25, scope: !3065)
!3067 = !DILocation(line: 683, column: 38, scope: !3038)
!3068 = !DILocation(line: 683, column: 33, scope: !3038)
!3069 = !DILocation(line: 684, column: 23, scope: !3038)
!3070 = !DILocation(line: 685, column: 30, scope: !3032)
!3071 = !DILocation(line: 687, column: 25, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !582, line: 687, column: 25)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !582, line: 687, column: 25)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !582, line: 686, column: 23)
!3075 = distinct !DILexicalBlock(scope: !3032, file: !582, line: 685, column: 30)
!3076 = !DILocation(line: 687, column: 25, scope: !3073)
!3077 = !DILocation(line: 689, column: 23, scope: !3074)
!3078 = !DILocation(line: 690, column: 35, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3033, file: !582, line: 690, column: 25)
!3080 = !DILocation(line: 690, column: 30, scope: !3079)
!3081 = !DILocation(line: 690, column: 25, scope: !3033)
!3082 = !DILocation(line: 692, column: 21, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !582, line: 692, column: 21)
!3084 = distinct !DILexicalBlock(scope: !3033, file: !582, line: 692, column: 21)
!3085 = !DILocation(line: 692, column: 21, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3087, file: !582, line: 692, column: 21)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !582, line: 692, column: 21)
!3088 = distinct !DILexicalBlock(scope: !3083, file: !582, line: 692, column: 21)
!3089 = !DILocation(line: 692, column: 21, scope: !3087)
!3090 = !DILocation(line: 692, column: 21, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !582, line: 692, column: 21)
!3092 = distinct !DILexicalBlock(scope: !3088, file: !582, line: 692, column: 21)
!3093 = !DILocation(line: 692, column: 21, scope: !3092)
!3094 = !DILocation(line: 692, column: 21, scope: !3088)
!3095 = !DILocation(line: 0, scope: !3033)
!3096 = !DILocation(line: 693, column: 21, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !582, line: 693, column: 21)
!3098 = distinct !DILexicalBlock(scope: !3033, file: !582, line: 693, column: 21)
!3099 = !DILocation(line: 693, column: 21, scope: !3098)
!3100 = !DILocation(line: 694, column: 25, scope: !3033)
!3101 = !DILocation(line: 676, column: 17, scope: !3034)
!3102 = distinct !{!3102, !3103, !3104}
!3103 = !DILocation(line: 676, column: 17, scope: !3035)
!3104 = !DILocation(line: 695, column: 19, scope: !3035)
!3105 = !DILocation(line: 409, column: 30, scope: !2820)
!3106 = !DILocation(line: 702, column: 34, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !2680, file: !582, line: 702, column: 11)
!3108 = !DILocation(line: 704, column: 14, scope: !3107)
!3109 = !DILocation(line: 705, column: 14, scope: !3107)
!3110 = !DILocation(line: 705, column: 35, scope: !3107)
!3111 = !DILocation(line: 705, column: 17, scope: !3107)
!3112 = !DILocation(line: 705, column: 47, scope: !3107)
!3113 = !DILocation(line: 705, column: 65, scope: !3107)
!3114 = !DILocation(line: 706, column: 11, scope: !3107)
!3115 = !DILocation(line: 702, column: 11, scope: !2680)
!3116 = !DILocation(line: 395, column: 15, scope: !2678)
!3117 = !DILocation(line: 709, column: 5, scope: !2680)
!3118 = !DILocation(line: 710, column: 7, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !2680, file: !582, line: 710, column: 7)
!3120 = !DILocation(line: 710, column: 7, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3119, file: !582, line: 710, column: 7)
!3122 = !DILocation(line: 710, column: 7, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !582, line: 710, column: 7)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !582, line: 710, column: 7)
!3125 = distinct !DILexicalBlock(scope: !3121, file: !582, line: 710, column: 7)
!3126 = !DILocation(line: 710, column: 7, scope: !3124)
!3127 = !DILocation(line: 710, column: 7, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !582, line: 710, column: 7)
!3129 = distinct !DILexicalBlock(scope: !3125, file: !582, line: 710, column: 7)
!3130 = !DILocation(line: 710, column: 7, scope: !3129)
!3131 = !DILocation(line: 710, column: 7, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !582, line: 710, column: 7)
!3133 = distinct !DILexicalBlock(scope: !3125, file: !582, line: 710, column: 7)
!3134 = !DILocation(line: 710, column: 7, scope: !3133)
!3135 = !DILocation(line: 710, column: 7, scope: !3125)
!3136 = !DILocation(line: 710, column: 7, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !582, line: 710, column: 7)
!3138 = distinct !DILexicalBlock(scope: !3119, file: !582, line: 710, column: 7)
!3139 = !DILocation(line: 710, column: 7, scope: !3138)
!3140 = !DILocation(line: 712, column: 5, scope: !2680)
!3141 = !DILocation(line: 713, column: 7, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !582, line: 713, column: 7)
!3143 = distinct !DILexicalBlock(scope: !2680, file: !582, line: 713, column: 7)
!3144 = !DILocation(line: 417, column: 21, scope: !2680)
!3145 = !DILocation(line: 713, column: 7, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !582, line: 713, column: 7)
!3147 = distinct !DILexicalBlock(scope: !3148, file: !582, line: 713, column: 7)
!3148 = distinct !DILexicalBlock(scope: !3142, file: !582, line: 713, column: 7)
!3149 = !DILocation(line: 713, column: 7, scope: !3147)
!3150 = !DILocation(line: 713, column: 7, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !582, line: 713, column: 7)
!3152 = distinct !DILexicalBlock(scope: !3148, file: !582, line: 713, column: 7)
!3153 = !DILocation(line: 713, column: 7, scope: !3152)
!3154 = !DILocation(line: 713, column: 7, scope: !3148)
!3155 = !DILocation(line: 714, column: 7, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !582, line: 714, column: 7)
!3157 = distinct !DILexicalBlock(scope: !2680, file: !582, line: 714, column: 7)
!3158 = !DILocation(line: 714, column: 7, scope: !3157)
!3159 = !DILocation(line: 716, column: 11, scope: !2680)
!3160 = !DILocation(line: 718, column: 5, scope: !2681)
!3161 = !DILocation(line: 395, column: 82, scope: !2681)
!3162 = !DILocation(line: 395, column: 3, scope: !2681)
!3163 = distinct !{!3163, !2816, !3164, !1074}
!3164 = !DILocation(line: 718, column: 5, scope: !2678)
!3165 = !DILocation(line: 720, column: 11, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !2646, file: !582, line: 720, column: 7)
!3167 = !DILocation(line: 720, column: 16, scope: !3166)
!3168 = !DILocation(line: 728, column: 51, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !2646, file: !582, line: 728, column: 7)
!3170 = !DILocation(line: 731, column: 11, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3169, file: !582, line: 730, column: 5)
!3172 = !DILocation(line: 732, column: 16, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3171, file: !582, line: 731, column: 11)
!3174 = !DILocation(line: 732, column: 9, scope: !3173)
!3175 = !DILocation(line: 736, column: 18, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3173, file: !582, line: 736, column: 16)
!3177 = !DILocation(line: 736, column: 29, scope: !3176)
!3178 = !DILocation(line: 745, column: 7, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !2646, file: !582, line: 745, column: 7)
!3180 = !DILocation(line: 745, column: 20, scope: !3179)
!3181 = !DILocation(line: 746, column: 12, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3183, file: !582, line: 746, column: 5)
!3183 = distinct !DILexicalBlock(scope: !3179, file: !582, line: 746, column: 5)
!3184 = !DILocation(line: 746, column: 5, scope: !3183)
!3185 = !DILocation(line: 747, column: 7, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !582, line: 747, column: 7)
!3187 = distinct !DILexicalBlock(scope: !3182, file: !582, line: 747, column: 7)
!3188 = !DILocation(line: 747, column: 7, scope: !3187)
!3189 = !DILocation(line: 746, column: 39, scope: !3182)
!3190 = distinct !{!3190, !3184, !3191, !1074}
!3191 = !DILocation(line: 747, column: 7, scope: !3183)
!3192 = !DILocation(line: 749, column: 11, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !2646, file: !582, line: 749, column: 7)
!3194 = !DILocation(line: 749, column: 7, scope: !2646)
!3195 = !DILocation(line: 750, column: 5, scope: !3193)
!3196 = !DILocation(line: 750, column: 17, scope: !3193)
!3197 = !DILocation(line: 756, column: 21, scope: !3024)
!3198 = !DILocation(line: 760, column: 42, scope: !2646)
!3199 = !DILocation(line: 758, column: 10, scope: !2646)
!3200 = !DILocation(line: 758, column: 3, scope: !2646)
!3201 = !DILocation(line: 762, column: 1, scope: !2646)
!3202 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1148, file: !1148, line: 98, type: !3203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!134}
!3205 = !DISubprogram(name: "strlen", scope: !1144, file: !1144, line: 407, type: !3206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!136, !137}
!3208 = !DISubprogram(name: "iswprint", scope: !3209, file: !3209, line: 120, type: !3010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3209 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3210 = distinct !DISubprogram(name: "quotearg_alloc", scope: !582, file: !582, line: 788, type: !3211, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3213)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!125, !137, !134, !2539}
!3213 = !{!3214, !3215, !3216}
!3214 = !DILocalVariable(name: "arg", arg: 1, scope: !3210, file: !582, line: 788, type: !137)
!3215 = !DILocalVariable(name: "argsize", arg: 2, scope: !3210, file: !582, line: 788, type: !134)
!3216 = !DILocalVariable(name: "o", arg: 3, scope: !3210, file: !582, line: 789, type: !2539)
!3217 = !DILocation(line: 0, scope: !3210)
!3218 = !DILocalVariable(name: "arg", arg: 1, scope: !3219, file: !582, line: 801, type: !137)
!3219 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !582, file: !582, line: 801, type: !3220, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3222)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!125, !137, !134, !892, !2539}
!3222 = !{!3218, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230}
!3223 = !DILocalVariable(name: "argsize", arg: 2, scope: !3219, file: !582, line: 801, type: !134)
!3224 = !DILocalVariable(name: "size", arg: 3, scope: !3219, file: !582, line: 801, type: !892)
!3225 = !DILocalVariable(name: "o", arg: 4, scope: !3219, file: !582, line: 802, type: !2539)
!3226 = !DILocalVariable(name: "p", scope: !3219, file: !582, line: 804, type: !2539)
!3227 = !DILocalVariable(name: "saved_errno", scope: !3219, file: !582, line: 805, type: !105)
!3228 = !DILocalVariable(name: "flags", scope: !3219, file: !582, line: 807, type: !105)
!3229 = !DILocalVariable(name: "bufsize", scope: !3219, file: !582, line: 808, type: !134)
!3230 = !DILocalVariable(name: "buf", scope: !3219, file: !582, line: 812, type: !125)
!3231 = !DILocation(line: 0, scope: !3219, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 791, column: 10, scope: !3210)
!3233 = !DILocation(line: 804, column: 37, scope: !3219, inlinedAt: !3232)
!3234 = !DILocation(line: 805, column: 21, scope: !3219, inlinedAt: !3232)
!3235 = !DILocation(line: 807, column: 18, scope: !3219, inlinedAt: !3232)
!3236 = !DILocation(line: 807, column: 24, scope: !3219, inlinedAt: !3232)
!3237 = !DILocation(line: 808, column: 72, scope: !3219, inlinedAt: !3232)
!3238 = !DILocation(line: 809, column: 56, scope: !3219, inlinedAt: !3232)
!3239 = !DILocation(line: 810, column: 49, scope: !3219, inlinedAt: !3232)
!3240 = !DILocation(line: 811, column: 49, scope: !3219, inlinedAt: !3232)
!3241 = !DILocation(line: 808, column: 20, scope: !3219, inlinedAt: !3232)
!3242 = !DILocation(line: 811, column: 62, scope: !3219, inlinedAt: !3232)
!3243 = !DILocation(line: 812, column: 15, scope: !3219, inlinedAt: !3232)
!3244 = !DILocation(line: 813, column: 60, scope: !3219, inlinedAt: !3232)
!3245 = !DILocation(line: 815, column: 32, scope: !3219, inlinedAt: !3232)
!3246 = !DILocation(line: 815, column: 47, scope: !3219, inlinedAt: !3232)
!3247 = !DILocation(line: 813, column: 3, scope: !3219, inlinedAt: !3232)
!3248 = !DILocation(line: 816, column: 9, scope: !3219, inlinedAt: !3232)
!3249 = !DILocation(line: 791, column: 3, scope: !3210)
!3250 = !DILocation(line: 0, scope: !3219)
!3251 = !DILocation(line: 804, column: 37, scope: !3219)
!3252 = !DILocation(line: 805, column: 21, scope: !3219)
!3253 = !DILocation(line: 807, column: 18, scope: !3219)
!3254 = !DILocation(line: 807, column: 27, scope: !3219)
!3255 = !DILocation(line: 807, column: 24, scope: !3219)
!3256 = !DILocation(line: 808, column: 72, scope: !3219)
!3257 = !DILocation(line: 809, column: 56, scope: !3219)
!3258 = !DILocation(line: 810, column: 49, scope: !3219)
!3259 = !DILocation(line: 811, column: 49, scope: !3219)
!3260 = !DILocation(line: 808, column: 20, scope: !3219)
!3261 = !DILocation(line: 811, column: 62, scope: !3219)
!3262 = !DILocation(line: 812, column: 15, scope: !3219)
!3263 = !DILocation(line: 813, column: 60, scope: !3219)
!3264 = !DILocation(line: 815, column: 32, scope: !3219)
!3265 = !DILocation(line: 815, column: 47, scope: !3219)
!3266 = !DILocation(line: 813, column: 3, scope: !3219)
!3267 = !DILocation(line: 816, column: 9, scope: !3219)
!3268 = !DILocation(line: 817, column: 7, scope: !3219)
!3269 = !DILocation(line: 818, column: 11, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3219, file: !582, line: 817, column: 7)
!3271 = !DILocation(line: 818, column: 5, scope: !3270)
!3272 = !DILocation(line: 819, column: 3, scope: !3219)
!3273 = distinct !DISubprogram(name: "quotearg_free", scope: !582, file: !582, line: 837, type: !537, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3274)
!3274 = !{!3275, !3276}
!3275 = !DILocalVariable(name: "sv", scope: !3273, file: !582, line: 839, type: !683)
!3276 = !DILocalVariable(name: "i", scope: !3277, file: !582, line: 840, type: !105)
!3277 = distinct !DILexicalBlock(scope: !3273, file: !582, line: 840, column: 3)
!3278 = !DILocation(line: 839, column: 24, scope: !3273)
!3279 = !DILocation(line: 0, scope: !3273)
!3280 = !DILocation(line: 0, scope: !3277)
!3281 = !DILocation(line: 840, column: 21, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3277, file: !582, line: 840, column: 3)
!3283 = !DILocation(line: 840, column: 3, scope: !3277)
!3284 = !DILocation(line: 842, column: 13, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3273, file: !582, line: 842, column: 7)
!3286 = !{!3287, !957, i64 8}
!3287 = !{!"slotvec", !1882, i64 0, !957, i64 8}
!3288 = !DILocation(line: 842, column: 17, scope: !3285)
!3289 = !DILocation(line: 842, column: 7, scope: !3273)
!3290 = !DILocation(line: 841, column: 17, scope: !3282)
!3291 = !DILocation(line: 841, column: 5, scope: !3282)
!3292 = !DILocation(line: 840, column: 32, scope: !3282)
!3293 = distinct !{!3293, !3283, !3294, !1074}
!3294 = !DILocation(line: 841, column: 20, scope: !3277)
!3295 = !DILocation(line: 844, column: 7, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3285, file: !582, line: 843, column: 5)
!3297 = !DILocation(line: 845, column: 21, scope: !3296)
!3298 = !{!3287, !1882, i64 0}
!3299 = !DILocation(line: 846, column: 20, scope: !3296)
!3300 = !DILocation(line: 847, column: 5, scope: !3296)
!3301 = !DILocation(line: 848, column: 10, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3273, file: !582, line: 848, column: 7)
!3303 = !DILocation(line: 848, column: 7, scope: !3273)
!3304 = !DILocation(line: 850, column: 7, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3302, file: !582, line: 849, column: 5)
!3306 = !DILocation(line: 851, column: 15, scope: !3305)
!3307 = !DILocation(line: 852, column: 5, scope: !3305)
!3308 = !DILocation(line: 853, column: 10, scope: !3273)
!3309 = !DILocation(line: 854, column: 1, scope: !3273)
!3310 = distinct !DISubprogram(name: "quotearg_n", scope: !582, file: !582, line: 919, type: !1141, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3311)
!3311 = !{!3312, !3313}
!3312 = !DILocalVariable(name: "n", arg: 1, scope: !3310, file: !582, line: 919, type: !105)
!3313 = !DILocalVariable(name: "arg", arg: 2, scope: !3310, file: !582, line: 919, type: !137)
!3314 = !DILocation(line: 0, scope: !3310)
!3315 = !DILocation(line: 921, column: 10, scope: !3310)
!3316 = !DILocation(line: 921, column: 3, scope: !3310)
!3317 = distinct !DISubprogram(name: "quotearg_n_options", scope: !582, file: !582, line: 866, type: !3318, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3320)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!125, !105, !137, !134, !2539}
!3320 = !{!3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3331, !3332, !3334, !3335, !3336}
!3321 = !DILocalVariable(name: "n", arg: 1, scope: !3317, file: !582, line: 866, type: !105)
!3322 = !DILocalVariable(name: "arg", arg: 2, scope: !3317, file: !582, line: 866, type: !137)
!3323 = !DILocalVariable(name: "argsize", arg: 3, scope: !3317, file: !582, line: 866, type: !134)
!3324 = !DILocalVariable(name: "options", arg: 4, scope: !3317, file: !582, line: 867, type: !2539)
!3325 = !DILocalVariable(name: "saved_errno", scope: !3317, file: !582, line: 869, type: !105)
!3326 = !DILocalVariable(name: "sv", scope: !3317, file: !582, line: 871, type: !683)
!3327 = !DILocalVariable(name: "nslots_max", scope: !3317, file: !582, line: 873, type: !105)
!3328 = !DILocalVariable(name: "preallocated", scope: !3329, file: !582, line: 879, type: !190)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !582, line: 878, column: 5)
!3330 = distinct !DILexicalBlock(scope: !3317, file: !582, line: 877, column: 7)
!3331 = !DILocalVariable(name: "new_nslots", scope: !3329, file: !582, line: 880, type: !905)
!3332 = !DILocalVariable(name: "size", scope: !3333, file: !582, line: 891, type: !134)
!3333 = distinct !DILexicalBlock(scope: !3317, file: !582, line: 890, column: 3)
!3334 = !DILocalVariable(name: "val", scope: !3333, file: !582, line: 892, type: !125)
!3335 = !DILocalVariable(name: "flags", scope: !3333, file: !582, line: 894, type: !105)
!3336 = !DILocalVariable(name: "qsize", scope: !3333, file: !582, line: 895, type: !134)
!3337 = distinct !DIAssignID()
!3338 = !DILocation(line: 0, scope: !3329)
!3339 = !DILocation(line: 0, scope: !3317)
!3340 = !DILocation(line: 869, column: 21, scope: !3317)
!3341 = !DILocation(line: 871, column: 24, scope: !3317)
!3342 = !DILocation(line: 874, column: 17, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3317, file: !582, line: 874, column: 7)
!3344 = !DILocation(line: 875, column: 5, scope: !3343)
!3345 = !DILocation(line: 877, column: 7, scope: !3330)
!3346 = !DILocation(line: 877, column: 14, scope: !3330)
!3347 = !DILocation(line: 877, column: 7, scope: !3317)
!3348 = !DILocation(line: 879, column: 31, scope: !3329)
!3349 = !DILocation(line: 880, column: 7, scope: !3329)
!3350 = !DILocation(line: 880, column: 26, scope: !3329)
!3351 = !DILocation(line: 880, column: 13, scope: !3329)
!3352 = distinct !DIAssignID()
!3353 = !DILocation(line: 882, column: 31, scope: !3329)
!3354 = !DILocation(line: 883, column: 33, scope: !3329)
!3355 = !DILocation(line: 883, column: 42, scope: !3329)
!3356 = !DILocation(line: 883, column: 31, scope: !3329)
!3357 = !DILocation(line: 882, column: 22, scope: !3329)
!3358 = !DILocation(line: 882, column: 15, scope: !3329)
!3359 = !DILocation(line: 884, column: 11, scope: !3329)
!3360 = !DILocation(line: 885, column: 15, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3329, file: !582, line: 884, column: 11)
!3362 = !{i64 0, i64 8, !1881, i64 8, i64 8, !956}
!3363 = !DILocation(line: 885, column: 9, scope: !3361)
!3364 = !DILocation(line: 886, column: 20, scope: !3329)
!3365 = !DILocation(line: 886, column: 18, scope: !3329)
!3366 = !DILocation(line: 886, column: 32, scope: !3329)
!3367 = !DILocation(line: 886, column: 43, scope: !3329)
!3368 = !DILocation(line: 886, column: 53, scope: !3329)
!3369 = !DILocation(line: 0, scope: !2756, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 886, column: 7, scope: !3329)
!3371 = !DILocation(line: 59, column: 10, scope: !2756, inlinedAt: !3370)
!3372 = !DILocation(line: 887, column: 16, scope: !3329)
!3373 = !DILocation(line: 887, column: 14, scope: !3329)
!3374 = !DILocation(line: 888, column: 5, scope: !3330)
!3375 = !DILocation(line: 888, column: 5, scope: !3329)
!3376 = !DILocation(line: 891, column: 19, scope: !3333)
!3377 = !DILocation(line: 891, column: 25, scope: !3333)
!3378 = !DILocation(line: 0, scope: !3333)
!3379 = !DILocation(line: 892, column: 23, scope: !3333)
!3380 = !DILocation(line: 894, column: 26, scope: !3333)
!3381 = !DILocation(line: 894, column: 32, scope: !3333)
!3382 = !DILocation(line: 896, column: 55, scope: !3333)
!3383 = !DILocation(line: 897, column: 55, scope: !3333)
!3384 = !DILocation(line: 898, column: 55, scope: !3333)
!3385 = !DILocation(line: 899, column: 55, scope: !3333)
!3386 = !DILocation(line: 895, column: 20, scope: !3333)
!3387 = !DILocation(line: 901, column: 14, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3333, file: !582, line: 901, column: 9)
!3389 = !DILocation(line: 901, column: 9, scope: !3333)
!3390 = !DILocation(line: 903, column: 35, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3388, file: !582, line: 902, column: 7)
!3392 = !DILocation(line: 903, column: 20, scope: !3391)
!3393 = !DILocation(line: 904, column: 17, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3391, file: !582, line: 904, column: 13)
!3395 = !DILocation(line: 904, column: 13, scope: !3391)
!3396 = !DILocation(line: 905, column: 11, scope: !3394)
!3397 = !DILocation(line: 906, column: 27, scope: !3391)
!3398 = !DILocation(line: 906, column: 19, scope: !3391)
!3399 = !DILocation(line: 907, column: 69, scope: !3391)
!3400 = !DILocation(line: 909, column: 44, scope: !3391)
!3401 = !DILocation(line: 910, column: 44, scope: !3391)
!3402 = !DILocation(line: 907, column: 9, scope: !3391)
!3403 = !DILocation(line: 911, column: 7, scope: !3391)
!3404 = !DILocation(line: 913, column: 11, scope: !3333)
!3405 = !DILocation(line: 914, column: 5, scope: !3333)
!3406 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !582, file: !582, line: 925, type: !3407, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3409)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!125, !105, !137, !134}
!3409 = !{!3410, !3411, !3412}
!3410 = !DILocalVariable(name: "n", arg: 1, scope: !3406, file: !582, line: 925, type: !105)
!3411 = !DILocalVariable(name: "arg", arg: 2, scope: !3406, file: !582, line: 925, type: !137)
!3412 = !DILocalVariable(name: "argsize", arg: 3, scope: !3406, file: !582, line: 925, type: !134)
!3413 = !DILocation(line: 0, scope: !3406)
!3414 = !DILocation(line: 927, column: 10, scope: !3406)
!3415 = !DILocation(line: 927, column: 3, scope: !3406)
!3416 = distinct !DISubprogram(name: "quotearg", scope: !582, file: !582, line: 931, type: !1150, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3417)
!3417 = !{!3418}
!3418 = !DILocalVariable(name: "arg", arg: 1, scope: !3416, file: !582, line: 931, type: !137)
!3419 = !DILocation(line: 0, scope: !3416)
!3420 = !DILocation(line: 0, scope: !3310, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 933, column: 10, scope: !3416)
!3422 = !DILocation(line: 921, column: 10, scope: !3310, inlinedAt: !3421)
!3423 = !DILocation(line: 933, column: 3, scope: !3416)
!3424 = distinct !DISubprogram(name: "quotearg_mem", scope: !582, file: !582, line: 937, type: !3425, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3427)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!125, !137, !134}
!3427 = !{!3428, !3429}
!3428 = !DILocalVariable(name: "arg", arg: 1, scope: !3424, file: !582, line: 937, type: !137)
!3429 = !DILocalVariable(name: "argsize", arg: 2, scope: !3424, file: !582, line: 937, type: !134)
!3430 = !DILocation(line: 0, scope: !3424)
!3431 = !DILocation(line: 0, scope: !3406, inlinedAt: !3432)
!3432 = distinct !DILocation(line: 939, column: 10, scope: !3424)
!3433 = !DILocation(line: 927, column: 10, scope: !3406, inlinedAt: !3432)
!3434 = !DILocation(line: 939, column: 3, scope: !3424)
!3435 = distinct !DISubprogram(name: "quotearg_n_style", scope: !582, file: !582, line: 943, type: !3436, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3438)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!125, !105, !608, !137}
!3438 = !{!3439, !3440, !3441, !3442}
!3439 = !DILocalVariable(name: "n", arg: 1, scope: !3435, file: !582, line: 943, type: !105)
!3440 = !DILocalVariable(name: "s", arg: 2, scope: !3435, file: !582, line: 943, type: !608)
!3441 = !DILocalVariable(name: "arg", arg: 3, scope: !3435, file: !582, line: 943, type: !137)
!3442 = !DILocalVariable(name: "o", scope: !3435, file: !582, line: 945, type: !2540)
!3443 = distinct !DIAssignID()
!3444 = !DILocation(line: 0, scope: !3435)
!3445 = !DILocation(line: 945, column: 3, scope: !3435)
!3446 = !{!3447}
!3447 = distinct !{!3447, !3448, !"quoting_options_from_style: argument 0"}
!3448 = distinct !{!3448, !"quoting_options_from_style"}
!3449 = !DILocation(line: 945, column: 36, scope: !3435)
!3450 = !DILocalVariable(name: "style", arg: 1, scope: !3451, file: !582, line: 183, type: !608)
!3451 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !582, file: !582, line: 183, type: !3452, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3454)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!635, !608}
!3454 = !{!3450, !3455}
!3455 = !DILocalVariable(name: "o", scope: !3451, file: !582, line: 185, type: !635)
!3456 = !DILocation(line: 0, scope: !3451, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 945, column: 36, scope: !3435)
!3458 = !DILocation(line: 185, column: 26, scope: !3451, inlinedAt: !3457)
!3459 = distinct !DIAssignID()
!3460 = !DILocation(line: 186, column: 13, scope: !3461, inlinedAt: !3457)
!3461 = distinct !DILexicalBlock(scope: !3451, file: !582, line: 186, column: 7)
!3462 = !DILocation(line: 186, column: 7, scope: !3451, inlinedAt: !3457)
!3463 = !DILocation(line: 187, column: 5, scope: !3461, inlinedAt: !3457)
!3464 = !DILocation(line: 188, column: 11, scope: !3451, inlinedAt: !3457)
!3465 = distinct !DIAssignID()
!3466 = !DILocation(line: 946, column: 10, scope: !3435)
!3467 = !DILocation(line: 947, column: 1, scope: !3435)
!3468 = !DILocation(line: 946, column: 3, scope: !3435)
!3469 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !582, file: !582, line: 950, type: !3470, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3472)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!125, !105, !608, !137, !134}
!3472 = !{!3473, !3474, !3475, !3476, !3477}
!3473 = !DILocalVariable(name: "n", arg: 1, scope: !3469, file: !582, line: 950, type: !105)
!3474 = !DILocalVariable(name: "s", arg: 2, scope: !3469, file: !582, line: 950, type: !608)
!3475 = !DILocalVariable(name: "arg", arg: 3, scope: !3469, file: !582, line: 951, type: !137)
!3476 = !DILocalVariable(name: "argsize", arg: 4, scope: !3469, file: !582, line: 951, type: !134)
!3477 = !DILocalVariable(name: "o", scope: !3469, file: !582, line: 953, type: !2540)
!3478 = distinct !DIAssignID()
!3479 = !DILocation(line: 0, scope: !3469)
!3480 = !DILocation(line: 953, column: 3, scope: !3469)
!3481 = !{!3482}
!3482 = distinct !{!3482, !3483, !"quoting_options_from_style: argument 0"}
!3483 = distinct !{!3483, !"quoting_options_from_style"}
!3484 = !DILocation(line: 953, column: 36, scope: !3469)
!3485 = !DILocation(line: 0, scope: !3451, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 953, column: 36, scope: !3469)
!3487 = !DILocation(line: 185, column: 26, scope: !3451, inlinedAt: !3486)
!3488 = distinct !DIAssignID()
!3489 = !DILocation(line: 186, column: 13, scope: !3461, inlinedAt: !3486)
!3490 = !DILocation(line: 186, column: 7, scope: !3451, inlinedAt: !3486)
!3491 = !DILocation(line: 187, column: 5, scope: !3461, inlinedAt: !3486)
!3492 = !DILocation(line: 188, column: 11, scope: !3451, inlinedAt: !3486)
!3493 = distinct !DIAssignID()
!3494 = !DILocation(line: 954, column: 10, scope: !3469)
!3495 = !DILocation(line: 955, column: 1, scope: !3469)
!3496 = !DILocation(line: 954, column: 3, scope: !3469)
!3497 = distinct !DISubprogram(name: "quotearg_style", scope: !582, file: !582, line: 958, type: !3498, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3500)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!125, !608, !137}
!3500 = !{!3501, !3502}
!3501 = !DILocalVariable(name: "s", arg: 1, scope: !3497, file: !582, line: 958, type: !608)
!3502 = !DILocalVariable(name: "arg", arg: 2, scope: !3497, file: !582, line: 958, type: !137)
!3503 = distinct !DIAssignID()
!3504 = !DILocation(line: 0, scope: !3497)
!3505 = !DILocation(line: 0, scope: !3435, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 960, column: 10, scope: !3497)
!3507 = !DILocation(line: 945, column: 3, scope: !3435, inlinedAt: !3506)
!3508 = !{!3509}
!3509 = distinct !{!3509, !3510, !"quoting_options_from_style: argument 0"}
!3510 = distinct !{!3510, !"quoting_options_from_style"}
!3511 = !DILocation(line: 945, column: 36, scope: !3435, inlinedAt: !3506)
!3512 = !DILocation(line: 0, scope: !3451, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 945, column: 36, scope: !3435, inlinedAt: !3506)
!3514 = !DILocation(line: 185, column: 26, scope: !3451, inlinedAt: !3513)
!3515 = distinct !DIAssignID()
!3516 = !DILocation(line: 186, column: 13, scope: !3461, inlinedAt: !3513)
!3517 = !DILocation(line: 186, column: 7, scope: !3451, inlinedAt: !3513)
!3518 = !DILocation(line: 187, column: 5, scope: !3461, inlinedAt: !3513)
!3519 = !DILocation(line: 188, column: 11, scope: !3451, inlinedAt: !3513)
!3520 = distinct !DIAssignID()
!3521 = !DILocation(line: 946, column: 10, scope: !3435, inlinedAt: !3506)
!3522 = !DILocation(line: 947, column: 1, scope: !3435, inlinedAt: !3506)
!3523 = !DILocation(line: 960, column: 3, scope: !3497)
!3524 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !582, file: !582, line: 964, type: !3525, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3527)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!125, !608, !137, !134}
!3527 = !{!3528, !3529, !3530}
!3528 = !DILocalVariable(name: "s", arg: 1, scope: !3524, file: !582, line: 964, type: !608)
!3529 = !DILocalVariable(name: "arg", arg: 2, scope: !3524, file: !582, line: 964, type: !137)
!3530 = !DILocalVariable(name: "argsize", arg: 3, scope: !3524, file: !582, line: 964, type: !134)
!3531 = distinct !DIAssignID()
!3532 = !DILocation(line: 0, scope: !3524)
!3533 = !DILocation(line: 0, scope: !3469, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 966, column: 10, scope: !3524)
!3535 = !DILocation(line: 953, column: 3, scope: !3469, inlinedAt: !3534)
!3536 = !{!3537}
!3537 = distinct !{!3537, !3538, !"quoting_options_from_style: argument 0"}
!3538 = distinct !{!3538, !"quoting_options_from_style"}
!3539 = !DILocation(line: 953, column: 36, scope: !3469, inlinedAt: !3534)
!3540 = !DILocation(line: 0, scope: !3451, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 953, column: 36, scope: !3469, inlinedAt: !3534)
!3542 = !DILocation(line: 185, column: 26, scope: !3451, inlinedAt: !3541)
!3543 = distinct !DIAssignID()
!3544 = !DILocation(line: 186, column: 13, scope: !3461, inlinedAt: !3541)
!3545 = !DILocation(line: 186, column: 7, scope: !3451, inlinedAt: !3541)
!3546 = !DILocation(line: 187, column: 5, scope: !3461, inlinedAt: !3541)
!3547 = !DILocation(line: 188, column: 11, scope: !3451, inlinedAt: !3541)
!3548 = distinct !DIAssignID()
!3549 = !DILocation(line: 954, column: 10, scope: !3469, inlinedAt: !3534)
!3550 = !DILocation(line: 955, column: 1, scope: !3469, inlinedAt: !3534)
!3551 = !DILocation(line: 966, column: 3, scope: !3524)
!3552 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !582, file: !582, line: 970, type: !3553, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3555)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!125, !137, !134, !4}
!3555 = !{!3556, !3557, !3558, !3559}
!3556 = !DILocalVariable(name: "arg", arg: 1, scope: !3552, file: !582, line: 970, type: !137)
!3557 = !DILocalVariable(name: "argsize", arg: 2, scope: !3552, file: !582, line: 970, type: !134)
!3558 = !DILocalVariable(name: "ch", arg: 3, scope: !3552, file: !582, line: 970, type: !4)
!3559 = !DILocalVariable(name: "options", scope: !3552, file: !582, line: 972, type: !635)
!3560 = distinct !DIAssignID()
!3561 = !DILocation(line: 0, scope: !3552)
!3562 = !DILocation(line: 972, column: 3, scope: !3552)
!3563 = !DILocation(line: 973, column: 13, scope: !3552)
!3564 = !{i64 0, i64 4, !1027, i64 4, i64 4, !1027, i64 8, i64 32, !1036, i64 40, i64 8, !956, i64 48, i64 8, !956}
!3565 = distinct !DIAssignID()
!3566 = !DILocation(line: 0, scope: !2559, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 974, column: 3, scope: !3552)
!3568 = !DILocation(line: 147, column: 41, scope: !2559, inlinedAt: !3567)
!3569 = !DILocation(line: 147, column: 62, scope: !2559, inlinedAt: !3567)
!3570 = !DILocation(line: 147, column: 57, scope: !2559, inlinedAt: !3567)
!3571 = !DILocation(line: 148, column: 15, scope: !2559, inlinedAt: !3567)
!3572 = !DILocation(line: 149, column: 21, scope: !2559, inlinedAt: !3567)
!3573 = !DILocation(line: 149, column: 24, scope: !2559, inlinedAt: !3567)
!3574 = !DILocation(line: 150, column: 19, scope: !2559, inlinedAt: !3567)
!3575 = !DILocation(line: 150, column: 24, scope: !2559, inlinedAt: !3567)
!3576 = !DILocation(line: 150, column: 6, scope: !2559, inlinedAt: !3567)
!3577 = !DILocation(line: 975, column: 10, scope: !3552)
!3578 = !DILocation(line: 976, column: 1, scope: !3552)
!3579 = !DILocation(line: 975, column: 3, scope: !3552)
!3580 = distinct !DISubprogram(name: "quotearg_char", scope: !582, file: !582, line: 979, type: !3581, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3583)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!125, !137, !4}
!3583 = !{!3584, !3585}
!3584 = !DILocalVariable(name: "arg", arg: 1, scope: !3580, file: !582, line: 979, type: !137)
!3585 = !DILocalVariable(name: "ch", arg: 2, scope: !3580, file: !582, line: 979, type: !4)
!3586 = distinct !DIAssignID()
!3587 = !DILocation(line: 0, scope: !3580)
!3588 = !DILocation(line: 0, scope: !3552, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 981, column: 10, scope: !3580)
!3590 = !DILocation(line: 972, column: 3, scope: !3552, inlinedAt: !3589)
!3591 = !DILocation(line: 973, column: 13, scope: !3552, inlinedAt: !3589)
!3592 = distinct !DIAssignID()
!3593 = !DILocation(line: 0, scope: !2559, inlinedAt: !3594)
!3594 = distinct !DILocation(line: 974, column: 3, scope: !3552, inlinedAt: !3589)
!3595 = !DILocation(line: 147, column: 41, scope: !2559, inlinedAt: !3594)
!3596 = !DILocation(line: 147, column: 62, scope: !2559, inlinedAt: !3594)
!3597 = !DILocation(line: 147, column: 57, scope: !2559, inlinedAt: !3594)
!3598 = !DILocation(line: 148, column: 15, scope: !2559, inlinedAt: !3594)
!3599 = !DILocation(line: 149, column: 21, scope: !2559, inlinedAt: !3594)
!3600 = !DILocation(line: 149, column: 24, scope: !2559, inlinedAt: !3594)
!3601 = !DILocation(line: 150, column: 19, scope: !2559, inlinedAt: !3594)
!3602 = !DILocation(line: 150, column: 24, scope: !2559, inlinedAt: !3594)
!3603 = !DILocation(line: 150, column: 6, scope: !2559, inlinedAt: !3594)
!3604 = !DILocation(line: 975, column: 10, scope: !3552, inlinedAt: !3589)
!3605 = !DILocation(line: 976, column: 1, scope: !3552, inlinedAt: !3589)
!3606 = !DILocation(line: 981, column: 3, scope: !3580)
!3607 = distinct !DISubprogram(name: "quotearg_colon", scope: !582, file: !582, line: 985, type: !1150, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3608)
!3608 = !{!3609}
!3609 = !DILocalVariable(name: "arg", arg: 1, scope: !3607, file: !582, line: 985, type: !137)
!3610 = distinct !DIAssignID()
!3611 = !DILocation(line: 0, scope: !3607)
!3612 = !DILocation(line: 0, scope: !3580, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 987, column: 10, scope: !3607)
!3614 = !DILocation(line: 0, scope: !3552, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 981, column: 10, scope: !3580, inlinedAt: !3613)
!3616 = !DILocation(line: 972, column: 3, scope: !3552, inlinedAt: !3615)
!3617 = !DILocation(line: 973, column: 13, scope: !3552, inlinedAt: !3615)
!3618 = distinct !DIAssignID()
!3619 = !DILocation(line: 0, scope: !2559, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 974, column: 3, scope: !3552, inlinedAt: !3615)
!3621 = !DILocation(line: 147, column: 57, scope: !2559, inlinedAt: !3620)
!3622 = !DILocation(line: 149, column: 21, scope: !2559, inlinedAt: !3620)
!3623 = !DILocation(line: 150, column: 6, scope: !2559, inlinedAt: !3620)
!3624 = !DILocation(line: 975, column: 10, scope: !3552, inlinedAt: !3615)
!3625 = !DILocation(line: 976, column: 1, scope: !3552, inlinedAt: !3615)
!3626 = !DILocation(line: 987, column: 3, scope: !3607)
!3627 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !582, file: !582, line: 991, type: !3425, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3628)
!3628 = !{!3629, !3630}
!3629 = !DILocalVariable(name: "arg", arg: 1, scope: !3627, file: !582, line: 991, type: !137)
!3630 = !DILocalVariable(name: "argsize", arg: 2, scope: !3627, file: !582, line: 991, type: !134)
!3631 = distinct !DIAssignID()
!3632 = !DILocation(line: 0, scope: !3627)
!3633 = !DILocation(line: 0, scope: !3552, inlinedAt: !3634)
!3634 = distinct !DILocation(line: 993, column: 10, scope: !3627)
!3635 = !DILocation(line: 972, column: 3, scope: !3552, inlinedAt: !3634)
!3636 = !DILocation(line: 973, column: 13, scope: !3552, inlinedAt: !3634)
!3637 = distinct !DIAssignID()
!3638 = !DILocation(line: 0, scope: !2559, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 974, column: 3, scope: !3552, inlinedAt: !3634)
!3640 = !DILocation(line: 147, column: 57, scope: !2559, inlinedAt: !3639)
!3641 = !DILocation(line: 149, column: 21, scope: !2559, inlinedAt: !3639)
!3642 = !DILocation(line: 150, column: 6, scope: !2559, inlinedAt: !3639)
!3643 = !DILocation(line: 975, column: 10, scope: !3552, inlinedAt: !3634)
!3644 = !DILocation(line: 976, column: 1, scope: !3552, inlinedAt: !3634)
!3645 = !DILocation(line: 993, column: 3, scope: !3627)
!3646 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !582, file: !582, line: 997, type: !3436, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3647)
!3647 = !{!3648, !3649, !3650, !3651}
!3648 = !DILocalVariable(name: "n", arg: 1, scope: !3646, file: !582, line: 997, type: !105)
!3649 = !DILocalVariable(name: "s", arg: 2, scope: !3646, file: !582, line: 997, type: !608)
!3650 = !DILocalVariable(name: "arg", arg: 3, scope: !3646, file: !582, line: 997, type: !137)
!3651 = !DILocalVariable(name: "options", scope: !3646, file: !582, line: 999, type: !635)
!3652 = distinct !DIAssignID()
!3653 = !DILocation(line: 0, scope: !3646)
!3654 = !DILocation(line: 185, column: 26, scope: !3451, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 1000, column: 13, scope: !3646)
!3656 = !DILocation(line: 999, column: 3, scope: !3646)
!3657 = !DILocation(line: 0, scope: !3451, inlinedAt: !3655)
!3658 = !DILocation(line: 186, column: 13, scope: !3461, inlinedAt: !3655)
!3659 = !DILocation(line: 186, column: 7, scope: !3451, inlinedAt: !3655)
!3660 = !DILocation(line: 187, column: 5, scope: !3461, inlinedAt: !3655)
!3661 = !{!3662}
!3662 = distinct !{!3662, !3663, !"quoting_options_from_style: argument 0"}
!3663 = distinct !{!3663, !"quoting_options_from_style"}
!3664 = !DILocation(line: 1000, column: 13, scope: !3646)
!3665 = distinct !DIAssignID()
!3666 = distinct !DIAssignID()
!3667 = !DILocation(line: 0, scope: !2559, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 1001, column: 3, scope: !3646)
!3669 = !DILocation(line: 147, column: 57, scope: !2559, inlinedAt: !3668)
!3670 = !DILocation(line: 149, column: 21, scope: !2559, inlinedAt: !3668)
!3671 = !DILocation(line: 150, column: 6, scope: !2559, inlinedAt: !3668)
!3672 = distinct !DIAssignID()
!3673 = !DILocation(line: 1002, column: 10, scope: !3646)
!3674 = !DILocation(line: 1003, column: 1, scope: !3646)
!3675 = !DILocation(line: 1002, column: 3, scope: !3646)
!3676 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !582, file: !582, line: 1006, type: !3677, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3679)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!125, !105, !137, !137, !137}
!3679 = !{!3680, !3681, !3682, !3683}
!3680 = !DILocalVariable(name: "n", arg: 1, scope: !3676, file: !582, line: 1006, type: !105)
!3681 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3676, file: !582, line: 1006, type: !137)
!3682 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3676, file: !582, line: 1007, type: !137)
!3683 = !DILocalVariable(name: "arg", arg: 4, scope: !3676, file: !582, line: 1007, type: !137)
!3684 = distinct !DIAssignID()
!3685 = !DILocation(line: 0, scope: !3676)
!3686 = !DILocalVariable(name: "o", scope: !3687, file: !582, line: 1018, type: !635)
!3687 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !582, file: !582, line: 1014, type: !3688, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3690)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!125, !105, !137, !137, !137, !134}
!3690 = !{!3691, !3692, !3693, !3694, !3695, !3686}
!3691 = !DILocalVariable(name: "n", arg: 1, scope: !3687, file: !582, line: 1014, type: !105)
!3692 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3687, file: !582, line: 1014, type: !137)
!3693 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3687, file: !582, line: 1015, type: !137)
!3694 = !DILocalVariable(name: "arg", arg: 4, scope: !3687, file: !582, line: 1016, type: !137)
!3695 = !DILocalVariable(name: "argsize", arg: 5, scope: !3687, file: !582, line: 1016, type: !134)
!3696 = !DILocation(line: 0, scope: !3687, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 1009, column: 10, scope: !3676)
!3698 = !DILocation(line: 1018, column: 3, scope: !3687, inlinedAt: !3697)
!3699 = !DILocation(line: 1018, column: 30, scope: !3687, inlinedAt: !3697)
!3700 = distinct !DIAssignID()
!3701 = distinct !DIAssignID()
!3702 = !DILocation(line: 0, scope: !2599, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 1019, column: 3, scope: !3687, inlinedAt: !3697)
!3704 = !DILocation(line: 174, column: 12, scope: !2599, inlinedAt: !3703)
!3705 = distinct !DIAssignID()
!3706 = !DILocation(line: 175, column: 8, scope: !2612, inlinedAt: !3703)
!3707 = !DILocation(line: 175, column: 19, scope: !2612, inlinedAt: !3703)
!3708 = !DILocation(line: 176, column: 5, scope: !2612, inlinedAt: !3703)
!3709 = !DILocation(line: 177, column: 6, scope: !2599, inlinedAt: !3703)
!3710 = !DILocation(line: 177, column: 17, scope: !2599, inlinedAt: !3703)
!3711 = distinct !DIAssignID()
!3712 = !DILocation(line: 178, column: 6, scope: !2599, inlinedAt: !3703)
!3713 = !DILocation(line: 178, column: 18, scope: !2599, inlinedAt: !3703)
!3714 = distinct !DIAssignID()
!3715 = !DILocation(line: 1020, column: 10, scope: !3687, inlinedAt: !3697)
!3716 = !DILocation(line: 1021, column: 1, scope: !3687, inlinedAt: !3697)
!3717 = !DILocation(line: 1009, column: 3, scope: !3676)
!3718 = distinct !DIAssignID()
!3719 = !DILocation(line: 0, scope: !3687)
!3720 = !DILocation(line: 1018, column: 3, scope: !3687)
!3721 = !DILocation(line: 1018, column: 30, scope: !3687)
!3722 = distinct !DIAssignID()
!3723 = distinct !DIAssignID()
!3724 = !DILocation(line: 0, scope: !2599, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 1019, column: 3, scope: !3687)
!3726 = !DILocation(line: 174, column: 12, scope: !2599, inlinedAt: !3725)
!3727 = distinct !DIAssignID()
!3728 = !DILocation(line: 175, column: 8, scope: !2612, inlinedAt: !3725)
!3729 = !DILocation(line: 175, column: 19, scope: !2612, inlinedAt: !3725)
!3730 = !DILocation(line: 176, column: 5, scope: !2612, inlinedAt: !3725)
!3731 = !DILocation(line: 177, column: 6, scope: !2599, inlinedAt: !3725)
!3732 = !DILocation(line: 177, column: 17, scope: !2599, inlinedAt: !3725)
!3733 = distinct !DIAssignID()
!3734 = !DILocation(line: 178, column: 6, scope: !2599, inlinedAt: !3725)
!3735 = !DILocation(line: 178, column: 18, scope: !2599, inlinedAt: !3725)
!3736 = distinct !DIAssignID()
!3737 = !DILocation(line: 1020, column: 10, scope: !3687)
!3738 = !DILocation(line: 1021, column: 1, scope: !3687)
!3739 = !DILocation(line: 1020, column: 3, scope: !3687)
!3740 = distinct !DISubprogram(name: "quotearg_custom", scope: !582, file: !582, line: 1024, type: !3741, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3743)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!125, !137, !137, !137}
!3743 = !{!3744, !3745, !3746}
!3744 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3740, file: !582, line: 1024, type: !137)
!3745 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3740, file: !582, line: 1024, type: !137)
!3746 = !DILocalVariable(name: "arg", arg: 3, scope: !3740, file: !582, line: 1025, type: !137)
!3747 = distinct !DIAssignID()
!3748 = !DILocation(line: 0, scope: !3740)
!3749 = !DILocation(line: 0, scope: !3676, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 1027, column: 10, scope: !3740)
!3751 = !DILocation(line: 0, scope: !3687, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 1009, column: 10, scope: !3676, inlinedAt: !3750)
!3753 = !DILocation(line: 1018, column: 3, scope: !3687, inlinedAt: !3752)
!3754 = !DILocation(line: 1018, column: 30, scope: !3687, inlinedAt: !3752)
!3755 = distinct !DIAssignID()
!3756 = distinct !DIAssignID()
!3757 = !DILocation(line: 0, scope: !2599, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 1019, column: 3, scope: !3687, inlinedAt: !3752)
!3759 = !DILocation(line: 174, column: 12, scope: !2599, inlinedAt: !3758)
!3760 = distinct !DIAssignID()
!3761 = !DILocation(line: 175, column: 8, scope: !2612, inlinedAt: !3758)
!3762 = !DILocation(line: 175, column: 19, scope: !2612, inlinedAt: !3758)
!3763 = !DILocation(line: 176, column: 5, scope: !2612, inlinedAt: !3758)
!3764 = !DILocation(line: 177, column: 6, scope: !2599, inlinedAt: !3758)
!3765 = !DILocation(line: 177, column: 17, scope: !2599, inlinedAt: !3758)
!3766 = distinct !DIAssignID()
!3767 = !DILocation(line: 178, column: 6, scope: !2599, inlinedAt: !3758)
!3768 = !DILocation(line: 178, column: 18, scope: !2599, inlinedAt: !3758)
!3769 = distinct !DIAssignID()
!3770 = !DILocation(line: 1020, column: 10, scope: !3687, inlinedAt: !3752)
!3771 = !DILocation(line: 1021, column: 1, scope: !3687, inlinedAt: !3752)
!3772 = !DILocation(line: 1027, column: 3, scope: !3740)
!3773 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !582, file: !582, line: 1031, type: !3774, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3776)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!125, !137, !137, !137, !134}
!3776 = !{!3777, !3778, !3779, !3780}
!3777 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3773, file: !582, line: 1031, type: !137)
!3778 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3773, file: !582, line: 1031, type: !137)
!3779 = !DILocalVariable(name: "arg", arg: 3, scope: !3773, file: !582, line: 1032, type: !137)
!3780 = !DILocalVariable(name: "argsize", arg: 4, scope: !3773, file: !582, line: 1032, type: !134)
!3781 = distinct !DIAssignID()
!3782 = !DILocation(line: 0, scope: !3773)
!3783 = !DILocation(line: 0, scope: !3687, inlinedAt: !3784)
!3784 = distinct !DILocation(line: 1034, column: 10, scope: !3773)
!3785 = !DILocation(line: 1018, column: 3, scope: !3687, inlinedAt: !3784)
!3786 = !DILocation(line: 1018, column: 30, scope: !3687, inlinedAt: !3784)
!3787 = distinct !DIAssignID()
!3788 = distinct !DIAssignID()
!3789 = !DILocation(line: 0, scope: !2599, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 1019, column: 3, scope: !3687, inlinedAt: !3784)
!3791 = !DILocation(line: 174, column: 12, scope: !2599, inlinedAt: !3790)
!3792 = distinct !DIAssignID()
!3793 = !DILocation(line: 175, column: 8, scope: !2612, inlinedAt: !3790)
!3794 = !DILocation(line: 175, column: 19, scope: !2612, inlinedAt: !3790)
!3795 = !DILocation(line: 176, column: 5, scope: !2612, inlinedAt: !3790)
!3796 = !DILocation(line: 177, column: 6, scope: !2599, inlinedAt: !3790)
!3797 = !DILocation(line: 177, column: 17, scope: !2599, inlinedAt: !3790)
!3798 = distinct !DIAssignID()
!3799 = !DILocation(line: 178, column: 6, scope: !2599, inlinedAt: !3790)
!3800 = !DILocation(line: 178, column: 18, scope: !2599, inlinedAt: !3790)
!3801 = distinct !DIAssignID()
!3802 = !DILocation(line: 1020, column: 10, scope: !3687, inlinedAt: !3784)
!3803 = !DILocation(line: 1021, column: 1, scope: !3687, inlinedAt: !3784)
!3804 = !DILocation(line: 1034, column: 3, scope: !3773)
!3805 = distinct !DISubprogram(name: "quote_n_mem", scope: !582, file: !582, line: 1049, type: !3806, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3808)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!137, !105, !137, !134}
!3808 = !{!3809, !3810, !3811}
!3809 = !DILocalVariable(name: "n", arg: 1, scope: !3805, file: !582, line: 1049, type: !105)
!3810 = !DILocalVariable(name: "arg", arg: 2, scope: !3805, file: !582, line: 1049, type: !137)
!3811 = !DILocalVariable(name: "argsize", arg: 3, scope: !3805, file: !582, line: 1049, type: !134)
!3812 = !DILocation(line: 0, scope: !3805)
!3813 = !DILocation(line: 1051, column: 10, scope: !3805)
!3814 = !DILocation(line: 1051, column: 3, scope: !3805)
!3815 = distinct !DISubprogram(name: "quote_mem", scope: !582, file: !582, line: 1055, type: !3816, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3818)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!137, !137, !134}
!3818 = !{!3819, !3820}
!3819 = !DILocalVariable(name: "arg", arg: 1, scope: !3815, file: !582, line: 1055, type: !137)
!3820 = !DILocalVariable(name: "argsize", arg: 2, scope: !3815, file: !582, line: 1055, type: !134)
!3821 = !DILocation(line: 0, scope: !3815)
!3822 = !DILocation(line: 0, scope: !3805, inlinedAt: !3823)
!3823 = distinct !DILocation(line: 1057, column: 10, scope: !3815)
!3824 = !DILocation(line: 1051, column: 10, scope: !3805, inlinedAt: !3823)
!3825 = !DILocation(line: 1057, column: 3, scope: !3815)
!3826 = distinct !DISubprogram(name: "quote_n", scope: !582, file: !582, line: 1061, type: !3827, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3829)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!137, !105, !137}
!3829 = !{!3830, !3831}
!3830 = !DILocalVariable(name: "n", arg: 1, scope: !3826, file: !582, line: 1061, type: !105)
!3831 = !DILocalVariable(name: "arg", arg: 2, scope: !3826, file: !582, line: 1061, type: !137)
!3832 = !DILocation(line: 0, scope: !3826)
!3833 = !DILocation(line: 0, scope: !3805, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 1063, column: 10, scope: !3826)
!3835 = !DILocation(line: 1051, column: 10, scope: !3805, inlinedAt: !3834)
!3836 = !DILocation(line: 1063, column: 3, scope: !3826)
!3837 = distinct !DISubprogram(name: "quote", scope: !582, file: !582, line: 1067, type: !3838, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3840)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!137, !137}
!3840 = !{!3841}
!3841 = !DILocalVariable(name: "arg", arg: 1, scope: !3837, file: !582, line: 1067, type: !137)
!3842 = !DILocation(line: 0, scope: !3837)
!3843 = !DILocation(line: 0, scope: !3826, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 1069, column: 10, scope: !3837)
!3845 = !DILocation(line: 0, scope: !3805, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 1063, column: 10, scope: !3826, inlinedAt: !3844)
!3847 = !DILocation(line: 1051, column: 10, scope: !3805, inlinedAt: !3846)
!3848 = !DILocation(line: 1069, column: 3, scope: !3837)
!3849 = distinct !DISubprogram(name: "str2sig", scope: !697, file: !697, line: 321, type: !3850, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3852)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!105, !137, !452}
!3852 = !{!3853, !3854}
!3853 = !DILocalVariable(name: "signame", arg: 1, scope: !3849, file: !697, line: 321, type: !137)
!3854 = !DILocalVariable(name: "signum", arg: 2, scope: !3849, file: !697, line: 321, type: !452)
!3855 = distinct !DIAssignID()
!3856 = distinct !DIAssignID()
!3857 = distinct !DIAssignID()
!3858 = !DILocation(line: 0, scope: !3849)
!3859 = !DILocalVariable(name: "endp", scope: !3860, file: !697, line: 282, type: !125)
!3860 = distinct !DILexicalBlock(scope: !3861, file: !697, line: 281, column: 5)
!3861 = distinct !DILexicalBlock(scope: !3862, file: !697, line: 280, column: 7)
!3862 = distinct !DISubprogram(name: "str2signum", scope: !697, file: !697, line: 278, type: !1994, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3863)
!3863 = !{!3864, !3859, !3865, !3866, !3869, !3871, !3872, !3875, !3876, !3879}
!3864 = !DILocalVariable(name: "signame", arg: 1, scope: !3862, file: !697, line: 278, type: !137)
!3865 = !DILocalVariable(name: "n", scope: !3860, file: !697, line: 283, type: !253)
!3866 = !DILocalVariable(name: "i", scope: !3867, file: !697, line: 289, type: !98)
!3867 = distinct !DILexicalBlock(scope: !3868, file: !697, line: 289, column: 7)
!3868 = distinct !DILexicalBlock(scope: !3861, file: !697, line: 288, column: 5)
!3869 = !DILocalVariable(name: "rtmin", scope: !3870, file: !697, line: 294, type: !105)
!3870 = distinct !DILexicalBlock(scope: !3868, file: !697, line: 293, column: 7)
!3871 = !DILocalVariable(name: "rtmax", scope: !3870, file: !697, line: 295, type: !105)
!3872 = !DILocalVariable(name: "endp", scope: !3873, file: !697, line: 299, type: !125)
!3873 = distinct !DILexicalBlock(scope: !3874, file: !697, line: 298, column: 11)
!3874 = distinct !DILexicalBlock(scope: !3870, file: !697, line: 297, column: 13)
!3875 = !DILocalVariable(name: "n", scope: !3873, file: !697, line: 300, type: !253)
!3876 = !DILocalVariable(name: "endp", scope: !3877, file: !697, line: 306, type: !125)
!3877 = distinct !DILexicalBlock(scope: !3878, file: !697, line: 305, column: 11)
!3878 = distinct !DILexicalBlock(scope: !3874, file: !697, line: 304, column: 18)
!3879 = !DILocalVariable(name: "n", scope: !3877, file: !697, line: 307, type: !253)
!3880 = !DILocation(line: 0, scope: !3860, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 323, column: 13, scope: !3849)
!3882 = !DILocation(line: 0, scope: !3873, inlinedAt: !3881)
!3883 = !DILocation(line: 0, scope: !3877, inlinedAt: !3881)
!3884 = !DILocation(line: 0, scope: !3862, inlinedAt: !3881)
!3885 = !DILocation(line: 280, column: 7, scope: !3861, inlinedAt: !3881)
!3886 = !DILocation(line: 280, column: 7, scope: !3862, inlinedAt: !3881)
!3887 = !DILocation(line: 289, column: 7, scope: !3867, inlinedAt: !3881)
!3888 = !DILocation(line: 282, column: 7, scope: !3860, inlinedAt: !3881)
!3889 = !DILocation(line: 283, column: 20, scope: !3860, inlinedAt: !3881)
!3890 = !DILocation(line: 284, column: 14, scope: !3891, inlinedAt: !3881)
!3891 = distinct !DILexicalBlock(scope: !3860, file: !697, line: 284, column: 11)
!3892 = !DILocation(line: 284, column: 13, scope: !3891, inlinedAt: !3881)
!3893 = !DILocation(line: 284, column: 19, scope: !3891, inlinedAt: !3881)
!3894 = !DILocation(line: 286, column: 5, scope: !3861, inlinedAt: !3881)
!3895 = !DILocation(line: 289, column: 54, scope: !3896, inlinedAt: !3881)
!3896 = distinct !DILexicalBlock(scope: !3867, file: !697, line: 289, column: 7)
!3897 = !DILocation(line: 0, scope: !3867, inlinedAt: !3881)
!3898 = !DILocation(line: 289, column: 34, scope: !3896, inlinedAt: !3881)
!3899 = distinct !{!3899, !3887, !3900, !1074}
!3900 = !DILocation(line: 291, column: 35, scope: !3867, inlinedAt: !3881)
!3901 = !DILocation(line: 290, column: 37, scope: !3902, inlinedAt: !3881)
!3902 = distinct !DILexicalBlock(scope: !3896, file: !697, line: 290, column: 13)
!3903 = !DILocalVariable(name: "__s1", arg: 1, scope: !3904, file: !1040, line: 1359, type: !137)
!3904 = distinct !DISubprogram(name: "streq", scope: !1040, file: !1040, line: 1359, type: !1041, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3905)
!3905 = !{!3903, !3906}
!3906 = !DILocalVariable(name: "__s2", arg: 2, scope: !3904, file: !1040, line: 1359, type: !137)
!3907 = !DILocation(line: 0, scope: !3904, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 290, column: 13, scope: !3902, inlinedAt: !3881)
!3909 = !DILocation(line: 1361, column: 11, scope: !3904, inlinedAt: !3908)
!3910 = !DILocation(line: 1361, column: 10, scope: !3904, inlinedAt: !3908)
!3911 = !DILocation(line: 290, column: 13, scope: !3896, inlinedAt: !3881)
!3912 = !DILocation(line: 290, column: 20, scope: !3902, inlinedAt: !3881)
!3913 = !DILocation(line: 291, column: 35, scope: !3902, inlinedAt: !3881)
!3914 = !{!3915, !1028, i64 0}
!3915 = !{!"numname", !1028, i64 0, !958, i64 4}
!3916 = !DILocation(line: 294, column: 21, scope: !3870, inlinedAt: !3881)
!3917 = !DILocation(line: 0, scope: !3870, inlinedAt: !3881)
!3918 = !DILocation(line: 295, column: 21, scope: !3870, inlinedAt: !3881)
!3919 = !DILocation(line: 297, column: 15, scope: !3874, inlinedAt: !3881)
!3920 = !DILocation(line: 297, column: 23, scope: !3874, inlinedAt: !3881)
!3921 = !DILocation(line: 297, column: 26, scope: !3874, inlinedAt: !3881)
!3922 = !DILocation(line: 297, column: 56, scope: !3874, inlinedAt: !3881)
!3923 = !DILocation(line: 297, column: 13, scope: !3870, inlinedAt: !3881)
!3924 = !DILocation(line: 299, column: 13, scope: !3873, inlinedAt: !3881)
!3925 = !DILocation(line: 300, column: 42, scope: !3873, inlinedAt: !3881)
!3926 = !DILocation(line: 300, column: 26, scope: !3873, inlinedAt: !3881)
!3927 = !DILocation(line: 301, column: 20, scope: !3928, inlinedAt: !3881)
!3928 = distinct !DILexicalBlock(scope: !3873, file: !697, line: 301, column: 17)
!3929 = !DILocation(line: 301, column: 19, scope: !3928, inlinedAt: !3881)
!3930 = !DILocation(line: 301, column: 25, scope: !3928, inlinedAt: !3881)
!3931 = !DILocation(line: 301, column: 49, scope: !3928, inlinedAt: !3881)
!3932 = !DILocation(line: 301, column: 43, scope: !3928, inlinedAt: !3881)
!3933 = !DILocation(line: 301, column: 40, scope: !3928, inlinedAt: !3881)
!3934 = !DILocation(line: 301, column: 17, scope: !3873, inlinedAt: !3881)
!3935 = !DILocation(line: 303, column: 11, scope: !3874, inlinedAt: !3881)
!3936 = !DILocation(line: 302, column: 22, scope: !3928, inlinedAt: !3881)
!3937 = !DILocation(line: 304, column: 20, scope: !3878, inlinedAt: !3881)
!3938 = !DILocation(line: 304, column: 28, scope: !3878, inlinedAt: !3881)
!3939 = !DILocation(line: 304, column: 31, scope: !3878, inlinedAt: !3881)
!3940 = !DILocation(line: 304, column: 61, scope: !3878, inlinedAt: !3881)
!3941 = !DILocation(line: 304, column: 18, scope: !3874, inlinedAt: !3881)
!3942 = !DILocation(line: 306, column: 13, scope: !3877, inlinedAt: !3881)
!3943 = !DILocation(line: 307, column: 42, scope: !3877, inlinedAt: !3881)
!3944 = !DILocation(line: 307, column: 26, scope: !3877, inlinedAt: !3881)
!3945 = !DILocation(line: 308, column: 20, scope: !3946, inlinedAt: !3881)
!3946 = distinct !DILexicalBlock(scope: !3877, file: !697, line: 308, column: 17)
!3947 = !DILocation(line: 308, column: 19, scope: !3946, inlinedAt: !3881)
!3948 = !DILocation(line: 308, column: 25, scope: !3946, inlinedAt: !3881)
!3949 = !DILocation(line: 308, column: 34, scope: !3946, inlinedAt: !3881)
!3950 = !DILocation(line: 308, column: 28, scope: !3946, inlinedAt: !3881)
!3951 = !DILocation(line: 308, column: 42, scope: !3946, inlinedAt: !3881)
!3952 = !DILocation(line: 308, column: 47, scope: !3946, inlinedAt: !3881)
!3953 = !DILocation(line: 310, column: 11, scope: !3878, inlinedAt: !3881)
!3954 = !DILocation(line: 309, column: 22, scope: !3946, inlinedAt: !3881)
!3955 = !DILocation(line: 314, column: 3, scope: !3862, inlinedAt: !3881)
!3956 = !DILocation(line: 323, column: 11, scope: !3849)
!3957 = !DILocation(line: 324, column: 10, scope: !3849)
!3958 = !DILocation(line: 324, column: 3, scope: !3849)
!3959 = distinct !DISubprogram(name: "sig2str", scope: !697, file: !697, line: 332, type: !3960, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3962)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!105, !105, !125}
!3962 = !{!3963, !3964, !3965, !3967, !3969, !3970, !3971}
!3963 = !DILocalVariable(name: "signum", arg: 1, scope: !3959, file: !697, line: 332, type: !105)
!3964 = !DILocalVariable(name: "signame", arg: 2, scope: !3959, file: !697, line: 332, type: !125)
!3965 = !DILocalVariable(name: "i", scope: !3966, file: !697, line: 334, type: !98)
!3966 = distinct !DILexicalBlock(scope: !3959, file: !697, line: 334, column: 3)
!3967 = !DILocalVariable(name: "rtmin", scope: !3968, file: !697, line: 342, type: !105)
!3968 = distinct !DILexicalBlock(scope: !3959, file: !697, line: 341, column: 3)
!3969 = !DILocalVariable(name: "rtmax", scope: !3968, file: !697, line: 343, type: !105)
!3970 = !DILocalVariable(name: "base", scope: !3968, file: !697, line: 348, type: !105)
!3971 = !DILocalVariable(name: "delta", scope: !3968, file: !697, line: 360, type: !105)
!3972 = !DILocation(line: 0, scope: !3959)
!3973 = !DILocation(line: 0, scope: !3966)
!3974 = !DILocation(line: 334, column: 3, scope: !3966)
!3975 = !DILocation(line: 334, column: 50, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3966, file: !697, line: 334, column: 3)
!3977 = !DILocation(line: 334, column: 30, scope: !3976)
!3978 = distinct !{!3978, !3974, !3979, !1074}
!3979 = !DILocation(line: 339, column: 7, scope: !3966)
!3980 = !DILocation(line: 335, column: 9, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3976, file: !697, line: 335, column: 9)
!3982 = !DILocation(line: 335, column: 26, scope: !3981)
!3983 = !DILocation(line: 335, column: 30, scope: !3981)
!3984 = !DILocation(line: 335, column: 9, scope: !3976)
!3985 = !DILocation(line: 337, column: 43, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3981, file: !697, line: 336, column: 7)
!3987 = !DILocalVariable(name: "__dest", arg: 1, scope: !3988, file: !2502, line: 77, type: !1988)
!3988 = distinct !DISubprogram(name: "strcpy", scope: !2502, file: !2502, line: 77, type: !3989, scopeLine: 78, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3991)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!125, !1988, !1018}
!3991 = !{!3987, !3992}
!3992 = !DILocalVariable(name: "__src", arg: 2, scope: !3988, file: !2502, line: 77, type: !1018)
!3993 = !DILocation(line: 0, scope: !3988, inlinedAt: !3994)
!3994 = distinct !DILocation(line: 337, column: 9, scope: !3986)
!3995 = !DILocation(line: 79, column: 10, scope: !3988, inlinedAt: !3994)
!3996 = !DILocation(line: 342, column: 17, scope: !3968)
!3997 = !DILocation(line: 0, scope: !3968)
!3998 = !DILocation(line: 343, column: 17, scope: !3968)
!3999 = !DILocation(line: 345, column: 18, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3968, file: !697, line: 345, column: 9)
!4001 = !DILocation(line: 345, column: 28, scope: !4000)
!4002 = !DILocation(line: 349, column: 34, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3968, file: !697, line: 349, column: 9)
!4004 = !DILocation(line: 349, column: 43, scope: !4003)
!4005 = !DILocation(line: 349, column: 25, scope: !4003)
!4006 = !DILocation(line: 349, column: 16, scope: !4003)
!4007 = !DILocation(line: 0, scope: !3988, inlinedAt: !4008)
!4008 = distinct !DILocation(line: 356, column: 9, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !4003, file: !697, line: 355, column: 7)
!4010 = !DILocation(line: 0, scope: !3988, inlinedAt: !4011)
!4011 = distinct !DILocation(line: 351, column: 9, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4003, file: !697, line: 350, column: 7)
!4013 = !DILocation(line: 79, column: 10, scope: !3988, inlinedAt: !4014)
!4014 = !DILocation(line: 0, scope: !4003)
!4015 = !DILocation(line: 361, column: 15, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !3968, file: !697, line: 361, column: 9)
!4017 = !DILocation(line: 361, column: 9, scope: !3968)
!4018 = !DILocation(line: 360, column: 24, scope: !3968)
!4019 = !DILocation(line: 362, column: 7, scope: !4016)
!4020 = !DILocation(line: 365, column: 1, scope: !3959)
!4021 = !DISubprogram(name: "__builtin___sprintf_chk", scope: !697, file: !697, line: 362, type: !4022, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!105, !1988, !105, !136, !1018, null}
!4024 = distinct !DISubprogram(name: "version_etc_arn", scope: !716, file: !716, line: 61, type: !4025, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4062)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{null, !4027, !137, !137, !137, !4061, !134}
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !4029)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !4030)
!4030 = !{!4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4029, file: !230, line: 51, baseType: !105, size: 32)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4029, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4029, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4029, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4029, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4029, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4029, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4029, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4029, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4029, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4029, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4029, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4029, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4029, file: !230, line: 70, baseType: !4045, size: 64, offset: 832)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4029, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4029, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4029, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4029, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4029, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4029, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4029, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4029, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4029, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4029, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4029, file: !230, line: 93, baseType: !4045, size: 64, offset: 1344)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4029, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4029, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4029, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4029, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!4062 = !{!4063, !4064, !4065, !4066, !4067, !4068}
!4063 = !DILocalVariable(name: "stream", arg: 1, scope: !4024, file: !716, line: 61, type: !4027)
!4064 = !DILocalVariable(name: "command_name", arg: 2, scope: !4024, file: !716, line: 62, type: !137)
!4065 = !DILocalVariable(name: "package", arg: 3, scope: !4024, file: !716, line: 62, type: !137)
!4066 = !DILocalVariable(name: "version", arg: 4, scope: !4024, file: !716, line: 63, type: !137)
!4067 = !DILocalVariable(name: "authors", arg: 5, scope: !4024, file: !716, line: 64, type: !4061)
!4068 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4024, file: !716, line: 64, type: !134)
!4069 = !DILocation(line: 0, scope: !4024)
!4070 = !DILocation(line: 66, column: 7, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4024, file: !716, line: 66, column: 7)
!4072 = !DILocation(line: 66, column: 7, scope: !4024)
!4073 = !DILocation(line: 67, column: 5, scope: !4071)
!4074 = !DILocation(line: 69, column: 5, scope: !4071)
!4075 = !DILocation(line: 83, column: 3, scope: !4024)
!4076 = !DILocation(line: 85, column: 3, scope: !4024)
!4077 = !DILocation(line: 88, column: 3, scope: !4024)
!4078 = !DILocation(line: 95, column: 3, scope: !4024)
!4079 = !DILocation(line: 97, column: 3, scope: !4024)
!4080 = !DILocation(line: 105, column: 7, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4024, file: !716, line: 98, column: 5)
!4082 = !DILocation(line: 106, column: 7, scope: !4081)
!4083 = !DILocation(line: 109, column: 7, scope: !4081)
!4084 = !DILocation(line: 110, column: 7, scope: !4081)
!4085 = !DILocation(line: 113, column: 7, scope: !4081)
!4086 = !DILocation(line: 115, column: 7, scope: !4081)
!4087 = !DILocation(line: 120, column: 7, scope: !4081)
!4088 = !DILocation(line: 122, column: 7, scope: !4081)
!4089 = !DILocation(line: 127, column: 7, scope: !4081)
!4090 = !DILocation(line: 129, column: 7, scope: !4081)
!4091 = !DILocation(line: 134, column: 7, scope: !4081)
!4092 = !DILocation(line: 137, column: 7, scope: !4081)
!4093 = !DILocation(line: 142, column: 7, scope: !4081)
!4094 = !DILocation(line: 145, column: 7, scope: !4081)
!4095 = !DILocation(line: 150, column: 7, scope: !4081)
!4096 = !DILocation(line: 154, column: 7, scope: !4081)
!4097 = !DILocation(line: 159, column: 7, scope: !4081)
!4098 = !DILocation(line: 163, column: 7, scope: !4081)
!4099 = !DILocation(line: 170, column: 7, scope: !4081)
!4100 = !DILocation(line: 174, column: 7, scope: !4081)
!4101 = !DILocation(line: 176, column: 1, scope: !4024)
!4102 = distinct !DISubprogram(name: "version_etc_ar", scope: !716, file: !716, line: 183, type: !4103, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4105)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{null, !4027, !137, !137, !137, !4061}
!4105 = !{!4106, !4107, !4108, !4109, !4110, !4111}
!4106 = !DILocalVariable(name: "stream", arg: 1, scope: !4102, file: !716, line: 183, type: !4027)
!4107 = !DILocalVariable(name: "command_name", arg: 2, scope: !4102, file: !716, line: 184, type: !137)
!4108 = !DILocalVariable(name: "package", arg: 3, scope: !4102, file: !716, line: 184, type: !137)
!4109 = !DILocalVariable(name: "version", arg: 4, scope: !4102, file: !716, line: 185, type: !137)
!4110 = !DILocalVariable(name: "authors", arg: 5, scope: !4102, file: !716, line: 185, type: !4061)
!4111 = !DILocalVariable(name: "n_authors", scope: !4102, file: !716, line: 187, type: !134)
!4112 = !DILocation(line: 0, scope: !4102)
!4113 = !DILocation(line: 189, column: 8, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4102, file: !716, line: 189, column: 3)
!4115 = !DILocation(line: 189, scope: !4114)
!4116 = !DILocation(line: 189, column: 23, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4114, file: !716, line: 189, column: 3)
!4118 = !DILocation(line: 189, column: 3, scope: !4114)
!4119 = !DILocation(line: 189, column: 52, scope: !4117)
!4120 = distinct !{!4120, !4118, !4121, !1074}
!4121 = !DILocation(line: 190, column: 5, scope: !4114)
!4122 = !DILocation(line: 191, column: 3, scope: !4102)
!4123 = !DILocation(line: 192, column: 1, scope: !4102)
!4124 = distinct !DISubprogram(name: "version_etc_va", scope: !716, file: !716, line: 199, type: !4125, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4137)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{null, !4027, !137, !137, !137, !4127}
!4127 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !500, line: 52, baseType: !4128)
!4128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !502, line: 12, baseType: !4129)
!4129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !716, baseType: !4130)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4131)
!4131 = !{!4132, !4133, !4134, !4135, !4136}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4130, file: !716, line: 192, baseType: !126, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4130, file: !716, line: 192, baseType: !126, size: 64, offset: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4130, file: !716, line: 192, baseType: !126, size: 64, offset: 128)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4130, file: !716, line: 192, baseType: !105, size: 32, offset: 192)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4130, file: !716, line: 192, baseType: !105, size: 32, offset: 224)
!4137 = !{!4138, !4139, !4140, !4141, !4142, !4143, !4144}
!4138 = !DILocalVariable(name: "stream", arg: 1, scope: !4124, file: !716, line: 199, type: !4027)
!4139 = !DILocalVariable(name: "command_name", arg: 2, scope: !4124, file: !716, line: 200, type: !137)
!4140 = !DILocalVariable(name: "package", arg: 3, scope: !4124, file: !716, line: 200, type: !137)
!4141 = !DILocalVariable(name: "version", arg: 4, scope: !4124, file: !716, line: 201, type: !137)
!4142 = !DILocalVariable(name: "authors", arg: 5, scope: !4124, file: !716, line: 201, type: !4127)
!4143 = !DILocalVariable(name: "n_authors", scope: !4124, file: !716, line: 203, type: !134)
!4144 = !DILocalVariable(name: "authtab", scope: !4124, file: !716, line: 204, type: !4145)
!4145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 640, elements: !80)
!4146 = distinct !DIAssignID()
!4147 = !DILocation(line: 0, scope: !4124)
!4148 = !DILocation(line: 204, column: 3, scope: !4124)
!4149 = !DILocation(line: 208, column: 35, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4151, file: !716, line: 206, column: 3)
!4151 = distinct !DILexicalBlock(scope: !4124, file: !716, line: 206, column: 3)
!4152 = !DILocation(line: 208, column: 33, scope: !4150)
!4153 = !DILocation(line: 208, column: 67, scope: !4150)
!4154 = !DILocation(line: 206, column: 3, scope: !4151)
!4155 = !DILocation(line: 208, column: 14, scope: !4150)
!4156 = !DILocation(line: 0, scope: !4151)
!4157 = !DILocation(line: 211, column: 3, scope: !4124)
!4158 = !DILocation(line: 213, column: 1, scope: !4124)
!4159 = distinct !DISubprogram(name: "version_etc", scope: !716, file: !716, line: 230, type: !4160, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4162)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{null, !4027, !137, !137, !137, null}
!4162 = !{!4163, !4164, !4165, !4166, !4167}
!4163 = !DILocalVariable(name: "stream", arg: 1, scope: !4159, file: !716, line: 230, type: !4027)
!4164 = !DILocalVariable(name: "command_name", arg: 2, scope: !4159, file: !716, line: 231, type: !137)
!4165 = !DILocalVariable(name: "package", arg: 3, scope: !4159, file: !716, line: 231, type: !137)
!4166 = !DILocalVariable(name: "version", arg: 4, scope: !4159, file: !716, line: 232, type: !137)
!4167 = !DILocalVariable(name: "authors", scope: !4159, file: !716, line: 234, type: !4127)
!4168 = distinct !DIAssignID()
!4169 = !DILocation(line: 0, scope: !4159)
!4170 = !DILocation(line: 234, column: 3, scope: !4159)
!4171 = !DILocation(line: 235, column: 3, scope: !4159)
!4172 = !DILocation(line: 236, column: 3, scope: !4159)
!4173 = !DILocation(line: 237, column: 3, scope: !4159)
!4174 = !DILocation(line: 238, column: 1, scope: !4159)
!4175 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !716, file: !716, line: 241, type: !537, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878)
!4176 = !DILocation(line: 243, column: 3, scope: !4175)
!4177 = !DILocation(line: 248, column: 3, scope: !4175)
!4178 = !DILocation(line: 254, column: 3, scope: !4175)
!4179 = !DILocation(line: 259, column: 3, scope: !4175)
!4180 = !DILocation(line: 261, column: 1, scope: !4175)
!4181 = distinct !DISubprogram(name: "xnrealloc", scope: !4182, file: !4182, line: 147, type: !4183, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4185)
!4182 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!126, !126, !134, !134}
!4185 = !{!4186, !4187, !4188}
!4186 = !DILocalVariable(name: "p", arg: 1, scope: !4181, file: !4182, line: 147, type: !126)
!4187 = !DILocalVariable(name: "n", arg: 2, scope: !4181, file: !4182, line: 147, type: !134)
!4188 = !DILocalVariable(name: "s", arg: 3, scope: !4181, file: !4182, line: 147, type: !134)
!4189 = !DILocation(line: 0, scope: !4181)
!4190 = !DILocalVariable(name: "p", arg: 1, scope: !4191, file: !886, line: 83, type: !126)
!4191 = distinct !DISubprogram(name: "xreallocarray", scope: !886, file: !886, line: 83, type: !4183, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4192)
!4192 = !{!4190, !4193, !4194}
!4193 = !DILocalVariable(name: "n", arg: 2, scope: !4191, file: !886, line: 83, type: !134)
!4194 = !DILocalVariable(name: "s", arg: 3, scope: !4191, file: !886, line: 83, type: !134)
!4195 = !DILocation(line: 0, scope: !4191, inlinedAt: !4196)
!4196 = distinct !DILocation(line: 149, column: 10, scope: !4181)
!4197 = !DILocation(line: 85, column: 25, scope: !4191, inlinedAt: !4196)
!4198 = !DILocalVariable(name: "p", arg: 1, scope: !4199, file: !886, line: 37, type: !126)
!4199 = distinct !DISubprogram(name: "check_nonnull", scope: !886, file: !886, line: 37, type: !4200, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4202)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!126, !126}
!4202 = !{!4198}
!4203 = !DILocation(line: 0, scope: !4199, inlinedAt: !4204)
!4204 = distinct !DILocation(line: 85, column: 10, scope: !4191, inlinedAt: !4196)
!4205 = !DILocation(line: 39, column: 8, scope: !4206, inlinedAt: !4204)
!4206 = distinct !DILexicalBlock(scope: !4199, file: !886, line: 39, column: 7)
!4207 = !DILocation(line: 39, column: 7, scope: !4199, inlinedAt: !4204)
!4208 = !DILocation(line: 40, column: 5, scope: !4206, inlinedAt: !4204)
!4209 = !DILocation(line: 149, column: 3, scope: !4181)
!4210 = !DILocation(line: 0, scope: !4191)
!4211 = !DILocation(line: 85, column: 25, scope: !4191)
!4212 = !DILocation(line: 0, scope: !4199, inlinedAt: !4213)
!4213 = distinct !DILocation(line: 85, column: 10, scope: !4191)
!4214 = !DILocation(line: 39, column: 8, scope: !4206, inlinedAt: !4213)
!4215 = !DILocation(line: 39, column: 7, scope: !4199, inlinedAt: !4213)
!4216 = !DILocation(line: 40, column: 5, scope: !4206, inlinedAt: !4213)
!4217 = !DILocation(line: 85, column: 3, scope: !4191)
!4218 = distinct !DISubprogram(name: "xmalloc", scope: !886, file: !886, line: 47, type: !4219, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4221)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!126, !134}
!4221 = !{!4222}
!4222 = !DILocalVariable(name: "s", arg: 1, scope: !4218, file: !886, line: 47, type: !134)
!4223 = !DILocation(line: 0, scope: !4218)
!4224 = !DILocation(line: 49, column: 25, scope: !4218)
!4225 = !DILocation(line: 0, scope: !4199, inlinedAt: !4226)
!4226 = distinct !DILocation(line: 49, column: 10, scope: !4218)
!4227 = !DILocation(line: 39, column: 8, scope: !4206, inlinedAt: !4226)
!4228 = !DILocation(line: 39, column: 7, scope: !4199, inlinedAt: !4226)
!4229 = !DILocation(line: 40, column: 5, scope: !4206, inlinedAt: !4226)
!4230 = !DILocation(line: 49, column: 3, scope: !4218)
!4231 = !DISubprogram(name: "malloc", scope: !1148, file: !1148, line: 540, type: !4219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4232 = distinct !DISubprogram(name: "ximalloc", scope: !886, file: !886, line: 53, type: !4233, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4235)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!126, !905}
!4235 = !{!4236}
!4236 = !DILocalVariable(name: "s", arg: 1, scope: !4232, file: !886, line: 53, type: !905)
!4237 = !DILocation(line: 0, scope: !4232)
!4238 = !DILocalVariable(name: "s", arg: 1, scope: !4239, file: !4240, line: 55, type: !905)
!4239 = distinct !DISubprogram(name: "imalloc", scope: !4240, file: !4240, line: 55, type: !4233, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4241)
!4240 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4241 = !{!4238}
!4242 = !DILocation(line: 0, scope: !4239, inlinedAt: !4243)
!4243 = distinct !DILocation(line: 55, column: 25, scope: !4232)
!4244 = !DILocation(line: 57, column: 26, scope: !4239, inlinedAt: !4243)
!4245 = !DILocation(line: 0, scope: !4199, inlinedAt: !4246)
!4246 = distinct !DILocation(line: 55, column: 10, scope: !4232)
!4247 = !DILocation(line: 39, column: 8, scope: !4206, inlinedAt: !4246)
!4248 = !DILocation(line: 39, column: 7, scope: !4199, inlinedAt: !4246)
!4249 = !DILocation(line: 40, column: 5, scope: !4206, inlinedAt: !4246)
!4250 = !DILocation(line: 55, column: 3, scope: !4232)
!4251 = distinct !DISubprogram(name: "xcharalloc", scope: !886, file: !886, line: 59, type: !4252, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4254)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!125, !134}
!4254 = !{!4255}
!4255 = !DILocalVariable(name: "n", arg: 1, scope: !4251, file: !886, line: 59, type: !134)
!4256 = !DILocation(line: 0, scope: !4251)
!4257 = !DILocation(line: 0, scope: !4218, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 61, column: 10, scope: !4251)
!4259 = !DILocation(line: 49, column: 25, scope: !4218, inlinedAt: !4258)
!4260 = !DILocation(line: 0, scope: !4199, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 49, column: 10, scope: !4218, inlinedAt: !4258)
!4262 = !DILocation(line: 39, column: 8, scope: !4206, inlinedAt: !4261)
!4263 = !DILocation(line: 39, column: 7, scope: !4199, inlinedAt: !4261)
!4264 = !DILocation(line: 40, column: 5, scope: !4206, inlinedAt: !4261)
!4265 = !DILocation(line: 61, column: 3, scope: !4251)
!4266 = distinct !DISubprogram(name: "xrealloc", scope: !886, file: !886, line: 68, type: !4267, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4269)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!126, !126, !134}
!4269 = !{!4270, !4271}
!4270 = !DILocalVariable(name: "p", arg: 1, scope: !4266, file: !886, line: 68, type: !126)
!4271 = !DILocalVariable(name: "s", arg: 2, scope: !4266, file: !886, line: 68, type: !134)
!4272 = !DILocation(line: 0, scope: !4266)
!4273 = !DILocalVariable(name: "ptr", arg: 1, scope: !4274, file: !4275, line: 2057, type: !126)
!4274 = distinct !DISubprogram(name: "rpl_realloc", scope: !4275, file: !4275, line: 2057, type: !4267, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4276)
!4275 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4276 = !{!4273, !4277}
!4277 = !DILocalVariable(name: "size", arg: 2, scope: !4274, file: !4275, line: 2057, type: !134)
!4278 = !DILocation(line: 0, scope: !4274, inlinedAt: !4279)
!4279 = distinct !DILocation(line: 70, column: 25, scope: !4266)
!4280 = !DILocation(line: 2059, column: 24, scope: !4274, inlinedAt: !4279)
!4281 = !DILocation(line: 2059, column: 10, scope: !4274, inlinedAt: !4279)
!4282 = !DILocation(line: 0, scope: !4199, inlinedAt: !4283)
!4283 = distinct !DILocation(line: 70, column: 10, scope: !4266)
!4284 = !DILocation(line: 39, column: 8, scope: !4206, inlinedAt: !4283)
!4285 = !DILocation(line: 39, column: 7, scope: !4199, inlinedAt: !4283)
!4286 = !DILocation(line: 40, column: 5, scope: !4206, inlinedAt: !4283)
!4287 = !DILocation(line: 70, column: 3, scope: !4266)
!4288 = !DISubprogram(name: "realloc", scope: !1148, file: !1148, line: 551, type: !4267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4289 = distinct !DISubprogram(name: "xirealloc", scope: !886, file: !886, line: 74, type: !4290, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4292)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!126, !126, !905}
!4292 = !{!4293, !4294}
!4293 = !DILocalVariable(name: "p", arg: 1, scope: !4289, file: !886, line: 74, type: !126)
!4294 = !DILocalVariable(name: "s", arg: 2, scope: !4289, file: !886, line: 74, type: !905)
!4295 = !DILocation(line: 0, scope: !4289)
!4296 = !DILocalVariable(name: "p", arg: 1, scope: !4297, file: !4240, line: 66, type: !126)
!4297 = distinct !DISubprogram(name: "irealloc", scope: !4240, file: !4240, line: 66, type: !4290, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4298)
!4298 = !{!4296, !4299}
!4299 = !DILocalVariable(name: "s", arg: 2, scope: !4297, file: !4240, line: 66, type: !905)
!4300 = !DILocation(line: 0, scope: !4297, inlinedAt: !4301)
!4301 = distinct !DILocation(line: 76, column: 25, scope: !4289)
!4302 = !DILocation(line: 0, scope: !4274, inlinedAt: !4303)
!4303 = distinct !DILocation(line: 68, column: 26, scope: !4297, inlinedAt: !4301)
!4304 = !DILocation(line: 2059, column: 24, scope: !4274, inlinedAt: !4303)
!4305 = !DILocation(line: 2059, column: 10, scope: !4274, inlinedAt: !4303)
!4306 = !DILocation(line: 0, scope: !4199, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 76, column: 10, scope: !4289)
!4308 = !DILocation(line: 39, column: 8, scope: !4206, inlinedAt: !4307)
!4309 = !DILocation(line: 39, column: 7, scope: !4199, inlinedAt: !4307)
!4310 = !DILocation(line: 40, column: 5, scope: !4206, inlinedAt: !4307)
!4311 = !DILocation(line: 76, column: 3, scope: !4289)
!4312 = distinct !DISubprogram(name: "xireallocarray", scope: !886, file: !886, line: 89, type: !4313, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4315)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!126, !126, !905, !905}
!4315 = !{!4316, !4317, !4318}
!4316 = !DILocalVariable(name: "p", arg: 1, scope: !4312, file: !886, line: 89, type: !126)
!4317 = !DILocalVariable(name: "n", arg: 2, scope: !4312, file: !886, line: 89, type: !905)
!4318 = !DILocalVariable(name: "s", arg: 3, scope: !4312, file: !886, line: 89, type: !905)
!4319 = !DILocation(line: 0, scope: !4312)
!4320 = !DILocalVariable(name: "p", arg: 1, scope: !4321, file: !4240, line: 98, type: !126)
!4321 = distinct !DISubprogram(name: "ireallocarray", scope: !4240, file: !4240, line: 98, type: !4313, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4322)
!4322 = !{!4320, !4323, !4324}
!4323 = !DILocalVariable(name: "n", arg: 2, scope: !4321, file: !4240, line: 98, type: !905)
!4324 = !DILocalVariable(name: "s", arg: 3, scope: !4321, file: !4240, line: 98, type: !905)
!4325 = !DILocation(line: 0, scope: !4321, inlinedAt: !4326)
!4326 = distinct !DILocation(line: 91, column: 25, scope: !4312)
!4327 = !DILocation(line: 101, column: 13, scope: !4321, inlinedAt: !4326)
!4328 = !DILocation(line: 0, scope: !4199, inlinedAt: !4329)
!4329 = distinct !DILocation(line: 91, column: 10, scope: !4312)
!4330 = !DILocation(line: 39, column: 8, scope: !4206, inlinedAt: !4329)
!4331 = !DILocation(line: 39, column: 7, scope: !4199, inlinedAt: !4329)
!4332 = !DILocation(line: 40, column: 5, scope: !4206, inlinedAt: !4329)
!4333 = !DILocation(line: 91, column: 3, scope: !4312)
!4334 = distinct !DISubprogram(name: "xnmalloc", scope: !886, file: !886, line: 98, type: !4335, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4337)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!126, !134, !134}
!4337 = !{!4338, !4339}
!4338 = !DILocalVariable(name: "n", arg: 1, scope: !4334, file: !886, line: 98, type: !134)
!4339 = !DILocalVariable(name: "s", arg: 2, scope: !4334, file: !886, line: 98, type: !134)
!4340 = !DILocation(line: 0, scope: !4334)
!4341 = !DILocation(line: 0, scope: !4191, inlinedAt: !4342)
!4342 = distinct !DILocation(line: 100, column: 10, scope: !4334)
!4343 = !DILocation(line: 85, column: 25, scope: !4191, inlinedAt: !4342)
!4344 = !DILocation(line: 0, scope: !4199, inlinedAt: !4345)
!4345 = distinct !DILocation(line: 85, column: 10, scope: !4191, inlinedAt: !4342)
!4346 = !DILocation(line: 39, column: 8, scope: !4206, inlinedAt: !4345)
!4347 = !DILocation(line: 39, column: 7, scope: !4199, inlinedAt: !4345)
!4348 = !DILocation(line: 40, column: 5, scope: !4206, inlinedAt: !4345)
!4349 = !DILocation(line: 100, column: 3, scope: !4334)
!4350 = distinct !DISubprogram(name: "xinmalloc", scope: !886, file: !886, line: 104, type: !4351, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4353)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!126, !905, !905}
!4353 = !{!4354, !4355}
!4354 = !DILocalVariable(name: "n", arg: 1, scope: !4350, file: !886, line: 104, type: !905)
!4355 = !DILocalVariable(name: "s", arg: 2, scope: !4350, file: !886, line: 104, type: !905)
!4356 = !DILocation(line: 0, scope: !4350)
!4357 = !DILocation(line: 0, scope: !4312, inlinedAt: !4358)
!4358 = distinct !DILocation(line: 106, column: 10, scope: !4350)
!4359 = !DILocation(line: 0, scope: !4321, inlinedAt: !4360)
!4360 = distinct !DILocation(line: 91, column: 25, scope: !4312, inlinedAt: !4358)
!4361 = !DILocation(line: 101, column: 13, scope: !4321, inlinedAt: !4360)
!4362 = !DILocation(line: 0, scope: !4199, inlinedAt: !4363)
!4363 = distinct !DILocation(line: 91, column: 10, scope: !4312, inlinedAt: !4358)
!4364 = !DILocation(line: 39, column: 8, scope: !4206, inlinedAt: !4363)
!4365 = !DILocation(line: 39, column: 7, scope: !4199, inlinedAt: !4363)
!4366 = !DILocation(line: 40, column: 5, scope: !4206, inlinedAt: !4363)
!4367 = !DILocation(line: 106, column: 3, scope: !4350)
!4368 = distinct !DISubprogram(name: "x2realloc", scope: !886, file: !886, line: 116, type: !4369, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4371)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!126, !126, !892}
!4371 = !{!4372, !4373}
!4372 = !DILocalVariable(name: "p", arg: 1, scope: !4368, file: !886, line: 116, type: !126)
!4373 = !DILocalVariable(name: "ps", arg: 2, scope: !4368, file: !886, line: 116, type: !892)
!4374 = !DILocation(line: 0, scope: !4368)
!4375 = !DILocation(line: 0, scope: !889, inlinedAt: !4376)
!4376 = distinct !DILocation(line: 118, column: 10, scope: !4368)
!4377 = !DILocation(line: 178, column: 14, scope: !889, inlinedAt: !4376)
!4378 = !DILocation(line: 180, column: 9, scope: !4379, inlinedAt: !4376)
!4379 = distinct !DILexicalBlock(scope: !889, file: !886, line: 180, column: 7)
!4380 = !DILocation(line: 180, column: 7, scope: !889, inlinedAt: !4376)
!4381 = !DILocation(line: 182, column: 13, scope: !4382, inlinedAt: !4376)
!4382 = distinct !DILexicalBlock(scope: !4383, file: !886, line: 182, column: 11)
!4383 = distinct !DILexicalBlock(scope: !4379, file: !886, line: 181, column: 5)
!4384 = !DILocation(line: 182, column: 11, scope: !4383, inlinedAt: !4376)
!4385 = !DILocation(line: 197, column: 11, scope: !4386, inlinedAt: !4376)
!4386 = distinct !DILexicalBlock(scope: !4387, file: !886, line: 197, column: 11)
!4387 = distinct !DILexicalBlock(scope: !4379, file: !886, line: 195, column: 5)
!4388 = !DILocation(line: 197, column: 11, scope: !4387, inlinedAt: !4376)
!4389 = !DILocation(line: 198, column: 9, scope: !4386, inlinedAt: !4376)
!4390 = !DILocation(line: 0, scope: !4191, inlinedAt: !4391)
!4391 = distinct !DILocation(line: 201, column: 7, scope: !889, inlinedAt: !4376)
!4392 = !DILocation(line: 85, column: 25, scope: !4191, inlinedAt: !4391)
!4393 = !DILocation(line: 0, scope: !4199, inlinedAt: !4394)
!4394 = distinct !DILocation(line: 85, column: 10, scope: !4191, inlinedAt: !4391)
!4395 = !DILocation(line: 39, column: 8, scope: !4206, inlinedAt: !4394)
!4396 = !DILocation(line: 39, column: 7, scope: !4199, inlinedAt: !4394)
!4397 = !DILocation(line: 40, column: 5, scope: !4206, inlinedAt: !4394)
!4398 = !DILocation(line: 202, column: 7, scope: !889, inlinedAt: !4376)
!4399 = !DILocation(line: 118, column: 3, scope: !4368)
!4400 = !DILocation(line: 0, scope: !889)
!4401 = !DILocation(line: 178, column: 14, scope: !889)
!4402 = !DILocation(line: 180, column: 9, scope: !4379)
!4403 = !DILocation(line: 180, column: 7, scope: !889)
!4404 = !DILocation(line: 182, column: 13, scope: !4382)
!4405 = !DILocation(line: 182, column: 11, scope: !4383)
!4406 = !DILocation(line: 190, column: 30, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4382, file: !886, line: 183, column: 9)
!4408 = !DILocation(line: 191, column: 16, scope: !4407)
!4409 = !DILocation(line: 191, column: 13, scope: !4407)
!4410 = !DILocation(line: 192, column: 9, scope: !4407)
!4411 = !DILocation(line: 197, column: 11, scope: !4386)
!4412 = !DILocation(line: 197, column: 11, scope: !4387)
!4413 = !DILocation(line: 198, column: 9, scope: !4386)
!4414 = !DILocation(line: 0, scope: !4191, inlinedAt: !4415)
!4415 = distinct !DILocation(line: 201, column: 7, scope: !889)
!4416 = !DILocation(line: 85, column: 25, scope: !4191, inlinedAt: !4415)
!4417 = !DILocation(line: 0, scope: !4199, inlinedAt: !4418)
!4418 = distinct !DILocation(line: 85, column: 10, scope: !4191, inlinedAt: !4415)
!4419 = !DILocation(line: 39, column: 8, scope: !4206, inlinedAt: !4418)
!4420 = !DILocation(line: 39, column: 7, scope: !4199, inlinedAt: !4418)
!4421 = !DILocation(line: 40, column: 5, scope: !4206, inlinedAt: !4418)
!4422 = !DILocation(line: 202, column: 7, scope: !889)
!4423 = !DILocation(line: 203, column: 3, scope: !889)
!4424 = !DILocation(line: 0, scope: !901)
!4425 = !DILocation(line: 230, column: 14, scope: !901)
!4426 = !DILocation(line: 238, column: 7, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !901, file: !886, line: 238, column: 7)
!4428 = !DILocation(line: 238, column: 7, scope: !901)
!4429 = !DILocation(line: 240, column: 9, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !901, file: !886, line: 240, column: 7)
!4431 = !DILocation(line: 240, column: 18, scope: !4430)
!4432 = !DILocation(line: 253, column: 8, scope: !901)
!4433 = !DILocation(line: 256, column: 7, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !901, file: !886, line: 256, column: 7)
!4435 = !DILocation(line: 256, column: 7, scope: !901)
!4436 = !DILocation(line: 258, column: 27, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4434, file: !886, line: 257, column: 5)
!4438 = !DILocation(line: 259, column: 32, scope: !4437)
!4439 = !DILocation(line: 260, column: 5, scope: !4437)
!4440 = !DILocation(line: 262, column: 9, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !901, file: !886, line: 262, column: 7)
!4442 = !DILocation(line: 262, column: 7, scope: !901)
!4443 = !DILocation(line: 263, column: 9, scope: !4441)
!4444 = !DILocation(line: 263, column: 5, scope: !4441)
!4445 = !DILocation(line: 264, column: 9, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !901, file: !886, line: 264, column: 7)
!4447 = !DILocation(line: 264, column: 14, scope: !4446)
!4448 = !DILocation(line: 265, column: 7, scope: !4446)
!4449 = !DILocation(line: 265, column: 11, scope: !4446)
!4450 = !DILocation(line: 266, column: 11, scope: !4446)
!4451 = !DILocation(line: 267, column: 14, scope: !4446)
!4452 = !DILocation(line: 264, column: 7, scope: !901)
!4453 = !DILocation(line: 268, column: 5, scope: !4446)
!4454 = !DILocation(line: 0, scope: !4266, inlinedAt: !4455)
!4455 = distinct !DILocation(line: 269, column: 8, scope: !901)
!4456 = !DILocation(line: 0, scope: !4274, inlinedAt: !4457)
!4457 = distinct !DILocation(line: 70, column: 25, scope: !4266, inlinedAt: !4455)
!4458 = !DILocation(line: 2059, column: 24, scope: !4274, inlinedAt: !4457)
!4459 = !DILocation(line: 2059, column: 10, scope: !4274, inlinedAt: !4457)
!4460 = !DILocation(line: 0, scope: !4199, inlinedAt: !4461)
!4461 = distinct !DILocation(line: 70, column: 10, scope: !4266, inlinedAt: !4455)
!4462 = !DILocation(line: 39, column: 8, scope: !4206, inlinedAt: !4461)
!4463 = !DILocation(line: 39, column: 7, scope: !4199, inlinedAt: !4461)
!4464 = !DILocation(line: 40, column: 5, scope: !4206, inlinedAt: !4461)
!4465 = !DILocation(line: 270, column: 7, scope: !901)
!4466 = !DILocation(line: 271, column: 3, scope: !901)
!4467 = distinct !DISubprogram(name: "xzalloc", scope: !886, file: !886, line: 279, type: !4219, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4468)
!4468 = !{!4469}
!4469 = !DILocalVariable(name: "s", arg: 1, scope: !4467, file: !886, line: 279, type: !134)
!4470 = !DILocation(line: 0, scope: !4467)
!4471 = !DILocalVariable(name: "n", arg: 1, scope: !4472, file: !886, line: 294, type: !134)
!4472 = distinct !DISubprogram(name: "xcalloc", scope: !886, file: !886, line: 294, type: !4335, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4473)
!4473 = !{!4471, !4474}
!4474 = !DILocalVariable(name: "s", arg: 2, scope: !4472, file: !886, line: 294, type: !134)
!4475 = !DILocation(line: 0, scope: !4472, inlinedAt: !4476)
!4476 = distinct !DILocation(line: 281, column: 10, scope: !4467)
!4477 = !DILocation(line: 296, column: 25, scope: !4472, inlinedAt: !4476)
!4478 = !DILocation(line: 0, scope: !4199, inlinedAt: !4479)
!4479 = distinct !DILocation(line: 296, column: 10, scope: !4472, inlinedAt: !4476)
!4480 = !DILocation(line: 39, column: 8, scope: !4206, inlinedAt: !4479)
!4481 = !DILocation(line: 39, column: 7, scope: !4199, inlinedAt: !4479)
!4482 = !DILocation(line: 40, column: 5, scope: !4206, inlinedAt: !4479)
!4483 = !DILocation(line: 281, column: 3, scope: !4467)
!4484 = !DISubprogram(name: "calloc", scope: !1148, file: !1148, line: 543, type: !4335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4485 = !DILocation(line: 0, scope: !4472)
!4486 = !DILocation(line: 296, column: 25, scope: !4472)
!4487 = !DILocation(line: 0, scope: !4199, inlinedAt: !4488)
!4488 = distinct !DILocation(line: 296, column: 10, scope: !4472)
!4489 = !DILocation(line: 39, column: 8, scope: !4206, inlinedAt: !4488)
!4490 = !DILocation(line: 39, column: 7, scope: !4199, inlinedAt: !4488)
!4491 = !DILocation(line: 40, column: 5, scope: !4206, inlinedAt: !4488)
!4492 = !DILocation(line: 296, column: 3, scope: !4472)
!4493 = distinct !DISubprogram(name: "xizalloc", scope: !886, file: !886, line: 285, type: !4233, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4494)
!4494 = !{!4495}
!4495 = !DILocalVariable(name: "s", arg: 1, scope: !4493, file: !886, line: 285, type: !905)
!4496 = !DILocation(line: 0, scope: !4493)
!4497 = !DILocalVariable(name: "n", arg: 1, scope: !4498, file: !886, line: 300, type: !905)
!4498 = distinct !DISubprogram(name: "xicalloc", scope: !886, file: !886, line: 300, type: !4351, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4499)
!4499 = !{!4497, !4500}
!4500 = !DILocalVariable(name: "s", arg: 2, scope: !4498, file: !886, line: 300, type: !905)
!4501 = !DILocation(line: 0, scope: !4498, inlinedAt: !4502)
!4502 = distinct !DILocation(line: 287, column: 10, scope: !4493)
!4503 = !DILocalVariable(name: "n", arg: 1, scope: !4504, file: !4240, line: 77, type: !905)
!4504 = distinct !DISubprogram(name: "icalloc", scope: !4240, file: !4240, line: 77, type: !4351, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4505)
!4505 = !{!4503, !4506}
!4506 = !DILocalVariable(name: "s", arg: 2, scope: !4504, file: !4240, line: 77, type: !905)
!4507 = !DILocation(line: 0, scope: !4504, inlinedAt: !4508)
!4508 = distinct !DILocation(line: 302, column: 25, scope: !4498, inlinedAt: !4502)
!4509 = !DILocation(line: 91, column: 10, scope: !4504, inlinedAt: !4508)
!4510 = !DILocation(line: 0, scope: !4199, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 302, column: 10, scope: !4498, inlinedAt: !4502)
!4512 = !DILocation(line: 39, column: 8, scope: !4206, inlinedAt: !4511)
!4513 = !DILocation(line: 39, column: 7, scope: !4199, inlinedAt: !4511)
!4514 = !DILocation(line: 40, column: 5, scope: !4206, inlinedAt: !4511)
!4515 = !DILocation(line: 287, column: 3, scope: !4493)
!4516 = !DILocation(line: 0, scope: !4498)
!4517 = !DILocation(line: 0, scope: !4504, inlinedAt: !4518)
!4518 = distinct !DILocation(line: 302, column: 25, scope: !4498)
!4519 = !DILocation(line: 91, column: 10, scope: !4504, inlinedAt: !4518)
!4520 = !DILocation(line: 0, scope: !4199, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 302, column: 10, scope: !4498)
!4522 = !DILocation(line: 39, column: 8, scope: !4206, inlinedAt: !4521)
!4523 = !DILocation(line: 39, column: 7, scope: !4199, inlinedAt: !4521)
!4524 = !DILocation(line: 40, column: 5, scope: !4206, inlinedAt: !4521)
!4525 = !DILocation(line: 302, column: 3, scope: !4498)
!4526 = distinct !DISubprogram(name: "xmemdup", scope: !886, file: !886, line: 310, type: !4527, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4529)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{!126, !1170, !134}
!4529 = !{!4530, !4531}
!4530 = !DILocalVariable(name: "p", arg: 1, scope: !4526, file: !886, line: 310, type: !1170)
!4531 = !DILocalVariable(name: "s", arg: 2, scope: !4526, file: !886, line: 310, type: !134)
!4532 = !DILocation(line: 0, scope: !4526)
!4533 = !DILocation(line: 0, scope: !4218, inlinedAt: !4534)
!4534 = distinct !DILocation(line: 312, column: 18, scope: !4526)
!4535 = !DILocation(line: 49, column: 25, scope: !4218, inlinedAt: !4534)
!4536 = !DILocation(line: 0, scope: !4199, inlinedAt: !4537)
!4537 = distinct !DILocation(line: 49, column: 10, scope: !4218, inlinedAt: !4534)
!4538 = !DILocation(line: 39, column: 8, scope: !4206, inlinedAt: !4537)
!4539 = !DILocation(line: 39, column: 7, scope: !4199, inlinedAt: !4537)
!4540 = !DILocation(line: 40, column: 5, scope: !4206, inlinedAt: !4537)
!4541 = !DILocalVariable(name: "__dest", arg: 1, scope: !4542, file: !2502, line: 26, type: !4545)
!4542 = distinct !DISubprogram(name: "memcpy", scope: !2502, file: !2502, line: 26, type: !4543, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4546)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!126, !4545, !1169, !134}
!4545 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !126)
!4546 = !{!4541, !4547, !4548}
!4547 = !DILocalVariable(name: "__src", arg: 2, scope: !4542, file: !2502, line: 26, type: !1169)
!4548 = !DILocalVariable(name: "__len", arg: 3, scope: !4542, file: !2502, line: 26, type: !134)
!4549 = !DILocation(line: 0, scope: !4542, inlinedAt: !4550)
!4550 = distinct !DILocation(line: 312, column: 10, scope: !4526)
!4551 = !DILocation(line: 29, column: 10, scope: !4542, inlinedAt: !4550)
!4552 = !DILocation(line: 312, column: 3, scope: !4526)
!4553 = distinct !DISubprogram(name: "ximemdup", scope: !886, file: !886, line: 316, type: !4554, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4556)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!126, !1170, !905}
!4556 = !{!4557, !4558}
!4557 = !DILocalVariable(name: "p", arg: 1, scope: !4553, file: !886, line: 316, type: !1170)
!4558 = !DILocalVariable(name: "s", arg: 2, scope: !4553, file: !886, line: 316, type: !905)
!4559 = !DILocation(line: 0, scope: !4553)
!4560 = !DILocation(line: 0, scope: !4232, inlinedAt: !4561)
!4561 = distinct !DILocation(line: 318, column: 18, scope: !4553)
!4562 = !DILocation(line: 0, scope: !4239, inlinedAt: !4563)
!4563 = distinct !DILocation(line: 55, column: 25, scope: !4232, inlinedAt: !4561)
!4564 = !DILocation(line: 57, column: 26, scope: !4239, inlinedAt: !4563)
!4565 = !DILocation(line: 0, scope: !4199, inlinedAt: !4566)
!4566 = distinct !DILocation(line: 55, column: 10, scope: !4232, inlinedAt: !4561)
!4567 = !DILocation(line: 39, column: 8, scope: !4206, inlinedAt: !4566)
!4568 = !DILocation(line: 39, column: 7, scope: !4199, inlinedAt: !4566)
!4569 = !DILocation(line: 40, column: 5, scope: !4206, inlinedAt: !4566)
!4570 = !DILocation(line: 0, scope: !4542, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 318, column: 10, scope: !4553)
!4572 = !DILocation(line: 29, column: 10, scope: !4542, inlinedAt: !4571)
!4573 = !DILocation(line: 318, column: 3, scope: !4553)
!4574 = distinct !DISubprogram(name: "ximemdup0", scope: !886, file: !886, line: 325, type: !4575, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4577)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!125, !1170, !905}
!4577 = !{!4578, !4579, !4580}
!4578 = !DILocalVariable(name: "p", arg: 1, scope: !4574, file: !886, line: 325, type: !1170)
!4579 = !DILocalVariable(name: "s", arg: 2, scope: !4574, file: !886, line: 325, type: !905)
!4580 = !DILocalVariable(name: "result", scope: !4574, file: !886, line: 327, type: !125)
!4581 = !DILocation(line: 0, scope: !4574)
!4582 = !DILocation(line: 327, column: 30, scope: !4574)
!4583 = !DILocation(line: 0, scope: !4232, inlinedAt: !4584)
!4584 = distinct !DILocation(line: 327, column: 18, scope: !4574)
!4585 = !DILocation(line: 0, scope: !4239, inlinedAt: !4586)
!4586 = distinct !DILocation(line: 55, column: 25, scope: !4232, inlinedAt: !4584)
!4587 = !DILocation(line: 57, column: 26, scope: !4239, inlinedAt: !4586)
!4588 = !DILocation(line: 0, scope: !4199, inlinedAt: !4589)
!4589 = distinct !DILocation(line: 55, column: 10, scope: !4232, inlinedAt: !4584)
!4590 = !DILocation(line: 39, column: 8, scope: !4206, inlinedAt: !4589)
!4591 = !DILocation(line: 39, column: 7, scope: !4199, inlinedAt: !4589)
!4592 = !DILocation(line: 40, column: 5, scope: !4206, inlinedAt: !4589)
!4593 = !DILocation(line: 328, column: 3, scope: !4574)
!4594 = !DILocation(line: 328, column: 13, scope: !4574)
!4595 = !DILocation(line: 0, scope: !4542, inlinedAt: !4596)
!4596 = distinct !DILocation(line: 329, column: 10, scope: !4574)
!4597 = !DILocation(line: 29, column: 10, scope: !4542, inlinedAt: !4596)
!4598 = !DILocation(line: 329, column: 3, scope: !4574)
!4599 = distinct !DISubprogram(name: "xstrdup", scope: !886, file: !886, line: 335, type: !1150, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4600)
!4600 = !{!4601}
!4601 = !DILocalVariable(name: "string", arg: 1, scope: !4599, file: !886, line: 335, type: !137)
!4602 = !DILocation(line: 0, scope: !4599)
!4603 = !DILocation(line: 337, column: 27, scope: !4599)
!4604 = !DILocation(line: 337, column: 43, scope: !4599)
!4605 = !DILocation(line: 0, scope: !4526, inlinedAt: !4606)
!4606 = distinct !DILocation(line: 337, column: 10, scope: !4599)
!4607 = !DILocation(line: 0, scope: !4218, inlinedAt: !4608)
!4608 = distinct !DILocation(line: 312, column: 18, scope: !4526, inlinedAt: !4606)
!4609 = !DILocation(line: 49, column: 25, scope: !4218, inlinedAt: !4608)
!4610 = !DILocation(line: 0, scope: !4199, inlinedAt: !4611)
!4611 = distinct !DILocation(line: 49, column: 10, scope: !4218, inlinedAt: !4608)
!4612 = !DILocation(line: 39, column: 8, scope: !4206, inlinedAt: !4611)
!4613 = !DILocation(line: 39, column: 7, scope: !4199, inlinedAt: !4611)
!4614 = !DILocation(line: 40, column: 5, scope: !4206, inlinedAt: !4611)
!4615 = !DILocation(line: 0, scope: !4542, inlinedAt: !4616)
!4616 = distinct !DILocation(line: 312, column: 10, scope: !4526, inlinedAt: !4606)
!4617 = !DILocation(line: 29, column: 10, scope: !4542, inlinedAt: !4616)
!4618 = !DILocation(line: 337, column: 3, scope: !4599)
!4619 = distinct !DISubprogram(name: "xalloc_die", scope: !803, file: !803, line: 32, type: !537, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4620)
!4620 = !{!4621}
!4621 = !DILocalVariable(name: "__errstatus", scope: !4622, file: !803, line: 34, type: !426)
!4622 = distinct !DILexicalBlock(scope: !4619, file: !803, line: 34, column: 3)
!4623 = !DILocation(line: 34, column: 3, scope: !4622)
!4624 = !DILocation(line: 0, scope: !4622)
!4625 = !DILocation(line: 40, column: 3, scope: !4619)
!4626 = distinct !DISubprogram(name: "c_strtod", scope: !811, file: !811, line: 102, type: !4627, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4629)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{!187, !137, !1175}
!4629 = !{!4630, !4631, !4632, !4633}
!4630 = !DILocalVariable(name: "nptr", arg: 1, scope: !4626, file: !811, line: 102, type: !137)
!4631 = !DILocalVariable(name: "endptr", arg: 2, scope: !4626, file: !811, line: 102, type: !1175)
!4632 = !DILocalVariable(name: "r", scope: !4626, file: !811, line: 104, type: !187)
!4633 = !DILocalVariable(name: "locale", scope: !4626, file: !811, line: 108, type: !813)
!4634 = !DILocation(line: 0, scope: !4626)
!4635 = !DILocation(line: 65, column: 8, scope: !4636, inlinedAt: !4640)
!4636 = distinct !DILexicalBlock(scope: !4637, file: !811, line: 65, column: 7)
!4637 = distinct !DISubprogram(name: "c_locale", scope: !811, file: !811, line: 63, type: !4638, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !810)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!813}
!4640 = distinct !DILocation(line: 108, column: 21, scope: !4626)
!4641 = !DILocation(line: 65, column: 7, scope: !4637, inlinedAt: !4640)
!4642 = !DILocation(line: 66, column: 22, scope: !4636, inlinedAt: !4640)
!4643 = !DILocation(line: 66, column: 20, scope: !4636, inlinedAt: !4640)
!4644 = !DILocation(line: 66, column: 5, scope: !4636, inlinedAt: !4640)
!4645 = !DILocation(line: 67, column: 10, scope: !4637, inlinedAt: !4640)
!4646 = !DILocation(line: 109, column: 8, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4626, file: !811, line: 109, column: 7)
!4648 = !DILocation(line: 109, column: 7, scope: !4626)
!4649 = !DILocation(line: 111, column: 11, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4651, file: !811, line: 111, column: 11)
!4651 = distinct !DILexicalBlock(scope: !4647, file: !811, line: 110, column: 5)
!4652 = !DILocation(line: 111, column: 11, scope: !4651)
!4653 = !DILocation(line: 112, column: 17, scope: !4650)
!4654 = !DILocation(line: 112, column: 9, scope: !4650)
!4655 = !DILocation(line: 118, column: 7, scope: !4626)
!4656 = !DILocation(line: 342, column: 3, scope: !4626)
!4657 = !DILocation(line: 343, column: 1, scope: !4626)
!4658 = !DISubprogram(name: "newlocale", scope: !1140, file: !1140, line: 141, type: !4659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!813, !105, !137, !813}
!4661 = !DISubprogram(name: "strtod_l", scope: !1148, file: !1148, line: 296, type: !4662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!187, !1018, !2087, !813}
!4664 = distinct !DISubprogram(name: "close_stream", scope: !923, file: !923, line: 55, type: !4665, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !4701)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{!105, !4667}
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !4669)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !4670)
!4670 = !{!4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4669, file: !230, line: 51, baseType: !105, size: 32)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4669, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4669, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4669, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4669, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4669, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4669, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4669, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4669, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4669, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4669, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4669, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4669, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4669, file: !230, line: 70, baseType: !4685, size: 64, offset: 832)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4669, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4669, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4669, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4669, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4669, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4669, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4669, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4669, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4669, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4669, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4669, file: !230, line: 93, baseType: !4685, size: 64, offset: 1344)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4669, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4669, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4669, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4669, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!4701 = !{!4702, !4703, !4705, !4706}
!4702 = !DILocalVariable(name: "stream", arg: 1, scope: !4664, file: !923, line: 55, type: !4667)
!4703 = !DILocalVariable(name: "some_pending", scope: !4664, file: !923, line: 57, type: !4704)
!4704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!4705 = !DILocalVariable(name: "prev_fail", scope: !4664, file: !923, line: 58, type: !4704)
!4706 = !DILocalVariable(name: "fclose_fail", scope: !4664, file: !923, line: 59, type: !4704)
!4707 = !DILocation(line: 0, scope: !4664)
!4708 = !DILocation(line: 57, column: 30, scope: !4664)
!4709 = !DILocalVariable(name: "__stream", arg: 1, scope: !4710, file: !2346, line: 135, type: !4667)
!4710 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2346, file: !2346, line: 135, type: !4665, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !4711)
!4711 = !{!4709}
!4712 = !DILocation(line: 0, scope: !4710, inlinedAt: !4713)
!4713 = distinct !DILocation(line: 58, column: 27, scope: !4664)
!4714 = !DILocation(line: 137, column: 10, scope: !4710, inlinedAt: !4713)
!4715 = !{!2355, !1028, i64 0}
!4716 = !DILocation(line: 58, column: 43, scope: !4664)
!4717 = !DILocation(line: 59, column: 29, scope: !4664)
!4718 = !DILocation(line: 59, column: 45, scope: !4664)
!4719 = !DILocation(line: 69, column: 17, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4664, file: !923, line: 69, column: 7)
!4721 = !DILocation(line: 57, column: 50, scope: !4664)
!4722 = !DILocation(line: 69, column: 33, scope: !4720)
!4723 = !DILocation(line: 69, column: 53, scope: !4720)
!4724 = !DILocation(line: 69, column: 59, scope: !4720)
!4725 = !DILocation(line: 69, column: 7, scope: !4664)
!4726 = !DILocation(line: 71, column: 11, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4720, file: !923, line: 70, column: 5)
!4728 = !DILocation(line: 72, column: 9, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4727, file: !923, line: 71, column: 11)
!4730 = !DILocation(line: 72, column: 15, scope: !4729)
!4731 = !DILocation(line: 77, column: 1, scope: !4664)
!4732 = !DISubprogram(name: "__fpending", scope: !4733, file: !4733, line: 75, type: !4734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4733 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4734 = !DISubroutineType(types: !4735)
!4735 = !{!134, !4667}
!4736 = distinct !DISubprogram(name: "rpl_fclose", scope: !925, file: !925, line: 58, type: !4737, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !924, retainedNodes: !4773)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{!105, !4739}
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !4741)
!4741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !4742)
!4742 = !{!4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4741, file: !230, line: 51, baseType: !105, size: 32)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4741, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4741, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4741, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4741, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4741, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4741, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4741, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4741, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4741, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4741, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4741, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4741, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4741, file: !230, line: 70, baseType: !4757, size: 64, offset: 832)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4741, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4741, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4741, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4741, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4741, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4741, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4741, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4741, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4741, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4741, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4741, file: !230, line: 93, baseType: !4757, size: 64, offset: 1344)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4741, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4741, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4741, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4741, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!4773 = !{!4774, !4775, !4776, !4777}
!4774 = !DILocalVariable(name: "fp", arg: 1, scope: !4736, file: !925, line: 58, type: !4739)
!4775 = !DILocalVariable(name: "saved_errno", scope: !4736, file: !925, line: 60, type: !105)
!4776 = !DILocalVariable(name: "fd", scope: !4736, file: !925, line: 63, type: !105)
!4777 = !DILocalVariable(name: "result", scope: !4736, file: !925, line: 74, type: !105)
!4778 = !DILocation(line: 0, scope: !4736)
!4779 = !DILocation(line: 63, column: 12, scope: !4736)
!4780 = !DILocation(line: 64, column: 10, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4736, file: !925, line: 64, column: 7)
!4782 = !DILocation(line: 64, column: 7, scope: !4736)
!4783 = !DILocation(line: 65, column: 12, scope: !4781)
!4784 = !DILocation(line: 65, column: 5, scope: !4781)
!4785 = !DILocation(line: 70, column: 9, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4736, file: !925, line: 70, column: 7)
!4787 = !DILocation(line: 70, column: 23, scope: !4786)
!4788 = !DILocation(line: 70, column: 33, scope: !4786)
!4789 = !DILocation(line: 70, column: 26, scope: !4786)
!4790 = !DILocation(line: 70, column: 59, scope: !4786)
!4791 = !DILocation(line: 71, column: 7, scope: !4786)
!4792 = !DILocation(line: 71, column: 10, scope: !4786)
!4793 = !DILocation(line: 70, column: 7, scope: !4736)
!4794 = !DILocation(line: 100, column: 12, scope: !4736)
!4795 = !DILocation(line: 105, column: 7, scope: !4736)
!4796 = !DILocation(line: 72, column: 19, scope: !4786)
!4797 = !DILocation(line: 105, column: 19, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4736, file: !925, line: 105, column: 7)
!4799 = !DILocation(line: 107, column: 13, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4798, file: !925, line: 106, column: 5)
!4801 = !DILocation(line: 109, column: 5, scope: !4800)
!4802 = !DILocation(line: 112, column: 1, scope: !4736)
!4803 = !DISubprogram(name: "fileno", scope: !500, file: !500, line: 809, type: !4737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4804 = !DISubprogram(name: "fclose", scope: !500, file: !500, line: 178, type: !4737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4805 = !DISubprogram(name: "__freading", scope: !4733, file: !4733, line: 51, type: !4737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4806 = !DISubprogram(name: "lseek", scope: !1684, file: !1684, line: 339, type: !4807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!252, !105, !252, !105}
!4809 = distinct !DISubprogram(name: "rpl_fflush", scope: !927, file: !927, line: 130, type: !4810, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4846)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!105, !4812}
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !4814)
!4814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !4815)
!4815 = !{!4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4814, file: !230, line: 51, baseType: !105, size: 32)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4814, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4814, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4814, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4814, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4814, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4814, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4814, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4814, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4814, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4814, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4814, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4814, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4814, file: !230, line: 70, baseType: !4830, size: 64, offset: 832)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4814, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4814, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4814, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4814, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4814, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4814, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4814, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4814, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4814, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4814, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4814, file: !230, line: 93, baseType: !4830, size: 64, offset: 1344)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4814, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4814, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4814, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4814, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!4846 = !{!4847}
!4847 = !DILocalVariable(name: "stream", arg: 1, scope: !4809, file: !927, line: 130, type: !4812)
!4848 = !DILocation(line: 0, scope: !4809)
!4849 = !DILocation(line: 151, column: 14, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4809, file: !927, line: 151, column: 7)
!4851 = !DILocation(line: 151, column: 22, scope: !4850)
!4852 = !DILocation(line: 151, column: 27, scope: !4850)
!4853 = !DILocation(line: 151, column: 7, scope: !4809)
!4854 = !DILocation(line: 152, column: 12, scope: !4850)
!4855 = !DILocation(line: 152, column: 5, scope: !4850)
!4856 = !DILocalVariable(name: "fp", arg: 1, scope: !4857, file: !927, line: 42, type: !4812)
!4857 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !927, file: !927, line: 42, type: !4858, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4860)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{null, !4812}
!4860 = !{!4856}
!4861 = !DILocation(line: 0, scope: !4857, inlinedAt: !4862)
!4862 = distinct !DILocation(line: 157, column: 3, scope: !4809)
!4863 = !DILocation(line: 44, column: 12, scope: !4864, inlinedAt: !4862)
!4864 = distinct !DILexicalBlock(scope: !4857, file: !927, line: 44, column: 7)
!4865 = !DILocation(line: 44, column: 19, scope: !4864, inlinedAt: !4862)
!4866 = !DILocation(line: 44, column: 7, scope: !4857, inlinedAt: !4862)
!4867 = !DILocation(line: 46, column: 5, scope: !4864, inlinedAt: !4862)
!4868 = !DILocation(line: 159, column: 10, scope: !4809)
!4869 = !DILocation(line: 159, column: 3, scope: !4809)
!4870 = !DILocation(line: 236, column: 1, scope: !4809)
!4871 = !DISubprogram(name: "fflush", scope: !500, file: !500, line: 230, type: !4810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4872 = distinct !DISubprogram(name: "rpl_fseeko", scope: !929, file: !929, line: 28, type: !4873, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4910)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{!105, !4875, !4909, !105}
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !4877)
!4877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !4878)
!4878 = !{!4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4877, file: !230, line: 51, baseType: !105, size: 32)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4877, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4877, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4877, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4877, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4877, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4877, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4877, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4877, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4877, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4877, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4877, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4877, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4877, file: !230, line: 70, baseType: !4893, size: 64, offset: 832)
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4877, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4877, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4877, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4877, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4877, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4877, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4877, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4877, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4877, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4877, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4877, file: !230, line: 93, baseType: !4893, size: 64, offset: 1344)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4877, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4877, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4877, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4877, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!4909 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !500, line: 63, baseType: !252)
!4910 = !{!4911, !4912, !4913, !4914}
!4911 = !DILocalVariable(name: "fp", arg: 1, scope: !4872, file: !929, line: 28, type: !4875)
!4912 = !DILocalVariable(name: "offset", arg: 2, scope: !4872, file: !929, line: 28, type: !4909)
!4913 = !DILocalVariable(name: "whence", arg: 3, scope: !4872, file: !929, line: 28, type: !105)
!4914 = !DILocalVariable(name: "pos", scope: !4915, file: !929, line: 123, type: !4909)
!4915 = distinct !DILexicalBlock(scope: !4916, file: !929, line: 119, column: 5)
!4916 = distinct !DILexicalBlock(scope: !4872, file: !929, line: 55, column: 7)
!4917 = !DILocation(line: 0, scope: !4872)
!4918 = !DILocation(line: 55, column: 12, scope: !4916)
!4919 = !{!2355, !957, i64 16}
!4920 = !DILocation(line: 55, column: 33, scope: !4916)
!4921 = !{!2355, !957, i64 8}
!4922 = !DILocation(line: 55, column: 25, scope: !4916)
!4923 = !DILocation(line: 56, column: 7, scope: !4916)
!4924 = !DILocation(line: 56, column: 15, scope: !4916)
!4925 = !DILocation(line: 56, column: 37, scope: !4916)
!4926 = !{!2355, !957, i64 32}
!4927 = !DILocation(line: 56, column: 29, scope: !4916)
!4928 = !DILocation(line: 57, column: 7, scope: !4916)
!4929 = !DILocation(line: 57, column: 15, scope: !4916)
!4930 = !{!2355, !957, i64 72}
!4931 = !DILocation(line: 57, column: 29, scope: !4916)
!4932 = !DILocation(line: 55, column: 7, scope: !4872)
!4933 = !DILocation(line: 123, column: 26, scope: !4915)
!4934 = !DILocation(line: 123, column: 19, scope: !4915)
!4935 = !DILocation(line: 0, scope: !4915)
!4936 = !DILocation(line: 124, column: 15, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4915, file: !929, line: 124, column: 11)
!4938 = !DILocation(line: 124, column: 11, scope: !4915)
!4939 = !DILocation(line: 135, column: 19, scope: !4915)
!4940 = !DILocation(line: 136, column: 12, scope: !4915)
!4941 = !DILocation(line: 136, column: 20, scope: !4915)
!4942 = !{!2355, !1882, i64 144}
!4943 = !DILocation(line: 167, column: 7, scope: !4915)
!4944 = !DILocation(line: 169, column: 10, scope: !4872)
!4945 = !DILocation(line: 169, column: 3, scope: !4872)
!4946 = !DILocation(line: 170, column: 1, scope: !4872)
!4947 = !DISubprogram(name: "fseeko", scope: !500, file: !500, line: 736, type: !4948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4948 = !DISubroutineType(types: !4949)
!4949 = !{!105, !4875, !252, !105}
!4950 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !838, file: !838, line: 100, type: !4951, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !841, retainedNodes: !4954)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{!134, !2520, !137, !134, !4953}
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!4954 = !{!4955, !4956, !4957, !4958, !4959}
!4955 = !DILocalVariable(name: "pwc", arg: 1, scope: !4950, file: !838, line: 100, type: !2520)
!4956 = !DILocalVariable(name: "s", arg: 2, scope: !4950, file: !838, line: 100, type: !137)
!4957 = !DILocalVariable(name: "n", arg: 3, scope: !4950, file: !838, line: 100, type: !134)
!4958 = !DILocalVariable(name: "ps", arg: 4, scope: !4950, file: !838, line: 100, type: !4953)
!4959 = !DILocalVariable(name: "ret", scope: !4950, file: !838, line: 130, type: !134)
!4960 = !DILocation(line: 0, scope: !4950)
!4961 = !DILocation(line: 105, column: 9, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4950, file: !838, line: 105, column: 7)
!4963 = !DILocation(line: 105, column: 7, scope: !4950)
!4964 = !DILocation(line: 117, column: 10, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4950, file: !838, line: 117, column: 7)
!4966 = !DILocation(line: 117, column: 7, scope: !4950)
!4967 = !DILocation(line: 130, column: 16, scope: !4950)
!4968 = !DILocation(line: 135, column: 11, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4950, file: !838, line: 135, column: 7)
!4970 = !DILocation(line: 135, column: 25, scope: !4969)
!4971 = !DILocation(line: 135, column: 30, scope: !4969)
!4972 = !DILocation(line: 135, column: 7, scope: !4950)
!4973 = !DILocalVariable(name: "ps", arg: 1, scope: !4974, file: !2493, line: 1135, type: !4953)
!4974 = distinct !DISubprogram(name: "mbszero", scope: !2493, file: !2493, line: 1135, type: !4975, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !841, retainedNodes: !4977)
!4975 = !DISubroutineType(types: !4976)
!4976 = !{null, !4953}
!4977 = !{!4973}
!4978 = !DILocation(line: 0, scope: !4974, inlinedAt: !4979)
!4979 = distinct !DILocation(line: 137, column: 5, scope: !4969)
!4980 = !DILocalVariable(name: "__dest", arg: 1, scope: !4981, file: !2502, line: 57, type: !126)
!4981 = distinct !DISubprogram(name: "memset", scope: !2502, file: !2502, line: 57, type: !2503, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !841, retainedNodes: !4982)
!4982 = !{!4980, !4983, !4984}
!4983 = !DILocalVariable(name: "__ch", arg: 2, scope: !4981, file: !2502, line: 57, type: !105)
!4984 = !DILocalVariable(name: "__len", arg: 3, scope: !4981, file: !2502, line: 57, type: !134)
!4985 = !DILocation(line: 0, scope: !4981, inlinedAt: !4986)
!4986 = distinct !DILocation(line: 1137, column: 3, scope: !4974, inlinedAt: !4979)
!4987 = !DILocation(line: 59, column: 10, scope: !4981, inlinedAt: !4986)
!4988 = !DILocation(line: 137, column: 5, scope: !4969)
!4989 = !DILocation(line: 138, column: 11, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4950, file: !838, line: 138, column: 7)
!4991 = !DILocation(line: 138, column: 7, scope: !4950)
!4992 = !DILocation(line: 139, column: 5, scope: !4990)
!4993 = !DILocation(line: 143, column: 26, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4950, file: !838, line: 143, column: 7)
!4995 = !DILocation(line: 143, column: 41, scope: !4994)
!4996 = !DILocation(line: 143, column: 7, scope: !4950)
!4997 = !DILocation(line: 145, column: 15, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4999, file: !838, line: 145, column: 11)
!4999 = distinct !DILexicalBlock(scope: !4994, file: !838, line: 144, column: 5)
!5000 = !DILocation(line: 145, column: 11, scope: !4999)
!5001 = !DILocation(line: 146, column: 32, scope: !4998)
!5002 = !DILocation(line: 146, column: 16, scope: !4998)
!5003 = !DILocation(line: 146, column: 14, scope: !4998)
!5004 = !DILocation(line: 146, column: 9, scope: !4998)
!5005 = !DILocation(line: 286, column: 1, scope: !4950)
!5006 = !DISubprogram(name: "mbsinit", scope: !5007, file: !5007, line: 293, type: !5008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5007 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5008 = !DISubroutineType(types: !5009)
!5009 = !{!105, !5010}
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !844)
!5012 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !931, file: !931, line: 27, type: !4183, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !930, retainedNodes: !5013)
!5013 = !{!5014, !5015, !5016, !5017}
!5014 = !DILocalVariable(name: "ptr", arg: 1, scope: !5012, file: !931, line: 27, type: !126)
!5015 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5012, file: !931, line: 27, type: !134)
!5016 = !DILocalVariable(name: "size", arg: 3, scope: !5012, file: !931, line: 27, type: !134)
!5017 = !DILocalVariable(name: "nbytes", scope: !5012, file: !931, line: 29, type: !134)
!5018 = !DILocation(line: 0, scope: !5012)
!5019 = !DILocation(line: 30, column: 7, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5012, file: !931, line: 30, column: 7)
!5021 = !DILocation(line: 30, column: 7, scope: !5012)
!5022 = !DILocation(line: 32, column: 7, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5020, file: !931, line: 31, column: 5)
!5024 = !DILocation(line: 32, column: 13, scope: !5023)
!5025 = !DILocation(line: 33, column: 7, scope: !5023)
!5026 = !DILocalVariable(name: "ptr", arg: 1, scope: !5027, file: !4275, line: 2057, type: !126)
!5027 = distinct !DISubprogram(name: "rpl_realloc", scope: !4275, file: !4275, line: 2057, type: !4267, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !930, retainedNodes: !5028)
!5028 = !{!5026, !5029}
!5029 = !DILocalVariable(name: "size", arg: 2, scope: !5027, file: !4275, line: 2057, type: !134)
!5030 = !DILocation(line: 0, scope: !5027, inlinedAt: !5031)
!5031 = distinct !DILocation(line: 37, column: 10, scope: !5012)
!5032 = !DILocation(line: 2059, column: 24, scope: !5027, inlinedAt: !5031)
!5033 = !DILocation(line: 2059, column: 10, scope: !5027, inlinedAt: !5031)
!5034 = !DILocation(line: 37, column: 3, scope: !5012)
!5035 = !DILocation(line: 38, column: 1, scope: !5012)
!5036 = distinct !DISubprogram(name: "hard_locale", scope: !856, file: !856, line: 28, type: !2017, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !932, retainedNodes: !5037)
!5037 = !{!5038, !5039}
!5038 = !DILocalVariable(name: "category", arg: 1, scope: !5036, file: !856, line: 28, type: !105)
!5039 = !DILocalVariable(name: "locale", scope: !5036, file: !856, line: 30, type: !5040)
!5040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5041)
!5041 = !{!5042}
!5042 = !DISubrange(count: 257)
!5043 = distinct !DIAssignID()
!5044 = !DILocation(line: 0, scope: !5036)
!5045 = !DILocation(line: 30, column: 3, scope: !5036)
!5046 = !DILocation(line: 32, column: 7, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5036, file: !856, line: 32, column: 7)
!5048 = !DILocation(line: 32, column: 7, scope: !5036)
!5049 = !DILocalVariable(name: "__s1", arg: 1, scope: !5050, file: !1040, line: 1359, type: !137)
!5050 = distinct !DISubprogram(name: "streq", scope: !1040, file: !1040, line: 1359, type: !1041, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !932, retainedNodes: !5051)
!5051 = !{!5049, !5052}
!5052 = !DILocalVariable(name: "__s2", arg: 2, scope: !5050, file: !1040, line: 1359, type: !137)
!5053 = !DILocation(line: 0, scope: !5050, inlinedAt: !5054)
!5054 = distinct !DILocation(line: 35, column: 9, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5036, file: !856, line: 35, column: 7)
!5056 = !DILocation(line: 1361, column: 11, scope: !5050, inlinedAt: !5054)
!5057 = !DILocation(line: 1361, column: 10, scope: !5050, inlinedAt: !5054)
!5058 = !DILocation(line: 35, column: 29, scope: !5055)
!5059 = !DILocation(line: 0, scope: !5050, inlinedAt: !5060)
!5060 = distinct !DILocation(line: 35, column: 32, scope: !5055)
!5061 = !DILocation(line: 1361, column: 11, scope: !5050, inlinedAt: !5060)
!5062 = !DILocation(line: 1361, column: 10, scope: !5050, inlinedAt: !5060)
!5063 = !DILocation(line: 35, column: 7, scope: !5036)
!5064 = !DILocation(line: 46, column: 3, scope: !5036)
!5065 = !DILocation(line: 47, column: 1, scope: !5036)
!5066 = distinct !DISubprogram(name: "setlocale_null_r", scope: !935, file: !935, line: 154, type: !5067, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !934, retainedNodes: !5069)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!105, !105, !125, !134}
!5069 = !{!5070, !5071, !5072}
!5070 = !DILocalVariable(name: "category", arg: 1, scope: !5066, file: !935, line: 154, type: !105)
!5071 = !DILocalVariable(name: "buf", arg: 2, scope: !5066, file: !935, line: 154, type: !125)
!5072 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5066, file: !935, line: 154, type: !134)
!5073 = !DILocation(line: 0, scope: !5066)
!5074 = !DILocation(line: 159, column: 10, scope: !5066)
!5075 = !DILocation(line: 159, column: 3, scope: !5066)
!5076 = distinct !DISubprogram(name: "setlocale_null", scope: !935, file: !935, line: 186, type: !5077, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !934, retainedNodes: !5079)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{!137, !105}
!5079 = !{!5080}
!5080 = !DILocalVariable(name: "category", arg: 1, scope: !5076, file: !935, line: 186, type: !105)
!5081 = !DILocation(line: 0, scope: !5076)
!5082 = !DILocation(line: 189, column: 10, scope: !5076)
!5083 = !DILocation(line: 189, column: 3, scope: !5076)
!5084 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !937, file: !937, line: 35, type: !5077, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !936, retainedNodes: !5085)
!5085 = !{!5086, !5087}
!5086 = !DILocalVariable(name: "category", arg: 1, scope: !5084, file: !937, line: 35, type: !105)
!5087 = !DILocalVariable(name: "result", scope: !5084, file: !937, line: 37, type: !137)
!5088 = !DILocation(line: 0, scope: !5084)
!5089 = !DILocation(line: 37, column: 24, scope: !5084)
!5090 = !DILocation(line: 62, column: 3, scope: !5084)
!5091 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !937, file: !937, line: 66, type: !5067, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !936, retainedNodes: !5092)
!5092 = !{!5093, !5094, !5095, !5096, !5097}
!5093 = !DILocalVariable(name: "category", arg: 1, scope: !5091, file: !937, line: 66, type: !105)
!5094 = !DILocalVariable(name: "buf", arg: 2, scope: !5091, file: !937, line: 66, type: !125)
!5095 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5091, file: !937, line: 66, type: !134)
!5096 = !DILocalVariable(name: "result", scope: !5091, file: !937, line: 111, type: !137)
!5097 = !DILocalVariable(name: "length", scope: !5098, file: !937, line: 125, type: !134)
!5098 = distinct !DILexicalBlock(scope: !5099, file: !937, line: 124, column: 5)
!5099 = distinct !DILexicalBlock(scope: !5091, file: !937, line: 113, column: 7)
!5100 = !DILocation(line: 0, scope: !5091)
!5101 = !DILocation(line: 0, scope: !5084, inlinedAt: !5102)
!5102 = distinct !DILocation(line: 111, column: 24, scope: !5091)
!5103 = !DILocation(line: 37, column: 24, scope: !5084, inlinedAt: !5102)
!5104 = !DILocation(line: 113, column: 14, scope: !5099)
!5105 = !DILocation(line: 113, column: 7, scope: !5091)
!5106 = !DILocation(line: 116, column: 19, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5108, file: !937, line: 116, column: 11)
!5108 = distinct !DILexicalBlock(scope: !5099, file: !937, line: 114, column: 5)
!5109 = !DILocation(line: 116, column: 11, scope: !5108)
!5110 = !DILocation(line: 120, column: 16, scope: !5107)
!5111 = !DILocation(line: 120, column: 9, scope: !5107)
!5112 = !DILocation(line: 125, column: 23, scope: !5098)
!5113 = !DILocation(line: 0, scope: !5098)
!5114 = !DILocation(line: 126, column: 18, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5098, file: !937, line: 126, column: 11)
!5116 = !DILocation(line: 126, column: 11, scope: !5098)
!5117 = !DILocation(line: 128, column: 39, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5115, file: !937, line: 127, column: 9)
!5119 = !DILocalVariable(name: "__dest", arg: 1, scope: !5120, file: !2502, line: 26, type: !4545)
!5120 = distinct !DISubprogram(name: "memcpy", scope: !2502, file: !2502, line: 26, type: !4543, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !936, retainedNodes: !5121)
!5121 = !{!5119, !5122, !5123}
!5122 = !DILocalVariable(name: "__src", arg: 2, scope: !5120, file: !2502, line: 26, type: !1169)
!5123 = !DILocalVariable(name: "__len", arg: 3, scope: !5120, file: !2502, line: 26, type: !134)
!5124 = !DILocation(line: 0, scope: !5120, inlinedAt: !5125)
!5125 = distinct !DILocation(line: 128, column: 11, scope: !5118)
!5126 = !DILocation(line: 29, column: 10, scope: !5120, inlinedAt: !5125)
!5127 = !DILocation(line: 129, column: 11, scope: !5118)
!5128 = !DILocation(line: 133, column: 23, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5130, file: !937, line: 133, column: 15)
!5130 = distinct !DILexicalBlock(scope: !5115, file: !937, line: 132, column: 9)
!5131 = !DILocation(line: 133, column: 15, scope: !5130)
!5132 = !DILocation(line: 138, column: 44, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5129, file: !937, line: 134, column: 13)
!5134 = !DILocation(line: 0, scope: !5120, inlinedAt: !5135)
!5135 = distinct !DILocation(line: 138, column: 15, scope: !5133)
!5136 = !DILocation(line: 29, column: 10, scope: !5120, inlinedAt: !5135)
!5137 = !DILocation(line: 139, column: 15, scope: !5133)
!5138 = !DILocation(line: 139, column: 32, scope: !5133)
!5139 = !DILocation(line: 140, column: 13, scope: !5133)
!5140 = !DILocation(line: 0, scope: !5099)
!5141 = !DILocation(line: 145, column: 1, scope: !5091)
