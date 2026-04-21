; ModuleID = 'src/timeout.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

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
@long_options = internal constant [8 x %struct.option] [%struct.option { ptr @.str.63, i32 0, ptr null, i32 102 }, %struct.option { ptr @.str.64, i32 1, ptr null, i32 107 }, %struct.option { ptr @.str.65, i32 0, ptr null, i32 112 }, %struct.option { ptr @.str.66, i32 1, ptr null, i32 115 }, %struct.option { ptr @.str.67, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.68, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.69, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !92
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
@term_sig = internal unnamed_addr constant [22 x i32] [i32 14, i32 2, i32 3, i32 1, i32 15, i32 13, i32 10, i32 12, i32 4, i32 5, i32 6, i32 7, i32 8, i32 11, i32 24, i32 25, i32 31, i32 26, i32 27, i32 29, i32 30, i32 16], align 16, !dbg !422
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !484
@.str.37 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !476
@.str.1.38 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !478
@.str.2.39 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !480
@.str.3.40 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !482
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !486
@stderr = external local_unnamed_addr global ptr, align 8
@.str.43 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !492
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !523
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !494
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !513
@.str.1.49 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !515
@.str.2.51 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !517
@.str.3.50 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !519
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !521
@.str.4.44 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !525
@.str.5.45 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !527
@.str.6.46 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !529
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !534
@.str.77 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !540
@.str.1.78 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !542
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !544
@.str.81 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !575
@.str.1.82 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !578
@.str.2.83 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !580
@.str.3.84 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !585
@.str.4.85 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !587
@.str.5.86 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !589
@.str.6.87 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !591
@.str.7.88 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !593
@.str.8.89 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !595
@.str.9.90 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !597
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.81, ptr @.str.1.82, ptr @.str.2.83, ptr @.str.3.84, ptr @.str.4.85, ptr @.str.5.86, ptr @.str.6.87, ptr @.str.7.88, ptr @.str.8.89, ptr @.str.9.90, ptr null], align 16, !dbg !599
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !624
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !638
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !676
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !683
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !640
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !685
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !628
@.str.10.93 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !645
@.str.11.91 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !647
@.str.12.94 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !649
@.str.13.92 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !651
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !653
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 16, !dbg !689
@.str.101 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1, !dbg !695
@.str.1.102 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1, !dbg !697
@.str.2.105 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1, !dbg !699
@.str.106 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !709
@.str.1.107 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !712
@.str.2.108 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !714
@.str.3.109 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !716
@.str.4.110 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !718
@.str.5.111 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !720
@.str.6.112 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !725
@.str.7.113 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !727
@.str.8.114 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !729
@.str.9.115 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !731
@.str.10.116 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !736
@.str.11.117 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !738
@.str.12.118 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !743
@.str.13.119 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !745
@.str.14.120 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !750
@.str.15.121 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !755
@.str.16.122 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !760
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.127 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !765
@.str.18.128 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !767
@.str.19.129 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !769
@.str.20.130 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !771
@.str.21.131 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !773
@.str.22.132 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !775
@.str.23.133 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !777
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !782
@exit_failure = dso_local global i32 1, align 4, !dbg !790
@.str.148 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !796
@.str.1.146 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !799
@.str.2.147 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !801
@c_locale_cache = internal global ptr null, align 8, !dbg !803
@.str.151 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !828
@.str.162 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !831
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !834
@.str.1.167 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !849

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !941 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !943, metadata !DIExpression()), !dbg !944
  %2 = icmp eq i32 %0, 0, !dbg !945
  br i1 %2, label %8, label %3, !dbg !947

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !948, !tbaa !950
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #41, !dbg !948
  %6 = load ptr, ptr @program_name, align 8, !dbg !948, !tbaa !950
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #41, !dbg !948
  br label %48, !dbg !948

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #41, !dbg !954
  %10 = load ptr, ptr @program_name, align 8, !dbg !954, !tbaa !950
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #41, !dbg !954
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #41, !dbg !956
  %13 = load ptr, ptr @stdout, align 8, !dbg !956, !tbaa !950
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !956
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #41, !dbg !957
  %16 = load ptr, ptr @stdout, align 8, !dbg !957, !tbaa !950
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !957
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #41, !dbg !960
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !960
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #41, !dbg !961
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !961
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #41, !dbg !962
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !962
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #41, !dbg !963
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !963
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #41, !dbg !964
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !964
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #41, !dbg !965
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !965
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #41, !dbg !966
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !966
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #41, !dbg !967
  %26 = load ptr, ptr @stdout, align 8, !dbg !967, !tbaa !950
  %27 = tail call i32 @fputs_unlocked(ptr noundef %25, ptr noundef %26), !dbg !967
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #41, !dbg !968
  %29 = load ptr, ptr @stdout, align 8, !dbg !968, !tbaa !950
  %30 = tail call i32 @fputs_unlocked(ptr noundef %28, ptr noundef %29), !dbg !968
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #41, !dbg !969
  %32 = load ptr, ptr @stdout, align 8, !dbg !969, !tbaa !950
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !969
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !970, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata !989, metadata !983, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata ptr poison, metadata !982, metadata !DIExpression()), !dbg !987
  tail call void @emit_bug_reporting_address() #41, !dbg !990
  %34 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #41, !dbg !991
  call void @llvm.dbg.value(metadata ptr %34, metadata !985, metadata !DIExpression()), !dbg !987
  %35 = icmp eq ptr %34, null, !dbg !992
  br i1 %35, label %43, label %36, !dbg !994

36:                                               ; preds = %8
  %37 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(4) @.str.58, i64 noundef 3) #42, !dbg !995
  %38 = icmp eq i32 %37, 0, !dbg !995
  br i1 %38, label %43, label %39, !dbg !996

39:                                               ; preds = %36
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #41, !dbg !997
  %41 = load ptr, ptr @stdout, align 8, !dbg !997, !tbaa !950
  %42 = tail call i32 @fputs_unlocked(ptr noundef %40, ptr noundef %41), !dbg !997
  br label %43, !dbg !999

43:                                               ; preds = %8, %36, %39
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !982, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !986, metadata !DIExpression()), !dbg !987
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #41, !dbg !1000
  %45 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %44, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.3) #41, !dbg !1000
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #41, !dbg !1001
  %47 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %46, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.62) #41, !dbg !1001
  br label %48

48:                                               ; preds = %43, %3
  tail call void @exit(i32 noundef %0) #43, !dbg !1002
  unreachable, !dbg !1002
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1003 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1007 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1013 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1016 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !204 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !208, metadata !DIExpression()), !dbg !1020
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !209, metadata !DIExpression()), !dbg !1020
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1021, !tbaa !1022
  %3 = icmp eq i32 %2, -1, !dbg !1024
  br i1 %3, label %4, label %16, !dbg !1025

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.28) #41, !dbg !1026
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !210, metadata !DIExpression()), !dbg !1027
  %6 = icmp eq ptr %5, null, !dbg !1028
  br i1 %6, label %14, label %7, !dbg !1029

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1030, !tbaa !1031
  %9 = icmp eq i8 %8, 0, !dbg !1030
  br i1 %9, label %14, label %10, !dbg !1032

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1033, metadata !DIExpression()), !dbg !1040
  call void @llvm.dbg.value(metadata ptr @.str.29, metadata !1039, metadata !DIExpression()), !dbg !1040
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.29) #42, !dbg !1042
  %12 = icmp eq i32 %11, 0, !dbg !1043
  %13 = zext i1 %12 to i32, !dbg !1032
  br label %14, !dbg !1032

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1044, !tbaa !1022
  br label %16, !dbg !1045

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1046
  %18 = icmp eq i32 %17, 0, !dbg !1046
  br i1 %18, label %22, label %19, !dbg !1048

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1049, !tbaa !950
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1049
  br label %124, !dbg !1051

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !213, metadata !DIExpression()), !dbg !1020
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.30) #42, !dbg !1052
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1053
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !214, metadata !DIExpression()), !dbg !1020
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #42, !dbg !1054
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !215, metadata !DIExpression()), !dbg !1020
  %26 = icmp eq ptr %25, null, !dbg !1055
  br i1 %26, label %54, label %27, !dbg !1056

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1057
  br i1 %28, label %54, label %29, !dbg !1058

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !216, metadata !DIExpression()), !dbg !1059
  tail call void @llvm.dbg.value(metadata i64 0, metadata !220, metadata !DIExpression()), !dbg !1059
  %30 = icmp ult ptr %24, %25, !dbg !1060
  br i1 %30, label %31, label %54, !dbg !1061

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #44, !dbg !1020
  %33 = load ptr, ptr %32, align 8, !tbaa !950
  br label %34, !dbg !1061

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !216, metadata !DIExpression()), !dbg !1059
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !220, metadata !DIExpression()), !dbg !1059
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1062
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !216, metadata !DIExpression()), !dbg !1059
  %38 = load i8, ptr %35, align 1, !dbg !1062, !tbaa !1031
  %39 = sext i8 %38 to i64, !dbg !1062
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1062
  %41 = load i16, ptr %40, align 2, !dbg !1062, !tbaa !1063
  %42 = freeze i16 %41, !dbg !1065
  %43 = lshr i16 %42, 13, !dbg !1065
  %44 = and i16 %43, 1, !dbg !1065
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1066
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !220, metadata !DIExpression()), !dbg !1059
  %47 = icmp ult ptr %37, %25, !dbg !1060
  %48 = icmp ult i64 %46, 2, !dbg !1067
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1067
  br i1 %49, label %34, label %50, !dbg !1061, !llvm.loop !1068

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1070
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1072
  %53 = zext i1 %51 to i8, !dbg !1072
  br label %54, !dbg !1072

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1020
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !1020
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !213, metadata !DIExpression()), !dbg !1020
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !215, metadata !DIExpression()), !dbg !1020
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.31) #42, !dbg !1073
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !221, metadata !DIExpression()), !dbg !1020
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1074
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !222, metadata !DIExpression()), !dbg !1020
  br label %59, !dbg !1075

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !1020
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !1020
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !213, metadata !DIExpression()), !dbg !1020
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !222, metadata !DIExpression()), !dbg !1020
  %62 = load i8, ptr %60, align 1, !dbg !1076, !tbaa !1031
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !1077

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1078
  %65 = load i8, ptr %64, align 1, !dbg !1081, !tbaa !1031
  %66 = icmp eq i8 %65, 45, !dbg !1082
  %67 = select i1 %66, i8 0, i8 %61, !dbg !1083
  br label %68, !dbg !1083

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !1020
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !213, metadata !DIExpression()), !dbg !1020
  %70 = tail call ptr @__ctype_b_loc() #44, !dbg !1084
  %71 = load ptr, ptr %70, align 8, !dbg !1084, !tbaa !950
  %72 = sext i8 %62 to i64, !dbg !1084
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1084
  %74 = load i16, ptr %73, align 2, !dbg !1084, !tbaa !1063
  %75 = and i16 %74, 8192, !dbg !1084
  %76 = icmp eq i16 %75, 0, !dbg !1084
  br i1 %76, label %92, label %77, !dbg !1086

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1087
  br i1 %78, label %94, label %79, !dbg !1090

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1091
  %81 = load i8, ptr %80, align 1, !dbg !1091, !tbaa !1031
  %82 = sext i8 %81 to i64, !dbg !1091
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1091
  %84 = load i16, ptr %83, align 2, !dbg !1091, !tbaa !1063
  %85 = and i16 %84, 8192, !dbg !1091
  %86 = icmp eq i16 %85, 0, !dbg !1091
  br i1 %86, label %87, label %94, !dbg !1092

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !1093
  %89 = icmp ne i8 %88, 0, !dbg !1093
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !1095
  br i1 %91, label %92, label %94, !dbg !1095

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1096
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !222, metadata !DIExpression()), !dbg !1020
  br label %59, !dbg !1075, !llvm.loop !1097

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !1099
  %96 = load ptr, ptr @stdout, align 8, !dbg !1099, !tbaa !950
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !1099
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1033, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata !989, metadata !1039, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1033, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata !989, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1033, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata !989, metadata !1039, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1033, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata !989, metadata !1039, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1033, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata !989, metadata !1039, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1033, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata !989, metadata !1039, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1033, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata !989, metadata !1039, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1033, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata !989, metadata !1039, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1033, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata !989, metadata !1039, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1033, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata !989, metadata !1039, metadata !DIExpression()), !dbg !1118
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !277, metadata !DIExpression()), !dbg !1020
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.45, i64 noundef 6) #42, !dbg !1120
  %99 = icmp eq i32 %98, 0, !dbg !1120
  br i1 %99, label %103, label %100, !dbg !1122

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.46, i64 noundef 9) #42, !dbg !1123
  %102 = icmp eq i32 %101, 0, !dbg !1123
  br i1 %102, label %103, label %106, !dbg !1124

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1125
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #41, !dbg !1125
  br label %109, !dbg !1127

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1128
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #41, !dbg !1128
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1130, !tbaa !950
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.51, ptr noundef %110), !dbg !1130
  %112 = load ptr, ptr @stdout, align 8, !dbg !1131, !tbaa !950
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.52, ptr noundef %112), !dbg !1131
  %114 = ptrtoint ptr %60 to i64, !dbg !1132
  %115 = sub i64 %114, %95, !dbg !1132
  %116 = load ptr, ptr @stdout, align 8, !dbg !1132, !tbaa !950
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1132
  %118 = load ptr, ptr @stdout, align 8, !dbg !1133, !tbaa !950
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.53, ptr noundef %118), !dbg !1133
  %120 = load ptr, ptr @stdout, align 8, !dbg !1134, !tbaa !950
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.54, ptr noundef %120), !dbg !1134
  %122 = load ptr, ptr @stdout, align 8, !dbg !1135, !tbaa !950
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1135
  br label %124, !dbg !1136

124:                                              ; preds = %109, %19
  ret void, !dbg !1136
}

; Function Attrs: nounwind
declare !dbg !1137 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1141 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1145 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1147 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1150 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1153 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1156 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1159 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1163 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1164 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1170 {
  %3 = alloca %struct.sigaction, align 8, !DIAssignID !1202
  %4 = alloca %struct.sigaction, align 8, !DIAssignID !1203
  %5 = alloca %struct.__sigset_t, align 8, !DIAssignID !1204
  %6 = alloca %struct.sigaction, align 8, !DIAssignID !1205
  %7 = alloca %struct.sigaction, align 8, !DIAssignID !1206
  %8 = alloca %struct.sigaction, align 8, !DIAssignID !1207
  %9 = alloca %struct.sigaction, align 8, !DIAssignID !1208
  %10 = alloca %struct.__sigset_t, align 8, !DIAssignID !1209
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1179, metadata !DIExpression(), metadata !1209, metadata ptr %10, metadata !DIExpression()), !dbg !1210
  %11 = alloca i32, align 4, !DIAssignID !1211
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1195, metadata !DIExpression(), metadata !1211, metadata ptr %11, metadata !DIExpression()), !dbg !1212
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1175, metadata !DIExpression()), !dbg !1210
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1176, metadata !DIExpression()), !dbg !1210
  %12 = load ptr, ptr %1, align 8, !dbg !1213, !tbaa !950
  tail call void @set_program_name(ptr noundef %12) #41, !dbg !1214
  %13 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.14) #41, !dbg !1215
  %14 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #41, !dbg !1216
  %15 = tail call ptr @textdomain(ptr noundef nonnull @.str.15) #41, !dbg !1217
  tail call void @llvm.dbg.value(metadata i32 125, metadata !1218, metadata !DIExpression()), !dbg !1221
  store volatile i32 125, ptr @exit_failure, align 4, !dbg !1223, !tbaa !1022
  %16 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #41, !dbg !1225
  br label %17, !dbg !1226

17:                                               ; preds = %28, %2
  %18 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @long_options, ptr noundef null) #41, !dbg !1227
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !1178, metadata !DIExpression()), !dbg !1210
  switch i32 %18, label %36 [
    i32 -1, label %37
    i32 102, label %19
    i32 107, label %20
    i32 112, label %23
    i32 115, label %24
    i32 118, label %30
    i32 -130, label %31
    i32 -131, label %32
  ], !dbg !1226

19:                                               ; preds = %17
  store i1 true, ptr @foreground, align 1, !dbg !1228
  br label %28, !dbg !1231

20:                                               ; preds = %17
  %21 = load ptr, ptr @optarg, align 8, !dbg !1232, !tbaa !950
  %22 = tail call fastcc double @parse_duration(ptr noundef %21), !dbg !1233
  store double %22, ptr @kill_after, align 8, !dbg !1234, !tbaa !1235
  br label %28, !dbg !1237

23:                                               ; preds = %17
  store i1 true, ptr @preserve_status, align 1, !dbg !1238
  br label %28, !dbg !1239

24:                                               ; preds = %17
  %25 = load ptr, ptr @optarg, align 8, !dbg !1240, !tbaa !950
  %26 = tail call i32 @operand2sig(ptr noundef %25) #41, !dbg !1241
  store i32 %26, ptr @term_signal, align 4, !dbg !1242, !tbaa !1022
  %27 = icmp eq i32 %26, -1, !dbg !1243
  br i1 %27, label %29, label %28, !dbg !1245

28:                                               ; preds = %24, %30, %23, %20, %19
  br label %17, !dbg !1227, !llvm.loop !1246

29:                                               ; preds = %24
  tail call void @usage(i32 noundef 125) #45, !dbg !1248
  unreachable, !dbg !1248

30:                                               ; preds = %17
  store i1 true, ptr @verbose, align 1, !dbg !1249
  br label %28, !dbg !1250

31:                                               ; preds = %17
  tail call void @usage(i32 noundef 0) #45, !dbg !1251
  unreachable, !dbg !1251

32:                                               ; preds = %17
  %33 = load ptr, ptr @stdout, align 8, !dbg !1252, !tbaa !950
  %34 = load ptr, ptr @Version, align 8, !dbg !1252, !tbaa !950
  %35 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #41, !dbg !1252
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18, ptr noundef %34, ptr noundef %35, ptr noundef null) #41, !dbg !1252
  tail call void @exit(i32 noundef 0) #43, !dbg !1252
  unreachable, !dbg !1252

36:                                               ; preds = %17
  tail call void @usage(i32 noundef 125) #45, !dbg !1253
  unreachable, !dbg !1253

37:                                               ; preds = %17
  %38 = load i32, ptr @optind, align 4, !dbg !1254, !tbaa !1022
  %39 = sub nsw i32 %0, %38, !dbg !1256
  %40 = icmp slt i32 %39, 2, !dbg !1257
  br i1 %40, label %41, label %42, !dbg !1258

41:                                               ; preds = %37
  tail call void @usage(i32 noundef 125) #45, !dbg !1259
  unreachable, !dbg !1259

42:                                               ; preds = %37
  %43 = add nsw i32 %38, 1, !dbg !1260
  store i32 %43, ptr @optind, align 4, !dbg !1260, !tbaa !1022
  %44 = sext i32 %38 to i64, !dbg !1261
  %45 = getelementptr inbounds ptr, ptr %1, i64 %44, !dbg !1261
  %46 = load ptr, ptr %45, align 8, !dbg !1261, !tbaa !950
  %47 = tail call fastcc double @parse_duration(ptr noundef %46), !dbg !1262
  tail call void @llvm.dbg.value(metadata double %47, metadata !1177, metadata !DIExpression()), !dbg !1210
  %48 = load i32, ptr @optind, align 4, !dbg !1263, !tbaa !1022
  %49 = sext i32 %48 to i64, !dbg !1264
  %50 = getelementptr inbounds ptr, ptr %1, i64 %49, !dbg !1264
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !1176, metadata !DIExpression()), !dbg !1210
  %51 = load ptr, ptr %50, align 8, !dbg !1265, !tbaa !950
  store ptr %51, ptr @command, align 8, !dbg !1266, !tbaa !950
  %52 = load i1, ptr @foreground, align 1, !dbg !1267
  br i1 %52, label %55, label %53, !dbg !1269

53:                                               ; preds = %42
  %54 = tail call i32 @setpgid(i32 noundef 0, i32 noundef 0) #41, !dbg !1270
  br label %55, !dbg !1270

55:                                               ; preds = %53, %42
  %56 = load i32, ptr @term_signal, align 4, !dbg !1271, !tbaa !1022
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1272, metadata !DIExpression(), metadata !1208, metadata ptr %9, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i32 %56, metadata !1275, metadata !DIExpression()), !dbg !1367
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %9) #41, !dbg !1369
  %57 = getelementptr inbounds %struct.sigaction, ptr %9, i64 0, i32 1, !dbg !1370
  %58 = call i32 @sigemptyset(ptr noundef nonnull %57) #41, !dbg !1371
  store ptr @cleanup, ptr %9, align 8, !dbg !1372, !tbaa !1031, !DIAssignID !1373
  call void @llvm.dbg.assign(metadata ptr @cleanup, metadata !1272, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1373, metadata ptr %9, metadata !DIExpression()), !dbg !1367
  %59 = getelementptr inbounds %struct.sigaction, ptr %9, i64 0, i32 2, !dbg !1374
  store i32 268435456, ptr %59, align 8, !dbg !1375, !tbaa !1376, !DIAssignID !1379
  call void @llvm.dbg.assign(metadata i32 268435456, metadata !1272, metadata !DIExpression(DW_OP_LLVM_fragment, 1088, 32), metadata !1379, metadata ptr %59, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i64 0, metadata !1276, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1381, metadata !DIExpression(), metadata !1207, metadata ptr %8, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 14, metadata !1386, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %56, metadata !1387, metadata !DIExpression()), !dbg !1389
  %60 = call i32 @sigaction(i32 noundef 14, ptr noundef nonnull %9, ptr noundef null) #41, !dbg !1393
  call void @llvm.dbg.value(metadata i64 1, metadata !1276, metadata !DIExpression()), !dbg !1380
  br label %65, !dbg !1394

61:                                               ; preds = %76
  %62 = call i32 @__libc_current_sigrtmin() #41, !dbg !1395
  call void @llvm.dbg.value(metadata i32 %62, metadata !1278, metadata !DIExpression()), !dbg !1396
  %63 = call i32 @__libc_current_sigrtmax() #41, !dbg !1397
  %64 = icmp sgt i32 %62, %63, !dbg !1399
  br i1 %64, label %94, label %79, !dbg !1400

65:                                               ; preds = %76, %55
  %66 = phi i64 [ 1, %55 ], [ %77, %76 ]
  call void @llvm.dbg.value(metadata i64 %66, metadata !1276, metadata !DIExpression()), !dbg !1380
  %67 = getelementptr inbounds [22 x i32], ptr @term_sig, i64 0, i64 %66, !dbg !1401
  %68 = load i32, ptr %67, align 4, !dbg !1401, !tbaa !1022
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1381, metadata !DIExpression(), metadata !1207, metadata ptr %8, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %68, metadata !1386, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %56, metadata !1387, metadata !DIExpression()), !dbg !1389
  %69 = icmp eq i32 %68, %56
  br i1 %69, label %74, label %70, !dbg !1402

70:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %8) #41, !dbg !1404
  %71 = call i32 @sigaction(i32 noundef %68, ptr noundef null, ptr noundef nonnull %8) #41, !dbg !1405
  %72 = load ptr, ptr %8, align 8, !dbg !1406, !tbaa !1031
  %73 = icmp eq ptr %72, inttoptr (i64 1 to ptr), !dbg !1407
  call void @llvm.dbg.value(metadata i1 %73, metadata !1388, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1389
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %8) #41, !dbg !1408
  br i1 %73, label %76, label %74, !dbg !1409

74:                                               ; preds = %70, %65
  %75 = call i32 @sigaction(i32 noundef %68, ptr noundef nonnull %9, ptr noundef null) #41, !dbg !1393
  br label %76, !dbg !1393

76:                                               ; preds = %74, %70
  %77 = add nuw nsw i64 %66, 1, !dbg !1410
  call void @llvm.dbg.value(metadata i64 %77, metadata !1276, metadata !DIExpression()), !dbg !1380
  %78 = icmp eq i64 %77, 22, !dbg !1411
  br i1 %78, label %61, label %65, !dbg !1394, !llvm.loop !1412

79:                                               ; preds = %61, %90
  %80 = phi i32 [ %91, %90 ], [ %62, %61 ]
  call void @llvm.dbg.value(metadata i32 %80, metadata !1278, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1381, metadata !DIExpression(), metadata !1206, metadata ptr %7, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %80, metadata !1386, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %56, metadata !1387, metadata !DIExpression()), !dbg !1415
  %81 = icmp eq i32 %80, 14, !dbg !1418
  %82 = icmp eq i32 %80, %56
  %83 = or i1 %81, %82, !dbg !1419
  br i1 %83, label %88, label %84, !dbg !1419

84:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %7) #41, !dbg !1420
  %85 = call i32 @sigaction(i32 noundef %80, ptr noundef null, ptr noundef nonnull %7) #41, !dbg !1421
  %86 = load ptr, ptr %7, align 8, !dbg !1422, !tbaa !1031
  %87 = icmp eq ptr %86, inttoptr (i64 1 to ptr), !dbg !1423
  call void @llvm.dbg.value(metadata i1 %87, metadata !1388, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1415
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %7) #41, !dbg !1424
  br i1 %87, label %90, label %88, !dbg !1425

88:                                               ; preds = %84, %79
  %89 = call i32 @sigaction(i32 noundef %80, ptr noundef nonnull %9, ptr noundef null) #41, !dbg !1426
  br label %90, !dbg !1426

90:                                               ; preds = %88, %84
  %91 = add nsw i32 %80, 1, !dbg !1427
  call void @llvm.dbg.value(metadata i32 %91, metadata !1278, metadata !DIExpression()), !dbg !1396
  %92 = call i32 @__libc_current_sigrtmax() #41, !dbg !1397
  %93 = icmp slt i32 %80, %92, !dbg !1399
  br i1 %93, label %79, label %94, !dbg !1400, !llvm.loop !1428

94:                                               ; preds = %90, %61
  %95 = call i32 @sigaction(i32 noundef %56, ptr noundef nonnull %9, ptr noundef null) #41, !dbg !1430
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %9) #41, !dbg !1431
  %96 = call ptr @signal(i32 noundef 21, ptr noundef nonnull inttoptr (i64 1 to ptr)) #41, !dbg !1432
  %97 = call ptr @signal(i32 noundef 22, ptr noundef nonnull inttoptr (i64 1 to ptr)) #41, !dbg !1433
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1434, metadata !DIExpression(), metadata !1205, metadata ptr %6, metadata !DIExpression()), !dbg !1437
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %6) #41, !dbg !1439
  %98 = getelementptr inbounds %struct.sigaction, ptr %6, i64 0, i32 1, !dbg !1440
  %99 = call i32 @sigemptyset(ptr noundef nonnull %98) #41, !dbg !1441
  store ptr @chld, ptr %6, align 8, !dbg !1442, !tbaa !1031, !DIAssignID !1443
  call void @llvm.dbg.assign(metadata ptr @chld, metadata !1434, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1443, metadata ptr %6, metadata !DIExpression()), !dbg !1437
  %100 = getelementptr inbounds %struct.sigaction, ptr %6, i64 0, i32 2, !dbg !1444
  store i32 268435456, ptr %100, align 8, !dbg !1445, !tbaa !1376, !DIAssignID !1446
  call void @llvm.dbg.assign(metadata i32 268435456, metadata !1434, metadata !DIExpression(DW_OP_LLVM_fragment, 1088, 32), metadata !1446, metadata ptr %100, metadata !DIExpression()), !dbg !1437
  %101 = call i32 @sigaction(i32 noundef 17, ptr noundef nonnull %6, ptr noundef null) #41, !dbg !1447
  call fastcc void @unblock_signal(i32 noundef 17), !dbg !1448
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %6) #41, !dbg !1449
  call fastcc void @unblock_signal(i32 noundef 14), !dbg !1450
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #41, !dbg !1451
  %102 = load i32, ptr @term_signal, align 4, !dbg !1452, !tbaa !1022
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1453, metadata !DIExpression(), metadata !1204, metadata ptr %5, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i32 %102, metadata !1459, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata ptr %10, metadata !1460, metadata !DIExpression()), !dbg !1465
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #41, !dbg !1467
  %103 = call i32 @sigemptyset(ptr noundef nonnull %5) #41, !dbg !1468
  call void @llvm.dbg.value(metadata i64 0, metadata !1461, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1381, metadata !DIExpression(), metadata !1203, metadata ptr %4, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 14, metadata !1386, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %102, metadata !1387, metadata !DIExpression()), !dbg !1470
  %104 = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef 14) #41, !dbg !1474
  call void @llvm.dbg.value(metadata i64 1, metadata !1461, metadata !DIExpression()), !dbg !1469
  br label %109, !dbg !1475

105:                                              ; preds = %120
  %106 = call i32 @__libc_current_sigrtmin() #41, !dbg !1476
  call void @llvm.dbg.value(metadata i32 %106, metadata !1463, metadata !DIExpression()), !dbg !1477
  %107 = call i32 @__libc_current_sigrtmax() #41, !dbg !1478
  %108 = icmp sgt i32 %106, %107, !dbg !1480
  br i1 %108, label %123, label %128, !dbg !1481

109:                                              ; preds = %120, %94
  %110 = phi i64 [ 1, %94 ], [ %121, %120 ]
  call void @llvm.dbg.value(metadata i64 %110, metadata !1461, metadata !DIExpression()), !dbg !1469
  %111 = getelementptr inbounds [22 x i32], ptr @term_sig, i64 0, i64 %110, !dbg !1482
  %112 = load i32, ptr %111, align 4, !dbg !1482, !tbaa !1022
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1381, metadata !DIExpression(), metadata !1203, metadata ptr %4, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %112, metadata !1386, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %102, metadata !1387, metadata !DIExpression()), !dbg !1470
  %113 = icmp eq i32 %112, %102
  br i1 %113, label %118, label %114, !dbg !1483

114:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %4) #41, !dbg !1484
  %115 = call i32 @sigaction(i32 noundef %112, ptr noundef null, ptr noundef nonnull %4) #41, !dbg !1485
  %116 = load ptr, ptr %4, align 8, !dbg !1486, !tbaa !1031
  %117 = icmp eq ptr %116, inttoptr (i64 1 to ptr), !dbg !1487
  call void @llvm.dbg.value(metadata i1 %117, metadata !1388, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1470
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %4) #41, !dbg !1488
  br i1 %117, label %120, label %118, !dbg !1489

118:                                              ; preds = %114, %109
  %119 = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef %112) #41, !dbg !1474
  br label %120, !dbg !1474

120:                                              ; preds = %118, %114
  %121 = add nuw nsw i64 %110, 1, !dbg !1490
  call void @llvm.dbg.value(metadata i64 %121, metadata !1461, metadata !DIExpression()), !dbg !1469
  %122 = icmp eq i64 %121, 22, !dbg !1491
  br i1 %122, label %105, label %109, !dbg !1475, !llvm.loop !1492

123:                                              ; preds = %139, %105
  %124 = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef %102) #41, !dbg !1494
  %125 = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef 17) #41, !dbg !1495
  %126 = call i32 @sigprocmask(i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %10) #41, !dbg !1496
  %127 = icmp eq i32 %126, 0, !dbg !1498
  br i1 %127, label %147, label %143, !dbg !1499

128:                                              ; preds = %105, %139
  %129 = phi i32 [ %140, %139 ], [ %106, %105 ]
  call void @llvm.dbg.value(metadata i32 %129, metadata !1463, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1381, metadata !DIExpression(), metadata !1202, metadata ptr %3, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i32 %129, metadata !1386, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i32 %102, metadata !1387, metadata !DIExpression()), !dbg !1500
  %130 = icmp eq i32 %129, 14, !dbg !1503
  %131 = icmp eq i32 %129, %102
  %132 = or i1 %130, %131, !dbg !1504
  br i1 %132, label %137, label %133, !dbg !1504

133:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %3) #41, !dbg !1505
  %134 = call i32 @sigaction(i32 noundef %129, ptr noundef null, ptr noundef nonnull %3) #41, !dbg !1506
  %135 = load ptr, ptr %3, align 8, !dbg !1507, !tbaa !1031
  %136 = icmp eq ptr %135, inttoptr (i64 1 to ptr), !dbg !1508
  call void @llvm.dbg.value(metadata i1 %136, metadata !1388, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1500
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %3) #41, !dbg !1509
  br i1 %136, label %139, label %137, !dbg !1510

137:                                              ; preds = %133, %128
  %138 = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef %129) #41, !dbg !1511
  br label %139, !dbg !1511

139:                                              ; preds = %137, %133
  %140 = add nsw i32 %129, 1, !dbg !1512
  call void @llvm.dbg.value(metadata i32 %140, metadata !1463, metadata !DIExpression()), !dbg !1477
  %141 = call i32 @__libc_current_sigrtmax() #41, !dbg !1478
  %142 = icmp slt i32 %129, %141, !dbg !1480
  br i1 %142, label %128, label %123, !dbg !1481, !llvm.loop !1513

143:                                              ; preds = %123
  %144 = tail call ptr @__errno_location() #44, !dbg !1515
  %145 = load i32, ptr %144, align 4, !dbg !1515, !tbaa !1022
  %146 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.73, i32 noundef 5) #41, !dbg !1515
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %145, ptr noundef %146) #41, !dbg !1515
  br label %147, !dbg !1515

147:                                              ; preds = %123, %143
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #41, !dbg !1516
  %148 = call i32 @getpid() #41, !dbg !1517
  tail call void @llvm.dbg.value(metadata i32 %148, metadata !1188, metadata !DIExpression()), !dbg !1210
  %149 = call i32 @fork() #41, !dbg !1518
  store i32 %149, ptr @monitored_pid, align 4, !dbg !1519, !tbaa !1022
  switch i32 %149, label %178 [
    i32 -1, label %150
    i32 0, label %154
  ], !dbg !1520

150:                                              ; preds = %147
  %151 = tail call ptr @__errno_location() #44, !dbg !1521
  %152 = load i32, ptr %151, align 4, !dbg !1521, !tbaa !1022
  %153 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #41, !dbg !1521
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %152, ptr noundef %153) #41, !dbg !1521
  br label %238, !dbg !1523

154:                                              ; preds = %147
  %155 = load i32, ptr @term_signal, align 4, !dbg !1524, !tbaa !1022
  %156 = call i32 (i32, ...) @prctl(i32 noundef 1, i32 noundef %155) #41, !dbg !1525
  %157 = call i32 @getppid() #41, !dbg !1526
  %158 = icmp eq i32 %157, %148, !dbg !1528
  br i1 %158, label %159, label %238, !dbg !1529

159:                                              ; preds = %154
  %160 = call i32 @sigprocmask(i32 noundef 2, ptr noundef nonnull %10, ptr noundef null) #41, !dbg !1530
  %161 = icmp eq i32 %160, 0, !dbg !1532
  br i1 %161, label %166, label %162, !dbg !1533

162:                                              ; preds = %159
  %163 = tail call ptr @__errno_location() #44, !dbg !1534
  %164 = load i32, ptr %163, align 4, !dbg !1534, !tbaa !1022
  %165 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #41, !dbg !1534
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %164, ptr noundef %165) #41, !dbg !1534
  br label %238, !dbg !1536

166:                                              ; preds = %159
  %167 = call ptr @signal(i32 noundef 21, ptr noundef null) #41, !dbg !1537
  %168 = call ptr @signal(i32 noundef 22, ptr noundef null) #41, !dbg !1538
  %169 = load ptr, ptr %50, align 8, !dbg !1539, !tbaa !950
  %170 = call i32 @execvp(ptr noundef %169, ptr noundef nonnull %50) #41, !dbg !1540
  %171 = tail call ptr @__errno_location() #44, !dbg !1541
  %172 = load i32, ptr %171, align 4, !dbg !1541, !tbaa !1022
  %173 = icmp eq i32 %172, 2, !dbg !1542
  %174 = select i1 %173, i32 127, i32 126, !dbg !1541
  tail call void @llvm.dbg.value(metadata i32 %174, metadata !1189, metadata !DIExpression()), !dbg !1543
  %175 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #41, !dbg !1544
  %176 = load ptr, ptr @command, align 8, !dbg !1544, !tbaa !950
  %177 = call ptr @quote(ptr noundef %176) #41, !dbg !1544
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %172, ptr noundef %175, ptr noundef %177) #41, !dbg !1544
  br label %238

178:                                              ; preds = %147
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #41, !dbg !1545
  call fastcc void @settimeout(double noundef %47, i1 noundef zeroext true), !dbg !1546
  %179 = load i32, ptr @monitored_pid, align 4, !dbg !1547, !tbaa !1022
  %180 = call i32 @waitpid(i32 noundef %179, ptr noundef nonnull %11, i32 noundef 1) #41, !dbg !1548
  tail call void @llvm.dbg.value(metadata i32 %180, metadata !1193, metadata !DIExpression()), !dbg !1212
  %181 = icmp eq i32 %180, 0, !dbg !1549
  br i1 %181, label %182, label %187, !dbg !1550

182:                                              ; preds = %178, %182
  %183 = call i32 @sigsuspend(ptr noundef nonnull %10) #41, !dbg !1551
  %184 = load i32, ptr @monitored_pid, align 4, !dbg !1547, !tbaa !1022
  %185 = call i32 @waitpid(i32 noundef %184, ptr noundef nonnull %11, i32 noundef 1) #41, !dbg !1548
  tail call void @llvm.dbg.value(metadata i32 %185, metadata !1193, metadata !DIExpression()), !dbg !1212
  %186 = icmp eq i32 %185, 0, !dbg !1549
  br i1 %186, label %182, label %187, !dbg !1550, !llvm.loop !1552

187:                                              ; preds = %182, %178
  %188 = phi i32 [ %180, %178 ], [ %185, %182 ], !dbg !1548
  %189 = icmp slt i32 %188, 0, !dbg !1554
  br i1 %189, label %190, label %194, !dbg !1555

190:                                              ; preds = %187
  %191 = tail call ptr @__errno_location() #44, !dbg !1556
  %192 = load i32, ptr %191, align 4, !dbg !1556, !tbaa !1022
  %193 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #41, !dbg !1556
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %192, ptr noundef %193) #41, !dbg !1556
  call void @llvm.dbg.assign(metadata i32 125, metadata !1195, metadata !DIExpression(), metadata !1558, metadata ptr %11, metadata !DIExpression()), !dbg !1212
  br label %232, !dbg !1559

194:                                              ; preds = %187
  %195 = load i32, ptr %11, align 4, !dbg !1560, !tbaa !1022
  %196 = and i32 %195, 127, !dbg !1560
  %197 = icmp eq i32 %196, 0, !dbg !1560
  br i1 %197, label %198, label %201, !dbg !1561

198:                                              ; preds = %194
  %199 = lshr i32 %195, 8
  %200 = and i32 %199, 255
  call void @llvm.dbg.assign(metadata i32 %200, metadata !1195, metadata !DIExpression(), metadata !1562, metadata ptr %11, metadata !DIExpression()), !dbg !1212
  br label %232, !dbg !1563

201:                                              ; preds = %194
  %202 = shl nuw nsw i32 %196, 24, !dbg !1564
  %203 = add nuw i32 %202, 16777216, !dbg !1564
  %204 = icmp sgt i32 %203, 33554431, !dbg !1564
  br i1 %204, label %205, label %229, !dbg !1565

205:                                              ; preds = %201
  tail call void @llvm.dbg.value(metadata i32 %196, metadata !1196, metadata !DIExpression()), !dbg !1566
  %206 = and i32 %195, 128, !dbg !1567
  %207 = icmp eq i32 %206, 0, !dbg !1567
  br i1 %207, label %210, label %208, !dbg !1569

208:                                              ; preds = %205
  %209 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #41, !dbg !1570
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %209) #41, !dbg !1570
  br label %210, !dbg !1570

210:                                              ; preds = %208, %205
  %211 = load i1, ptr @timed_out, align 4, !dbg !1571
  br i1 %211, label %222, label %212, !dbg !1573

212:                                              ; preds = %210
  %213 = call i32 (i32, ...) @prctl(i32 noundef 4, i32 noundef 0) #41, !dbg !1574
  %214 = icmp eq i32 %213, 0, !dbg !1580
  br i1 %214, label %219, label %215, !dbg !1581

215:                                              ; preds = %212
  %216 = tail call ptr @__errno_location() #44, !dbg !1582
  %217 = load i32, ptr %216, align 4, !dbg !1582, !tbaa !1022
  %218 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.76, i32 noundef 5) #41, !dbg !1582
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %217, ptr noundef %218) #41, !dbg !1582
  br label %222, !dbg !1583

219:                                              ; preds = %212
  %220 = call ptr @signal(i32 noundef %196, ptr noundef null) #41, !dbg !1584
  call fastcc void @unblock_signal(i32 noundef %196), !dbg !1586
  %221 = call i32 @raise(i32 noundef %196) #41, !dbg !1587
  br label %222, !dbg !1588

222:                                              ; preds = %215, %219, %210
  %223 = load i1, ptr @timed_out, align 4, !dbg !1589
  %224 = icmp eq i32 %196, 9
  %225 = and i1 %224, %223, !dbg !1591
  br i1 %225, label %226, label %227, !dbg !1591

226:                                              ; preds = %222
  store i1 true, ptr @preserve_status, align 1, !dbg !1592
  br label %227, !dbg !1593

227:                                              ; preds = %226, %222
  %228 = or disjoint i32 %196, 128, !dbg !1594
  call void @llvm.dbg.assign(metadata i32 %228, metadata !1195, metadata !DIExpression(), metadata !1595, metadata ptr %11, metadata !DIExpression()), !dbg !1212
  br label %232, !dbg !1596

229:                                              ; preds = %201
  %230 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #41, !dbg !1597
  %231 = load i32, ptr %11, align 4, !dbg !1597, !tbaa !1022
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %230, i32 noundef %231) #41, !dbg !1597
  call void @llvm.dbg.assign(metadata i32 1, metadata !1195, metadata !DIExpression(), metadata !1599, metadata ptr %11, metadata !DIExpression()), !dbg !1212
  br label %232

232:                                              ; preds = %198, %229, %227, %190
  %233 = phi i32 [ %200, %198 ], [ 1, %229 ], [ %228, %227 ], [ 125, %190 ]
  %234 = load i1, ptr @timed_out, align 4, !dbg !1600
  %235 = load i1, ptr @preserve_status, align 1, !dbg !1602
  %236 = select i1 %235, i32 %233, i32 124, !dbg !1602
  %237 = select i1 %234, i32 %236, i32 %233, !dbg !1602
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #41, !dbg !1603
  br label %238

238:                                              ; preds = %154, %232, %166, %162, %150
  %239 = phi i32 [ 125, %150 ], [ 125, %162 ], [ %174, %166 ], [ %237, %232 ], [ 125, %154 ], !dbg !1604
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #41, !dbg !1605
  ret i32 %239, !dbg !1605
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1606 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1609 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1610 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1613 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc double @parse_duration(ptr noundef %0) unnamed_addr #10 !dbg !1619 {
  %2 = alloca ptr, align 8, !DIAssignID !1627
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1624, metadata !DIExpression(), metadata !1627, metadata ptr %2, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1623, metadata !DIExpression()), !dbg !1628
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #41, !dbg !1629
  %3 = tail call ptr @__errno_location() #44, !dbg !1630
  store i32 0, ptr %3, align 4, !dbg !1631, !tbaa !1022
  %4 = call double @cl_strtod(ptr noundef %0, ptr noundef nonnull %2) #41, !dbg !1632
  tail call void @llvm.dbg.value(metadata double %4, metadata !1625, metadata !DIExpression()), !dbg !1628
  %5 = load i32, ptr %3, align 4, !dbg !1633, !tbaa !1022
  call void @llvm.dbg.value(metadata double %4, metadata !1634, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i32 %5, metadata !1640, metadata !DIExpression()), !dbg !1642
  %6 = icmp eq i32 %5, 34, !dbg !1644
  %7 = fcmp oeq double %4, 0.000000e+00
  %8 = and i1 %7, %6, !dbg !1646
  %9 = call double @llvm.copysign.f64(double 4.940660e-324, double %4), !dbg !1646
  %10 = call double @llvm.fmuladd.f64(double %4, double 0x3CA0000000000001, double %4), !dbg !1646
  %11 = select i1 %8, double %9, double %10, !dbg !1646
  tail call void @llvm.dbg.value(metadata double %11, metadata !1626, metadata !DIExpression()), !dbg !1628
  %12 = load ptr, ptr %2, align 8, !dbg !1647, !tbaa !950
  %13 = icmp ne ptr %12, %0, !dbg !1649
  %14 = fcmp oge double %11, 0.000000e+00
  %15 = select i1 %13, i1 %14, i1 false, !dbg !1650
  br i1 %15, label %16, label %27, !dbg !1650

16:                                               ; preds = %1
  %17 = load i8, ptr %12, align 1, !dbg !1651, !tbaa !1031
  %18 = icmp eq i8 %17, 0, !dbg !1651
  br i1 %18, label %30, label %19, !dbg !1652

19:                                               ; preds = %16
  %20 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !1653
  %21 = load i8, ptr %20, align 1, !dbg !1654, !tbaa !1031
  %22 = icmp eq i8 %21, 0, !dbg !1654
  br i1 %22, label %23, label %27, !dbg !1655

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr undef, metadata !1656, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %17, metadata !1662, metadata !DIExpression()), !dbg !1664
  switch i8 %17, label %27 [
    i8 100, label %26
    i8 115, label %30
    i8 109, label %24
    i8 104, label %25
  ], !dbg !1666

24:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 60, metadata !1663, metadata !DIExpression()), !dbg !1664
  br label %30, !dbg !1667

25:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 3600, metadata !1663, metadata !DIExpression()), !dbg !1664
  br label %30, !dbg !1669

26:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 86400, metadata !1663, metadata !DIExpression()), !dbg !1664
  br label %30, !dbg !1670

27:                                               ; preds = %23, %19, %1
  %28 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.70, i32 noundef 5) #41, !dbg !1671
  %29 = call ptr @quote(ptr noundef %0) #41, !dbg !1671
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %28, ptr noundef %29) #41, !dbg !1671
  call void @usage(i32 noundef 125) #45, !dbg !1673
  unreachable, !dbg !1673

30:                                               ; preds = %16, %23, %24, %25, %26
  %31 = phi double [ 8.640000e+04, %26 ], [ 3.600000e+03, %25 ], [ 6.000000e+01, %24 ], [ 1.000000e+00, %23 ], [ 1.000000e+00, %16 ], !dbg !1674
  call void @llvm.dbg.value(metadata i32 poison, metadata !1663, metadata !DIExpression()), !dbg !1664
  %32 = fmul double %11, %31, !dbg !1675
  call void @llvm.dbg.value(metadata double %32, metadata !1634, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i32 0, metadata !1640, metadata !DIExpression()), !dbg !1676
  %33 = call double @llvm.fmuladd.f64(double %32, double 0x3CA0000000000001, double %32), !dbg !1678
  tail call void @llvm.dbg.value(metadata double %33, metadata !1626, metadata !DIExpression()), !dbg !1628
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #41, !dbg !1679
  ret double %33, !dbg !1680
}

; Function Attrs: nounwind
declare !dbg !1681 i32 @setpgid(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind
declare !dbg !1685 i32 @sigemptyset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @cleanup(i32 noundef %0) #10 !dbg !1688 {
  %2 = alloca [19 x i8], align 16, !DIAssignID !1699
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1696, metadata !DIExpression(), metadata !1699, metadata ptr %2, metadata !DIExpression()), !dbg !1700
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1690, metadata !DIExpression()), !dbg !1701
  %3 = icmp eq i32 %0, 14, !dbg !1702
  br i1 %3, label %4, label %6, !dbg !1704

4:                                                ; preds = %1
  store i1 true, ptr @timed_out, align 4, !dbg !1705
  tail call void @llvm.dbg.value(metadata i32 124, metadata !1218, metadata !DIExpression()), !dbg !1707
  store volatile i32 124, ptr @exit_failure, align 4, !dbg !1709, !tbaa !1022
  %5 = load i32, ptr @term_signal, align 4, !dbg !1710, !tbaa !1022
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1690, metadata !DIExpression()), !dbg !1701
  br label %6, !dbg !1711

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %0, %1 ]
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1690, metadata !DIExpression()), !dbg !1701
  %8 = load i32, ptr @monitored_pid, align 4, !dbg !1712, !tbaa !1022
  %9 = icmp sgt i32 %8, 0, !dbg !1713
  br i1 %9, label %10, label %49, !dbg !1714

10:                                               ; preds = %6
  %11 = load double, ptr @kill_after, align 8, !dbg !1715, !tbaa !1235
  %12 = fcmp une double %11, 0.000000e+00, !dbg !1715
  br i1 %12, label %13, label %16, !dbg !1716

13:                                               ; preds = %10
  %14 = tail call ptr @__errno_location() #44, !dbg !1717
  %15 = load i32, ptr %14, align 4, !dbg !1717, !tbaa !1022
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1691, metadata !DIExpression()), !dbg !1718
  store i32 9, ptr @term_signal, align 4, !dbg !1719, !tbaa !1022
  tail call fastcc void @settimeout(double noundef %11, i1 noundef zeroext false), !dbg !1720
  store double 0.000000e+00, ptr @kill_after, align 8, !dbg !1721, !tbaa !1235
  store i32 %15, ptr %14, align 4, !dbg !1722, !tbaa !1022
  br label %16, !dbg !1723

16:                                               ; preds = %13, %10
  %17 = load i1, ptr @verbose, align 1, !dbg !1724
  br i1 %17, label %18, label %29, !dbg !1725

18:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %2) #41, !dbg !1726
  %19 = icmp eq i32 %7, 0, !dbg !1727
  br i1 %19, label %23, label %20, !dbg !1729

20:                                               ; preds = %18
  %21 = call i32 @sig2str(i32 noundef %7, ptr noundef nonnull %2) #41, !dbg !1730
  %22 = icmp eq i32 %21, 0, !dbg !1731
  br i1 %22, label %25, label %23, !dbg !1732

23:                                               ; preds = %20, %18
  %24 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %2, i64 noundef 19, i32 noundef 1, i64 noundef 19, ptr noundef nonnull @.str.71, i32 noundef %7) #41, !dbg !1733
  br label %25, !dbg !1733

25:                                               ; preds = %23, %20
  %26 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.72, i32 noundef 5) #41, !dbg !1734
  %27 = load ptr, ptr @command, align 8, !dbg !1734, !tbaa !950
  %28 = call ptr @quote(ptr noundef %27) #41, !dbg !1734
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %26, ptr noundef nonnull %2, ptr noundef %28) #41, !dbg !1734
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %2) #41, !dbg !1735
  br label %29, !dbg !1736

29:                                               ; preds = %25, %16
  %30 = load i32, ptr @monitored_pid, align 4, !dbg !1737, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %30, metadata !1738, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i32 %7, metadata !1743, metadata !DIExpression()), !dbg !1744
  %31 = icmp eq i32 %30, 0, !dbg !1746
  br i1 %31, label %32, label %34, !dbg !1748

32:                                               ; preds = %29
  %33 = call ptr @signal(i32 noundef %7, ptr noundef nonnull inttoptr (i64 1 to ptr)) #41, !dbg !1749
  br label %34, !dbg !1749

34:                                               ; preds = %29, %32
  %35 = call i32 @kill(i32 noundef %30, i32 noundef %7) #41, !dbg !1750
  %36 = load i1, ptr @foreground, align 1, !dbg !1751
  br i1 %36, label %53, label %37, !dbg !1753

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 0, metadata !1738, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i32 %7, metadata !1743, metadata !DIExpression()), !dbg !1754
  %38 = call ptr @signal(i32 noundef %7, ptr noundef nonnull inttoptr (i64 1 to ptr)) #41, !dbg !1757
  %39 = call i32 @kill(i32 noundef 0, i32 noundef %7) #41, !dbg !1758
  switch i32 %7, label %40 [
    i32 18, label %53
    i32 9, label %53
  ], !dbg !1759

40:                                               ; preds = %37
  %41 = load i32, ptr @monitored_pid, align 4, !dbg !1761, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %41, metadata !1738, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i32 18, metadata !1743, metadata !DIExpression()), !dbg !1763
  %42 = icmp eq i32 %41, 0, !dbg !1765
  br i1 %42, label %43, label %45, !dbg !1766

43:                                               ; preds = %40
  %44 = call ptr @signal(i32 noundef 18, ptr noundef nonnull inttoptr (i64 1 to ptr)) #41, !dbg !1767
  br label %45, !dbg !1767

45:                                               ; preds = %40, %43
  %46 = call i32 @kill(i32 noundef %41, i32 noundef 18) #41, !dbg !1768
  call void @llvm.dbg.value(metadata i32 0, metadata !1738, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 18, metadata !1743, metadata !DIExpression()), !dbg !1769
  %47 = call ptr @signal(i32 noundef 18, ptr noundef nonnull inttoptr (i64 1 to ptr)) #41, !dbg !1771
  %48 = call i32 @kill(i32 noundef 0, i32 noundef 18) #41, !dbg !1772
  br label %53, !dbg !1773

49:                                               ; preds = %6
  %50 = icmp eq i32 %8, -1, !dbg !1774
  br i1 %50, label %53, label %51, !dbg !1776

51:                                               ; preds = %49
  %52 = add nsw i32 %7, 128, !dbg !1777
  tail call void @_exit(i32 noundef %52) #43, !dbg !1779
  unreachable, !dbg !1779

53:                                               ; preds = %37, %37, %49, %34, %45
  ret void, !dbg !1780
}

; Function Attrs: nounwind
declare !dbg !1781 i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1789 i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1792 i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind
declare !dbg !1793 ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @chld(i32 %0) #12 !dbg !1796 {
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1798, metadata !DIExpression()), !dbg !1799
  ret void, !dbg !1800
}

; Function Attrs: nounwind uwtable
define internal fastcc void @unblock_signal(i32 noundef %0) unnamed_addr #10 !dbg !1801 {
  %2 = alloca %struct.__sigset_t, align 8, !DIAssignID !1805
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1804, metadata !DIExpression(), metadata !1805, metadata ptr %2, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1803, metadata !DIExpression()), !dbg !1806
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #41, !dbg !1807
  %3 = call i32 @sigemptyset(ptr noundef nonnull %2) #41, !dbg !1808
  %4 = call i32 @sigaddset(ptr noundef nonnull %2, i32 noundef %0) #41, !dbg !1809
  %5 = call i32 @sigprocmask(i32 noundef 1, ptr noundef nonnull %2, ptr noundef null) #41, !dbg !1810
  %6 = icmp eq i32 %5, 0, !dbg !1812
  br i1 %6, label %11, label %7, !dbg !1813

7:                                                ; preds = %1
  %8 = tail call ptr @__errno_location() #44, !dbg !1814
  %9 = load i32, ptr %8, align 4, !dbg !1814, !tbaa !1022
  %10 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.73, i32 noundef 5) #41, !dbg !1814
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %9, ptr noundef %10) #41, !dbg !1814
  br label %11, !dbg !1814

11:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #41, !dbg !1815
  ret void, !dbg !1815
}

; Function Attrs: nounwind
declare !dbg !1816 i32 @sigaddset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1819 i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1826 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1830 i32 @getpid() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1833 i32 @fork() local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1834 i32 @prctl(i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1838 i32 @getppid() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1839 i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @settimeout(double noundef %0, i1 noundef zeroext %1) unnamed_addr #10 !dbg !1842 {
  %3 = alloca %struct.itimerspec, align 8, !DIAssignID !1869
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1855, metadata !DIExpression(), metadata !1869, metadata ptr %3, metadata !DIExpression()), !dbg !1870
  %4 = alloca ptr, align 8, !DIAssignID !1871
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1861, metadata !DIExpression(), metadata !1871, metadata ptr %4, metadata !DIExpression()), !dbg !1870
  tail call void @llvm.dbg.value(metadata double %0, metadata !1846, metadata !DIExpression()), !dbg !1870
  tail call void @llvm.dbg.value(metadata i1 %1, metadata !1847, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1870
  %5 = tail call { i64, i64 } @dtotimespec(double noundef %0) #44, !dbg !1872
  %6 = extractvalue { i64, i64 } %5, 0, !dbg !1872
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1848, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1870
  %7 = extractvalue { i64, i64 } %5, 1, !dbg !1872
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !1848, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1870
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #41, !dbg !1873
  call void @llvm.dbg.assign(metadata i64 0, metadata !1855, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1874, metadata ptr %3, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.assign(metadata i64 0, metadata !1855, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1874, metadata ptr %3, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !1870
  %8 = getelementptr inbounds %struct.itimerspec, ptr %3, i64 0, i32 1, !dbg !1875
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !1876, !DIAssignID !1874
  store i64 %6, ptr %8, align 8, !dbg !1877, !tbaa.struct !1878, !DIAssignID !1881
  %9 = getelementptr inbounds %struct.itimerspec, ptr %3, i64 0, i32 1, i32 1, !dbg !1877
  store i64 %7, ptr %9, align 8, !dbg !1877, !tbaa.struct !1882, !DIAssignID !1883
  call void @llvm.dbg.assign(metadata i64 %6, metadata !1855, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64), metadata !1881, metadata ptr %8, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.assign(metadata i64 %7, metadata !1855, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64), metadata !1883, metadata ptr %9, metadata !DIExpression()), !dbg !1870
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #41, !dbg !1884
  %10 = call i32 @timer_create(i32 noundef 0, ptr noundef null, ptr noundef nonnull %4) #41, !dbg !1885
  %11 = icmp eq i32 %10, 0, !dbg !1887
  br i1 %11, label %12, label %24, !dbg !1888

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8, !dbg !1889, !tbaa !950
  %14 = call i32 @timer_settime(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %3, ptr noundef null) #41, !dbg !1892
  %15 = icmp eq i32 %14, 0, !dbg !1893
  br i1 %15, label %42, label %16, !dbg !1894

16:                                               ; preds = %12
  br i1 %1, label %17, label %21, !dbg !1895

17:                                               ; preds = %16
  %18 = tail call ptr @__errno_location() #44, !dbg !1897
  %19 = load i32, ptr %18, align 4, !dbg !1897, !tbaa !1022
  %20 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef 5) #41, !dbg !1897
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %19, ptr noundef %20) #41, !dbg !1897
  br label %21, !dbg !1897

21:                                               ; preds = %17, %16
  %22 = load ptr, ptr %4, align 8, !dbg !1899, !tbaa !950
  %23 = call i32 @timer_delete(ptr noundef %22) #41, !dbg !1900
  br label %31, !dbg !1901

24:                                               ; preds = %2
  br i1 %1, label %25, label %31, !dbg !1902

25:                                               ; preds = %24
  %26 = tail call ptr @__errno_location() #44, !dbg !1904
  %27 = load i32, ptr %26, align 4, !dbg !1904, !tbaa !1022
  %28 = icmp eq i32 %27, 38, !dbg !1905
  br i1 %28, label %31, label %29, !dbg !1906

29:                                               ; preds = %25
  %30 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.75, i32 noundef 5) #41, !dbg !1907
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %27, ptr noundef %30) #41, !dbg !1907
  br label %31, !dbg !1907

31:                                               ; preds = %24, %25, %29, %21
  %32 = fcmp ult double %0, 0x41EFFFFFFFE00000, !dbg !1908
  br i1 %32, label %33, label %39, !dbg !1909

33:                                               ; preds = %31
  %34 = fptoui double %0 to i32, !dbg !1910
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !1866, metadata !DIExpression()), !dbg !1911
  %35 = uitofp i32 %34 to double, !dbg !1912
  %36 = fcmp olt double %35, %0, !dbg !1913
  %37 = zext i1 %36 to i32, !dbg !1913
  %38 = add i32 %37, %34, !dbg !1914
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !1865, metadata !DIExpression()), !dbg !1870
  br label %39

39:                                               ; preds = %31, %33
  %40 = phi i32 [ %38, %33 ], [ -1, %31 ], !dbg !1915
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !1865, metadata !DIExpression()), !dbg !1870
  %41 = call i32 @alarm(i32 noundef %40) #41, !dbg !1916
  br label %42, !dbg !1917

42:                                               ; preds = %12, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !1917
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #41, !dbg !1917
  ret void, !dbg !1917
}

declare !dbg !1918 i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1922 i32 @sigsuspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1925 i32 @raise(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nounwind
declare !dbg !1928 i32 @timer_create(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1969 i32 @timer_settime(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1977 i32 @timer_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1980 i32 @alarm(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !1983 i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: nounwind
declare !dbg !1987 i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare !dbg !1990 void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @operand2sig(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !1991 {
  %2 = alloca i32, align 4, !DIAssignID !2006
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1996, metadata !DIExpression(), metadata !2006, metadata ptr %2, metadata !DIExpression()), !dbg !2007
  %3 = alloca ptr, align 8, !DIAssignID !2008
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1997, metadata !DIExpression(), metadata !2008, metadata ptr %3, metadata !DIExpression()), !dbg !2009
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1995, metadata !DIExpression()), !dbg !2007
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #41, !dbg !2010
  %4 = load i8, ptr %0, align 1, !dbg !2011, !tbaa !1031
  %5 = sext i8 %4 to i32, !dbg !2011
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2012, metadata !DIExpression()), !dbg !2018
  %6 = add nsw i32 %5, -48, !dbg !2020
  %7 = icmp ult i32 %6, 10, !dbg !2020
  br i1 %7, label %8, label %34, !dbg !2021

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #41, !dbg !2022
  %9 = tail call ptr @__errno_location() #44, !dbg !2023
  store i32 0, ptr %9, align 4, !dbg !2024, !tbaa !1022
  %10 = call i64 @strtol(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 10) #41, !dbg !2025
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !2000, metadata !DIExpression()), !dbg !2009
  %11 = freeze i64 %10, !dbg !2026
  %12 = trunc i64 %11 to i32, !dbg !2026
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2001, metadata !DIExpression()), !dbg !2009
  %13 = load ptr, ptr %3, align 8, !dbg !2027, !tbaa !950
  %14 = icmp eq ptr %13, %0, !dbg !2028
  br i1 %14, label %32, label %15, !dbg !2029

15:                                               ; preds = %8
  %16 = load i8, ptr %13, align 1, !dbg !2030, !tbaa !1031
  %17 = icmp eq i8 %16, 0, !dbg !2030
  br i1 %17, label %18, label %32, !dbg !2031

18:                                               ; preds = %15
  %19 = load i32, ptr %9, align 4, !dbg !2032, !tbaa !1022
  %20 = icmp eq i32 %19, 0, !dbg !2032
  %21 = add i64 %11, 2147483648
  %22 = icmp ult i64 %21, 4294967296
  %23 = and i1 %20, %22, !dbg !2033
  br i1 %23, label %24, label %32, !dbg !2033

24:                                               ; preds = %18
  call void @llvm.dbg.assign(metadata i32 %12, metadata !1996, metadata !DIExpression(), metadata !2034, metadata ptr %2, metadata !DIExpression()), !dbg !2007
  %25 = icmp slt i32 %12, 255, !dbg !2035
  br i1 %25, label %26, label %30, !dbg !2035

26:                                               ; preds = %24
  %27 = icmp eq i32 %12, -1, !dbg !2036
  %28 = and i32 %12, 127, !dbg !2035
  %29 = select i1 %27, i32 -1, i32 %28, !dbg !2035
  br label %32, !dbg !2035

30:                                               ; preds = %24
  %31 = and i32 %12, 255, !dbg !2035
  br label %32, !dbg !2035

32:                                               ; preds = %26, %8, %15, %18, %30
  %33 = phi i32 [ %31, %30 ], [ -1, %8 ], [ -1, %15 ], [ -1, %18 ], [ %29, %26 ]
  store i32 %33, ptr %2, align 4, !dbg !2009, !tbaa !1022, !DIAssignID !2034
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41, !dbg !2038
  br label %70, !dbg !2039

34:                                               ; preds = %1
  %35 = tail call noalias nonnull ptr @xstrdup(ptr noundef nonnull %0) #41, !dbg !2040
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !2002, metadata !DIExpression()), !dbg !2041
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !2004, metadata !DIExpression()), !dbg !2042
  %36 = load i8, ptr %35, align 1, !dbg !2043, !tbaa !1031
  %37 = icmp eq i8 %36, 0, !dbg !2045
  br i1 %37, label %38, label %41, !dbg !2045

38:                                               ; preds = %48, %34
  %39 = call i32 @str2sig(ptr noundef nonnull %35, ptr noundef nonnull %2) #41, !dbg !2046
  %40 = icmp eq i32 %39, 0, !dbg !2048
  br i1 %40, label %68, label %52, !dbg !2049

41:                                               ; preds = %34, %48
  %42 = phi i8 [ %50, %48 ], [ %36, %34 ]
  %43 = phi ptr [ %49, %48 ], [ %35, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %43, metadata !2004, metadata !DIExpression()), !dbg !2042
  %44 = add i8 %42, -123, !dbg !2050
  %45 = icmp ult i8 %44, -26, !dbg !2050
  br i1 %45, label %48, label %46, !dbg !2052

46:                                               ; preds = %41
  %47 = add nsw i8 %42, -32, !dbg !2053
  store i8 %47, ptr %43, align 1, !dbg !2053, !tbaa !1031
  br label %48, !dbg !2054

48:                                               ; preds = %41, %46
  %49 = getelementptr inbounds i8, ptr %43, i64 1, !dbg !2055
  tail call void @llvm.dbg.value(metadata ptr %49, metadata !2004, metadata !DIExpression()), !dbg !2042
  %50 = load i8, ptr %49, align 1, !dbg !2043, !tbaa !1031
  %51 = icmp eq i8 %50, 0, !dbg !2045
  br i1 %51, label %38, label %41, !dbg !2045, !llvm.loop !2056

52:                                               ; preds = %38
  %53 = load i8, ptr %35, align 1, !dbg !2058, !tbaa !1031
  %54 = icmp eq i8 %53, 83, !dbg !2059
  br i1 %54, label %55, label %67, !dbg !2060

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !2061
  %57 = load i8, ptr %56, align 1, !dbg !2061, !tbaa !1031
  %58 = icmp eq i8 %57, 73, !dbg !2062
  br i1 %58, label %59, label %67, !dbg !2063

59:                                               ; preds = %55
  %60 = getelementptr inbounds i8, ptr %35, i64 2, !dbg !2064
  %61 = load i8, ptr %60, align 1, !dbg !2064, !tbaa !1031
  %62 = icmp eq i8 %61, 71, !dbg !2065
  br i1 %62, label %63, label %67, !dbg !2066

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %35, i64 3, !dbg !2067
  %65 = call i32 @str2sig(ptr noundef nonnull %64, ptr noundef nonnull %2) #41, !dbg !2068
  %66 = icmp eq i32 %65, 0, !dbg !2069
  br i1 %66, label %68, label %67, !dbg !2070

67:                                               ; preds = %63, %59, %55, %52
  store i32 -1, ptr %2, align 4, !dbg !2071, !tbaa !1022, !DIAssignID !2072
  call void @llvm.dbg.assign(metadata i32 -1, metadata !1996, metadata !DIExpression(), metadata !2072, metadata ptr %2, metadata !DIExpression()), !dbg !2007
  br label %68, !dbg !2073

68:                                               ; preds = %67, %63, %38
  call void @free(ptr noundef nonnull %35) #41, !dbg !2074
  %69 = load i32, ptr %2, align 4, !dbg !2075
  br label %70

70:                                               ; preds = %68, %32
  %71 = phi i32 [ %69, %68 ], [ %33, %32 ], !dbg !2075
  %72 = icmp ugt i32 %71, 64, !dbg !2077
  br i1 %72, label %73, label %76, !dbg !2077

73:                                               ; preds = %70
  %74 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.3, i32 noundef 5) #41, !dbg !2078
  %75 = call ptr @quote(ptr noundef nonnull %0) #41, !dbg !2078
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %74, ptr noundef %75) #41, !dbg !2078
  br label %76, !dbg !2080

76:                                               ; preds = %70, %73
  %77 = phi i32 [ -1, %73 ], [ %71, %70 ], !dbg !2007
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #41, !dbg !2081
  ret i32 %77, !dbg !2081
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2082 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2086 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local double @cl_strtod(ptr noundef nonnull %0, ptr noalias noundef writeonly %1) local_unnamed_addr #10 !dbg !2089 {
  %3 = alloca ptr, align 8, !DIAssignID !2102
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2095, metadata !DIExpression(), metadata !2102, metadata ptr %3, metadata !DIExpression()), !dbg !2103
  %4 = alloca ptr, align 8, !DIAssignID !2104
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2100, metadata !DIExpression(), metadata !2104, metadata ptr %4, metadata !DIExpression()), !dbg !2105
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2093, metadata !DIExpression()), !dbg !2103
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2094, metadata !DIExpression()), !dbg !2103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #41, !dbg !2106
  %5 = call double @strtod(ptr noundef nonnull %0, ptr noundef nonnull %3) #41, !dbg !2107
  tail call void @llvm.dbg.value(metadata double %5, metadata !2096, metadata !DIExpression()), !dbg !2103
  %6 = load ptr, ptr %3, align 8, !dbg !2108, !tbaa !950
  %7 = load i8, ptr %6, align 1, !dbg !2109, !tbaa !1031
  %8 = icmp eq i8 %7, 0, !dbg !2109
  br i1 %8, label %19, label %9, !dbg !2110

9:                                                ; preds = %2
  %10 = tail call ptr @__errno_location() #44, !dbg !2111
  %11 = load i32, ptr %10, align 4, !dbg !2111, !tbaa !1022
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2097, metadata !DIExpression()), !dbg !2105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #41, !dbg !2112
  %12 = call double @c_strtod(ptr noundef nonnull %0, ptr noundef nonnull %4) #41, !dbg !2113
  tail call void @llvm.dbg.value(metadata double %12, metadata !2101, metadata !DIExpression()), !dbg !2105
  %13 = load ptr, ptr %4, align 8, !dbg !2114, !tbaa !950
  %14 = icmp ult ptr %6, %13, !dbg !2116
  br i1 %14, label %16, label %15, !dbg !2117

15:                                               ; preds = %9
  store i32 %11, ptr %10, align 4, !dbg !2118, !tbaa !1022
  br label %16

16:                                               ; preds = %9, %15
  %17 = phi ptr [ %6, %15 ], [ %13, %9 ]
  %18 = phi double [ %5, %15 ], [ %12, %9 ], !dbg !2103
  tail call void @llvm.dbg.value(metadata double %18, metadata !2096, metadata !DIExpression()), !dbg !2103
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !2119
  br label %19, !dbg !2120

19:                                               ; preds = %16, %2
  %20 = phi ptr [ %17, %16 ], [ %6, %2 ]
  %21 = phi double [ %18, %16 ], [ %5, %2 ], !dbg !2103
  tail call void @llvm.dbg.value(metadata double %21, metadata !2096, metadata !DIExpression()), !dbg !2103
  %22 = icmp eq ptr %1, null, !dbg !2121
  br i1 %22, label %24, label %23, !dbg !2123

23:                                               ; preds = %19
  store ptr %20, ptr %1, align 8, !dbg !2124, !tbaa !950
  br label %24, !dbg !2125

24:                                               ; preds = %23, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41, !dbg !2126
  ret double %21, !dbg !2127
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2128 double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #18 !dbg !2131 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2133, metadata !DIExpression()), !dbg !2134
  store ptr %0, ptr @file_name, align 8, !dbg !2135, !tbaa !950
  ret void, !dbg !2136
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #18 !dbg !2137 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2141, metadata !DIExpression()), !dbg !2142
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !2143, !tbaa !2144
  ret void, !dbg !2146
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2147 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2152, !tbaa !950
  %2 = tail call i32 @close_stream(ptr noundef %1) #41, !dbg !2153
  %3 = icmp eq i32 %2, 0, !dbg !2154
  br i1 %3, label %22, label %4, !dbg !2155

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !2156, !tbaa !2144, !range !2157, !noundef !989
  %6 = icmp eq i8 %5, 0, !dbg !2156
  br i1 %6, label %11, label %7, !dbg !2158

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #44, !dbg !2159
  %9 = load i32, ptr %8, align 4, !dbg !2159, !tbaa !1022
  %10 = icmp eq i32 %9, 32, !dbg !2160
  br i1 %10, label %22, label %11, !dbg !2161

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1.38, i32 noundef 5) #41, !dbg !2162
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !2149, metadata !DIExpression()), !dbg !2163
  %13 = load ptr, ptr @file_name, align 8, !dbg !2164, !tbaa !950
  %14 = icmp eq ptr %13, null, !dbg !2164
  %15 = tail call ptr @__errno_location() #44, !dbg !2166
  %16 = load i32, ptr %15, align 4, !dbg !2166, !tbaa !1022
  br i1 %14, label %19, label %17, !dbg !2167

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #41, !dbg !2168
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.39, ptr noundef %18, ptr noundef %12) #41, !dbg !2168
  br label %20, !dbg !2168

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.40, ptr noundef %12) #41, !dbg !2169
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2170, !tbaa !1022
  tail call void @_exit(i32 noundef %21) #43, !dbg !2171
  unreachable, !dbg !2171

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2172, !tbaa !950
  %24 = tail call i32 @close_stream(ptr noundef %23) #41, !dbg !2174
  %25 = icmp eq i32 %24, 0, !dbg !2175
  br i1 %25, label %28, label %26, !dbg !2176

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2177, !tbaa !1022
  tail call void @_exit(i32 noundef %27) #43, !dbg !2178
  unreachable, !dbg !2178

28:                                               ; preds = %22
  ret void, !dbg !2179
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @dtotimespec(double noundef %0) local_unnamed_addr #12 !dbg !2180 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !2188, metadata !DIExpression()), !dbg !2195
  %2 = fcmp ogt double %0, 0xC3E0000000000000, !dbg !2196
  br i1 %2, label %3, label %25, !dbg !2197

3:                                                ; preds = %1
  %4 = fcmp olt double %0, 0x43E0000000000000, !dbg !2198
  br i1 %4, label %5, label %25, !dbg !2199

5:                                                ; preds = %3
  %6 = fptosi double %0 to i64, !dbg !2200
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !2189, metadata !DIExpression()), !dbg !2201
  %7 = sitofp i64 %6 to double, !dbg !2202
  %8 = fsub double %0, %7, !dbg !2203
  %9 = fmul double %8, 1.000000e+09, !dbg !2204
  tail call void @llvm.dbg.value(metadata double %9, metadata !2193, metadata !DIExpression()), !dbg !2201
  %10 = fptosi double %9 to i64, !dbg !2205
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !2194, metadata !DIExpression()), !dbg !2201
  %11 = sitofp i64 %10 to double, !dbg !2206
  %12 = fcmp ogt double %9, %11, !dbg !2207
  %13 = zext i1 %12 to i64
  %14 = add nsw i64 %13, %10, !dbg !2208
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2194, metadata !DIExpression()), !dbg !2201
  %15 = sdiv i64 %14, 1000000000, !dbg !2209
  %16 = add nsw i64 %15, %6, !dbg !2210
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !2189, metadata !DIExpression()), !dbg !2201
  %17 = srem i64 %14, 1000000000, !dbg !2211
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !2194, metadata !DIExpression()), !dbg !2201
  %18 = icmp slt i64 %17, 0, !dbg !2212
  %19 = add nsw i64 %17, 1000000000, !dbg !2214
  %20 = ashr i64 %17, 63, !dbg !2214
  %21 = add nsw i64 %16, %20, !dbg !2214
  %22 = select i1 %18, i64 %19, i64 %17, !dbg !2214
  tail call void @llvm.dbg.value(metadata i64 %22, metadata !2194, metadata !DIExpression()), !dbg !2201
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2189, metadata !DIExpression()), !dbg !2201
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2215, metadata !DIExpression()), !dbg !2221
  tail call void @llvm.dbg.value(metadata i64 %22, metadata !2220, metadata !DIExpression()), !dbg !2221
  %23 = insertvalue { i64, i64 } poison, i64 %21, 0, !dbg !2223
  %24 = insertvalue { i64, i64 } %23, i64 %22, 1, !dbg !2223
  br label %25

25:                                               ; preds = %3, %1, %5
  %26 = phi { i64, i64 } [ %24, %5 ], [ { i64 -9223372036854775808, i64 0 }, %1 ], [ { i64 9223372036854775807, i64 999999999 }, %3 ]
  ret { i64, i64 } %26, !dbg !2224
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #19 !dbg !2225 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2229, metadata !DIExpression()), !dbg !2233
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2230, metadata !DIExpression()), !dbg !2233
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2231, metadata !DIExpression()), !dbg !2233
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2232, metadata !DIExpression()), !dbg !2233
  tail call fastcc void @flush_stdout(), !dbg !2234
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2235, !tbaa !950
  %6 = icmp eq ptr %5, null, !dbg !2235
  br i1 %6, label %8, label %7, !dbg !2237

7:                                                ; preds = %4
  tail call void %5() #41, !dbg !2238
  br label %12, !dbg !2238

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2239, !tbaa !950
  %10 = tail call ptr @getprogname() #42, !dbg !2239
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef %10) #41, !dbg !2239
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2241
  ret void, !dbg !2242
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2243 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2245, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32 1, metadata !2247, metadata !DIExpression()), !dbg !2250
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #41, !dbg !2253
  %2 = icmp slt i32 %1, 0, !dbg !2254
  br i1 %2, label %6, label %3, !dbg !2255

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2256, !tbaa !950
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #41, !dbg !2256
  br label %6, !dbg !2256

6:                                                ; preds = %3, %0
  ret void, !dbg !2257
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2258 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !2264
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2260, metadata !DIExpression()), !dbg !2265
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2261, metadata !DIExpression()), !dbg !2265
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2262, metadata !DIExpression()), !dbg !2265
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2263, metadata !DIExpression()), !dbg !2265
  %6 = load ptr, ptr @stderr, align 8, !dbg !2266, !tbaa !950
  call void @llvm.dbg.value(metadata ptr %6, metadata !2267, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata ptr %2, metadata !2307, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata ptr %3, metadata !2308, metadata !DIExpression()), !dbg !2309
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #41, !dbg !2311
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2312, !tbaa !1022
  %9 = add i32 %8, 1, !dbg !2312
  store i32 %9, ptr @error_message_count, align 4, !dbg !2312, !tbaa !1022
  %10 = icmp eq i32 %1, 0, !dbg !2313
  br i1 %10, label %20, label %11, !dbg !2315

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2316, metadata !DIExpression(), metadata !2264, metadata ptr %5, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i32 %1, metadata !2319, metadata !DIExpression()), !dbg !2324
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #41, !dbg !2326
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #41, !dbg !2327
  call void @llvm.dbg.value(metadata ptr %12, metadata !2320, metadata !DIExpression()), !dbg !2324
  %13 = icmp eq ptr %12, null, !dbg !2328
  br i1 %13, label %14, label %16, !dbg !2330

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.44, ptr noundef nonnull @.str.5.45, i32 noundef 5) #41, !dbg !2331
  call void @llvm.dbg.value(metadata ptr %15, metadata !2320, metadata !DIExpression()), !dbg !2324
  br label %16, !dbg !2332

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2324
  call void @llvm.dbg.value(metadata ptr %17, metadata !2320, metadata !DIExpression()), !dbg !2324
  %18 = load ptr, ptr @stderr, align 8, !dbg !2333, !tbaa !950
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.46, ptr noundef %17) #41, !dbg !2333
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #41, !dbg !2334
  br label %20, !dbg !2335

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2336, !tbaa !950
  call void @llvm.dbg.value(metadata i32 10, metadata !2337, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata ptr %21, metadata !2343, metadata !DIExpression()), !dbg !2344
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2346
  %23 = load ptr, ptr %22, align 8, !dbg !2346, !tbaa !2347
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2346
  %25 = load ptr, ptr %24, align 8, !dbg !2346, !tbaa !2349
  %26 = icmp ult ptr %23, %25, !dbg !2346
  br i1 %26, label %29, label %27, !dbg !2346, !prof !2350

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #41, !dbg !2346
  br label %31, !dbg !2346

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2346
  store ptr %30, ptr %22, align 8, !dbg !2346, !tbaa !2347
  store i8 10, ptr %23, align 1, !dbg !2346, !tbaa !1031
  br label %31, !dbg !2346

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2351, !tbaa !950
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #41, !dbg !2351
  %34 = icmp eq i32 %0, 0, !dbg !2352
  br i1 %34, label %36, label %35, !dbg !2354

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #43, !dbg !2355
  unreachable, !dbg !2355

36:                                               ; preds = %31
  ret void, !dbg !2356
}

declare !dbg !2357 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2360 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2363 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2366 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2369 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2373 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2386
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2380, metadata !DIExpression(), metadata !2386, metadata ptr %4, metadata !DIExpression()), !dbg !2387
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2377, metadata !DIExpression()), !dbg !2387
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2378, metadata !DIExpression()), !dbg !2387
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2379, metadata !DIExpression()), !dbg !2387
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #41, !dbg !2388
  call void @llvm.va_start(ptr nonnull %4), !dbg !2389
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #46, !dbg !2390
  call void @llvm.va_end(ptr nonnull %4), !dbg !2391
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #41, !dbg !2392
  ret void, !dbg !2392
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #20

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #19 !dbg !496 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !507, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !508, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !509, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !510, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !511, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !512, metadata !DIExpression()), !dbg !2393
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2394, !tbaa !1022
  %8 = icmp eq i32 %7, 0, !dbg !2394
  br i1 %8, label %23, label %9, !dbg !2396

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2397, !tbaa !1022
  %11 = icmp eq i32 %10, %3, !dbg !2400
  br i1 %11, label %12, label %22, !dbg !2401

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2402, !tbaa !950
  %14 = icmp eq ptr %13, %2, !dbg !2403
  br i1 %14, label %36, label %15, !dbg !2404

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2405
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2406
  br i1 %18, label %19, label %22, !dbg !2406

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2407
  %21 = icmp eq i32 %20, 0, !dbg !2408
  br i1 %21, label %36, label %22, !dbg !2409

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2410, !tbaa !950
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2411, !tbaa !1022
  br label %23, !dbg !2412

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2413
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2414, !tbaa !950
  %25 = icmp eq ptr %24, null, !dbg !2414
  br i1 %25, label %27, label %26, !dbg !2416

26:                                               ; preds = %23
  tail call void %24() #41, !dbg !2417
  br label %31, !dbg !2417

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2418, !tbaa !950
  %29 = tail call ptr @getprogname() #42, !dbg !2418
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.49, ptr noundef %29) #41, !dbg !2418
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2420, !tbaa !950
  %33 = icmp eq ptr %2, null, !dbg !2420
  %34 = select i1 %33, ptr @.str.3.50, ptr @.str.2.51, !dbg !2420
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #41, !dbg !2420
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2421
  br label %36, !dbg !2422

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2422
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2423 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2433
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2432, metadata !DIExpression(), metadata !2433, metadata ptr %6, metadata !DIExpression()), !dbg !2434
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2427, metadata !DIExpression()), !dbg !2434
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2428, metadata !DIExpression()), !dbg !2434
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2429, metadata !DIExpression()), !dbg !2434
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2430, metadata !DIExpression()), !dbg !2434
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2431, metadata !DIExpression()), !dbg !2434
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #41, !dbg !2435
  call void @llvm.va_start(ptr nonnull %6), !dbg !2436
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #46, !dbg !2437
  call void @llvm.va_end(ptr nonnull %6), !dbg !2438
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #41, !dbg !2439
  ret void, !dbg !2439
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #21 !dbg !2440 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2443, !tbaa !950
  ret ptr %1, !dbg !2444
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #22 !dbg !2445 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2447, metadata !DIExpression()), !dbg !2450
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #42, !dbg !2451
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2448, metadata !DIExpression()), !dbg !2450
  %3 = icmp eq ptr %2, null, !dbg !2452
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2452
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2452
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2449, metadata !DIExpression()), !dbg !2450
  %6 = ptrtoint ptr %5 to i64, !dbg !2453
  %7 = ptrtoint ptr %0 to i64, !dbg !2453
  %8 = sub i64 %6, %7, !dbg !2453
  %9 = icmp sgt i64 %8, 6, !dbg !2455
  br i1 %9, label %10, label %19, !dbg !2456

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2457
  call void @llvm.dbg.value(metadata ptr %11, metadata !2458, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata ptr @.str.77, metadata !2463, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i64 7, metadata !2464, metadata !DIExpression()), !dbg !2465
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.77, i64 7), !dbg !2467
  %13 = icmp eq i32 %12, 0, !dbg !2468
  br i1 %13, label %14, label %19, !dbg !2469

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2447, metadata !DIExpression()), !dbg !2450
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.78, i64 noundef 3) #42, !dbg !2470
  %16 = icmp eq i32 %15, 0, !dbg !2473
  %17 = select i1 %16, i64 3, i64 0, !dbg !2474
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2474
  br label %19, !dbg !2474

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2450
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2449, metadata !DIExpression()), !dbg !2450
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2447, metadata !DIExpression()), !dbg !2450
  store ptr %20, ptr @program_name, align 8, !dbg !2475, !tbaa !950
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2476, !tbaa !950
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2477, !tbaa !950
  ret void, !dbg !2478
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2479 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !546 {
  %3 = alloca i32, align 4, !DIAssignID !2480
  call void @llvm.dbg.assign(metadata i1 undef, metadata !556, metadata !DIExpression(), metadata !2480, metadata ptr %3, metadata !DIExpression()), !dbg !2481
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2482
  call void @llvm.dbg.assign(metadata i1 undef, metadata !561, metadata !DIExpression(), metadata !2482, metadata ptr %4, metadata !DIExpression()), !dbg !2481
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !553, metadata !DIExpression()), !dbg !2481
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !554, metadata !DIExpression()), !dbg !2481
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #41, !dbg !2483
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !555, metadata !DIExpression()), !dbg !2481
  %6 = icmp eq ptr %5, %0, !dbg !2484
  br i1 %6, label %7, label %14, !dbg !2486

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #41, !dbg !2487
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #41, !dbg !2488
  call void @llvm.dbg.value(metadata ptr %4, metadata !2489, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata ptr %4, metadata !2498, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i32 0, metadata !2504, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i64 8, metadata !2505, metadata !DIExpression()), !dbg !2506
  store i64 0, ptr %4, align 8, !dbg !2508
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #41, !dbg !2509
  %9 = icmp eq i64 %8, 2, !dbg !2511
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2512
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2481
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !2513
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #41, !dbg !2513
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2481
  ret ptr %15, !dbg !2513
}

; Function Attrs: nounwind
declare !dbg !2514 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2520 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2525, metadata !DIExpression()), !dbg !2528
  %2 = tail call ptr @__errno_location() #44, !dbg !2529
  %3 = load i32, ptr %2, align 4, !dbg !2529, !tbaa !1022
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2526, metadata !DIExpression()), !dbg !2528
  %4 = icmp eq ptr %0, null, !dbg !2530
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2530
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #47, !dbg !2531
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2527, metadata !DIExpression()), !dbg !2528
  store i32 %3, ptr %2, align 4, !dbg !2532, !tbaa !1022
  ret ptr %6, !dbg !2533
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #24 !dbg !2534 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2540, metadata !DIExpression()), !dbg !2541
  %2 = icmp eq ptr %0, null, !dbg !2542
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2542
  %4 = load i32, ptr %3, align 8, !dbg !2543, !tbaa !2544
  ret i32 %4, !dbg !2546
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2547 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2551, metadata !DIExpression()), !dbg !2553
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2552, metadata !DIExpression()), !dbg !2553
  %3 = icmp eq ptr %0, null, !dbg !2554
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2554
  store i32 %1, ptr %4, align 8, !dbg !2555, !tbaa !2544
  ret void, !dbg !2556
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #26 !dbg !2557 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2561, metadata !DIExpression()), !dbg !2569
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2562, metadata !DIExpression()), !dbg !2569
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2563, metadata !DIExpression()), !dbg !2569
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2564, metadata !DIExpression()), !dbg !2569
  %4 = icmp eq ptr %0, null, !dbg !2570
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2570
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2571
  %7 = lshr i8 %1, 5, !dbg !2572
  %8 = zext nneg i8 %7 to i64, !dbg !2572
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2573
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2565, metadata !DIExpression()), !dbg !2569
  %10 = and i8 %1, 31, !dbg !2574
  %11 = zext nneg i8 %10 to i32, !dbg !2574
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2567, metadata !DIExpression()), !dbg !2569
  %12 = load i32, ptr %9, align 4, !dbg !2575, !tbaa !1022
  %13 = lshr i32 %12, %11, !dbg !2576
  %14 = and i32 %13, 1, !dbg !2577
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2568, metadata !DIExpression()), !dbg !2569
  %15 = xor i32 %13, %2, !dbg !2578
  %16 = and i32 %15, 1, !dbg !2578
  %17 = shl nuw i32 %16, %11, !dbg !2579
  %18 = xor i32 %17, %12, !dbg !2580
  store i32 %18, ptr %9, align 4, !dbg !2580, !tbaa !1022
  ret i32 %14, !dbg !2581
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2582 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2586, metadata !DIExpression()), !dbg !2589
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2587, metadata !DIExpression()), !dbg !2589
  %3 = icmp eq ptr %0, null, !dbg !2590
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2592
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2586, metadata !DIExpression()), !dbg !2589
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2593
  %6 = load i32, ptr %5, align 4, !dbg !2593, !tbaa !2594
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2588, metadata !DIExpression()), !dbg !2589
  store i32 %1, ptr %5, align 4, !dbg !2595, !tbaa !2594
  ret i32 %6, !dbg !2596
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2597 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2601, metadata !DIExpression()), !dbg !2604
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2602, metadata !DIExpression()), !dbg !2604
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2603, metadata !DIExpression()), !dbg !2604
  %4 = icmp eq ptr %0, null, !dbg !2605
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2607
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2601, metadata !DIExpression()), !dbg !2604
  store i32 10, ptr %5, align 8, !dbg !2608, !tbaa !2544
  %6 = icmp ne ptr %1, null, !dbg !2609
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2611
  br i1 %8, label %10, label %9, !dbg !2611

9:                                                ; preds = %3
  tail call void @abort() #43, !dbg !2612
  unreachable, !dbg !2612

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2613
  store ptr %1, ptr %11, align 8, !dbg !2614, !tbaa !2615
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2616
  store ptr %2, ptr %12, align 8, !dbg !2617, !tbaa !2618
  ret void, !dbg !2619
}

; Function Attrs: noreturn nounwind
declare !dbg !2620 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2621 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2625, metadata !DIExpression()), !dbg !2633
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2626, metadata !DIExpression()), !dbg !2633
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2627, metadata !DIExpression()), !dbg !2633
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2628, metadata !DIExpression()), !dbg !2633
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2629, metadata !DIExpression()), !dbg !2633
  %6 = icmp eq ptr %4, null, !dbg !2634
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2634
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2630, metadata !DIExpression()), !dbg !2633
  %8 = tail call ptr @__errno_location() #44, !dbg !2635
  %9 = load i32, ptr %8, align 4, !dbg !2635, !tbaa !1022
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2631, metadata !DIExpression()), !dbg !2633
  %10 = load i32, ptr %7, align 8, !dbg !2636, !tbaa !2544
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2637
  %12 = load i32, ptr %11, align 4, !dbg !2637, !tbaa !2594
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2638
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2639
  %15 = load ptr, ptr %14, align 8, !dbg !2639, !tbaa !2615
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2640
  %17 = load ptr, ptr %16, align 8, !dbg !2640, !tbaa !2618
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2641
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2632, metadata !DIExpression()), !dbg !2633
  store i32 %9, ptr %8, align 4, !dbg !2642, !tbaa !1022
  ret i64 %18, !dbg !2643
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2644 {
  %10 = alloca i32, align 4, !DIAssignID !2712
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2713
  %12 = alloca i32, align 4, !DIAssignID !2714
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2715
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2716
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2690, metadata !DIExpression(), metadata !2716, metadata ptr %14, metadata !DIExpression()), !dbg !2717
  %15 = alloca i32, align 4, !DIAssignID !2718
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2693, metadata !DIExpression(), metadata !2718, metadata ptr %15, metadata !DIExpression()), !dbg !2719
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2650, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2651, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2652, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2653, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2654, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2655, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2656, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2657, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2658, metadata !DIExpression()), !dbg !2720
  %16 = tail call i64 @__ctype_get_mb_cur_max() #41, !dbg !2721
  %17 = icmp eq i64 %16, 1, !dbg !2722
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2659, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2660, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2661, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2662, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2663, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2664, metadata !DIExpression()), !dbg !2720
  %18 = trunc i32 %5 to i8, !dbg !2723
  %19 = lshr i8 %18, 1, !dbg !2723
  %20 = and i8 %19, 1, !dbg !2723
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !2665, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2666, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2667, metadata !DIExpression()), !dbg !2720
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2724

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !2725
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !2726
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !2727
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !2728
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !2720
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !2729
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !2730
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !2651, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !2667, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !2666, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2665, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !2664, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2663, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !2662, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2661, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2660, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2653, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !2658, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2657, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2654, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.label(metadata !2668), !dbg !2731
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2669, metadata !DIExpression()), !dbg !2720
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
  ], !dbg !2732

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2665, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2654, metadata !DIExpression()), !dbg !2720
  br label %114, !dbg !2733

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2665, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2654, metadata !DIExpression()), !dbg !2720
  %43 = and i8 %37, 1, !dbg !2734
  %44 = icmp eq i8 %43, 0, !dbg !2734
  br i1 %44, label %45, label %114, !dbg !2733

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2736
  br i1 %46, label %114, label %47, !dbg !2739

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2736, !tbaa !1031
  br label %114, !dbg !2736

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !662, metadata !DIExpression(), metadata !2714, metadata ptr %12, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.assign(metadata i1 undef, metadata !663, metadata !DIExpression(), metadata !2715, metadata ptr %13, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata ptr @.str.11.91, metadata !659, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i32 %29, metadata !660, metadata !DIExpression()), !dbg !2740
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.92, ptr noundef nonnull @.str.11.91, i32 noundef 5) #41, !dbg !2744
  call void @llvm.dbg.value(metadata ptr %49, metadata !661, metadata !DIExpression()), !dbg !2740
  %50 = icmp eq ptr %49, @.str.11.91, !dbg !2745
  br i1 %50, label %51, label %60, !dbg !2747

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #41, !dbg !2748
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #41, !dbg !2749
  call void @llvm.dbg.value(metadata ptr %13, metadata !2750, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %13, metadata !2758, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i32 0, metadata !2761, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i64 8, metadata !2762, metadata !DIExpression()), !dbg !2763
  store i64 0, ptr %13, align 8, !dbg !2765
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #41, !dbg !2766
  %53 = icmp eq i64 %52, 3, !dbg !2768
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2769
  %57 = icmp eq i32 %29, 9, !dbg !2769
  %58 = select i1 %57, ptr @.str.10.93, ptr @.str.12.94, !dbg !2769
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2769
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #41, !dbg !2770
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #41, !dbg !2770
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2740
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2657, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.assign(metadata i1 undef, metadata !662, metadata !DIExpression(), metadata !2712, metadata ptr %10, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.assign(metadata i1 undef, metadata !663, metadata !DIExpression(), metadata !2713, metadata ptr %11, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata ptr @.str.12.94, metadata !659, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %29, metadata !660, metadata !DIExpression()), !dbg !2771
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.92, ptr noundef nonnull @.str.12.94, i32 noundef 5) #41, !dbg !2773
  call void @llvm.dbg.value(metadata ptr %62, metadata !661, metadata !DIExpression()), !dbg !2771
  %63 = icmp eq ptr %62, @.str.12.94, !dbg !2774
  br i1 %63, label %64, label %73, !dbg !2775

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #41, !dbg !2776
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #41, !dbg !2777
  call void @llvm.dbg.value(metadata ptr %11, metadata !2750, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata ptr %11, metadata !2758, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i32 0, metadata !2761, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i64 8, metadata !2762, metadata !DIExpression()), !dbg !2780
  store i64 0, ptr %11, align 8, !dbg !2782
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #41, !dbg !2783
  %66 = icmp eq i64 %65, 3, !dbg !2784
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2785
  %70 = icmp eq i32 %29, 9, !dbg !2785
  %71 = select i1 %70, ptr @.str.10.93, ptr @.str.12.94, !dbg !2785
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2785
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #41, !dbg !2786
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #41, !dbg !2786
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2658, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2657, metadata !DIExpression()), !dbg !2720
  %76 = and i8 %37, 1, !dbg !2787
  %77 = icmp eq i8 %76, 0, !dbg !2787
  br i1 %77, label %78, label %93, !dbg !2788

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2670, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2660, metadata !DIExpression()), !dbg !2720
  %79 = load i8, ptr %74, align 1, !dbg !2790, !tbaa !1031
  %80 = icmp eq i8 %79, 0, !dbg !2792
  br i1 %80, label %93, label %81, !dbg !2792

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !2670, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2660, metadata !DIExpression()), !dbg !2720
  %85 = icmp ult i64 %84, %40, !dbg !2793
  br i1 %85, label %86, label %88, !dbg !2796

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2793
  store i8 %82, ptr %87, align 1, !dbg !2793, !tbaa !1031
  br label %88, !dbg !2793

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2796
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2660, metadata !DIExpression()), !dbg !2720
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2797
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !2670, metadata !DIExpression()), !dbg !2789
  %91 = load i8, ptr %90, align 1, !dbg !2790, !tbaa !1031
  %92 = icmp eq i8 %91, 0, !dbg !2792
  br i1 %92, label %93, label %81, !dbg !2792, !llvm.loop !2798

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2800
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !2660, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2664, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2662, metadata !DIExpression()), !dbg !2720
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #42, !dbg !2801
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !2663, metadata !DIExpression()), !dbg !2720
  br label %114, !dbg !2802

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2664, metadata !DIExpression()), !dbg !2720
  br label %98, !dbg !2803

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !2664, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2665, metadata !DIExpression()), !dbg !2720
  br label %98, !dbg !2804

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !2728
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !2665, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !2664, metadata !DIExpression()), !dbg !2720
  %101 = and i8 %100, 1, !dbg !2805
  %102 = icmp eq i8 %101, 0, !dbg !2805
  %103 = select i1 %102, i8 1, i8 %99, !dbg !2807
  br label %104, !dbg !2807

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !2720
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !2723
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !2665, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !2664, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2654, metadata !DIExpression()), !dbg !2720
  %107 = and i8 %106, 1, !dbg !2808
  %108 = icmp eq i8 %107, 0, !dbg !2808
  br i1 %108, label %109, label %114, !dbg !2810

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !2811
  br i1 %110, label %114, label %111, !dbg !2814

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !2811, !tbaa !1031
  br label %114, !dbg !2811

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2665, metadata !DIExpression()), !dbg !2720
  br label %114, !dbg !2815

113:                                              ; preds = %28
  call void @abort() #43, !dbg !2816
  unreachable, !dbg !2816

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !2800
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.93, %45 ], [ @.str.10.93, %47 ], [ @.str.10.93, %42 ], [ %34, %28 ], [ @.str.12.94, %109 ], [ @.str.12.94, %111 ], [ @.str.12.94, %104 ], [ @.str.10.93, %41 ], !dbg !2720
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !2720
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !2720
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !2665, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !2664, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !2663, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2662, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !2660, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !2658, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !2657, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !2654, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2675, metadata !DIExpression()), !dbg !2817
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
  br label %138, !dbg !2818

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !2800
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !2725
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !2729
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !2730
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !2819
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !2820
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2651, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2675, metadata !DIExpression()), !dbg !2817
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2669, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2667, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2666, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2661, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2660, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2653, metadata !DIExpression()), !dbg !2720
  %147 = icmp eq i64 %139, -1, !dbg !2821
  br i1 %147, label %148, label %152, !dbg !2822

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2823
  %150 = load i8, ptr %149, align 1, !dbg !2823, !tbaa !1031
  %151 = icmp eq i8 %150, 0, !dbg !2824
  br i1 %151, label %612, label %154, !dbg !2825

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2826
  br i1 %153, label %612, label %154, !dbg !2825

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2677, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2680, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2681, metadata !DIExpression()), !dbg !2827
  br i1 %128, label %155, label %170, !dbg !2828

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !2830
  %157 = select i1 %147, i1 %129, i1 false, !dbg !2831
  br i1 %157, label %158, label %160, !dbg !2831

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2832
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !2653, metadata !DIExpression()), !dbg !2720
  br label %160, !dbg !2833

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2833
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !2653, metadata !DIExpression()), !dbg !2720
  %162 = icmp ugt i64 %156, %161, !dbg !2834
  br i1 %162, label %170, label %163, !dbg !2835

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2836
  call void @llvm.dbg.value(metadata ptr %164, metadata !2837, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata ptr %119, metadata !2840, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 %120, metadata !2841, metadata !DIExpression()), !dbg !2842
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !2844
  %166 = icmp ne i32 %165, 0, !dbg !2845
  %167 = select i1 %166, i1 true, i1 %131, !dbg !2846
  %168 = xor i1 %166, true, !dbg !2846
  %169 = zext i1 %168 to i8, !dbg !2846
  br i1 %167, label %170, label %666, !dbg !2846

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2827
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2677, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !2653, metadata !DIExpression()), !dbg !2720
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2847
  %175 = load i8, ptr %174, align 1, !dbg !2847, !tbaa !1031
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2682, metadata !DIExpression()), !dbg !2827
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
  ], !dbg !2848

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !2849

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !2850

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2680, metadata !DIExpression()), !dbg !2827
  %179 = and i8 %144, 1, !dbg !2854
  %180 = icmp eq i8 %179, 0, !dbg !2854
  %181 = select i1 %132, i1 %180, i1 false, !dbg !2854
  br i1 %181, label %182, label %198, !dbg !2854

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2856
  br i1 %183, label %184, label %186, !dbg !2860

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2856
  store i8 39, ptr %185, align 1, !dbg !2856, !tbaa !1031
  br label %186, !dbg !2856

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2860
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !2660, metadata !DIExpression()), !dbg !2720
  %188 = icmp ult i64 %187, %146, !dbg !2861
  br i1 %188, label %189, label %191, !dbg !2864

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2861
  store i8 36, ptr %190, align 1, !dbg !2861, !tbaa !1031
  br label %191, !dbg !2861

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2864
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2660, metadata !DIExpression()), !dbg !2720
  %193 = icmp ult i64 %192, %146, !dbg !2865
  br i1 %193, label %194, label %196, !dbg !2868

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2865
  store i8 39, ptr %195, align 1, !dbg !2865, !tbaa !1031
  br label %196, !dbg !2865

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2868
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2660, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2669, metadata !DIExpression()), !dbg !2720
  br label %198, !dbg !2869

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2720
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !2669, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !2660, metadata !DIExpression()), !dbg !2720
  %201 = icmp ult i64 %199, %146, !dbg !2870
  br i1 %201, label %202, label %204, !dbg !2873

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2870
  store i8 92, ptr %203, align 1, !dbg !2870, !tbaa !1031
  br label %204, !dbg !2870

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2873
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !2660, metadata !DIExpression()), !dbg !2720
  br i1 %125, label %206, label %476, !dbg !2874

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2876
  %208 = icmp ult i64 %207, %171, !dbg !2877
  br i1 %208, label %209, label %465, !dbg !2878

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2879
  %211 = load i8, ptr %210, align 1, !dbg !2879, !tbaa !1031
  %212 = add i8 %211, -48, !dbg !2880
  %213 = icmp ult i8 %212, 10, !dbg !2880
  br i1 %213, label %214, label %465, !dbg !2880

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2881
  br i1 %215, label %216, label %218, !dbg !2885

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2881
  store i8 48, ptr %217, align 1, !dbg !2881, !tbaa !1031
  br label %218, !dbg !2881

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !2660, metadata !DIExpression()), !dbg !2720
  %220 = icmp ult i64 %219, %146, !dbg !2886
  br i1 %220, label %221, label %223, !dbg !2889

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2886
  store i8 48, ptr %222, align 1, !dbg !2886, !tbaa !1031
  br label %223, !dbg !2886

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !2660, metadata !DIExpression()), !dbg !2720
  br label %465, !dbg !2890

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2891

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2892

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2893

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2895

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2897
  %231 = icmp ult i64 %230, %171, !dbg !2898
  br i1 %231, label %232, label %465, !dbg !2899

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2900
  %234 = load i8, ptr %233, align 1, !dbg !2900, !tbaa !1031
  %235 = icmp eq i8 %234, 63, !dbg !2901
  br i1 %235, label %236, label %465, !dbg !2902

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2903
  %238 = load i8, ptr %237, align 1, !dbg !2903, !tbaa !1031
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
  ], !dbg !2904

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2905

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !2682, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !2675, metadata !DIExpression()), !dbg !2817
  %241 = icmp ult i64 %140, %146, !dbg !2907
  br i1 %241, label %242, label %244, !dbg !2910

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2907
  store i8 63, ptr %243, align 1, !dbg !2907, !tbaa !1031
  br label %244, !dbg !2907

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2910
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !2660, metadata !DIExpression()), !dbg !2720
  %246 = icmp ult i64 %245, %146, !dbg !2911
  br i1 %246, label %247, label %249, !dbg !2914

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2911
  store i8 34, ptr %248, align 1, !dbg !2911, !tbaa !1031
  br label %249, !dbg !2911

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2914
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !2660, metadata !DIExpression()), !dbg !2720
  %251 = icmp ult i64 %250, %146, !dbg !2915
  br i1 %251, label %252, label %254, !dbg !2918

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2915
  store i8 34, ptr %253, align 1, !dbg !2915, !tbaa !1031
  br label %254, !dbg !2915

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2918
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !2660, metadata !DIExpression()), !dbg !2720
  %256 = icmp ult i64 %255, %146, !dbg !2919
  br i1 %256, label %257, label %259, !dbg !2922

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2919
  store i8 63, ptr %258, align 1, !dbg !2919, !tbaa !1031
  br label %259, !dbg !2919

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !2660, metadata !DIExpression()), !dbg !2720
  br label %465, !dbg !2923

261:                                              ; preds = %170
  br label %272, !dbg !2924

262:                                              ; preds = %170
  br label %272, !dbg !2925

263:                                              ; preds = %170
  br label %270, !dbg !2926

264:                                              ; preds = %170
  br label %270, !dbg !2927

265:                                              ; preds = %170
  br label %272, !dbg !2928

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2929

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2930

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2933

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2935

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2936
  call void @llvm.dbg.label(metadata !2683), !dbg !2937
  br i1 %133, label %272, label %655, !dbg !2938

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2936
  call void @llvm.dbg.label(metadata !2686), !dbg !2940
  br i1 %124, label %520, label %476, !dbg !2941

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2942

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2943, !tbaa !1031
  %277 = icmp eq i8 %276, 0, !dbg !2945
  br i1 %277, label %278, label %465, !dbg !2946

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2947
  br i1 %279, label %280, label %465, !dbg !2949

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2681, metadata !DIExpression()), !dbg !2827
  br label %281, !dbg !2950

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !2681, metadata !DIExpression()), !dbg !2827
  br i1 %133, label %465, label %655, !dbg !2951

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2666, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2681, metadata !DIExpression()), !dbg !2827
  br i1 %132, label %284, label %465, !dbg !2953

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2954

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2957
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2959
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2959
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !2651, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !2661, metadata !DIExpression()), !dbg !2720
  %291 = icmp ult i64 %140, %290, !dbg !2960
  br i1 %291, label %292, label %294, !dbg !2963

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2960
  store i8 39, ptr %293, align 1, !dbg !2960, !tbaa !1031
  br label %294, !dbg !2960

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !2660, metadata !DIExpression()), !dbg !2720
  %296 = icmp ult i64 %295, %290, !dbg !2964
  br i1 %296, label %297, label %299, !dbg !2967

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2964
  store i8 92, ptr %298, align 1, !dbg !2964, !tbaa !1031
  br label %299, !dbg !2964

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2660, metadata !DIExpression()), !dbg !2720
  %301 = icmp ult i64 %300, %290, !dbg !2968
  br i1 %301, label %302, label %304, !dbg !2971

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2968
  store i8 39, ptr %303, align 1, !dbg !2968, !tbaa !1031
  br label %304, !dbg !2968

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2971
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !2660, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2669, metadata !DIExpression()), !dbg !2720
  br label %465, !dbg !2972

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2973

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2687, metadata !DIExpression()), !dbg !2974
  %308 = tail call ptr @__ctype_b_loc() #44, !dbg !2975
  %309 = load ptr, ptr %308, align 8, !dbg !2975, !tbaa !950
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2975
  %312 = load i16, ptr %311, align 2, !dbg !2975, !tbaa !1063
  %313 = and i16 %312, 16384, !dbg !2977
  %314 = icmp ne i16 %313, 0, !dbg !2977
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !2689, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2974
  br label %355, !dbg !2978

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #41, !dbg !2979
  call void @llvm.dbg.value(metadata ptr %14, metadata !2750, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata ptr %14, metadata !2758, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i32 0, metadata !2761, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i64 8, metadata !2762, metadata !DIExpression()), !dbg !2982
  store i64 0, ptr %14, align 8, !dbg !2984
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2687, metadata !DIExpression()), !dbg !2974
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2689, metadata !DIExpression()), !dbg !2974
  %316 = icmp eq i64 %171, -1, !dbg !2985
  br i1 %316, label %317, label %319, !dbg !2987

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2988
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !2653, metadata !DIExpression()), !dbg !2720
  br label %319, !dbg !2989

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !2827
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !2653, metadata !DIExpression()), !dbg !2720
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #41, !dbg !2990
  %321 = sub i64 %320, %145, !dbg !2991
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #41, !dbg !2992
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2697, metadata !DIExpression()), !dbg !2719
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2993

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2687, metadata !DIExpression()), !dbg !2974
  %324 = icmp ult i64 %145, %320, !dbg !2994
  br i1 %324, label %326, label %351, !dbg !2996

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2689, metadata !DIExpression()), !dbg !2974
  br label %351, !dbg !2997

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !2687, metadata !DIExpression()), !dbg !2974
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2999
  %330 = load i8, ptr %329, align 1, !dbg !2999, !tbaa !1031
  %331 = icmp eq i8 %330, 0, !dbg !2996
  br i1 %331, label %351, label %332, !dbg !3000

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !3001
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !2687, metadata !DIExpression()), !dbg !2974
  %334 = add i64 %333, %145, !dbg !3002
  %335 = icmp eq i64 %333, %321, !dbg !2994
  br i1 %335, label %351, label %326, !dbg !2996, !llvm.loop !3003

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2698, metadata !DIExpression()), !dbg !3004
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !3005
  %339 = and i1 %338, %132, !dbg !3005
  br i1 %339, label %340, label %347, !dbg !3005

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !2698, metadata !DIExpression()), !dbg !3004
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !3006
  %343 = load i8, ptr %342, align 1, !dbg !3006, !tbaa !1031
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !3008

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !3009
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !2698, metadata !DIExpression()), !dbg !3004
  %346 = icmp eq i64 %345, %322, !dbg !3010
  br i1 %346, label %347, label %340, !dbg !3011, !llvm.loop !3012

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !3014, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %348, metadata !3016, metadata !DIExpression()), !dbg !3024
  %349 = call i32 @iswprint(i32 noundef %348) #41, !dbg !3026
  %350 = icmp ne i32 %349, 0, !dbg !3027
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2689, metadata !DIExpression()), !dbg !2974
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2687, metadata !DIExpression()), !dbg !2974
  br label %351, !dbg !3028

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2689, metadata !DIExpression()), !dbg !2974
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !2687, metadata !DIExpression()), !dbg !2974
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3029
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3030
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2689, metadata !DIExpression()), !dbg !2974
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2687, metadata !DIExpression()), !dbg !2974
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3029
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3030
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !2827
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !3031
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2689, metadata !DIExpression()), !dbg !2974
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !2687, metadata !DIExpression()), !dbg !2974
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2653, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !2681, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2827
  %359 = icmp ult i64 %357, 2, !dbg !3032
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !3033
  br i1 %361, label %461, label %362, !dbg !3033

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !3034
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2706, metadata !DIExpression()), !dbg !3035
  br label %364, !dbg !3036

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !2720
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !2819
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !2817
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !2827
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !3037
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !2682, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !2680, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !2677, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2675, metadata !DIExpression()), !dbg !2817
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !2669, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !2660, metadata !DIExpression()), !dbg !2720
  br i1 %360, label %417, label %371, !dbg !3038

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !3043

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2680, metadata !DIExpression()), !dbg !2827
  %373 = and i8 %366, 1, !dbg !3046
  %374 = icmp eq i8 %373, 0, !dbg !3046
  %375 = select i1 %132, i1 %374, i1 false, !dbg !3046
  br i1 %375, label %376, label %392, !dbg !3046

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !3048
  br i1 %377, label %378, label %380, !dbg !3052

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3048
  store i8 39, ptr %379, align 1, !dbg !3048, !tbaa !1031
  br label %380, !dbg !3048

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !3052
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !2660, metadata !DIExpression()), !dbg !2720
  %382 = icmp ult i64 %381, %146, !dbg !3053
  br i1 %382, label %383, label %385, !dbg !3056

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !3053
  store i8 36, ptr %384, align 1, !dbg !3053, !tbaa !1031
  br label %385, !dbg !3053

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !3056
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !2660, metadata !DIExpression()), !dbg !2720
  %387 = icmp ult i64 %386, %146, !dbg !3057
  br i1 %387, label %388, label %390, !dbg !3060

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3057
  store i8 39, ptr %389, align 1, !dbg !3057, !tbaa !1031
  br label %390, !dbg !3057

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !3060
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2660, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2669, metadata !DIExpression()), !dbg !2720
  br label %392, !dbg !3061

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !2720
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !2669, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !2660, metadata !DIExpression()), !dbg !2720
  %395 = icmp ult i64 %393, %146, !dbg !3062
  br i1 %395, label %396, label %398, !dbg !3065

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !3062
  store i8 92, ptr %397, align 1, !dbg !3062, !tbaa !1031
  br label %398, !dbg !3062

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !3065
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !2660, metadata !DIExpression()), !dbg !2720
  %400 = icmp ult i64 %399, %146, !dbg !3066
  br i1 %400, label %401, label %405, !dbg !3069

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !3066
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !3066
  store i8 %403, ptr %404, align 1, !dbg !3066, !tbaa !1031
  br label %405, !dbg !3066

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !3069
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !2660, metadata !DIExpression()), !dbg !2720
  %407 = icmp ult i64 %406, %146, !dbg !3070
  br i1 %407, label %408, label %413, !dbg !3073

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !3070
  %411 = or disjoint i8 %410, 48, !dbg !3070
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !3070
  store i8 %411, ptr %412, align 1, !dbg !3070, !tbaa !1031
  br label %413, !dbg !3070

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !3073
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !2660, metadata !DIExpression()), !dbg !2720
  %415 = and i8 %370, 7, !dbg !3074
  %416 = or disjoint i8 %415, 48, !dbg !3075
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !2682, metadata !DIExpression()), !dbg !2827
  br label %426, !dbg !3076

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !3077
  %419 = icmp eq i8 %418, 0, !dbg !3077
  br i1 %419, label %426, label %420, !dbg !3079

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !3080
  br i1 %421, label %422, label %424, !dbg !3084

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3080
  store i8 92, ptr %423, align 1, !dbg !3080, !tbaa !1031
  br label %424, !dbg !3080

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !3084
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !2660, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2677, metadata !DIExpression()), !dbg !2827
  br label %426, !dbg !3085

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !2720
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !2819
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !2827
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !2827
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2682, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2680, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2677, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2669, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2660, metadata !DIExpression()), !dbg !2720
  %432 = add i64 %367, 1, !dbg !3086
  %433 = icmp ugt i64 %363, %432, !dbg !3088
  br i1 %433, label %434, label %463, !dbg !3089

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !3090
  %436 = icmp ne i8 %435, 0, !dbg !3090
  %437 = and i8 %430, 1, !dbg !3090
  %438 = icmp eq i8 %437, 0, !dbg !3090
  %439 = select i1 %436, i1 %438, i1 false, !dbg !3090
  br i1 %439, label %440, label %451, !dbg !3090

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !3093
  br i1 %441, label %442, label %444, !dbg !3097

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !3093
  store i8 39, ptr %443, align 1, !dbg !3093, !tbaa !1031
  br label %444, !dbg !3093

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !3097
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !2660, metadata !DIExpression()), !dbg !2720
  %446 = icmp ult i64 %445, %146, !dbg !3098
  br i1 %446, label %447, label %449, !dbg !3101

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !3098
  store i8 39, ptr %448, align 1, !dbg !3098, !tbaa !1031
  br label %449, !dbg !3098

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !3101
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !2660, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2669, metadata !DIExpression()), !dbg !2720
  br label %451, !dbg !3102

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !3103
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !2669, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !2660, metadata !DIExpression()), !dbg !2720
  %454 = icmp ult i64 %452, %146, !dbg !3104
  br i1 %454, label %455, label %457, !dbg !3107

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !3104
  store i8 %431, ptr %456, align 1, !dbg !3104, !tbaa !1031
  br label %457, !dbg !3104

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !3107
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !2660, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !2675, metadata !DIExpression()), !dbg !2817
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !3108
  %460 = load i8, ptr %459, align 1, !dbg !3108, !tbaa !1031
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !2682, metadata !DIExpression()), !dbg !2827
  br label %364, !dbg !3109, !llvm.loop !3110

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2682, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !2681, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2680, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2677, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2675, metadata !DIExpression()), !dbg !2817
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2669, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2660, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2653, metadata !DIExpression()), !dbg !2720
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2682, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !2681, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2680, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2677, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2675, metadata !DIExpression()), !dbg !2817
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2669, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2660, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2653, metadata !DIExpression()), !dbg !2720
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !3113
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !2720
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !2725
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !2720
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !2720
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !2817
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !2827
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !2827
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !2827
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !2651, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !2682, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !2681, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !2680, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2677, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !2675, metadata !DIExpression()), !dbg !2817
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !2669, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !2666, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !2661, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !2660, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !2653, metadata !DIExpression()), !dbg !2720
  br i1 %126, label %487, label %476, !dbg !3114

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
  br i1 %137, label %488, label %509, !dbg !3116

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !3117

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
  %499 = lshr i8 %490, 5, !dbg !3118
  %500 = zext nneg i8 %499 to i64, !dbg !3118
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !3119
  %502 = load i32, ptr %501, align 4, !dbg !3119, !tbaa !1022
  %503 = and i8 %490, 31, !dbg !3120
  %504 = zext nneg i8 %503 to i32, !dbg !3120
  %505 = shl nuw i32 1, %504, !dbg !3121
  %506 = and i32 %502, %505, !dbg !3121
  %507 = icmp eq i32 %506, 0, !dbg !3121
  %508 = and i1 %172, %507, !dbg !3122
  br i1 %508, label %558, label %520, !dbg !3122

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
  br i1 %172, label %558, label %520, !dbg !3123

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !3113
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !2720
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !2725
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !2729
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !2819
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !3124
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !2827
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !2827
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2651, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2682, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2681, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2675, metadata !DIExpression()), !dbg !2817
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !2669, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2666, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2661, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2660, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2653, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.label(metadata !2709), !dbg !3125
  br i1 %131, label %530, label %659, !dbg !3126

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2680, metadata !DIExpression()), !dbg !2827
  %531 = and i8 %525, 1, !dbg !3128
  %532 = icmp eq i8 %531, 0, !dbg !3128
  %533 = select i1 %132, i1 %532, i1 false, !dbg !3128
  br i1 %533, label %534, label %550, !dbg !3128

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !3130
  br i1 %535, label %536, label %538, !dbg !3134

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3130
  store i8 39, ptr %537, align 1, !dbg !3130, !tbaa !1031
  br label %538, !dbg !3130

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !3134
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !2660, metadata !DIExpression()), !dbg !2720
  %540 = icmp ult i64 %539, %529, !dbg !3135
  br i1 %540, label %541, label %543, !dbg !3138

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !3135
  store i8 36, ptr %542, align 1, !dbg !3135, !tbaa !1031
  br label %543, !dbg !3135

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !3138
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !2660, metadata !DIExpression()), !dbg !2720
  %545 = icmp ult i64 %544, %529, !dbg !3139
  br i1 %545, label %546, label %548, !dbg !3142

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !3139
  store i8 39, ptr %547, align 1, !dbg !3139, !tbaa !1031
  br label %548, !dbg !3139

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !3142
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !2660, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2669, metadata !DIExpression()), !dbg !2720
  br label %550, !dbg !3143

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !2827
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2669, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !2660, metadata !DIExpression()), !dbg !2720
  %553 = icmp ult i64 %551, %529, !dbg !3144
  br i1 %553, label %554, label %556, !dbg !3147

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !3144
  store i8 92, ptr %555, align 1, !dbg !3144, !tbaa !1031
  br label %556, !dbg !3144

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !3147
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2651, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2682, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2681, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2680, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2675, metadata !DIExpression()), !dbg !2817
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2669, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2666, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2661, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !2660, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2653, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.label(metadata !2710), !dbg !3148
  br label %585, !dbg !3149

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !3113
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !2720
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !2725
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !2729
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !2819
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !3124
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !2827
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !2827
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !3152
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !2651, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !2682, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !2681, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !2680, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2675, metadata !DIExpression()), !dbg !2817
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !2669, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !2666, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2661, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !2660, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !2653, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.label(metadata !2710), !dbg !3148
  %569 = and i8 %563, 1, !dbg !3149
  %570 = icmp ne i8 %569, 0, !dbg !3149
  %571 = and i8 %565, 1, !dbg !3149
  %572 = icmp eq i8 %571, 0, !dbg !3149
  %573 = select i1 %570, i1 %572, i1 false, !dbg !3149
  br i1 %573, label %574, label %585, !dbg !3149

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !3153
  br i1 %575, label %576, label %578, !dbg !3157

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !3153
  store i8 39, ptr %577, align 1, !dbg !3153, !tbaa !1031
  br label %578, !dbg !3153

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !3157
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !2660, metadata !DIExpression()), !dbg !2720
  %580 = icmp ult i64 %579, %568, !dbg !3158
  br i1 %580, label %581, label %583, !dbg !3161

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !3158
  store i8 39, ptr %582, align 1, !dbg !3158, !tbaa !1031
  br label %583, !dbg !3158

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !2660, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2669, metadata !DIExpression()), !dbg !2720
  br label %585, !dbg !3162

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !2827
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !2669, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !2660, metadata !DIExpression()), !dbg !2720
  %595 = icmp ult i64 %593, %586, !dbg !3163
  br i1 %595, label %596, label %598, !dbg !3166

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !3163
  store i8 %587, ptr %597, align 1, !dbg !3163, !tbaa !1031
  br label %598, !dbg !3163

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !3166
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2660, metadata !DIExpression()), !dbg !2720
  %600 = icmp eq i8 %588, 0, !dbg !3167
  %601 = select i1 %600, i8 0, i8 %143, !dbg !3169
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !2667, metadata !DIExpression()), !dbg !2720
  br label %602, !dbg !3170

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !3113
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !2720
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !2725
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !2729
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !2730
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !2819
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !3124
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !2651, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2675, metadata !DIExpression()), !dbg !2817
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !2669, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !2667, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !2666, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !2661, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2660, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !2653, metadata !DIExpression()), !dbg !2720
  %611 = add i64 %609, 1, !dbg !3171
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !2675, metadata !DIExpression()), !dbg !2817
  br label %138, !dbg !3172, !llvm.loop !3173

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2651, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2667, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2666, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2661, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2660, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2653, metadata !DIExpression()), !dbg !2720
  %613 = icmp eq i64 %140, 0, !dbg !3175
  %614 = and i1 %132, %613, !dbg !3177
  %615 = xor i1 %614, true, !dbg !3177
  %616 = select i1 %615, i1 true, i1 %131, !dbg !3177
  br i1 %616, label %617, label %655, !dbg !3177

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !3178
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !3178
  br i1 %621, label %622, label %631, !dbg !3178

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !3180
  %624 = icmp eq i8 %623, 0, !dbg !3180
  br i1 %624, label %627, label %625, !dbg !3183

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !3184
  br label %672, !dbg !3185

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !3186
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !3188
  br i1 %630, label %28, label %631, !dbg !3188

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !3189
  %634 = select i1 %633, i1 %632, i1 false, !dbg !3191
  br i1 %634, label %635, label %650, !dbg !3191

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2662, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2660, metadata !DIExpression()), !dbg !2720
  %636 = load i8, ptr %119, align 1, !dbg !3192, !tbaa !1031
  %637 = icmp eq i8 %636, 0, !dbg !3195
  br i1 %637, label %650, label %638, !dbg !3195

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !2662, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !2660, metadata !DIExpression()), !dbg !2720
  %642 = icmp ult i64 %641, %146, !dbg !3196
  br i1 %642, label %643, label %645, !dbg !3199

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !3196
  store i8 %639, ptr %644, align 1, !dbg !3196, !tbaa !1031
  br label %645, !dbg !3196

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !3199
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !2660, metadata !DIExpression()), !dbg !2720
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !3200
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !2662, metadata !DIExpression()), !dbg !2720
  %648 = load i8, ptr %647, align 1, !dbg !3192, !tbaa !1031
  %649 = icmp eq i8 %648, 0, !dbg !3195
  br i1 %649, label %650, label %638, !dbg !3195, !llvm.loop !3201

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !2800
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !2660, metadata !DIExpression()), !dbg !2720
  %652 = icmp ult i64 %651, %146, !dbg !3203
  br i1 %652, label %653, label %672, !dbg !3205

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !3206
  store i8 0, ptr %654, align 1, !dbg !3207, !tbaa !1031
  br label %672, !dbg !3206

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !2711), !dbg !3208
  %657 = icmp eq i8 %123, 0, !dbg !3209
  %658 = select i1 %657, i32 2, i32 4, !dbg !3209
  br label %666, !dbg !3209

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !2711), !dbg !3208
  %662 = icmp eq i32 %115, 2, !dbg !3211
  %663 = icmp eq i8 %123, 0, !dbg !3209
  %664 = select i1 %663, i32 2, i32 4, !dbg !3209
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !3209
  br label %666, !dbg !3209

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !2654, metadata !DIExpression()), !dbg !2720
  %670 = and i32 %5, -3, !dbg !3212
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !3213
  br label %672, !dbg !3214

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !3215
}

; Function Attrs: nounwind
declare !dbg !3216 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3219 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3222 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3224 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3228, metadata !DIExpression()), !dbg !3231
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3229, metadata !DIExpression()), !dbg !3231
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3230, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata ptr %0, metadata !3232, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 %1, metadata !3237, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata ptr null, metadata !3238, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata ptr %2, metadata !3239, metadata !DIExpression()), !dbg !3245
  %4 = icmp eq ptr %2, null, !dbg !3247
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3247
  call void @llvm.dbg.value(metadata ptr %5, metadata !3240, metadata !DIExpression()), !dbg !3245
  %6 = tail call ptr @__errno_location() #44, !dbg !3248
  %7 = load i32, ptr %6, align 4, !dbg !3248, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %7, metadata !3241, metadata !DIExpression()), !dbg !3245
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3249
  %9 = load i32, ptr %8, align 4, !dbg !3249, !tbaa !2594
  %10 = or i32 %9, 1, !dbg !3250
  call void @llvm.dbg.value(metadata i32 %10, metadata !3242, metadata !DIExpression()), !dbg !3245
  %11 = load i32, ptr %5, align 8, !dbg !3251, !tbaa !2544
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3252
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3253
  %14 = load ptr, ptr %13, align 8, !dbg !3253, !tbaa !2615
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3254
  %16 = load ptr, ptr %15, align 8, !dbg !3254, !tbaa !2618
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3255
  %18 = add i64 %17, 1, !dbg !3256
  call void @llvm.dbg.value(metadata i64 %18, metadata !3243, metadata !DIExpression()), !dbg !3245
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #48, !dbg !3257
  call void @llvm.dbg.value(metadata ptr %19, metadata !3244, metadata !DIExpression()), !dbg !3245
  %20 = load i32, ptr %5, align 8, !dbg !3258, !tbaa !2544
  %21 = load ptr, ptr %13, align 8, !dbg !3259, !tbaa !2615
  %22 = load ptr, ptr %15, align 8, !dbg !3260, !tbaa !2618
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3261
  store i32 %7, ptr %6, align 4, !dbg !3262, !tbaa !1022
  ret ptr %19, !dbg !3263
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3233 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3232, metadata !DIExpression()), !dbg !3264
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3237, metadata !DIExpression()), !dbg !3264
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3238, metadata !DIExpression()), !dbg !3264
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3239, metadata !DIExpression()), !dbg !3264
  %5 = icmp eq ptr %3, null, !dbg !3265
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3265
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3240, metadata !DIExpression()), !dbg !3264
  %7 = tail call ptr @__errno_location() #44, !dbg !3266
  %8 = load i32, ptr %7, align 4, !dbg !3266, !tbaa !1022
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3241, metadata !DIExpression()), !dbg !3264
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3267
  %10 = load i32, ptr %9, align 4, !dbg !3267, !tbaa !2594
  %11 = icmp eq ptr %2, null, !dbg !3268
  %12 = zext i1 %11 to i32, !dbg !3268
  %13 = or i32 %10, %12, !dbg !3269
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3242, metadata !DIExpression()), !dbg !3264
  %14 = load i32, ptr %6, align 8, !dbg !3270, !tbaa !2544
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3271
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3272
  %17 = load ptr, ptr %16, align 8, !dbg !3272, !tbaa !2615
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3273
  %19 = load ptr, ptr %18, align 8, !dbg !3273, !tbaa !2618
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3274
  %21 = add i64 %20, 1, !dbg !3275
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3243, metadata !DIExpression()), !dbg !3264
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #48, !dbg !3276
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3244, metadata !DIExpression()), !dbg !3264
  %23 = load i32, ptr %6, align 8, !dbg !3277, !tbaa !2544
  %24 = load ptr, ptr %16, align 8, !dbg !3278, !tbaa !2615
  %25 = load ptr, ptr %18, align 8, !dbg !3279, !tbaa !2618
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3280
  store i32 %8, ptr %7, align 4, !dbg !3281, !tbaa !1022
  br i1 %11, label %28, label %27, !dbg !3282

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3283, !tbaa !1879
  br label %28, !dbg !3285

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3286
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3287 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3292, !tbaa !950
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3289, metadata !DIExpression()), !dbg !3293
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3290, metadata !DIExpression()), !dbg !3294
  %2 = load i32, ptr @nslots, align 4, !tbaa !1022
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3290, metadata !DIExpression()), !dbg !3294
  %3 = icmp sgt i32 %2, 1, !dbg !3295
  br i1 %3, label %4, label %6, !dbg !3297

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3295
  br label %10, !dbg !3297

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3298
  %8 = load ptr, ptr %7, align 8, !dbg !3298, !tbaa !3300
  %9 = icmp eq ptr %8, @slot0, !dbg !3302
  br i1 %9, label %17, label %16, !dbg !3303

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3290, metadata !DIExpression()), !dbg !3294
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3304
  %13 = load ptr, ptr %12, align 8, !dbg !3304, !tbaa !3300
  tail call void @free(ptr noundef %13) #41, !dbg !3305
  %14 = add nuw nsw i64 %11, 1, !dbg !3306
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3290, metadata !DIExpression()), !dbg !3294
  %15 = icmp eq i64 %14, %5, !dbg !3295
  br i1 %15, label %6, label %10, !dbg !3297, !llvm.loop !3307

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #41, !dbg !3309
  store i64 256, ptr @slotvec0, align 8, !dbg !3311, !tbaa !3312
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3313, !tbaa !3300
  br label %17, !dbg !3314

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3315
  br i1 %18, label %20, label %19, !dbg !3317

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #41, !dbg !3318
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3320, !tbaa !950
  br label %20, !dbg !3321

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3322, !tbaa !1022
  ret void, !dbg !3323
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3324 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3326, metadata !DIExpression()), !dbg !3328
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3327, metadata !DIExpression()), !dbg !3328
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3329
  ret ptr %3, !dbg !3330
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3331 {
  %5 = alloca i64, align 8, !DIAssignID !3351
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3345, metadata !DIExpression(), metadata !3351, metadata ptr %5, metadata !DIExpression()), !dbg !3352
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3335, metadata !DIExpression()), !dbg !3353
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3336, metadata !DIExpression()), !dbg !3353
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3337, metadata !DIExpression()), !dbg !3353
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3338, metadata !DIExpression()), !dbg !3353
  %6 = tail call ptr @__errno_location() #44, !dbg !3354
  %7 = load i32, ptr %6, align 4, !dbg !3354, !tbaa !1022
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3339, metadata !DIExpression()), !dbg !3353
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3355, !tbaa !950
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3340, metadata !DIExpression()), !dbg !3353
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3341, metadata !DIExpression()), !dbg !3353
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3356
  br i1 %9, label %10, label %11, !dbg !3356

10:                                               ; preds = %4
  tail call void @abort() #43, !dbg !3358
  unreachable, !dbg !3358

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3359, !tbaa !1022
  %13 = icmp sgt i32 %12, %0, !dbg !3360
  br i1 %13, label %32, label %14, !dbg !3361

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3362
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3342, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3352
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #41, !dbg !3363
  %16 = sext i32 %12 to i64, !dbg !3364
  store i64 %16, ptr %5, align 8, !dbg !3365, !tbaa !1879, !DIAssignID !3366
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3345, metadata !DIExpression(), metadata !3366, metadata ptr %5, metadata !DIExpression()), !dbg !3352
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3367
  %18 = add nuw nsw i32 %0, 1, !dbg !3368
  %19 = sub i32 %18, %12, !dbg !3369
  %20 = sext i32 %19 to i64, !dbg !3370
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !3371
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3340, metadata !DIExpression()), !dbg !3353
  store ptr %21, ptr @slotvec, align 8, !dbg !3372, !tbaa !950
  br i1 %15, label %22, label %23, !dbg !3373

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3374, !tbaa.struct !3376
  br label %23, !dbg !3377

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3378, !tbaa !1022
  %25 = sext i32 %24 to i64, !dbg !3379
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3379
  %27 = load i64, ptr %5, align 8, !dbg !3380, !tbaa !1879
  %28 = sub nsw i64 %27, %25, !dbg !3381
  %29 = shl i64 %28, 4, !dbg !3382
  call void @llvm.dbg.value(metadata ptr %26, metadata !2758, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i32 0, metadata !2761, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %29, metadata !2762, metadata !DIExpression()), !dbg !3383
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #41, !dbg !3385
  %30 = load i64, ptr %5, align 8, !dbg !3386, !tbaa !1879
  %31 = trunc i64 %30 to i32, !dbg !3386
  store i32 %31, ptr @nslots, align 4, !dbg !3387, !tbaa !1022
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #41, !dbg !3388
  br label %32, !dbg !3389

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3353
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3340, metadata !DIExpression()), !dbg !3353
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3390
  %36 = load i64, ptr %35, align 8, !dbg !3391, !tbaa !3312
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3346, metadata !DIExpression()), !dbg !3392
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3393
  %38 = load ptr, ptr %37, align 8, !dbg !3393, !tbaa !3300
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3348, metadata !DIExpression()), !dbg !3392
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3394
  %40 = load i32, ptr %39, align 4, !dbg !3394, !tbaa !2594
  %41 = or i32 %40, 1, !dbg !3395
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3349, metadata !DIExpression()), !dbg !3392
  %42 = load i32, ptr %3, align 8, !dbg !3396, !tbaa !2544
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3397
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3398
  %45 = load ptr, ptr %44, align 8, !dbg !3398, !tbaa !2615
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3399
  %47 = load ptr, ptr %46, align 8, !dbg !3399, !tbaa !2618
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3400
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3350, metadata !DIExpression()), !dbg !3392
  %49 = icmp ugt i64 %36, %48, !dbg !3401
  br i1 %49, label %60, label %50, !dbg !3403

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3404
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3346, metadata !DIExpression()), !dbg !3392
  store i64 %51, ptr %35, align 8, !dbg !3406, !tbaa !3312
  %52 = icmp eq ptr %38, @slot0, !dbg !3407
  br i1 %52, label %54, label %53, !dbg !3409

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #41, !dbg !3410
  br label %54, !dbg !3410

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #48, !dbg !3411
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3348, metadata !DIExpression()), !dbg !3392
  store ptr %55, ptr %37, align 8, !dbg !3412, !tbaa !3300
  %56 = load i32, ptr %3, align 8, !dbg !3413, !tbaa !2544
  %57 = load ptr, ptr %44, align 8, !dbg !3414, !tbaa !2615
  %58 = load ptr, ptr %46, align 8, !dbg !3415, !tbaa !2618
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3416
  br label %60, !dbg !3417

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3392
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3348, metadata !DIExpression()), !dbg !3392
  store i32 %7, ptr %6, align 4, !dbg !3418, !tbaa !1022
  ret ptr %61, !dbg !3419
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3420 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3424, metadata !DIExpression()), !dbg !3427
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3425, metadata !DIExpression()), !dbg !3427
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3426, metadata !DIExpression()), !dbg !3427
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3428
  ret ptr %4, !dbg !3429
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3430 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3432, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i32 0, metadata !3326, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata ptr %0, metadata !3327, metadata !DIExpression()), !dbg !3434
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3436
  ret ptr %2, !dbg !3437
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3438 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3442, metadata !DIExpression()), !dbg !3444
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3443, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i32 0, metadata !3424, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata ptr %0, metadata !3425, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %1, metadata !3426, metadata !DIExpression()), !dbg !3445
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3447
  ret ptr %3, !dbg !3448
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3449 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3457
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3456, metadata !DIExpression(), metadata !3457, metadata ptr %4, metadata !DIExpression()), !dbg !3458
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3453, metadata !DIExpression()), !dbg !3458
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3454, metadata !DIExpression()), !dbg !3458
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3455, metadata !DIExpression()), !dbg !3458
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3460), !dbg !3463
  call void @llvm.dbg.value(metadata i32 %1, metadata !3464, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3469, metadata !DIExpression()), !dbg !3472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3472, !alias.scope !3460, !DIAssignID !3473
  call void @llvm.dbg.assign(metadata i8 0, metadata !3456, metadata !DIExpression(), metadata !3473, metadata ptr %4, metadata !DIExpression()), !dbg !3458
  %5 = icmp eq i32 %1, 10, !dbg !3474
  br i1 %5, label %6, label %7, !dbg !3476

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3477, !noalias !3460
  unreachable, !dbg !3477

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3478, !tbaa !2544, !alias.scope !3460, !DIAssignID !3479
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3456, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3479, metadata ptr %4, metadata !DIExpression()), !dbg !3458
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3480
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3481
  ret ptr %8, !dbg !3482
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3483 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3492
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3491, metadata !DIExpression(), metadata !3492, metadata ptr %5, metadata !DIExpression()), !dbg !3493
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3487, metadata !DIExpression()), !dbg !3493
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3488, metadata !DIExpression()), !dbg !3493
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3489, metadata !DIExpression()), !dbg !3493
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3490, metadata !DIExpression()), !dbg !3493
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3494
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3495), !dbg !3498
  call void @llvm.dbg.value(metadata i32 %1, metadata !3464, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3469, metadata !DIExpression()), !dbg !3501
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3501, !alias.scope !3495, !DIAssignID !3502
  call void @llvm.dbg.assign(metadata i8 0, metadata !3491, metadata !DIExpression(), metadata !3502, metadata ptr %5, metadata !DIExpression()), !dbg !3493
  %6 = icmp eq i32 %1, 10, !dbg !3503
  br i1 %6, label %7, label %8, !dbg !3504

7:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3505, !noalias !3495
  unreachable, !dbg !3505

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3506, !tbaa !2544, !alias.scope !3495, !DIAssignID !3507
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3491, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3507, metadata ptr %5, metadata !DIExpression()), !dbg !3493
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3508
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3509
  ret ptr %9, !dbg !3510
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3511 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3517
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3515, metadata !DIExpression()), !dbg !3518
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3516, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3456, metadata !DIExpression(), metadata !3517, metadata ptr %3, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i32 0, metadata !3453, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i32 %0, metadata !3454, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata ptr %1, metadata !3455, metadata !DIExpression()), !dbg !3519
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3521
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3522), !dbg !3525
  call void @llvm.dbg.value(metadata i32 %0, metadata !3464, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3469, metadata !DIExpression()), !dbg !3528
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3528, !alias.scope !3522, !DIAssignID !3529
  call void @llvm.dbg.assign(metadata i8 0, metadata !3456, metadata !DIExpression(), metadata !3529, metadata ptr %3, metadata !DIExpression()), !dbg !3519
  %4 = icmp eq i32 %0, 10, !dbg !3530
  br i1 %4, label %5, label %6, !dbg !3531

5:                                                ; preds = %2
  tail call void @abort() #43, !dbg !3532, !noalias !3522
  unreachable, !dbg !3532

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3533, !tbaa !2544, !alias.scope !3522, !DIAssignID !3534
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3456, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3534, metadata ptr %3, metadata !DIExpression()), !dbg !3519
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3535
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3536
  ret ptr %7, !dbg !3537
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3538 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3545
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3542, metadata !DIExpression()), !dbg !3546
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3543, metadata !DIExpression()), !dbg !3546
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3544, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3491, metadata !DIExpression(), metadata !3545, metadata ptr %4, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i32 0, metadata !3487, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i32 %0, metadata !3488, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata ptr %1, metadata !3489, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i64 %2, metadata !3490, metadata !DIExpression()), !dbg !3547
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3549
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3550), !dbg !3553
  call void @llvm.dbg.value(metadata i32 %0, metadata !3464, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3469, metadata !DIExpression()), !dbg !3556
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3556, !alias.scope !3550, !DIAssignID !3557
  call void @llvm.dbg.assign(metadata i8 0, metadata !3491, metadata !DIExpression(), metadata !3557, metadata ptr %4, metadata !DIExpression()), !dbg !3547
  %5 = icmp eq i32 %0, 10, !dbg !3558
  br i1 %5, label %6, label %7, !dbg !3559

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3560, !noalias !3550
  unreachable, !dbg !3560

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3561, !tbaa !2544, !alias.scope !3550, !DIAssignID !3562
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3491, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3562, metadata ptr %4, metadata !DIExpression()), !dbg !3547
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3563
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3564
  ret ptr %8, !dbg !3565
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3566 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3574
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3573, metadata !DIExpression(), metadata !3574, metadata ptr %4, metadata !DIExpression()), !dbg !3575
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3570, metadata !DIExpression()), !dbg !3575
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3571, metadata !DIExpression()), !dbg !3575
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3572, metadata !DIExpression()), !dbg !3575
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3577, !tbaa.struct !3578, !DIAssignID !3579
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3573, metadata !DIExpression(), metadata !3579, metadata ptr %4, metadata !DIExpression()), !dbg !3575
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2561, metadata !DIExpression()), !dbg !3580
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2562, metadata !DIExpression()), !dbg !3580
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2563, metadata !DIExpression()), !dbg !3580
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2564, metadata !DIExpression()), !dbg !3580
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3582
  %6 = lshr i8 %2, 5, !dbg !3583
  %7 = zext nneg i8 %6 to i64, !dbg !3583
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3584
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2565, metadata !DIExpression()), !dbg !3580
  %9 = and i8 %2, 31, !dbg !3585
  %10 = zext nneg i8 %9 to i32, !dbg !3585
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2567, metadata !DIExpression()), !dbg !3580
  %11 = load i32, ptr %8, align 4, !dbg !3586, !tbaa !1022
  %12 = lshr i32 %11, %10, !dbg !3587
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2568, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3580
  %13 = and i32 %12, 1, !dbg !3588
  %14 = xor i32 %13, 1, !dbg !3588
  %15 = shl nuw i32 %14, %10, !dbg !3589
  %16 = xor i32 %15, %11, !dbg !3590
  store i32 %16, ptr %8, align 4, !dbg !3590, !tbaa !1022
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3591
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3592
  ret ptr %17, !dbg !3593
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3594 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3600
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3598, metadata !DIExpression()), !dbg !3601
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3599, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3573, metadata !DIExpression(), metadata !3600, metadata ptr %3, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata ptr %0, metadata !3570, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i64 -1, metadata !3571, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i8 %1, metadata !3572, metadata !DIExpression()), !dbg !3602
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3605, !tbaa.struct !3578, !DIAssignID !3606
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3573, metadata !DIExpression(), metadata !3606, metadata ptr %3, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata ptr %3, metadata !2561, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i8 %1, metadata !2562, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i32 1, metadata !2563, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i8 %1, metadata !2564, metadata !DIExpression()), !dbg !3607
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3609
  %5 = lshr i8 %1, 5, !dbg !3610
  %6 = zext nneg i8 %5 to i64, !dbg !3610
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3611
  call void @llvm.dbg.value(metadata ptr %7, metadata !2565, metadata !DIExpression()), !dbg !3607
  %8 = and i8 %1, 31, !dbg !3612
  %9 = zext nneg i8 %8 to i32, !dbg !3612
  call void @llvm.dbg.value(metadata i32 %9, metadata !2567, metadata !DIExpression()), !dbg !3607
  %10 = load i32, ptr %7, align 4, !dbg !3613, !tbaa !1022
  %11 = lshr i32 %10, %9, !dbg !3614
  call void @llvm.dbg.value(metadata i32 %11, metadata !2568, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3607
  %12 = and i32 %11, 1, !dbg !3615
  %13 = xor i32 %12, 1, !dbg !3615
  %14 = shl nuw i32 %13, %9, !dbg !3616
  %15 = xor i32 %14, %10, !dbg !3617
  store i32 %15, ptr %7, align 4, !dbg !3617, !tbaa !1022
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3618
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3619
  ret ptr %16, !dbg !3620
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3621 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3624
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3623, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata ptr %0, metadata !3598, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i8 58, metadata !3599, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3573, metadata !DIExpression(), metadata !3624, metadata ptr %2, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata ptr %0, metadata !3570, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i64 -1, metadata !3571, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i8 58, metadata !3572, metadata !DIExpression()), !dbg !3628
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #41, !dbg !3630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3631, !tbaa.struct !3578, !DIAssignID !3632
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3573, metadata !DIExpression(), metadata !3632, metadata ptr %2, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata ptr %2, metadata !2561, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i8 58, metadata !2562, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i32 1, metadata !2563, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i8 58, metadata !2564, metadata !DIExpression()), !dbg !3633
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3635
  call void @llvm.dbg.value(metadata ptr %3, metadata !2565, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i32 26, metadata !2567, metadata !DIExpression()), !dbg !3633
  %4 = load i32, ptr %3, align 4, !dbg !3636, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %4, metadata !2568, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3633
  %5 = or i32 %4, 67108864, !dbg !3637
  store i32 %5, ptr %3, align 4, !dbg !3637, !tbaa !1022
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3638
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #41, !dbg !3639
  ret ptr %6, !dbg !3640
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3641 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3645
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3643, metadata !DIExpression()), !dbg !3646
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3644, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3573, metadata !DIExpression(), metadata !3645, metadata ptr %3, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata ptr %0, metadata !3570, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i64 %1, metadata !3571, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i8 58, metadata !3572, metadata !DIExpression()), !dbg !3647
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3650, !tbaa.struct !3578, !DIAssignID !3651
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3573, metadata !DIExpression(), metadata !3651, metadata ptr %3, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata ptr %3, metadata !2561, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i8 58, metadata !2562, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i32 1, metadata !2563, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i8 58, metadata !2564, metadata !DIExpression()), !dbg !3652
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3654
  call void @llvm.dbg.value(metadata ptr %4, metadata !2565, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i32 26, metadata !2567, metadata !DIExpression()), !dbg !3652
  %5 = load i32, ptr %4, align 4, !dbg !3655, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %5, metadata !2568, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3652
  %6 = or i32 %5, 67108864, !dbg !3656
  store i32 %6, ptr %4, align 4, !dbg !3656, !tbaa !1022
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3657
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3658
  ret ptr %7, !dbg !3659
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3660 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3666
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3665, metadata !DIExpression(), metadata !3666, metadata ptr %4, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3469, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3668
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3662, metadata !DIExpression()), !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3663, metadata !DIExpression()), !dbg !3667
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3664, metadata !DIExpression()), !dbg !3667
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3670
  call void @llvm.dbg.value(metadata i32 %1, metadata !3464, metadata !DIExpression()), !dbg !3671
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3469, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3671
  %5 = icmp eq i32 %1, 10, !dbg !3672
  br i1 %5, label %6, label %7, !dbg !3673

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3674, !noalias !3675
  unreachable, !dbg !3674

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3469, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3671
  store i32 %1, ptr %4, align 8, !dbg !3678, !tbaa.struct !3578, !DIAssignID !3679
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3678
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3678
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3665, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3679, metadata ptr %4, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3665, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3680, metadata ptr %8, metadata !DIExpression()), !dbg !3667
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2561, metadata !DIExpression()), !dbg !3681
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2562, metadata !DIExpression()), !dbg !3681
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2563, metadata !DIExpression()), !dbg !3681
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2564, metadata !DIExpression()), !dbg !3681
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3683
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2565, metadata !DIExpression()), !dbg !3681
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2567, metadata !DIExpression()), !dbg !3681
  %10 = load i32, ptr %9, align 4, !dbg !3684, !tbaa !1022
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2568, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3681
  %11 = or i32 %10, 67108864, !dbg !3685
  store i32 %11, ptr %9, align 4, !dbg !3685, !tbaa !1022, !DIAssignID !3686
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3665, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3686, metadata ptr %9, metadata !DIExpression()), !dbg !3667
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3687
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3688
  ret ptr %12, !dbg !3689
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3690 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3698
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3694, metadata !DIExpression()), !dbg !3699
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3695, metadata !DIExpression()), !dbg !3699
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3696, metadata !DIExpression()), !dbg !3699
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3697, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3700, metadata !DIExpression(), metadata !3698, metadata ptr %5, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i32 %0, metadata !3705, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata ptr %1, metadata !3706, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata ptr %2, metadata !3707, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata ptr %3, metadata !3708, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i64 -1, metadata !3709, metadata !DIExpression()), !dbg !3710
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3713, !tbaa.struct !3578, !DIAssignID !3714
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3700, metadata !DIExpression(), metadata !3714, metadata ptr %5, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3700, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3715, metadata ptr undef, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata ptr %5, metadata !2601, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata ptr %1, metadata !2602, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata ptr %2, metadata !2603, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata ptr %5, metadata !2601, metadata !DIExpression()), !dbg !3716
  store i32 10, ptr %5, align 8, !dbg !3718, !tbaa !2544, !DIAssignID !3719
  call void @llvm.dbg.assign(metadata i32 10, metadata !3700, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3719, metadata ptr %5, metadata !DIExpression()), !dbg !3710
  %6 = icmp ne ptr %1, null, !dbg !3720
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3721
  br i1 %8, label %10, label %9, !dbg !3721

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3722
  unreachable, !dbg !3722

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3723
  store ptr %1, ptr %11, align 8, !dbg !3724, !tbaa !2615, !DIAssignID !3725
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3700, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3725, metadata ptr %11, metadata !DIExpression()), !dbg !3710
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3726
  store ptr %2, ptr %12, align 8, !dbg !3727, !tbaa !2618, !DIAssignID !3728
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3700, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3728, metadata ptr %12, metadata !DIExpression()), !dbg !3710
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3729
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3730
  ret ptr %13, !dbg !3731
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3701 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3732
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3700, metadata !DIExpression(), metadata !3732, metadata ptr %6, metadata !DIExpression()), !dbg !3733
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3705, metadata !DIExpression()), !dbg !3733
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3706, metadata !DIExpression()), !dbg !3733
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3707, metadata !DIExpression()), !dbg !3733
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3708, metadata !DIExpression()), !dbg !3733
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3709, metadata !DIExpression()), !dbg !3733
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #41, !dbg !3734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3735, !tbaa.struct !3578, !DIAssignID !3736
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3700, metadata !DIExpression(), metadata !3736, metadata ptr %6, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3700, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3737, metadata ptr undef, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata ptr %6, metadata !2601, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata ptr %1, metadata !2602, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata ptr %2, metadata !2603, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata ptr %6, metadata !2601, metadata !DIExpression()), !dbg !3738
  store i32 10, ptr %6, align 8, !dbg !3740, !tbaa !2544, !DIAssignID !3741
  call void @llvm.dbg.assign(metadata i32 10, metadata !3700, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3741, metadata ptr %6, metadata !DIExpression()), !dbg !3733
  %7 = icmp ne ptr %1, null, !dbg !3742
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3743
  br i1 %9, label %11, label %10, !dbg !3743

10:                                               ; preds = %5
  tail call void @abort() #43, !dbg !3744
  unreachable, !dbg !3744

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3745
  store ptr %1, ptr %12, align 8, !dbg !3746, !tbaa !2615, !DIAssignID !3747
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3700, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3747, metadata ptr %12, metadata !DIExpression()), !dbg !3733
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3748
  store ptr %2, ptr %13, align 8, !dbg !3749, !tbaa !2618, !DIAssignID !3750
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3700, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3750, metadata ptr %13, metadata !DIExpression()), !dbg !3733
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3751
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #41, !dbg !3752
  ret ptr %14, !dbg !3753
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3754 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3761
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3758, metadata !DIExpression()), !dbg !3762
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3759, metadata !DIExpression()), !dbg !3762
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3760, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i32 0, metadata !3694, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata ptr %0, metadata !3695, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata ptr %1, metadata !3696, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata ptr %2, metadata !3697, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3700, metadata !DIExpression(), metadata !3761, metadata ptr %4, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i32 0, metadata !3705, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata ptr %0, metadata !3706, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata ptr %1, metadata !3707, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata ptr %2, metadata !3708, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i64 -1, metadata !3709, metadata !DIExpression()), !dbg !3765
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3767
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3768, !tbaa.struct !3578, !DIAssignID !3769
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3700, metadata !DIExpression(), metadata !3769, metadata ptr %4, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3700, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3770, metadata ptr undef, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata ptr %4, metadata !2601, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata ptr %0, metadata !2602, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata ptr %1, metadata !2603, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata ptr %4, metadata !2601, metadata !DIExpression()), !dbg !3771
  store i32 10, ptr %4, align 8, !dbg !3773, !tbaa !2544, !DIAssignID !3774
  call void @llvm.dbg.assign(metadata i32 10, metadata !3700, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3774, metadata ptr %4, metadata !DIExpression()), !dbg !3765
  %5 = icmp ne ptr %0, null, !dbg !3775
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3776
  br i1 %7, label %9, label %8, !dbg !3776

8:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3777
  unreachable, !dbg !3777

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3778
  store ptr %0, ptr %10, align 8, !dbg !3779, !tbaa !2615, !DIAssignID !3780
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3700, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3780, metadata ptr %10, metadata !DIExpression()), !dbg !3765
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3781
  store ptr %1, ptr %11, align 8, !dbg !3782, !tbaa !2618, !DIAssignID !3783
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3700, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3783, metadata ptr %11, metadata !DIExpression()), !dbg !3765
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3784
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3785
  ret ptr %12, !dbg !3786
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3787 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3795
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3791, metadata !DIExpression()), !dbg !3796
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3792, metadata !DIExpression()), !dbg !3796
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3793, metadata !DIExpression()), !dbg !3796
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3794, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3700, metadata !DIExpression(), metadata !3795, metadata ptr %5, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i32 0, metadata !3705, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata ptr %0, metadata !3706, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata ptr %1, metadata !3707, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata ptr %2, metadata !3708, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i64 %3, metadata !3709, metadata !DIExpression()), !dbg !3797
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3800, !tbaa.struct !3578, !DIAssignID !3801
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3700, metadata !DIExpression(), metadata !3801, metadata ptr %5, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3700, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3802, metadata ptr undef, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata ptr %5, metadata !2601, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata ptr %0, metadata !2602, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata ptr %1, metadata !2603, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata ptr %5, metadata !2601, metadata !DIExpression()), !dbg !3803
  store i32 10, ptr %5, align 8, !dbg !3805, !tbaa !2544, !DIAssignID !3806
  call void @llvm.dbg.assign(metadata i32 10, metadata !3700, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3806, metadata ptr %5, metadata !DIExpression()), !dbg !3797
  %6 = icmp ne ptr %0, null, !dbg !3807
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3808
  br i1 %8, label %10, label %9, !dbg !3808

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3809
  unreachable, !dbg !3809

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3810
  store ptr %0, ptr %11, align 8, !dbg !3811, !tbaa !2615, !DIAssignID !3812
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3700, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3812, metadata ptr %11, metadata !DIExpression()), !dbg !3797
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3813
  store ptr %1, ptr %12, align 8, !dbg !3814, !tbaa !2618, !DIAssignID !3815
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3700, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3815, metadata ptr %12, metadata !DIExpression()), !dbg !3797
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3816
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3817
  ret ptr %13, !dbg !3818
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3819 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3823, metadata !DIExpression()), !dbg !3826
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3824, metadata !DIExpression()), !dbg !3826
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3825, metadata !DIExpression()), !dbg !3826
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3827
  ret ptr %4, !dbg !3828
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3829 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3833, metadata !DIExpression()), !dbg !3835
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3834, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i32 0, metadata !3823, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata ptr %0, metadata !3824, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i64 %1, metadata !3825, metadata !DIExpression()), !dbg !3836
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3838
  ret ptr %3, !dbg !3839
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3840 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3844, metadata !DIExpression()), !dbg !3846
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3845, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata i32 %0, metadata !3823, metadata !DIExpression()), !dbg !3847
  call void @llvm.dbg.value(metadata ptr %1, metadata !3824, metadata !DIExpression()), !dbg !3847
  call void @llvm.dbg.value(metadata i64 -1, metadata !3825, metadata !DIExpression()), !dbg !3847
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3849
  ret ptr %3, !dbg !3850
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3851 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3855, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i32 0, metadata !3844, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata ptr %0, metadata !3845, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i32 0, metadata !3823, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata ptr %0, metadata !3824, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i64 -1, metadata !3825, metadata !DIExpression()), !dbg !3859
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3861
  ret ptr %2, !dbg !3862
}

; Function Attrs: nounwind uwtable
define dso_local i32 @str2sig(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 !dbg !3863 {
  %3 = alloca ptr, align 8, !DIAssignID !3869
  %4 = alloca ptr, align 8, !DIAssignID !3870
  %5 = alloca ptr, align 8, !DIAssignID !3871
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3867, metadata !DIExpression()), !dbg !3872
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3868, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3873, metadata !DIExpression(), metadata !3869, metadata ptr %3, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3886, metadata !DIExpression(), metadata !3870, metadata ptr %4, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3890, metadata !DIExpression(), metadata !3871, metadata ptr %5, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata ptr %0, metadata !3878, metadata !DIExpression()), !dbg !3898
  %6 = load i8, ptr %0, align 1, !dbg !3899, !tbaa !1031
  %7 = sext i8 %6 to i32, !dbg !3899
  %8 = add nsw i32 %7, -48, !dbg !3899
  %9 = icmp ult i32 %8, 10, !dbg !3899
  br i1 %9, label %10, label %21, !dbg !3900

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #41, !dbg !3901
  %11 = call i64 @strtol(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 10) #41, !dbg !3902
  call void @llvm.dbg.value(metadata i64 %11, metadata !3879, metadata !DIExpression()), !dbg !3894
  %12 = load ptr, ptr %3, align 8, !dbg !3903, !tbaa !950
  %13 = load i8, ptr %12, align 1, !dbg !3905, !tbaa !1031
  %14 = icmp ne i8 %13, 0, !dbg !3905
  %15 = icmp sgt i64 %11, 64
  %16 = select i1 %14, i1 true, i1 %15, !dbg !3906
  %17 = trunc i64 %11 to i32, !dbg !3906
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41, !dbg !3907
  br i1 %16, label %73, label %74

18:                                               ; preds = %21
  %19 = add nuw nsw i64 %22, 1, !dbg !3908
  call void @llvm.dbg.value(metadata i64 %19, metadata !3880, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i64 %19, metadata !3880, metadata !DIExpression()), !dbg !3910
  %20 = icmp eq i64 %19, 35, !dbg !3911
  br i1 %20, label %29, label %21, !dbg !3912, !llvm.loop !3913

21:                                               ; preds = %2, %18
  %22 = phi i64 [ %19, %18 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !3880, metadata !DIExpression()), !dbg !3910
  %23 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %22, i32 1, !dbg !3915
  call void @llvm.dbg.value(metadata ptr %23, metadata !3917, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.value(metadata ptr %0, metadata !3920, metadata !DIExpression()), !dbg !3921
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %0) #42, !dbg !3923
  %25 = icmp eq i32 %24, 0, !dbg !3924
  call void @llvm.dbg.value(metadata i64 %22, metadata !3880, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3910
  br i1 %25, label %26, label %18, !dbg !3925

26:                                               ; preds = %21
  %27 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %22, !dbg !3926
  %28 = load i32, ptr %27, align 4, !dbg !3927, !tbaa !3928
  br label %74

29:                                               ; preds = %18
  %30 = tail call i32 @__libc_current_sigrtmin() #41, !dbg !3930
  call void @llvm.dbg.value(metadata i32 %30, metadata !3883, metadata !DIExpression()), !dbg !3931
  %31 = tail call i32 @__libc_current_sigrtmax() #41, !dbg !3932
  call void @llvm.dbg.value(metadata i32 %31, metadata !3885, metadata !DIExpression()), !dbg !3931
  %32 = icmp sgt i32 %30, 0, !dbg !3933
  br i1 %32, label %33, label %52, !dbg !3934

33:                                               ; preds = %29
  %34 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.101, i64 noundef 5) #42, !dbg !3935
  %35 = icmp eq i32 %34, 0, !dbg !3936
  br i1 %35, label %36, label %52, !dbg !3937

36:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #41, !dbg !3938
  %37 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !3939
  %38 = call i64 @strtol(ptr noundef nonnull %37, ptr noundef nonnull %4, i32 noundef 10) #41, !dbg !3940
  call void @llvm.dbg.value(metadata i64 %38, metadata !3889, metadata !DIExpression()), !dbg !3896
  %39 = load ptr, ptr %4, align 8, !dbg !3941, !tbaa !950
  %40 = load i8, ptr %39, align 1, !dbg !3943, !tbaa !1031
  %41 = icmp eq i8 %40, 0, !dbg !3943
  %42 = icmp sgt i64 %38, -1
  %43 = select i1 %41, i1 %42, i1 false, !dbg !3944
  br i1 %43, label %44, label %48, !dbg !3944

44:                                               ; preds = %36
  %45 = sub nsw i32 %31, %30, !dbg !3945
  %46 = sext i32 %45 to i64, !dbg !3946
  %47 = icmp sgt i64 %38, %46, !dbg !3947
  br i1 %47, label %48, label %49, !dbg !3948

48:                                               ; preds = %44, %36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !3949
  br label %73

49:                                               ; preds = %44
  %50 = trunc i64 %38 to i32, !dbg !3950
  %51 = add nuw i32 %30, %50, !dbg !3950
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !3949
  br label %74

52:                                               ; preds = %33, %29
  %53 = icmp sgt i32 %31, 0, !dbg !3951
  br i1 %53, label %54, label %73, !dbg !3952

54:                                               ; preds = %52
  %55 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.1.102, i64 noundef 5) #42, !dbg !3953
  %56 = icmp eq i32 %55, 0, !dbg !3954
  br i1 %56, label %57, label %73, !dbg !3955

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #41, !dbg !3956
  %58 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !3957
  %59 = call i64 @strtol(ptr noundef nonnull %58, ptr noundef nonnull %5, i32 noundef 10) #41, !dbg !3958
  call void @llvm.dbg.value(metadata i64 %59, metadata !3893, metadata !DIExpression()), !dbg !3897
  %60 = load ptr, ptr %5, align 8, !dbg !3959, !tbaa !950
  %61 = load i8, ptr %60, align 1, !dbg !3961, !tbaa !1031
  %62 = icmp eq i8 %61, 0, !dbg !3961
  br i1 %62, label %63, label %69, !dbg !3962

63:                                               ; preds = %57
  %64 = sub nsw i32 %30, %31, !dbg !3963
  %65 = sext i32 %64 to i64, !dbg !3964
  %66 = icmp sge i64 %59, %65, !dbg !3965
  %67 = icmp slt i64 %59, 1
  %68 = and i1 %66, %67, !dbg !3966
  br i1 %68, label %70, label %69, !dbg !3966

69:                                               ; preds = %63, %57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #41, !dbg !3967
  br label %73

70:                                               ; preds = %63
  %71 = trunc i64 %59 to i32, !dbg !3968
  %72 = add nsw i32 %31, %71, !dbg !3968
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #41, !dbg !3967
  br label %74

73:                                               ; preds = %69, %54, %52, %48, %10
  br label %74, !dbg !3969

74:                                               ; preds = %10, %26, %49, %70, %73
  %75 = phi i32 [ %17, %10 ], [ -1, %73 ], [ %28, %26 ], [ %51, %49 ], [ %72, %70 ], !dbg !3898
  store i32 %75, ptr %1, align 4, !dbg !3970, !tbaa !1022
  %76 = ashr i32 %75, 31, !dbg !3971
  ret i32 %76, !dbg !3972
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @sig2str(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3973 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3977, metadata !DIExpression()), !dbg !3986
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3978, metadata !DIExpression()), !dbg !3986
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3979, metadata !DIExpression()), !dbg !3987
  br label %26, !dbg !3988

3:                                                ; preds = %26
  %4 = add nuw nsw i64 %27, 1, !dbg !3989
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3979, metadata !DIExpression()), !dbg !3987
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3979, metadata !DIExpression()), !dbg !3987
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3979, metadata !DIExpression()), !dbg !3987
  %5 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %4, !dbg !3991
  %6 = load i32, ptr %5, align 4, !dbg !3993, !tbaa !3928
  %7 = icmp eq i32 %6, %0, !dbg !3994
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3979, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3987
  br i1 %7, label %31, label %8, !dbg !3995

8:                                                ; preds = %3
  %9 = add nuw nsw i64 %27, 2, !dbg !3989
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3979, metadata !DIExpression()), !dbg !3987
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3979, metadata !DIExpression()), !dbg !3987
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3979, metadata !DIExpression()), !dbg !3987
  %10 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %9, !dbg !3991
  %11 = load i32, ptr %10, align 4, !dbg !3993, !tbaa !3928
  %12 = icmp eq i32 %11, %0, !dbg !3994
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3979, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3987
  br i1 %12, label %31, label %13, !dbg !3995

13:                                               ; preds = %8
  %14 = add nuw nsw i64 %27, 3, !dbg !3989
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3979, metadata !DIExpression()), !dbg !3987
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3979, metadata !DIExpression()), !dbg !3987
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3979, metadata !DIExpression()), !dbg !3987
  %15 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %14, !dbg !3991
  %16 = load i32, ptr %15, align 4, !dbg !3993, !tbaa !3928
  %17 = icmp eq i32 %16, %0, !dbg !3994
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3979, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3987
  br i1 %17, label %31, label %18, !dbg !3995

18:                                               ; preds = %13
  %19 = add nuw nsw i64 %27, 4, !dbg !3989
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !3979, metadata !DIExpression()), !dbg !3987
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !3979, metadata !DIExpression()), !dbg !3987
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !3979, metadata !DIExpression()), !dbg !3987
  %20 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %19, !dbg !3991
  %21 = load i32, ptr %20, align 4, !dbg !3993, !tbaa !3928
  %22 = icmp eq i32 %21, %0, !dbg !3994
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !3979, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3987
  br i1 %22, label %31, label %23, !dbg !3995

23:                                               ; preds = %18
  %24 = add nuw nsw i64 %27, 5, !dbg !3989
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !3979, metadata !DIExpression()), !dbg !3987
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !3979, metadata !DIExpression()), !dbg !3987
  %25 = icmp eq i64 %24, 35, !dbg !3996
  br i1 %25, label %35, label %26, !dbg !3988, !llvm.loop !3997

26:                                               ; preds = %23, %2
  %27 = phi i64 [ 0, %2 ], [ %24, %23 ]
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !3979, metadata !DIExpression()), !dbg !3987
  %28 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %27, !dbg !3991
  %29 = load i32, ptr %28, align 4, !dbg !3993, !tbaa !3928
  %30 = icmp eq i32 %29, %0, !dbg !3994
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !3979, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3987
  br i1 %30, label %31, label %3, !dbg !3995

31:                                               ; preds = %18, %13, %8, %3, %26
  %32 = phi i64 [ %27, %26 ], [ %4, %3 ], [ %9, %8 ], [ %14, %13 ], [ %19, %18 ]
  %33 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %32, i32 1, !dbg !3999
  call void @llvm.dbg.value(metadata ptr %1, metadata !4001, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata ptr %33, metadata !4006, metadata !DIExpression()), !dbg !4007
  %34 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %33), !dbg !4009
  br label %53

35:                                               ; preds = %23
  %36 = tail call i32 @__libc_current_sigrtmin() #41, !dbg !4010
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !3981, metadata !DIExpression()), !dbg !4011
  %37 = tail call i32 @__libc_current_sigrtmax() #41, !dbg !4012
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !3983, metadata !DIExpression()), !dbg !4011
  %38 = icmp sgt i32 %36, %0, !dbg !4013
  %39 = icmp slt i32 %37, %0
  %40 = select i1 %38, i1 true, i1 %39, !dbg !4015
  br i1 %40, label %53, label %41, !dbg !4015

41:                                               ; preds = %35
  %42 = sub nsw i32 %37, %36, !dbg !4016
  %43 = sdiv i32 %42, 2, !dbg !4018
  %44 = add nsw i32 %43, %36, !dbg !4019
  %45 = icmp slt i32 %44, %0, !dbg !4020
  call void @llvm.dbg.value(metadata ptr %1, metadata !4001, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata ptr %1, metadata !4001, metadata !DIExpression()), !dbg !4024
  %46 = select i1 %45, ptr @.str.1.102, ptr @.str.101
  %47 = select i1 %45, i32 %37, i32 %36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) %46, i64 6, i1 false), !dbg !4027
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !3984, metadata !DIExpression()), !dbg !4011
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %0, i32 %47), metadata !3985, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4011
  %48 = icmp eq i32 %47, %0, !dbg !4029
  br i1 %48, label %53, label %49, !dbg !4031

49:                                               ; preds = %41
  %50 = sub nsw i32 %0, %47, !dbg !4032
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !3985, metadata !DIExpression()), !dbg !4011
  %51 = getelementptr inbounds i8, ptr %1, i64 5, !dbg !4033
  %52 = tail call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %51, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.2.105, i32 noundef %50) #41, !dbg !4033
  br label %53, !dbg !4033

53:                                               ; preds = %31, %35, %49, %41
  %54 = phi i32 [ 0, %31 ], [ -1, %35 ], [ 0, %49 ], [ 0, %41 ], !dbg !3986
  ret i32 %54, !dbg !4034
}

; Function Attrs: nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias nocapture readonly) #29

; Function Attrs: nofree
declare !dbg !4035 i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4038 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4077, metadata !DIExpression()), !dbg !4083
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4078, metadata !DIExpression()), !dbg !4083
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4079, metadata !DIExpression()), !dbg !4083
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4080, metadata !DIExpression()), !dbg !4083
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4081, metadata !DIExpression()), !dbg !4083
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4082, metadata !DIExpression()), !dbg !4083
  %7 = icmp eq ptr %1, null, !dbg !4084
  br i1 %7, label %10, label %8, !dbg !4086

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.106, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #41, !dbg !4087
  br label %12, !dbg !4087

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.107, ptr noundef %2, ptr noundef %3) #41, !dbg !4088
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.3.109, i32 noundef 5) #41, !dbg !4089
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #41, !dbg !4089
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.110, ptr noundef %0), !dbg !4090
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.5.111, i32 noundef 5) #41, !dbg !4091
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.112) #41, !dbg !4091
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.110, ptr noundef %0), !dbg !4092
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
  ], !dbg !4093

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.7.113, i32 noundef 5) #41, !dbg !4094
  %21 = load ptr, ptr %4, align 8, !dbg !4094, !tbaa !950
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #41, !dbg !4094
  br label %147, !dbg !4096

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.8.114, i32 noundef 5) #41, !dbg !4097
  %25 = load ptr, ptr %4, align 8, !dbg !4097, !tbaa !950
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4097
  %27 = load ptr, ptr %26, align 8, !dbg !4097, !tbaa !950
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #41, !dbg !4097
  br label %147, !dbg !4098

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.9.115, i32 noundef 5) #41, !dbg !4099
  %31 = load ptr, ptr %4, align 8, !dbg !4099, !tbaa !950
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4099
  %33 = load ptr, ptr %32, align 8, !dbg !4099, !tbaa !950
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4099
  %35 = load ptr, ptr %34, align 8, !dbg !4099, !tbaa !950
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #41, !dbg !4099
  br label %147, !dbg !4100

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.10.116, i32 noundef 5) #41, !dbg !4101
  %39 = load ptr, ptr %4, align 8, !dbg !4101, !tbaa !950
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4101
  %41 = load ptr, ptr %40, align 8, !dbg !4101, !tbaa !950
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4101
  %43 = load ptr, ptr %42, align 8, !dbg !4101, !tbaa !950
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4101
  %45 = load ptr, ptr %44, align 8, !dbg !4101, !tbaa !950
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #41, !dbg !4101
  br label %147, !dbg !4102

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.11.117, i32 noundef 5) #41, !dbg !4103
  %49 = load ptr, ptr %4, align 8, !dbg !4103, !tbaa !950
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4103
  %51 = load ptr, ptr %50, align 8, !dbg !4103, !tbaa !950
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4103
  %53 = load ptr, ptr %52, align 8, !dbg !4103, !tbaa !950
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4103
  %55 = load ptr, ptr %54, align 8, !dbg !4103, !tbaa !950
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4103
  %57 = load ptr, ptr %56, align 8, !dbg !4103, !tbaa !950
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #41, !dbg !4103
  br label %147, !dbg !4104

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.12.118, i32 noundef 5) #41, !dbg !4105
  %61 = load ptr, ptr %4, align 8, !dbg !4105, !tbaa !950
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4105
  %63 = load ptr, ptr %62, align 8, !dbg !4105, !tbaa !950
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4105
  %65 = load ptr, ptr %64, align 8, !dbg !4105, !tbaa !950
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4105
  %67 = load ptr, ptr %66, align 8, !dbg !4105, !tbaa !950
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4105
  %69 = load ptr, ptr %68, align 8, !dbg !4105, !tbaa !950
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4105
  %71 = load ptr, ptr %70, align 8, !dbg !4105, !tbaa !950
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #41, !dbg !4105
  br label %147, !dbg !4106

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.13.119, i32 noundef 5) #41, !dbg !4107
  %75 = load ptr, ptr %4, align 8, !dbg !4107, !tbaa !950
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4107
  %77 = load ptr, ptr %76, align 8, !dbg !4107, !tbaa !950
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4107
  %79 = load ptr, ptr %78, align 8, !dbg !4107, !tbaa !950
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4107
  %81 = load ptr, ptr %80, align 8, !dbg !4107, !tbaa !950
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4107
  %83 = load ptr, ptr %82, align 8, !dbg !4107, !tbaa !950
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4107
  %85 = load ptr, ptr %84, align 8, !dbg !4107, !tbaa !950
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4107
  %87 = load ptr, ptr %86, align 8, !dbg !4107, !tbaa !950
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #41, !dbg !4107
  br label %147, !dbg !4108

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.14.120, i32 noundef 5) #41, !dbg !4109
  %91 = load ptr, ptr %4, align 8, !dbg !4109, !tbaa !950
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4109
  %93 = load ptr, ptr %92, align 8, !dbg !4109, !tbaa !950
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4109
  %95 = load ptr, ptr %94, align 8, !dbg !4109, !tbaa !950
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4109
  %97 = load ptr, ptr %96, align 8, !dbg !4109, !tbaa !950
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4109
  %99 = load ptr, ptr %98, align 8, !dbg !4109, !tbaa !950
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4109
  %101 = load ptr, ptr %100, align 8, !dbg !4109, !tbaa !950
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4109
  %103 = load ptr, ptr %102, align 8, !dbg !4109, !tbaa !950
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4109
  %105 = load ptr, ptr %104, align 8, !dbg !4109, !tbaa !950
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #41, !dbg !4109
  br label %147, !dbg !4110

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.15.121, i32 noundef 5) #41, !dbg !4111
  %109 = load ptr, ptr %4, align 8, !dbg !4111, !tbaa !950
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4111
  %111 = load ptr, ptr %110, align 8, !dbg !4111, !tbaa !950
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4111
  %113 = load ptr, ptr %112, align 8, !dbg !4111, !tbaa !950
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4111
  %115 = load ptr, ptr %114, align 8, !dbg !4111, !tbaa !950
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4111
  %117 = load ptr, ptr %116, align 8, !dbg !4111, !tbaa !950
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4111
  %119 = load ptr, ptr %118, align 8, !dbg !4111, !tbaa !950
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4111
  %121 = load ptr, ptr %120, align 8, !dbg !4111, !tbaa !950
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4111
  %123 = load ptr, ptr %122, align 8, !dbg !4111, !tbaa !950
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4111
  %125 = load ptr, ptr %124, align 8, !dbg !4111, !tbaa !950
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #41, !dbg !4111
  br label %147, !dbg !4112

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.16.122, i32 noundef 5) #41, !dbg !4113
  %129 = load ptr, ptr %4, align 8, !dbg !4113, !tbaa !950
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4113
  %131 = load ptr, ptr %130, align 8, !dbg !4113, !tbaa !950
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4113
  %133 = load ptr, ptr %132, align 8, !dbg !4113, !tbaa !950
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4113
  %135 = load ptr, ptr %134, align 8, !dbg !4113, !tbaa !950
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4113
  %137 = load ptr, ptr %136, align 8, !dbg !4113, !tbaa !950
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4113
  %139 = load ptr, ptr %138, align 8, !dbg !4113, !tbaa !950
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4113
  %141 = load ptr, ptr %140, align 8, !dbg !4113, !tbaa !950
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4113
  %143 = load ptr, ptr %142, align 8, !dbg !4113, !tbaa !950
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4113
  %145 = load ptr, ptr %144, align 8, !dbg !4113, !tbaa !950
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #41, !dbg !4113
  br label %147, !dbg !4114

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4115
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4116 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4120, metadata !DIExpression()), !dbg !4126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4121, metadata !DIExpression()), !dbg !4126
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4122, metadata !DIExpression()), !dbg !4126
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4123, metadata !DIExpression()), !dbg !4126
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4124, metadata !DIExpression()), !dbg !4126
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4125, metadata !DIExpression()), !dbg !4126
  br label %6, !dbg !4127

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4129
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4125, metadata !DIExpression()), !dbg !4126
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4130
  %9 = load ptr, ptr %8, align 8, !dbg !4130, !tbaa !950
  %10 = icmp eq ptr %9, null, !dbg !4132
  %11 = add i64 %7, 1, !dbg !4133
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4125, metadata !DIExpression()), !dbg !4126
  br i1 %10, label %12, label %6, !dbg !4132, !llvm.loop !4134

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4136
  ret void, !dbg !4137
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4138 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !4157
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4155, metadata !DIExpression(), metadata !4157, metadata ptr %6, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4149, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4150, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4151, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4152, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4153, metadata !DIExpression()), !dbg !4158
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #41, !dbg !4159
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4154, metadata !DIExpression()), !dbg !4158
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4154, metadata !DIExpression()), !dbg !4158
  %10 = icmp ult i32 %9, 41, !dbg !4160
  br i1 %10, label %11, label %16, !dbg !4160

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4160
  %13 = zext nneg i32 %9 to i64, !dbg !4160
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4160
  %15 = add nuw nsw i32 %9, 8, !dbg !4160
  store i32 %15, ptr %4, align 8, !dbg !4160
  br label %19, !dbg !4160

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4160
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4160
  store ptr %18, ptr %7, align 8, !dbg !4160
  br label %19, !dbg !4160

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4160
  %22 = load ptr, ptr %21, align 8, !dbg !4160
  store ptr %22, ptr %6, align 16, !dbg !4163, !tbaa !950
  %23 = icmp eq ptr %22, null, !dbg !4164
  br i1 %23, label %128, label %24, !dbg !4165

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4154, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4154, metadata !DIExpression()), !dbg !4158
  %25 = icmp ult i32 %20, 41, !dbg !4160
  br i1 %25, label %29, label %26, !dbg !4160

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4160
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4160
  store ptr %28, ptr %7, align 8, !dbg !4160
  br label %34, !dbg !4160

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4160
  %31 = zext nneg i32 %20 to i64, !dbg !4160
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4160
  %33 = add nuw nsw i32 %20, 8, !dbg !4160
  store i32 %33, ptr %4, align 8, !dbg !4160
  br label %34, !dbg !4160

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4160
  %37 = load ptr, ptr %36, align 8, !dbg !4160
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4166
  store ptr %37, ptr %38, align 8, !dbg !4163, !tbaa !950
  %39 = icmp eq ptr %37, null, !dbg !4164
  br i1 %39, label %128, label %40, !dbg !4165

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4154, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4154, metadata !DIExpression()), !dbg !4158
  %41 = icmp ult i32 %35, 41, !dbg !4160
  br i1 %41, label %45, label %42, !dbg !4160

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4160
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4160
  store ptr %44, ptr %7, align 8, !dbg !4160
  br label %50, !dbg !4160

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4160
  %47 = zext nneg i32 %35 to i64, !dbg !4160
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4160
  %49 = add nuw nsw i32 %35, 8, !dbg !4160
  store i32 %49, ptr %4, align 8, !dbg !4160
  br label %50, !dbg !4160

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4160
  %53 = load ptr, ptr %52, align 8, !dbg !4160
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4166
  store ptr %53, ptr %54, align 16, !dbg !4163, !tbaa !950
  %55 = icmp eq ptr %53, null, !dbg !4164
  br i1 %55, label %128, label %56, !dbg !4165

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4154, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4154, metadata !DIExpression()), !dbg !4158
  %57 = icmp ult i32 %51, 41, !dbg !4160
  br i1 %57, label %61, label %58, !dbg !4160

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4160
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4160
  store ptr %60, ptr %7, align 8, !dbg !4160
  br label %66, !dbg !4160

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4160
  %63 = zext nneg i32 %51 to i64, !dbg !4160
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4160
  %65 = add nuw nsw i32 %51, 8, !dbg !4160
  store i32 %65, ptr %4, align 8, !dbg !4160
  br label %66, !dbg !4160

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4160
  %69 = load ptr, ptr %68, align 8, !dbg !4160
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4166
  store ptr %69, ptr %70, align 8, !dbg !4163, !tbaa !950
  %71 = icmp eq ptr %69, null, !dbg !4164
  br i1 %71, label %128, label %72, !dbg !4165

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4154, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4154, metadata !DIExpression()), !dbg !4158
  %73 = icmp ult i32 %67, 41, !dbg !4160
  br i1 %73, label %77, label %74, !dbg !4160

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4160
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4160
  store ptr %76, ptr %7, align 8, !dbg !4160
  br label %82, !dbg !4160

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4160
  %79 = zext nneg i32 %67 to i64, !dbg !4160
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4160
  %81 = add nuw nsw i32 %67, 8, !dbg !4160
  store i32 %81, ptr %4, align 8, !dbg !4160
  br label %82, !dbg !4160

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4160
  %85 = load ptr, ptr %84, align 8, !dbg !4160
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4166
  store ptr %85, ptr %86, align 16, !dbg !4163, !tbaa !950
  %87 = icmp eq ptr %85, null, !dbg !4164
  br i1 %87, label %128, label %88, !dbg !4165

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4154, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4154, metadata !DIExpression()), !dbg !4158
  %89 = icmp ult i32 %83, 41, !dbg !4160
  br i1 %89, label %93, label %90, !dbg !4160

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4160
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4160
  store ptr %92, ptr %7, align 8, !dbg !4160
  br label %98, !dbg !4160

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4160
  %95 = zext nneg i32 %83 to i64, !dbg !4160
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4160
  %97 = add nuw nsw i32 %83, 8, !dbg !4160
  store i32 %97, ptr %4, align 8, !dbg !4160
  br label %98, !dbg !4160

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4160
  %100 = load ptr, ptr %99, align 8, !dbg !4160
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4166
  store ptr %100, ptr %101, align 8, !dbg !4163, !tbaa !950
  %102 = icmp eq ptr %100, null, !dbg !4164
  br i1 %102, label %128, label %103, !dbg !4165

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4154, metadata !DIExpression()), !dbg !4158
  %104 = load ptr, ptr %7, align 8, !dbg !4160
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4160
  store ptr %105, ptr %7, align 8, !dbg !4160
  %106 = load ptr, ptr %104, align 8, !dbg !4160
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4166
  store ptr %106, ptr %107, align 16, !dbg !4163, !tbaa !950
  %108 = icmp eq ptr %106, null, !dbg !4164
  br i1 %108, label %128, label %109, !dbg !4165

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4154, metadata !DIExpression()), !dbg !4158
  %110 = load ptr, ptr %7, align 8, !dbg !4160
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4160
  store ptr %111, ptr %7, align 8, !dbg !4160
  %112 = load ptr, ptr %110, align 8, !dbg !4160
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4166
  store ptr %112, ptr %113, align 8, !dbg !4163, !tbaa !950
  %114 = icmp eq ptr %112, null, !dbg !4164
  br i1 %114, label %128, label %115, !dbg !4165

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4154, metadata !DIExpression()), !dbg !4158
  %116 = load ptr, ptr %7, align 8, !dbg !4160
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4160
  store ptr %117, ptr %7, align 8, !dbg !4160
  %118 = load ptr, ptr %116, align 8, !dbg !4160
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4166
  store ptr %118, ptr %119, align 16, !dbg !4163, !tbaa !950
  %120 = icmp eq ptr %118, null, !dbg !4164
  br i1 %120, label %128, label %121, !dbg !4165

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4154, metadata !DIExpression()), !dbg !4158
  %122 = load ptr, ptr %7, align 8, !dbg !4160
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4160
  store ptr %123, ptr %7, align 8, !dbg !4160
  %124 = load ptr, ptr %122, align 8, !dbg !4160
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4166
  store ptr %124, ptr %125, align 8, !dbg !4163, !tbaa !950
  %126 = icmp eq ptr %124, null, !dbg !4164
  %127 = select i1 %126, i64 9, i64 10, !dbg !4165
  br label %128, !dbg !4165

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4167
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4168
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #41, !dbg !4169
  ret void, !dbg !4169
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4170 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !4183
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4178, metadata !DIExpression(), metadata !4183, metadata ptr %5, metadata !DIExpression()), !dbg !4184
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4174, metadata !DIExpression()), !dbg !4184
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4175, metadata !DIExpression()), !dbg !4184
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4176, metadata !DIExpression()), !dbg !4184
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4177, metadata !DIExpression()), !dbg !4184
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #41, !dbg !4185
  call void @llvm.va_start(ptr nonnull %5), !dbg !4186
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4187
  call void @llvm.va_end(ptr nonnull %5), !dbg !4188
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #41, !dbg !4189
  ret void, !dbg !4189
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4190 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4191, !tbaa !950
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.110, ptr noundef %1), !dbg !4191
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.17.127, i32 noundef 5) #41, !dbg !4192
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.128) #41, !dbg !4192
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.19.129, i32 noundef 5) #41, !dbg !4193
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.130, ptr noundef nonnull @.str.21.131) #41, !dbg !4193
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.22.132, i32 noundef 5) #41, !dbg !4194
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.133) #41, !dbg !4194
  ret void, !dbg !4195
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4196 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4201, metadata !DIExpression()), !dbg !4204
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4202, metadata !DIExpression()), !dbg !4204
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4203, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata ptr %0, metadata !4205, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i64 %1, metadata !4208, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i64 %2, metadata !4209, metadata !DIExpression()), !dbg !4210
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4212
  call void @llvm.dbg.value(metadata ptr %4, metadata !4213, metadata !DIExpression()), !dbg !4218
  %5 = icmp eq ptr %4, null, !dbg !4220
  br i1 %5, label %6, label %7, !dbg !4222

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4223
  unreachable, !dbg !4223

7:                                                ; preds = %3
  ret ptr %4, !dbg !4224
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4206 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4205, metadata !DIExpression()), !dbg !4225
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4208, metadata !DIExpression()), !dbg !4225
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4209, metadata !DIExpression()), !dbg !4225
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4226
  call void @llvm.dbg.value(metadata ptr %4, metadata !4213, metadata !DIExpression()), !dbg !4227
  %5 = icmp eq ptr %4, null, !dbg !4229
  br i1 %5, label %6, label %7, !dbg !4230

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4231
  unreachable, !dbg !4231

7:                                                ; preds = %3
  ret ptr %4, !dbg !4232
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4233 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4237, metadata !DIExpression()), !dbg !4238
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4239
  call void @llvm.dbg.value(metadata ptr %2, metadata !4213, metadata !DIExpression()), !dbg !4240
  %3 = icmp eq ptr %2, null, !dbg !4242
  br i1 %3, label %4, label %5, !dbg !4243

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4244
  unreachable, !dbg !4244

5:                                                ; preds = %1
  ret ptr %2, !dbg !4245
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4246 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4247 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4251, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i64 %0, metadata !4253, metadata !DIExpression()), !dbg !4257
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4259
  call void @llvm.dbg.value(metadata ptr %2, metadata !4213, metadata !DIExpression()), !dbg !4260
  %3 = icmp eq ptr %2, null, !dbg !4262
  br i1 %3, label %4, label %5, !dbg !4263

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4264
  unreachable, !dbg !4264

5:                                                ; preds = %1
  ret ptr %2, !dbg !4265
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4266 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4270, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i64 %0, metadata !4237, metadata !DIExpression()), !dbg !4272
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4274
  call void @llvm.dbg.value(metadata ptr %2, metadata !4213, metadata !DIExpression()), !dbg !4275
  %3 = icmp eq ptr %2, null, !dbg !4277
  br i1 %3, label %4, label %5, !dbg !4278

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4279
  unreachable, !dbg !4279

5:                                                ; preds = %1
  ret ptr %2, !dbg !4280
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4281 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4285, metadata !DIExpression()), !dbg !4287
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4286, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata ptr %0, metadata !4288, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i64 %1, metadata !4292, metadata !DIExpression()), !dbg !4293
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4295
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !4296
  call void @llvm.dbg.value(metadata ptr %4, metadata !4213, metadata !DIExpression()), !dbg !4297
  %5 = icmp eq ptr %4, null, !dbg !4299
  br i1 %5, label %6, label %7, !dbg !4300

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4301
  unreachable, !dbg !4301

7:                                                ; preds = %2
  ret ptr %4, !dbg !4302
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4303 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4304 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4308, metadata !DIExpression()), !dbg !4310
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4309, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata ptr %0, metadata !4311, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i64 %1, metadata !4314, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata ptr %0, metadata !4288, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 %1, metadata !4292, metadata !DIExpression()), !dbg !4317
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4319
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !4320
  call void @llvm.dbg.value(metadata ptr %4, metadata !4213, metadata !DIExpression()), !dbg !4321
  %5 = icmp eq ptr %4, null, !dbg !4323
  br i1 %5, label %6, label %7, !dbg !4324

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4325
  unreachable, !dbg !4325

7:                                                ; preds = %2
  ret ptr %4, !dbg !4326
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4327 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4331, metadata !DIExpression()), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4332, metadata !DIExpression()), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4333, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr %0, metadata !4335, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %1, metadata !4338, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %2, metadata !4339, metadata !DIExpression()), !dbg !4340
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4342
  call void @llvm.dbg.value(metadata ptr %4, metadata !4213, metadata !DIExpression()), !dbg !4343
  %5 = icmp eq ptr %4, null, !dbg !4345
  br i1 %5, label %6, label %7, !dbg !4346

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4347
  unreachable, !dbg !4347

7:                                                ; preds = %3
  ret ptr %4, !dbg !4348
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4349 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4353, metadata !DIExpression()), !dbg !4355
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4354, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata ptr null, metadata !4205, metadata !DIExpression()), !dbg !4356
  call void @llvm.dbg.value(metadata i64 %0, metadata !4208, metadata !DIExpression()), !dbg !4356
  call void @llvm.dbg.value(metadata i64 %1, metadata !4209, metadata !DIExpression()), !dbg !4356
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4358
  call void @llvm.dbg.value(metadata ptr %3, metadata !4213, metadata !DIExpression()), !dbg !4359
  %4 = icmp eq ptr %3, null, !dbg !4361
  br i1 %4, label %5, label %6, !dbg !4362

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4363
  unreachable, !dbg !4363

6:                                                ; preds = %2
  ret ptr %3, !dbg !4364
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4365 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4369, metadata !DIExpression()), !dbg !4371
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4370, metadata !DIExpression()), !dbg !4371
  call void @llvm.dbg.value(metadata ptr null, metadata !4331, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i64 %0, metadata !4332, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i64 %1, metadata !4333, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata ptr null, metadata !4335, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i64 %0, metadata !4338, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i64 %1, metadata !4339, metadata !DIExpression()), !dbg !4374
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4376
  call void @llvm.dbg.value(metadata ptr %3, metadata !4213, metadata !DIExpression()), !dbg !4377
  %4 = icmp eq ptr %3, null, !dbg !4379
  br i1 %4, label %5, label %6, !dbg !4380

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4381
  unreachable, !dbg !4381

6:                                                ; preds = %2
  ret ptr %3, !dbg !4382
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4383 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4387, metadata !DIExpression()), !dbg !4389
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4388, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata ptr %0, metadata !887, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata ptr %1, metadata !888, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata i64 1, metadata !889, metadata !DIExpression()), !dbg !4390
  %3 = load i64, ptr %1, align 8, !dbg !4392, !tbaa !1879
  call void @llvm.dbg.value(metadata i64 %3, metadata !890, metadata !DIExpression()), !dbg !4390
  %4 = icmp eq ptr %0, null, !dbg !4393
  br i1 %4, label %5, label %8, !dbg !4395

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4396
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4399
  br label %15, !dbg !4399

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4400
  %10 = add nuw i64 %9, 1, !dbg !4400
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4400
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4400
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4400
  call void @llvm.dbg.value(metadata i64 %13, metadata !890, metadata !DIExpression()), !dbg !4390
  br i1 %12, label %14, label %15, !dbg !4403

14:                                               ; preds = %8
  tail call void @xalloc_die() #43, !dbg !4404
  unreachable, !dbg !4404

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4390
  call void @llvm.dbg.value(metadata i64 %16, metadata !890, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata ptr %0, metadata !4205, metadata !DIExpression()), !dbg !4405
  call void @llvm.dbg.value(metadata i64 %16, metadata !4208, metadata !DIExpression()), !dbg !4405
  call void @llvm.dbg.value(metadata i64 1, metadata !4209, metadata !DIExpression()), !dbg !4405
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #41, !dbg !4407
  call void @llvm.dbg.value(metadata ptr %17, metadata !4213, metadata !DIExpression()), !dbg !4408
  %18 = icmp eq ptr %17, null, !dbg !4410
  br i1 %18, label %19, label %20, !dbg !4411

19:                                               ; preds = %15
  tail call void @xalloc_die() #43, !dbg !4412
  unreachable, !dbg !4412

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !887, metadata !DIExpression()), !dbg !4390
  store i64 %16, ptr %1, align 8, !dbg !4413, !tbaa !1879
  ret ptr %17, !dbg !4414
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !882 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !887, metadata !DIExpression()), !dbg !4415
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !888, metadata !DIExpression()), !dbg !4415
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !889, metadata !DIExpression()), !dbg !4415
  %4 = load i64, ptr %1, align 8, !dbg !4416, !tbaa !1879
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !890, metadata !DIExpression()), !dbg !4415
  %5 = icmp eq ptr %0, null, !dbg !4417
  br i1 %5, label %6, label %13, !dbg !4418

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4419
  br i1 %7, label %8, label %20, !dbg !4420

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4421
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !890, metadata !DIExpression()), !dbg !4415
  %10 = icmp ugt i64 %2, 128, !dbg !4423
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4424
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !890, metadata !DIExpression()), !dbg !4415
  br label %20, !dbg !4425

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4426
  %15 = add nuw i64 %14, 1, !dbg !4426
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4426
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4426
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4426
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !890, metadata !DIExpression()), !dbg !4415
  br i1 %17, label %19, label %20, !dbg !4427

19:                                               ; preds = %13
  tail call void @xalloc_die() #43, !dbg !4428
  unreachable, !dbg !4428

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4415
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !890, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata ptr %0, metadata !4205, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64 %21, metadata !4208, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64 %2, metadata !4209, metadata !DIExpression()), !dbg !4429
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #41, !dbg !4431
  call void @llvm.dbg.value(metadata ptr %22, metadata !4213, metadata !DIExpression()), !dbg !4432
  %23 = icmp eq ptr %22, null, !dbg !4434
  br i1 %23, label %24, label %25, !dbg !4435

24:                                               ; preds = %20
  tail call void @xalloc_die() #43, !dbg !4436
  unreachable, !dbg !4436

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !887, metadata !DIExpression()), !dbg !4415
  store i64 %21, ptr %1, align 8, !dbg !4437, !tbaa !1879
  ret ptr %22, !dbg !4438
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !894 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !903, metadata !DIExpression()), !dbg !4439
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !904, metadata !DIExpression()), !dbg !4439
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !905, metadata !DIExpression()), !dbg !4439
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !906, metadata !DIExpression()), !dbg !4439
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !907, metadata !DIExpression()), !dbg !4439
  %6 = load i64, ptr %1, align 8, !dbg !4440, !tbaa !1879
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !908, metadata !DIExpression()), !dbg !4439
  %7 = ashr i64 %6, 1, !dbg !4441
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4441
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4441
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4441
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !909, metadata !DIExpression()), !dbg !4439
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4443
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !909, metadata !DIExpression()), !dbg !4439
  %12 = icmp sgt i64 %3, -1, !dbg !4444
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4446
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4446
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !909, metadata !DIExpression()), !dbg !4439
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4447
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4447
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4447
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !910, metadata !DIExpression()), !dbg !4439
  %18 = icmp slt i64 %17, 128, !dbg !4447
  %19 = select i1 %18, i64 128, i64 0, !dbg !4447
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4447
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !911, metadata !DIExpression()), !dbg !4439
  %21 = icmp eq i64 %20, 0, !dbg !4448
  br i1 %21, label %26, label %22, !dbg !4450

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !4451
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !909, metadata !DIExpression()), !dbg !4439
  %24 = srem i64 %20, %4, !dbg !4453
  %25 = sub nsw i64 %20, %24, !dbg !4454
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !910, metadata !DIExpression()), !dbg !4439
  br label %26, !dbg !4455

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !4439
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !4439
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !910, metadata !DIExpression()), !dbg !4439
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !909, metadata !DIExpression()), !dbg !4439
  %29 = icmp eq ptr %0, null, !dbg !4456
  br i1 %29, label %30, label %31, !dbg !4458

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !4459, !tbaa !1879
  br label %31, !dbg !4460

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !4461
  %33 = icmp slt i64 %32, %2, !dbg !4463
  br i1 %33, label %34, label %46, !dbg !4464

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4465
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !4465
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !4465
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !909, metadata !DIExpression()), !dbg !4439
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !4466
  br i1 %40, label %45, label %41, !dbg !4466

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !4467
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !4467
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !4467
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !910, metadata !DIExpression()), !dbg !4439
  br i1 %43, label %45, label %46, !dbg !4468

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #43, !dbg !4469
  unreachable, !dbg !4469

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !4439
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !4439
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !910, metadata !DIExpression()), !dbg !4439
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !909, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata ptr %0, metadata !4285, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata i64 %48, metadata !4286, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata ptr %0, metadata !4288, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i64 %48, metadata !4292, metadata !DIExpression()), !dbg !4472
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !4474
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #47, !dbg !4475
  call void @llvm.dbg.value(metadata ptr %50, metadata !4213, metadata !DIExpression()), !dbg !4476
  %51 = icmp eq ptr %50, null, !dbg !4478
  br i1 %51, label %52, label %53, !dbg !4479

52:                                               ; preds = %46
  tail call void @xalloc_die() #43, !dbg !4480
  unreachable, !dbg !4480

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !903, metadata !DIExpression()), !dbg !4439
  store i64 %47, ptr %1, align 8, !dbg !4481, !tbaa !1879
  ret ptr %50, !dbg !4482
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4483 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4485, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.value(metadata i64 %0, metadata !4487, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata i64 1, metadata !4490, metadata !DIExpression()), !dbg !4491
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4493
  call void @llvm.dbg.value(metadata ptr %2, metadata !4213, metadata !DIExpression()), !dbg !4494
  %3 = icmp eq ptr %2, null, !dbg !4496
  br i1 %3, label %4, label %5, !dbg !4497

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4498
  unreachable, !dbg !4498

5:                                                ; preds = %1
  ret ptr %2, !dbg !4499
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4500 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4488 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4487, metadata !DIExpression()), !dbg !4501
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4490, metadata !DIExpression()), !dbg !4501
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4502
  call void @llvm.dbg.value(metadata ptr %3, metadata !4213, metadata !DIExpression()), !dbg !4503
  %4 = icmp eq ptr %3, null, !dbg !4505
  br i1 %4, label %5, label %6, !dbg !4506

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4507
  unreachable, !dbg !4507

6:                                                ; preds = %2
  ret ptr %3, !dbg !4508
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4509 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4511, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i64 %0, metadata !4513, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata i64 1, metadata !4516, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata i64 %0, metadata !4519, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i64 1, metadata !4522, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i64 %0, metadata !4519, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i64 1, metadata !4522, metadata !DIExpression()), !dbg !4523
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4525
  call void @llvm.dbg.value(metadata ptr %2, metadata !4213, metadata !DIExpression()), !dbg !4526
  %3 = icmp eq ptr %2, null, !dbg !4528
  br i1 %3, label %4, label %5, !dbg !4529

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4530
  unreachable, !dbg !4530

5:                                                ; preds = %1
  ret ptr %2, !dbg !4531
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4514 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4513, metadata !DIExpression()), !dbg !4532
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4516, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i64 %0, metadata !4519, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i64 %1, metadata !4522, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i64 %0, metadata !4519, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i64 %1, metadata !4522, metadata !DIExpression()), !dbg !4533
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4535
  call void @llvm.dbg.value(metadata ptr %3, metadata !4213, metadata !DIExpression()), !dbg !4536
  %4 = icmp eq ptr %3, null, !dbg !4538
  br i1 %4, label %5, label %6, !dbg !4539

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4540
  unreachable, !dbg !4540

6:                                                ; preds = %2
  ret ptr %3, !dbg !4541
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4542 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4546, metadata !DIExpression()), !dbg !4548
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4547, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i64 %1, metadata !4237, metadata !DIExpression()), !dbg !4549
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4551
  call void @llvm.dbg.value(metadata ptr %3, metadata !4213, metadata !DIExpression()), !dbg !4552
  %4 = icmp eq ptr %3, null, !dbg !4554
  br i1 %4, label %5, label %6, !dbg !4555

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4556
  unreachable, !dbg !4556

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4557, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata ptr %0, metadata !4563, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %1, metadata !4564, metadata !DIExpression()), !dbg !4565
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4567
  ret ptr %3, !dbg !4568
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4569 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4573, metadata !DIExpression()), !dbg !4575
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4574, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.value(metadata i64 %1, metadata !4251, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata i64 %1, metadata !4253, metadata !DIExpression()), !dbg !4578
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4580
  call void @llvm.dbg.value(metadata ptr %3, metadata !4213, metadata !DIExpression()), !dbg !4581
  %4 = icmp eq ptr %3, null, !dbg !4583
  br i1 %4, label %5, label %6, !dbg !4584

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4585
  unreachable, !dbg !4585

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4557, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata ptr %0, metadata !4563, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i64 %1, metadata !4564, metadata !DIExpression()), !dbg !4586
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4588
  ret ptr %3, !dbg !4589
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4590 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4594, metadata !DIExpression()), !dbg !4597
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4595, metadata !DIExpression()), !dbg !4597
  %3 = add nsw i64 %1, 1, !dbg !4598
  call void @llvm.dbg.value(metadata i64 %3, metadata !4251, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i64 %3, metadata !4253, metadata !DIExpression()), !dbg !4601
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4603
  call void @llvm.dbg.value(metadata ptr %4, metadata !4213, metadata !DIExpression()), !dbg !4604
  %5 = icmp eq ptr %4, null, !dbg !4606
  br i1 %5, label %6, label %7, !dbg !4607

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4608
  unreachable, !dbg !4608

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4596, metadata !DIExpression()), !dbg !4597
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4609
  store i8 0, ptr %8, align 1, !dbg !4610, !tbaa !1031
  call void @llvm.dbg.value(metadata ptr %4, metadata !4557, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata ptr %0, metadata !4563, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata i64 %1, metadata !4564, metadata !DIExpression()), !dbg !4611
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4613
  ret ptr %4, !dbg !4614
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4615 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4617, metadata !DIExpression()), !dbg !4618
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #42, !dbg !4619
  %3 = add i64 %2, 1, !dbg !4620
  call void @llvm.dbg.value(metadata ptr %0, metadata !4546, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i64 %3, metadata !4547, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i64 %3, metadata !4237, metadata !DIExpression()), !dbg !4623
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4625
  call void @llvm.dbg.value(metadata ptr %4, metadata !4213, metadata !DIExpression()), !dbg !4626
  %5 = icmp eq ptr %4, null, !dbg !4628
  br i1 %5, label %6, label %7, !dbg !4629

6:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4630
  unreachable, !dbg !4630

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4557, metadata !DIExpression()), !dbg !4631
  call void @llvm.dbg.value(metadata ptr %0, metadata !4563, metadata !DIExpression()), !dbg !4631
  call void @llvm.dbg.value(metadata i64 %3, metadata !4564, metadata !DIExpression()), !dbg !4631
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #41, !dbg !4633
  ret ptr %4, !dbg !4634
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4635 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4639, !tbaa !1022
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4637, metadata !DIExpression()), !dbg !4640
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.146, ptr noundef nonnull @.str.2.147, i32 noundef 5) #41, !dbg !4639
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.148, ptr noundef %2) #41, !dbg !4639
  %3 = icmp eq i32 %1, 0, !dbg !4639
  tail call void @llvm.assume(i1 %3), !dbg !4639
  tail call void @abort() #43, !dbg !4641
  unreachable, !dbg !4641
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #38

; Function Attrs: nounwind uwtable
define dso_local double @c_strtod(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4642 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4646, metadata !DIExpression()), !dbg !4650
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4647, metadata !DIExpression()), !dbg !4650
  %3 = load volatile ptr, ptr @c_locale_cache, align 8, !dbg !4651, !tbaa !950
  %4 = icmp eq ptr %3, null, !dbg !4651
  br i1 %4, label %5, label %7, !dbg !4657

5:                                                ; preds = %2
  %6 = tail call ptr @newlocale(i32 noundef 8127, ptr noundef nonnull @.str.151, ptr noundef null) #41, !dbg !4658
  store volatile ptr %6, ptr @c_locale_cache, align 8, !dbg !4659, !tbaa !950
  br label %7, !dbg !4660

7:                                                ; preds = %2, %5
  %8 = load volatile ptr, ptr @c_locale_cache, align 8, !dbg !4661, !tbaa !950
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !4649, metadata !DIExpression()), !dbg !4650
  %9 = icmp eq ptr %8, null, !dbg !4662
  br i1 %9, label %10, label %13, !dbg !4664

10:                                               ; preds = %7
  %11 = icmp eq ptr %1, null, !dbg !4665
  br i1 %11, label %15, label %12, !dbg !4668

12:                                               ; preds = %10
  store ptr %0, ptr %1, align 8, !dbg !4669, !tbaa !950
  br label %15, !dbg !4670

13:                                               ; preds = %7
  %14 = tail call double @strtod_l(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8) #41, !dbg !4671
  tail call void @llvm.dbg.value(metadata double %14, metadata !4648, metadata !DIExpression()), !dbg !4650
  br label %15, !dbg !4672

15:                                               ; preds = %10, %12, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %10 ], !dbg !4650
  ret double %16, !dbg !4673
}

; Function Attrs: nounwind
declare !dbg !4674 ptr @newlocale(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4677 double @strtod_l(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4680 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4718, metadata !DIExpression()), !dbg !4723
  %2 = tail call i64 @__fpending(ptr noundef %0) #41, !dbg !4724
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4719, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4723
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4725, metadata !DIExpression()), !dbg !4728
  %3 = load i32, ptr %0, align 8, !dbg !4730, !tbaa !4731
  %4 = and i32 %3, 32, !dbg !4732
  %5 = icmp eq i32 %4, 0, !dbg !4732
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4721, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4723
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #41, !dbg !4733
  %7 = icmp eq i32 %6, 0, !dbg !4734
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4722, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4723
  br i1 %5, label %8, label %18, !dbg !4735

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4737
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4719, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4723
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4738
  %11 = xor i1 %7, true, !dbg !4738
  %12 = sext i1 %11 to i32, !dbg !4738
  br i1 %10, label %21, label %13, !dbg !4738

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #44, !dbg !4739
  %15 = load i32, ptr %14, align 4, !dbg !4739, !tbaa !1022
  %16 = icmp ne i32 %15, 9, !dbg !4740
  %17 = sext i1 %16 to i32, !dbg !4741
  br label %21, !dbg !4741

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4742

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #44, !dbg !4744
  store i32 0, ptr %20, align 4, !dbg !4746, !tbaa !1022
  br label %21, !dbg !4744

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4723
  ret i32 %22, !dbg !4747
}

; Function Attrs: nounwind
declare !dbg !4748 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4752 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4790, metadata !DIExpression()), !dbg !4794
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4791, metadata !DIExpression()), !dbg !4794
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !4795
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4792, metadata !DIExpression()), !dbg !4794
  %3 = icmp slt i32 %2, 0, !dbg !4796
  br i1 %3, label %4, label %6, !dbg !4798

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4799
  br label %24, !dbg !4800

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !4801
  %8 = icmp eq i32 %7, 0, !dbg !4801
  br i1 %8, label %13, label %9, !dbg !4803

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !4804
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #41, !dbg !4805
  %12 = icmp eq i64 %11, -1, !dbg !4806
  br i1 %12, label %16, label %13, !dbg !4807

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #41, !dbg !4808
  %15 = icmp eq i32 %14, 0, !dbg !4808
  br i1 %15, label %16, label %18, !dbg !4809

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4791, metadata !DIExpression()), !dbg !4794
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4793, metadata !DIExpression()), !dbg !4794
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4810
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4793, metadata !DIExpression()), !dbg !4794
  br label %24, !dbg !4811

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #44, !dbg !4812
  %20 = load i32, ptr %19, align 4, !dbg !4812, !tbaa !1022
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4791, metadata !DIExpression()), !dbg !4794
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4793, metadata !DIExpression()), !dbg !4794
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4810
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4793, metadata !DIExpression()), !dbg !4794
  %22 = icmp eq i32 %20, 0, !dbg !4813
  br i1 %22, label %24, label %23, !dbg !4811

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4815, !tbaa !1022
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4793, metadata !DIExpression()), !dbg !4794
  br label %24, !dbg !4817

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4794
  ret i32 %25, !dbg !4818
}

; Function Attrs: nofree nounwind
declare !dbg !4819 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4820 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4821 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4822 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4825 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4863, metadata !DIExpression()), !dbg !4864
  %2 = icmp eq ptr %0, null, !dbg !4865
  br i1 %2, label %6, label %3, !dbg !4867

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !4868
  %5 = icmp eq i32 %4, 0, !dbg !4868
  br i1 %5, label %6, label %8, !dbg !4869

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4870
  br label %16, !dbg !4871

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4872, metadata !DIExpression()), !dbg !4877
  %9 = load i32, ptr %0, align 8, !dbg !4879, !tbaa !4731
  %10 = and i32 %9, 256, !dbg !4881
  %11 = icmp eq i32 %10, 0, !dbg !4881
  br i1 %11, label %14, label %12, !dbg !4882

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #41, !dbg !4883
  br label %14, !dbg !4883

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4884
  br label %16, !dbg !4885

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4864
  ret i32 %17, !dbg !4886
}

; Function Attrs: nofree nounwind
declare !dbg !4887 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4888 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4927, metadata !DIExpression()), !dbg !4933
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4928, metadata !DIExpression()), !dbg !4933
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4929, metadata !DIExpression()), !dbg !4933
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4934
  %5 = load ptr, ptr %4, align 8, !dbg !4934, !tbaa !4935
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4936
  %7 = load ptr, ptr %6, align 8, !dbg !4936, !tbaa !4937
  %8 = icmp eq ptr %5, %7, !dbg !4938
  br i1 %8, label %9, label %27, !dbg !4939

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4940
  %11 = load ptr, ptr %10, align 8, !dbg !4940, !tbaa !2347
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4941
  %13 = load ptr, ptr %12, align 8, !dbg !4941, !tbaa !4942
  %14 = icmp eq ptr %11, %13, !dbg !4943
  br i1 %14, label %15, label %27, !dbg !4944

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4945
  %17 = load ptr, ptr %16, align 8, !dbg !4945, !tbaa !4946
  %18 = icmp eq ptr %17, null, !dbg !4947
  br i1 %18, label %19, label %27, !dbg !4948

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !4949
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #41, !dbg !4950
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4930, metadata !DIExpression()), !dbg !4951
  %22 = icmp eq i64 %21, -1, !dbg !4952
  br i1 %22, label %29, label %23, !dbg !4954

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4955, !tbaa !4731
  %25 = and i32 %24, -17, !dbg !4955
  store i32 %25, ptr %0, align 8, !dbg !4955, !tbaa !4731
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4956
  store i64 %21, ptr %26, align 8, !dbg !4957, !tbaa !4958
  br label %29, !dbg !4959

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4960
  br label %29, !dbg !4961

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4933
  ret i32 %30, !dbg !4962
}

; Function Attrs: nofree nounwind
declare !dbg !4963 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4966 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4971, metadata !DIExpression()), !dbg !4976
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4972, metadata !DIExpression()), !dbg !4976
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4973, metadata !DIExpression()), !dbg !4976
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4974, metadata !DIExpression()), !dbg !4976
  %5 = icmp eq ptr %1, null, !dbg !4977
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4979
  %7 = select i1 %5, ptr @.str.162, ptr %1, !dbg !4979
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4979
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4973, metadata !DIExpression()), !dbg !4976
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4972, metadata !DIExpression()), !dbg !4976
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4971, metadata !DIExpression()), !dbg !4976
  %9 = icmp eq ptr %3, null, !dbg !4980
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4982
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4974, metadata !DIExpression()), !dbg !4976
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #41, !dbg !4983
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4975, metadata !DIExpression()), !dbg !4976
  %12 = icmp ult i64 %11, -3, !dbg !4984
  br i1 %12, label %13, label %17, !dbg !4986

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #42, !dbg !4987
  %15 = icmp eq i32 %14, 0, !dbg !4987
  br i1 %15, label %16, label %29, !dbg !4988

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4989, metadata !DIExpression()), !dbg !4994
  call void @llvm.dbg.value(metadata ptr %10, metadata !4996, metadata !DIExpression()), !dbg !5001
  call void @llvm.dbg.value(metadata i32 0, metadata !4999, metadata !DIExpression()), !dbg !5001
  call void @llvm.dbg.value(metadata i64 8, metadata !5000, metadata !DIExpression()), !dbg !5001
  store i64 0, ptr %10, align 1, !dbg !5003
  br label %29, !dbg !5004

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5005
  br i1 %18, label %19, label %20, !dbg !5007

19:                                               ; preds = %17
  tail call void @abort() #43, !dbg !5008
  unreachable, !dbg !5008

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5009

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #41, !dbg !5011
  br i1 %23, label %29, label %24, !dbg !5012

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5013
  br i1 %25, label %29, label %26, !dbg !5016

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5017, !tbaa !1031
  %28 = zext i8 %27 to i32, !dbg !5018
  store i32 %28, ptr %6, align 4, !dbg !5019, !tbaa !1022
  br label %29, !dbg !5020

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4976
  ret i64 %30, !dbg !5021
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5022 i32 @mbsinit(ptr noundef) local_unnamed_addr #39

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #40 !dbg !5028 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5030, metadata !DIExpression()), !dbg !5034
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5031, metadata !DIExpression()), !dbg !5034
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5032, metadata !DIExpression()), !dbg !5034
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5035
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5035
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5033, metadata !DIExpression()), !dbg !5034
  br i1 %5, label %6, label %8, !dbg !5037

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #44, !dbg !5038
  store i32 12, ptr %7, align 4, !dbg !5040, !tbaa !1022
  br label %12, !dbg !5041

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5035
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5033, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.value(metadata ptr %0, metadata !5042, metadata !DIExpression()), !dbg !5046
  call void @llvm.dbg.value(metadata i64 %9, metadata !5045, metadata !DIExpression()), !dbg !5046
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5048
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #47, !dbg !5049
  br label %12, !dbg !5050

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5034
  ret ptr %13, !dbg !5051
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5052 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !5059
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5055, metadata !DIExpression(), metadata !5059, metadata ptr %2, metadata !DIExpression()), !dbg !5060
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5054, metadata !DIExpression()), !dbg !5060
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #41, !dbg !5061
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #41, !dbg !5062
  %4 = icmp eq i32 %3, 0, !dbg !5062
  br i1 %4, label %5, label %12, !dbg !5064

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5065, metadata !DIExpression()), !dbg !5069
  call void @llvm.dbg.value(metadata !989, metadata !5068, metadata !DIExpression()), !dbg !5069
  %6 = load i16, ptr %2, align 16, !dbg !5072
  %7 = icmp eq i16 %6, 67, !dbg !5072
  br i1 %7, label %11, label %8, !dbg !5073

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5065, metadata !DIExpression()), !dbg !5074
  call void @llvm.dbg.value(metadata ptr @.str.1.167, metadata !5068, metadata !DIExpression()), !dbg !5074
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.167, i64 6), !dbg !5076
  %10 = icmp eq i32 %9, 0, !dbg !5077
  br i1 %10, label %11, label %12, !dbg !5078

11:                                               ; preds = %8, %5
  br label %12, !dbg !5079

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5060
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #41, !dbg !5080
  ret i1 %13, !dbg !5080
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5081 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5085, metadata !DIExpression()), !dbg !5088
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5086, metadata !DIExpression()), !dbg !5088
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5087, metadata !DIExpression()), !dbg !5088
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #41, !dbg !5089
  ret i32 %4, !dbg !5090
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5091 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5095, metadata !DIExpression()), !dbg !5096
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #41, !dbg !5097
  ret ptr %2, !dbg !5098
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5099 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5101, metadata !DIExpression()), !dbg !5103
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !5104
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5102, metadata !DIExpression()), !dbg !5103
  ret ptr %2, !dbg !5105
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5106 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5108, metadata !DIExpression()), !dbg !5115
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5109, metadata !DIExpression()), !dbg !5115
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5110, metadata !DIExpression()), !dbg !5115
  call void @llvm.dbg.value(metadata i32 %0, metadata !5101, metadata !DIExpression()), !dbg !5116
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !5118
  call void @llvm.dbg.value(metadata ptr %4, metadata !5102, metadata !DIExpression()), !dbg !5116
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5111, metadata !DIExpression()), !dbg !5115
  %5 = icmp eq ptr %4, null, !dbg !5119
  br i1 %5, label %6, label %9, !dbg !5120

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5121
  br i1 %7, label %19, label %8, !dbg !5124

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5125, !tbaa !1031
  br label %19, !dbg !5126

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #42, !dbg !5127
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5112, metadata !DIExpression()), !dbg !5128
  %11 = icmp ult i64 %10, %2, !dbg !5129
  br i1 %11, label %12, label %14, !dbg !5131

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5132
  call void @llvm.dbg.value(metadata ptr %1, metadata !5134, metadata !DIExpression()), !dbg !5139
  call void @llvm.dbg.value(metadata ptr %4, metadata !5137, metadata !DIExpression()), !dbg !5139
  call void @llvm.dbg.value(metadata i64 %13, metadata !5138, metadata !DIExpression()), !dbg !5139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #41, !dbg !5141
  br label %19, !dbg !5142

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5143
  br i1 %15, label %19, label %16, !dbg !5146

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5147
  call void @llvm.dbg.value(metadata ptr %1, metadata !5134, metadata !DIExpression()), !dbg !5149
  call void @llvm.dbg.value(metadata ptr %4, metadata !5137, metadata !DIExpression()), !dbg !5149
  call void @llvm.dbg.value(metadata i64 %17, metadata !5138, metadata !DIExpression()), !dbg !5149
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #41, !dbg !5151
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5152
  store i8 0, ptr %18, align 1, !dbg !5153, !tbaa !1031
  br label %19, !dbg !5154

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5155
  ret i32 %20, !dbg !5156
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
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
attributes #45 = { noreturn }
attributes #46 = { cold }
attributes #47 = { nounwind allocsize(1) }
attributes #48 = { nounwind allocsize(0) }
attributes #49 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!94, !852, !469, !856, !473, !858, !488, !792, !869, !536, !550, !601, !691, !871, !784, !878, !913, !805, !915, !917, !919, !921, !836, !923, !925, !929, !931}
!llvm.ident = !{!933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933}
!llvm.module.flags = !{!934, !935, !936, !937, !938, !939, !940}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 267, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/timeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afbf26e7b41c5b018c2877c8d9f1f2ff")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!107 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!108 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
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
!182 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !184, line: 154, baseType: !105)
!184 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!228 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !231)
!230 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!447 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!487 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !488, file: !489, line: 66, type: !531, isLocal: false, isDefinition: true)
!488 = distinct !DICompileUnit(language: DW_LANG_C11, file: !489, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !490, globals: !491, splitDebugInlining: false, nameTableKind: None)
!489 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!490 = !{!126, !139}
!491 = !{!492, !494, !513, !515, !517, !519, !486, !521, !523, !525, !527, !529}
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(scope: null, file: !489, line: 272, type: !284, isLocal: true, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(name: "old_file_name", scope: !496, file: !489, line: 304, type: !137, isLocal: true, isDefinition: true)
!496 = distinct !DISubprogram(name: "verror_at_line", scope: !489, file: !489, line: 298, type: !497, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !506)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !105, !105, !137, !98, !137, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !501)
!501 = !{!502, !503, !504, !505}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !500, file: !489, baseType: !98, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !500, file: !489, baseType: !98, size: 32, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !500, file: !489, baseType: !126, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !500, file: !489, baseType: !126, size: 64, offset: 128)
!506 = !{!507, !508, !509, !510, !511, !512}
!507 = !DILocalVariable(name: "status", arg: 1, scope: !496, file: !489, line: 298, type: !105)
!508 = !DILocalVariable(name: "errnum", arg: 2, scope: !496, file: !489, line: 298, type: !105)
!509 = !DILocalVariable(name: "file_name", arg: 3, scope: !496, file: !489, line: 298, type: !137)
!510 = !DILocalVariable(name: "line_number", arg: 4, scope: !496, file: !489, line: 298, type: !98)
!511 = !DILocalVariable(name: "message", arg: 5, scope: !496, file: !489, line: 298, type: !137)
!512 = !DILocalVariable(name: "args", arg: 6, scope: !496, file: !489, line: 298, type: !499)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "old_line_number", scope: !496, file: !489, line: 305, type: !98, isLocal: true, isDefinition: true)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !489, line: 338, type: !291, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !489, line: 346, type: !19, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !489, line: 346, type: !301, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(name: "error_message_count", scope: !488, file: !489, line: 69, type: !98, isLocal: false, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !488, file: !489, line: 295, type: !105, isLocal: false, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !489, line: 208, type: !321, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !489, line: 208, type: !429, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !489, line: 214, type: !284, isLocal: true, isDefinition: true)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{null}
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(name: "program_name", scope: !536, file: !537, line: 31, type: !137, isLocal: false, isDefinition: true)
!536 = distinct !DICompileUnit(language: DW_LANG_C11, file: !537, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !538, globals: !539, splitDebugInlining: false, nameTableKind: None)
!537 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!538 = !{!126, !125}
!539 = !{!534, !540, !542}
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !537, line: 46, type: !19, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !537, line: 49, type: !291, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(name: "utf07FF", scope: !546, file: !547, line: 46, type: !574, isLocal: true, isDefinition: true)
!546 = distinct !DISubprogram(name: "proper_name_lite", scope: !547, file: !547, line: 38, type: !548, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !552)
!547 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!548 = !DISubroutineType(types: !549)
!549 = !{!137, !137, !137}
!550 = distinct !DICompileUnit(language: DW_LANG_C11, file: !547, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !551, splitDebugInlining: false, nameTableKind: None)
!551 = !{!544}
!552 = !{!553, !554, !555, !556, !561}
!553 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !546, file: !547, line: 38, type: !137)
!554 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !546, file: !547, line: 38, type: !137)
!555 = !DILocalVariable(name: "translation", scope: !546, file: !547, line: 40, type: !137)
!556 = !DILocalVariable(name: "w", scope: !546, file: !547, line: 47, type: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !558, line: 37, baseType: !559)
!558 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !184, line: 57, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !184, line: 42, baseType: !98)
!561 = !DILocalVariable(name: "mbs", scope: !546, file: !547, line: 48, type: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !563, line: 6, baseType: !564)
!563 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !565, line: 21, baseType: !566)
!565 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !565, line: 13, size: 64, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !566, file: !565, line: 15, baseType: !105, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !566, file: !565, line: 20, baseType: !570, size: 32, offset: 32)
!570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !565, line: 16, size: 32, elements: !571)
!571 = !{!572, !573}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !570, file: !565, line: 18, baseType: !98, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !570, file: !565, line: 19, baseType: !291, size: 32)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 16, elements: !302)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(scope: null, file: !577, line: 78, type: !19, isLocal: true, isDefinition: true)
!577 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !577, line: 79, type: !296, isLocal: true, isDefinition: true)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(scope: null, file: !577, line: 80, type: !582, isLocal: true, isDefinition: true)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !583)
!583 = !{!584}
!584 = !DISubrange(count: 13)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !577, line: 81, type: !582, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !577, line: 82, type: !273, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !577, line: 83, type: !301, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !577, line: 84, type: !19, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !577, line: 85, type: !321, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !577, line: 86, type: !321, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !577, line: 87, type: !19, isLocal: true, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !601, file: !577, line: 76, type: !687, isLocal: false, isDefinition: true)
!601 = distinct !DICompileUnit(language: DW_LANG_C11, file: !577, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !602, retainedTypes: !622, globals: !623, splitDebugInlining: false, nameTableKind: None)
!602 = !{!603, !617, !109}
!603 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !604, line: 42, baseType: !98, size: 32, elements: !605)
!604 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!605 = !{!606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616}
!606 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!607 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!608 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!609 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!610 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!611 = !DIEnumerator(name: "c_quoting_style", value: 5)
!612 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!613 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!614 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!615 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!616 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!617 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !604, line: 254, baseType: !98, size: 32, elements: !618)
!618 = !{!619, !620, !621}
!619 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!620 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!621 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!622 = !{!126, !105, !133, !134}
!623 = !{!575, !578, !580, !585, !587, !589, !591, !593, !595, !597, !599, !624, !628, !638, !640, !645, !647, !649, !651, !653, !676, !683, !685}
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !601, file: !577, line: 92, type: !626, isLocal: false, isDefinition: true)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, size: 320, elements: !80)
!627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !601, file: !577, line: 1040, type: !630, isLocal: false, isDefinition: true)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !577, line: 56, size: 448, elements: !631)
!631 = !{!632, !633, !634, !636, !637}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !630, file: !577, line: 59, baseType: !603, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !577, line: 62, baseType: !105, size: 32, offset: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !630, file: !577, line: 66, baseType: !635, size: 256, offset: 64)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 256, elements: !20)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !630, file: !577, line: 69, baseType: !137, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !630, file: !577, line: 72, baseType: !137, size: 64, offset: 384)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !601, file: !577, line: 107, type: !630, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(name: "slot0", scope: !601, file: !577, line: 831, type: !642, isLocal: true, isDefinition: true)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 256)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !577, line: 321, type: !301, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !577, line: 357, type: !301, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !577, line: 358, type: !301, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !577, line: 199, type: !321, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(name: "quote", scope: !655, file: !577, line: 228, type: !674, isLocal: true, isDefinition: true)
!655 = distinct !DISubprogram(name: "gettext_quote", scope: !577, file: !577, line: 197, type: !656, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !658)
!656 = !DISubroutineType(types: !657)
!657 = !{!137, !137, !603}
!658 = !{!659, !660, !661, !662, !663}
!659 = !DILocalVariable(name: "msgid", arg: 1, scope: !655, file: !577, line: 197, type: !137)
!660 = !DILocalVariable(name: "s", arg: 2, scope: !655, file: !577, line: 197, type: !603)
!661 = !DILocalVariable(name: "translation", scope: !655, file: !577, line: 199, type: !137)
!662 = !DILocalVariable(name: "w", scope: !655, file: !577, line: 229, type: !557)
!663 = !DILocalVariable(name: "mbs", scope: !655, file: !577, line: 230, type: !664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !563, line: 6, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !565, line: 21, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !565, line: 13, size: 64, elements: !667)
!667 = !{!668, !669}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !666, file: !565, line: 15, baseType: !105, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !666, file: !565, line: 20, baseType: !670, size: 32, offset: 32)
!670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !666, file: !565, line: 16, size: 32, elements: !671)
!671 = !{!672, !673}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !670, file: !565, line: 18, baseType: !98, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !670, file: !565, line: 19, baseType: !291, size: 32)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !675)
!675 = !{!303, !293}
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(name: "slotvec", scope: !601, file: !577, line: 834, type: !678, isLocal: true, isDefinition: true)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !577, line: 823, size: 128, elements: !680)
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !679, file: !577, line: 825, baseType: !134, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !679, file: !577, line: 826, baseType: !125, size: 64, offset: 64)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(name: "nslots", scope: !601, file: !577, line: 832, type: !105, isLocal: true, isDefinition: true)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(name: "slotvec0", scope: !601, file: !577, line: 833, type: !679, isLocal: true, isDefinition: true)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 704, elements: !397)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(name: "numname_table", scope: !691, file: !692, line: 43, type: !701, isLocal: true, isDefinition: true)
!691 = distinct !DICompileUnit(language: DW_LANG_C11, file: !692, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-sig2str.o -MD -MP -MF lib/.deps/libcoreutils_a-sig2str.Tpo -c lib/sig2str.c -o lib/.libcoreutils_a-sig2str.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !693, globals: !694, splitDebugInlining: false, nameTableKind: None)
!692 = !DIFile(filename: "lib/sig2str.c", directory: "/src", checksumkind: CSK_MD5, checksum: "828136ef7ede39101f7053cda7cea598")
!693 = !{!98}
!694 = !{!695, !697, !699, !689}
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !692, line: 351, type: !296, isLocal: true, isDefinition: true)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !692, line: 356, type: !296, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !692, line: 362, type: !291, isLocal: true, isDefinition: true)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !702, size: 3360, elements: !707)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numname", file: !692, line: 43, size: 96, elements: !703)
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !702, file: !692, line: 43, baseType: !105, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !702, file: !692, line: 43, baseType: !706, size: 64, offset: 32)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !20)
!707 = !{!708}
!708 = !DISubrange(count: 35)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !711, line: 67, type: !391, isLocal: true, isDefinition: true)
!711 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !711, line: 69, type: !321, isLocal: true, isDefinition: true)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !711, line: 83, type: !321, isLocal: true, isDefinition: true)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(scope: null, file: !711, line: 83, type: !291, isLocal: true, isDefinition: true)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(scope: null, file: !711, line: 85, type: !301, isLocal: true, isDefinition: true)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !711, line: 88, type: !722, isLocal: true, isDefinition: true)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !723)
!723 = !{!724}
!724 = !DISubrange(count: 171)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(scope: null, file: !711, line: 88, type: !157, isLocal: true, isDefinition: true)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !711, line: 105, type: !362, isLocal: true, isDefinition: true)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !711, line: 109, type: !434, isLocal: true, isDefinition: true)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !711, line: 113, type: !733, isLocal: true, isDefinition: true)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !734)
!734 = !{!735}
!735 = !DISubrange(count: 28)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !711, line: 120, type: !419, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !711, line: 127, type: !740, isLocal: true, isDefinition: true)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !741)
!741 = !{!742}
!742 = !DISubrange(count: 36)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !711, line: 134, type: !345, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(scope: null, file: !711, line: 142, type: !747, isLocal: true, isDefinition: true)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !748)
!748 = !{!749}
!749 = !DISubrange(count: 44)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !711, line: 150, type: !752, isLocal: true, isDefinition: true)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !753)
!753 = !{!754}
!754 = !DISubrange(count: 48)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !711, line: 159, type: !757, isLocal: true, isDefinition: true)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 52)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(scope: null, file: !711, line: 170, type: !762, isLocal: true, isDefinition: true)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !763)
!763 = !{!764}
!764 = !DISubrange(count: 60)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !711, line: 248, type: !273, isLocal: true, isDefinition: true)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(scope: null, file: !711, line: 248, type: !367, isLocal: true, isDefinition: true)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(scope: null, file: !711, line: 254, type: !273, isLocal: true, isDefinition: true)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(scope: null, file: !711, line: 254, type: !143, isLocal: true, isDefinition: true)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(scope: null, file: !711, line: 254, type: !345, isLocal: true, isDefinition: true)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(scope: null, file: !711, line: 259, type: !3, isLocal: true, isDefinition: true)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(scope: null, file: !711, line: 259, type: !779, isLocal: true, isDefinition: true)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !780)
!780 = !{!781}
!781 = !DISubrange(count: 29)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !784, file: !785, line: 26, type: !787, isLocal: false, isDefinition: true)
!784 = distinct !DICompileUnit(language: DW_LANG_C11, file: !785, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !786, splitDebugInlining: false, nameTableKind: None)
!785 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!786 = !{!782}
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 376, elements: !788)
!788 = !{!789}
!789 = !DISubrange(count: 47)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(name: "exit_failure", scope: !792, file: !793, line: 24, type: !795, isLocal: false, isDefinition: true)
!792 = distinct !DICompileUnit(language: DW_LANG_C11, file: !793, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !794, splitDebugInlining: false, nameTableKind: None)
!793 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!794 = !{!790}
!795 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !105)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(scope: null, file: !798, line: 34, type: !310, isLocal: true, isDefinition: true)
!798 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(scope: null, file: !798, line: 34, type: !321, isLocal: true, isDefinition: true)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(scope: null, file: !798, line: 34, type: !340, isLocal: true, isDefinition: true)
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !805, file: !806, line: 58, type: !830, isLocal: true, isDefinition: true)
!805 = distinct !DICompileUnit(language: DW_LANG_C11, file: !806, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-c-strtod.o -MD -MP -MF lib/.deps/libcoreutils_a-c-strtod.Tpo -c lib/c-strtod.c -o lib/.libcoreutils_a-c-strtod.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !807, globals: !827, splitDebugInlining: false, nameTableKind: None)
!806 = !DIFile(filename: "lib/c-strtod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5149e55c3d66a821d48006aa16ce6f10")
!807 = !{!125, !808}
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !809, line: 24, baseType: !810)
!809 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h", directory: "", checksumkind: CSK_MD5, checksum: "4752f26e930c42056083e96227ff0057")
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !811, line: 41, baseType: !812)
!811 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h", directory: "", checksumkind: CSK_MD5, checksum: "79eea70c97dfcbc51f94cdf9446ea8a8")
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !811, line: 27, size: 1856, elements: !814)
!814 = !{!815, !819, !822, !824, !825}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !813, file: !811, line: 30, baseType: !816, size: 832)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !817, size: 832, elements: !583)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !811, line: 30, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !813, file: !811, line: 33, baseType: !820, size: 64, offset: 832)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !813, file: !811, line: 34, baseType: !823, size: 64, offset: 896)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !813, file: !811, line: 35, baseType: !823, size: 64, offset: 960)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !813, file: !811, line: 38, baseType: !826, size: 832, offset: 1024)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 832, elements: !583)
!827 = !{!828, !803}
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(scope: null, file: !806, line: 66, type: !301, isLocal: true, isDefinition: true)
!830 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !808)
!831 = !DIGlobalVariableExpression(var: !832, expr: !DIExpression())
!832 = distinct !DIGlobalVariable(scope: null, file: !833, line: 108, type: !74, isLocal: true, isDefinition: true)
!833 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!834 = !DIGlobalVariableExpression(var: !835, expr: !DIExpression())
!835 = distinct !DIGlobalVariable(name: "internal_state", scope: !836, file: !833, line: 97, type: !839, isLocal: true, isDefinition: true)
!836 = distinct !DICompileUnit(language: DW_LANG_C11, file: !833, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !837, globals: !838, splitDebugInlining: false, nameTableKind: None)
!837 = !{!126, !134, !139}
!838 = !{!831, !834}
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !563, line: 6, baseType: !840)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !565, line: 21, baseType: !841)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !565, line: 13, size: 64, elements: !842)
!842 = !{!843, !844}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !841, file: !565, line: 15, baseType: !105, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !841, file: !565, line: 20, baseType: !845, size: 32, offset: 32)
!845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !841, file: !565, line: 16, size: 32, elements: !846)
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !845, file: !565, line: 18, baseType: !98, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !845, file: !565, line: 19, baseType: !291, size: 32)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(scope: null, file: !851, line: 35, type: !296, isLocal: true, isDefinition: true)
!851 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!852 = distinct !DICompileUnit(language: DW_LANG_C11, file: !460, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/operand2sig.o -MD -MP -MF src/.deps/operand2sig.Tpo -c src/operand2sig.c -o src/.operand2sig.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !853, splitDebugInlining: false, nameTableKind: None)
!853 = !{!854, !458}
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(scope: null, file: !460, line: 72, type: !381, isLocal: true, isDefinition: true)
!856 = distinct !DICompileUnit(language: DW_LANG_C11, file: !857, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-cl-strtod.o -MD -MP -MF lib/.deps/libcoreutils_a-cl-strtod.Tpo -c lib/cl-strtod.c -o lib/.libcoreutils_a-cl-strtod.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!857 = !DIFile(filename: "lib/cl-strtod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a67239aa557b1854772fcd1589240f00")
!858 = distinct !DICompileUnit(language: DW_LANG_C11, file: !859, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-dtotimespec.o -MD -MP -MF lib/.deps/libcoreutils_a-dtotimespec.Tpo -c lib/dtotimespec.c -o lib/.libcoreutils_a-dtotimespec.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !860, retainedTypes: !865, splitDebugInlining: false, nameTableKind: None)
!859 = !DIFile(filename: "lib/dtotimespec.c", directory: "/src", checksumkind: CSK_MD5, checksum: "863541a7a9cbed8b745823733251add6")
!860 = !{!861}
!861 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !862, line: 44, baseType: !98, size: 32, elements: !863)
!862 = !DIFile(filename: "lib/timespec.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f2321879fdee55a014e00353b7423449")
!863 = !{!864}
!864 = !DIEnumerator(name: "TIMESPEC_HZ", value: 1000000000)
!865 = !{!866}
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !867, line: 10, baseType: !868)
!867 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !184, line: 160, baseType: !253)
!869 = distinct !DICompileUnit(language: DW_LANG_C11, file: !870, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!870 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!871 = distinct !DICompileUnit(language: DW_LANG_C11, file: !711, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !872, retainedTypes: !876, globals: !877, splitDebugInlining: false, nameTableKind: None)
!872 = !{!873}
!873 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !711, line: 40, baseType: !98, size: 32, elements: !874)
!874 = !{!875}
!875 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!876 = !{!126}
!877 = !{!709, !712, !714, !716, !718, !720, !725, !727, !729, !731, !736, !738, !743, !745, !750, !755, !760, !765, !767, !769, !771, !773, !775, !777}
!878 = distinct !DICompileUnit(language: DW_LANG_C11, file: !879, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !880, retainedTypes: !912, splitDebugInlining: false, nameTableKind: None)
!879 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!880 = !{!881, !893}
!881 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !882, file: !879, line: 188, baseType: !98, size: 32, elements: !891)
!882 = distinct !DISubprogram(name: "x2nrealloc", scope: !879, file: !879, line: 176, type: !883, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !886)
!883 = !DISubroutineType(types: !884)
!884 = !{!126, !126, !885, !134}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!886 = !{!887, !888, !889, !890}
!887 = !DILocalVariable(name: "p", arg: 1, scope: !882, file: !879, line: 176, type: !126)
!888 = !DILocalVariable(name: "pn", arg: 2, scope: !882, file: !879, line: 176, type: !885)
!889 = !DILocalVariable(name: "s", arg: 3, scope: !882, file: !879, line: 176, type: !134)
!890 = !DILocalVariable(name: "n", scope: !882, file: !879, line: 178, type: !134)
!891 = !{!892}
!892 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!893 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !894, file: !879, line: 228, baseType: !98, size: 32, elements: !891)
!894 = distinct !DISubprogram(name: "xpalloc", scope: !879, file: !879, line: 223, type: !895, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !902)
!895 = !DISubroutineType(types: !896)
!896 = !{!126, !126, !897, !898, !900, !898}
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !899, line: 130, baseType: !900)
!899 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !901, line: 18, baseType: !253)
!901 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!902 = !{!903, !904, !905, !906, !907, !908, !909, !910, !911}
!903 = !DILocalVariable(name: "pa", arg: 1, scope: !894, file: !879, line: 223, type: !126)
!904 = !DILocalVariable(name: "pn", arg: 2, scope: !894, file: !879, line: 223, type: !897)
!905 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !894, file: !879, line: 223, type: !898)
!906 = !DILocalVariable(name: "n_max", arg: 4, scope: !894, file: !879, line: 223, type: !900)
!907 = !DILocalVariable(name: "s", arg: 5, scope: !894, file: !879, line: 223, type: !898)
!908 = !DILocalVariable(name: "n0", scope: !894, file: !879, line: 230, type: !898)
!909 = !DILocalVariable(name: "n", scope: !894, file: !879, line: 237, type: !898)
!910 = !DILocalVariable(name: "nbytes", scope: !894, file: !879, line: 248, type: !898)
!911 = !DILocalVariable(name: "adjusted_nbytes", scope: !894, file: !879, line: 252, type: !898)
!912 = !{!125, !126}
!913 = distinct !DICompileUnit(language: DW_LANG_C11, file: !798, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !914, splitDebugInlining: false, nameTableKind: None)
!914 = !{!796, !799, !801}
!915 = distinct !DICompileUnit(language: DW_LANG_C11, file: !916, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!916 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!917 = distinct !DICompileUnit(language: DW_LANG_C11, file: !918, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!918 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!919 = distinct !DICompileUnit(language: DW_LANG_C11, file: !920, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !876, splitDebugInlining: false, nameTableKind: None)
!920 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!921 = distinct !DICompileUnit(language: DW_LANG_C11, file: !922, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !876, splitDebugInlining: false, nameTableKind: None)
!922 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!923 = distinct !DICompileUnit(language: DW_LANG_C11, file: !924, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !876, splitDebugInlining: false, nameTableKind: None)
!924 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!925 = distinct !DICompileUnit(language: DW_LANG_C11, file: !851, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !926, splitDebugInlining: false, nameTableKind: None)
!926 = !{!927, !849}
!927 = !DIGlobalVariableExpression(var: !928, expr: !DIExpression())
!928 = distinct !DIGlobalVariable(scope: null, file: !851, line: 35, type: !301, isLocal: true, isDefinition: true)
!929 = distinct !DICompileUnit(language: DW_LANG_C11, file: !930, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!930 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!931 = distinct !DICompileUnit(language: DW_LANG_C11, file: !932, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !876, splitDebugInlining: false, nameTableKind: None)
!932 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!933 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!934 = !{i32 7, !"Dwarf Version", i32 5}
!935 = !{i32 2, !"Debug Info Version", i32 3}
!936 = !{i32 1, !"wchar_size", i32 4}
!937 = !{i32 8, !"PIC Level", i32 2}
!938 = !{i32 7, !"PIE Level", i32 2}
!939 = !{i32 7, !"uwtable", i32 2}
!940 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!941 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 264, type: !130, scopeLine: 265, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !942)
!942 = !{!943}
!943 = !DILocalVariable(name: "status", arg: 1, scope: !941, file: !2, line: 264, type: !105)
!944 = !DILocation(line: 0, scope: !941)
!945 = !DILocation(line: 266, column: 14, scope: !946)
!946 = distinct !DILexicalBlock(scope: !941, file: !2, line: 266, column: 7)
!947 = !DILocation(line: 266, column: 7, scope: !941)
!948 = !DILocation(line: 267, column: 5, scope: !949)
!949 = distinct !DILexicalBlock(scope: !946, file: !2, line: 267, column: 5)
!950 = !{!951, !951, i64 0}
!951 = !{!"any pointer", !952, i64 0}
!952 = !{!"omnipotent char", !953, i64 0}
!953 = !{!"Simple C/C++ TBAA"}
!954 = !DILocation(line: 270, column: 7, scope: !955)
!955 = distinct !DILexicalBlock(scope: !946, file: !2, line: 269, column: 5)
!956 = !DILocation(line: 273, column: 7, scope: !955)
!957 = !DILocation(line: 736, column: 3, scope: !958, inlinedAt: !959)
!958 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !97, file: !97, line: 734, type: !532, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94)
!959 = distinct !DILocation(line: 277, column: 7, scope: !955)
!960 = !DILocation(line: 279, column: 7, scope: !955)
!961 = !DILocation(line: 285, column: 7, scope: !955)
!962 = !DILocation(line: 290, column: 7, scope: !955)
!963 = !DILocation(line: 295, column: 7, scope: !955)
!964 = !DILocation(line: 301, column: 7, scope: !955)
!965 = !DILocation(line: 306, column: 7, scope: !955)
!966 = !DILocation(line: 307, column: 7, scope: !955)
!967 = !DILocation(line: 309, column: 7, scope: !955)
!968 = !DILocation(line: 314, column: 7, scope: !955)
!969 = !DILocation(line: 320, column: 7, scope: !955)
!970 = !DILocalVariable(name: "program", arg: 1, scope: !971, file: !97, line: 836, type: !137)
!971 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !97, file: !97, line: 836, type: !972, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !974)
!972 = !DISubroutineType(types: !973)
!973 = !{null, !137}
!974 = !{!970, !975, !982, !983, !985, !986}
!975 = !DILocalVariable(name: "infomap", scope: !971, file: !97, line: 838, type: !976)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !977, size: 896, elements: !322)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !978)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !971, file: !97, line: 838, size: 128, elements: !979)
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !978, file: !97, line: 838, baseType: !137, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !978, file: !97, line: 838, baseType: !137, size: 64, offset: 64)
!982 = !DILocalVariable(name: "node", scope: !971, file: !97, line: 848, type: !137)
!983 = !DILocalVariable(name: "map_prog", scope: !971, file: !97, line: 849, type: !984)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!985 = !DILocalVariable(name: "lc_messages", scope: !971, file: !97, line: 861, type: !137)
!986 = !DILocalVariable(name: "url_program", scope: !971, file: !97, line: 874, type: !137)
!987 = !DILocation(line: 0, scope: !971, inlinedAt: !988)
!988 = distinct !DILocation(line: 330, column: 7, scope: !955)
!989 = !{}
!990 = !DILocation(line: 857, column: 3, scope: !971, inlinedAt: !988)
!991 = !DILocation(line: 861, column: 29, scope: !971, inlinedAt: !988)
!992 = !DILocation(line: 862, column: 7, scope: !993, inlinedAt: !988)
!993 = distinct !DILexicalBlock(scope: !971, file: !97, line: 862, column: 7)
!994 = !DILocation(line: 862, column: 19, scope: !993, inlinedAt: !988)
!995 = !DILocation(line: 862, column: 22, scope: !993, inlinedAt: !988)
!996 = !DILocation(line: 862, column: 7, scope: !971, inlinedAt: !988)
!997 = !DILocation(line: 868, column: 7, scope: !998, inlinedAt: !988)
!998 = distinct !DILexicalBlock(scope: !993, file: !97, line: 863, column: 5)
!999 = !DILocation(line: 870, column: 5, scope: !998, inlinedAt: !988)
!1000 = !DILocation(line: 875, column: 3, scope: !971, inlinedAt: !988)
!1001 = !DILocation(line: 877, column: 3, scope: !971, inlinedAt: !988)
!1002 = !DILocation(line: 332, column: 3, scope: !941)
!1003 = !DISubprogram(name: "dcgettext", scope: !1004, file: !1004, line: 51, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1004 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!125, !137, !137, !105}
!1007 = !DISubprogram(name: "__fprintf_chk", scope: !1008, file: !1008, line: 93, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1008 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!105, !1011, !105, !1012, null}
!1011 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !226)
!1012 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !137)
!1013 = !DISubprogram(name: "__printf_chk", scope: !1008, file: !1008, line: 95, type: !1014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!105, !105, !1012, null}
!1016 = !DISubprogram(name: "fputs_unlocked", scope: !1017, file: !1017, line: 691, type: !1018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1017 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!105, !1012, !1011}
!1020 = !DILocation(line: 0, scope: !204)
!1021 = !DILocation(line: 581, column: 7, scope: !212)
!1022 = !{!1023, !1023, i64 0}
!1023 = !{!"int", !952, i64 0}
!1024 = !DILocation(line: 581, column: 19, scope: !212)
!1025 = !DILocation(line: 581, column: 7, scope: !204)
!1026 = !DILocation(line: 585, column: 26, scope: !211)
!1027 = !DILocation(line: 0, scope: !211)
!1028 = !DILocation(line: 586, column: 23, scope: !211)
!1029 = !DILocation(line: 586, column: 28, scope: !211)
!1030 = !DILocation(line: 586, column: 32, scope: !211)
!1031 = !{!952, !952, i64 0}
!1032 = !DILocation(line: 586, column: 38, scope: !211)
!1033 = !DILocalVariable(name: "__s1", arg: 1, scope: !1034, file: !1035, line: 1359, type: !137)
!1034 = distinct !DISubprogram(name: "streq", scope: !1035, file: !1035, line: 1359, type: !1036, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1038)
!1035 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!190, !137, !137}
!1038 = !{!1033, !1039}
!1039 = !DILocalVariable(name: "__s2", arg: 2, scope: !1034, file: !1035, line: 1359, type: !137)
!1040 = !DILocation(line: 0, scope: !1034, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 586, column: 41, scope: !211)
!1042 = !DILocation(line: 1361, column: 11, scope: !1034, inlinedAt: !1041)
!1043 = !DILocation(line: 1361, column: 10, scope: !1034, inlinedAt: !1041)
!1044 = !DILocation(line: 586, column: 19, scope: !211)
!1045 = !DILocation(line: 587, column: 5, scope: !211)
!1046 = !DILocation(line: 588, column: 7, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !204, file: !97, line: 588, column: 7)
!1048 = !DILocation(line: 588, column: 7, scope: !204)
!1049 = !DILocation(line: 590, column: 7, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1047, file: !97, line: 589, column: 5)
!1051 = !DILocation(line: 591, column: 7, scope: !1050)
!1052 = !DILocation(line: 595, column: 37, scope: !204)
!1053 = !DILocation(line: 595, column: 35, scope: !204)
!1054 = !DILocation(line: 596, column: 29, scope: !204)
!1055 = !DILocation(line: 597, column: 8, scope: !219)
!1056 = !DILocation(line: 597, column: 7, scope: !204)
!1057 = !DILocation(line: 604, column: 24, scope: !218)
!1058 = !DILocation(line: 604, column: 12, scope: !219)
!1059 = !DILocation(line: 0, scope: !217)
!1060 = !DILocation(line: 610, column: 16, scope: !217)
!1061 = !DILocation(line: 610, column: 7, scope: !217)
!1062 = !DILocation(line: 611, column: 21, scope: !217)
!1063 = !{!1064, !1064, i64 0}
!1064 = !{!"short", !952, i64 0}
!1065 = !DILocation(line: 611, column: 19, scope: !217)
!1066 = !DILocation(line: 611, column: 16, scope: !217)
!1067 = !DILocation(line: 610, column: 30, scope: !217)
!1068 = distinct !{!1068, !1061, !1062, !1069}
!1069 = !{!"llvm.loop.mustprogress"}
!1070 = !DILocation(line: 612, column: 18, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !217, file: !97, line: 612, column: 11)
!1072 = !DILocation(line: 612, column: 11, scope: !217)
!1073 = !DILocation(line: 620, column: 23, scope: !204)
!1074 = !DILocation(line: 625, column: 39, scope: !204)
!1075 = !DILocation(line: 626, column: 3, scope: !204)
!1076 = !DILocation(line: 626, column: 10, scope: !204)
!1077 = !DILocation(line: 626, column: 21, scope: !204)
!1078 = !DILocation(line: 628, column: 44, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !97, line: 628, column: 11)
!1080 = distinct !DILexicalBlock(scope: !204, file: !97, line: 627, column: 5)
!1081 = !DILocation(line: 628, column: 32, scope: !1079)
!1082 = !DILocation(line: 628, column: 49, scope: !1079)
!1083 = !DILocation(line: 628, column: 11, scope: !1080)
!1084 = !DILocation(line: 630, column: 11, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1080, file: !97, line: 630, column: 11)
!1086 = !DILocation(line: 630, column: 11, scope: !1080)
!1087 = !DILocation(line: 632, column: 26, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !97, line: 632, column: 15)
!1089 = distinct !DILexicalBlock(scope: !1085, file: !97, line: 631, column: 9)
!1090 = !DILocation(line: 632, column: 34, scope: !1088)
!1091 = !DILocation(line: 632, column: 37, scope: !1088)
!1092 = !DILocation(line: 632, column: 15, scope: !1089)
!1093 = !DILocation(line: 636, column: 16, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1089, file: !97, line: 636, column: 15)
!1095 = !DILocation(line: 636, column: 29, scope: !1094)
!1096 = !DILocation(line: 640, column: 16, scope: !1080)
!1097 = distinct !{!1097, !1075, !1098, !1069}
!1098 = !DILocation(line: 641, column: 5, scope: !204)
!1099 = !DILocation(line: 644, column: 3, scope: !204)
!1100 = !DILocation(line: 0, scope: !1034, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 648, column: 31, scope: !204)
!1102 = !DILocation(line: 0, scope: !1034, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 649, column: 31, scope: !204)
!1104 = !DILocation(line: 0, scope: !1034, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 650, column: 31, scope: !204)
!1106 = !DILocation(line: 0, scope: !1034, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 651, column: 31, scope: !204)
!1108 = !DILocation(line: 0, scope: !1034, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 652, column: 31, scope: !204)
!1110 = !DILocation(line: 0, scope: !1034, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 653, column: 31, scope: !204)
!1112 = !DILocation(line: 0, scope: !1034, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 654, column: 31, scope: !204)
!1114 = !DILocation(line: 0, scope: !1034, inlinedAt: !1115)
!1115 = distinct !DILocation(line: 655, column: 31, scope: !204)
!1116 = !DILocation(line: 0, scope: !1034, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 656, column: 31, scope: !204)
!1118 = !DILocation(line: 0, scope: !1034, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 657, column: 31, scope: !204)
!1120 = !DILocation(line: 663, column: 7, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !204, file: !97, line: 663, column: 7)
!1122 = !DILocation(line: 664, column: 7, scope: !1121)
!1123 = !DILocation(line: 664, column: 10, scope: !1121)
!1124 = !DILocation(line: 663, column: 7, scope: !204)
!1125 = !DILocation(line: 669, column: 7, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1121, file: !97, line: 665, column: 5)
!1127 = !DILocation(line: 671, column: 5, scope: !1126)
!1128 = !DILocation(line: 676, column: 7, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1121, file: !97, line: 673, column: 5)
!1130 = !DILocation(line: 679, column: 3, scope: !204)
!1131 = !DILocation(line: 683, column: 3, scope: !204)
!1132 = !DILocation(line: 686, column: 3, scope: !204)
!1133 = !DILocation(line: 688, column: 3, scope: !204)
!1134 = !DILocation(line: 691, column: 3, scope: !204)
!1135 = !DILocation(line: 695, column: 3, scope: !204)
!1136 = !DILocation(line: 696, column: 1, scope: !204)
!1137 = !DISubprogram(name: "setlocale", scope: !1138, file: !1138, line: 122, type: !1139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1138 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!125, !105, !137}
!1141 = !DISubprogram(name: "strncmp", scope: !1142, file: !1142, line: 159, type: !1143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1142 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!105, !137, !137, !134}
!1145 = !DISubprogram(name: "exit", scope: !1146, file: !1146, line: 624, type: !130, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1146 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1147 = !DISubprogram(name: "getenv", scope: !1146, file: !1146, line: 641, type: !1148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!125, !137}
!1150 = !DISubprogram(name: "strcmp", scope: !1142, file: !1142, line: 156, type: !1151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!105, !137, !137}
!1153 = !DISubprogram(name: "strspn", scope: !1142, file: !1142, line: 297, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!136, !137, !137}
!1156 = !DISubprogram(name: "strchr", scope: !1142, file: !1142, line: 246, type: !1157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!125, !137, !105}
!1159 = !DISubprogram(name: "__ctype_b_loc", scope: !110, file: !110, line: 79, type: !1160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!1162}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!1163 = !DISubprogram(name: "strcspn", scope: !1142, file: !1142, line: 293, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1164 = !DISubprogram(name: "fwrite_unlocked", scope: !1017, file: !1017, line: 704, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!134, !1167, !134, !134, !1011}
!1167 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1168)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1170 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 508, type: !1171, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1174)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!105, !105, !1173}
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!1174 = !{!1175, !1176, !1177, !1178, !1179, !1188, !1189, !1193, !1195, !1196}
!1175 = !DILocalVariable(name: "argc", arg: 1, scope: !1170, file: !2, line: 508, type: !105)
!1176 = !DILocalVariable(name: "argv", arg: 2, scope: !1170, file: !2, line: 508, type: !1173)
!1177 = !DILocalVariable(name: "timeout", scope: !1170, file: !2, line: 510, type: !187)
!1178 = !DILocalVariable(name: "c", scope: !1170, file: !2, line: 511, type: !105)
!1179 = !DILocalVariable(name: "orig_set", scope: !1170, file: !2, line: 586, type: !1180)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1181, line: 7, baseType: !1182)
!1181 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "c2b978aaf49d5c0e2b1e9c2e1b7f7848")
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !1183, line: 8, baseType: !1184)
!1183 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "acc6b14c0967857fec362a8d433e1cf2")
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1183, line: 5, size: 1024, elements: !1185)
!1185 = !{!1186}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !1184, file: !1183, line: 7, baseType: !1187, size: 1024)
!1187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 1024, elements: !363)
!1188 = !DILocalVariable(name: "timeout_pid", scope: !1170, file: !2, line: 593, type: !181)
!1189 = !DILocalVariable(name: "exit_status", scope: !1190, file: !2, line: 632, type: !105)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 607, column: 5)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 606, column: 12)
!1192 = distinct !DILexicalBlock(scope: !1170, file: !2, line: 601, column: 7)
!1193 = !DILocalVariable(name: "wait_result", scope: !1194, file: !2, line: 638, type: !181)
!1194 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 637, column: 5)
!1195 = !DILocalVariable(name: "status", scope: !1194, file: !2, line: 639, type: !105)
!1196 = !DILocalVariable(name: "sig", scope: !1197, file: !2, line: 662, type: !105)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 661, column: 13)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 660, column: 20)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 658, column: 15)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 657, column: 9)
!1201 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 650, column: 11)
!1202 = distinct !DIAssignID()
!1203 = distinct !DIAssignID()
!1204 = distinct !DIAssignID()
!1205 = distinct !DIAssignID()
!1206 = distinct !DIAssignID()
!1207 = distinct !DIAssignID()
!1208 = distinct !DIAssignID()
!1209 = distinct !DIAssignID()
!1210 = !DILocation(line: 0, scope: !1170)
!1211 = distinct !DIAssignID()
!1212 = !DILocation(line: 0, scope: !1194)
!1213 = !DILocation(line: 514, column: 21, scope: !1170)
!1214 = !DILocation(line: 514, column: 3, scope: !1170)
!1215 = !DILocation(line: 515, column: 3, scope: !1170)
!1216 = !DILocation(line: 516, column: 3, scope: !1170)
!1217 = !DILocation(line: 517, column: 3, scope: !1170)
!1218 = !DILocalVariable(name: "status", arg: 1, scope: !1219, file: !97, line: 102, type: !105)
!1219 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !97, file: !97, line: 102, type: !130, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1220)
!1220 = !{!1218}
!1221 = !DILocation(line: 0, scope: !1219, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 519, column: 3, scope: !1170)
!1223 = !DILocation(line: 105, column: 18, scope: !1224, inlinedAt: !1222)
!1224 = distinct !DILexicalBlock(scope: !1219, file: !97, line: 104, column: 7)
!1225 = !DILocation(line: 520, column: 3, scope: !1170)
!1226 = !DILocation(line: 522, column: 3, scope: !1170)
!1227 = !DILocation(line: 522, column: 15, scope: !1170)
!1228 = !DILocation(line: 528, column: 22, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !2, line: 526, column: 9)
!1230 = distinct !DILexicalBlock(scope: !1170, file: !2, line: 524, column: 5)
!1231 = !DILocation(line: 529, column: 11, scope: !1229)
!1232 = !DILocation(line: 532, column: 40, scope: !1229)
!1233 = !DILocation(line: 532, column: 24, scope: !1229)
!1234 = !DILocation(line: 532, column: 22, scope: !1229)
!1235 = !{!1236, !1236, i64 0}
!1236 = !{!"double", !952, i64 0}
!1237 = !DILocation(line: 533, column: 11, scope: !1229)
!1238 = !DILocation(line: 536, column: 27, scope: !1229)
!1239 = !DILocation(line: 537, column: 11, scope: !1229)
!1240 = !DILocation(line: 540, column: 38, scope: !1229)
!1241 = !DILocation(line: 540, column: 25, scope: !1229)
!1242 = !DILocation(line: 540, column: 23, scope: !1229)
!1243 = !DILocation(line: 541, column: 27, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1229, file: !2, line: 541, column: 15)
!1245 = !DILocation(line: 541, column: 15, scope: !1229)
!1246 = distinct !{!1246, !1226, !1247, !1069}
!1247 = !DILocation(line: 557, column: 5, scope: !1170)
!1248 = !DILocation(line: 542, column: 13, scope: !1244)
!1249 = !DILocation(line: 546, column: 19, scope: !1229)
!1250 = !DILocation(line: 547, column: 11, scope: !1229)
!1251 = !DILocation(line: 549, column: 9, scope: !1229)
!1252 = !DILocation(line: 551, column: 9, scope: !1229)
!1253 = !DILocation(line: 554, column: 11, scope: !1229)
!1254 = !DILocation(line: 559, column: 14, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1170, file: !2, line: 559, column: 7)
!1256 = !DILocation(line: 559, column: 12, scope: !1255)
!1257 = !DILocation(line: 559, column: 21, scope: !1255)
!1258 = !DILocation(line: 559, column: 7, scope: !1170)
!1259 = !DILocation(line: 560, column: 5, scope: !1255)
!1260 = !DILocation(line: 562, column: 40, scope: !1170)
!1261 = !DILocation(line: 562, column: 29, scope: !1170)
!1262 = !DILocation(line: 562, column: 13, scope: !1170)
!1263 = !DILocation(line: 564, column: 11, scope: !1170)
!1264 = !DILocation(line: 564, column: 8, scope: !1170)
!1265 = !DILocation(line: 565, column: 13, scope: !1170)
!1266 = !DILocation(line: 565, column: 11, scope: !1170)
!1267 = !DILocation(line: 571, column: 8, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1170, file: !2, line: 571, column: 7)
!1269 = !DILocation(line: 571, column: 7, scope: !1170)
!1270 = !DILocation(line: 572, column: 5, scope: !1268)
!1271 = !DILocation(line: 576, column: 20, scope: !1170)
!1272 = !DILocalVariable(name: "sa", scope: !1273, file: !2, line: 439, type: !1280)
!1273 = distinct !DISubprogram(name: "install_cleanup", scope: !2, file: !2, line: 437, type: !130, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1274)
!1274 = !{!1275, !1272, !1276, !1278}
!1275 = !DILocalVariable(name: "sigterm", arg: 1, scope: !1273, file: !2, line: 437, type: !105)
!1276 = !DILocalVariable(name: "i", scope: !1277, file: !2, line: 445, type: !105)
!1277 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 445, column: 3)
!1278 = !DILocalVariable(name: "s", scope: !1279, file: !2, line: 450, type: !105)
!1279 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 450, column: 3)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1281, line: 27, size: 1216, elements: !1282)
!1281 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "", checksumkind: CSK_MD5, checksum: "95401d18e887df415f59d7a2cb411c28")
!1282 = !{!1283, !1364, !1365, !1366}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !1280, file: !1281, line: 38, baseType: !1284, size: 64)
!1284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1280, file: !1281, line: 31, size: 64, elements: !1285)
!1285 = !{!1286, !1287}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1284, file: !1281, line: 34, baseType: !127, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !1284, file: !1281, line: 36, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !105, !1291, !126}
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !1293, line: 124, baseType: !1294)
!1293 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h", directory: "", checksumkind: CSK_MD5, checksum: "023cf7b0ef843da262cf07900eda0ac5")
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1293, line: 36, size: 1024, elements: !1295)
!1295 = !{!1296, !1297, !1298, !1299, !1300}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1294, file: !1293, line: 38, baseType: !105, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1294, file: !1293, line: 40, baseType: !105, size: 32, offset: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1294, file: !1293, line: 42, baseType: !105, size: 32, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1294, file: !1293, line: 48, baseType: !105, size: 32, offset: 96)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1294, file: !1293, line: 123, baseType: !1301, size: 896, offset: 128)
!1301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1294, file: !1293, line: 51, size: 896, elements: !1302)
!1302 = !{!1303, !1305, !1311, !1323, !1329, !1338, !1353, !1358}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !1301, file: !1293, line: 53, baseType: !1304, size: 896)
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 896, elements: !734)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1301, file: !1293, line: 60, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1301, file: !1293, line: 56, size: 64, elements: !1307)
!1307 = !{!1308, !1309}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1306, file: !1293, line: 58, baseType: !183, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1306, file: !1293, line: 59, baseType: !1310, size: 32, offset: 32)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !184, line: 146, baseType: !98)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1301, file: !1293, line: 68, baseType: !1312, size: 128)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1301, file: !1293, line: 63, size: 128, elements: !1313)
!1313 = !{!1314, !1315, !1316}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !1312, file: !1293, line: 65, baseType: !105, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !1312, file: !1293, line: 66, baseType: !105, size: 32, offset: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1312, file: !1293, line: 67, baseType: !1317, size: 64, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigval_t", file: !1318, line: 30, baseType: !1319)
!1318 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h", directory: "", checksumkind: CSK_MD5, checksum: "bc7605d16e396c16f725f8da13f6eb20")
!1319 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1318, line: 24, size: 64, elements: !1320)
!1320 = !{!1321, !1322}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1319, file: !1318, line: 26, baseType: !105, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1319, file: !1318, line: 27, baseType: !126, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1301, file: !1293, line: 76, baseType: !1324, size: 128)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1301, file: !1293, line: 71, size: 128, elements: !1325)
!1325 = !{!1326, !1327, !1328}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1324, file: !1293, line: 73, baseType: !183, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1324, file: !1293, line: 74, baseType: !1310, size: 32, offset: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1324, file: !1293, line: 75, baseType: !1317, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1301, file: !1293, line: 86, baseType: !1330, size: 256)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1301, file: !1293, line: 79, size: 256, elements: !1331)
!1331 = !{!1332, !1333, !1334, !1335, !1337}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1330, file: !1293, line: 81, baseType: !183, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1330, file: !1293, line: 82, baseType: !1310, size: 32, offset: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !1330, file: !1293, line: 83, baseType: !105, size: 32, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !1330, file: !1293, line: 84, baseType: !1336, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !184, line: 156, baseType: !253)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !1330, file: !1293, line: 85, baseType: !1336, size: 64, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1301, file: !1293, line: 105, baseType: !1339, size: 256)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1301, file: !1293, line: 89, size: 256, elements: !1340)
!1340 = !{!1341, !1342, !1344}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !1339, file: !1293, line: 91, baseType: !126, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !1339, file: !1293, line: 93, baseType: !1343, size: 16, offset: 64)
!1343 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_bounds", scope: !1339, file: !1293, line: 104, baseType: !1345, size: 128, offset: 128)
!1345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1339, file: !1293, line: 94, size: 128, elements: !1346)
!1346 = !{!1347, !1352}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1345, file: !1293, line: 101, baseType: !1348, size: 128)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1345, file: !1293, line: 97, size: 128, elements: !1349)
!1349 = !{!1350, !1351}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1348, file: !1293, line: 99, baseType: !126, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1348, file: !1293, line: 100, baseType: !126, size: 64, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1345, file: !1293, line: 103, baseType: !560, size: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1301, file: !1293, line: 112, baseType: !1354, size: 128)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1301, file: !1293, line: 108, size: 128, elements: !1355)
!1355 = !{!1356, !1357}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !1354, file: !1293, line: 110, baseType: !253, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !1354, file: !1293, line: 111, baseType: !105, size: 32, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1301, file: !1293, line: 121, baseType: !1359, size: 128)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1301, file: !1293, line: 116, size: 128, elements: !1360)
!1360 = !{!1361, !1362, !1363}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1359, file: !1293, line: 118, baseType: !126, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1359, file: !1293, line: 119, baseType: !105, size: 32, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1359, file: !1293, line: 120, baseType: !98, size: 32, offset: 96)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1280, file: !1281, line: 46, baseType: !1182, size: 1024, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1280, file: !1281, line: 49, baseType: !105, size: 32, offset: 1088)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1280, file: !1281, line: 52, baseType: !531, size: 64, offset: 1152)
!1367 = !DILocation(line: 0, scope: !1273, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 576, column: 3, scope: !1170)
!1369 = !DILocation(line: 439, column: 3, scope: !1273, inlinedAt: !1368)
!1370 = !DILocation(line: 440, column: 20, scope: !1273, inlinedAt: !1368)
!1371 = !DILocation(line: 440, column: 3, scope: !1273, inlinedAt: !1368)
!1372 = !DILocation(line: 441, column: 17, scope: !1273, inlinedAt: !1368)
!1373 = distinct !DIAssignID()
!1374 = !DILocation(line: 442, column: 6, scope: !1273, inlinedAt: !1368)
!1375 = !DILocation(line: 442, column: 15, scope: !1273, inlinedAt: !1368)
!1376 = !{!1377, !1023, i64 136}
!1377 = !{!"sigaction", !952, i64 0, !1378, i64 8, !1023, i64 136, !951, i64 144}
!1378 = !{!"", !952, i64 0}
!1379 = distinct !DIAssignID()
!1380 = !DILocation(line: 0, scope: !1277, inlinedAt: !1368)
!1381 = !DILocalVariable(name: "old_sa", scope: !1382, file: !2, line: 430, type: !1280)
!1382 = distinct !DISubprogram(name: "sig_needs_handling", scope: !2, file: !2, line: 422, type: !1383, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1385)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!190, !105, !105}
!1385 = !{!1386, !1387, !1381, !1388}
!1386 = !DILocalVariable(name: "sig", arg: 1, scope: !1382, file: !2, line: 422, type: !105)
!1387 = !DILocalVariable(name: "sigterm", arg: 2, scope: !1382, file: !2, line: 422, type: !105)
!1388 = !DILocalVariable(name: "ret", scope: !1382, file: !2, line: 432, type: !190)
!1389 = !DILocation(line: 0, scope: !1382, inlinedAt: !1390)
!1390 = distinct !DILocation(line: 446, column: 9, scope: !1391, inlinedAt: !1368)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 446, column: 9)
!1392 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 445, column: 3)
!1393 = !DILocation(line: 447, column: 7, scope: !1391, inlinedAt: !1368)
!1394 = !DILocation(line: 445, column: 3, scope: !1277, inlinedAt: !1368)
!1395 = !DILocation(line: 450, column: 16, scope: !1279, inlinedAt: !1368)
!1396 = !DILocation(line: 0, scope: !1279, inlinedAt: !1368)
!1397 = !DILocation(line: 450, column: 31, scope: !1398, inlinedAt: !1368)
!1398 = distinct !DILexicalBlock(scope: !1279, file: !2, line: 450, column: 3)
!1399 = !DILocation(line: 450, column: 28, scope: !1398, inlinedAt: !1368)
!1400 = !DILocation(line: 450, column: 3, scope: !1279, inlinedAt: !1368)
!1401 = !DILocation(line: 446, column: 29, scope: !1391, inlinedAt: !1368)
!1402 = !DILocation(line: 424, column: 22, scope: !1403, inlinedAt: !1390)
!1403 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 424, column: 7)
!1404 = !DILocation(line: 430, column: 3, scope: !1382, inlinedAt: !1390)
!1405 = !DILocation(line: 431, column: 3, scope: !1382, inlinedAt: !1390)
!1406 = !DILocation(line: 432, column: 21, scope: !1382, inlinedAt: !1390)
!1407 = !DILocation(line: 432, column: 32, scope: !1382, inlinedAt: !1390)
!1408 = !DILocation(line: 434, column: 1, scope: !1382, inlinedAt: !1390)
!1409 = !DILocation(line: 446, column: 9, scope: !1392, inlinedAt: !1368)
!1410 = !DILocation(line: 445, column: 44, scope: !1392, inlinedAt: !1368)
!1411 = !DILocation(line: 445, column: 21, scope: !1392, inlinedAt: !1368)
!1412 = distinct !{!1412, !1394, !1413, !1069, !1414}
!1413 = !DILocation(line: 447, column: 40, scope: !1277, inlinedAt: !1368)
!1414 = !{!"llvm.loop.peeled.count", i32 1}
!1415 = !DILocation(line: 0, scope: !1382, inlinedAt: !1416)
!1416 = distinct !DILocation(line: 451, column: 9, scope: !1417, inlinedAt: !1368)
!1417 = distinct !DILexicalBlock(scope: !1398, file: !2, line: 451, column: 9)
!1418 = !DILocation(line: 424, column: 11, scope: !1403, inlinedAt: !1416)
!1419 = !DILocation(line: 424, column: 22, scope: !1403, inlinedAt: !1416)
!1420 = !DILocation(line: 430, column: 3, scope: !1382, inlinedAt: !1416)
!1421 = !DILocation(line: 431, column: 3, scope: !1382, inlinedAt: !1416)
!1422 = !DILocation(line: 432, column: 21, scope: !1382, inlinedAt: !1416)
!1423 = !DILocation(line: 432, column: 32, scope: !1382, inlinedAt: !1416)
!1424 = !DILocation(line: 434, column: 1, scope: !1382, inlinedAt: !1416)
!1425 = !DILocation(line: 451, column: 9, scope: !1398, inlinedAt: !1368)
!1426 = !DILocation(line: 452, column: 7, scope: !1417, inlinedAt: !1368)
!1427 = !DILocation(line: 450, column: 42, scope: !1398, inlinedAt: !1368)
!1428 = distinct !{!1428, !1400, !1429, !1069}
!1429 = !DILocation(line: 452, column: 30, scope: !1279, inlinedAt: !1368)
!1430 = !DILocation(line: 454, column: 3, scope: !1273, inlinedAt: !1368)
!1431 = !DILocation(line: 455, column: 1, scope: !1273, inlinedAt: !1368)
!1432 = !DILocation(line: 577, column: 3, scope: !1170)
!1433 = !DILocation(line: 578, column: 3, scope: !1170)
!1434 = !DILocalVariable(name: "sa", scope: !1435, file: !2, line: 406, type: !1280)
!1435 = distinct !DISubprogram(name: "install_sigchld", scope: !2, file: !2, line: 404, type: !532, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1436)
!1436 = !{!1434}
!1437 = !DILocation(line: 0, scope: !1435, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 579, column: 3, scope: !1170)
!1439 = !DILocation(line: 406, column: 3, scope: !1435, inlinedAt: !1438)
!1440 = !DILocation(line: 407, column: 20, scope: !1435, inlinedAt: !1438)
!1441 = !DILocation(line: 407, column: 3, scope: !1435, inlinedAt: !1438)
!1442 = !DILocation(line: 408, column: 17, scope: !1435, inlinedAt: !1438)
!1443 = distinct !DIAssignID()
!1444 = !DILocation(line: 409, column: 6, scope: !1435, inlinedAt: !1438)
!1445 = !DILocation(line: 409, column: 15, scope: !1435, inlinedAt: !1438)
!1446 = distinct !DIAssignID()
!1447 = !DILocation(line: 412, column: 3, scope: !1435, inlinedAt: !1438)
!1448 = !DILocation(line: 416, column: 3, scope: !1435, inlinedAt: !1438)
!1449 = !DILocation(line: 417, column: 1, scope: !1435, inlinedAt: !1438)
!1450 = !DILocation(line: 583, column: 3, scope: !1170)
!1451 = !DILocation(line: 586, column: 3, scope: !1170)
!1452 = !DILocation(line: 587, column: 27, scope: !1170)
!1453 = !DILocalVariable(name: "block_set", scope: !1454, file: !2, line: 465, type: !1180)
!1454 = distinct !DISubprogram(name: "block_cleanup_and_chld", scope: !2, file: !2, line: 463, type: !1455, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1458)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{null, !105, !1457}
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1458 = !{!1459, !1460, !1453, !1461, !1463}
!1459 = !DILocalVariable(name: "sigterm", arg: 1, scope: !1454, file: !2, line: 463, type: !105)
!1460 = !DILocalVariable(name: "old_set", arg: 2, scope: !1454, file: !2, line: 463, type: !1457)
!1461 = !DILocalVariable(name: "i", scope: !1462, file: !2, line: 468, type: !105)
!1462 = distinct !DILexicalBlock(scope: !1454, file: !2, line: 468, column: 3)
!1463 = !DILocalVariable(name: "s", scope: !1464, file: !2, line: 472, type: !105)
!1464 = distinct !DILexicalBlock(scope: !1454, file: !2, line: 472, column: 3)
!1465 = !DILocation(line: 0, scope: !1454, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 587, column: 3, scope: !1170)
!1467 = !DILocation(line: 465, column: 3, scope: !1454, inlinedAt: !1466)
!1468 = !DILocation(line: 466, column: 3, scope: !1454, inlinedAt: !1466)
!1469 = !DILocation(line: 0, scope: !1462, inlinedAt: !1466)
!1470 = !DILocation(line: 0, scope: !1382, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 469, column: 9, scope: !1472, inlinedAt: !1466)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !2, line: 469, column: 9)
!1473 = distinct !DILexicalBlock(scope: !1462, file: !2, line: 468, column: 3)
!1474 = !DILocation(line: 470, column: 7, scope: !1472, inlinedAt: !1466)
!1475 = !DILocation(line: 468, column: 3, scope: !1462, inlinedAt: !1466)
!1476 = !DILocation(line: 472, column: 16, scope: !1464, inlinedAt: !1466)
!1477 = !DILocation(line: 0, scope: !1464, inlinedAt: !1466)
!1478 = !DILocation(line: 472, column: 31, scope: !1479, inlinedAt: !1466)
!1479 = distinct !DILexicalBlock(scope: !1464, file: !2, line: 472, column: 3)
!1480 = !DILocation(line: 472, column: 28, scope: !1479, inlinedAt: !1466)
!1481 = !DILocation(line: 472, column: 3, scope: !1464, inlinedAt: !1466)
!1482 = !DILocation(line: 469, column: 29, scope: !1472, inlinedAt: !1466)
!1483 = !DILocation(line: 424, column: 22, scope: !1403, inlinedAt: !1471)
!1484 = !DILocation(line: 430, column: 3, scope: !1382, inlinedAt: !1471)
!1485 = !DILocation(line: 431, column: 3, scope: !1382, inlinedAt: !1471)
!1486 = !DILocation(line: 432, column: 21, scope: !1382, inlinedAt: !1471)
!1487 = !DILocation(line: 432, column: 32, scope: !1382, inlinedAt: !1471)
!1488 = !DILocation(line: 434, column: 1, scope: !1382, inlinedAt: !1471)
!1489 = !DILocation(line: 469, column: 9, scope: !1473, inlinedAt: !1466)
!1490 = !DILocation(line: 468, column: 44, scope: !1473, inlinedAt: !1466)
!1491 = !DILocation(line: 468, column: 21, scope: !1473, inlinedAt: !1466)
!1492 = distinct !{!1492, !1475, !1493, !1069, !1414}
!1493 = !DILocation(line: 470, column: 41, scope: !1462, inlinedAt: !1466)
!1494 = !DILocation(line: 476, column: 3, scope: !1454, inlinedAt: !1466)
!1495 = !DILocation(line: 478, column: 3, scope: !1454, inlinedAt: !1466)
!1496 = !DILocation(line: 480, column: 7, scope: !1497, inlinedAt: !1466)
!1497 = distinct !DILexicalBlock(scope: !1454, file: !2, line: 480, column: 7)
!1498 = !DILocation(line: 480, column: 52, scope: !1497, inlinedAt: !1466)
!1499 = !DILocation(line: 480, column: 7, scope: !1454, inlinedAt: !1466)
!1500 = !DILocation(line: 0, scope: !1382, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 473, column: 9, scope: !1502, inlinedAt: !1466)
!1502 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 473, column: 9)
!1503 = !DILocation(line: 424, column: 11, scope: !1403, inlinedAt: !1501)
!1504 = !DILocation(line: 424, column: 22, scope: !1403, inlinedAt: !1501)
!1505 = !DILocation(line: 430, column: 3, scope: !1382, inlinedAt: !1501)
!1506 = !DILocation(line: 431, column: 3, scope: !1382, inlinedAt: !1501)
!1507 = !DILocation(line: 432, column: 21, scope: !1382, inlinedAt: !1501)
!1508 = !DILocation(line: 432, column: 32, scope: !1382, inlinedAt: !1501)
!1509 = !DILocation(line: 434, column: 1, scope: !1382, inlinedAt: !1501)
!1510 = !DILocation(line: 473, column: 9, scope: !1479, inlinedAt: !1466)
!1511 = !DILocation(line: 474, column: 7, scope: !1502, inlinedAt: !1466)
!1512 = !DILocation(line: 472, column: 42, scope: !1479, inlinedAt: !1466)
!1513 = distinct !{!1513, !1481, !1514, !1069}
!1514 = !DILocation(line: 474, column: 31, scope: !1464, inlinedAt: !1466)
!1515 = !DILocation(line: 481, column: 5, scope: !1497, inlinedAt: !1466)
!1516 = !DILocation(line: 482, column: 1, scope: !1454, inlinedAt: !1466)
!1517 = !DILocation(line: 593, column: 23, scope: !1170)
!1518 = !DILocation(line: 600, column: 19, scope: !1170)
!1519 = !DILocation(line: 600, column: 17, scope: !1170)
!1520 = !DILocation(line: 601, column: 7, scope: !1170)
!1521 = !DILocation(line: 603, column: 7, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 602, column: 5)
!1523 = !DILocation(line: 604, column: 7, scope: !1522)
!1524 = !DILocation(line: 610, column: 32, scope: !1190)
!1525 = !DILocation(line: 610, column: 7, scope: !1190)
!1526 = !DILocation(line: 615, column: 11, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 615, column: 11)
!1528 = !DILocation(line: 615, column: 22, scope: !1527)
!1529 = !DILocation(line: 615, column: 11, scope: !1190)
!1530 = !DILocation(line: 619, column: 11, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 619, column: 11)
!1532 = !DILocation(line: 619, column: 54, scope: !1531)
!1533 = !DILocation(line: 619, column: 11, scope: !1190)
!1534 = !DILocation(line: 621, column: 11, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 620, column: 9)
!1536 = !DILocation(line: 622, column: 11, scope: !1535)
!1537 = !DILocation(line: 626, column: 7, scope: !1190)
!1538 = !DILocation(line: 627, column: 7, scope: !1190)
!1539 = !DILocation(line: 629, column: 15, scope: !1190)
!1540 = !DILocation(line: 629, column: 7, scope: !1190)
!1541 = !DILocation(line: 632, column: 25, scope: !1190)
!1542 = !DILocation(line: 632, column: 31, scope: !1190)
!1543 = !DILocation(line: 0, scope: !1190)
!1544 = !DILocation(line: 633, column: 7, scope: !1190)
!1545 = !DILocation(line: 639, column: 7, scope: !1194)
!1546 = !DILocation(line: 641, column: 7, scope: !1194)
!1547 = !DILocation(line: 647, column: 38, scope: !1194)
!1548 = !DILocation(line: 647, column: 29, scope: !1194)
!1549 = !DILocation(line: 647, column: 72, scope: !1194)
!1550 = !DILocation(line: 647, column: 7, scope: !1194)
!1551 = !DILocation(line: 648, column: 9, scope: !1194)
!1552 = distinct !{!1552, !1550, !1553, !1069}
!1553 = !DILocation(line: 648, column: 30, scope: !1194)
!1554 = !DILocation(line: 650, column: 23, scope: !1201)
!1555 = !DILocation(line: 650, column: 11, scope: !1194)
!1556 = !DILocation(line: 653, column: 11, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 651, column: 9)
!1558 = distinct !DIAssignID()
!1559 = !DILocation(line: 655, column: 9, scope: !1557)
!1560 = !DILocation(line: 658, column: 15, scope: !1199)
!1561 = !DILocation(line: 658, column: 15, scope: !1200)
!1562 = distinct !DIAssignID()
!1563 = !DILocation(line: 659, column: 13, scope: !1199)
!1564 = !DILocation(line: 660, column: 20, scope: !1198)
!1565 = !DILocation(line: 660, column: 20, scope: !1199)
!1566 = !DILocation(line: 0, scope: !1197)
!1567 = !DILocation(line: 663, column: 19, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1197, file: !2, line: 663, column: 19)
!1569 = !DILocation(line: 663, column: 19, scope: !1197)
!1570 = !DILocation(line: 664, column: 17, scope: !1568)
!1571 = !DILocation(line: 665, column: 20, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1197, file: !2, line: 665, column: 19)
!1573 = !DILocation(line: 665, column: 30, scope: !1572)
!1574 = !DILocation(line: 490, column: 7, scope: !1575, inlinedAt: !1579)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !2, line: 490, column: 7)
!1576 = distinct !DISubprogram(name: "disable_core_dumps", scope: !2, file: !2, line: 487, type: !1577, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!190}
!1579 = distinct !DILocation(line: 665, column: 33, scope: !1572)
!1580 = !DILocation(line: 490, column: 34, scope: !1575, inlinedAt: !1579)
!1581 = !DILocation(line: 490, column: 7, scope: !1576, inlinedAt: !1579)
!1582 = !DILocation(line: 503, column: 3, scope: !1576, inlinedAt: !1579)
!1583 = !DILocation(line: 665, column: 19, scope: !1197)
!1584 = !DILocation(line: 668, column: 19, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1572, file: !2, line: 666, column: 17)
!1586 = !DILocation(line: 669, column: 19, scope: !1585)
!1587 = !DILocation(line: 670, column: 19, scope: !1585)
!1588 = !DILocation(line: 671, column: 17, scope: !1585)
!1589 = !DILocation(line: 675, column: 19, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1197, file: !2, line: 675, column: 19)
!1591 = !DILocation(line: 675, column: 29, scope: !1590)
!1592 = !DILocation(line: 676, column: 33, scope: !1590)
!1593 = !DILocation(line: 676, column: 17, scope: !1590)
!1594 = !DILocation(line: 677, column: 28, scope: !1197)
!1595 = distinct !DIAssignID()
!1596 = !DILocation(line: 678, column: 13, scope: !1197)
!1597 = !DILocation(line: 682, column: 15, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 680, column: 13)
!1599 = distinct !DIAssignID()
!1600 = !DILocation(line: 687, column: 11, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 687, column: 11)
!1602 = !DILocation(line: 687, column: 21, scope: !1601)
!1603 = !DILocation(line: 690, column: 5, scope: !1191)
!1604 = !DILocation(line: 0, scope: !1192)
!1605 = !DILocation(line: 691, column: 1, scope: !1170)
!1606 = !DISubprogram(name: "bindtextdomain", scope: !1004, file: !1004, line: 86, type: !1607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!125, !137, !137}
!1609 = !DISubprogram(name: "textdomain", scope: !1004, file: !1004, line: 82, type: !1148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1610 = !DISubprogram(name: "atexit", scope: !1146, file: !1146, line: 602, type: !1611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!105, !531}
!1613 = !DISubprogram(name: "getopt_long", scope: !447, file: !447, line: 66, type: !1614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!105, !105, !1616, !137, !1618, !452}
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!1619 = distinct !DISubprogram(name: "parse_duration", scope: !2, file: !2, line: 371, type: !1620, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1622)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!187, !137}
!1622 = !{!1623, !1624, !1625, !1626}
!1623 = !DILocalVariable(name: "str", arg: 1, scope: !1619, file: !2, line: 371, type: !137)
!1624 = !DILocalVariable(name: "ep", scope: !1619, file: !2, line: 373, type: !125)
!1625 = !DILocalVariable(name: "duration", scope: !1619, file: !2, line: 375, type: !187)
!1626 = !DILocalVariable(name: "s", scope: !1619, file: !2, line: 376, type: !187)
!1627 = distinct !DIAssignID()
!1628 = !DILocation(line: 0, scope: !1619)
!1629 = !DILocation(line: 373, column: 3, scope: !1619)
!1630 = !DILocation(line: 374, column: 3, scope: !1619)
!1631 = !DILocation(line: 374, column: 9, scope: !1619)
!1632 = !DILocation(line: 375, column: 21, scope: !1619)
!1633 = !DILocation(line: 376, column: 41, scope: !1619)
!1634 = !DILocalVariable(name: "c", arg: 1, scope: !1635, file: !1636, line: 54, type: !187)
!1635 = distinct !DISubprogram(name: "dtimespec_bound", scope: !1636, file: !1636, line: 54, type: !1637, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1639)
!1636 = !DIFile(filename: "./lib/dtimespec-bound.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1c1d0447ed5234421679b9baaf454c86")
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!187, !187, !105}
!1639 = !{!1634, !1640, !1641}
!1640 = !DILocalVariable(name: "err", arg: 2, scope: !1635, file: !1636, line: 54, type: !105)
!1641 = !DILocalVariable(name: "phi", scope: !1635, file: !1636, line: 70, type: !187)
!1642 = !DILocation(line: 0, scope: !1635, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 376, column: 14, scope: !1619)
!1644 = !DILocation(line: 60, column: 11, scope: !1645, inlinedAt: !1643)
!1645 = distinct !DILexicalBlock(scope: !1635, file: !1636, line: 60, column: 7)
!1646 = !DILocation(line: 60, column: 21, scope: !1645, inlinedAt: !1643)
!1647 = !DILocation(line: 378, column: 7, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1619, file: !2, line: 378, column: 7)
!1649 = !DILocation(line: 378, column: 10, scope: !1648)
!1650 = !DILocation(line: 380, column: 7, scope: !1648)
!1651 = !DILocation(line: 382, column: 11, scope: !1648)
!1652 = !DILocation(line: 382, column: 15, scope: !1648)
!1653 = !DILocation(line: 382, column: 23, scope: !1648)
!1654 = !DILocation(line: 382, column: 18, scope: !1648)
!1655 = !DILocation(line: 384, column: 7, scope: !1648)
!1656 = !DILocalVariable(name: "x", arg: 1, scope: !1657, file: !2, line: 342, type: !1660)
!1657 = distinct !DISubprogram(name: "apply_time_suffix", scope: !2, file: !2, line: 342, type: !1658, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1661)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!190, !1660, !4}
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!1661 = !{!1656, !1662, !1663}
!1662 = !DILocalVariable(name: "suffix_char", arg: 2, scope: !1657, file: !2, line: 342, type: !4)
!1663 = !DILocalVariable(name: "multiplier", scope: !1657, file: !2, line: 344, type: !105)
!1664 = !DILocation(line: 0, scope: !1657, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 384, column: 11, scope: !1648)
!1666 = !DILocation(line: 346, column: 3, scope: !1657, inlinedAt: !1665)
!1667 = !DILocation(line: 354, column: 7, scope: !1668, inlinedAt: !1665)
!1668 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 347, column: 5)
!1669 = !DILocation(line: 357, column: 7, scope: !1668, inlinedAt: !1665)
!1670 = !DILocation(line: 360, column: 7, scope: !1668, inlinedAt: !1665)
!1671 = !DILocation(line: 386, column: 7, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1648, file: !2, line: 385, column: 5)
!1673 = !DILocation(line: 387, column: 7, scope: !1672)
!1674 = !DILocation(line: 0, scope: !1668, inlinedAt: !1665)
!1675 = !DILocation(line: 365, column: 28, scope: !1657, inlinedAt: !1665)
!1676 = !DILocation(line: 0, scope: !1635, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 365, column: 8, scope: !1657, inlinedAt: !1665)
!1678 = !DILocation(line: 60, column: 21, scope: !1645, inlinedAt: !1677)
!1679 = !DILocation(line: 391, column: 1, scope: !1619)
!1680 = !DILocation(line: 390, column: 3, scope: !1619)
!1681 = !DISubprogram(name: "setpgid", scope: !1682, file: !1682, line: 668, type: !1683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1682 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!105, !183, !183}
!1685 = !DISubprogram(name: "sigemptyset", scope: !128, file: !128, line: 199, type: !1686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!105, !1457}
!1688 = distinct !DISubprogram(name: "cleanup", scope: !2, file: !2, line: 204, type: !130, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1689)
!1689 = !{!1690, !1691, !1696}
!1690 = !DILocalVariable(name: "sig", arg: 1, scope: !1688, file: !2, line: 204, type: !105)
!1691 = !DILocalVariable(name: "saved_errno", scope: !1692, file: !2, line: 221, type: !105)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 220, column: 9)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !2, line: 219, column: 11)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !2, line: 218, column: 5)
!1695 = distinct !DILexicalBlock(scope: !1688, file: !2, line: 217, column: 7)
!1696 = !DILocalVariable(name: "signame", scope: !1697, file: !2, line: 234, type: !461)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !2, line: 233, column: 9)
!1698 = distinct !DILexicalBlock(scope: !1694, file: !2, line: 232, column: 11)
!1699 = distinct !DIAssignID()
!1700 = !DILocation(line: 0, scope: !1697)
!1701 = !DILocation(line: 0, scope: !1688)
!1702 = !DILocation(line: 206, column: 11, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1688, file: !2, line: 206, column: 7)
!1704 = !DILocation(line: 206, column: 7, scope: !1688)
!1705 = !DILocation(line: 208, column: 17, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1703, file: !2, line: 207, column: 5)
!1707 = !DILocation(line: 0, scope: !1219, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 214, column: 7, scope: !1706)
!1709 = !DILocation(line: 105, column: 18, scope: !1224, inlinedAt: !1708)
!1710 = !DILocation(line: 215, column: 13, scope: !1706)
!1711 = !DILocation(line: 216, column: 5, scope: !1706)
!1712 = !DILocation(line: 217, column: 11, scope: !1695)
!1713 = !DILocation(line: 217, column: 9, scope: !1695)
!1714 = !DILocation(line: 217, column: 7, scope: !1688)
!1715 = !DILocation(line: 219, column: 11, scope: !1693)
!1716 = !DILocation(line: 219, column: 11, scope: !1694)
!1717 = !DILocation(line: 221, column: 29, scope: !1692)
!1718 = !DILocation(line: 0, scope: !1692)
!1719 = !DILocation(line: 223, column: 23, scope: !1692)
!1720 = !DILocation(line: 224, column: 11, scope: !1692)
!1721 = !DILocation(line: 225, column: 22, scope: !1692)
!1722 = !DILocation(line: 226, column: 17, scope: !1692)
!1723 = !DILocation(line: 227, column: 9, scope: !1692)
!1724 = !DILocation(line: 232, column: 11, scope: !1698)
!1725 = !DILocation(line: 232, column: 11, scope: !1694)
!1726 = !DILocation(line: 234, column: 11, scope: !1697)
!1727 = !DILocation(line: 235, column: 19, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1697, file: !2, line: 235, column: 15)
!1729 = !DILocation(line: 235, column: 24, scope: !1728)
!1730 = !DILocation(line: 235, column: 27, scope: !1728)
!1731 = !DILocation(line: 235, column: 50, scope: !1728)
!1732 = !DILocation(line: 235, column: 15, scope: !1697)
!1733 = !DILocation(line: 236, column: 13, scope: !1728)
!1734 = !DILocation(line: 237, column: 11, scope: !1697)
!1735 = !DILocation(line: 239, column: 9, scope: !1698)
!1736 = !DILocation(line: 239, column: 9, scope: !1697)
!1737 = !DILocation(line: 240, column: 17, scope: !1694)
!1738 = !DILocalVariable(name: "where", arg: 1, scope: !1739, file: !2, line: 182, type: !181)
!1739 = distinct !DISubprogram(name: "send_sig", scope: !2, file: !2, line: 182, type: !1740, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1742)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!105, !181, !105}
!1742 = !{!1738, !1743}
!1743 = !DILocalVariable(name: "sig", arg: 2, scope: !1739, file: !2, line: 182, type: !105)
!1744 = !DILocation(line: 0, scope: !1739, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 240, column: 7, scope: !1694)
!1746 = !DILocation(line: 191, column: 13, scope: !1747, inlinedAt: !1745)
!1747 = distinct !DILexicalBlock(scope: !1739, file: !2, line: 191, column: 7)
!1748 = !DILocation(line: 191, column: 7, scope: !1739, inlinedAt: !1745)
!1749 = !DILocation(line: 192, column: 5, scope: !1747, inlinedAt: !1745)
!1750 = !DILocation(line: 193, column: 10, scope: !1739, inlinedAt: !1745)
!1751 = !DILocation(line: 244, column: 12, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1694, file: !2, line: 244, column: 11)
!1753 = !DILocation(line: 244, column: 11, scope: !1694)
!1754 = !DILocation(line: 0, scope: !1739, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 246, column: 11, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1752, file: !2, line: 245, column: 9)
!1757 = !DILocation(line: 192, column: 5, scope: !1747, inlinedAt: !1755)
!1758 = !DILocation(line: 193, column: 10, scope: !1739, inlinedAt: !1755)
!1759 = !DILocation(line: 247, column: 30, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1756, file: !2, line: 247, column: 15)
!1761 = !DILocation(line: 249, column: 25, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1760, file: !2, line: 248, column: 13)
!1763 = !DILocation(line: 0, scope: !1739, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 249, column: 15, scope: !1762)
!1765 = !DILocation(line: 191, column: 13, scope: !1747, inlinedAt: !1764)
!1766 = !DILocation(line: 191, column: 7, scope: !1739, inlinedAt: !1764)
!1767 = !DILocation(line: 192, column: 5, scope: !1747, inlinedAt: !1764)
!1768 = !DILocation(line: 193, column: 10, scope: !1739, inlinedAt: !1764)
!1769 = !DILocation(line: 0, scope: !1739, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 250, column: 15, scope: !1762)
!1771 = !DILocation(line: 192, column: 5, scope: !1747, inlinedAt: !1770)
!1772 = !DILocation(line: 193, column: 10, scope: !1739, inlinedAt: !1770)
!1773 = !DILocation(line: 251, column: 13, scope: !1762)
!1774 = !DILocation(line: 254, column: 26, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1695, file: !2, line: 254, column: 12)
!1776 = !DILocation(line: 254, column: 12, scope: !1695)
!1777 = !DILocation(line: 259, column: 18, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1775, file: !2, line: 258, column: 5)
!1779 = !DILocation(line: 259, column: 7, scope: !1778)
!1780 = !DILocation(line: 261, column: 1, scope: !1688)
!1781 = !DISubprogram(name: "sigaction", scope: !128, file: !128, line: 243, type: !1782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!105, !105, !1784, !1787}
!1784 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1785)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1280)
!1787 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1788)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1789 = !DISubprogram(name: "__libc_current_sigrtmin", scope: !128, file: !128, line: 383, type: !1790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!105}
!1792 = !DISubprogram(name: "__libc_current_sigrtmax", scope: !128, file: !128, line: 385, type: !1790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1793 = !DISubprogram(name: "signal", scope: !128, file: !128, line: 88, type: !1794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!127, !105, !127}
!1796 = distinct !DISubprogram(name: "chld", scope: !2, file: !2, line: 199, type: !130, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1797)
!1797 = !{!1798}
!1798 = !DILocalVariable(name: "sig", arg: 1, scope: !1796, file: !2, line: 199, type: !105)
!1799 = !DILocation(line: 0, scope: !1796)
!1800 = !DILocation(line: 201, column: 1, scope: !1796)
!1801 = distinct !DISubprogram(name: "unblock_signal", scope: !2, file: !2, line: 394, type: !130, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1802)
!1802 = !{!1803, !1804}
!1803 = !DILocalVariable(name: "sig", arg: 1, scope: !1801, file: !2, line: 394, type: !105)
!1804 = !DILocalVariable(name: "unblock_set", scope: !1801, file: !2, line: 396, type: !1180)
!1805 = distinct !DIAssignID()
!1806 = !DILocation(line: 0, scope: !1801)
!1807 = !DILocation(line: 396, column: 3, scope: !1801)
!1808 = !DILocation(line: 397, column: 3, scope: !1801)
!1809 = !DILocation(line: 398, column: 3, scope: !1801)
!1810 = !DILocation(line: 399, column: 7, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1801, file: !2, line: 399, column: 7)
!1812 = !DILocation(line: 399, column: 53, scope: !1811)
!1813 = !DILocation(line: 399, column: 7, scope: !1801)
!1814 = !DILocation(line: 400, column: 5, scope: !1811)
!1815 = !DILocation(line: 401, column: 1, scope: !1801)
!1816 = !DISubprogram(name: "sigaddset", scope: !128, file: !128, line: 205, type: !1817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!105, !1457, !105}
!1819 = !DISubprogram(name: "sigprocmask", scope: !128, file: !128, line: 232, type: !1820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!105, !105, !1822, !1825}
!1822 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1823)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1180)
!1825 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1457)
!1826 = !DISubprogram(name: "__errno_location", scope: !1827, file: !1827, line: 37, type: !1828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1827 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!452}
!1830 = !DISubprogram(name: "getpid", scope: !1682, file: !1682, line: 650, type: !1831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!183}
!1833 = !DISubprogram(name: "fork", scope: !1682, file: !1682, line: 778, type: !1831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1834 = !DISubprogram(name: "prctl", scope: !1835, file: !1835, line: 42, type: !1836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1835 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/prctl.h", directory: "", checksumkind: CSK_MD5, checksum: "03df3307493f4e984a818e48f1f1ebd0")
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!105, !105, null}
!1838 = !DISubprogram(name: "getppid", scope: !1682, file: !1682, line: 653, type: !1831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1839 = !DISubprogram(name: "execvp", scope: !1682, file: !1682, line: 599, type: !1840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!105, !137, !1616}
!1842 = distinct !DISubprogram(name: "settimeout", scope: !2, file: !2, line: 115, type: !1843, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1845)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{null, !187, !190}
!1845 = !{!1846, !1847, !1848, !1855, !1861, !1865, !1866}
!1846 = !DILocalVariable(name: "duration", arg: 1, scope: !1842, file: !2, line: 115, type: !187)
!1847 = !DILocalVariable(name: "warn", arg: 2, scope: !1842, file: !2, line: 115, type: !190)
!1848 = !DILocalVariable(name: "ts", scope: !1842, file: !2, line: 121, type: !1849)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1850, line: 11, size: 128, elements: !1851)
!1850 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1851 = !{!1852, !1853}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1849, file: !1850, line: 16, baseType: !868, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1849, file: !1850, line: 21, baseType: !1854, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !184, line: 197, baseType: !253)
!1855 = !DILocalVariable(name: "its", scope: !1842, file: !2, line: 122, type: !1856)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "itimerspec", file: !1857, line: 8, size: 256, elements: !1858)
!1857 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_itimerspec.h", directory: "", checksumkind: CSK_MD5, checksum: "dfcd7ec63e6a27775d5c6dbba8655c7d")
!1858 = !{!1859, !1860}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "it_interval", scope: !1856, file: !1857, line: 10, baseType: !1849, size: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "it_value", scope: !1856, file: !1857, line: 11, baseType: !1849, size: 128, offset: 128)
!1861 = !DILocalVariable(name: "timerid", scope: !1842, file: !2, line: 123, type: !1862)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "timer_t", file: !1863, line: 7, baseType: !1864)
!1863 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/timer_t.h", directory: "", checksumkind: CSK_MD5, checksum: "b257b0db40a7b7cec2ff2d7c51baed44")
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__timer_t", file: !184, line: 172, baseType: !126)
!1865 = !DILocalVariable(name: "timeint", scope: !1842, file: !2, line: 168, type: !98)
!1866 = !DILocalVariable(name: "duration_floor", scope: !1867, file: !2, line: 173, type: !98)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !2, line: 172, column: 5)
!1868 = distinct !DILexicalBlock(scope: !1842, file: !2, line: 169, column: 7)
!1869 = distinct !DIAssignID()
!1870 = !DILocation(line: 0, scope: !1842)
!1871 = distinct !DIAssignID()
!1872 = !DILocation(line: 121, column: 24, scope: !1842)
!1873 = !DILocation(line: 122, column: 3, scope: !1842)
!1874 = distinct !DIAssignID()
!1875 = !DILocation(line: 122, column: 27, scope: !1842)
!1876 = !DILocation(line: 122, column: 43, scope: !1842)
!1877 = !DILocation(line: 122, column: 60, scope: !1842)
!1878 = !{i64 0, i64 8, !1879, i64 8, i64 8, !1879}
!1879 = !{!1880, !1880, i64 0}
!1880 = !{!"long", !952, i64 0}
!1881 = distinct !DIAssignID()
!1882 = !{i64 0, i64 8, !1879}
!1883 = distinct !DIAssignID()
!1884 = !DILocation(line: 123, column: 3, scope: !1842)
!1885 = !DILocation(line: 124, column: 7, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1842, file: !2, line: 124, column: 7)
!1887 = !DILocation(line: 124, column: 53, scope: !1886)
!1888 = !DILocation(line: 124, column: 7, scope: !1842)
!1889 = !DILocation(line: 126, column: 26, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !2, line: 126, column: 11)
!1891 = distinct !DILexicalBlock(scope: !1886, file: !2, line: 125, column: 5)
!1892 = !DILocation(line: 126, column: 11, scope: !1890)
!1893 = !DILocation(line: 126, column: 50, scope: !1890)
!1894 = !DILocation(line: 126, column: 11, scope: !1891)
!1895 = !DILocation(line: 130, column: 15, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1890, file: !2, line: 129, column: 9)
!1897 = !DILocation(line: 131, column: 13, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1896, file: !2, line: 130, column: 15)
!1899 = !DILocation(line: 132, column: 25, scope: !1896)
!1900 = !DILocation(line: 132, column: 11, scope: !1896)
!1901 = !DILocation(line: 134, column: 5, scope: !1891)
!1902 = !DILocation(line: 135, column: 17, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1886, file: !2, line: 135, column: 12)
!1904 = !DILocation(line: 135, column: 20, scope: !1903)
!1905 = !DILocation(line: 135, column: 26, scope: !1903)
!1906 = !DILocation(line: 135, column: 12, scope: !1886)
!1907 = !DILocation(line: 136, column: 5, scope: !1903)
!1908 = !DILocation(line: 169, column: 16, scope: !1868)
!1909 = !DILocation(line: 169, column: 7, scope: !1842)
!1910 = !DILocation(line: 173, column: 37, scope: !1867)
!1911 = !DILocation(line: 0, scope: !1867)
!1912 = !DILocation(line: 174, column: 35, scope: !1867)
!1913 = !DILocation(line: 174, column: 50, scope: !1867)
!1914 = !DILocation(line: 174, column: 32, scope: !1867)
!1915 = !DILocation(line: 0, scope: !1868)
!1916 = !DILocation(line: 176, column: 3, scope: !1842)
!1917 = !DILocation(line: 177, column: 1, scope: !1842)
!1918 = !DISubprogram(name: "waitpid", scope: !1919, file: !1919, line: 111, type: !1920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1919 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/wait.h", directory: "", checksumkind: CSK_MD5, checksum: "f653fe63e16922d44e1c6e15caa2acb6")
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!183, !183, !452, !105}
!1922 = !DISubprogram(name: "sigsuspend", scope: !128, file: !128, line: 240, type: !1923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!105, !1823}
!1925 = !DISubprogram(name: "raise", scope: !128, file: !128, line: 123, type: !1926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!105, !105}
!1928 = !DISubprogram(name: "timer_create", scope: !1929, file: !1929, line: 331, type: !1930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1929 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!105, !1932, !1935, !1967}
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !1933, line: 7, baseType: !1934)
!1933 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/clockid_t.h", directory: "", checksumkind: CSK_MD5, checksum: "099a80153c2ad48bc7f5f4a188cb6d24")
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clockid_t", file: !184, line: 169, baseType: !105)
!1935 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1936)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigevent", file: !1938, line: 22, size: 512, elements: !1939)
!1938 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/sigevent_t.h", directory: "", checksumkind: CSK_MD5, checksum: "816c6e661f14523d03101a714ce8e208")
!1939 = !{!1940, !1941, !1942, !1943}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_value", scope: !1937, file: !1938, line: 24, baseType: !1317, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_signo", scope: !1937, file: !1938, line: 25, baseType: !105, size: 32, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_notify", scope: !1937, file: !1938, line: 26, baseType: !105, size: 32, offset: 96)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_sigev_un", scope: !1937, file: !1938, line: 41, baseType: !1944, size: 384, offset: 128)
!1944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1937, file: !1938, line: 28, size: 384, elements: !1945)
!1945 = !{!1946, !1948, !1949}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !1944, file: !1938, line: 30, baseType: !1947, size: 384)
!1947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 384, elements: !392)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1944, file: !1938, line: 34, baseType: !183, size: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_sigev_thread", scope: !1944, file: !1938, line: 40, baseType: !1950, size: 128)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1944, file: !1938, line: 36, size: 128, elements: !1951)
!1951 = !{!1952, !1956}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_function", scope: !1950, file: !1938, line: 38, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{null, !1317}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_attribute", scope: !1950, file: !1938, line: 39, baseType: !1957, size: 64, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !1959, line: 62, baseType: !1960)
!1959 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!1960 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !1959, line: 56, size: 448, elements: !1961)
!1961 = !{!1962, !1966}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1960, file: !1959, line: 58, baseType: !1963, size: 448)
!1963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1964)
!1964 = !{!1965}
!1965 = !DISubrange(count: 56)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1960, file: !1959, line: 59, baseType: !253, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1968)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1969 = !DISubprogram(name: "timer_settime", scope: !1929, file: !1929, line: 340, type: !1970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!105, !1862, !105, !1972, !1975}
!1972 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1973)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1856)
!1975 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1976)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1977 = !DISubprogram(name: "timer_delete", scope: !1929, file: !1929, line: 336, type: !1978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!105, !1862}
!1980 = !DISubprogram(name: "alarm", scope: !1682, file: !1682, line: 452, type: !1981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!98, !98}
!1983 = !DISubprogram(name: "__builtin___snprintf_chk", scope: !2, file: !2, line: 236, type: !1984, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!105, !1986, !136, !105, !136, !1012, null}
!1986 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !125)
!1987 = !DISubprogram(name: "kill", scope: !128, file: !128, line: 112, type: !1988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!105, !183, !105}
!1990 = !DISubprogram(name: "_exit", scope: !1682, file: !1682, line: 624, type: !130, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1991 = distinct !DISubprogram(name: "operand2sig", scope: !460, file: !460, line: 36, type: !1992, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !852, retainedNodes: !1994)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!105, !137}
!1994 = !{!1995, !1996, !1997, !2000, !2001, !2002, !2004}
!1995 = !DILocalVariable(name: "operand", arg: 1, scope: !1991, file: !460, line: 36, type: !137)
!1996 = !DILocalVariable(name: "signum", scope: !1991, file: !460, line: 38, type: !105)
!1997 = !DILocalVariable(name: "endp", scope: !1998, file: !460, line: 53, type: !125)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !460, line: 41, column: 5)
!1999 = distinct !DILexicalBlock(scope: !1991, file: !460, line: 40, column: 7)
!2000 = !DILocalVariable(name: "l", scope: !1998, file: !460, line: 54, type: !253)
!2001 = !DILocalVariable(name: "i", scope: !1998, file: !460, line: 55, type: !105)
!2002 = !DILocalVariable(name: "upcased", scope: !2003, file: !460, line: 70, type: !125)
!2003 = distinct !DILexicalBlock(scope: !1999, file: !460, line: 67, column: 5)
!2004 = !DILocalVariable(name: "p", scope: !2005, file: !460, line: 71, type: !125)
!2005 = distinct !DILexicalBlock(scope: !2003, file: !460, line: 71, column: 7)
!2006 = distinct !DIAssignID()
!2007 = !DILocation(line: 0, scope: !1991)
!2008 = distinct !DIAssignID()
!2009 = !DILocation(line: 0, scope: !1998)
!2010 = !DILocation(line: 38, column: 3, scope: !1991)
!2011 = !DILocation(line: 40, column: 18, scope: !1999)
!2012 = !DILocalVariable(name: "c", arg: 1, scope: !2013, file: !2014, line: 233, type: !105)
!2013 = distinct !DISubprogram(name: "c_isdigit", scope: !2014, file: !2014, line: 233, type: !2015, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !852, retainedNodes: !2017)
!2014 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!190, !105}
!2017 = !{!2012}
!2018 = !DILocation(line: 0, scope: !2013, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 40, column: 7, scope: !1999)
!2020 = !DILocation(line: 235, column: 3, scope: !2013, inlinedAt: !2019)
!2021 = !DILocation(line: 40, column: 7, scope: !1991)
!2022 = !DILocation(line: 53, column: 7, scope: !1998)
!2023 = !DILocation(line: 54, column: 21, scope: !1998)
!2024 = !DILocation(line: 54, column: 27, scope: !1998)
!2025 = !DILocation(line: 54, column: 32, scope: !1998)
!2026 = !DILocation(line: 55, column: 15, scope: !1998)
!2027 = !DILocation(line: 56, column: 28, scope: !1998)
!2028 = !DILocation(line: 56, column: 25, scope: !1998)
!2029 = !DILocation(line: 56, column: 33, scope: !1998)
!2030 = !DILocation(line: 56, column: 36, scope: !1998)
!2031 = !DILocation(line: 56, column: 42, scope: !1998)
!2032 = !DILocation(line: 56, column: 45, scope: !1998)
!2033 = !DILocation(line: 56, column: 51, scope: !1998)
!2034 = distinct !DIAssignID()
!2035 = !DILocation(line: 58, column: 11, scope: !1998)
!2036 = !DILocation(line: 58, column: 18, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1998, file: !460, line: 58, column: 11)
!2038 = !DILocation(line: 65, column: 5, scope: !1999)
!2039 = !DILocation(line: 65, column: 5, scope: !1998)
!2040 = !DILocation(line: 70, column: 23, scope: !2003)
!2041 = !DILocation(line: 0, scope: !2003)
!2042 = !DILocation(line: 0, scope: !2005)
!2043 = !DILocation(line: 71, column: 31, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2005, file: !460, line: 71, column: 7)
!2045 = !DILocation(line: 71, column: 7, scope: !2005)
!2046 = !DILocation(line: 77, column: 13, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2003, file: !460, line: 77, column: 11)
!2048 = !DILocation(line: 77, column: 40, scope: !2047)
!2049 = !DILocation(line: 78, column: 13, scope: !2047)
!2050 = !DILocation(line: 72, column: 13, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2044, file: !460, line: 72, column: 13)
!2052 = !DILocation(line: 72, column: 13, scope: !2044)
!2053 = !DILocation(line: 73, column: 14, scope: !2051)
!2054 = !DILocation(line: 73, column: 11, scope: !2051)
!2055 = !DILocation(line: 71, column: 36, scope: !2044)
!2056 = distinct !{!2056, !2045, !2057, !1069}
!2057 = !DILocation(line: 73, column: 23, scope: !2005)
!2058 = !DILocation(line: 78, column: 17, scope: !2047)
!2059 = !DILocation(line: 78, column: 28, scope: !2047)
!2060 = !DILocation(line: 78, column: 35, scope: !2047)
!2061 = !DILocation(line: 78, column: 38, scope: !2047)
!2062 = !DILocation(line: 78, column: 49, scope: !2047)
!2063 = !DILocation(line: 78, column: 56, scope: !2047)
!2064 = !DILocation(line: 78, column: 59, scope: !2047)
!2065 = !DILocation(line: 78, column: 70, scope: !2047)
!2066 = !DILocation(line: 79, column: 17, scope: !2047)
!2067 = !DILocation(line: 79, column: 37, scope: !2047)
!2068 = !DILocation(line: 79, column: 20, scope: !2047)
!2069 = !DILocation(line: 79, column: 51, scope: !2047)
!2070 = !DILocation(line: 77, column: 11, scope: !2003)
!2071 = !DILocation(line: 80, column: 16, scope: !2047)
!2072 = distinct !DIAssignID()
!2073 = !DILocation(line: 80, column: 9, scope: !2047)
!2074 = !DILocation(line: 82, column: 7, scope: !2003)
!2075 = !DILocation(line: 85, column: 11, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !1991, file: !460, line: 85, column: 7)
!2077 = !DILocation(line: 85, column: 18, scope: !2076)
!2078 = !DILocation(line: 87, column: 7, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2076, file: !460, line: 86, column: 5)
!2080 = !DILocation(line: 88, column: 7, scope: !2079)
!2081 = !DILocation(line: 92, column: 1, scope: !1991)
!2082 = !DISubprogram(name: "strtol", scope: !1146, file: !1146, line: 177, type: !2083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!253, !1012, !2085, !105}
!2085 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1173)
!2086 = !DISubprogram(name: "free", scope: !1146, file: !1146, line: 555, type: !2087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{null, !126}
!2089 = distinct !DISubprogram(name: "cl_strtod", scope: !857, file: !857, line: 59, type: !2090, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !2092)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!187, !137, !2085}
!2092 = !{!2093, !2094, !2095, !2096, !2097, !2100, !2101}
!2093 = !DILocalVariable(name: "nptr", arg: 1, scope: !2089, file: !857, line: 59, type: !137)
!2094 = !DILocalVariable(name: "endptr", arg: 2, scope: !2089, file: !857, line: 59, type: !2085)
!2095 = !DILocalVariable(name: "end", scope: !2089, file: !857, line: 61, type: !125)
!2096 = !DILocalVariable(name: "d", scope: !2089, file: !857, line: 62, type: !187)
!2097 = !DILocalVariable(name: "strtod_errno", scope: !2098, file: !857, line: 65, type: !105)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !857, line: 64, column: 5)
!2099 = distinct !DILexicalBlock(scope: !2089, file: !857, line: 63, column: 7)
!2100 = !DILocalVariable(name: "c_end", scope: !2098, file: !857, line: 66, type: !125)
!2101 = !DILocalVariable(name: "c", scope: !2098, file: !857, line: 67, type: !187)
!2102 = distinct !DIAssignID()
!2103 = !DILocation(line: 0, scope: !2089)
!2104 = distinct !DIAssignID()
!2105 = !DILocation(line: 0, scope: !2098)
!2106 = !DILocation(line: 61, column: 3, scope: !2089)
!2107 = !DILocation(line: 62, column: 14, scope: !2089)
!2108 = !DILocation(line: 63, column: 8, scope: !2099)
!2109 = !DILocation(line: 63, column: 7, scope: !2099)
!2110 = !DILocation(line: 63, column: 7, scope: !2089)
!2111 = !DILocation(line: 65, column: 26, scope: !2098)
!2112 = !DILocation(line: 66, column: 7, scope: !2098)
!2113 = !DILocation(line: 67, column: 18, scope: !2098)
!2114 = !DILocation(line: 68, column: 17, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2098, file: !857, line: 68, column: 11)
!2116 = !DILocation(line: 68, column: 15, scope: !2115)
!2117 = !DILocation(line: 68, column: 11, scope: !2098)
!2118 = !DILocation(line: 71, column: 15, scope: !2115)
!2119 = !DILocation(line: 72, column: 5, scope: !2099)
!2120 = !DILocation(line: 72, column: 5, scope: !2098)
!2121 = !DILocation(line: 73, column: 7, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2089, file: !857, line: 73, column: 7)
!2123 = !DILocation(line: 73, column: 7, scope: !2089)
!2124 = !DILocation(line: 74, column: 13, scope: !2122)
!2125 = !DILocation(line: 74, column: 5, scope: !2122)
!2126 = !DILocation(line: 76, column: 1, scope: !2089)
!2127 = !DILocation(line: 75, column: 3, scope: !2089)
!2128 = !DISubprogram(name: "strtod", scope: !1146, file: !1146, line: 118, type: !2129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!187, !1012, !2085}
!2131 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !474, file: !474, line: 50, type: !972, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2132)
!2132 = !{!2133}
!2133 = !DILocalVariable(name: "file", arg: 1, scope: !2131, file: !474, line: 50, type: !137)
!2134 = !DILocation(line: 0, scope: !2131)
!2135 = !DILocation(line: 52, column: 13, scope: !2131)
!2136 = !DILocation(line: 53, column: 1, scope: !2131)
!2137 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !474, file: !474, line: 87, type: !2138, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2140)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{null, !190}
!2140 = !{!2141}
!2141 = !DILocalVariable(name: "ignore", arg: 1, scope: !2137, file: !474, line: 87, type: !190)
!2142 = !DILocation(line: 0, scope: !2137)
!2143 = !DILocation(line: 89, column: 16, scope: !2137)
!2144 = !{!2145, !2145, i64 0}
!2145 = !{!"_Bool", !952, i64 0}
!2146 = !DILocation(line: 90, column: 1, scope: !2137)
!2147 = distinct !DISubprogram(name: "close_stdout", scope: !474, file: !474, line: 116, type: !532, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !2148)
!2148 = !{!2149}
!2149 = !DILocalVariable(name: "write_error", scope: !2150, file: !474, line: 121, type: !137)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !474, line: 120, column: 5)
!2151 = distinct !DILexicalBlock(scope: !2147, file: !474, line: 118, column: 7)
!2152 = !DILocation(line: 118, column: 21, scope: !2151)
!2153 = !DILocation(line: 118, column: 7, scope: !2151)
!2154 = !DILocation(line: 118, column: 29, scope: !2151)
!2155 = !DILocation(line: 119, column: 7, scope: !2151)
!2156 = !DILocation(line: 119, column: 12, scope: !2151)
!2157 = !{i8 0, i8 2}
!2158 = !DILocation(line: 119, column: 25, scope: !2151)
!2159 = !DILocation(line: 119, column: 28, scope: !2151)
!2160 = !DILocation(line: 119, column: 34, scope: !2151)
!2161 = !DILocation(line: 118, column: 7, scope: !2147)
!2162 = !DILocation(line: 121, column: 33, scope: !2150)
!2163 = !DILocation(line: 0, scope: !2150)
!2164 = !DILocation(line: 122, column: 11, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2150, file: !474, line: 122, column: 11)
!2166 = !DILocation(line: 0, scope: !2165)
!2167 = !DILocation(line: 122, column: 11, scope: !2150)
!2168 = !DILocation(line: 123, column: 9, scope: !2165)
!2169 = !DILocation(line: 126, column: 9, scope: !2165)
!2170 = !DILocation(line: 128, column: 14, scope: !2150)
!2171 = !DILocation(line: 128, column: 7, scope: !2150)
!2172 = !DILocation(line: 133, column: 42, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2147, file: !474, line: 133, column: 7)
!2174 = !DILocation(line: 133, column: 28, scope: !2173)
!2175 = !DILocation(line: 133, column: 50, scope: !2173)
!2176 = !DILocation(line: 133, column: 7, scope: !2147)
!2177 = !DILocation(line: 134, column: 12, scope: !2173)
!2178 = !DILocation(line: 134, column: 5, scope: !2173)
!2179 = !DILocation(line: 135, column: 1, scope: !2147)
!2180 = distinct !DISubprogram(name: "dtotimespec", scope: !859, file: !859, line: 30, type: !2181, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !2187)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!2183, !187}
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1850, line: 11, size: 128, elements: !2184)
!2184 = !{!2185, !2186}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2183, file: !1850, line: 16, baseType: !868, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2183, file: !1850, line: 21, baseType: !1854, size: 64, offset: 64)
!2187 = !{!2188, !2189, !2193, !2194}
!2188 = !DILocalVariable(name: "sec", arg: 1, scope: !2180, file: !859, line: 30, type: !187)
!2189 = !DILocalVariable(name: "s", scope: !2190, file: !859, line: 38, type: !866)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !859, line: 37, column: 5)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !859, line: 34, column: 12)
!2192 = distinct !DILexicalBlock(scope: !2180, file: !859, line: 32, column: 7)
!2193 = !DILocalVariable(name: "frac", scope: !2190, file: !859, line: 39, type: !187)
!2194 = !DILocalVariable(name: "ns", scope: !2190, file: !859, line: 40, type: !253)
!2195 = !DILocation(line: 0, scope: !2180)
!2196 = !DILocation(line: 32, column: 32, scope: !2192)
!2197 = !DILocation(line: 32, column: 7, scope: !2180)
!2198 = !DILocation(line: 34, column: 19, scope: !2191)
!2199 = !DILocation(line: 34, column: 12, scope: !2192)
!2200 = !DILocation(line: 38, column: 18, scope: !2190)
!2201 = !DILocation(line: 0, scope: !2190)
!2202 = !DILocation(line: 39, column: 42, scope: !2190)
!2203 = !DILocation(line: 39, column: 40, scope: !2190)
!2204 = !DILocation(line: 39, column: 33, scope: !2190)
!2205 = !DILocation(line: 40, column: 17, scope: !2190)
!2206 = !DILocation(line: 41, column: 13, scope: !2190)
!2207 = !DILocation(line: 41, column: 16, scope: !2190)
!2208 = !DILocation(line: 41, column: 10, scope: !2190)
!2209 = !DILocation(line: 42, column: 15, scope: !2190)
!2210 = !DILocation(line: 42, column: 9, scope: !2190)
!2211 = !DILocation(line: 43, column: 10, scope: !2190)
!2212 = !DILocation(line: 45, column: 14, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2190, file: !859, line: 45, column: 11)
!2214 = !DILocation(line: 45, column: 11, scope: !2190)
!2215 = !DILocalVariable(name: "s", arg: 1, scope: !2216, file: !862, line: 56, type: !866)
!2216 = distinct !DISubprogram(name: "make_timespec", scope: !862, file: !862, line: 56, type: !2217, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !2219)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!2183, !866, !253}
!2219 = !{!2215, !2220}
!2220 = !DILocalVariable(name: "ns", arg: 2, scope: !2216, file: !862, line: 56, type: !253)
!2221 = !DILocation(line: 0, scope: !2216, inlinedAt: !2222)
!2222 = distinct !DILocation(line: 51, column: 14, scope: !2190)
!2223 = !DILocation(line: 58, column: 3, scope: !2216, inlinedAt: !2222)
!2224 = !DILocation(line: 53, column: 1, scope: !2180)
!2225 = distinct !DISubprogram(name: "verror", scope: !489, file: !489, line: 251, type: !2226, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2228)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{null, !105, !105, !137, !499}
!2228 = !{!2229, !2230, !2231, !2232}
!2229 = !DILocalVariable(name: "status", arg: 1, scope: !2225, file: !489, line: 251, type: !105)
!2230 = !DILocalVariable(name: "errnum", arg: 2, scope: !2225, file: !489, line: 251, type: !105)
!2231 = !DILocalVariable(name: "message", arg: 3, scope: !2225, file: !489, line: 251, type: !137)
!2232 = !DILocalVariable(name: "args", arg: 4, scope: !2225, file: !489, line: 251, type: !499)
!2233 = !DILocation(line: 0, scope: !2225)
!2234 = !DILocation(line: 261, column: 3, scope: !2225)
!2235 = !DILocation(line: 265, column: 7, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2225, file: !489, line: 265, column: 7)
!2237 = !DILocation(line: 265, column: 7, scope: !2225)
!2238 = !DILocation(line: 266, column: 5, scope: !2236)
!2239 = !DILocation(line: 272, column: 7, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2236, file: !489, line: 268, column: 5)
!2241 = !DILocation(line: 276, column: 3, scope: !2225)
!2242 = !DILocation(line: 282, column: 1, scope: !2225)
!2243 = distinct !DISubprogram(name: "flush_stdout", scope: !489, file: !489, line: 163, type: !532, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2244)
!2244 = !{!2245}
!2245 = !DILocalVariable(name: "stdout_fd", scope: !2243, file: !489, line: 166, type: !105)
!2246 = !DILocation(line: 0, scope: !2243)
!2247 = !DILocalVariable(name: "fd", arg: 1, scope: !2248, file: !489, line: 145, type: !105)
!2248 = distinct !DISubprogram(name: "is_open", scope: !489, file: !489, line: 145, type: !1926, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2249)
!2249 = !{!2247}
!2250 = !DILocation(line: 0, scope: !2248, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 182, column: 25, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2243, file: !489, line: 182, column: 7)
!2253 = !DILocation(line: 157, column: 15, scope: !2248, inlinedAt: !2251)
!2254 = !DILocation(line: 157, column: 12, scope: !2248, inlinedAt: !2251)
!2255 = !DILocation(line: 182, column: 7, scope: !2243)
!2256 = !DILocation(line: 184, column: 5, scope: !2252)
!2257 = !DILocation(line: 185, column: 1, scope: !2243)
!2258 = distinct !DISubprogram(name: "error_tail", scope: !489, file: !489, line: 219, type: !2226, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2259)
!2259 = !{!2260, !2261, !2262, !2263}
!2260 = !DILocalVariable(name: "status", arg: 1, scope: !2258, file: !489, line: 219, type: !105)
!2261 = !DILocalVariable(name: "errnum", arg: 2, scope: !2258, file: !489, line: 219, type: !105)
!2262 = !DILocalVariable(name: "message", arg: 3, scope: !2258, file: !489, line: 219, type: !137)
!2263 = !DILocalVariable(name: "args", arg: 4, scope: !2258, file: !489, line: 219, type: !499)
!2264 = distinct !DIAssignID()
!2265 = !DILocation(line: 0, scope: !2258)
!2266 = !DILocation(line: 229, column: 13, scope: !2258)
!2267 = !DILocalVariable(name: "__stream", arg: 1, scope: !2268, file: !1008, line: 132, type: !2271)
!2268 = distinct !DISubprogram(name: "vfprintf", scope: !1008, file: !1008, line: 132, type: !2269, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2306)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!105, !2271, !1012, !499}
!2271 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2272)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !2274)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !2275)
!2275 = !{!2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2274, file: !230, line: 51, baseType: !105, size: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2274, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2274, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2274, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2274, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2274, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2274, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2274, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2274, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2274, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2274, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2274, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2274, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2274, file: !230, line: 70, baseType: !2290, size: 64, offset: 832)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2274, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2274, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2274, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2274, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2274, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2274, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2274, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2274, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2274, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2274, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2274, file: !230, line: 93, baseType: !2290, size: 64, offset: 1344)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2274, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2274, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2274, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2274, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!2306 = !{!2267, !2307, !2308}
!2307 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2268, file: !1008, line: 133, type: !1012)
!2308 = !DILocalVariable(name: "__ap", arg: 3, scope: !2268, file: !1008, line: 133, type: !499)
!2309 = !DILocation(line: 0, scope: !2268, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 229, column: 3, scope: !2258)
!2311 = !DILocation(line: 135, column: 10, scope: !2268, inlinedAt: !2310)
!2312 = !DILocation(line: 232, column: 3, scope: !2258)
!2313 = !DILocation(line: 233, column: 7, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2258, file: !489, line: 233, column: 7)
!2315 = !DILocation(line: 233, column: 7, scope: !2258)
!2316 = !DILocalVariable(name: "errbuf", scope: !2317, file: !489, line: 193, type: !2321)
!2317 = distinct !DISubprogram(name: "print_errno_message", scope: !489, file: !489, line: 188, type: !130, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2318)
!2318 = !{!2319, !2320, !2316}
!2319 = !DILocalVariable(name: "errnum", arg: 1, scope: !2317, file: !489, line: 188, type: !105)
!2320 = !DILocalVariable(name: "s", scope: !2317, file: !489, line: 190, type: !137)
!2321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2322)
!2322 = !{!2323}
!2323 = !DISubrange(count: 1024)
!2324 = !DILocation(line: 0, scope: !2317, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 234, column: 5, scope: !2314)
!2326 = !DILocation(line: 193, column: 3, scope: !2317, inlinedAt: !2325)
!2327 = !DILocation(line: 195, column: 7, scope: !2317, inlinedAt: !2325)
!2328 = !DILocation(line: 207, column: 9, scope: !2329, inlinedAt: !2325)
!2329 = distinct !DILexicalBlock(scope: !2317, file: !489, line: 207, column: 7)
!2330 = !DILocation(line: 207, column: 7, scope: !2317, inlinedAt: !2325)
!2331 = !DILocation(line: 208, column: 9, scope: !2329, inlinedAt: !2325)
!2332 = !DILocation(line: 208, column: 5, scope: !2329, inlinedAt: !2325)
!2333 = !DILocation(line: 214, column: 3, scope: !2317, inlinedAt: !2325)
!2334 = !DILocation(line: 216, column: 1, scope: !2317, inlinedAt: !2325)
!2335 = !DILocation(line: 234, column: 5, scope: !2314)
!2336 = !DILocation(line: 238, column: 3, scope: !2258)
!2337 = !DILocalVariable(name: "__c", arg: 1, scope: !2338, file: !2339, line: 101, type: !105)
!2338 = distinct !DISubprogram(name: "putc_unlocked", scope: !2339, file: !2339, line: 101, type: !2340, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2342)
!2339 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!105, !105, !2272}
!2342 = !{!2337, !2343}
!2343 = !DILocalVariable(name: "__stream", arg: 2, scope: !2338, file: !2339, line: 101, type: !2272)
!2344 = !DILocation(line: 0, scope: !2338, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 238, column: 3, scope: !2258)
!2346 = !DILocation(line: 103, column: 10, scope: !2338, inlinedAt: !2345)
!2347 = !{!2348, !951, i64 40}
!2348 = !{!"_IO_FILE", !1023, i64 0, !951, i64 8, !951, i64 16, !951, i64 24, !951, i64 32, !951, i64 40, !951, i64 48, !951, i64 56, !951, i64 64, !951, i64 72, !951, i64 80, !951, i64 88, !951, i64 96, !951, i64 104, !1023, i64 112, !1023, i64 116, !1880, i64 120, !1064, i64 128, !952, i64 130, !952, i64 131, !951, i64 136, !1880, i64 144, !951, i64 152, !951, i64 160, !951, i64 168, !951, i64 176, !1880, i64 184, !1023, i64 192, !952, i64 196}
!2349 = !{!2348, !951, i64 48}
!2350 = !{!"branch_weights", i32 2000, i32 1}
!2351 = !DILocation(line: 240, column: 3, scope: !2258)
!2352 = !DILocation(line: 241, column: 7, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2258, file: !489, line: 241, column: 7)
!2354 = !DILocation(line: 241, column: 7, scope: !2258)
!2355 = !DILocation(line: 242, column: 5, scope: !2353)
!2356 = !DILocation(line: 243, column: 1, scope: !2258)
!2357 = !DISubprogram(name: "__vfprintf_chk", scope: !1008, file: !1008, line: 96, type: !2358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!105, !2271, !105, !1012, !499}
!2360 = !DISubprogram(name: "strerror_r", scope: !1142, file: !1142, line: 444, type: !2361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!125, !105, !125, !134}
!2363 = !DISubprogram(name: "__overflow", scope: !1017, file: !1017, line: 886, type: !2364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!105, !2272, !105}
!2366 = !DISubprogram(name: "fflush_unlocked", scope: !1017, file: !1017, line: 239, type: !2367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!105, !2272}
!2369 = !DISubprogram(name: "fcntl", scope: !2370, file: !2370, line: 149, type: !2371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2370 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!105, !105, !105, null}
!2373 = distinct !DISubprogram(name: "error", scope: !489, file: !489, line: 285, type: !2374, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2376)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{null, !105, !105, !137, null}
!2376 = !{!2377, !2378, !2379, !2380}
!2377 = !DILocalVariable(name: "status", arg: 1, scope: !2373, file: !489, line: 285, type: !105)
!2378 = !DILocalVariable(name: "errnum", arg: 2, scope: !2373, file: !489, line: 285, type: !105)
!2379 = !DILocalVariable(name: "message", arg: 3, scope: !2373, file: !489, line: 285, type: !137)
!2380 = !DILocalVariable(name: "ap", scope: !2373, file: !489, line: 287, type: !2381)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1017, line: 52, baseType: !2382)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2383, line: 12, baseType: !2384)
!2383 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!2384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !489, baseType: !2385)
!2385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 192, elements: !75)
!2386 = distinct !DIAssignID()
!2387 = !DILocation(line: 0, scope: !2373)
!2388 = !DILocation(line: 287, column: 3, scope: !2373)
!2389 = !DILocation(line: 288, column: 3, scope: !2373)
!2390 = !DILocation(line: 289, column: 3, scope: !2373)
!2391 = !DILocation(line: 290, column: 3, scope: !2373)
!2392 = !DILocation(line: 291, column: 1, scope: !2373)
!2393 = !DILocation(line: 0, scope: !496)
!2394 = !DILocation(line: 302, column: 7, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !496, file: !489, line: 302, column: 7)
!2396 = !DILocation(line: 302, column: 7, scope: !496)
!2397 = !DILocation(line: 307, column: 11, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !489, line: 307, column: 11)
!2399 = distinct !DILexicalBlock(scope: !2395, file: !489, line: 303, column: 5)
!2400 = !DILocation(line: 307, column: 27, scope: !2398)
!2401 = !DILocation(line: 308, column: 11, scope: !2398)
!2402 = !DILocation(line: 308, column: 28, scope: !2398)
!2403 = !DILocation(line: 308, column: 25, scope: !2398)
!2404 = !DILocation(line: 309, column: 15, scope: !2398)
!2405 = !DILocation(line: 309, column: 33, scope: !2398)
!2406 = !DILocation(line: 310, column: 19, scope: !2398)
!2407 = !DILocation(line: 311, column: 22, scope: !2398)
!2408 = !DILocation(line: 311, column: 56, scope: !2398)
!2409 = !DILocation(line: 307, column: 11, scope: !2399)
!2410 = !DILocation(line: 316, column: 21, scope: !2399)
!2411 = !DILocation(line: 317, column: 23, scope: !2399)
!2412 = !DILocation(line: 318, column: 5, scope: !2399)
!2413 = !DILocation(line: 327, column: 3, scope: !496)
!2414 = !DILocation(line: 331, column: 7, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !496, file: !489, line: 331, column: 7)
!2416 = !DILocation(line: 331, column: 7, scope: !496)
!2417 = !DILocation(line: 332, column: 5, scope: !2415)
!2418 = !DILocation(line: 338, column: 7, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2415, file: !489, line: 334, column: 5)
!2420 = !DILocation(line: 346, column: 3, scope: !496)
!2421 = !DILocation(line: 350, column: 3, scope: !496)
!2422 = !DILocation(line: 356, column: 1, scope: !496)
!2423 = distinct !DISubprogram(name: "error_at_line", scope: !489, file: !489, line: 359, type: !2424, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2426)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{null, !105, !105, !137, !98, !137, null}
!2426 = !{!2427, !2428, !2429, !2430, !2431, !2432}
!2427 = !DILocalVariable(name: "status", arg: 1, scope: !2423, file: !489, line: 359, type: !105)
!2428 = !DILocalVariable(name: "errnum", arg: 2, scope: !2423, file: !489, line: 359, type: !105)
!2429 = !DILocalVariable(name: "file_name", arg: 3, scope: !2423, file: !489, line: 359, type: !137)
!2430 = !DILocalVariable(name: "line_number", arg: 4, scope: !2423, file: !489, line: 360, type: !98)
!2431 = !DILocalVariable(name: "message", arg: 5, scope: !2423, file: !489, line: 360, type: !137)
!2432 = !DILocalVariable(name: "ap", scope: !2423, file: !489, line: 362, type: !2381)
!2433 = distinct !DIAssignID()
!2434 = !DILocation(line: 0, scope: !2423)
!2435 = !DILocation(line: 362, column: 3, scope: !2423)
!2436 = !DILocation(line: 363, column: 3, scope: !2423)
!2437 = !DILocation(line: 364, column: 3, scope: !2423)
!2438 = !DILocation(line: 366, column: 3, scope: !2423)
!2439 = !DILocation(line: 367, column: 1, scope: !2423)
!2440 = distinct !DISubprogram(name: "getprogname", scope: !870, file: !870, line: 54, type: !2441, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!137}
!2443 = !DILocation(line: 58, column: 10, scope: !2440)
!2444 = !DILocation(line: 58, column: 3, scope: !2440)
!2445 = distinct !DISubprogram(name: "set_program_name", scope: !537, file: !537, line: 37, type: !972, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2446)
!2446 = !{!2447, !2448, !2449}
!2447 = !DILocalVariable(name: "argv0", arg: 1, scope: !2445, file: !537, line: 37, type: !137)
!2448 = !DILocalVariable(name: "slash", scope: !2445, file: !537, line: 44, type: !137)
!2449 = !DILocalVariable(name: "base", scope: !2445, file: !537, line: 45, type: !137)
!2450 = !DILocation(line: 0, scope: !2445)
!2451 = !DILocation(line: 44, column: 23, scope: !2445)
!2452 = !DILocation(line: 45, column: 22, scope: !2445)
!2453 = !DILocation(line: 46, column: 17, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2445, file: !537, line: 46, column: 7)
!2455 = !DILocation(line: 46, column: 9, scope: !2454)
!2456 = !DILocation(line: 46, column: 25, scope: !2454)
!2457 = !DILocation(line: 46, column: 40, scope: !2454)
!2458 = !DILocalVariable(name: "__s1", arg: 1, scope: !2459, file: !1035, line: 974, type: !1168)
!2459 = distinct !DISubprogram(name: "memeq", scope: !1035, file: !1035, line: 974, type: !2460, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2462)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!190, !1168, !1168, !134}
!2462 = !{!2458, !2463, !2464}
!2463 = !DILocalVariable(name: "__s2", arg: 2, scope: !2459, file: !1035, line: 974, type: !1168)
!2464 = !DILocalVariable(name: "__n", arg: 3, scope: !2459, file: !1035, line: 974, type: !134)
!2465 = !DILocation(line: 0, scope: !2459, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 46, column: 28, scope: !2454)
!2467 = !DILocation(line: 976, column: 11, scope: !2459, inlinedAt: !2466)
!2468 = !DILocation(line: 976, column: 10, scope: !2459, inlinedAt: !2466)
!2469 = !DILocation(line: 46, column: 7, scope: !2445)
!2470 = !DILocation(line: 49, column: 11, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !537, line: 49, column: 11)
!2472 = distinct !DILexicalBlock(scope: !2454, file: !537, line: 47, column: 5)
!2473 = !DILocation(line: 49, column: 36, scope: !2471)
!2474 = !DILocation(line: 49, column: 11, scope: !2472)
!2475 = !DILocation(line: 65, column: 16, scope: !2445)
!2476 = !DILocation(line: 71, column: 27, scope: !2445)
!2477 = !DILocation(line: 74, column: 33, scope: !2445)
!2478 = !DILocation(line: 76, column: 1, scope: !2445)
!2479 = !DISubprogram(name: "strrchr", scope: !1142, file: !1142, line: 273, type: !1157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2480 = distinct !DIAssignID()
!2481 = !DILocation(line: 0, scope: !546)
!2482 = distinct !DIAssignID()
!2483 = !DILocation(line: 40, column: 29, scope: !546)
!2484 = !DILocation(line: 41, column: 19, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !546, file: !547, line: 41, column: 7)
!2486 = !DILocation(line: 41, column: 7, scope: !546)
!2487 = !DILocation(line: 47, column: 3, scope: !546)
!2488 = !DILocation(line: 48, column: 3, scope: !546)
!2489 = !DILocalVariable(name: "ps", arg: 1, scope: !2490, file: !2491, line: 1135, type: !2494)
!2490 = distinct !DISubprogram(name: "mbszero", scope: !2491, file: !2491, line: 1135, type: !2492, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2495)
!2491 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2492 = !DISubroutineType(types: !2493)
!2493 = !{null, !2494}
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!2495 = !{!2489}
!2496 = !DILocation(line: 0, scope: !2490, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 48, column: 18, scope: !546)
!2498 = !DILocalVariable(name: "__dest", arg: 1, scope: !2499, file: !2500, line: 57, type: !126)
!2499 = distinct !DISubprogram(name: "memset", scope: !2500, file: !2500, line: 57, type: !2501, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2503)
!2500 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!126, !126, !105, !134}
!2503 = !{!2498, !2504, !2505}
!2504 = !DILocalVariable(name: "__ch", arg: 2, scope: !2499, file: !2500, line: 57, type: !105)
!2505 = !DILocalVariable(name: "__len", arg: 3, scope: !2499, file: !2500, line: 57, type: !134)
!2506 = !DILocation(line: 0, scope: !2499, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 1137, column: 3, scope: !2490, inlinedAt: !2497)
!2508 = !DILocation(line: 59, column: 10, scope: !2499, inlinedAt: !2507)
!2509 = !DILocation(line: 49, column: 7, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !546, file: !547, line: 49, column: 7)
!2511 = !DILocation(line: 49, column: 39, scope: !2510)
!2512 = !DILocation(line: 49, column: 44, scope: !2510)
!2513 = !DILocation(line: 54, column: 1, scope: !546)
!2514 = !DISubprogram(name: "mbrtoc32", scope: !558, file: !558, line: 57, type: !2515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!134, !2517, !1012, !134, !2519}
!2517 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2518)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2494)
!2520 = distinct !DISubprogram(name: "clone_quoting_options", scope: !577, file: !577, line: 113, type: !2521, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2524)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!2523, !2523}
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!2524 = !{!2525, !2526, !2527}
!2525 = !DILocalVariable(name: "o", arg: 1, scope: !2520, file: !577, line: 113, type: !2523)
!2526 = !DILocalVariable(name: "saved_errno", scope: !2520, file: !577, line: 115, type: !105)
!2527 = !DILocalVariable(name: "p", scope: !2520, file: !577, line: 116, type: !2523)
!2528 = !DILocation(line: 0, scope: !2520)
!2529 = !DILocation(line: 115, column: 21, scope: !2520)
!2530 = !DILocation(line: 116, column: 40, scope: !2520)
!2531 = !DILocation(line: 116, column: 31, scope: !2520)
!2532 = !DILocation(line: 118, column: 9, scope: !2520)
!2533 = !DILocation(line: 119, column: 3, scope: !2520)
!2534 = distinct !DISubprogram(name: "get_quoting_style", scope: !577, file: !577, line: 124, type: !2535, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2539)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!603, !2537}
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !630)
!2539 = !{!2540}
!2540 = !DILocalVariable(name: "o", arg: 1, scope: !2534, file: !577, line: 124, type: !2537)
!2541 = !DILocation(line: 0, scope: !2534)
!2542 = !DILocation(line: 126, column: 11, scope: !2534)
!2543 = !DILocation(line: 126, column: 46, scope: !2534)
!2544 = !{!2545, !1023, i64 0}
!2545 = !{!"quoting_options", !1023, i64 0, !1023, i64 4, !952, i64 8, !951, i64 40, !951, i64 48}
!2546 = !DILocation(line: 126, column: 3, scope: !2534)
!2547 = distinct !DISubprogram(name: "set_quoting_style", scope: !577, file: !577, line: 132, type: !2548, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2550)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{null, !2523, !603}
!2550 = !{!2551, !2552}
!2551 = !DILocalVariable(name: "o", arg: 1, scope: !2547, file: !577, line: 132, type: !2523)
!2552 = !DILocalVariable(name: "s", arg: 2, scope: !2547, file: !577, line: 132, type: !603)
!2553 = !DILocation(line: 0, scope: !2547)
!2554 = !DILocation(line: 134, column: 4, scope: !2547)
!2555 = !DILocation(line: 134, column: 45, scope: !2547)
!2556 = !DILocation(line: 135, column: 1, scope: !2547)
!2557 = distinct !DISubprogram(name: "set_char_quoting", scope: !577, file: !577, line: 143, type: !2558, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2560)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!105, !2523, !4, !105}
!2560 = !{!2561, !2562, !2563, !2564, !2565, !2567, !2568}
!2561 = !DILocalVariable(name: "o", arg: 1, scope: !2557, file: !577, line: 143, type: !2523)
!2562 = !DILocalVariable(name: "c", arg: 2, scope: !2557, file: !577, line: 143, type: !4)
!2563 = !DILocalVariable(name: "i", arg: 3, scope: !2557, file: !577, line: 143, type: !105)
!2564 = !DILocalVariable(name: "uc", scope: !2557, file: !577, line: 145, type: !139)
!2565 = !DILocalVariable(name: "p", scope: !2557, file: !577, line: 146, type: !2566)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!2567 = !DILocalVariable(name: "shift", scope: !2557, file: !577, line: 148, type: !105)
!2568 = !DILocalVariable(name: "r", scope: !2557, file: !577, line: 149, type: !98)
!2569 = !DILocation(line: 0, scope: !2557)
!2570 = !DILocation(line: 147, column: 6, scope: !2557)
!2571 = !DILocation(line: 147, column: 41, scope: !2557)
!2572 = !DILocation(line: 147, column: 62, scope: !2557)
!2573 = !DILocation(line: 147, column: 57, scope: !2557)
!2574 = !DILocation(line: 148, column: 15, scope: !2557)
!2575 = !DILocation(line: 149, column: 21, scope: !2557)
!2576 = !DILocation(line: 149, column: 24, scope: !2557)
!2577 = !DILocation(line: 149, column: 34, scope: !2557)
!2578 = !DILocation(line: 150, column: 19, scope: !2557)
!2579 = !DILocation(line: 150, column: 24, scope: !2557)
!2580 = !DILocation(line: 150, column: 6, scope: !2557)
!2581 = !DILocation(line: 151, column: 3, scope: !2557)
!2582 = distinct !DISubprogram(name: "set_quoting_flags", scope: !577, file: !577, line: 159, type: !2583, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2585)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!105, !2523, !105}
!2585 = !{!2586, !2587, !2588}
!2586 = !DILocalVariable(name: "o", arg: 1, scope: !2582, file: !577, line: 159, type: !2523)
!2587 = !DILocalVariable(name: "i", arg: 2, scope: !2582, file: !577, line: 159, type: !105)
!2588 = !DILocalVariable(name: "r", scope: !2582, file: !577, line: 163, type: !105)
!2589 = !DILocation(line: 0, scope: !2582)
!2590 = !DILocation(line: 161, column: 8, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2582, file: !577, line: 161, column: 7)
!2592 = !DILocation(line: 161, column: 7, scope: !2582)
!2593 = !DILocation(line: 163, column: 14, scope: !2582)
!2594 = !{!2545, !1023, i64 4}
!2595 = !DILocation(line: 164, column: 12, scope: !2582)
!2596 = !DILocation(line: 165, column: 3, scope: !2582)
!2597 = distinct !DISubprogram(name: "set_custom_quoting", scope: !577, file: !577, line: 169, type: !2598, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2600)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{null, !2523, !137, !137}
!2600 = !{!2601, !2602, !2603}
!2601 = !DILocalVariable(name: "o", arg: 1, scope: !2597, file: !577, line: 169, type: !2523)
!2602 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2597, file: !577, line: 170, type: !137)
!2603 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2597, file: !577, line: 170, type: !137)
!2604 = !DILocation(line: 0, scope: !2597)
!2605 = !DILocation(line: 172, column: 8, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2597, file: !577, line: 172, column: 7)
!2607 = !DILocation(line: 172, column: 7, scope: !2597)
!2608 = !DILocation(line: 174, column: 12, scope: !2597)
!2609 = !DILocation(line: 175, column: 8, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2597, file: !577, line: 175, column: 7)
!2611 = !DILocation(line: 175, column: 19, scope: !2610)
!2612 = !DILocation(line: 176, column: 5, scope: !2610)
!2613 = !DILocation(line: 177, column: 6, scope: !2597)
!2614 = !DILocation(line: 177, column: 17, scope: !2597)
!2615 = !{!2545, !951, i64 40}
!2616 = !DILocation(line: 178, column: 6, scope: !2597)
!2617 = !DILocation(line: 178, column: 18, scope: !2597)
!2618 = !{!2545, !951, i64 48}
!2619 = !DILocation(line: 179, column: 1, scope: !2597)
!2620 = !DISubprogram(name: "abort", scope: !1146, file: !1146, line: 598, type: !532, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2621 = distinct !DISubprogram(name: "quotearg_buffer", scope: !577, file: !577, line: 774, type: !2622, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2624)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!134, !125, !134, !137, !134, !2537}
!2624 = !{!2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632}
!2625 = !DILocalVariable(name: "buffer", arg: 1, scope: !2621, file: !577, line: 774, type: !125)
!2626 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2621, file: !577, line: 774, type: !134)
!2627 = !DILocalVariable(name: "arg", arg: 3, scope: !2621, file: !577, line: 775, type: !137)
!2628 = !DILocalVariable(name: "argsize", arg: 4, scope: !2621, file: !577, line: 775, type: !134)
!2629 = !DILocalVariable(name: "o", arg: 5, scope: !2621, file: !577, line: 776, type: !2537)
!2630 = !DILocalVariable(name: "p", scope: !2621, file: !577, line: 778, type: !2537)
!2631 = !DILocalVariable(name: "saved_errno", scope: !2621, file: !577, line: 779, type: !105)
!2632 = !DILocalVariable(name: "r", scope: !2621, file: !577, line: 780, type: !134)
!2633 = !DILocation(line: 0, scope: !2621)
!2634 = !DILocation(line: 778, column: 37, scope: !2621)
!2635 = !DILocation(line: 779, column: 21, scope: !2621)
!2636 = !DILocation(line: 781, column: 43, scope: !2621)
!2637 = !DILocation(line: 781, column: 53, scope: !2621)
!2638 = !DILocation(line: 781, column: 63, scope: !2621)
!2639 = !DILocation(line: 782, column: 43, scope: !2621)
!2640 = !DILocation(line: 782, column: 58, scope: !2621)
!2641 = !DILocation(line: 780, column: 14, scope: !2621)
!2642 = !DILocation(line: 783, column: 9, scope: !2621)
!2643 = !DILocation(line: 784, column: 3, scope: !2621)
!2644 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !577, file: !577, line: 251, type: !2645, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2649)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!134, !125, !134, !137, !134, !603, !105, !2647, !137, !137}
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!2649 = !{!2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2675, !2677, !2680, !2681, !2682, !2683, !2686, !2687, !2689, !2690, !2693, !2697, !2698, !2706, !2709, !2710, !2711}
!2650 = !DILocalVariable(name: "buffer", arg: 1, scope: !2644, file: !577, line: 251, type: !125)
!2651 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2644, file: !577, line: 251, type: !134)
!2652 = !DILocalVariable(name: "arg", arg: 3, scope: !2644, file: !577, line: 252, type: !137)
!2653 = !DILocalVariable(name: "argsize", arg: 4, scope: !2644, file: !577, line: 252, type: !134)
!2654 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2644, file: !577, line: 253, type: !603)
!2655 = !DILocalVariable(name: "flags", arg: 6, scope: !2644, file: !577, line: 253, type: !105)
!2656 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2644, file: !577, line: 254, type: !2647)
!2657 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2644, file: !577, line: 255, type: !137)
!2658 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2644, file: !577, line: 256, type: !137)
!2659 = !DILocalVariable(name: "unibyte_locale", scope: !2644, file: !577, line: 258, type: !190)
!2660 = !DILocalVariable(name: "len", scope: !2644, file: !577, line: 260, type: !134)
!2661 = !DILocalVariable(name: "orig_buffersize", scope: !2644, file: !577, line: 261, type: !134)
!2662 = !DILocalVariable(name: "quote_string", scope: !2644, file: !577, line: 262, type: !137)
!2663 = !DILocalVariable(name: "quote_string_len", scope: !2644, file: !577, line: 263, type: !134)
!2664 = !DILocalVariable(name: "backslash_escapes", scope: !2644, file: !577, line: 264, type: !190)
!2665 = !DILocalVariable(name: "elide_outer_quotes", scope: !2644, file: !577, line: 265, type: !190)
!2666 = !DILocalVariable(name: "encountered_single_quote", scope: !2644, file: !577, line: 266, type: !190)
!2667 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2644, file: !577, line: 267, type: !190)
!2668 = !DILabel(scope: !2644, name: "process_input", file: !577, line: 308)
!2669 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2644, file: !577, line: 309, type: !190)
!2670 = !DILocalVariable(name: "lq", scope: !2671, file: !577, line: 361, type: !137)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !577, line: 361, column: 11)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !577, line: 360, column: 13)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !577, line: 333, column: 7)
!2674 = distinct !DILexicalBlock(scope: !2644, file: !577, line: 312, column: 5)
!2675 = !DILocalVariable(name: "i", scope: !2676, file: !577, line: 395, type: !134)
!2676 = distinct !DILexicalBlock(scope: !2644, file: !577, line: 395, column: 3)
!2677 = !DILocalVariable(name: "is_right_quote", scope: !2678, file: !577, line: 397, type: !190)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !577, line: 396, column: 5)
!2679 = distinct !DILexicalBlock(scope: !2676, file: !577, line: 395, column: 3)
!2680 = !DILocalVariable(name: "escaping", scope: !2678, file: !577, line: 398, type: !190)
!2681 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2678, file: !577, line: 399, type: !190)
!2682 = !DILocalVariable(name: "c", scope: !2678, file: !577, line: 417, type: !139)
!2683 = !DILabel(scope: !2684, name: "c_and_shell_escape", file: !577, line: 502)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !577, line: 478, column: 9)
!2685 = distinct !DILexicalBlock(scope: !2678, file: !577, line: 419, column: 9)
!2686 = !DILabel(scope: !2684, name: "c_escape", file: !577, line: 507)
!2687 = !DILocalVariable(name: "m", scope: !2688, file: !577, line: 598, type: !134)
!2688 = distinct !DILexicalBlock(scope: !2685, file: !577, line: 596, column: 11)
!2689 = !DILocalVariable(name: "printable", scope: !2688, file: !577, line: 600, type: !190)
!2690 = !DILocalVariable(name: "mbs", scope: !2691, file: !577, line: 609, type: !664)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !577, line: 608, column: 15)
!2692 = distinct !DILexicalBlock(scope: !2688, file: !577, line: 602, column: 17)
!2693 = !DILocalVariable(name: "w", scope: !2694, file: !577, line: 618, type: !557)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !577, line: 617, column: 19)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !577, line: 616, column: 17)
!2696 = distinct !DILexicalBlock(scope: !2691, file: !577, line: 616, column: 17)
!2697 = !DILocalVariable(name: "bytes", scope: !2694, file: !577, line: 619, type: !134)
!2698 = !DILocalVariable(name: "j", scope: !2699, file: !577, line: 648, type: !134)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !577, line: 648, column: 29)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !577, line: 647, column: 27)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !577, line: 645, column: 29)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !577, line: 636, column: 23)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !577, line: 628, column: 30)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !577, line: 623, column: 30)
!2705 = distinct !DILexicalBlock(scope: !2694, file: !577, line: 621, column: 25)
!2706 = !DILocalVariable(name: "ilim", scope: !2707, file: !577, line: 674, type: !134)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !577, line: 671, column: 15)
!2708 = distinct !DILexicalBlock(scope: !2688, file: !577, line: 670, column: 17)
!2709 = !DILabel(scope: !2678, name: "store_escape", file: !577, line: 709)
!2710 = !DILabel(scope: !2678, name: "store_c", file: !577, line: 712)
!2711 = !DILabel(scope: !2644, name: "force_outer_quoting_style", file: !577, line: 753)
!2712 = distinct !DIAssignID()
!2713 = distinct !DIAssignID()
!2714 = distinct !DIAssignID()
!2715 = distinct !DIAssignID()
!2716 = distinct !DIAssignID()
!2717 = !DILocation(line: 0, scope: !2691)
!2718 = distinct !DIAssignID()
!2719 = !DILocation(line: 0, scope: !2694)
!2720 = !DILocation(line: 0, scope: !2644)
!2721 = !DILocation(line: 258, column: 25, scope: !2644)
!2722 = !DILocation(line: 258, column: 36, scope: !2644)
!2723 = !DILocation(line: 265, column: 8, scope: !2644)
!2724 = !DILocation(line: 267, column: 3, scope: !2644)
!2725 = !DILocation(line: 261, column: 10, scope: !2644)
!2726 = !DILocation(line: 262, column: 15, scope: !2644)
!2727 = !DILocation(line: 263, column: 10, scope: !2644)
!2728 = !DILocation(line: 264, column: 8, scope: !2644)
!2729 = !DILocation(line: 266, column: 8, scope: !2644)
!2730 = !DILocation(line: 267, column: 8, scope: !2644)
!2731 = !DILocation(line: 308, column: 2, scope: !2644)
!2732 = !DILocation(line: 311, column: 3, scope: !2644)
!2733 = !DILocation(line: 318, column: 11, scope: !2674)
!2734 = !DILocation(line: 318, column: 12, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2674, file: !577, line: 318, column: 11)
!2736 = !DILocation(line: 319, column: 9, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !577, line: 319, column: 9)
!2738 = distinct !DILexicalBlock(scope: !2735, file: !577, line: 319, column: 9)
!2739 = !DILocation(line: 319, column: 9, scope: !2738)
!2740 = !DILocation(line: 0, scope: !655, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 357, column: 26, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !577, line: 335, column: 11)
!2743 = distinct !DILexicalBlock(scope: !2673, file: !577, line: 334, column: 13)
!2744 = !DILocation(line: 199, column: 29, scope: !655, inlinedAt: !2741)
!2745 = !DILocation(line: 201, column: 19, scope: !2746, inlinedAt: !2741)
!2746 = distinct !DILexicalBlock(scope: !655, file: !577, line: 201, column: 7)
!2747 = !DILocation(line: 201, column: 7, scope: !655, inlinedAt: !2741)
!2748 = !DILocation(line: 229, column: 3, scope: !655, inlinedAt: !2741)
!2749 = !DILocation(line: 230, column: 3, scope: !655, inlinedAt: !2741)
!2750 = !DILocalVariable(name: "ps", arg: 1, scope: !2751, file: !2491, line: 1135, type: !2754)
!2751 = distinct !DISubprogram(name: "mbszero", scope: !2491, file: !2491, line: 1135, type: !2752, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2755)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{null, !2754}
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!2755 = !{!2750}
!2756 = !DILocation(line: 0, scope: !2751, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 230, column: 18, scope: !655, inlinedAt: !2741)
!2758 = !DILocalVariable(name: "__dest", arg: 1, scope: !2759, file: !2500, line: 57, type: !126)
!2759 = distinct !DISubprogram(name: "memset", scope: !2500, file: !2500, line: 57, type: !2501, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2760)
!2760 = !{!2758, !2761, !2762}
!2761 = !DILocalVariable(name: "__ch", arg: 2, scope: !2759, file: !2500, line: 57, type: !105)
!2762 = !DILocalVariable(name: "__len", arg: 3, scope: !2759, file: !2500, line: 57, type: !134)
!2763 = !DILocation(line: 0, scope: !2759, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 1137, column: 3, scope: !2751, inlinedAt: !2757)
!2765 = !DILocation(line: 59, column: 10, scope: !2759, inlinedAt: !2764)
!2766 = !DILocation(line: 231, column: 7, scope: !2767, inlinedAt: !2741)
!2767 = distinct !DILexicalBlock(scope: !655, file: !577, line: 231, column: 7)
!2768 = !DILocation(line: 231, column: 40, scope: !2767, inlinedAt: !2741)
!2769 = !DILocation(line: 231, column: 45, scope: !2767, inlinedAt: !2741)
!2770 = !DILocation(line: 235, column: 1, scope: !655, inlinedAt: !2741)
!2771 = !DILocation(line: 0, scope: !655, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 358, column: 27, scope: !2742)
!2773 = !DILocation(line: 199, column: 29, scope: !655, inlinedAt: !2772)
!2774 = !DILocation(line: 201, column: 19, scope: !2746, inlinedAt: !2772)
!2775 = !DILocation(line: 201, column: 7, scope: !655, inlinedAt: !2772)
!2776 = !DILocation(line: 229, column: 3, scope: !655, inlinedAt: !2772)
!2777 = !DILocation(line: 230, column: 3, scope: !655, inlinedAt: !2772)
!2778 = !DILocation(line: 0, scope: !2751, inlinedAt: !2779)
!2779 = distinct !DILocation(line: 230, column: 18, scope: !655, inlinedAt: !2772)
!2780 = !DILocation(line: 0, scope: !2759, inlinedAt: !2781)
!2781 = distinct !DILocation(line: 1137, column: 3, scope: !2751, inlinedAt: !2779)
!2782 = !DILocation(line: 59, column: 10, scope: !2759, inlinedAt: !2781)
!2783 = !DILocation(line: 231, column: 7, scope: !2767, inlinedAt: !2772)
!2784 = !DILocation(line: 231, column: 40, scope: !2767, inlinedAt: !2772)
!2785 = !DILocation(line: 231, column: 45, scope: !2767, inlinedAt: !2772)
!2786 = !DILocation(line: 235, column: 1, scope: !655, inlinedAt: !2772)
!2787 = !DILocation(line: 360, column: 14, scope: !2672)
!2788 = !DILocation(line: 360, column: 13, scope: !2673)
!2789 = !DILocation(line: 0, scope: !2671)
!2790 = !DILocation(line: 361, column: 45, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2671, file: !577, line: 361, column: 11)
!2792 = !DILocation(line: 361, column: 11, scope: !2671)
!2793 = !DILocation(line: 362, column: 13, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !577, line: 362, column: 13)
!2795 = distinct !DILexicalBlock(scope: !2791, file: !577, line: 362, column: 13)
!2796 = !DILocation(line: 362, column: 13, scope: !2795)
!2797 = !DILocation(line: 361, column: 52, scope: !2791)
!2798 = distinct !{!2798, !2792, !2799, !1069}
!2799 = !DILocation(line: 362, column: 13, scope: !2671)
!2800 = !DILocation(line: 260, column: 10, scope: !2644)
!2801 = !DILocation(line: 365, column: 28, scope: !2673)
!2802 = !DILocation(line: 367, column: 7, scope: !2674)
!2803 = !DILocation(line: 370, column: 7, scope: !2674)
!2804 = !DILocation(line: 373, column: 7, scope: !2674)
!2805 = !DILocation(line: 376, column: 12, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2674, file: !577, line: 376, column: 11)
!2807 = !DILocation(line: 376, column: 11, scope: !2674)
!2808 = !DILocation(line: 381, column: 12, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2674, file: !577, line: 381, column: 11)
!2810 = !DILocation(line: 381, column: 11, scope: !2674)
!2811 = !DILocation(line: 382, column: 9, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !577, line: 382, column: 9)
!2813 = distinct !DILexicalBlock(scope: !2809, file: !577, line: 382, column: 9)
!2814 = !DILocation(line: 382, column: 9, scope: !2813)
!2815 = !DILocation(line: 389, column: 7, scope: !2674)
!2816 = !DILocation(line: 392, column: 7, scope: !2674)
!2817 = !DILocation(line: 0, scope: !2676)
!2818 = !DILocation(line: 395, column: 8, scope: !2676)
!2819 = !DILocation(line: 309, column: 8, scope: !2644)
!2820 = !DILocation(line: 395, scope: !2676)
!2821 = !DILocation(line: 395, column: 34, scope: !2679)
!2822 = !DILocation(line: 395, column: 26, scope: !2679)
!2823 = !DILocation(line: 395, column: 48, scope: !2679)
!2824 = !DILocation(line: 395, column: 55, scope: !2679)
!2825 = !DILocation(line: 395, column: 3, scope: !2676)
!2826 = !DILocation(line: 395, column: 67, scope: !2679)
!2827 = !DILocation(line: 0, scope: !2678)
!2828 = !DILocation(line: 402, column: 11, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2678, file: !577, line: 401, column: 11)
!2830 = !DILocation(line: 404, column: 17, scope: !2829)
!2831 = !DILocation(line: 405, column: 39, scope: !2829)
!2832 = !DILocation(line: 409, column: 32, scope: !2829)
!2833 = !DILocation(line: 405, column: 19, scope: !2829)
!2834 = !DILocation(line: 405, column: 15, scope: !2829)
!2835 = !DILocation(line: 410, column: 11, scope: !2829)
!2836 = !DILocation(line: 410, column: 25, scope: !2829)
!2837 = !DILocalVariable(name: "__s1", arg: 1, scope: !2838, file: !1035, line: 974, type: !1168)
!2838 = distinct !DISubprogram(name: "memeq", scope: !1035, file: !1035, line: 974, type: !2460, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2839)
!2839 = !{!2837, !2840, !2841}
!2840 = !DILocalVariable(name: "__s2", arg: 2, scope: !2838, file: !1035, line: 974, type: !1168)
!2841 = !DILocalVariable(name: "__n", arg: 3, scope: !2838, file: !1035, line: 974, type: !134)
!2842 = !DILocation(line: 0, scope: !2838, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 410, column: 14, scope: !2829)
!2844 = !DILocation(line: 976, column: 11, scope: !2838, inlinedAt: !2843)
!2845 = !DILocation(line: 976, column: 10, scope: !2838, inlinedAt: !2843)
!2846 = !DILocation(line: 401, column: 11, scope: !2678)
!2847 = !DILocation(line: 417, column: 25, scope: !2678)
!2848 = !DILocation(line: 418, column: 7, scope: !2678)
!2849 = !DILocation(line: 421, column: 15, scope: !2685)
!2850 = !DILocation(line: 423, column: 15, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !577, line: 423, column: 15)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !577, line: 422, column: 13)
!2853 = distinct !DILexicalBlock(scope: !2685, file: !577, line: 421, column: 15)
!2854 = !DILocation(line: 423, column: 15, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2851, file: !577, line: 423, column: 15)
!2856 = !DILocation(line: 423, column: 15, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !577, line: 423, column: 15)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !577, line: 423, column: 15)
!2859 = distinct !DILexicalBlock(scope: !2855, file: !577, line: 423, column: 15)
!2860 = !DILocation(line: 423, column: 15, scope: !2858)
!2861 = !DILocation(line: 423, column: 15, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !577, line: 423, column: 15)
!2863 = distinct !DILexicalBlock(scope: !2859, file: !577, line: 423, column: 15)
!2864 = !DILocation(line: 423, column: 15, scope: !2863)
!2865 = !DILocation(line: 423, column: 15, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !577, line: 423, column: 15)
!2867 = distinct !DILexicalBlock(scope: !2859, file: !577, line: 423, column: 15)
!2868 = !DILocation(line: 423, column: 15, scope: !2867)
!2869 = !DILocation(line: 423, column: 15, scope: !2859)
!2870 = !DILocation(line: 423, column: 15, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !577, line: 423, column: 15)
!2872 = distinct !DILexicalBlock(scope: !2851, file: !577, line: 423, column: 15)
!2873 = !DILocation(line: 423, column: 15, scope: !2872)
!2874 = !DILocation(line: 431, column: 19, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2852, file: !577, line: 430, column: 19)
!2876 = !DILocation(line: 431, column: 24, scope: !2875)
!2877 = !DILocation(line: 431, column: 28, scope: !2875)
!2878 = !DILocation(line: 431, column: 38, scope: !2875)
!2879 = !DILocation(line: 431, column: 48, scope: !2875)
!2880 = !DILocation(line: 431, column: 59, scope: !2875)
!2881 = !DILocation(line: 433, column: 19, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !577, line: 433, column: 19)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !577, line: 433, column: 19)
!2884 = distinct !DILexicalBlock(scope: !2875, file: !577, line: 432, column: 17)
!2885 = !DILocation(line: 433, column: 19, scope: !2883)
!2886 = !DILocation(line: 434, column: 19, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !577, line: 434, column: 19)
!2888 = distinct !DILexicalBlock(scope: !2884, file: !577, line: 434, column: 19)
!2889 = !DILocation(line: 434, column: 19, scope: !2888)
!2890 = !DILocation(line: 435, column: 17, scope: !2884)
!2891 = !DILocation(line: 442, column: 20, scope: !2853)
!2892 = !DILocation(line: 447, column: 11, scope: !2685)
!2893 = !DILocation(line: 450, column: 19, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2685, file: !577, line: 448, column: 13)
!2895 = !DILocation(line: 456, column: 19, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2894, file: !577, line: 455, column: 19)
!2897 = !DILocation(line: 456, column: 24, scope: !2896)
!2898 = !DILocation(line: 456, column: 28, scope: !2896)
!2899 = !DILocation(line: 456, column: 38, scope: !2896)
!2900 = !DILocation(line: 456, column: 41, scope: !2896)
!2901 = !DILocation(line: 456, column: 52, scope: !2896)
!2902 = !DILocation(line: 455, column: 19, scope: !2894)
!2903 = !DILocation(line: 457, column: 25, scope: !2896)
!2904 = !DILocation(line: 457, column: 17, scope: !2896)
!2905 = !DILocation(line: 464, column: 25, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2896, file: !577, line: 458, column: 19)
!2907 = !DILocation(line: 468, column: 21, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !577, line: 468, column: 21)
!2909 = distinct !DILexicalBlock(scope: !2906, file: !577, line: 468, column: 21)
!2910 = !DILocation(line: 468, column: 21, scope: !2909)
!2911 = !DILocation(line: 469, column: 21, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !577, line: 469, column: 21)
!2913 = distinct !DILexicalBlock(scope: !2906, file: !577, line: 469, column: 21)
!2914 = !DILocation(line: 469, column: 21, scope: !2913)
!2915 = !DILocation(line: 470, column: 21, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !577, line: 470, column: 21)
!2917 = distinct !DILexicalBlock(scope: !2906, file: !577, line: 470, column: 21)
!2918 = !DILocation(line: 470, column: 21, scope: !2917)
!2919 = !DILocation(line: 471, column: 21, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !577, line: 471, column: 21)
!2921 = distinct !DILexicalBlock(scope: !2906, file: !577, line: 471, column: 21)
!2922 = !DILocation(line: 471, column: 21, scope: !2921)
!2923 = !DILocation(line: 472, column: 21, scope: !2906)
!2924 = !DILocation(line: 482, column: 33, scope: !2684)
!2925 = !DILocation(line: 483, column: 33, scope: !2684)
!2926 = !DILocation(line: 485, column: 33, scope: !2684)
!2927 = !DILocation(line: 486, column: 33, scope: !2684)
!2928 = !DILocation(line: 487, column: 33, scope: !2684)
!2929 = !DILocation(line: 490, column: 17, scope: !2684)
!2930 = !DILocation(line: 492, column: 21, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !577, line: 491, column: 15)
!2932 = distinct !DILexicalBlock(scope: !2684, file: !577, line: 490, column: 17)
!2933 = !DILocation(line: 499, column: 35, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2684, file: !577, line: 499, column: 17)
!2935 = !DILocation(line: 499, column: 57, scope: !2934)
!2936 = !DILocation(line: 0, scope: !2684)
!2937 = !DILocation(line: 502, column: 11, scope: !2684)
!2938 = !DILocation(line: 504, column: 17, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2684, file: !577, line: 503, column: 17)
!2940 = !DILocation(line: 507, column: 11, scope: !2684)
!2941 = !DILocation(line: 508, column: 17, scope: !2684)
!2942 = !DILocation(line: 517, column: 15, scope: !2685)
!2943 = !DILocation(line: 517, column: 40, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2685, file: !577, line: 517, column: 15)
!2945 = !DILocation(line: 517, column: 47, scope: !2944)
!2946 = !DILocation(line: 517, column: 18, scope: !2944)
!2947 = !DILocation(line: 521, column: 17, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2685, file: !577, line: 521, column: 15)
!2949 = !DILocation(line: 521, column: 15, scope: !2685)
!2950 = !DILocation(line: 525, column: 11, scope: !2685)
!2951 = !DILocation(line: 537, column: 15, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2685, file: !577, line: 536, column: 15)
!2953 = !DILocation(line: 544, column: 15, scope: !2685)
!2954 = !DILocation(line: 546, column: 19, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !577, line: 545, column: 13)
!2956 = distinct !DILexicalBlock(scope: !2685, file: !577, line: 544, column: 15)
!2957 = !DILocation(line: 549, column: 19, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2955, file: !577, line: 549, column: 19)
!2959 = !DILocation(line: 549, column: 30, scope: !2958)
!2960 = !DILocation(line: 558, column: 15, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !577, line: 558, column: 15)
!2962 = distinct !DILexicalBlock(scope: !2955, file: !577, line: 558, column: 15)
!2963 = !DILocation(line: 558, column: 15, scope: !2962)
!2964 = !DILocation(line: 559, column: 15, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !577, line: 559, column: 15)
!2966 = distinct !DILexicalBlock(scope: !2955, file: !577, line: 559, column: 15)
!2967 = !DILocation(line: 559, column: 15, scope: !2966)
!2968 = !DILocation(line: 560, column: 15, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !577, line: 560, column: 15)
!2970 = distinct !DILexicalBlock(scope: !2955, file: !577, line: 560, column: 15)
!2971 = !DILocation(line: 560, column: 15, scope: !2970)
!2972 = !DILocation(line: 562, column: 13, scope: !2955)
!2973 = !DILocation(line: 602, column: 17, scope: !2688)
!2974 = !DILocation(line: 0, scope: !2688)
!2975 = !DILocation(line: 605, column: 29, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2692, file: !577, line: 603, column: 15)
!2977 = !DILocation(line: 605, column: 27, scope: !2976)
!2978 = !DILocation(line: 606, column: 15, scope: !2976)
!2979 = !DILocation(line: 609, column: 17, scope: !2691)
!2980 = !DILocation(line: 0, scope: !2751, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 609, column: 32, scope: !2691)
!2982 = !DILocation(line: 0, scope: !2759, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 1137, column: 3, scope: !2751, inlinedAt: !2981)
!2984 = !DILocation(line: 59, column: 10, scope: !2759, inlinedAt: !2983)
!2985 = !DILocation(line: 613, column: 29, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2691, file: !577, line: 613, column: 21)
!2987 = !DILocation(line: 613, column: 21, scope: !2691)
!2988 = !DILocation(line: 614, column: 29, scope: !2986)
!2989 = !DILocation(line: 614, column: 19, scope: !2986)
!2990 = !DILocation(line: 618, column: 21, scope: !2694)
!2991 = !DILocation(line: 620, column: 54, scope: !2694)
!2992 = !DILocation(line: 619, column: 36, scope: !2694)
!2993 = !DILocation(line: 621, column: 25, scope: !2694)
!2994 = !DILocation(line: 631, column: 38, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2703, file: !577, line: 629, column: 23)
!2996 = !DILocation(line: 631, column: 48, scope: !2995)
!2997 = !DILocation(line: 626, column: 25, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2704, file: !577, line: 624, column: 23)
!2999 = !DILocation(line: 631, column: 51, scope: !2995)
!3000 = !DILocation(line: 631, column: 25, scope: !2995)
!3001 = !DILocation(line: 632, column: 28, scope: !2995)
!3002 = !DILocation(line: 631, column: 34, scope: !2995)
!3003 = distinct !{!3003, !3000, !3001, !1069}
!3004 = !DILocation(line: 0, scope: !2699)
!3005 = !DILocation(line: 646, column: 29, scope: !2701)
!3006 = !DILocation(line: 649, column: 39, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2699, file: !577, line: 648, column: 29)
!3008 = !DILocation(line: 649, column: 31, scope: !3007)
!3009 = !DILocation(line: 648, column: 60, scope: !3007)
!3010 = !DILocation(line: 648, column: 50, scope: !3007)
!3011 = !DILocation(line: 648, column: 29, scope: !2699)
!3012 = distinct !{!3012, !3011, !3013, !1069}
!3013 = !DILocation(line: 654, column: 33, scope: !2699)
!3014 = !DILocation(line: 657, column: 43, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2702, file: !577, line: 657, column: 29)
!3016 = !DILocalVariable(name: "wc", arg: 1, scope: !3017, file: !3018, line: 865, type: !3021)
!3017 = distinct !DISubprogram(name: "c32isprint", scope: !3018, file: !3018, line: 865, type: !3019, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3023)
!3018 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!105, !3021}
!3021 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3022, line: 20, baseType: !98)
!3022 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3023 = !{!3016}
!3024 = !DILocation(line: 0, scope: !3017, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 657, column: 31, scope: !3015)
!3026 = !DILocation(line: 871, column: 10, scope: !3017, inlinedAt: !3025)
!3027 = !DILocation(line: 657, column: 31, scope: !3015)
!3028 = !DILocation(line: 664, column: 23, scope: !2694)
!3029 = !DILocation(line: 665, column: 19, scope: !2695)
!3030 = !DILocation(line: 666, column: 15, scope: !2692)
!3031 = !DILocation(line: 0, scope: !2692)
!3032 = !DILocation(line: 670, column: 19, scope: !2708)
!3033 = !DILocation(line: 670, column: 23, scope: !2708)
!3034 = !DILocation(line: 674, column: 33, scope: !2707)
!3035 = !DILocation(line: 0, scope: !2707)
!3036 = !DILocation(line: 676, column: 17, scope: !2707)
!3037 = !DILocation(line: 398, column: 12, scope: !2678)
!3038 = !DILocation(line: 678, column: 43, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !577, line: 678, column: 25)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !577, line: 677, column: 19)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !577, line: 676, column: 17)
!3042 = distinct !DILexicalBlock(scope: !2707, file: !577, line: 676, column: 17)
!3043 = !DILocation(line: 680, column: 25, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !577, line: 680, column: 25)
!3045 = distinct !DILexicalBlock(scope: !3039, file: !577, line: 679, column: 23)
!3046 = !DILocation(line: 680, column: 25, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3044, file: !577, line: 680, column: 25)
!3048 = !DILocation(line: 680, column: 25, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !577, line: 680, column: 25)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !577, line: 680, column: 25)
!3051 = distinct !DILexicalBlock(scope: !3047, file: !577, line: 680, column: 25)
!3052 = !DILocation(line: 680, column: 25, scope: !3050)
!3053 = !DILocation(line: 680, column: 25, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3055, file: !577, line: 680, column: 25)
!3055 = distinct !DILexicalBlock(scope: !3051, file: !577, line: 680, column: 25)
!3056 = !DILocation(line: 680, column: 25, scope: !3055)
!3057 = !DILocation(line: 680, column: 25, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !577, line: 680, column: 25)
!3059 = distinct !DILexicalBlock(scope: !3051, file: !577, line: 680, column: 25)
!3060 = !DILocation(line: 680, column: 25, scope: !3059)
!3061 = !DILocation(line: 680, column: 25, scope: !3051)
!3062 = !DILocation(line: 680, column: 25, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !577, line: 680, column: 25)
!3064 = distinct !DILexicalBlock(scope: !3044, file: !577, line: 680, column: 25)
!3065 = !DILocation(line: 680, column: 25, scope: !3064)
!3066 = !DILocation(line: 681, column: 25, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !577, line: 681, column: 25)
!3068 = distinct !DILexicalBlock(scope: !3045, file: !577, line: 681, column: 25)
!3069 = !DILocation(line: 681, column: 25, scope: !3068)
!3070 = !DILocation(line: 682, column: 25, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !577, line: 682, column: 25)
!3072 = distinct !DILexicalBlock(scope: !3045, file: !577, line: 682, column: 25)
!3073 = !DILocation(line: 682, column: 25, scope: !3072)
!3074 = !DILocation(line: 683, column: 38, scope: !3045)
!3075 = !DILocation(line: 683, column: 33, scope: !3045)
!3076 = !DILocation(line: 684, column: 23, scope: !3045)
!3077 = !DILocation(line: 685, column: 30, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3039, file: !577, line: 685, column: 30)
!3079 = !DILocation(line: 685, column: 30, scope: !3039)
!3080 = !DILocation(line: 687, column: 25, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !577, line: 687, column: 25)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !577, line: 687, column: 25)
!3083 = distinct !DILexicalBlock(scope: !3078, file: !577, line: 686, column: 23)
!3084 = !DILocation(line: 687, column: 25, scope: !3082)
!3085 = !DILocation(line: 689, column: 23, scope: !3083)
!3086 = !DILocation(line: 690, column: 35, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3040, file: !577, line: 690, column: 25)
!3088 = !DILocation(line: 690, column: 30, scope: !3087)
!3089 = !DILocation(line: 690, column: 25, scope: !3040)
!3090 = !DILocation(line: 692, column: 21, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !577, line: 692, column: 21)
!3092 = distinct !DILexicalBlock(scope: !3040, file: !577, line: 692, column: 21)
!3093 = !DILocation(line: 692, column: 21, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !577, line: 692, column: 21)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !577, line: 692, column: 21)
!3096 = distinct !DILexicalBlock(scope: !3091, file: !577, line: 692, column: 21)
!3097 = !DILocation(line: 692, column: 21, scope: !3095)
!3098 = !DILocation(line: 692, column: 21, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !577, line: 692, column: 21)
!3100 = distinct !DILexicalBlock(scope: !3096, file: !577, line: 692, column: 21)
!3101 = !DILocation(line: 692, column: 21, scope: !3100)
!3102 = !DILocation(line: 692, column: 21, scope: !3096)
!3103 = !DILocation(line: 0, scope: !3040)
!3104 = !DILocation(line: 693, column: 21, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !577, line: 693, column: 21)
!3106 = distinct !DILexicalBlock(scope: !3040, file: !577, line: 693, column: 21)
!3107 = !DILocation(line: 693, column: 21, scope: !3106)
!3108 = !DILocation(line: 694, column: 25, scope: !3040)
!3109 = !DILocation(line: 676, column: 17, scope: !3041)
!3110 = distinct !{!3110, !3111, !3112}
!3111 = !DILocation(line: 676, column: 17, scope: !3042)
!3112 = !DILocation(line: 695, column: 19, scope: !3042)
!3113 = !DILocation(line: 409, column: 30, scope: !2829)
!3114 = !DILocation(line: 702, column: 34, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !2678, file: !577, line: 702, column: 11)
!3116 = !DILocation(line: 704, column: 14, scope: !3115)
!3117 = !DILocation(line: 705, column: 14, scope: !3115)
!3118 = !DILocation(line: 705, column: 35, scope: !3115)
!3119 = !DILocation(line: 705, column: 17, scope: !3115)
!3120 = !DILocation(line: 705, column: 47, scope: !3115)
!3121 = !DILocation(line: 705, column: 65, scope: !3115)
!3122 = !DILocation(line: 706, column: 11, scope: !3115)
!3123 = !DILocation(line: 702, column: 11, scope: !2678)
!3124 = !DILocation(line: 395, column: 15, scope: !2676)
!3125 = !DILocation(line: 709, column: 5, scope: !2678)
!3126 = !DILocation(line: 710, column: 7, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !2678, file: !577, line: 710, column: 7)
!3128 = !DILocation(line: 710, column: 7, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3127, file: !577, line: 710, column: 7)
!3130 = !DILocation(line: 710, column: 7, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !577, line: 710, column: 7)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !577, line: 710, column: 7)
!3133 = distinct !DILexicalBlock(scope: !3129, file: !577, line: 710, column: 7)
!3134 = !DILocation(line: 710, column: 7, scope: !3132)
!3135 = !DILocation(line: 710, column: 7, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !577, line: 710, column: 7)
!3137 = distinct !DILexicalBlock(scope: !3133, file: !577, line: 710, column: 7)
!3138 = !DILocation(line: 710, column: 7, scope: !3137)
!3139 = !DILocation(line: 710, column: 7, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !577, line: 710, column: 7)
!3141 = distinct !DILexicalBlock(scope: !3133, file: !577, line: 710, column: 7)
!3142 = !DILocation(line: 710, column: 7, scope: !3141)
!3143 = !DILocation(line: 710, column: 7, scope: !3133)
!3144 = !DILocation(line: 710, column: 7, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !577, line: 710, column: 7)
!3146 = distinct !DILexicalBlock(scope: !3127, file: !577, line: 710, column: 7)
!3147 = !DILocation(line: 710, column: 7, scope: !3146)
!3148 = !DILocation(line: 712, column: 5, scope: !2678)
!3149 = !DILocation(line: 713, column: 7, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !577, line: 713, column: 7)
!3151 = distinct !DILexicalBlock(scope: !2678, file: !577, line: 713, column: 7)
!3152 = !DILocation(line: 417, column: 21, scope: !2678)
!3153 = !DILocation(line: 713, column: 7, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !577, line: 713, column: 7)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !577, line: 713, column: 7)
!3156 = distinct !DILexicalBlock(scope: !3150, file: !577, line: 713, column: 7)
!3157 = !DILocation(line: 713, column: 7, scope: !3155)
!3158 = !DILocation(line: 713, column: 7, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !577, line: 713, column: 7)
!3160 = distinct !DILexicalBlock(scope: !3156, file: !577, line: 713, column: 7)
!3161 = !DILocation(line: 713, column: 7, scope: !3160)
!3162 = !DILocation(line: 713, column: 7, scope: !3156)
!3163 = !DILocation(line: 714, column: 7, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !577, line: 714, column: 7)
!3165 = distinct !DILexicalBlock(scope: !2678, file: !577, line: 714, column: 7)
!3166 = !DILocation(line: 714, column: 7, scope: !3165)
!3167 = !DILocation(line: 716, column: 13, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !2678, file: !577, line: 716, column: 11)
!3169 = !DILocation(line: 716, column: 11, scope: !2678)
!3170 = !DILocation(line: 718, column: 5, scope: !2679)
!3171 = !DILocation(line: 395, column: 82, scope: !2679)
!3172 = !DILocation(line: 395, column: 3, scope: !2679)
!3173 = distinct !{!3173, !2825, !3174, !1069}
!3174 = !DILocation(line: 718, column: 5, scope: !2676)
!3175 = !DILocation(line: 720, column: 11, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !2644, file: !577, line: 720, column: 7)
!3177 = !DILocation(line: 720, column: 16, scope: !3176)
!3178 = !DILocation(line: 728, column: 51, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !2644, file: !577, line: 728, column: 7)
!3180 = !DILocation(line: 731, column: 11, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !577, line: 731, column: 11)
!3182 = distinct !DILexicalBlock(scope: !3179, file: !577, line: 730, column: 5)
!3183 = !DILocation(line: 731, column: 11, scope: !3182)
!3184 = !DILocation(line: 732, column: 16, scope: !3181)
!3185 = !DILocation(line: 732, column: 9, scope: !3181)
!3186 = !DILocation(line: 736, column: 18, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3181, file: !577, line: 736, column: 16)
!3188 = !DILocation(line: 736, column: 29, scope: !3187)
!3189 = !DILocation(line: 745, column: 7, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !2644, file: !577, line: 745, column: 7)
!3191 = !DILocation(line: 745, column: 20, scope: !3190)
!3192 = !DILocation(line: 746, column: 12, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !577, line: 746, column: 5)
!3194 = distinct !DILexicalBlock(scope: !3190, file: !577, line: 746, column: 5)
!3195 = !DILocation(line: 746, column: 5, scope: !3194)
!3196 = !DILocation(line: 747, column: 7, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !577, line: 747, column: 7)
!3198 = distinct !DILexicalBlock(scope: !3193, file: !577, line: 747, column: 7)
!3199 = !DILocation(line: 747, column: 7, scope: !3198)
!3200 = !DILocation(line: 746, column: 39, scope: !3193)
!3201 = distinct !{!3201, !3195, !3202, !1069}
!3202 = !DILocation(line: 747, column: 7, scope: !3194)
!3203 = !DILocation(line: 749, column: 11, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !2644, file: !577, line: 749, column: 7)
!3205 = !DILocation(line: 749, column: 7, scope: !2644)
!3206 = !DILocation(line: 750, column: 5, scope: !3204)
!3207 = !DILocation(line: 750, column: 17, scope: !3204)
!3208 = !DILocation(line: 753, column: 2, scope: !2644)
!3209 = !DILocation(line: 756, column: 51, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !2644, file: !577, line: 756, column: 7)
!3211 = !DILocation(line: 756, column: 21, scope: !3210)
!3212 = !DILocation(line: 760, column: 42, scope: !2644)
!3213 = !DILocation(line: 758, column: 10, scope: !2644)
!3214 = !DILocation(line: 758, column: 3, scope: !2644)
!3215 = !DILocation(line: 762, column: 1, scope: !2644)
!3216 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1146, file: !1146, line: 98, type: !3217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!134}
!3219 = !DISubprogram(name: "strlen", scope: !1142, file: !1142, line: 407, type: !3220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!136, !137}
!3222 = !DISubprogram(name: "iswprint", scope: !3223, file: !3223, line: 120, type: !3019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3223 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3224 = distinct !DISubprogram(name: "quotearg_alloc", scope: !577, file: !577, line: 788, type: !3225, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3227)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!125, !137, !134, !2537}
!3227 = !{!3228, !3229, !3230}
!3228 = !DILocalVariable(name: "arg", arg: 1, scope: !3224, file: !577, line: 788, type: !137)
!3229 = !DILocalVariable(name: "argsize", arg: 2, scope: !3224, file: !577, line: 788, type: !134)
!3230 = !DILocalVariable(name: "o", arg: 3, scope: !3224, file: !577, line: 789, type: !2537)
!3231 = !DILocation(line: 0, scope: !3224)
!3232 = !DILocalVariable(name: "arg", arg: 1, scope: !3233, file: !577, line: 801, type: !137)
!3233 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !577, file: !577, line: 801, type: !3234, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3236)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!125, !137, !134, !885, !2537}
!3236 = !{!3232, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244}
!3237 = !DILocalVariable(name: "argsize", arg: 2, scope: !3233, file: !577, line: 801, type: !134)
!3238 = !DILocalVariable(name: "size", arg: 3, scope: !3233, file: !577, line: 801, type: !885)
!3239 = !DILocalVariable(name: "o", arg: 4, scope: !3233, file: !577, line: 802, type: !2537)
!3240 = !DILocalVariable(name: "p", scope: !3233, file: !577, line: 804, type: !2537)
!3241 = !DILocalVariable(name: "saved_errno", scope: !3233, file: !577, line: 805, type: !105)
!3242 = !DILocalVariable(name: "flags", scope: !3233, file: !577, line: 807, type: !105)
!3243 = !DILocalVariable(name: "bufsize", scope: !3233, file: !577, line: 808, type: !134)
!3244 = !DILocalVariable(name: "buf", scope: !3233, file: !577, line: 812, type: !125)
!3245 = !DILocation(line: 0, scope: !3233, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 791, column: 10, scope: !3224)
!3247 = !DILocation(line: 804, column: 37, scope: !3233, inlinedAt: !3246)
!3248 = !DILocation(line: 805, column: 21, scope: !3233, inlinedAt: !3246)
!3249 = !DILocation(line: 807, column: 18, scope: !3233, inlinedAt: !3246)
!3250 = !DILocation(line: 807, column: 24, scope: !3233, inlinedAt: !3246)
!3251 = !DILocation(line: 808, column: 72, scope: !3233, inlinedAt: !3246)
!3252 = !DILocation(line: 809, column: 56, scope: !3233, inlinedAt: !3246)
!3253 = !DILocation(line: 810, column: 49, scope: !3233, inlinedAt: !3246)
!3254 = !DILocation(line: 811, column: 49, scope: !3233, inlinedAt: !3246)
!3255 = !DILocation(line: 808, column: 20, scope: !3233, inlinedAt: !3246)
!3256 = !DILocation(line: 811, column: 62, scope: !3233, inlinedAt: !3246)
!3257 = !DILocation(line: 812, column: 15, scope: !3233, inlinedAt: !3246)
!3258 = !DILocation(line: 813, column: 60, scope: !3233, inlinedAt: !3246)
!3259 = !DILocation(line: 815, column: 32, scope: !3233, inlinedAt: !3246)
!3260 = !DILocation(line: 815, column: 47, scope: !3233, inlinedAt: !3246)
!3261 = !DILocation(line: 813, column: 3, scope: !3233, inlinedAt: !3246)
!3262 = !DILocation(line: 816, column: 9, scope: !3233, inlinedAt: !3246)
!3263 = !DILocation(line: 791, column: 3, scope: !3224)
!3264 = !DILocation(line: 0, scope: !3233)
!3265 = !DILocation(line: 804, column: 37, scope: !3233)
!3266 = !DILocation(line: 805, column: 21, scope: !3233)
!3267 = !DILocation(line: 807, column: 18, scope: !3233)
!3268 = !DILocation(line: 807, column: 27, scope: !3233)
!3269 = !DILocation(line: 807, column: 24, scope: !3233)
!3270 = !DILocation(line: 808, column: 72, scope: !3233)
!3271 = !DILocation(line: 809, column: 56, scope: !3233)
!3272 = !DILocation(line: 810, column: 49, scope: !3233)
!3273 = !DILocation(line: 811, column: 49, scope: !3233)
!3274 = !DILocation(line: 808, column: 20, scope: !3233)
!3275 = !DILocation(line: 811, column: 62, scope: !3233)
!3276 = !DILocation(line: 812, column: 15, scope: !3233)
!3277 = !DILocation(line: 813, column: 60, scope: !3233)
!3278 = !DILocation(line: 815, column: 32, scope: !3233)
!3279 = !DILocation(line: 815, column: 47, scope: !3233)
!3280 = !DILocation(line: 813, column: 3, scope: !3233)
!3281 = !DILocation(line: 816, column: 9, scope: !3233)
!3282 = !DILocation(line: 817, column: 7, scope: !3233)
!3283 = !DILocation(line: 818, column: 11, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3233, file: !577, line: 817, column: 7)
!3285 = !DILocation(line: 818, column: 5, scope: !3284)
!3286 = !DILocation(line: 819, column: 3, scope: !3233)
!3287 = distinct !DISubprogram(name: "quotearg_free", scope: !577, file: !577, line: 837, type: !532, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3288)
!3288 = !{!3289, !3290}
!3289 = !DILocalVariable(name: "sv", scope: !3287, file: !577, line: 839, type: !678)
!3290 = !DILocalVariable(name: "i", scope: !3291, file: !577, line: 840, type: !105)
!3291 = distinct !DILexicalBlock(scope: !3287, file: !577, line: 840, column: 3)
!3292 = !DILocation(line: 839, column: 24, scope: !3287)
!3293 = !DILocation(line: 0, scope: !3287)
!3294 = !DILocation(line: 0, scope: !3291)
!3295 = !DILocation(line: 840, column: 21, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3291, file: !577, line: 840, column: 3)
!3297 = !DILocation(line: 840, column: 3, scope: !3291)
!3298 = !DILocation(line: 842, column: 13, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3287, file: !577, line: 842, column: 7)
!3300 = !{!3301, !951, i64 8}
!3301 = !{!"slotvec", !1880, i64 0, !951, i64 8}
!3302 = !DILocation(line: 842, column: 17, scope: !3299)
!3303 = !DILocation(line: 842, column: 7, scope: !3287)
!3304 = !DILocation(line: 841, column: 17, scope: !3296)
!3305 = !DILocation(line: 841, column: 5, scope: !3296)
!3306 = !DILocation(line: 840, column: 32, scope: !3296)
!3307 = distinct !{!3307, !3297, !3308, !1069}
!3308 = !DILocation(line: 841, column: 20, scope: !3291)
!3309 = !DILocation(line: 844, column: 7, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3299, file: !577, line: 843, column: 5)
!3311 = !DILocation(line: 845, column: 21, scope: !3310)
!3312 = !{!3301, !1880, i64 0}
!3313 = !DILocation(line: 846, column: 20, scope: !3310)
!3314 = !DILocation(line: 847, column: 5, scope: !3310)
!3315 = !DILocation(line: 848, column: 10, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3287, file: !577, line: 848, column: 7)
!3317 = !DILocation(line: 848, column: 7, scope: !3287)
!3318 = !DILocation(line: 850, column: 7, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3316, file: !577, line: 849, column: 5)
!3320 = !DILocation(line: 851, column: 15, scope: !3319)
!3321 = !DILocation(line: 852, column: 5, scope: !3319)
!3322 = !DILocation(line: 853, column: 10, scope: !3287)
!3323 = !DILocation(line: 854, column: 1, scope: !3287)
!3324 = distinct !DISubprogram(name: "quotearg_n", scope: !577, file: !577, line: 919, type: !1139, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3325)
!3325 = !{!3326, !3327}
!3326 = !DILocalVariable(name: "n", arg: 1, scope: !3324, file: !577, line: 919, type: !105)
!3327 = !DILocalVariable(name: "arg", arg: 2, scope: !3324, file: !577, line: 919, type: !137)
!3328 = !DILocation(line: 0, scope: !3324)
!3329 = !DILocation(line: 921, column: 10, scope: !3324)
!3330 = !DILocation(line: 921, column: 3, scope: !3324)
!3331 = distinct !DISubprogram(name: "quotearg_n_options", scope: !577, file: !577, line: 866, type: !3332, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3334)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!125, !105, !137, !134, !2537}
!3334 = !{!3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3345, !3346, !3348, !3349, !3350}
!3335 = !DILocalVariable(name: "n", arg: 1, scope: !3331, file: !577, line: 866, type: !105)
!3336 = !DILocalVariable(name: "arg", arg: 2, scope: !3331, file: !577, line: 866, type: !137)
!3337 = !DILocalVariable(name: "argsize", arg: 3, scope: !3331, file: !577, line: 866, type: !134)
!3338 = !DILocalVariable(name: "options", arg: 4, scope: !3331, file: !577, line: 867, type: !2537)
!3339 = !DILocalVariable(name: "saved_errno", scope: !3331, file: !577, line: 869, type: !105)
!3340 = !DILocalVariable(name: "sv", scope: !3331, file: !577, line: 871, type: !678)
!3341 = !DILocalVariable(name: "nslots_max", scope: !3331, file: !577, line: 873, type: !105)
!3342 = !DILocalVariable(name: "preallocated", scope: !3343, file: !577, line: 879, type: !190)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !577, line: 878, column: 5)
!3344 = distinct !DILexicalBlock(scope: !3331, file: !577, line: 877, column: 7)
!3345 = !DILocalVariable(name: "new_nslots", scope: !3343, file: !577, line: 880, type: !898)
!3346 = !DILocalVariable(name: "size", scope: !3347, file: !577, line: 891, type: !134)
!3347 = distinct !DILexicalBlock(scope: !3331, file: !577, line: 890, column: 3)
!3348 = !DILocalVariable(name: "val", scope: !3347, file: !577, line: 892, type: !125)
!3349 = !DILocalVariable(name: "flags", scope: !3347, file: !577, line: 894, type: !105)
!3350 = !DILocalVariable(name: "qsize", scope: !3347, file: !577, line: 895, type: !134)
!3351 = distinct !DIAssignID()
!3352 = !DILocation(line: 0, scope: !3343)
!3353 = !DILocation(line: 0, scope: !3331)
!3354 = !DILocation(line: 869, column: 21, scope: !3331)
!3355 = !DILocation(line: 871, column: 24, scope: !3331)
!3356 = !DILocation(line: 874, column: 17, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3331, file: !577, line: 874, column: 7)
!3358 = !DILocation(line: 875, column: 5, scope: !3357)
!3359 = !DILocation(line: 877, column: 7, scope: !3344)
!3360 = !DILocation(line: 877, column: 14, scope: !3344)
!3361 = !DILocation(line: 877, column: 7, scope: !3331)
!3362 = !DILocation(line: 879, column: 31, scope: !3343)
!3363 = !DILocation(line: 880, column: 7, scope: !3343)
!3364 = !DILocation(line: 880, column: 26, scope: !3343)
!3365 = !DILocation(line: 880, column: 13, scope: !3343)
!3366 = distinct !DIAssignID()
!3367 = !DILocation(line: 882, column: 31, scope: !3343)
!3368 = !DILocation(line: 883, column: 33, scope: !3343)
!3369 = !DILocation(line: 883, column: 42, scope: !3343)
!3370 = !DILocation(line: 883, column: 31, scope: !3343)
!3371 = !DILocation(line: 882, column: 22, scope: !3343)
!3372 = !DILocation(line: 882, column: 15, scope: !3343)
!3373 = !DILocation(line: 884, column: 11, scope: !3343)
!3374 = !DILocation(line: 885, column: 15, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3343, file: !577, line: 884, column: 11)
!3376 = !{i64 0, i64 8, !1879, i64 8, i64 8, !950}
!3377 = !DILocation(line: 885, column: 9, scope: !3375)
!3378 = !DILocation(line: 886, column: 20, scope: !3343)
!3379 = !DILocation(line: 886, column: 18, scope: !3343)
!3380 = !DILocation(line: 886, column: 32, scope: !3343)
!3381 = !DILocation(line: 886, column: 43, scope: !3343)
!3382 = !DILocation(line: 886, column: 53, scope: !3343)
!3383 = !DILocation(line: 0, scope: !2759, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 886, column: 7, scope: !3343)
!3385 = !DILocation(line: 59, column: 10, scope: !2759, inlinedAt: !3384)
!3386 = !DILocation(line: 887, column: 16, scope: !3343)
!3387 = !DILocation(line: 887, column: 14, scope: !3343)
!3388 = !DILocation(line: 888, column: 5, scope: !3344)
!3389 = !DILocation(line: 888, column: 5, scope: !3343)
!3390 = !DILocation(line: 891, column: 19, scope: !3347)
!3391 = !DILocation(line: 891, column: 25, scope: !3347)
!3392 = !DILocation(line: 0, scope: !3347)
!3393 = !DILocation(line: 892, column: 23, scope: !3347)
!3394 = !DILocation(line: 894, column: 26, scope: !3347)
!3395 = !DILocation(line: 894, column: 32, scope: !3347)
!3396 = !DILocation(line: 896, column: 55, scope: !3347)
!3397 = !DILocation(line: 897, column: 55, scope: !3347)
!3398 = !DILocation(line: 898, column: 55, scope: !3347)
!3399 = !DILocation(line: 899, column: 55, scope: !3347)
!3400 = !DILocation(line: 895, column: 20, scope: !3347)
!3401 = !DILocation(line: 901, column: 14, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3347, file: !577, line: 901, column: 9)
!3403 = !DILocation(line: 901, column: 9, scope: !3347)
!3404 = !DILocation(line: 903, column: 35, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3402, file: !577, line: 902, column: 7)
!3406 = !DILocation(line: 903, column: 20, scope: !3405)
!3407 = !DILocation(line: 904, column: 17, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3405, file: !577, line: 904, column: 13)
!3409 = !DILocation(line: 904, column: 13, scope: !3405)
!3410 = !DILocation(line: 905, column: 11, scope: !3408)
!3411 = !DILocation(line: 906, column: 27, scope: !3405)
!3412 = !DILocation(line: 906, column: 19, scope: !3405)
!3413 = !DILocation(line: 907, column: 69, scope: !3405)
!3414 = !DILocation(line: 909, column: 44, scope: !3405)
!3415 = !DILocation(line: 910, column: 44, scope: !3405)
!3416 = !DILocation(line: 907, column: 9, scope: !3405)
!3417 = !DILocation(line: 911, column: 7, scope: !3405)
!3418 = !DILocation(line: 913, column: 11, scope: !3347)
!3419 = !DILocation(line: 914, column: 5, scope: !3347)
!3420 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !577, file: !577, line: 925, type: !3421, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3423)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!125, !105, !137, !134}
!3423 = !{!3424, !3425, !3426}
!3424 = !DILocalVariable(name: "n", arg: 1, scope: !3420, file: !577, line: 925, type: !105)
!3425 = !DILocalVariable(name: "arg", arg: 2, scope: !3420, file: !577, line: 925, type: !137)
!3426 = !DILocalVariable(name: "argsize", arg: 3, scope: !3420, file: !577, line: 925, type: !134)
!3427 = !DILocation(line: 0, scope: !3420)
!3428 = !DILocation(line: 927, column: 10, scope: !3420)
!3429 = !DILocation(line: 927, column: 3, scope: !3420)
!3430 = distinct !DISubprogram(name: "quotearg", scope: !577, file: !577, line: 931, type: !1148, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3431)
!3431 = !{!3432}
!3432 = !DILocalVariable(name: "arg", arg: 1, scope: !3430, file: !577, line: 931, type: !137)
!3433 = !DILocation(line: 0, scope: !3430)
!3434 = !DILocation(line: 0, scope: !3324, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 933, column: 10, scope: !3430)
!3436 = !DILocation(line: 921, column: 10, scope: !3324, inlinedAt: !3435)
!3437 = !DILocation(line: 933, column: 3, scope: !3430)
!3438 = distinct !DISubprogram(name: "quotearg_mem", scope: !577, file: !577, line: 937, type: !3439, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3441)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!125, !137, !134}
!3441 = !{!3442, !3443}
!3442 = !DILocalVariable(name: "arg", arg: 1, scope: !3438, file: !577, line: 937, type: !137)
!3443 = !DILocalVariable(name: "argsize", arg: 2, scope: !3438, file: !577, line: 937, type: !134)
!3444 = !DILocation(line: 0, scope: !3438)
!3445 = !DILocation(line: 0, scope: !3420, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 939, column: 10, scope: !3438)
!3447 = !DILocation(line: 927, column: 10, scope: !3420, inlinedAt: !3446)
!3448 = !DILocation(line: 939, column: 3, scope: !3438)
!3449 = distinct !DISubprogram(name: "quotearg_n_style", scope: !577, file: !577, line: 943, type: !3450, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3452)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!125, !105, !603, !137}
!3452 = !{!3453, !3454, !3455, !3456}
!3453 = !DILocalVariable(name: "n", arg: 1, scope: !3449, file: !577, line: 943, type: !105)
!3454 = !DILocalVariable(name: "s", arg: 2, scope: !3449, file: !577, line: 943, type: !603)
!3455 = !DILocalVariable(name: "arg", arg: 3, scope: !3449, file: !577, line: 943, type: !137)
!3456 = !DILocalVariable(name: "o", scope: !3449, file: !577, line: 945, type: !2538)
!3457 = distinct !DIAssignID()
!3458 = !DILocation(line: 0, scope: !3449)
!3459 = !DILocation(line: 945, column: 3, scope: !3449)
!3460 = !{!3461}
!3461 = distinct !{!3461, !3462, !"quoting_options_from_style: argument 0"}
!3462 = distinct !{!3462, !"quoting_options_from_style"}
!3463 = !DILocation(line: 945, column: 36, scope: !3449)
!3464 = !DILocalVariable(name: "style", arg: 1, scope: !3465, file: !577, line: 183, type: !603)
!3465 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !577, file: !577, line: 183, type: !3466, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3468)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!630, !603}
!3468 = !{!3464, !3469}
!3469 = !DILocalVariable(name: "o", scope: !3465, file: !577, line: 185, type: !630)
!3470 = !DILocation(line: 0, scope: !3465, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 945, column: 36, scope: !3449)
!3472 = !DILocation(line: 185, column: 26, scope: !3465, inlinedAt: !3471)
!3473 = distinct !DIAssignID()
!3474 = !DILocation(line: 186, column: 13, scope: !3475, inlinedAt: !3471)
!3475 = distinct !DILexicalBlock(scope: !3465, file: !577, line: 186, column: 7)
!3476 = !DILocation(line: 186, column: 7, scope: !3465, inlinedAt: !3471)
!3477 = !DILocation(line: 187, column: 5, scope: !3475, inlinedAt: !3471)
!3478 = !DILocation(line: 188, column: 11, scope: !3465, inlinedAt: !3471)
!3479 = distinct !DIAssignID()
!3480 = !DILocation(line: 946, column: 10, scope: !3449)
!3481 = !DILocation(line: 947, column: 1, scope: !3449)
!3482 = !DILocation(line: 946, column: 3, scope: !3449)
!3483 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !577, file: !577, line: 950, type: !3484, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3486)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!125, !105, !603, !137, !134}
!3486 = !{!3487, !3488, !3489, !3490, !3491}
!3487 = !DILocalVariable(name: "n", arg: 1, scope: !3483, file: !577, line: 950, type: !105)
!3488 = !DILocalVariable(name: "s", arg: 2, scope: !3483, file: !577, line: 950, type: !603)
!3489 = !DILocalVariable(name: "arg", arg: 3, scope: !3483, file: !577, line: 951, type: !137)
!3490 = !DILocalVariable(name: "argsize", arg: 4, scope: !3483, file: !577, line: 951, type: !134)
!3491 = !DILocalVariable(name: "o", scope: !3483, file: !577, line: 953, type: !2538)
!3492 = distinct !DIAssignID()
!3493 = !DILocation(line: 0, scope: !3483)
!3494 = !DILocation(line: 953, column: 3, scope: !3483)
!3495 = !{!3496}
!3496 = distinct !{!3496, !3497, !"quoting_options_from_style: argument 0"}
!3497 = distinct !{!3497, !"quoting_options_from_style"}
!3498 = !DILocation(line: 953, column: 36, scope: !3483)
!3499 = !DILocation(line: 0, scope: !3465, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 953, column: 36, scope: !3483)
!3501 = !DILocation(line: 185, column: 26, scope: !3465, inlinedAt: !3500)
!3502 = distinct !DIAssignID()
!3503 = !DILocation(line: 186, column: 13, scope: !3475, inlinedAt: !3500)
!3504 = !DILocation(line: 186, column: 7, scope: !3465, inlinedAt: !3500)
!3505 = !DILocation(line: 187, column: 5, scope: !3475, inlinedAt: !3500)
!3506 = !DILocation(line: 188, column: 11, scope: !3465, inlinedAt: !3500)
!3507 = distinct !DIAssignID()
!3508 = !DILocation(line: 954, column: 10, scope: !3483)
!3509 = !DILocation(line: 955, column: 1, scope: !3483)
!3510 = !DILocation(line: 954, column: 3, scope: !3483)
!3511 = distinct !DISubprogram(name: "quotearg_style", scope: !577, file: !577, line: 958, type: !3512, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3514)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!125, !603, !137}
!3514 = !{!3515, !3516}
!3515 = !DILocalVariable(name: "s", arg: 1, scope: !3511, file: !577, line: 958, type: !603)
!3516 = !DILocalVariable(name: "arg", arg: 2, scope: !3511, file: !577, line: 958, type: !137)
!3517 = distinct !DIAssignID()
!3518 = !DILocation(line: 0, scope: !3511)
!3519 = !DILocation(line: 0, scope: !3449, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 960, column: 10, scope: !3511)
!3521 = !DILocation(line: 945, column: 3, scope: !3449, inlinedAt: !3520)
!3522 = !{!3523}
!3523 = distinct !{!3523, !3524, !"quoting_options_from_style: argument 0"}
!3524 = distinct !{!3524, !"quoting_options_from_style"}
!3525 = !DILocation(line: 945, column: 36, scope: !3449, inlinedAt: !3520)
!3526 = !DILocation(line: 0, scope: !3465, inlinedAt: !3527)
!3527 = distinct !DILocation(line: 945, column: 36, scope: !3449, inlinedAt: !3520)
!3528 = !DILocation(line: 185, column: 26, scope: !3465, inlinedAt: !3527)
!3529 = distinct !DIAssignID()
!3530 = !DILocation(line: 186, column: 13, scope: !3475, inlinedAt: !3527)
!3531 = !DILocation(line: 186, column: 7, scope: !3465, inlinedAt: !3527)
!3532 = !DILocation(line: 187, column: 5, scope: !3475, inlinedAt: !3527)
!3533 = !DILocation(line: 188, column: 11, scope: !3465, inlinedAt: !3527)
!3534 = distinct !DIAssignID()
!3535 = !DILocation(line: 946, column: 10, scope: !3449, inlinedAt: !3520)
!3536 = !DILocation(line: 947, column: 1, scope: !3449, inlinedAt: !3520)
!3537 = !DILocation(line: 960, column: 3, scope: !3511)
!3538 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !577, file: !577, line: 964, type: !3539, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3541)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!125, !603, !137, !134}
!3541 = !{!3542, !3543, !3544}
!3542 = !DILocalVariable(name: "s", arg: 1, scope: !3538, file: !577, line: 964, type: !603)
!3543 = !DILocalVariable(name: "arg", arg: 2, scope: !3538, file: !577, line: 964, type: !137)
!3544 = !DILocalVariable(name: "argsize", arg: 3, scope: !3538, file: !577, line: 964, type: !134)
!3545 = distinct !DIAssignID()
!3546 = !DILocation(line: 0, scope: !3538)
!3547 = !DILocation(line: 0, scope: !3483, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 966, column: 10, scope: !3538)
!3549 = !DILocation(line: 953, column: 3, scope: !3483, inlinedAt: !3548)
!3550 = !{!3551}
!3551 = distinct !{!3551, !3552, !"quoting_options_from_style: argument 0"}
!3552 = distinct !{!3552, !"quoting_options_from_style"}
!3553 = !DILocation(line: 953, column: 36, scope: !3483, inlinedAt: !3548)
!3554 = !DILocation(line: 0, scope: !3465, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 953, column: 36, scope: !3483, inlinedAt: !3548)
!3556 = !DILocation(line: 185, column: 26, scope: !3465, inlinedAt: !3555)
!3557 = distinct !DIAssignID()
!3558 = !DILocation(line: 186, column: 13, scope: !3475, inlinedAt: !3555)
!3559 = !DILocation(line: 186, column: 7, scope: !3465, inlinedAt: !3555)
!3560 = !DILocation(line: 187, column: 5, scope: !3475, inlinedAt: !3555)
!3561 = !DILocation(line: 188, column: 11, scope: !3465, inlinedAt: !3555)
!3562 = distinct !DIAssignID()
!3563 = !DILocation(line: 954, column: 10, scope: !3483, inlinedAt: !3548)
!3564 = !DILocation(line: 955, column: 1, scope: !3483, inlinedAt: !3548)
!3565 = !DILocation(line: 966, column: 3, scope: !3538)
!3566 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !577, file: !577, line: 970, type: !3567, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3569)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!125, !137, !134, !4}
!3569 = !{!3570, !3571, !3572, !3573}
!3570 = !DILocalVariable(name: "arg", arg: 1, scope: !3566, file: !577, line: 970, type: !137)
!3571 = !DILocalVariable(name: "argsize", arg: 2, scope: !3566, file: !577, line: 970, type: !134)
!3572 = !DILocalVariable(name: "ch", arg: 3, scope: !3566, file: !577, line: 970, type: !4)
!3573 = !DILocalVariable(name: "options", scope: !3566, file: !577, line: 972, type: !630)
!3574 = distinct !DIAssignID()
!3575 = !DILocation(line: 0, scope: !3566)
!3576 = !DILocation(line: 972, column: 3, scope: !3566)
!3577 = !DILocation(line: 973, column: 13, scope: !3566)
!3578 = !{i64 0, i64 4, !1022, i64 4, i64 4, !1022, i64 8, i64 32, !1031, i64 40, i64 8, !950, i64 48, i64 8, !950}
!3579 = distinct !DIAssignID()
!3580 = !DILocation(line: 0, scope: !2557, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 974, column: 3, scope: !3566)
!3582 = !DILocation(line: 147, column: 41, scope: !2557, inlinedAt: !3581)
!3583 = !DILocation(line: 147, column: 62, scope: !2557, inlinedAt: !3581)
!3584 = !DILocation(line: 147, column: 57, scope: !2557, inlinedAt: !3581)
!3585 = !DILocation(line: 148, column: 15, scope: !2557, inlinedAt: !3581)
!3586 = !DILocation(line: 149, column: 21, scope: !2557, inlinedAt: !3581)
!3587 = !DILocation(line: 149, column: 24, scope: !2557, inlinedAt: !3581)
!3588 = !DILocation(line: 150, column: 19, scope: !2557, inlinedAt: !3581)
!3589 = !DILocation(line: 150, column: 24, scope: !2557, inlinedAt: !3581)
!3590 = !DILocation(line: 150, column: 6, scope: !2557, inlinedAt: !3581)
!3591 = !DILocation(line: 975, column: 10, scope: !3566)
!3592 = !DILocation(line: 976, column: 1, scope: !3566)
!3593 = !DILocation(line: 975, column: 3, scope: !3566)
!3594 = distinct !DISubprogram(name: "quotearg_char", scope: !577, file: !577, line: 979, type: !3595, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3597)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!125, !137, !4}
!3597 = !{!3598, !3599}
!3598 = !DILocalVariable(name: "arg", arg: 1, scope: !3594, file: !577, line: 979, type: !137)
!3599 = !DILocalVariable(name: "ch", arg: 2, scope: !3594, file: !577, line: 979, type: !4)
!3600 = distinct !DIAssignID()
!3601 = !DILocation(line: 0, scope: !3594)
!3602 = !DILocation(line: 0, scope: !3566, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 981, column: 10, scope: !3594)
!3604 = !DILocation(line: 972, column: 3, scope: !3566, inlinedAt: !3603)
!3605 = !DILocation(line: 973, column: 13, scope: !3566, inlinedAt: !3603)
!3606 = distinct !DIAssignID()
!3607 = !DILocation(line: 0, scope: !2557, inlinedAt: !3608)
!3608 = distinct !DILocation(line: 974, column: 3, scope: !3566, inlinedAt: !3603)
!3609 = !DILocation(line: 147, column: 41, scope: !2557, inlinedAt: !3608)
!3610 = !DILocation(line: 147, column: 62, scope: !2557, inlinedAt: !3608)
!3611 = !DILocation(line: 147, column: 57, scope: !2557, inlinedAt: !3608)
!3612 = !DILocation(line: 148, column: 15, scope: !2557, inlinedAt: !3608)
!3613 = !DILocation(line: 149, column: 21, scope: !2557, inlinedAt: !3608)
!3614 = !DILocation(line: 149, column: 24, scope: !2557, inlinedAt: !3608)
!3615 = !DILocation(line: 150, column: 19, scope: !2557, inlinedAt: !3608)
!3616 = !DILocation(line: 150, column: 24, scope: !2557, inlinedAt: !3608)
!3617 = !DILocation(line: 150, column: 6, scope: !2557, inlinedAt: !3608)
!3618 = !DILocation(line: 975, column: 10, scope: !3566, inlinedAt: !3603)
!3619 = !DILocation(line: 976, column: 1, scope: !3566, inlinedAt: !3603)
!3620 = !DILocation(line: 981, column: 3, scope: !3594)
!3621 = distinct !DISubprogram(name: "quotearg_colon", scope: !577, file: !577, line: 985, type: !1148, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3622)
!3622 = !{!3623}
!3623 = !DILocalVariable(name: "arg", arg: 1, scope: !3621, file: !577, line: 985, type: !137)
!3624 = distinct !DIAssignID()
!3625 = !DILocation(line: 0, scope: !3621)
!3626 = !DILocation(line: 0, scope: !3594, inlinedAt: !3627)
!3627 = distinct !DILocation(line: 987, column: 10, scope: !3621)
!3628 = !DILocation(line: 0, scope: !3566, inlinedAt: !3629)
!3629 = distinct !DILocation(line: 981, column: 10, scope: !3594, inlinedAt: !3627)
!3630 = !DILocation(line: 972, column: 3, scope: !3566, inlinedAt: !3629)
!3631 = !DILocation(line: 973, column: 13, scope: !3566, inlinedAt: !3629)
!3632 = distinct !DIAssignID()
!3633 = !DILocation(line: 0, scope: !2557, inlinedAt: !3634)
!3634 = distinct !DILocation(line: 974, column: 3, scope: !3566, inlinedAt: !3629)
!3635 = !DILocation(line: 147, column: 57, scope: !2557, inlinedAt: !3634)
!3636 = !DILocation(line: 149, column: 21, scope: !2557, inlinedAt: !3634)
!3637 = !DILocation(line: 150, column: 6, scope: !2557, inlinedAt: !3634)
!3638 = !DILocation(line: 975, column: 10, scope: !3566, inlinedAt: !3629)
!3639 = !DILocation(line: 976, column: 1, scope: !3566, inlinedAt: !3629)
!3640 = !DILocation(line: 987, column: 3, scope: !3621)
!3641 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !577, file: !577, line: 991, type: !3439, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3642)
!3642 = !{!3643, !3644}
!3643 = !DILocalVariable(name: "arg", arg: 1, scope: !3641, file: !577, line: 991, type: !137)
!3644 = !DILocalVariable(name: "argsize", arg: 2, scope: !3641, file: !577, line: 991, type: !134)
!3645 = distinct !DIAssignID()
!3646 = !DILocation(line: 0, scope: !3641)
!3647 = !DILocation(line: 0, scope: !3566, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 993, column: 10, scope: !3641)
!3649 = !DILocation(line: 972, column: 3, scope: !3566, inlinedAt: !3648)
!3650 = !DILocation(line: 973, column: 13, scope: !3566, inlinedAt: !3648)
!3651 = distinct !DIAssignID()
!3652 = !DILocation(line: 0, scope: !2557, inlinedAt: !3653)
!3653 = distinct !DILocation(line: 974, column: 3, scope: !3566, inlinedAt: !3648)
!3654 = !DILocation(line: 147, column: 57, scope: !2557, inlinedAt: !3653)
!3655 = !DILocation(line: 149, column: 21, scope: !2557, inlinedAt: !3653)
!3656 = !DILocation(line: 150, column: 6, scope: !2557, inlinedAt: !3653)
!3657 = !DILocation(line: 975, column: 10, scope: !3566, inlinedAt: !3648)
!3658 = !DILocation(line: 976, column: 1, scope: !3566, inlinedAt: !3648)
!3659 = !DILocation(line: 993, column: 3, scope: !3641)
!3660 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !577, file: !577, line: 997, type: !3450, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3661)
!3661 = !{!3662, !3663, !3664, !3665}
!3662 = !DILocalVariable(name: "n", arg: 1, scope: !3660, file: !577, line: 997, type: !105)
!3663 = !DILocalVariable(name: "s", arg: 2, scope: !3660, file: !577, line: 997, type: !603)
!3664 = !DILocalVariable(name: "arg", arg: 3, scope: !3660, file: !577, line: 997, type: !137)
!3665 = !DILocalVariable(name: "options", scope: !3660, file: !577, line: 999, type: !630)
!3666 = distinct !DIAssignID()
!3667 = !DILocation(line: 0, scope: !3660)
!3668 = !DILocation(line: 185, column: 26, scope: !3465, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 1000, column: 13, scope: !3660)
!3670 = !DILocation(line: 999, column: 3, scope: !3660)
!3671 = !DILocation(line: 0, scope: !3465, inlinedAt: !3669)
!3672 = !DILocation(line: 186, column: 13, scope: !3475, inlinedAt: !3669)
!3673 = !DILocation(line: 186, column: 7, scope: !3465, inlinedAt: !3669)
!3674 = !DILocation(line: 187, column: 5, scope: !3475, inlinedAt: !3669)
!3675 = !{!3676}
!3676 = distinct !{!3676, !3677, !"quoting_options_from_style: argument 0"}
!3677 = distinct !{!3677, !"quoting_options_from_style"}
!3678 = !DILocation(line: 1000, column: 13, scope: !3660)
!3679 = distinct !DIAssignID()
!3680 = distinct !DIAssignID()
!3681 = !DILocation(line: 0, scope: !2557, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 1001, column: 3, scope: !3660)
!3683 = !DILocation(line: 147, column: 57, scope: !2557, inlinedAt: !3682)
!3684 = !DILocation(line: 149, column: 21, scope: !2557, inlinedAt: !3682)
!3685 = !DILocation(line: 150, column: 6, scope: !2557, inlinedAt: !3682)
!3686 = distinct !DIAssignID()
!3687 = !DILocation(line: 1002, column: 10, scope: !3660)
!3688 = !DILocation(line: 1003, column: 1, scope: !3660)
!3689 = !DILocation(line: 1002, column: 3, scope: !3660)
!3690 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !577, file: !577, line: 1006, type: !3691, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3693)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!125, !105, !137, !137, !137}
!3693 = !{!3694, !3695, !3696, !3697}
!3694 = !DILocalVariable(name: "n", arg: 1, scope: !3690, file: !577, line: 1006, type: !105)
!3695 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3690, file: !577, line: 1006, type: !137)
!3696 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3690, file: !577, line: 1007, type: !137)
!3697 = !DILocalVariable(name: "arg", arg: 4, scope: !3690, file: !577, line: 1007, type: !137)
!3698 = distinct !DIAssignID()
!3699 = !DILocation(line: 0, scope: !3690)
!3700 = !DILocalVariable(name: "o", scope: !3701, file: !577, line: 1018, type: !630)
!3701 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !577, file: !577, line: 1014, type: !3702, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3704)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!125, !105, !137, !137, !137, !134}
!3704 = !{!3705, !3706, !3707, !3708, !3709, !3700}
!3705 = !DILocalVariable(name: "n", arg: 1, scope: !3701, file: !577, line: 1014, type: !105)
!3706 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3701, file: !577, line: 1014, type: !137)
!3707 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3701, file: !577, line: 1015, type: !137)
!3708 = !DILocalVariable(name: "arg", arg: 4, scope: !3701, file: !577, line: 1016, type: !137)
!3709 = !DILocalVariable(name: "argsize", arg: 5, scope: !3701, file: !577, line: 1016, type: !134)
!3710 = !DILocation(line: 0, scope: !3701, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 1009, column: 10, scope: !3690)
!3712 = !DILocation(line: 1018, column: 3, scope: !3701, inlinedAt: !3711)
!3713 = !DILocation(line: 1018, column: 30, scope: !3701, inlinedAt: !3711)
!3714 = distinct !DIAssignID()
!3715 = distinct !DIAssignID()
!3716 = !DILocation(line: 0, scope: !2597, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 1019, column: 3, scope: !3701, inlinedAt: !3711)
!3718 = !DILocation(line: 174, column: 12, scope: !2597, inlinedAt: !3717)
!3719 = distinct !DIAssignID()
!3720 = !DILocation(line: 175, column: 8, scope: !2610, inlinedAt: !3717)
!3721 = !DILocation(line: 175, column: 19, scope: !2610, inlinedAt: !3717)
!3722 = !DILocation(line: 176, column: 5, scope: !2610, inlinedAt: !3717)
!3723 = !DILocation(line: 177, column: 6, scope: !2597, inlinedAt: !3717)
!3724 = !DILocation(line: 177, column: 17, scope: !2597, inlinedAt: !3717)
!3725 = distinct !DIAssignID()
!3726 = !DILocation(line: 178, column: 6, scope: !2597, inlinedAt: !3717)
!3727 = !DILocation(line: 178, column: 18, scope: !2597, inlinedAt: !3717)
!3728 = distinct !DIAssignID()
!3729 = !DILocation(line: 1020, column: 10, scope: !3701, inlinedAt: !3711)
!3730 = !DILocation(line: 1021, column: 1, scope: !3701, inlinedAt: !3711)
!3731 = !DILocation(line: 1009, column: 3, scope: !3690)
!3732 = distinct !DIAssignID()
!3733 = !DILocation(line: 0, scope: !3701)
!3734 = !DILocation(line: 1018, column: 3, scope: !3701)
!3735 = !DILocation(line: 1018, column: 30, scope: !3701)
!3736 = distinct !DIAssignID()
!3737 = distinct !DIAssignID()
!3738 = !DILocation(line: 0, scope: !2597, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 1019, column: 3, scope: !3701)
!3740 = !DILocation(line: 174, column: 12, scope: !2597, inlinedAt: !3739)
!3741 = distinct !DIAssignID()
!3742 = !DILocation(line: 175, column: 8, scope: !2610, inlinedAt: !3739)
!3743 = !DILocation(line: 175, column: 19, scope: !2610, inlinedAt: !3739)
!3744 = !DILocation(line: 176, column: 5, scope: !2610, inlinedAt: !3739)
!3745 = !DILocation(line: 177, column: 6, scope: !2597, inlinedAt: !3739)
!3746 = !DILocation(line: 177, column: 17, scope: !2597, inlinedAt: !3739)
!3747 = distinct !DIAssignID()
!3748 = !DILocation(line: 178, column: 6, scope: !2597, inlinedAt: !3739)
!3749 = !DILocation(line: 178, column: 18, scope: !2597, inlinedAt: !3739)
!3750 = distinct !DIAssignID()
!3751 = !DILocation(line: 1020, column: 10, scope: !3701)
!3752 = !DILocation(line: 1021, column: 1, scope: !3701)
!3753 = !DILocation(line: 1020, column: 3, scope: !3701)
!3754 = distinct !DISubprogram(name: "quotearg_custom", scope: !577, file: !577, line: 1024, type: !3755, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3757)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!125, !137, !137, !137}
!3757 = !{!3758, !3759, !3760}
!3758 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3754, file: !577, line: 1024, type: !137)
!3759 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3754, file: !577, line: 1024, type: !137)
!3760 = !DILocalVariable(name: "arg", arg: 3, scope: !3754, file: !577, line: 1025, type: !137)
!3761 = distinct !DIAssignID()
!3762 = !DILocation(line: 0, scope: !3754)
!3763 = !DILocation(line: 0, scope: !3690, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 1027, column: 10, scope: !3754)
!3765 = !DILocation(line: 0, scope: !3701, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 1009, column: 10, scope: !3690, inlinedAt: !3764)
!3767 = !DILocation(line: 1018, column: 3, scope: !3701, inlinedAt: !3766)
!3768 = !DILocation(line: 1018, column: 30, scope: !3701, inlinedAt: !3766)
!3769 = distinct !DIAssignID()
!3770 = distinct !DIAssignID()
!3771 = !DILocation(line: 0, scope: !2597, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 1019, column: 3, scope: !3701, inlinedAt: !3766)
!3773 = !DILocation(line: 174, column: 12, scope: !2597, inlinedAt: !3772)
!3774 = distinct !DIAssignID()
!3775 = !DILocation(line: 175, column: 8, scope: !2610, inlinedAt: !3772)
!3776 = !DILocation(line: 175, column: 19, scope: !2610, inlinedAt: !3772)
!3777 = !DILocation(line: 176, column: 5, scope: !2610, inlinedAt: !3772)
!3778 = !DILocation(line: 177, column: 6, scope: !2597, inlinedAt: !3772)
!3779 = !DILocation(line: 177, column: 17, scope: !2597, inlinedAt: !3772)
!3780 = distinct !DIAssignID()
!3781 = !DILocation(line: 178, column: 6, scope: !2597, inlinedAt: !3772)
!3782 = !DILocation(line: 178, column: 18, scope: !2597, inlinedAt: !3772)
!3783 = distinct !DIAssignID()
!3784 = !DILocation(line: 1020, column: 10, scope: !3701, inlinedAt: !3766)
!3785 = !DILocation(line: 1021, column: 1, scope: !3701, inlinedAt: !3766)
!3786 = !DILocation(line: 1027, column: 3, scope: !3754)
!3787 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !577, file: !577, line: 1031, type: !3788, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3790)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!125, !137, !137, !137, !134}
!3790 = !{!3791, !3792, !3793, !3794}
!3791 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3787, file: !577, line: 1031, type: !137)
!3792 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3787, file: !577, line: 1031, type: !137)
!3793 = !DILocalVariable(name: "arg", arg: 3, scope: !3787, file: !577, line: 1032, type: !137)
!3794 = !DILocalVariable(name: "argsize", arg: 4, scope: !3787, file: !577, line: 1032, type: !134)
!3795 = distinct !DIAssignID()
!3796 = !DILocation(line: 0, scope: !3787)
!3797 = !DILocation(line: 0, scope: !3701, inlinedAt: !3798)
!3798 = distinct !DILocation(line: 1034, column: 10, scope: !3787)
!3799 = !DILocation(line: 1018, column: 3, scope: !3701, inlinedAt: !3798)
!3800 = !DILocation(line: 1018, column: 30, scope: !3701, inlinedAt: !3798)
!3801 = distinct !DIAssignID()
!3802 = distinct !DIAssignID()
!3803 = !DILocation(line: 0, scope: !2597, inlinedAt: !3804)
!3804 = distinct !DILocation(line: 1019, column: 3, scope: !3701, inlinedAt: !3798)
!3805 = !DILocation(line: 174, column: 12, scope: !2597, inlinedAt: !3804)
!3806 = distinct !DIAssignID()
!3807 = !DILocation(line: 175, column: 8, scope: !2610, inlinedAt: !3804)
!3808 = !DILocation(line: 175, column: 19, scope: !2610, inlinedAt: !3804)
!3809 = !DILocation(line: 176, column: 5, scope: !2610, inlinedAt: !3804)
!3810 = !DILocation(line: 177, column: 6, scope: !2597, inlinedAt: !3804)
!3811 = !DILocation(line: 177, column: 17, scope: !2597, inlinedAt: !3804)
!3812 = distinct !DIAssignID()
!3813 = !DILocation(line: 178, column: 6, scope: !2597, inlinedAt: !3804)
!3814 = !DILocation(line: 178, column: 18, scope: !2597, inlinedAt: !3804)
!3815 = distinct !DIAssignID()
!3816 = !DILocation(line: 1020, column: 10, scope: !3701, inlinedAt: !3798)
!3817 = !DILocation(line: 1021, column: 1, scope: !3701, inlinedAt: !3798)
!3818 = !DILocation(line: 1034, column: 3, scope: !3787)
!3819 = distinct !DISubprogram(name: "quote_n_mem", scope: !577, file: !577, line: 1049, type: !3820, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3822)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!137, !105, !137, !134}
!3822 = !{!3823, !3824, !3825}
!3823 = !DILocalVariable(name: "n", arg: 1, scope: !3819, file: !577, line: 1049, type: !105)
!3824 = !DILocalVariable(name: "arg", arg: 2, scope: !3819, file: !577, line: 1049, type: !137)
!3825 = !DILocalVariable(name: "argsize", arg: 3, scope: !3819, file: !577, line: 1049, type: !134)
!3826 = !DILocation(line: 0, scope: !3819)
!3827 = !DILocation(line: 1051, column: 10, scope: !3819)
!3828 = !DILocation(line: 1051, column: 3, scope: !3819)
!3829 = distinct !DISubprogram(name: "quote_mem", scope: !577, file: !577, line: 1055, type: !3830, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3832)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!137, !137, !134}
!3832 = !{!3833, !3834}
!3833 = !DILocalVariable(name: "arg", arg: 1, scope: !3829, file: !577, line: 1055, type: !137)
!3834 = !DILocalVariable(name: "argsize", arg: 2, scope: !3829, file: !577, line: 1055, type: !134)
!3835 = !DILocation(line: 0, scope: !3829)
!3836 = !DILocation(line: 0, scope: !3819, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 1057, column: 10, scope: !3829)
!3838 = !DILocation(line: 1051, column: 10, scope: !3819, inlinedAt: !3837)
!3839 = !DILocation(line: 1057, column: 3, scope: !3829)
!3840 = distinct !DISubprogram(name: "quote_n", scope: !577, file: !577, line: 1061, type: !3841, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3843)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!137, !105, !137}
!3843 = !{!3844, !3845}
!3844 = !DILocalVariable(name: "n", arg: 1, scope: !3840, file: !577, line: 1061, type: !105)
!3845 = !DILocalVariable(name: "arg", arg: 2, scope: !3840, file: !577, line: 1061, type: !137)
!3846 = !DILocation(line: 0, scope: !3840)
!3847 = !DILocation(line: 0, scope: !3819, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 1063, column: 10, scope: !3840)
!3849 = !DILocation(line: 1051, column: 10, scope: !3819, inlinedAt: !3848)
!3850 = !DILocation(line: 1063, column: 3, scope: !3840)
!3851 = distinct !DISubprogram(name: "quote", scope: !577, file: !577, line: 1067, type: !3852, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3854)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!137, !137}
!3854 = !{!3855}
!3855 = !DILocalVariable(name: "arg", arg: 1, scope: !3851, file: !577, line: 1067, type: !137)
!3856 = !DILocation(line: 0, scope: !3851)
!3857 = !DILocation(line: 0, scope: !3840, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 1069, column: 10, scope: !3851)
!3859 = !DILocation(line: 0, scope: !3819, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 1063, column: 10, scope: !3840, inlinedAt: !3858)
!3861 = !DILocation(line: 1051, column: 10, scope: !3819, inlinedAt: !3860)
!3862 = !DILocation(line: 1069, column: 3, scope: !3851)
!3863 = distinct !DISubprogram(name: "str2sig", scope: !692, file: !692, line: 321, type: !3864, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !691, retainedNodes: !3866)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!105, !137, !452}
!3866 = !{!3867, !3868}
!3867 = !DILocalVariable(name: "signame", arg: 1, scope: !3863, file: !692, line: 321, type: !137)
!3868 = !DILocalVariable(name: "signum", arg: 2, scope: !3863, file: !692, line: 321, type: !452)
!3869 = distinct !DIAssignID()
!3870 = distinct !DIAssignID()
!3871 = distinct !DIAssignID()
!3872 = !DILocation(line: 0, scope: !3863)
!3873 = !DILocalVariable(name: "endp", scope: !3874, file: !692, line: 282, type: !125)
!3874 = distinct !DILexicalBlock(scope: !3875, file: !692, line: 281, column: 5)
!3875 = distinct !DILexicalBlock(scope: !3876, file: !692, line: 280, column: 7)
!3876 = distinct !DISubprogram(name: "str2signum", scope: !692, file: !692, line: 278, type: !1992, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !691, retainedNodes: !3877)
!3877 = !{!3878, !3873, !3879, !3880, !3883, !3885, !3886, !3889, !3890, !3893}
!3878 = !DILocalVariable(name: "signame", arg: 1, scope: !3876, file: !692, line: 278, type: !137)
!3879 = !DILocalVariable(name: "n", scope: !3874, file: !692, line: 283, type: !253)
!3880 = !DILocalVariable(name: "i", scope: !3881, file: !692, line: 289, type: !98)
!3881 = distinct !DILexicalBlock(scope: !3882, file: !692, line: 289, column: 7)
!3882 = distinct !DILexicalBlock(scope: !3875, file: !692, line: 288, column: 5)
!3883 = !DILocalVariable(name: "rtmin", scope: !3884, file: !692, line: 294, type: !105)
!3884 = distinct !DILexicalBlock(scope: !3882, file: !692, line: 293, column: 7)
!3885 = !DILocalVariable(name: "rtmax", scope: !3884, file: !692, line: 295, type: !105)
!3886 = !DILocalVariable(name: "endp", scope: !3887, file: !692, line: 299, type: !125)
!3887 = distinct !DILexicalBlock(scope: !3888, file: !692, line: 298, column: 11)
!3888 = distinct !DILexicalBlock(scope: !3884, file: !692, line: 297, column: 13)
!3889 = !DILocalVariable(name: "n", scope: !3887, file: !692, line: 300, type: !253)
!3890 = !DILocalVariable(name: "endp", scope: !3891, file: !692, line: 306, type: !125)
!3891 = distinct !DILexicalBlock(scope: !3892, file: !692, line: 305, column: 11)
!3892 = distinct !DILexicalBlock(scope: !3888, file: !692, line: 304, column: 18)
!3893 = !DILocalVariable(name: "n", scope: !3891, file: !692, line: 307, type: !253)
!3894 = !DILocation(line: 0, scope: !3874, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 323, column: 13, scope: !3863)
!3896 = !DILocation(line: 0, scope: !3887, inlinedAt: !3895)
!3897 = !DILocation(line: 0, scope: !3891, inlinedAt: !3895)
!3898 = !DILocation(line: 0, scope: !3876, inlinedAt: !3895)
!3899 = !DILocation(line: 280, column: 7, scope: !3875, inlinedAt: !3895)
!3900 = !DILocation(line: 280, column: 7, scope: !3876, inlinedAt: !3895)
!3901 = !DILocation(line: 282, column: 7, scope: !3874, inlinedAt: !3895)
!3902 = !DILocation(line: 283, column: 20, scope: !3874, inlinedAt: !3895)
!3903 = !DILocation(line: 284, column: 14, scope: !3904, inlinedAt: !3895)
!3904 = distinct !DILexicalBlock(scope: !3874, file: !692, line: 284, column: 11)
!3905 = !DILocation(line: 284, column: 13, scope: !3904, inlinedAt: !3895)
!3906 = !DILocation(line: 284, column: 19, scope: !3904, inlinedAt: !3895)
!3907 = !DILocation(line: 286, column: 5, scope: !3875, inlinedAt: !3895)
!3908 = !DILocation(line: 289, column: 54, scope: !3909, inlinedAt: !3895)
!3909 = distinct !DILexicalBlock(scope: !3881, file: !692, line: 289, column: 7)
!3910 = !DILocation(line: 0, scope: !3881, inlinedAt: !3895)
!3911 = !DILocation(line: 289, column: 34, scope: !3909, inlinedAt: !3895)
!3912 = !DILocation(line: 289, column: 7, scope: !3881, inlinedAt: !3895)
!3913 = distinct !{!3913, !3912, !3914, !1069}
!3914 = !DILocation(line: 291, column: 35, scope: !3881, inlinedAt: !3895)
!3915 = !DILocation(line: 290, column: 37, scope: !3916, inlinedAt: !3895)
!3916 = distinct !DILexicalBlock(scope: !3909, file: !692, line: 290, column: 13)
!3917 = !DILocalVariable(name: "__s1", arg: 1, scope: !3918, file: !1035, line: 1359, type: !137)
!3918 = distinct !DISubprogram(name: "streq", scope: !1035, file: !1035, line: 1359, type: !1036, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !691, retainedNodes: !3919)
!3919 = !{!3917, !3920}
!3920 = !DILocalVariable(name: "__s2", arg: 2, scope: !3918, file: !1035, line: 1359, type: !137)
!3921 = !DILocation(line: 0, scope: !3918, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 290, column: 13, scope: !3916, inlinedAt: !3895)
!3923 = !DILocation(line: 1361, column: 11, scope: !3918, inlinedAt: !3922)
!3924 = !DILocation(line: 1361, column: 10, scope: !3918, inlinedAt: !3922)
!3925 = !DILocation(line: 290, column: 13, scope: !3909, inlinedAt: !3895)
!3926 = !DILocation(line: 290, column: 20, scope: !3916, inlinedAt: !3895)
!3927 = !DILocation(line: 291, column: 35, scope: !3916, inlinedAt: !3895)
!3928 = !{!3929, !1023, i64 0}
!3929 = !{!"numname", !1023, i64 0, !952, i64 4}
!3930 = !DILocation(line: 294, column: 21, scope: !3884, inlinedAt: !3895)
!3931 = !DILocation(line: 0, scope: !3884, inlinedAt: !3895)
!3932 = !DILocation(line: 295, column: 21, scope: !3884, inlinedAt: !3895)
!3933 = !DILocation(line: 297, column: 15, scope: !3888, inlinedAt: !3895)
!3934 = !DILocation(line: 297, column: 23, scope: !3888, inlinedAt: !3895)
!3935 = !DILocation(line: 297, column: 26, scope: !3888, inlinedAt: !3895)
!3936 = !DILocation(line: 297, column: 56, scope: !3888, inlinedAt: !3895)
!3937 = !DILocation(line: 297, column: 13, scope: !3884, inlinedAt: !3895)
!3938 = !DILocation(line: 299, column: 13, scope: !3887, inlinedAt: !3895)
!3939 = !DILocation(line: 300, column: 42, scope: !3887, inlinedAt: !3895)
!3940 = !DILocation(line: 300, column: 26, scope: !3887, inlinedAt: !3895)
!3941 = !DILocation(line: 301, column: 20, scope: !3942, inlinedAt: !3895)
!3942 = distinct !DILexicalBlock(scope: !3887, file: !692, line: 301, column: 17)
!3943 = !DILocation(line: 301, column: 19, scope: !3942, inlinedAt: !3895)
!3944 = !DILocation(line: 301, column: 25, scope: !3942, inlinedAt: !3895)
!3945 = !DILocation(line: 301, column: 49, scope: !3942, inlinedAt: !3895)
!3946 = !DILocation(line: 301, column: 43, scope: !3942, inlinedAt: !3895)
!3947 = !DILocation(line: 301, column: 40, scope: !3942, inlinedAt: !3895)
!3948 = !DILocation(line: 301, column: 17, scope: !3887, inlinedAt: !3895)
!3949 = !DILocation(line: 303, column: 11, scope: !3888, inlinedAt: !3895)
!3950 = !DILocation(line: 302, column: 22, scope: !3942, inlinedAt: !3895)
!3951 = !DILocation(line: 304, column: 20, scope: !3892, inlinedAt: !3895)
!3952 = !DILocation(line: 304, column: 28, scope: !3892, inlinedAt: !3895)
!3953 = !DILocation(line: 304, column: 31, scope: !3892, inlinedAt: !3895)
!3954 = !DILocation(line: 304, column: 61, scope: !3892, inlinedAt: !3895)
!3955 = !DILocation(line: 304, column: 18, scope: !3888, inlinedAt: !3895)
!3956 = !DILocation(line: 306, column: 13, scope: !3891, inlinedAt: !3895)
!3957 = !DILocation(line: 307, column: 42, scope: !3891, inlinedAt: !3895)
!3958 = !DILocation(line: 307, column: 26, scope: !3891, inlinedAt: !3895)
!3959 = !DILocation(line: 308, column: 20, scope: !3960, inlinedAt: !3895)
!3960 = distinct !DILexicalBlock(scope: !3891, file: !692, line: 308, column: 17)
!3961 = !DILocation(line: 308, column: 19, scope: !3960, inlinedAt: !3895)
!3962 = !DILocation(line: 308, column: 25, scope: !3960, inlinedAt: !3895)
!3963 = !DILocation(line: 308, column: 34, scope: !3960, inlinedAt: !3895)
!3964 = !DILocation(line: 308, column: 28, scope: !3960, inlinedAt: !3895)
!3965 = !DILocation(line: 308, column: 42, scope: !3960, inlinedAt: !3895)
!3966 = !DILocation(line: 308, column: 47, scope: !3960, inlinedAt: !3895)
!3967 = !DILocation(line: 310, column: 11, scope: !3892, inlinedAt: !3895)
!3968 = !DILocation(line: 309, column: 22, scope: !3960, inlinedAt: !3895)
!3969 = !DILocation(line: 314, column: 3, scope: !3876, inlinedAt: !3895)
!3970 = !DILocation(line: 323, column: 11, scope: !3863)
!3971 = !DILocation(line: 324, column: 10, scope: !3863)
!3972 = !DILocation(line: 324, column: 3, scope: !3863)
!3973 = distinct !DISubprogram(name: "sig2str", scope: !692, file: !692, line: 332, type: !3974, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !691, retainedNodes: !3976)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!105, !105, !125}
!3976 = !{!3977, !3978, !3979, !3981, !3983, !3984, !3985}
!3977 = !DILocalVariable(name: "signum", arg: 1, scope: !3973, file: !692, line: 332, type: !105)
!3978 = !DILocalVariable(name: "signame", arg: 2, scope: !3973, file: !692, line: 332, type: !125)
!3979 = !DILocalVariable(name: "i", scope: !3980, file: !692, line: 334, type: !98)
!3980 = distinct !DILexicalBlock(scope: !3973, file: !692, line: 334, column: 3)
!3981 = !DILocalVariable(name: "rtmin", scope: !3982, file: !692, line: 342, type: !105)
!3982 = distinct !DILexicalBlock(scope: !3973, file: !692, line: 341, column: 3)
!3983 = !DILocalVariable(name: "rtmax", scope: !3982, file: !692, line: 343, type: !105)
!3984 = !DILocalVariable(name: "base", scope: !3982, file: !692, line: 348, type: !105)
!3985 = !DILocalVariable(name: "delta", scope: !3982, file: !692, line: 360, type: !105)
!3986 = !DILocation(line: 0, scope: !3973)
!3987 = !DILocation(line: 0, scope: !3980)
!3988 = !DILocation(line: 334, column: 3, scope: !3980)
!3989 = !DILocation(line: 334, column: 50, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3980, file: !692, line: 334, column: 3)
!3991 = !DILocation(line: 335, column: 9, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3990, file: !692, line: 335, column: 9)
!3993 = !DILocation(line: 335, column: 26, scope: !3992)
!3994 = !DILocation(line: 335, column: 30, scope: !3992)
!3995 = !DILocation(line: 335, column: 9, scope: !3990)
!3996 = !DILocation(line: 334, column: 30, scope: !3990)
!3997 = distinct !{!3997, !3988, !3998, !1069}
!3998 = !DILocation(line: 339, column: 7, scope: !3980)
!3999 = !DILocation(line: 337, column: 43, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3992, file: !692, line: 336, column: 7)
!4001 = !DILocalVariable(name: "__dest", arg: 1, scope: !4002, file: !2500, line: 77, type: !1986)
!4002 = distinct !DISubprogram(name: "strcpy", scope: !2500, file: !2500, line: 77, type: !4003, scopeLine: 78, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !691, retainedNodes: !4005)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!125, !1986, !1012}
!4005 = !{!4001, !4006}
!4006 = !DILocalVariable(name: "__src", arg: 2, scope: !4002, file: !2500, line: 77, type: !1012)
!4007 = !DILocation(line: 0, scope: !4002, inlinedAt: !4008)
!4008 = distinct !DILocation(line: 337, column: 9, scope: !4000)
!4009 = !DILocation(line: 79, column: 10, scope: !4002, inlinedAt: !4008)
!4010 = !DILocation(line: 342, column: 17, scope: !3982)
!4011 = !DILocation(line: 0, scope: !3982)
!4012 = !DILocation(line: 343, column: 17, scope: !3982)
!4013 = !DILocation(line: 345, column: 18, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !3982, file: !692, line: 345, column: 9)
!4015 = !DILocation(line: 345, column: 28, scope: !4014)
!4016 = !DILocation(line: 349, column: 34, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !3982, file: !692, line: 349, column: 9)
!4018 = !DILocation(line: 349, column: 43, scope: !4017)
!4019 = !DILocation(line: 349, column: 25, scope: !4017)
!4020 = !DILocation(line: 349, column: 16, scope: !4017)
!4021 = !DILocation(line: 0, scope: !4002, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 356, column: 9, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4017, file: !692, line: 355, column: 7)
!4024 = !DILocation(line: 0, scope: !4002, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 351, column: 9, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4017, file: !692, line: 350, column: 7)
!4027 = !DILocation(line: 79, column: 10, scope: !4002, inlinedAt: !4028)
!4028 = !DILocation(line: 0, scope: !4017)
!4029 = !DILocation(line: 361, column: 15, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !3982, file: !692, line: 361, column: 9)
!4031 = !DILocation(line: 361, column: 9, scope: !3982)
!4032 = !DILocation(line: 360, column: 24, scope: !3982)
!4033 = !DILocation(line: 362, column: 7, scope: !4030)
!4034 = !DILocation(line: 365, column: 1, scope: !3973)
!4035 = !DISubprogram(name: "__builtin___sprintf_chk", scope: !692, file: !692, line: 362, type: !4036, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!105, !1986, !105, !136, !1012, null}
!4038 = distinct !DISubprogram(name: "version_etc_arn", scope: !711, file: !711, line: 61, type: !4039, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4076)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{null, !4041, !137, !137, !137, !4075, !134}
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !4043)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !4044)
!4044 = !{!4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4043, file: !230, line: 51, baseType: !105, size: 32)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4043, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4043, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4043, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4043, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4043, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4043, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4043, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4043, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4043, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4043, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4043, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4043, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4043, file: !230, line: 70, baseType: !4059, size: 64, offset: 832)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4043, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4043, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4043, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4043, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4043, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4043, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4043, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4043, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4043, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4043, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4043, file: !230, line: 93, baseType: !4059, size: 64, offset: 1344)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4043, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4043, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4043, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4043, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!4076 = !{!4077, !4078, !4079, !4080, !4081, !4082}
!4077 = !DILocalVariable(name: "stream", arg: 1, scope: !4038, file: !711, line: 61, type: !4041)
!4078 = !DILocalVariable(name: "command_name", arg: 2, scope: !4038, file: !711, line: 62, type: !137)
!4079 = !DILocalVariable(name: "package", arg: 3, scope: !4038, file: !711, line: 62, type: !137)
!4080 = !DILocalVariable(name: "version", arg: 4, scope: !4038, file: !711, line: 63, type: !137)
!4081 = !DILocalVariable(name: "authors", arg: 5, scope: !4038, file: !711, line: 64, type: !4075)
!4082 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4038, file: !711, line: 64, type: !134)
!4083 = !DILocation(line: 0, scope: !4038)
!4084 = !DILocation(line: 66, column: 7, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4038, file: !711, line: 66, column: 7)
!4086 = !DILocation(line: 66, column: 7, scope: !4038)
!4087 = !DILocation(line: 67, column: 5, scope: !4085)
!4088 = !DILocation(line: 69, column: 5, scope: !4085)
!4089 = !DILocation(line: 83, column: 3, scope: !4038)
!4090 = !DILocation(line: 85, column: 3, scope: !4038)
!4091 = !DILocation(line: 88, column: 3, scope: !4038)
!4092 = !DILocation(line: 95, column: 3, scope: !4038)
!4093 = !DILocation(line: 97, column: 3, scope: !4038)
!4094 = !DILocation(line: 105, column: 7, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4038, file: !711, line: 98, column: 5)
!4096 = !DILocation(line: 106, column: 7, scope: !4095)
!4097 = !DILocation(line: 109, column: 7, scope: !4095)
!4098 = !DILocation(line: 110, column: 7, scope: !4095)
!4099 = !DILocation(line: 113, column: 7, scope: !4095)
!4100 = !DILocation(line: 115, column: 7, scope: !4095)
!4101 = !DILocation(line: 120, column: 7, scope: !4095)
!4102 = !DILocation(line: 122, column: 7, scope: !4095)
!4103 = !DILocation(line: 127, column: 7, scope: !4095)
!4104 = !DILocation(line: 129, column: 7, scope: !4095)
!4105 = !DILocation(line: 134, column: 7, scope: !4095)
!4106 = !DILocation(line: 137, column: 7, scope: !4095)
!4107 = !DILocation(line: 142, column: 7, scope: !4095)
!4108 = !DILocation(line: 145, column: 7, scope: !4095)
!4109 = !DILocation(line: 150, column: 7, scope: !4095)
!4110 = !DILocation(line: 154, column: 7, scope: !4095)
!4111 = !DILocation(line: 159, column: 7, scope: !4095)
!4112 = !DILocation(line: 163, column: 7, scope: !4095)
!4113 = !DILocation(line: 170, column: 7, scope: !4095)
!4114 = !DILocation(line: 174, column: 7, scope: !4095)
!4115 = !DILocation(line: 176, column: 1, scope: !4038)
!4116 = distinct !DISubprogram(name: "version_etc_ar", scope: !711, file: !711, line: 183, type: !4117, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4119)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{null, !4041, !137, !137, !137, !4075}
!4119 = !{!4120, !4121, !4122, !4123, !4124, !4125}
!4120 = !DILocalVariable(name: "stream", arg: 1, scope: !4116, file: !711, line: 183, type: !4041)
!4121 = !DILocalVariable(name: "command_name", arg: 2, scope: !4116, file: !711, line: 184, type: !137)
!4122 = !DILocalVariable(name: "package", arg: 3, scope: !4116, file: !711, line: 184, type: !137)
!4123 = !DILocalVariable(name: "version", arg: 4, scope: !4116, file: !711, line: 185, type: !137)
!4124 = !DILocalVariable(name: "authors", arg: 5, scope: !4116, file: !711, line: 185, type: !4075)
!4125 = !DILocalVariable(name: "n_authors", scope: !4116, file: !711, line: 187, type: !134)
!4126 = !DILocation(line: 0, scope: !4116)
!4127 = !DILocation(line: 189, column: 8, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4116, file: !711, line: 189, column: 3)
!4129 = !DILocation(line: 189, scope: !4128)
!4130 = !DILocation(line: 189, column: 23, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4128, file: !711, line: 189, column: 3)
!4132 = !DILocation(line: 189, column: 3, scope: !4128)
!4133 = !DILocation(line: 189, column: 52, scope: !4131)
!4134 = distinct !{!4134, !4132, !4135, !1069}
!4135 = !DILocation(line: 190, column: 5, scope: !4128)
!4136 = !DILocation(line: 191, column: 3, scope: !4116)
!4137 = !DILocation(line: 192, column: 1, scope: !4116)
!4138 = distinct !DISubprogram(name: "version_etc_va", scope: !711, file: !711, line: 199, type: !4139, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4148)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{null, !4041, !137, !137, !137, !4141}
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4143)
!4143 = !{!4144, !4145, !4146, !4147}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4142, file: !711, line: 192, baseType: !98, size: 32)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4142, file: !711, line: 192, baseType: !98, size: 32, offset: 32)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4142, file: !711, line: 192, baseType: !126, size: 64, offset: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4142, file: !711, line: 192, baseType: !126, size: 64, offset: 128)
!4148 = !{!4149, !4150, !4151, !4152, !4153, !4154, !4155}
!4149 = !DILocalVariable(name: "stream", arg: 1, scope: !4138, file: !711, line: 199, type: !4041)
!4150 = !DILocalVariable(name: "command_name", arg: 2, scope: !4138, file: !711, line: 200, type: !137)
!4151 = !DILocalVariable(name: "package", arg: 3, scope: !4138, file: !711, line: 200, type: !137)
!4152 = !DILocalVariable(name: "version", arg: 4, scope: !4138, file: !711, line: 201, type: !137)
!4153 = !DILocalVariable(name: "authors", arg: 5, scope: !4138, file: !711, line: 201, type: !4141)
!4154 = !DILocalVariable(name: "n_authors", scope: !4138, file: !711, line: 203, type: !134)
!4155 = !DILocalVariable(name: "authtab", scope: !4138, file: !711, line: 204, type: !4156)
!4156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 640, elements: !80)
!4157 = distinct !DIAssignID()
!4158 = !DILocation(line: 0, scope: !4138)
!4159 = !DILocation(line: 204, column: 3, scope: !4138)
!4160 = !DILocation(line: 208, column: 35, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4162, file: !711, line: 206, column: 3)
!4162 = distinct !DILexicalBlock(scope: !4138, file: !711, line: 206, column: 3)
!4163 = !DILocation(line: 208, column: 33, scope: !4161)
!4164 = !DILocation(line: 208, column: 67, scope: !4161)
!4165 = !DILocation(line: 206, column: 3, scope: !4162)
!4166 = !DILocation(line: 208, column: 14, scope: !4161)
!4167 = !DILocation(line: 0, scope: !4162)
!4168 = !DILocation(line: 211, column: 3, scope: !4138)
!4169 = !DILocation(line: 213, column: 1, scope: !4138)
!4170 = distinct !DISubprogram(name: "version_etc", scope: !711, file: !711, line: 230, type: !4171, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4173)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{null, !4041, !137, !137, !137, null}
!4173 = !{!4174, !4175, !4176, !4177, !4178}
!4174 = !DILocalVariable(name: "stream", arg: 1, scope: !4170, file: !711, line: 230, type: !4041)
!4175 = !DILocalVariable(name: "command_name", arg: 2, scope: !4170, file: !711, line: 231, type: !137)
!4176 = !DILocalVariable(name: "package", arg: 3, scope: !4170, file: !711, line: 231, type: !137)
!4177 = !DILocalVariable(name: "version", arg: 4, scope: !4170, file: !711, line: 232, type: !137)
!4178 = !DILocalVariable(name: "authors", scope: !4170, file: !711, line: 234, type: !4179)
!4179 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1017, line: 52, baseType: !4180)
!4180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2383, line: 12, baseType: !4181)
!4181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !711, baseType: !4182)
!4182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4142, size: 192, elements: !75)
!4183 = distinct !DIAssignID()
!4184 = !DILocation(line: 0, scope: !4170)
!4185 = !DILocation(line: 234, column: 3, scope: !4170)
!4186 = !DILocation(line: 235, column: 3, scope: !4170)
!4187 = !DILocation(line: 236, column: 3, scope: !4170)
!4188 = !DILocation(line: 237, column: 3, scope: !4170)
!4189 = !DILocation(line: 238, column: 1, scope: !4170)
!4190 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !711, file: !711, line: 241, type: !532, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871)
!4191 = !DILocation(line: 243, column: 3, scope: !4190)
!4192 = !DILocation(line: 248, column: 3, scope: !4190)
!4193 = !DILocation(line: 254, column: 3, scope: !4190)
!4194 = !DILocation(line: 259, column: 3, scope: !4190)
!4195 = !DILocation(line: 261, column: 1, scope: !4190)
!4196 = distinct !DISubprogram(name: "xnrealloc", scope: !4197, file: !4197, line: 147, type: !4198, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4200)
!4197 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!126, !126, !134, !134}
!4200 = !{!4201, !4202, !4203}
!4201 = !DILocalVariable(name: "p", arg: 1, scope: !4196, file: !4197, line: 147, type: !126)
!4202 = !DILocalVariable(name: "n", arg: 2, scope: !4196, file: !4197, line: 147, type: !134)
!4203 = !DILocalVariable(name: "s", arg: 3, scope: !4196, file: !4197, line: 147, type: !134)
!4204 = !DILocation(line: 0, scope: !4196)
!4205 = !DILocalVariable(name: "p", arg: 1, scope: !4206, file: !879, line: 83, type: !126)
!4206 = distinct !DISubprogram(name: "xreallocarray", scope: !879, file: !879, line: 83, type: !4198, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4207)
!4207 = !{!4205, !4208, !4209}
!4208 = !DILocalVariable(name: "n", arg: 2, scope: !4206, file: !879, line: 83, type: !134)
!4209 = !DILocalVariable(name: "s", arg: 3, scope: !4206, file: !879, line: 83, type: !134)
!4210 = !DILocation(line: 0, scope: !4206, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 149, column: 10, scope: !4196)
!4212 = !DILocation(line: 85, column: 25, scope: !4206, inlinedAt: !4211)
!4213 = !DILocalVariable(name: "p", arg: 1, scope: !4214, file: !879, line: 37, type: !126)
!4214 = distinct !DISubprogram(name: "check_nonnull", scope: !879, file: !879, line: 37, type: !4215, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4217)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!126, !126}
!4217 = !{!4213}
!4218 = !DILocation(line: 0, scope: !4214, inlinedAt: !4219)
!4219 = distinct !DILocation(line: 85, column: 10, scope: !4206, inlinedAt: !4211)
!4220 = !DILocation(line: 39, column: 8, scope: !4221, inlinedAt: !4219)
!4221 = distinct !DILexicalBlock(scope: !4214, file: !879, line: 39, column: 7)
!4222 = !DILocation(line: 39, column: 7, scope: !4214, inlinedAt: !4219)
!4223 = !DILocation(line: 40, column: 5, scope: !4221, inlinedAt: !4219)
!4224 = !DILocation(line: 149, column: 3, scope: !4196)
!4225 = !DILocation(line: 0, scope: !4206)
!4226 = !DILocation(line: 85, column: 25, scope: !4206)
!4227 = !DILocation(line: 0, scope: !4214, inlinedAt: !4228)
!4228 = distinct !DILocation(line: 85, column: 10, scope: !4206)
!4229 = !DILocation(line: 39, column: 8, scope: !4221, inlinedAt: !4228)
!4230 = !DILocation(line: 39, column: 7, scope: !4214, inlinedAt: !4228)
!4231 = !DILocation(line: 40, column: 5, scope: !4221, inlinedAt: !4228)
!4232 = !DILocation(line: 85, column: 3, scope: !4206)
!4233 = distinct !DISubprogram(name: "xmalloc", scope: !879, file: !879, line: 47, type: !4234, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4236)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!126, !134}
!4236 = !{!4237}
!4237 = !DILocalVariable(name: "s", arg: 1, scope: !4233, file: !879, line: 47, type: !134)
!4238 = !DILocation(line: 0, scope: !4233)
!4239 = !DILocation(line: 49, column: 25, scope: !4233)
!4240 = !DILocation(line: 0, scope: !4214, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 49, column: 10, scope: !4233)
!4242 = !DILocation(line: 39, column: 8, scope: !4221, inlinedAt: !4241)
!4243 = !DILocation(line: 39, column: 7, scope: !4214, inlinedAt: !4241)
!4244 = !DILocation(line: 40, column: 5, scope: !4221, inlinedAt: !4241)
!4245 = !DILocation(line: 49, column: 3, scope: !4233)
!4246 = !DISubprogram(name: "malloc", scope: !1146, file: !1146, line: 540, type: !4234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4247 = distinct !DISubprogram(name: "ximalloc", scope: !879, file: !879, line: 53, type: !4248, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4250)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!126, !898}
!4250 = !{!4251}
!4251 = !DILocalVariable(name: "s", arg: 1, scope: !4247, file: !879, line: 53, type: !898)
!4252 = !DILocation(line: 0, scope: !4247)
!4253 = !DILocalVariable(name: "s", arg: 1, scope: !4254, file: !4255, line: 55, type: !898)
!4254 = distinct !DISubprogram(name: "imalloc", scope: !4255, file: !4255, line: 55, type: !4248, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4256)
!4255 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4256 = !{!4253}
!4257 = !DILocation(line: 0, scope: !4254, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 55, column: 25, scope: !4247)
!4259 = !DILocation(line: 57, column: 26, scope: !4254, inlinedAt: !4258)
!4260 = !DILocation(line: 0, scope: !4214, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 55, column: 10, scope: !4247)
!4262 = !DILocation(line: 39, column: 8, scope: !4221, inlinedAt: !4261)
!4263 = !DILocation(line: 39, column: 7, scope: !4214, inlinedAt: !4261)
!4264 = !DILocation(line: 40, column: 5, scope: !4221, inlinedAt: !4261)
!4265 = !DILocation(line: 55, column: 3, scope: !4247)
!4266 = distinct !DISubprogram(name: "xcharalloc", scope: !879, file: !879, line: 59, type: !4267, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4269)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!125, !134}
!4269 = !{!4270}
!4270 = !DILocalVariable(name: "n", arg: 1, scope: !4266, file: !879, line: 59, type: !134)
!4271 = !DILocation(line: 0, scope: !4266)
!4272 = !DILocation(line: 0, scope: !4233, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 61, column: 10, scope: !4266)
!4274 = !DILocation(line: 49, column: 25, scope: !4233, inlinedAt: !4273)
!4275 = !DILocation(line: 0, scope: !4214, inlinedAt: !4276)
!4276 = distinct !DILocation(line: 49, column: 10, scope: !4233, inlinedAt: !4273)
!4277 = !DILocation(line: 39, column: 8, scope: !4221, inlinedAt: !4276)
!4278 = !DILocation(line: 39, column: 7, scope: !4214, inlinedAt: !4276)
!4279 = !DILocation(line: 40, column: 5, scope: !4221, inlinedAt: !4276)
!4280 = !DILocation(line: 61, column: 3, scope: !4266)
!4281 = distinct !DISubprogram(name: "xrealloc", scope: !879, file: !879, line: 68, type: !4282, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4284)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!126, !126, !134}
!4284 = !{!4285, !4286}
!4285 = !DILocalVariable(name: "p", arg: 1, scope: !4281, file: !879, line: 68, type: !126)
!4286 = !DILocalVariable(name: "s", arg: 2, scope: !4281, file: !879, line: 68, type: !134)
!4287 = !DILocation(line: 0, scope: !4281)
!4288 = !DILocalVariable(name: "ptr", arg: 1, scope: !4289, file: !4290, line: 2057, type: !126)
!4289 = distinct !DISubprogram(name: "rpl_realloc", scope: !4290, file: !4290, line: 2057, type: !4282, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4291)
!4290 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4291 = !{!4288, !4292}
!4292 = !DILocalVariable(name: "size", arg: 2, scope: !4289, file: !4290, line: 2057, type: !134)
!4293 = !DILocation(line: 0, scope: !4289, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 70, column: 25, scope: !4281)
!4295 = !DILocation(line: 2059, column: 24, scope: !4289, inlinedAt: !4294)
!4296 = !DILocation(line: 2059, column: 10, scope: !4289, inlinedAt: !4294)
!4297 = !DILocation(line: 0, scope: !4214, inlinedAt: !4298)
!4298 = distinct !DILocation(line: 70, column: 10, scope: !4281)
!4299 = !DILocation(line: 39, column: 8, scope: !4221, inlinedAt: !4298)
!4300 = !DILocation(line: 39, column: 7, scope: !4214, inlinedAt: !4298)
!4301 = !DILocation(line: 40, column: 5, scope: !4221, inlinedAt: !4298)
!4302 = !DILocation(line: 70, column: 3, scope: !4281)
!4303 = !DISubprogram(name: "realloc", scope: !1146, file: !1146, line: 551, type: !4282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4304 = distinct !DISubprogram(name: "xirealloc", scope: !879, file: !879, line: 74, type: !4305, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4307)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!126, !126, !898}
!4307 = !{!4308, !4309}
!4308 = !DILocalVariable(name: "p", arg: 1, scope: !4304, file: !879, line: 74, type: !126)
!4309 = !DILocalVariable(name: "s", arg: 2, scope: !4304, file: !879, line: 74, type: !898)
!4310 = !DILocation(line: 0, scope: !4304)
!4311 = !DILocalVariable(name: "p", arg: 1, scope: !4312, file: !4255, line: 66, type: !126)
!4312 = distinct !DISubprogram(name: "irealloc", scope: !4255, file: !4255, line: 66, type: !4305, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4313)
!4313 = !{!4311, !4314}
!4314 = !DILocalVariable(name: "s", arg: 2, scope: !4312, file: !4255, line: 66, type: !898)
!4315 = !DILocation(line: 0, scope: !4312, inlinedAt: !4316)
!4316 = distinct !DILocation(line: 76, column: 25, scope: !4304)
!4317 = !DILocation(line: 0, scope: !4289, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 68, column: 26, scope: !4312, inlinedAt: !4316)
!4319 = !DILocation(line: 2059, column: 24, scope: !4289, inlinedAt: !4318)
!4320 = !DILocation(line: 2059, column: 10, scope: !4289, inlinedAt: !4318)
!4321 = !DILocation(line: 0, scope: !4214, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 76, column: 10, scope: !4304)
!4323 = !DILocation(line: 39, column: 8, scope: !4221, inlinedAt: !4322)
!4324 = !DILocation(line: 39, column: 7, scope: !4214, inlinedAt: !4322)
!4325 = !DILocation(line: 40, column: 5, scope: !4221, inlinedAt: !4322)
!4326 = !DILocation(line: 76, column: 3, scope: !4304)
!4327 = distinct !DISubprogram(name: "xireallocarray", scope: !879, file: !879, line: 89, type: !4328, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4330)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!126, !126, !898, !898}
!4330 = !{!4331, !4332, !4333}
!4331 = !DILocalVariable(name: "p", arg: 1, scope: !4327, file: !879, line: 89, type: !126)
!4332 = !DILocalVariable(name: "n", arg: 2, scope: !4327, file: !879, line: 89, type: !898)
!4333 = !DILocalVariable(name: "s", arg: 3, scope: !4327, file: !879, line: 89, type: !898)
!4334 = !DILocation(line: 0, scope: !4327)
!4335 = !DILocalVariable(name: "p", arg: 1, scope: !4336, file: !4255, line: 98, type: !126)
!4336 = distinct !DISubprogram(name: "ireallocarray", scope: !4255, file: !4255, line: 98, type: !4328, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4337)
!4337 = !{!4335, !4338, !4339}
!4338 = !DILocalVariable(name: "n", arg: 2, scope: !4336, file: !4255, line: 98, type: !898)
!4339 = !DILocalVariable(name: "s", arg: 3, scope: !4336, file: !4255, line: 98, type: !898)
!4340 = !DILocation(line: 0, scope: !4336, inlinedAt: !4341)
!4341 = distinct !DILocation(line: 91, column: 25, scope: !4327)
!4342 = !DILocation(line: 101, column: 13, scope: !4336, inlinedAt: !4341)
!4343 = !DILocation(line: 0, scope: !4214, inlinedAt: !4344)
!4344 = distinct !DILocation(line: 91, column: 10, scope: !4327)
!4345 = !DILocation(line: 39, column: 8, scope: !4221, inlinedAt: !4344)
!4346 = !DILocation(line: 39, column: 7, scope: !4214, inlinedAt: !4344)
!4347 = !DILocation(line: 40, column: 5, scope: !4221, inlinedAt: !4344)
!4348 = !DILocation(line: 91, column: 3, scope: !4327)
!4349 = distinct !DISubprogram(name: "xnmalloc", scope: !879, file: !879, line: 98, type: !4350, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4352)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!126, !134, !134}
!4352 = !{!4353, !4354}
!4353 = !DILocalVariable(name: "n", arg: 1, scope: !4349, file: !879, line: 98, type: !134)
!4354 = !DILocalVariable(name: "s", arg: 2, scope: !4349, file: !879, line: 98, type: !134)
!4355 = !DILocation(line: 0, scope: !4349)
!4356 = !DILocation(line: 0, scope: !4206, inlinedAt: !4357)
!4357 = distinct !DILocation(line: 100, column: 10, scope: !4349)
!4358 = !DILocation(line: 85, column: 25, scope: !4206, inlinedAt: !4357)
!4359 = !DILocation(line: 0, scope: !4214, inlinedAt: !4360)
!4360 = distinct !DILocation(line: 85, column: 10, scope: !4206, inlinedAt: !4357)
!4361 = !DILocation(line: 39, column: 8, scope: !4221, inlinedAt: !4360)
!4362 = !DILocation(line: 39, column: 7, scope: !4214, inlinedAt: !4360)
!4363 = !DILocation(line: 40, column: 5, scope: !4221, inlinedAt: !4360)
!4364 = !DILocation(line: 100, column: 3, scope: !4349)
!4365 = distinct !DISubprogram(name: "xinmalloc", scope: !879, file: !879, line: 104, type: !4366, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4368)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!126, !898, !898}
!4368 = !{!4369, !4370}
!4369 = !DILocalVariable(name: "n", arg: 1, scope: !4365, file: !879, line: 104, type: !898)
!4370 = !DILocalVariable(name: "s", arg: 2, scope: !4365, file: !879, line: 104, type: !898)
!4371 = !DILocation(line: 0, scope: !4365)
!4372 = !DILocation(line: 0, scope: !4327, inlinedAt: !4373)
!4373 = distinct !DILocation(line: 106, column: 10, scope: !4365)
!4374 = !DILocation(line: 0, scope: !4336, inlinedAt: !4375)
!4375 = distinct !DILocation(line: 91, column: 25, scope: !4327, inlinedAt: !4373)
!4376 = !DILocation(line: 101, column: 13, scope: !4336, inlinedAt: !4375)
!4377 = !DILocation(line: 0, scope: !4214, inlinedAt: !4378)
!4378 = distinct !DILocation(line: 91, column: 10, scope: !4327, inlinedAt: !4373)
!4379 = !DILocation(line: 39, column: 8, scope: !4221, inlinedAt: !4378)
!4380 = !DILocation(line: 39, column: 7, scope: !4214, inlinedAt: !4378)
!4381 = !DILocation(line: 40, column: 5, scope: !4221, inlinedAt: !4378)
!4382 = !DILocation(line: 106, column: 3, scope: !4365)
!4383 = distinct !DISubprogram(name: "x2realloc", scope: !879, file: !879, line: 116, type: !4384, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4386)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!126, !126, !885}
!4386 = !{!4387, !4388}
!4387 = !DILocalVariable(name: "p", arg: 1, scope: !4383, file: !879, line: 116, type: !126)
!4388 = !DILocalVariable(name: "ps", arg: 2, scope: !4383, file: !879, line: 116, type: !885)
!4389 = !DILocation(line: 0, scope: !4383)
!4390 = !DILocation(line: 0, scope: !882, inlinedAt: !4391)
!4391 = distinct !DILocation(line: 118, column: 10, scope: !4383)
!4392 = !DILocation(line: 178, column: 14, scope: !882, inlinedAt: !4391)
!4393 = !DILocation(line: 180, column: 9, scope: !4394, inlinedAt: !4391)
!4394 = distinct !DILexicalBlock(scope: !882, file: !879, line: 180, column: 7)
!4395 = !DILocation(line: 180, column: 7, scope: !882, inlinedAt: !4391)
!4396 = !DILocation(line: 182, column: 13, scope: !4397, inlinedAt: !4391)
!4397 = distinct !DILexicalBlock(scope: !4398, file: !879, line: 182, column: 11)
!4398 = distinct !DILexicalBlock(scope: !4394, file: !879, line: 181, column: 5)
!4399 = !DILocation(line: 182, column: 11, scope: !4398, inlinedAt: !4391)
!4400 = !DILocation(line: 197, column: 11, scope: !4401, inlinedAt: !4391)
!4401 = distinct !DILexicalBlock(scope: !4402, file: !879, line: 197, column: 11)
!4402 = distinct !DILexicalBlock(scope: !4394, file: !879, line: 195, column: 5)
!4403 = !DILocation(line: 197, column: 11, scope: !4402, inlinedAt: !4391)
!4404 = !DILocation(line: 198, column: 9, scope: !4401, inlinedAt: !4391)
!4405 = !DILocation(line: 0, scope: !4206, inlinedAt: !4406)
!4406 = distinct !DILocation(line: 201, column: 7, scope: !882, inlinedAt: !4391)
!4407 = !DILocation(line: 85, column: 25, scope: !4206, inlinedAt: !4406)
!4408 = !DILocation(line: 0, scope: !4214, inlinedAt: !4409)
!4409 = distinct !DILocation(line: 85, column: 10, scope: !4206, inlinedAt: !4406)
!4410 = !DILocation(line: 39, column: 8, scope: !4221, inlinedAt: !4409)
!4411 = !DILocation(line: 39, column: 7, scope: !4214, inlinedAt: !4409)
!4412 = !DILocation(line: 40, column: 5, scope: !4221, inlinedAt: !4409)
!4413 = !DILocation(line: 202, column: 7, scope: !882, inlinedAt: !4391)
!4414 = !DILocation(line: 118, column: 3, scope: !4383)
!4415 = !DILocation(line: 0, scope: !882)
!4416 = !DILocation(line: 178, column: 14, scope: !882)
!4417 = !DILocation(line: 180, column: 9, scope: !4394)
!4418 = !DILocation(line: 180, column: 7, scope: !882)
!4419 = !DILocation(line: 182, column: 13, scope: !4397)
!4420 = !DILocation(line: 182, column: 11, scope: !4398)
!4421 = !DILocation(line: 190, column: 30, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4397, file: !879, line: 183, column: 9)
!4423 = !DILocation(line: 191, column: 16, scope: !4422)
!4424 = !DILocation(line: 191, column: 13, scope: !4422)
!4425 = !DILocation(line: 192, column: 9, scope: !4422)
!4426 = !DILocation(line: 197, column: 11, scope: !4401)
!4427 = !DILocation(line: 197, column: 11, scope: !4402)
!4428 = !DILocation(line: 198, column: 9, scope: !4401)
!4429 = !DILocation(line: 0, scope: !4206, inlinedAt: !4430)
!4430 = distinct !DILocation(line: 201, column: 7, scope: !882)
!4431 = !DILocation(line: 85, column: 25, scope: !4206, inlinedAt: !4430)
!4432 = !DILocation(line: 0, scope: !4214, inlinedAt: !4433)
!4433 = distinct !DILocation(line: 85, column: 10, scope: !4206, inlinedAt: !4430)
!4434 = !DILocation(line: 39, column: 8, scope: !4221, inlinedAt: !4433)
!4435 = !DILocation(line: 39, column: 7, scope: !4214, inlinedAt: !4433)
!4436 = !DILocation(line: 40, column: 5, scope: !4221, inlinedAt: !4433)
!4437 = !DILocation(line: 202, column: 7, scope: !882)
!4438 = !DILocation(line: 203, column: 3, scope: !882)
!4439 = !DILocation(line: 0, scope: !894)
!4440 = !DILocation(line: 230, column: 14, scope: !894)
!4441 = !DILocation(line: 238, column: 7, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !894, file: !879, line: 238, column: 7)
!4443 = !DILocation(line: 238, column: 7, scope: !894)
!4444 = !DILocation(line: 240, column: 9, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !894, file: !879, line: 240, column: 7)
!4446 = !DILocation(line: 240, column: 18, scope: !4445)
!4447 = !DILocation(line: 253, column: 8, scope: !894)
!4448 = !DILocation(line: 256, column: 7, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !894, file: !879, line: 256, column: 7)
!4450 = !DILocation(line: 256, column: 7, scope: !894)
!4451 = !DILocation(line: 258, column: 27, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4449, file: !879, line: 257, column: 5)
!4453 = !DILocation(line: 259, column: 50, scope: !4452)
!4454 = !DILocation(line: 259, column: 32, scope: !4452)
!4455 = !DILocation(line: 260, column: 5, scope: !4452)
!4456 = !DILocation(line: 262, column: 9, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !894, file: !879, line: 262, column: 7)
!4458 = !DILocation(line: 262, column: 7, scope: !894)
!4459 = !DILocation(line: 263, column: 9, scope: !4457)
!4460 = !DILocation(line: 263, column: 5, scope: !4457)
!4461 = !DILocation(line: 264, column: 9, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !894, file: !879, line: 264, column: 7)
!4463 = !DILocation(line: 264, column: 14, scope: !4462)
!4464 = !DILocation(line: 265, column: 7, scope: !4462)
!4465 = !DILocation(line: 265, column: 11, scope: !4462)
!4466 = !DILocation(line: 266, column: 11, scope: !4462)
!4467 = !DILocation(line: 267, column: 14, scope: !4462)
!4468 = !DILocation(line: 264, column: 7, scope: !894)
!4469 = !DILocation(line: 268, column: 5, scope: !4462)
!4470 = !DILocation(line: 0, scope: !4281, inlinedAt: !4471)
!4471 = distinct !DILocation(line: 269, column: 8, scope: !894)
!4472 = !DILocation(line: 0, scope: !4289, inlinedAt: !4473)
!4473 = distinct !DILocation(line: 70, column: 25, scope: !4281, inlinedAt: !4471)
!4474 = !DILocation(line: 2059, column: 24, scope: !4289, inlinedAt: !4473)
!4475 = !DILocation(line: 2059, column: 10, scope: !4289, inlinedAt: !4473)
!4476 = !DILocation(line: 0, scope: !4214, inlinedAt: !4477)
!4477 = distinct !DILocation(line: 70, column: 10, scope: !4281, inlinedAt: !4471)
!4478 = !DILocation(line: 39, column: 8, scope: !4221, inlinedAt: !4477)
!4479 = !DILocation(line: 39, column: 7, scope: !4214, inlinedAt: !4477)
!4480 = !DILocation(line: 40, column: 5, scope: !4221, inlinedAt: !4477)
!4481 = !DILocation(line: 270, column: 7, scope: !894)
!4482 = !DILocation(line: 271, column: 3, scope: !894)
!4483 = distinct !DISubprogram(name: "xzalloc", scope: !879, file: !879, line: 279, type: !4234, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4484)
!4484 = !{!4485}
!4485 = !DILocalVariable(name: "s", arg: 1, scope: !4483, file: !879, line: 279, type: !134)
!4486 = !DILocation(line: 0, scope: !4483)
!4487 = !DILocalVariable(name: "n", arg: 1, scope: !4488, file: !879, line: 294, type: !134)
!4488 = distinct !DISubprogram(name: "xcalloc", scope: !879, file: !879, line: 294, type: !4350, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4489)
!4489 = !{!4487, !4490}
!4490 = !DILocalVariable(name: "s", arg: 2, scope: !4488, file: !879, line: 294, type: !134)
!4491 = !DILocation(line: 0, scope: !4488, inlinedAt: !4492)
!4492 = distinct !DILocation(line: 281, column: 10, scope: !4483)
!4493 = !DILocation(line: 296, column: 25, scope: !4488, inlinedAt: !4492)
!4494 = !DILocation(line: 0, scope: !4214, inlinedAt: !4495)
!4495 = distinct !DILocation(line: 296, column: 10, scope: !4488, inlinedAt: !4492)
!4496 = !DILocation(line: 39, column: 8, scope: !4221, inlinedAt: !4495)
!4497 = !DILocation(line: 39, column: 7, scope: !4214, inlinedAt: !4495)
!4498 = !DILocation(line: 40, column: 5, scope: !4221, inlinedAt: !4495)
!4499 = !DILocation(line: 281, column: 3, scope: !4483)
!4500 = !DISubprogram(name: "calloc", scope: !1146, file: !1146, line: 543, type: !4350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4501 = !DILocation(line: 0, scope: !4488)
!4502 = !DILocation(line: 296, column: 25, scope: !4488)
!4503 = !DILocation(line: 0, scope: !4214, inlinedAt: !4504)
!4504 = distinct !DILocation(line: 296, column: 10, scope: !4488)
!4505 = !DILocation(line: 39, column: 8, scope: !4221, inlinedAt: !4504)
!4506 = !DILocation(line: 39, column: 7, scope: !4214, inlinedAt: !4504)
!4507 = !DILocation(line: 40, column: 5, scope: !4221, inlinedAt: !4504)
!4508 = !DILocation(line: 296, column: 3, scope: !4488)
!4509 = distinct !DISubprogram(name: "xizalloc", scope: !879, file: !879, line: 285, type: !4248, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4510)
!4510 = !{!4511}
!4511 = !DILocalVariable(name: "s", arg: 1, scope: !4509, file: !879, line: 285, type: !898)
!4512 = !DILocation(line: 0, scope: !4509)
!4513 = !DILocalVariable(name: "n", arg: 1, scope: !4514, file: !879, line: 300, type: !898)
!4514 = distinct !DISubprogram(name: "xicalloc", scope: !879, file: !879, line: 300, type: !4366, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4515)
!4515 = !{!4513, !4516}
!4516 = !DILocalVariable(name: "s", arg: 2, scope: !4514, file: !879, line: 300, type: !898)
!4517 = !DILocation(line: 0, scope: !4514, inlinedAt: !4518)
!4518 = distinct !DILocation(line: 287, column: 10, scope: !4509)
!4519 = !DILocalVariable(name: "n", arg: 1, scope: !4520, file: !4255, line: 77, type: !898)
!4520 = distinct !DISubprogram(name: "icalloc", scope: !4255, file: !4255, line: 77, type: !4366, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4521)
!4521 = !{!4519, !4522}
!4522 = !DILocalVariable(name: "s", arg: 2, scope: !4520, file: !4255, line: 77, type: !898)
!4523 = !DILocation(line: 0, scope: !4520, inlinedAt: !4524)
!4524 = distinct !DILocation(line: 302, column: 25, scope: !4514, inlinedAt: !4518)
!4525 = !DILocation(line: 91, column: 10, scope: !4520, inlinedAt: !4524)
!4526 = !DILocation(line: 0, scope: !4214, inlinedAt: !4527)
!4527 = distinct !DILocation(line: 302, column: 10, scope: !4514, inlinedAt: !4518)
!4528 = !DILocation(line: 39, column: 8, scope: !4221, inlinedAt: !4527)
!4529 = !DILocation(line: 39, column: 7, scope: !4214, inlinedAt: !4527)
!4530 = !DILocation(line: 40, column: 5, scope: !4221, inlinedAt: !4527)
!4531 = !DILocation(line: 287, column: 3, scope: !4509)
!4532 = !DILocation(line: 0, scope: !4514)
!4533 = !DILocation(line: 0, scope: !4520, inlinedAt: !4534)
!4534 = distinct !DILocation(line: 302, column: 25, scope: !4514)
!4535 = !DILocation(line: 91, column: 10, scope: !4520, inlinedAt: !4534)
!4536 = !DILocation(line: 0, scope: !4214, inlinedAt: !4537)
!4537 = distinct !DILocation(line: 302, column: 10, scope: !4514)
!4538 = !DILocation(line: 39, column: 8, scope: !4221, inlinedAt: !4537)
!4539 = !DILocation(line: 39, column: 7, scope: !4214, inlinedAt: !4537)
!4540 = !DILocation(line: 40, column: 5, scope: !4221, inlinedAt: !4537)
!4541 = !DILocation(line: 302, column: 3, scope: !4514)
!4542 = distinct !DISubprogram(name: "xmemdup", scope: !879, file: !879, line: 310, type: !4543, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4545)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!126, !1168, !134}
!4545 = !{!4546, !4547}
!4546 = !DILocalVariable(name: "p", arg: 1, scope: !4542, file: !879, line: 310, type: !1168)
!4547 = !DILocalVariable(name: "s", arg: 2, scope: !4542, file: !879, line: 310, type: !134)
!4548 = !DILocation(line: 0, scope: !4542)
!4549 = !DILocation(line: 0, scope: !4233, inlinedAt: !4550)
!4550 = distinct !DILocation(line: 312, column: 18, scope: !4542)
!4551 = !DILocation(line: 49, column: 25, scope: !4233, inlinedAt: !4550)
!4552 = !DILocation(line: 0, scope: !4214, inlinedAt: !4553)
!4553 = distinct !DILocation(line: 49, column: 10, scope: !4233, inlinedAt: !4550)
!4554 = !DILocation(line: 39, column: 8, scope: !4221, inlinedAt: !4553)
!4555 = !DILocation(line: 39, column: 7, scope: !4214, inlinedAt: !4553)
!4556 = !DILocation(line: 40, column: 5, scope: !4221, inlinedAt: !4553)
!4557 = !DILocalVariable(name: "__dest", arg: 1, scope: !4558, file: !2500, line: 26, type: !4561)
!4558 = distinct !DISubprogram(name: "memcpy", scope: !2500, file: !2500, line: 26, type: !4559, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4562)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!126, !4561, !1167, !134}
!4561 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !126)
!4562 = !{!4557, !4563, !4564}
!4563 = !DILocalVariable(name: "__src", arg: 2, scope: !4558, file: !2500, line: 26, type: !1167)
!4564 = !DILocalVariable(name: "__len", arg: 3, scope: !4558, file: !2500, line: 26, type: !134)
!4565 = !DILocation(line: 0, scope: !4558, inlinedAt: !4566)
!4566 = distinct !DILocation(line: 312, column: 10, scope: !4542)
!4567 = !DILocation(line: 29, column: 10, scope: !4558, inlinedAt: !4566)
!4568 = !DILocation(line: 312, column: 3, scope: !4542)
!4569 = distinct !DISubprogram(name: "ximemdup", scope: !879, file: !879, line: 316, type: !4570, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4572)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!126, !1168, !898}
!4572 = !{!4573, !4574}
!4573 = !DILocalVariable(name: "p", arg: 1, scope: !4569, file: !879, line: 316, type: !1168)
!4574 = !DILocalVariable(name: "s", arg: 2, scope: !4569, file: !879, line: 316, type: !898)
!4575 = !DILocation(line: 0, scope: !4569)
!4576 = !DILocation(line: 0, scope: !4247, inlinedAt: !4577)
!4577 = distinct !DILocation(line: 318, column: 18, scope: !4569)
!4578 = !DILocation(line: 0, scope: !4254, inlinedAt: !4579)
!4579 = distinct !DILocation(line: 55, column: 25, scope: !4247, inlinedAt: !4577)
!4580 = !DILocation(line: 57, column: 26, scope: !4254, inlinedAt: !4579)
!4581 = !DILocation(line: 0, scope: !4214, inlinedAt: !4582)
!4582 = distinct !DILocation(line: 55, column: 10, scope: !4247, inlinedAt: !4577)
!4583 = !DILocation(line: 39, column: 8, scope: !4221, inlinedAt: !4582)
!4584 = !DILocation(line: 39, column: 7, scope: !4214, inlinedAt: !4582)
!4585 = !DILocation(line: 40, column: 5, scope: !4221, inlinedAt: !4582)
!4586 = !DILocation(line: 0, scope: !4558, inlinedAt: !4587)
!4587 = distinct !DILocation(line: 318, column: 10, scope: !4569)
!4588 = !DILocation(line: 29, column: 10, scope: !4558, inlinedAt: !4587)
!4589 = !DILocation(line: 318, column: 3, scope: !4569)
!4590 = distinct !DISubprogram(name: "ximemdup0", scope: !879, file: !879, line: 325, type: !4591, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4593)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!125, !1168, !898}
!4593 = !{!4594, !4595, !4596}
!4594 = !DILocalVariable(name: "p", arg: 1, scope: !4590, file: !879, line: 325, type: !1168)
!4595 = !DILocalVariable(name: "s", arg: 2, scope: !4590, file: !879, line: 325, type: !898)
!4596 = !DILocalVariable(name: "result", scope: !4590, file: !879, line: 327, type: !125)
!4597 = !DILocation(line: 0, scope: !4590)
!4598 = !DILocation(line: 327, column: 30, scope: !4590)
!4599 = !DILocation(line: 0, scope: !4247, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 327, column: 18, scope: !4590)
!4601 = !DILocation(line: 0, scope: !4254, inlinedAt: !4602)
!4602 = distinct !DILocation(line: 55, column: 25, scope: !4247, inlinedAt: !4600)
!4603 = !DILocation(line: 57, column: 26, scope: !4254, inlinedAt: !4602)
!4604 = !DILocation(line: 0, scope: !4214, inlinedAt: !4605)
!4605 = distinct !DILocation(line: 55, column: 10, scope: !4247, inlinedAt: !4600)
!4606 = !DILocation(line: 39, column: 8, scope: !4221, inlinedAt: !4605)
!4607 = !DILocation(line: 39, column: 7, scope: !4214, inlinedAt: !4605)
!4608 = !DILocation(line: 40, column: 5, scope: !4221, inlinedAt: !4605)
!4609 = !DILocation(line: 328, column: 3, scope: !4590)
!4610 = !DILocation(line: 328, column: 13, scope: !4590)
!4611 = !DILocation(line: 0, scope: !4558, inlinedAt: !4612)
!4612 = distinct !DILocation(line: 329, column: 10, scope: !4590)
!4613 = !DILocation(line: 29, column: 10, scope: !4558, inlinedAt: !4612)
!4614 = !DILocation(line: 329, column: 3, scope: !4590)
!4615 = distinct !DISubprogram(name: "xstrdup", scope: !879, file: !879, line: 335, type: !1148, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4616)
!4616 = !{!4617}
!4617 = !DILocalVariable(name: "string", arg: 1, scope: !4615, file: !879, line: 335, type: !137)
!4618 = !DILocation(line: 0, scope: !4615)
!4619 = !DILocation(line: 337, column: 27, scope: !4615)
!4620 = !DILocation(line: 337, column: 43, scope: !4615)
!4621 = !DILocation(line: 0, scope: !4542, inlinedAt: !4622)
!4622 = distinct !DILocation(line: 337, column: 10, scope: !4615)
!4623 = !DILocation(line: 0, scope: !4233, inlinedAt: !4624)
!4624 = distinct !DILocation(line: 312, column: 18, scope: !4542, inlinedAt: !4622)
!4625 = !DILocation(line: 49, column: 25, scope: !4233, inlinedAt: !4624)
!4626 = !DILocation(line: 0, scope: !4214, inlinedAt: !4627)
!4627 = distinct !DILocation(line: 49, column: 10, scope: !4233, inlinedAt: !4624)
!4628 = !DILocation(line: 39, column: 8, scope: !4221, inlinedAt: !4627)
!4629 = !DILocation(line: 39, column: 7, scope: !4214, inlinedAt: !4627)
!4630 = !DILocation(line: 40, column: 5, scope: !4221, inlinedAt: !4627)
!4631 = !DILocation(line: 0, scope: !4558, inlinedAt: !4632)
!4632 = distinct !DILocation(line: 312, column: 10, scope: !4542, inlinedAt: !4622)
!4633 = !DILocation(line: 29, column: 10, scope: !4558, inlinedAt: !4632)
!4634 = !DILocation(line: 337, column: 3, scope: !4615)
!4635 = distinct !DISubprogram(name: "xalloc_die", scope: !798, file: !798, line: 32, type: !532, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4636)
!4636 = !{!4637}
!4637 = !DILocalVariable(name: "__errstatus", scope: !4638, file: !798, line: 34, type: !426)
!4638 = distinct !DILexicalBlock(scope: !4635, file: !798, line: 34, column: 3)
!4639 = !DILocation(line: 34, column: 3, scope: !4638)
!4640 = !DILocation(line: 0, scope: !4638)
!4641 = !DILocation(line: 40, column: 3, scope: !4635)
!4642 = distinct !DISubprogram(name: "c_strtod", scope: !806, file: !806, line: 102, type: !4643, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !4645)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!187, !137, !1173}
!4645 = !{!4646, !4647, !4648, !4649}
!4646 = !DILocalVariable(name: "nptr", arg: 1, scope: !4642, file: !806, line: 102, type: !137)
!4647 = !DILocalVariable(name: "endptr", arg: 2, scope: !4642, file: !806, line: 102, type: !1173)
!4648 = !DILocalVariable(name: "r", scope: !4642, file: !806, line: 104, type: !187)
!4649 = !DILocalVariable(name: "locale", scope: !4642, file: !806, line: 108, type: !808)
!4650 = !DILocation(line: 0, scope: !4642)
!4651 = !DILocation(line: 65, column: 8, scope: !4652, inlinedAt: !4656)
!4652 = distinct !DILexicalBlock(scope: !4653, file: !806, line: 65, column: 7)
!4653 = distinct !DISubprogram(name: "c_locale", scope: !806, file: !806, line: 63, type: !4654, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!808}
!4656 = distinct !DILocation(line: 108, column: 21, scope: !4642)
!4657 = !DILocation(line: 65, column: 7, scope: !4653, inlinedAt: !4656)
!4658 = !DILocation(line: 66, column: 22, scope: !4652, inlinedAt: !4656)
!4659 = !DILocation(line: 66, column: 20, scope: !4652, inlinedAt: !4656)
!4660 = !DILocation(line: 66, column: 5, scope: !4652, inlinedAt: !4656)
!4661 = !DILocation(line: 67, column: 10, scope: !4653, inlinedAt: !4656)
!4662 = !DILocation(line: 109, column: 8, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4642, file: !806, line: 109, column: 7)
!4664 = !DILocation(line: 109, column: 7, scope: !4642)
!4665 = !DILocation(line: 111, column: 11, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4667, file: !806, line: 111, column: 11)
!4667 = distinct !DILexicalBlock(scope: !4663, file: !806, line: 110, column: 5)
!4668 = !DILocation(line: 111, column: 11, scope: !4667)
!4669 = !DILocation(line: 112, column: 17, scope: !4666)
!4670 = !DILocation(line: 112, column: 9, scope: !4666)
!4671 = !DILocation(line: 118, column: 7, scope: !4642)
!4672 = !DILocation(line: 342, column: 3, scope: !4642)
!4673 = !DILocation(line: 343, column: 1, scope: !4642)
!4674 = !DISubprogram(name: "newlocale", scope: !1138, file: !1138, line: 141, type: !4675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!808, !105, !137, !808}
!4677 = !DISubprogram(name: "strtod_l", scope: !1146, file: !1146, line: 296, type: !4678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!187, !1012, !2085, !808}
!4680 = distinct !DISubprogram(name: "close_stream", scope: !916, file: !916, line: 55, type: !4681, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !915, retainedNodes: !4717)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!105, !4683}
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !4685)
!4685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !4686)
!4686 = !{!4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4685, file: !230, line: 51, baseType: !105, size: 32)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4685, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4685, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4685, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4685, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4685, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4685, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4685, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4685, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4685, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4685, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4685, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4685, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4685, file: !230, line: 70, baseType: !4701, size: 64, offset: 832)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4685, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4685, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4685, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4685, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4685, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4685, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4685, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4685, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4685, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4685, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4685, file: !230, line: 93, baseType: !4701, size: 64, offset: 1344)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4685, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4685, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4685, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4685, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!4717 = !{!4718, !4719, !4721, !4722}
!4718 = !DILocalVariable(name: "stream", arg: 1, scope: !4680, file: !916, line: 55, type: !4683)
!4719 = !DILocalVariable(name: "some_pending", scope: !4680, file: !916, line: 57, type: !4720)
!4720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!4721 = !DILocalVariable(name: "prev_fail", scope: !4680, file: !916, line: 58, type: !4720)
!4722 = !DILocalVariable(name: "fclose_fail", scope: !4680, file: !916, line: 59, type: !4720)
!4723 = !DILocation(line: 0, scope: !4680)
!4724 = !DILocation(line: 57, column: 30, scope: !4680)
!4725 = !DILocalVariable(name: "__stream", arg: 1, scope: !4726, file: !2339, line: 135, type: !4683)
!4726 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2339, file: !2339, line: 135, type: !4681, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !915, retainedNodes: !4727)
!4727 = !{!4725}
!4728 = !DILocation(line: 0, scope: !4726, inlinedAt: !4729)
!4729 = distinct !DILocation(line: 58, column: 27, scope: !4680)
!4730 = !DILocation(line: 137, column: 10, scope: !4726, inlinedAt: !4729)
!4731 = !{!2348, !1023, i64 0}
!4732 = !DILocation(line: 58, column: 43, scope: !4680)
!4733 = !DILocation(line: 59, column: 29, scope: !4680)
!4734 = !DILocation(line: 59, column: 45, scope: !4680)
!4735 = !DILocation(line: 69, column: 17, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4680, file: !916, line: 69, column: 7)
!4737 = !DILocation(line: 57, column: 50, scope: !4680)
!4738 = !DILocation(line: 69, column: 33, scope: !4736)
!4739 = !DILocation(line: 69, column: 53, scope: !4736)
!4740 = !DILocation(line: 69, column: 59, scope: !4736)
!4741 = !DILocation(line: 69, column: 7, scope: !4680)
!4742 = !DILocation(line: 71, column: 11, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4736, file: !916, line: 70, column: 5)
!4744 = !DILocation(line: 72, column: 9, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4743, file: !916, line: 71, column: 11)
!4746 = !DILocation(line: 72, column: 15, scope: !4745)
!4747 = !DILocation(line: 77, column: 1, scope: !4680)
!4748 = !DISubprogram(name: "__fpending", scope: !4749, file: !4749, line: 75, type: !4750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4749 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!134, !4683}
!4752 = distinct !DISubprogram(name: "rpl_fclose", scope: !918, file: !918, line: 58, type: !4753, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !4789)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!105, !4755}
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !4757)
!4757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !4758)
!4758 = !{!4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4757, file: !230, line: 51, baseType: !105, size: 32)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4757, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4757, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4757, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4757, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4757, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4757, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4757, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4757, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4757, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4757, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4757, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4757, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4757, file: !230, line: 70, baseType: !4773, size: 64, offset: 832)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4757, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4757, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4757, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4757, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4757, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4757, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4757, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4757, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4757, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4757, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4757, file: !230, line: 93, baseType: !4773, size: 64, offset: 1344)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4757, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4757, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4757, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4757, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!4789 = !{!4790, !4791, !4792, !4793}
!4790 = !DILocalVariable(name: "fp", arg: 1, scope: !4752, file: !918, line: 58, type: !4755)
!4791 = !DILocalVariable(name: "saved_errno", scope: !4752, file: !918, line: 60, type: !105)
!4792 = !DILocalVariable(name: "fd", scope: !4752, file: !918, line: 63, type: !105)
!4793 = !DILocalVariable(name: "result", scope: !4752, file: !918, line: 74, type: !105)
!4794 = !DILocation(line: 0, scope: !4752)
!4795 = !DILocation(line: 63, column: 12, scope: !4752)
!4796 = !DILocation(line: 64, column: 10, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4752, file: !918, line: 64, column: 7)
!4798 = !DILocation(line: 64, column: 7, scope: !4752)
!4799 = !DILocation(line: 65, column: 12, scope: !4797)
!4800 = !DILocation(line: 65, column: 5, scope: !4797)
!4801 = !DILocation(line: 70, column: 9, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4752, file: !918, line: 70, column: 7)
!4803 = !DILocation(line: 70, column: 23, scope: !4802)
!4804 = !DILocation(line: 70, column: 33, scope: !4802)
!4805 = !DILocation(line: 70, column: 26, scope: !4802)
!4806 = !DILocation(line: 70, column: 59, scope: !4802)
!4807 = !DILocation(line: 71, column: 7, scope: !4802)
!4808 = !DILocation(line: 71, column: 10, scope: !4802)
!4809 = !DILocation(line: 70, column: 7, scope: !4752)
!4810 = !DILocation(line: 100, column: 12, scope: !4752)
!4811 = !DILocation(line: 105, column: 7, scope: !4752)
!4812 = !DILocation(line: 72, column: 19, scope: !4802)
!4813 = !DILocation(line: 105, column: 19, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4752, file: !918, line: 105, column: 7)
!4815 = !DILocation(line: 107, column: 13, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4814, file: !918, line: 106, column: 5)
!4817 = !DILocation(line: 109, column: 5, scope: !4816)
!4818 = !DILocation(line: 112, column: 1, scope: !4752)
!4819 = !DISubprogram(name: "fileno", scope: !1017, file: !1017, line: 809, type: !4753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4820 = !DISubprogram(name: "fclose", scope: !1017, file: !1017, line: 178, type: !4753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4821 = !DISubprogram(name: "__freading", scope: !4749, file: !4749, line: 51, type: !4753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4822 = !DISubprogram(name: "lseek", scope: !1682, file: !1682, line: 339, type: !4823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!252, !105, !252, !105}
!4825 = distinct !DISubprogram(name: "rpl_fflush", scope: !920, file: !920, line: 130, type: !4826, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4862)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{!105, !4828}
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !4830)
!4830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !4831)
!4831 = !{!4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4830, file: !230, line: 51, baseType: !105, size: 32)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4830, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4830, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4830, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4830, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4830, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4830, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4830, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4830, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4830, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4830, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4830, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4830, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4830, file: !230, line: 70, baseType: !4846, size: 64, offset: 832)
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4830, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4830, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4830, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4830, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4830, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4830, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4830, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4830, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4830, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4830, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4830, file: !230, line: 93, baseType: !4846, size: 64, offset: 1344)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4830, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4830, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4830, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4830, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!4862 = !{!4863}
!4863 = !DILocalVariable(name: "stream", arg: 1, scope: !4825, file: !920, line: 130, type: !4828)
!4864 = !DILocation(line: 0, scope: !4825)
!4865 = !DILocation(line: 151, column: 14, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4825, file: !920, line: 151, column: 7)
!4867 = !DILocation(line: 151, column: 22, scope: !4866)
!4868 = !DILocation(line: 151, column: 27, scope: !4866)
!4869 = !DILocation(line: 151, column: 7, scope: !4825)
!4870 = !DILocation(line: 152, column: 12, scope: !4866)
!4871 = !DILocation(line: 152, column: 5, scope: !4866)
!4872 = !DILocalVariable(name: "fp", arg: 1, scope: !4873, file: !920, line: 42, type: !4828)
!4873 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !920, file: !920, line: 42, type: !4874, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4876)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{null, !4828}
!4876 = !{!4872}
!4877 = !DILocation(line: 0, scope: !4873, inlinedAt: !4878)
!4878 = distinct !DILocation(line: 157, column: 3, scope: !4825)
!4879 = !DILocation(line: 44, column: 12, scope: !4880, inlinedAt: !4878)
!4880 = distinct !DILexicalBlock(scope: !4873, file: !920, line: 44, column: 7)
!4881 = !DILocation(line: 44, column: 19, scope: !4880, inlinedAt: !4878)
!4882 = !DILocation(line: 44, column: 7, scope: !4873, inlinedAt: !4878)
!4883 = !DILocation(line: 46, column: 5, scope: !4880, inlinedAt: !4878)
!4884 = !DILocation(line: 159, column: 10, scope: !4825)
!4885 = !DILocation(line: 159, column: 3, scope: !4825)
!4886 = !DILocation(line: 236, column: 1, scope: !4825)
!4887 = !DISubprogram(name: "fflush", scope: !1017, file: !1017, line: 230, type: !4826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4888 = distinct !DISubprogram(name: "rpl_fseeko", scope: !922, file: !922, line: 28, type: !4889, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4926)
!4889 = !DISubroutineType(types: !4890)
!4890 = !{!105, !4891, !4925, !105}
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4892, size: 64)
!4892 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !4893)
!4893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !4894)
!4894 = !{!4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4893, file: !230, line: 51, baseType: !105, size: 32)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4893, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4893, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4893, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4893, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4893, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4893, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4893, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4893, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4893, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4893, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4893, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4893, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4893, file: !230, line: 70, baseType: !4909, size: 64, offset: 832)
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4893, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4893, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4893, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4893, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4893, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4893, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4893, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4893, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4893, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4893, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4893, file: !230, line: 93, baseType: !4909, size: 64, offset: 1344)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4893, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4893, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4893, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4893, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!4925 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1017, line: 63, baseType: !252)
!4926 = !{!4927, !4928, !4929, !4930}
!4927 = !DILocalVariable(name: "fp", arg: 1, scope: !4888, file: !922, line: 28, type: !4891)
!4928 = !DILocalVariable(name: "offset", arg: 2, scope: !4888, file: !922, line: 28, type: !4925)
!4929 = !DILocalVariable(name: "whence", arg: 3, scope: !4888, file: !922, line: 28, type: !105)
!4930 = !DILocalVariable(name: "pos", scope: !4931, file: !922, line: 123, type: !4925)
!4931 = distinct !DILexicalBlock(scope: !4932, file: !922, line: 119, column: 5)
!4932 = distinct !DILexicalBlock(scope: !4888, file: !922, line: 55, column: 7)
!4933 = !DILocation(line: 0, scope: !4888)
!4934 = !DILocation(line: 55, column: 12, scope: !4932)
!4935 = !{!2348, !951, i64 16}
!4936 = !DILocation(line: 55, column: 33, scope: !4932)
!4937 = !{!2348, !951, i64 8}
!4938 = !DILocation(line: 55, column: 25, scope: !4932)
!4939 = !DILocation(line: 56, column: 7, scope: !4932)
!4940 = !DILocation(line: 56, column: 15, scope: !4932)
!4941 = !DILocation(line: 56, column: 37, scope: !4932)
!4942 = !{!2348, !951, i64 32}
!4943 = !DILocation(line: 56, column: 29, scope: !4932)
!4944 = !DILocation(line: 57, column: 7, scope: !4932)
!4945 = !DILocation(line: 57, column: 15, scope: !4932)
!4946 = !{!2348, !951, i64 72}
!4947 = !DILocation(line: 57, column: 29, scope: !4932)
!4948 = !DILocation(line: 55, column: 7, scope: !4888)
!4949 = !DILocation(line: 123, column: 26, scope: !4931)
!4950 = !DILocation(line: 123, column: 19, scope: !4931)
!4951 = !DILocation(line: 0, scope: !4931)
!4952 = !DILocation(line: 124, column: 15, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4931, file: !922, line: 124, column: 11)
!4954 = !DILocation(line: 124, column: 11, scope: !4931)
!4955 = !DILocation(line: 135, column: 19, scope: !4931)
!4956 = !DILocation(line: 136, column: 12, scope: !4931)
!4957 = !DILocation(line: 136, column: 20, scope: !4931)
!4958 = !{!2348, !1880, i64 144}
!4959 = !DILocation(line: 167, column: 7, scope: !4931)
!4960 = !DILocation(line: 169, column: 10, scope: !4888)
!4961 = !DILocation(line: 169, column: 3, scope: !4888)
!4962 = !DILocation(line: 170, column: 1, scope: !4888)
!4963 = !DISubprogram(name: "fseeko", scope: !1017, file: !1017, line: 736, type: !4964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4964 = !DISubroutineType(types: !4965)
!4965 = !{!105, !4891, !252, !105}
!4966 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !833, file: !833, line: 100, type: !4967, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4970)
!4967 = !DISubroutineType(types: !4968)
!4968 = !{!134, !2518, !137, !134, !4969}
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!4970 = !{!4971, !4972, !4973, !4974, !4975}
!4971 = !DILocalVariable(name: "pwc", arg: 1, scope: !4966, file: !833, line: 100, type: !2518)
!4972 = !DILocalVariable(name: "s", arg: 2, scope: !4966, file: !833, line: 100, type: !137)
!4973 = !DILocalVariable(name: "n", arg: 3, scope: !4966, file: !833, line: 100, type: !134)
!4974 = !DILocalVariable(name: "ps", arg: 4, scope: !4966, file: !833, line: 100, type: !4969)
!4975 = !DILocalVariable(name: "ret", scope: !4966, file: !833, line: 130, type: !134)
!4976 = !DILocation(line: 0, scope: !4966)
!4977 = !DILocation(line: 105, column: 9, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4966, file: !833, line: 105, column: 7)
!4979 = !DILocation(line: 105, column: 7, scope: !4966)
!4980 = !DILocation(line: 117, column: 10, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4966, file: !833, line: 117, column: 7)
!4982 = !DILocation(line: 117, column: 7, scope: !4966)
!4983 = !DILocation(line: 130, column: 16, scope: !4966)
!4984 = !DILocation(line: 135, column: 11, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4966, file: !833, line: 135, column: 7)
!4986 = !DILocation(line: 135, column: 25, scope: !4985)
!4987 = !DILocation(line: 135, column: 30, scope: !4985)
!4988 = !DILocation(line: 135, column: 7, scope: !4966)
!4989 = !DILocalVariable(name: "ps", arg: 1, scope: !4990, file: !2491, line: 1135, type: !4969)
!4990 = distinct !DISubprogram(name: "mbszero", scope: !2491, file: !2491, line: 1135, type: !4991, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4993)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{null, !4969}
!4993 = !{!4989}
!4994 = !DILocation(line: 0, scope: !4990, inlinedAt: !4995)
!4995 = distinct !DILocation(line: 137, column: 5, scope: !4985)
!4996 = !DILocalVariable(name: "__dest", arg: 1, scope: !4997, file: !2500, line: 57, type: !126)
!4997 = distinct !DISubprogram(name: "memset", scope: !2500, file: !2500, line: 57, type: !2501, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4998)
!4998 = !{!4996, !4999, !5000}
!4999 = !DILocalVariable(name: "__ch", arg: 2, scope: !4997, file: !2500, line: 57, type: !105)
!5000 = !DILocalVariable(name: "__len", arg: 3, scope: !4997, file: !2500, line: 57, type: !134)
!5001 = !DILocation(line: 0, scope: !4997, inlinedAt: !5002)
!5002 = distinct !DILocation(line: 1137, column: 3, scope: !4990, inlinedAt: !4995)
!5003 = !DILocation(line: 59, column: 10, scope: !4997, inlinedAt: !5002)
!5004 = !DILocation(line: 137, column: 5, scope: !4985)
!5005 = !DILocation(line: 138, column: 11, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4966, file: !833, line: 138, column: 7)
!5007 = !DILocation(line: 138, column: 7, scope: !4966)
!5008 = !DILocation(line: 139, column: 5, scope: !5006)
!5009 = !DILocation(line: 143, column: 26, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !4966, file: !833, line: 143, column: 7)
!5011 = !DILocation(line: 143, column: 41, scope: !5010)
!5012 = !DILocation(line: 143, column: 7, scope: !4966)
!5013 = !DILocation(line: 145, column: 15, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !5015, file: !833, line: 145, column: 11)
!5015 = distinct !DILexicalBlock(scope: !5010, file: !833, line: 144, column: 5)
!5016 = !DILocation(line: 145, column: 11, scope: !5015)
!5017 = !DILocation(line: 146, column: 32, scope: !5014)
!5018 = !DILocation(line: 146, column: 16, scope: !5014)
!5019 = !DILocation(line: 146, column: 14, scope: !5014)
!5020 = !DILocation(line: 146, column: 9, scope: !5014)
!5021 = !DILocation(line: 286, column: 1, scope: !4966)
!5022 = !DISubprogram(name: "mbsinit", scope: !5023, file: !5023, line: 293, type: !5024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5023 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5024 = !DISubroutineType(types: !5025)
!5025 = !{!105, !5026}
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !839)
!5028 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !924, file: !924, line: 27, type: !4198, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !923, retainedNodes: !5029)
!5029 = !{!5030, !5031, !5032, !5033}
!5030 = !DILocalVariable(name: "ptr", arg: 1, scope: !5028, file: !924, line: 27, type: !126)
!5031 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5028, file: !924, line: 27, type: !134)
!5032 = !DILocalVariable(name: "size", arg: 3, scope: !5028, file: !924, line: 27, type: !134)
!5033 = !DILocalVariable(name: "nbytes", scope: !5028, file: !924, line: 29, type: !134)
!5034 = !DILocation(line: 0, scope: !5028)
!5035 = !DILocation(line: 30, column: 7, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5028, file: !924, line: 30, column: 7)
!5037 = !DILocation(line: 30, column: 7, scope: !5028)
!5038 = !DILocation(line: 32, column: 7, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5036, file: !924, line: 31, column: 5)
!5040 = !DILocation(line: 32, column: 13, scope: !5039)
!5041 = !DILocation(line: 33, column: 7, scope: !5039)
!5042 = !DILocalVariable(name: "ptr", arg: 1, scope: !5043, file: !4290, line: 2057, type: !126)
!5043 = distinct !DISubprogram(name: "rpl_realloc", scope: !4290, file: !4290, line: 2057, type: !4282, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !923, retainedNodes: !5044)
!5044 = !{!5042, !5045}
!5045 = !DILocalVariable(name: "size", arg: 2, scope: !5043, file: !4290, line: 2057, type: !134)
!5046 = !DILocation(line: 0, scope: !5043, inlinedAt: !5047)
!5047 = distinct !DILocation(line: 37, column: 10, scope: !5028)
!5048 = !DILocation(line: 2059, column: 24, scope: !5043, inlinedAt: !5047)
!5049 = !DILocation(line: 2059, column: 10, scope: !5043, inlinedAt: !5047)
!5050 = !DILocation(line: 37, column: 3, scope: !5028)
!5051 = !DILocation(line: 38, column: 1, scope: !5028)
!5052 = distinct !DISubprogram(name: "hard_locale", scope: !851, file: !851, line: 28, type: !2015, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !925, retainedNodes: !5053)
!5053 = !{!5054, !5055}
!5054 = !DILocalVariable(name: "category", arg: 1, scope: !5052, file: !851, line: 28, type: !105)
!5055 = !DILocalVariable(name: "locale", scope: !5052, file: !851, line: 30, type: !5056)
!5056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5057)
!5057 = !{!5058}
!5058 = !DISubrange(count: 257)
!5059 = distinct !DIAssignID()
!5060 = !DILocation(line: 0, scope: !5052)
!5061 = !DILocation(line: 30, column: 3, scope: !5052)
!5062 = !DILocation(line: 32, column: 7, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5052, file: !851, line: 32, column: 7)
!5064 = !DILocation(line: 32, column: 7, scope: !5052)
!5065 = !DILocalVariable(name: "__s1", arg: 1, scope: !5066, file: !1035, line: 1359, type: !137)
!5066 = distinct !DISubprogram(name: "streq", scope: !1035, file: !1035, line: 1359, type: !1036, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !925, retainedNodes: !5067)
!5067 = !{!5065, !5068}
!5068 = !DILocalVariable(name: "__s2", arg: 2, scope: !5066, file: !1035, line: 1359, type: !137)
!5069 = !DILocation(line: 0, scope: !5066, inlinedAt: !5070)
!5070 = distinct !DILocation(line: 35, column: 9, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5052, file: !851, line: 35, column: 7)
!5072 = !DILocation(line: 1361, column: 11, scope: !5066, inlinedAt: !5070)
!5073 = !DILocation(line: 35, column: 29, scope: !5071)
!5074 = !DILocation(line: 0, scope: !5066, inlinedAt: !5075)
!5075 = distinct !DILocation(line: 35, column: 32, scope: !5071)
!5076 = !DILocation(line: 1361, column: 11, scope: !5066, inlinedAt: !5075)
!5077 = !DILocation(line: 1361, column: 10, scope: !5066, inlinedAt: !5075)
!5078 = !DILocation(line: 35, column: 7, scope: !5052)
!5079 = !DILocation(line: 46, column: 3, scope: !5052)
!5080 = !DILocation(line: 47, column: 1, scope: !5052)
!5081 = distinct !DISubprogram(name: "setlocale_null_r", scope: !930, file: !930, line: 154, type: !5082, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !929, retainedNodes: !5084)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{!105, !105, !125, !134}
!5084 = !{!5085, !5086, !5087}
!5085 = !DILocalVariable(name: "category", arg: 1, scope: !5081, file: !930, line: 154, type: !105)
!5086 = !DILocalVariable(name: "buf", arg: 2, scope: !5081, file: !930, line: 154, type: !125)
!5087 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5081, file: !930, line: 154, type: !134)
!5088 = !DILocation(line: 0, scope: !5081)
!5089 = !DILocation(line: 159, column: 10, scope: !5081)
!5090 = !DILocation(line: 159, column: 3, scope: !5081)
!5091 = distinct !DISubprogram(name: "setlocale_null", scope: !930, file: !930, line: 186, type: !5092, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !929, retainedNodes: !5094)
!5092 = !DISubroutineType(types: !5093)
!5093 = !{!137, !105}
!5094 = !{!5095}
!5095 = !DILocalVariable(name: "category", arg: 1, scope: !5091, file: !930, line: 186, type: !105)
!5096 = !DILocation(line: 0, scope: !5091)
!5097 = !DILocation(line: 189, column: 10, scope: !5091)
!5098 = !DILocation(line: 189, column: 3, scope: !5091)
!5099 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !932, file: !932, line: 35, type: !5092, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !931, retainedNodes: !5100)
!5100 = !{!5101, !5102}
!5101 = !DILocalVariable(name: "category", arg: 1, scope: !5099, file: !932, line: 35, type: !105)
!5102 = !DILocalVariable(name: "result", scope: !5099, file: !932, line: 37, type: !137)
!5103 = !DILocation(line: 0, scope: !5099)
!5104 = !DILocation(line: 37, column: 24, scope: !5099)
!5105 = !DILocation(line: 62, column: 3, scope: !5099)
!5106 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !932, file: !932, line: 66, type: !5082, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !931, retainedNodes: !5107)
!5107 = !{!5108, !5109, !5110, !5111, !5112}
!5108 = !DILocalVariable(name: "category", arg: 1, scope: !5106, file: !932, line: 66, type: !105)
!5109 = !DILocalVariable(name: "buf", arg: 2, scope: !5106, file: !932, line: 66, type: !125)
!5110 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5106, file: !932, line: 66, type: !134)
!5111 = !DILocalVariable(name: "result", scope: !5106, file: !932, line: 111, type: !137)
!5112 = !DILocalVariable(name: "length", scope: !5113, file: !932, line: 125, type: !134)
!5113 = distinct !DILexicalBlock(scope: !5114, file: !932, line: 124, column: 5)
!5114 = distinct !DILexicalBlock(scope: !5106, file: !932, line: 113, column: 7)
!5115 = !DILocation(line: 0, scope: !5106)
!5116 = !DILocation(line: 0, scope: !5099, inlinedAt: !5117)
!5117 = distinct !DILocation(line: 111, column: 24, scope: !5106)
!5118 = !DILocation(line: 37, column: 24, scope: !5099, inlinedAt: !5117)
!5119 = !DILocation(line: 113, column: 14, scope: !5114)
!5120 = !DILocation(line: 113, column: 7, scope: !5106)
!5121 = !DILocation(line: 116, column: 19, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5123, file: !932, line: 116, column: 11)
!5123 = distinct !DILexicalBlock(scope: !5114, file: !932, line: 114, column: 5)
!5124 = !DILocation(line: 116, column: 11, scope: !5123)
!5125 = !DILocation(line: 120, column: 16, scope: !5122)
!5126 = !DILocation(line: 120, column: 9, scope: !5122)
!5127 = !DILocation(line: 125, column: 23, scope: !5113)
!5128 = !DILocation(line: 0, scope: !5113)
!5129 = !DILocation(line: 126, column: 18, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5113, file: !932, line: 126, column: 11)
!5131 = !DILocation(line: 126, column: 11, scope: !5113)
!5132 = !DILocation(line: 128, column: 39, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5130, file: !932, line: 127, column: 9)
!5134 = !DILocalVariable(name: "__dest", arg: 1, scope: !5135, file: !2500, line: 26, type: !4561)
!5135 = distinct !DISubprogram(name: "memcpy", scope: !2500, file: !2500, line: 26, type: !4559, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !931, retainedNodes: !5136)
!5136 = !{!5134, !5137, !5138}
!5137 = !DILocalVariable(name: "__src", arg: 2, scope: !5135, file: !2500, line: 26, type: !1167)
!5138 = !DILocalVariable(name: "__len", arg: 3, scope: !5135, file: !2500, line: 26, type: !134)
!5139 = !DILocation(line: 0, scope: !5135, inlinedAt: !5140)
!5140 = distinct !DILocation(line: 128, column: 11, scope: !5133)
!5141 = !DILocation(line: 29, column: 10, scope: !5135, inlinedAt: !5140)
!5142 = !DILocation(line: 129, column: 11, scope: !5133)
!5143 = !DILocation(line: 133, column: 23, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5145, file: !932, line: 133, column: 15)
!5145 = distinct !DILexicalBlock(scope: !5130, file: !932, line: 132, column: 9)
!5146 = !DILocation(line: 133, column: 15, scope: !5145)
!5147 = !DILocation(line: 138, column: 44, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5144, file: !932, line: 134, column: 13)
!5149 = !DILocation(line: 0, scope: !5135, inlinedAt: !5150)
!5150 = distinct !DILocation(line: 138, column: 15, scope: !5148)
!5151 = !DILocation(line: 29, column: 10, scope: !5135, inlinedAt: !5150)
!5152 = !DILocation(line: 139, column: 15, scope: !5148)
!5153 = !DILocation(line: 139, column: 32, scope: !5148)
!5154 = !DILocation(line: 140, column: 13, scope: !5148)
!5155 = !DILocation(line: 0, scope: !5114)
!5156 = !DILocation(line: 145, column: 1, scope: !5106)
