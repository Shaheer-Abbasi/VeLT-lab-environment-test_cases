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
@.str.32 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1, !dbg !458
@.str.1.33 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1, !dbg !461
@.str.36 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !466
@Version = dso_local local_unnamed_addr global ptr @.str.36, align 8, !dbg !469
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !473
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !486
@.str.41 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !478
@.str.1.42 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !480
@.str.2.43 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !482
@.str.3.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !484
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !488
@stderr = external local_unnamed_addr global ptr, align 8
@.str.55 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !494
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !531
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !496
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !521
@.str.1.61 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !523
@.str.2.63 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !525
@.str.3.62 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !527
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !529
@.str.4.56 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !533
@.str.5.57 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !535
@.str.6.58 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !537
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !542
@.str.77 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !548
@.str.1.78 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !550
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !552
@.str.81 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !583
@.str.1.82 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !586
@.str.2.83 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !588
@.str.3.84 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !593
@.str.4.85 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !595
@.str.5.86 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !597
@.str.6.87 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !599
@.str.7.88 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !601
@.str.8.89 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !603
@.str.9.90 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !605
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.81, ptr @.str.1.82, ptr @.str.2.83, ptr @.str.3.84, ptr @.str.4.85, ptr @.str.5.86, ptr @.str.6.87, ptr @.str.7.88, ptr @.str.8.89, ptr @.str.9.90, ptr null], align 8, !dbg !607
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !632
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !646
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !684
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !691
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !648
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !693
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !636
@.str.10.93 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !653
@.str.11.91 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !655
@.str.12.94 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !657
@.str.13.92 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !659
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !661
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 4, !dbg !697
@.str.101 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1, !dbg !703
@.str.1.102 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1, !dbg !705
@.str.2.105 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1, !dbg !707
@.str.106 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !717
@.str.1.107 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !720
@.str.2.108 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !722
@.str.3.109 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !724
@.str.4.110 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !726
@.str.5.111 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !728
@.str.6.112 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !733
@.str.7.113 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !735
@.str.8.114 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !737
@.str.9.115 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !739
@.str.10.116 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !744
@.str.11.117 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !746
@.str.12.118 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !751
@.str.13.119 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !753
@.str.14.120 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !758
@.str.15.121 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !763
@.str.16.122 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !768
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.127 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !773
@.str.18.128 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !775
@.str.19.129 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !777
@.str.20.130 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !779
@.str.21.131 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !781
@.str.22.132 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !783
@.str.23.133 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !785
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !790
@exit_failure = dso_local global i32 1, align 4, !dbg !798
@.str.148 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !804
@.str.1.146 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !807
@.str.2.147 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !809
@c_locale_cache = internal global ptr null, align 8, !dbg !811
@.str.151 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !836
@.str.162 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !839
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !842
@.str.167 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !857
@.str.1.168 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !860

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !947 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !949, metadata !DIExpression()), !dbg !950
  %2 = icmp eq i32 %0, 0, !dbg !951
  br i1 %2, label %8, label %3, !dbg !953

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !954, !tbaa !956
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !954
  %6 = load ptr, ptr @program_name, align 8, !dbg !954, !tbaa !956
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !954
  br label %48, !dbg !954

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !960
  %10 = load ptr, ptr @program_name, align 8, !dbg !960, !tbaa !956
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #40, !dbg !960
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !962
  %13 = load ptr, ptr @stdout, align 8, !dbg !962, !tbaa !956
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !962
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #40, !dbg !963
  %16 = load ptr, ptr @stdout, align 8, !dbg !963, !tbaa !956
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !963
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !967
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !967
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !968
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !968
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !969
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !969
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !970
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !970
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !971
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !971
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #40, !dbg !972
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !972
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #40, !dbg !973
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !973
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #40, !dbg !974
  %26 = load ptr, ptr @stdout, align 8, !dbg !974, !tbaa !956
  %27 = tail call i32 @fputs_unlocked(ptr noundef %25, ptr noundef %26), !dbg !974
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #40, !dbg !975
  %29 = load ptr, ptr @stdout, align 8, !dbg !975, !tbaa !956
  %30 = tail call i32 @fputs_unlocked(ptr noundef %28, ptr noundef %29), !dbg !975
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #40, !dbg !976
  %32 = load ptr, ptr @stdout, align 8, !dbg !976, !tbaa !956
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !976
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !977, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !989, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata ptr poison, metadata !989, metadata !DIExpression()), !dbg !994
  tail call void @emit_bug_reporting_address() #40, !dbg !996
  %34 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !997
  call void @llvm.dbg.value(metadata ptr %34, metadata !992, metadata !DIExpression()), !dbg !994
  %35 = icmp eq ptr %34, null, !dbg !998
  br i1 %35, label %43, label %36, !dbg !1000

36:                                               ; preds = %8
  %37 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(4) @.str.58, i64 noundef 3) #41, !dbg !1001
  %38 = icmp eq i32 %37, 0, !dbg !1001
  br i1 %38, label %43, label %39, !dbg !1002

39:                                               ; preds = %36
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #40, !dbg !1003
  %41 = load ptr, ptr @stdout, align 8, !dbg !1003, !tbaa !956
  %42 = tail call i32 @fputs_unlocked(ptr noundef %40, ptr noundef %41), !dbg !1003
  br label %43, !dbg !1005

43:                                               ; preds = %8, %36, %39
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !989, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !993, metadata !DIExpression()), !dbg !994
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #40, !dbg !1006
  %45 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %44, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.3) #40, !dbg !1006
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #40, !dbg !1007
  %47 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %46, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.62) #40, !dbg !1007
  br label %48

48:                                               ; preds = %43, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !1008
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
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !208, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata ptr %0, metadata !209, metadata !DIExpression()), !dbg !1025
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1026, !tbaa !1027
  %3 = icmp eq i32 %2, -1, !dbg !1029
  br i1 %3, label %4, label %16, !dbg !1030

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.28) #40, !dbg !1031
  call void @llvm.dbg.value(metadata ptr %5, metadata !210, metadata !DIExpression()), !dbg !1032
  %6 = icmp eq ptr %5, null, !dbg !1033
  br i1 %6, label %14, label %7, !dbg !1034

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1035, !tbaa !1036
  %9 = icmp eq i8 %8, 0, !dbg !1035
  br i1 %9, label %14, label %10, !dbg !1037

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1038, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata ptr @.str.29, metadata !1044, metadata !DIExpression()), !dbg !1045
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.29) #41, !dbg !1047
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
  br label %122, !dbg !1056

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !213, metadata !DIExpression()), !dbg !1025
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.30) #41, !dbg !1057
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1058
  call void @llvm.dbg.value(metadata ptr %24, metadata !214, metadata !DIExpression()), !dbg !1025
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !1059
  call void @llvm.dbg.value(metadata ptr %25, metadata !215, metadata !DIExpression()), !dbg !1025
  %26 = icmp eq ptr %25, null, !dbg !1060
  br i1 %26, label %54, label %27, !dbg !1061

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1062
  br i1 %28, label %54, label %29, !dbg !1063

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !216, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i64 0, metadata !220, metadata !DIExpression()), !dbg !1064
  %30 = icmp ult ptr %24, %25, !dbg !1065
  br i1 %30, label %31, label %52, !dbg !1066

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !1025
  %33 = load ptr, ptr %32, align 8, !tbaa !956
  br label %34, !dbg !1066

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !216, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i64 %36, metadata !220, metadata !DIExpression()), !dbg !1064
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1067
  call void @llvm.dbg.value(metadata ptr %37, metadata !216, metadata !DIExpression()), !dbg !1064
  %38 = load i8, ptr %35, align 1, !dbg !1067, !tbaa !1036
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1067
  %41 = load i16, ptr %40, align 2, !dbg !1067, !tbaa !1068
  %42 = freeze i16 %41, !dbg !1070
  %43 = lshr i16 %42, 13, !dbg !1070
  %44 = and i16 %43, 1, !dbg !1070
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1071
  call void @llvm.dbg.value(metadata i64 %46, metadata !220, metadata !DIExpression()), !dbg !1064
  %47 = icmp ult ptr %37, %25, !dbg !1065
  %48 = icmp ult i64 %46, 2, !dbg !1072
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1072
  br i1 %49, label %34, label %50, !dbg !1066, !llvm.loop !1073

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1075
  br i1 %51, label %52, label %54, !dbg !1077

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1077

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !1025
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !213, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata ptr %55, metadata !215, metadata !DIExpression()), !dbg !1025
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.31) #41, !dbg !1078
  call void @llvm.dbg.value(metadata i64 %57, metadata !221, metadata !DIExpression()), !dbg !1025
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1079
  call void @llvm.dbg.value(metadata ptr %58, metadata !222, metadata !DIExpression()), !dbg !1025
  br label %59, !dbg !1080

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !1025
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !213, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata ptr %60, metadata !222, metadata !DIExpression()), !dbg !1025
  %62 = load i8, ptr %60, align 1, !dbg !1081, !tbaa !1036
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !1082

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1083
  %65 = load i8, ptr %64, align 1, !dbg !1086, !tbaa !1036
  %66 = icmp ne i8 %65, 45, !dbg !1087
  %67 = select i1 %66, i1 %61, i1 false, !dbg !1088
  br label %68, !dbg !1088

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !213, metadata !DIExpression()), !dbg !1025
  %70 = tail call ptr @__ctype_b_loc() #43, !dbg !1089
  %71 = load ptr, ptr %70, align 8, !dbg !1089, !tbaa !956
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1089
  %74 = load i16, ptr %73, align 2, !dbg !1089, !tbaa !1068
  %75 = and i16 %74, 8192, !dbg !1089
  %76 = icmp eq i16 %75, 0, !dbg !1089
  br i1 %76, label %90, label %77, !dbg !1091

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1092
  br i1 %78, label %92, label %79, !dbg !1095

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1096
  %81 = load i8, ptr %80, align 1, !dbg !1096, !tbaa !1036
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1096
  %84 = load i16, ptr %83, align 2, !dbg !1096, !tbaa !1068
  %85 = and i16 %84, 8192, !dbg !1096
  %86 = icmp eq i16 %85, 0, !dbg !1096
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !1097
  br i1 %89, label %90, label %92, !dbg !1097

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1098
  call void @llvm.dbg.value(metadata ptr %91, metadata !222, metadata !DIExpression()), !dbg !1025
  br label %59, !dbg !1080, !llvm.loop !1099

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1101
  %94 = load ptr, ptr @stdout, align 8, !dbg !1101, !tbaa !956
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1101
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1038, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1038, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1038, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1038, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1038, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1038, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1038, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1038, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1038, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !277, metadata !DIExpression()), !dbg !1025
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.45, i64 noundef 6) #41, !dbg !1122
  %97 = icmp eq i32 %96, 0, !dbg !1122
  br i1 %97, label %101, label %98, !dbg !1124

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.46, i64 noundef 9) #41, !dbg !1125
  %100 = icmp eq i32 %99, 0, !dbg !1125
  br i1 %100, label %101, label %104, !dbg !1126

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1127
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #40, !dbg !1127
  br label %107, !dbg !1129

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1130
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #40, !dbg !1130
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1132, !tbaa !956
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.51, ptr noundef %108), !dbg !1132
  %110 = load ptr, ptr @stdout, align 8, !dbg !1133, !tbaa !956
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.52, ptr noundef %110), !dbg !1133
  %112 = ptrtoint ptr %60 to i64, !dbg !1134
  %113 = sub i64 %112, %93, !dbg !1134
  %114 = load ptr, ptr @stdout, align 8, !dbg !1134, !tbaa !956
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1134
  %116 = load ptr, ptr @stdout, align 8, !dbg !1135, !tbaa !956
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.53, ptr noundef %116), !dbg !1135
  %118 = load ptr, ptr @stdout, align 8, !dbg !1136, !tbaa !956
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.54, ptr noundef %118), !dbg !1136
  %120 = load ptr, ptr @stdout, align 8, !dbg !1137, !tbaa !956
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1137
  br label %122, !dbg !1138

122:                                              ; preds = %107, %19
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
  %3 = alloca %struct.sigaction, align 8
  %4 = alloca %struct.sigaction, align 8
  %5 = alloca %struct.__sigset_t, align 8
  %6 = alloca %struct.sigaction, align 8
  %7 = alloca %struct.sigaction, align 8
  %8 = alloca %struct.sigaction, align 8
  %9 = alloca %struct.sigaction, align 8
  %10 = alloca %struct.__sigset_t, align 8
  %11 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1177, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata ptr %1, metadata !1178, metadata !DIExpression()), !dbg !1204
  %12 = load ptr, ptr %1, align 8, !dbg !1205, !tbaa !956
  tail call void @set_program_name(ptr noundef %12) #40, !dbg !1206
  %13 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.14) #40, !dbg !1207
  %14 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #40, !dbg !1208
  %15 = tail call ptr @textdomain(ptr noundef nonnull @.str.15) #40, !dbg !1209
  call void @llvm.dbg.value(metadata i32 125, metadata !1210, metadata !DIExpression()), !dbg !1213
  store volatile i32 125, ptr @exit_failure, align 4, !dbg !1215, !tbaa !1027
  %16 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1217
  br label %17, !dbg !1218

17:                                               ; preds = %28, %2
  %18 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @long_options, ptr noundef null) #40, !dbg !1219
  call void @llvm.dbg.value(metadata i32 %18, metadata !1180, metadata !DIExpression()), !dbg !1204
  switch i32 %18, label %36 [
    i32 -1, label %37
    i32 102, label %19
    i32 107, label %20
    i32 112, label %23
    i32 115, label %24
    i32 118, label %30
    i32 -2, label %31
    i32 -3, label %32
  ], !dbg !1218

19:                                               ; preds = %17
  store i1 true, ptr @foreground, align 1, !dbg !1220
  br label %28, !dbg !1223

20:                                               ; preds = %17
  %21 = load ptr, ptr @optarg, align 8, !dbg !1224, !tbaa !956
  %22 = tail call fastcc double @parse_duration(ptr noundef %21), !dbg !1225
  store double %22, ptr @kill_after, align 8, !dbg !1226, !tbaa !1227
  br label %28, !dbg !1229

23:                                               ; preds = %17
  store i1 true, ptr @preserve_status, align 1, !dbg !1230
  br label %28, !dbg !1231

24:                                               ; preds = %17
  %25 = load ptr, ptr @optarg, align 8, !dbg !1232, !tbaa !956
  %26 = tail call i32 @operand2sig(ptr noundef %25) #40, !dbg !1233
  store i32 %26, ptr @term_signal, align 4, !dbg !1234, !tbaa !1027
  %27 = icmp eq i32 %26, -1, !dbg !1235
  br i1 %27, label %29, label %28, !dbg !1237

28:                                               ; preds = %24, %30, %23, %20, %19
  br label %17, !dbg !1219, !llvm.loop !1238

29:                                               ; preds = %24
  tail call void @usage(i32 noundef 125) #44, !dbg !1240
  unreachable, !dbg !1240

30:                                               ; preds = %17
  store i1 true, ptr @verbose, align 1, !dbg !1241
  br label %28, !dbg !1242

31:                                               ; preds = %17
  tail call void @usage(i32 noundef 0) #44, !dbg !1243
  unreachable, !dbg !1243

32:                                               ; preds = %17
  %33 = load ptr, ptr @stdout, align 8, !dbg !1244, !tbaa !956
  %34 = load ptr, ptr @Version, align 8, !dbg !1244, !tbaa !956
  %35 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #40, !dbg !1244
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18, ptr noundef %34, ptr noundef %35, ptr noundef null) #40, !dbg !1244
  tail call void @exit(i32 noundef 0) #42, !dbg !1244
  unreachable, !dbg !1244

36:                                               ; preds = %17
  tail call void @usage(i32 noundef 125) #44, !dbg !1245
  unreachable, !dbg !1245

37:                                               ; preds = %17
  %38 = load i32, ptr @optind, align 4, !dbg !1246, !tbaa !1027
  %39 = sub nsw i32 %0, %38, !dbg !1248
  %40 = icmp slt i32 %39, 2, !dbg !1249
  br i1 %40, label %41, label %42, !dbg !1250

41:                                               ; preds = %37
  tail call void @usage(i32 noundef 125) #44, !dbg !1251
  unreachable, !dbg !1251

42:                                               ; preds = %37
  %43 = add nsw i32 %38, 1, !dbg !1252
  store i32 %43, ptr @optind, align 4, !dbg !1252, !tbaa !1027
  %44 = sext i32 %38 to i64, !dbg !1253
  %45 = getelementptr inbounds ptr, ptr %1, i64 %44, !dbg !1253
  %46 = load ptr, ptr %45, align 8, !dbg !1253, !tbaa !956
  %47 = tail call fastcc double @parse_duration(ptr noundef %46), !dbg !1254
  call void @llvm.dbg.value(metadata double %47, metadata !1179, metadata !DIExpression()), !dbg !1204
  %48 = load i32, ptr @optind, align 4, !dbg !1255, !tbaa !1027
  %49 = sext i32 %48 to i64, !dbg !1256
  %50 = getelementptr inbounds ptr, ptr %1, i64 %49, !dbg !1256
  call void @llvm.dbg.value(metadata ptr %50, metadata !1178, metadata !DIExpression()), !dbg !1204
  %51 = load ptr, ptr %50, align 8, !dbg !1257, !tbaa !956
  store ptr %51, ptr @command, align 8, !dbg !1258, !tbaa !956
  %52 = load i1, ptr @foreground, align 1, !dbg !1259
  br i1 %52, label %55, label %53, !dbg !1261

53:                                               ; preds = %42
  %54 = tail call i32 @setpgid(i32 noundef 0, i32 noundef 0) #40, !dbg !1262
  br label %55, !dbg !1262

55:                                               ; preds = %53, %42
  %56 = load i32, ptr @term_signal, align 4, !dbg !1263, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %56, metadata !1264, metadata !DIExpression()), !dbg !1359
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %9) #40, !dbg !1361
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1267, metadata !DIExpression()), !dbg !1362
  %57 = getelementptr inbounds %struct.sigaction, ptr %9, i64 0, i32 1, !dbg !1363
  %58 = call i32 @sigemptyset(ptr noundef nonnull %57) #40, !dbg !1364
  store ptr @cleanup, ptr %9, align 8, !dbg !1365, !tbaa !1036
  %59 = getelementptr inbounds %struct.sigaction, ptr %9, i64 0, i32 2, !dbg !1366
  store i32 268435456, ptr %59, align 8, !dbg !1367, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 0, metadata !1355, metadata !DIExpression()), !dbg !1371
  br label %64, !dbg !1372

60:                                               ; preds = %77
  %61 = call i32 @__libc_current_sigrtmin() #40, !dbg !1373
  call void @llvm.dbg.value(metadata i32 %61, metadata !1357, metadata !DIExpression()), !dbg !1374
  %62 = call i32 @__libc_current_sigrtmax() #40, !dbg !1375
  %63 = icmp sgt i32 %61, %62, !dbg !1377
  br i1 %63, label %95, label %80, !dbg !1378

64:                                               ; preds = %77, %55
  %65 = phi i64 [ 0, %55 ], [ %78, %77 ]
  call void @llvm.dbg.value(metadata i64 %65, metadata !1355, metadata !DIExpression()), !dbg !1371
  %66 = getelementptr inbounds [22 x i32], ptr @term_sig, i64 0, i64 %65, !dbg !1379
  %67 = load i32, ptr %66, align 4, !dbg !1379, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %67, metadata !1382, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i32 %56, metadata !1387, metadata !DIExpression()), !dbg !1390
  %68 = icmp eq i64 %65, 0, !dbg !1392
  %69 = icmp eq i32 %67, %56
  %70 = or i1 %68, %69, !dbg !1394
  br i1 %70, label %75, label %71, !dbg !1394

71:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %8) #40, !dbg !1395
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1388, metadata !DIExpression()), !dbg !1396
  %72 = call i32 @sigaction(i32 noundef %67, ptr noundef null, ptr noundef nonnull %8) #40, !dbg !1397
  %73 = load ptr, ptr %8, align 8, !dbg !1398, !tbaa !1036
  %74 = icmp eq ptr %73, inttoptr (i64 1 to ptr), !dbg !1399
  call void @llvm.dbg.value(metadata i1 %74, metadata !1389, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1390
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %8) #40, !dbg !1400
  br i1 %74, label %77, label %75, !dbg !1401

75:                                               ; preds = %71, %64
  %76 = call i32 @sigaction(i32 noundef %67, ptr noundef nonnull %9, ptr noundef null) #40, !dbg !1402
  br label %77, !dbg !1402

77:                                               ; preds = %75, %71
  %78 = add nuw nsw i64 %65, 1, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %78, metadata !1355, metadata !DIExpression()), !dbg !1371
  %79 = icmp eq i64 %78, 22, !dbg !1404
  br i1 %79, label %60, label %64, !dbg !1372, !llvm.loop !1405

80:                                               ; preds = %60, %91
  %81 = phi i32 [ %92, %91 ], [ %61, %60 ]
  call void @llvm.dbg.value(metadata i32 %81, metadata !1357, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i32 %81, metadata !1382, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i32 %56, metadata !1387, metadata !DIExpression()), !dbg !1407
  %82 = icmp eq i32 %81, 14, !dbg !1410
  %83 = icmp eq i32 %81, %56
  %84 = or i1 %82, %83, !dbg !1411
  br i1 %84, label %89, label %85, !dbg !1411

85:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %7) #40, !dbg !1412
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1388, metadata !DIExpression()), !dbg !1413
  %86 = call i32 @sigaction(i32 noundef %81, ptr noundef null, ptr noundef nonnull %7) #40, !dbg !1414
  %87 = load ptr, ptr %7, align 8, !dbg !1415, !tbaa !1036
  %88 = icmp eq ptr %87, inttoptr (i64 1 to ptr), !dbg !1416
  call void @llvm.dbg.value(metadata i1 %88, metadata !1389, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1407
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %7) #40, !dbg !1417
  br i1 %88, label %91, label %89, !dbg !1418

89:                                               ; preds = %85, %80
  %90 = call i32 @sigaction(i32 noundef %81, ptr noundef nonnull %9, ptr noundef null) #40, !dbg !1419
  br label %91, !dbg !1419

91:                                               ; preds = %89, %85
  %92 = add nsw i32 %81, 1, !dbg !1420
  call void @llvm.dbg.value(metadata i32 %92, metadata !1357, metadata !DIExpression()), !dbg !1374
  %93 = call i32 @__libc_current_sigrtmax() #40, !dbg !1375
  %94 = icmp slt i32 %81, %93, !dbg !1377
  br i1 %94, label %80, label %95, !dbg !1378, !llvm.loop !1421

95:                                               ; preds = %91, %60
  %96 = call i32 @sigaction(i32 noundef %56, ptr noundef nonnull %9, ptr noundef null) #40, !dbg !1423
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %9) #40, !dbg !1424
  %97 = call ptr @signal(i32 noundef 21, ptr noundef nonnull inttoptr (i64 1 to ptr)) #40, !dbg !1425
  %98 = call ptr @signal(i32 noundef 22, ptr noundef nonnull inttoptr (i64 1 to ptr)) #40, !dbg !1426
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %6) #40, !dbg !1427
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1430, metadata !DIExpression()), !dbg !1432
  %99 = getelementptr inbounds %struct.sigaction, ptr %6, i64 0, i32 1, !dbg !1433
  %100 = call i32 @sigemptyset(ptr noundef nonnull %99) #40, !dbg !1434
  store ptr @chld, ptr %6, align 8, !dbg !1435, !tbaa !1036
  %101 = getelementptr inbounds %struct.sigaction, ptr %6, i64 0, i32 2, !dbg !1436
  store i32 268435456, ptr %101, align 8, !dbg !1437, !tbaa !1368
  %102 = call i32 @sigaction(i32 noundef 17, ptr noundef nonnull %6, ptr noundef null) #40, !dbg !1438
  call fastcc void @unblock_signal(i32 noundef 17), !dbg !1439
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %6) #40, !dbg !1440
  call fastcc void @unblock_signal(i32 noundef 14), !dbg !1441
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #40, !dbg !1442
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1181, metadata !DIExpression()), !dbg !1443
  %103 = load i32, ptr @term_signal, align 4, !dbg !1444, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %103, metadata !1445, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata ptr %10, metadata !1451, metadata !DIExpression()), !dbg !1457
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #40, !dbg !1459
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1452, metadata !DIExpression()), !dbg !1460
  %104 = call i32 @sigemptyset(ptr noundef nonnull %5) #40, !dbg !1461
  call void @llvm.dbg.value(metadata i32 0, metadata !1453, metadata !DIExpression()), !dbg !1462
  br label %109, !dbg !1463

105:                                              ; preds = %122
  %106 = call i32 @__libc_current_sigrtmin() #40, !dbg !1464
  call void @llvm.dbg.value(metadata i32 %106, metadata !1455, metadata !DIExpression()), !dbg !1465
  %107 = call i32 @__libc_current_sigrtmax() #40, !dbg !1466
  %108 = icmp sgt i32 %106, %107, !dbg !1468
  br i1 %108, label %125, label %130, !dbg !1469

109:                                              ; preds = %122, %95
  %110 = phi i64 [ 0, %95 ], [ %123, %122 ]
  call void @llvm.dbg.value(metadata i64 %110, metadata !1453, metadata !DIExpression()), !dbg !1462
  %111 = getelementptr inbounds [22 x i32], ptr @term_sig, i64 0, i64 %110, !dbg !1470
  %112 = load i32, ptr %111, align 4, !dbg !1470, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %112, metadata !1382, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i32 %103, metadata !1387, metadata !DIExpression()), !dbg !1473
  %113 = icmp eq i64 %110, 0, !dbg !1475
  %114 = icmp eq i32 %112, %103
  %115 = or i1 %113, %114, !dbg !1476
  br i1 %115, label %120, label %116, !dbg !1476

116:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %4) #40, !dbg !1477
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1388, metadata !DIExpression()), !dbg !1478
  %117 = call i32 @sigaction(i32 noundef %112, ptr noundef null, ptr noundef nonnull %4) #40, !dbg !1479
  %118 = load ptr, ptr %4, align 8, !dbg !1480, !tbaa !1036
  %119 = icmp eq ptr %118, inttoptr (i64 1 to ptr), !dbg !1481
  call void @llvm.dbg.value(metadata i1 %119, metadata !1389, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1473
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %4) #40, !dbg !1482
  br i1 %119, label %122, label %120, !dbg !1483

120:                                              ; preds = %116, %109
  %121 = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef %112) #40, !dbg !1484
  br label %122, !dbg !1484

122:                                              ; preds = %120, %116
  %123 = add nuw nsw i64 %110, 1, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %123, metadata !1453, metadata !DIExpression()), !dbg !1462
  %124 = icmp eq i64 %123, 22, !dbg !1486
  br i1 %124, label %105, label %109, !dbg !1463, !llvm.loop !1487

125:                                              ; preds = %141, %105
  %126 = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef %103) #40, !dbg !1489
  %127 = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef 17) #40, !dbg !1490
  %128 = call i32 @sigprocmask(i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %10) #40, !dbg !1491
  %129 = icmp eq i32 %128, 0, !dbg !1493
  br i1 %129, label %149, label %145, !dbg !1494

130:                                              ; preds = %105, %141
  %131 = phi i32 [ %142, %141 ], [ %106, %105 ]
  call void @llvm.dbg.value(metadata i32 %131, metadata !1455, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i32 %131, metadata !1382, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.value(metadata i32 %103, metadata !1387, metadata !DIExpression()), !dbg !1495
  %132 = icmp eq i32 %131, 14, !dbg !1498
  %133 = icmp eq i32 %131, %103
  %134 = or i1 %132, %133, !dbg !1499
  br i1 %134, label %139, label %135, !dbg !1499

135:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %3) #40, !dbg !1500
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1388, metadata !DIExpression()), !dbg !1501
  %136 = call i32 @sigaction(i32 noundef %131, ptr noundef null, ptr noundef nonnull %3) #40, !dbg !1502
  %137 = load ptr, ptr %3, align 8, !dbg !1503, !tbaa !1036
  %138 = icmp eq ptr %137, inttoptr (i64 1 to ptr), !dbg !1504
  call void @llvm.dbg.value(metadata i1 %138, metadata !1389, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1495
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %3) #40, !dbg !1505
  br i1 %138, label %141, label %139, !dbg !1506

139:                                              ; preds = %135, %130
  %140 = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef %131) #40, !dbg !1507
  br label %141, !dbg !1507

141:                                              ; preds = %139, %135
  %142 = add nsw i32 %131, 1, !dbg !1508
  call void @llvm.dbg.value(metadata i32 %142, metadata !1455, metadata !DIExpression()), !dbg !1465
  %143 = call i32 @__libc_current_sigrtmax() #40, !dbg !1466
  %144 = icmp slt i32 %131, %143, !dbg !1468
  br i1 %144, label %130, label %125, !dbg !1469, !llvm.loop !1509

145:                                              ; preds = %125
  %146 = tail call ptr @__errno_location() #43, !dbg !1511
  %147 = load i32, ptr %146, align 4, !dbg !1511, !tbaa !1027
  %148 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.73, i32 noundef 5) #40, !dbg !1511
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %147, ptr noundef %148) #40, !dbg !1511
  br label %149, !dbg !1511

149:                                              ; preds = %125, %145
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #40, !dbg !1512
  %150 = call i32 @getpid() #40, !dbg !1513
  call void @llvm.dbg.value(metadata i32 %150, metadata !1190, metadata !DIExpression()), !dbg !1204
  %151 = call i32 @fork() #40, !dbg !1514
  store i32 %151, ptr @monitored_pid, align 4, !dbg !1515, !tbaa !1027
  switch i32 %151, label %180 [
    i32 -1, label %152
    i32 0, label %156
  ], !dbg !1516

152:                                              ; preds = %149
  %153 = tail call ptr @__errno_location() #43, !dbg !1517
  %154 = load i32, ptr %153, align 4, !dbg !1517, !tbaa !1027
  %155 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #40, !dbg !1517
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %154, ptr noundef %155) #40, !dbg !1517
  br label %240, !dbg !1519

156:                                              ; preds = %149
  %157 = load i32, ptr @term_signal, align 4, !dbg !1520, !tbaa !1027
  %158 = call i32 (i32, ...) @prctl(i32 noundef 1, i32 noundef %157) #40, !dbg !1521
  %159 = call i32 @getppid() #40, !dbg !1522
  %160 = icmp eq i32 %159, %150, !dbg !1524
  br i1 %160, label %161, label %240, !dbg !1525

161:                                              ; preds = %156
  %162 = call i32 @sigprocmask(i32 noundef 2, ptr noundef nonnull %10, ptr noundef null) #40, !dbg !1526
  %163 = icmp eq i32 %162, 0, !dbg !1528
  br i1 %163, label %168, label %164, !dbg !1529

164:                                              ; preds = %161
  %165 = tail call ptr @__errno_location() #43, !dbg !1530
  %166 = load i32, ptr %165, align 4, !dbg !1530, !tbaa !1027
  %167 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #40, !dbg !1530
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %166, ptr noundef %167) #40, !dbg !1530
  br label %240, !dbg !1532

168:                                              ; preds = %161
  %169 = call ptr @signal(i32 noundef 21, ptr noundef null) #40, !dbg !1533
  %170 = call ptr @signal(i32 noundef 22, ptr noundef null) #40, !dbg !1534
  %171 = load ptr, ptr %50, align 8, !dbg !1535, !tbaa !956
  %172 = call i32 @execvp(ptr noundef %171, ptr noundef nonnull %50) #40, !dbg !1536
  %173 = tail call ptr @__errno_location() #43, !dbg !1537
  %174 = load i32, ptr %173, align 4, !dbg !1537, !tbaa !1027
  %175 = icmp eq i32 %174, 2, !dbg !1538
  %176 = select i1 %175, i32 127, i32 126, !dbg !1537
  call void @llvm.dbg.value(metadata i32 %176, metadata !1191, metadata !DIExpression()), !dbg !1539
  %177 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #40, !dbg !1540
  %178 = load ptr, ptr @command, align 8, !dbg !1540, !tbaa !956
  %179 = call ptr @quote(ptr noundef %178) #40, !dbg !1540
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %174, ptr noundef %177, ptr noundef %179) #40, !dbg !1540
  br label %240

180:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #40, !dbg !1541
  call fastcc void @settimeout(double noundef %47, i1 noundef true), !dbg !1542
  %181 = load i32, ptr @monitored_pid, align 4, !dbg !1543, !tbaa !1027
  call void @llvm.dbg.value(metadata ptr %11, metadata !1197, metadata !DIExpression(DW_OP_deref)), !dbg !1544
  %182 = call i32 @waitpid(i32 noundef %181, ptr noundef nonnull %11, i32 noundef 1) #40, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %182, metadata !1195, metadata !DIExpression()), !dbg !1544
  %183 = icmp eq i32 %182, 0, !dbg !1546
  br i1 %183, label %184, label %189, !dbg !1547

184:                                              ; preds = %180, %184
  %185 = call i32 @sigsuspend(ptr noundef nonnull %10) #40, !dbg !1548
  %186 = load i32, ptr @monitored_pid, align 4, !dbg !1543, !tbaa !1027
  call void @llvm.dbg.value(metadata ptr %11, metadata !1197, metadata !DIExpression(DW_OP_deref)), !dbg !1544
  %187 = call i32 @waitpid(i32 noundef %186, ptr noundef nonnull %11, i32 noundef 1) #40, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %187, metadata !1195, metadata !DIExpression()), !dbg !1544
  %188 = icmp eq i32 %187, 0, !dbg !1546
  br i1 %188, label %184, label %189, !dbg !1547, !llvm.loop !1549

189:                                              ; preds = %184, %180
  %190 = phi i32 [ %182, %180 ], [ %187, %184 ], !dbg !1545
  %191 = icmp slt i32 %190, 0, !dbg !1551
  br i1 %191, label %192, label %196, !dbg !1552

192:                                              ; preds = %189
  %193 = tail call ptr @__errno_location() #43, !dbg !1553
  %194 = load i32, ptr %193, align 4, !dbg !1553, !tbaa !1027
  %195 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #40, !dbg !1553
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %194, ptr noundef %195) #40, !dbg !1553
  call void @llvm.dbg.value(metadata i32 125, metadata !1197, metadata !DIExpression()), !dbg !1544
  br label %234, !dbg !1555

196:                                              ; preds = %189
  %197 = load i32, ptr %11, align 4, !dbg !1556, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %197, metadata !1197, metadata !DIExpression()), !dbg !1544
  %198 = and i32 %197, 127, !dbg !1556
  %199 = icmp eq i32 %198, 0, !dbg !1556
  br i1 %199, label %200, label %203, !dbg !1557

200:                                              ; preds = %196
  %201 = lshr i32 %197, 8
  %202 = and i32 %201, 255
  call void @llvm.dbg.value(metadata i32 %202, metadata !1197, metadata !DIExpression()), !dbg !1544
  br label %234, !dbg !1558

203:                                              ; preds = %196
  %204 = shl nuw nsw i32 %198, 24, !dbg !1559
  %205 = add nuw i32 %204, 16777216, !dbg !1559
  %206 = icmp sgt i32 %205, 33554431, !dbg !1559
  br i1 %206, label %207, label %231, !dbg !1560

207:                                              ; preds = %203
  call void @llvm.dbg.value(metadata i32 %198, metadata !1198, metadata !DIExpression()), !dbg !1561
  %208 = and i32 %197, 128, !dbg !1562
  %209 = icmp eq i32 %208, 0, !dbg !1562
  br i1 %209, label %212, label %210, !dbg !1564

210:                                              ; preds = %207
  %211 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #40, !dbg !1565
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %211) #40, !dbg !1565
  br label %212, !dbg !1565

212:                                              ; preds = %210, %207
  %213 = load i1, ptr @timed_out, align 4, !dbg !1566
  br i1 %213, label %224, label %214, !dbg !1568

214:                                              ; preds = %212
  %215 = call i32 (i32, ...) @prctl(i32 noundef 4, i32 noundef 0) #40, !dbg !1569
  %216 = icmp eq i32 %215, 0, !dbg !1575
  br i1 %216, label %221, label %217, !dbg !1576

217:                                              ; preds = %214
  %218 = tail call ptr @__errno_location() #43, !dbg !1577
  %219 = load i32, ptr %218, align 4, !dbg !1577, !tbaa !1027
  %220 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.76, i32 noundef 5) #40, !dbg !1577
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %219, ptr noundef %220) #40, !dbg !1577
  br label %224, !dbg !1578

221:                                              ; preds = %214
  %222 = call ptr @signal(i32 noundef %198, ptr noundef null) #40, !dbg !1579
  call fastcc void @unblock_signal(i32 noundef %198), !dbg !1581
  %223 = call i32 @raise(i32 noundef %198) #40, !dbg !1582
  br label %224, !dbg !1583

224:                                              ; preds = %217, %221, %212
  %225 = load i1, ptr @timed_out, align 4, !dbg !1584
  %226 = icmp eq i32 %198, 9
  %227 = select i1 %225, i1 %226, i1 false, !dbg !1586
  br i1 %227, label %228, label %229, !dbg !1586

228:                                              ; preds = %224
  store i1 true, ptr @preserve_status, align 1, !dbg !1587
  br label %229, !dbg !1588

229:                                              ; preds = %228, %224
  %230 = or i32 %198, 128, !dbg !1589
  call void @llvm.dbg.value(metadata i32 %230, metadata !1197, metadata !DIExpression()), !dbg !1544
  br label %234, !dbg !1590

231:                                              ; preds = %203
  %232 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #40, !dbg !1591
  %233 = load i32, ptr %11, align 4, !dbg !1591, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %233, metadata !1197, metadata !DIExpression()), !dbg !1544
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %232, i32 noundef %233) #40, !dbg !1591
  call void @llvm.dbg.value(metadata i32 1, metadata !1197, metadata !DIExpression()), !dbg !1544
  br label %234

234:                                              ; preds = %200, %231, %229, %192
  %235 = phi i32 [ %202, %200 ], [ 1, %231 ], [ %230, %229 ], [ 125, %192 ]
  %236 = load i1, ptr @timed_out, align 4, !dbg !1593
  %237 = load i1, ptr @preserve_status, align 1, !dbg !1595
  %238 = select i1 %237, i32 %235, i32 124, !dbg !1595
  %239 = select i1 %236, i32 %238, i32 %235, !dbg !1595
  call void @llvm.dbg.value(metadata i32 %239, metadata !1197, metadata !DIExpression()), !dbg !1544
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #40, !dbg !1596
  br label %240

240:                                              ; preds = %156, %234, %168, %164, %152
  %241 = phi i32 [ 125, %152 ], [ 125, %164 ], [ %176, %168 ], [ %239, %234 ], [ 125, %156 ], !dbg !1597
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #40, !dbg !1598
  ret i32 %241, !dbg !1598
}

; Function Attrs: nounwind
declare !dbg !1599 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1602 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1603 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1606 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc double @parse_duration(ptr noundef %0) unnamed_addr #10 !dbg !1612 {
  %2 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1616, metadata !DIExpression()), !dbg !1620
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #40, !dbg !1621
  %3 = tail call ptr @__errno_location() #43, !dbg !1622
  store i32 0, ptr %3, align 4, !dbg !1623, !tbaa !1027
  call void @llvm.dbg.value(metadata ptr %2, metadata !1617, metadata !DIExpression(DW_OP_deref)), !dbg !1620
  %4 = call double @cl_strtod(ptr noundef %0, ptr noundef nonnull %2) #40, !dbg !1624
  call void @llvm.dbg.value(metadata double %4, metadata !1618, metadata !DIExpression()), !dbg !1620
  %5 = load i32, ptr %3, align 4, !dbg !1625, !tbaa !1027
  call void @llvm.dbg.value(metadata double %4, metadata !1626, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 %5, metadata !1632, metadata !DIExpression()), !dbg !1634
  %6 = icmp eq i32 %5, 34, !dbg !1636
  %7 = fcmp oeq double %4, 0.000000e+00
  %8 = and i1 %7, %6, !dbg !1638
  %9 = call double @llvm.copysign.f64(double 4.940660e-324, double %4), !dbg !1638
  %10 = call double @llvm.fmuladd.f64(double %4, double 0x3CA0000000000001, double %4), !dbg !1638
  %11 = select i1 %8, double %9, double %10, !dbg !1638
  call void @llvm.dbg.value(metadata double %11, metadata !1619, metadata !DIExpression()), !dbg !1620
  %12 = load ptr, ptr %2, align 8, !dbg !1639, !tbaa !956
  call void @llvm.dbg.value(metadata ptr %12, metadata !1617, metadata !DIExpression()), !dbg !1620
  %13 = icmp ne ptr %12, %0, !dbg !1641
  %14 = fcmp oge double %11, 0.000000e+00
  %15 = select i1 %13, i1 %14, i1 false, !dbg !1642
  br i1 %15, label %16, label %27, !dbg !1642

16:                                               ; preds = %1
  %17 = load i8, ptr %12, align 1, !dbg !1643, !tbaa !1036
  %18 = icmp eq i8 %17, 0, !dbg !1643
  br i1 %18, label %30, label %19, !dbg !1644

19:                                               ; preds = %16
  %20 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !1645
  %21 = load i8, ptr %20, align 1, !dbg !1646, !tbaa !1036
  %22 = icmp eq i8 %21, 0, !dbg !1646
  br i1 %22, label %23, label %27, !dbg !1647

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr %12, metadata !1617, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata ptr undef, metadata !1648, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8 %17, metadata !1654, metadata !DIExpression()), !dbg !1656
  switch i8 %17, label %27 [
    i8 100, label %26
    i8 115, label %30
    i8 109, label %24
    i8 104, label %25
  ], !dbg !1658

24:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 60, metadata !1655, metadata !DIExpression()), !dbg !1656
  br label %30, !dbg !1659

25:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 3600, metadata !1655, metadata !DIExpression()), !dbg !1656
  br label %30, !dbg !1661

26:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 86400, metadata !1655, metadata !DIExpression()), !dbg !1656
  br label %30, !dbg !1662

27:                                               ; preds = %23, %19, %1
  %28 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.70, i32 noundef 5) #40, !dbg !1663
  %29 = call ptr @quote(ptr noundef %0) #40, !dbg !1663
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %28, ptr noundef %29) #40, !dbg !1663
  call void @usage(i32 noundef 125) #44, !dbg !1665
  unreachable, !dbg !1665

30:                                               ; preds = %16, %23, %24, %25, %26
  %31 = phi double [ 8.640000e+04, %26 ], [ 3.600000e+03, %25 ], [ 6.000000e+01, %24 ], [ 1.000000e+00, %23 ], [ 1.000000e+00, %16 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !1655, metadata !DIExpression()), !dbg !1656
  %32 = fmul double %11, %31, !dbg !1666
  call void @llvm.dbg.value(metadata double %32, metadata !1626, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i32 0, metadata !1632, metadata !DIExpression()), !dbg !1667
  %33 = call double @llvm.fmuladd.f64(double %32, double 0x3CA0000000000001, double %32), !dbg !1669
  call void @llvm.dbg.value(metadata double undef, metadata !1619, metadata !DIExpression()), !dbg !1620
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #40, !dbg !1670
  ret double %33, !dbg !1671
}

; Function Attrs: nounwind
declare !dbg !1672 i32 @setpgid(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1676 i32 @sigemptyset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @cleanup(i32 noundef %0) #10 !dbg !1679 {
  %2 = alloca [19 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !1681, metadata !DIExpression()), !dbg !1690
  %3 = icmp eq i32 %0, 14, !dbg !1691
  br i1 %3, label %4, label %6, !dbg !1693

4:                                                ; preds = %1
  store i1 true, ptr @timed_out, align 4, !dbg !1694
  call void @llvm.dbg.value(metadata i32 124, metadata !1210, metadata !DIExpression()), !dbg !1696
  store volatile i32 124, ptr @exit_failure, align 4, !dbg !1698, !tbaa !1027
  %5 = load i32, ptr @term_signal, align 4, !dbg !1699, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %5, metadata !1681, metadata !DIExpression()), !dbg !1690
  br label %6, !dbg !1700

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !1681, metadata !DIExpression()), !dbg !1690
  %8 = load i32, ptr @monitored_pid, align 4, !dbg !1701, !tbaa !1027
  %9 = icmp sgt i32 %8, 0, !dbg !1702
  br i1 %9, label %10, label %49, !dbg !1703

10:                                               ; preds = %6
  %11 = load double, ptr @kill_after, align 8, !dbg !1704, !tbaa !1227
  %12 = fcmp une double %11, 0.000000e+00, !dbg !1704
  br i1 %12, label %13, label %16, !dbg !1705

13:                                               ; preds = %10
  %14 = tail call ptr @__errno_location() #43, !dbg !1706
  %15 = load i32, ptr %14, align 4, !dbg !1706, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %15, metadata !1682, metadata !DIExpression()), !dbg !1707
  store i32 9, ptr @term_signal, align 4, !dbg !1708, !tbaa !1027
  tail call fastcc void @settimeout(double noundef %11, i1 noundef false), !dbg !1709
  store double 0.000000e+00, ptr @kill_after, align 8, !dbg !1710, !tbaa !1227
  store i32 %15, ptr %14, align 4, !dbg !1711, !tbaa !1027
  br label %16, !dbg !1712

16:                                               ; preds = %13, %10
  %17 = load i1, ptr @verbose, align 1, !dbg !1713
  br i1 %17, label %18, label %29, !dbg !1714

18:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %2) #40, !dbg !1715
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1687, metadata !DIExpression()), !dbg !1716
  %19 = icmp eq i32 %7, 0, !dbg !1717
  br i1 %19, label %23, label %20, !dbg !1719

20:                                               ; preds = %18
  %21 = call i32 @sig2str(i32 noundef %7, ptr noundef nonnull %2) #40, !dbg !1720
  %22 = icmp eq i32 %21, 0, !dbg !1721
  br i1 %22, label %25, label %23, !dbg !1722

23:                                               ; preds = %20, %18
  %24 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %2, i64 noundef 19, i32 noundef 1, i64 noundef 19, ptr noundef nonnull @.str.71, i32 noundef %7) #40, !dbg !1723
  br label %25, !dbg !1723

25:                                               ; preds = %23, %20
  %26 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.72, i32 noundef 5) #40, !dbg !1724
  %27 = load ptr, ptr @command, align 8, !dbg !1724, !tbaa !956
  %28 = call ptr @quote(ptr noundef %27) #40, !dbg !1724
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %26, ptr noundef nonnull %2, ptr noundef %28) #40, !dbg !1724
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %2) #40, !dbg !1725
  br label %29, !dbg !1726

29:                                               ; preds = %25, %16
  %30 = load i32, ptr @monitored_pid, align 4, !dbg !1727, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %30, metadata !1728, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i32 %7, metadata !1733, metadata !DIExpression()), !dbg !1734
  %31 = icmp eq i32 %30, 0, !dbg !1736
  br i1 %31, label %32, label %34, !dbg !1738

32:                                               ; preds = %29
  %33 = call ptr @signal(i32 noundef %7, ptr noundef nonnull inttoptr (i64 1 to ptr)) #40, !dbg !1739
  br label %34, !dbg !1739

34:                                               ; preds = %29, %32
  %35 = call i32 @kill(i32 noundef %30, i32 noundef %7) #40, !dbg !1740
  %36 = load i1, ptr @foreground, align 1, !dbg !1741
  br i1 %36, label %53, label %37, !dbg !1743

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 0, metadata !1728, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i32 %7, metadata !1733, metadata !DIExpression()), !dbg !1744
  %38 = call ptr @signal(i32 noundef %7, ptr noundef nonnull inttoptr (i64 1 to ptr)) #40, !dbg !1747
  %39 = call i32 @kill(i32 noundef 0, i32 noundef %7) #40, !dbg !1748
  switch i32 %7, label %40 [
    i32 18, label %53
    i32 9, label %53
  ], !dbg !1749

40:                                               ; preds = %37
  %41 = load i32, ptr @monitored_pid, align 4, !dbg !1751, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %41, metadata !1728, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i32 18, metadata !1733, metadata !DIExpression()), !dbg !1753
  %42 = icmp eq i32 %41, 0, !dbg !1755
  br i1 %42, label %43, label %45, !dbg !1756

43:                                               ; preds = %40
  %44 = call ptr @signal(i32 noundef 18, ptr noundef nonnull inttoptr (i64 1 to ptr)) #40, !dbg !1757
  br label %45, !dbg !1757

45:                                               ; preds = %40, %43
  %46 = call i32 @kill(i32 noundef %41, i32 noundef 18) #40, !dbg !1758
  call void @llvm.dbg.value(metadata i32 0, metadata !1728, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i32 18, metadata !1733, metadata !DIExpression()), !dbg !1759
  %47 = call ptr @signal(i32 noundef 18, ptr noundef nonnull inttoptr (i64 1 to ptr)) #40, !dbg !1761
  %48 = call i32 @kill(i32 noundef 0, i32 noundef 18) #40, !dbg !1762
  br label %53, !dbg !1763

49:                                               ; preds = %6
  %50 = icmp eq i32 %8, -1, !dbg !1764
  br i1 %50, label %53, label %51, !dbg !1766

51:                                               ; preds = %49
  %52 = add nsw i32 %7, 128, !dbg !1767
  tail call void @_exit(i32 noundef %52) #42, !dbg !1769
  unreachable, !dbg !1769

53:                                               ; preds = %37, %37, %49, %34, %45
  ret void, !dbg !1770
}

; Function Attrs: nounwind
declare !dbg !1771 i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1774 i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1775 i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind
declare !dbg !1783 ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @chld(i32 %0) #12 !dbg !1786 {
  call void @llvm.dbg.value(metadata i32 poison, metadata !1788, metadata !DIExpression()), !dbg !1789
  ret void, !dbg !1790
}

; Function Attrs: nounwind uwtable
define internal fastcc void @unblock_signal(i32 noundef %0) unnamed_addr #10 !dbg !1791 {
  %2 = alloca %struct.__sigset_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1793, metadata !DIExpression()), !dbg !1795
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #40, !dbg !1796
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1794, metadata !DIExpression()), !dbg !1797
  %3 = call i32 @sigemptyset(ptr noundef nonnull %2) #40, !dbg !1798
  %4 = call i32 @sigaddset(ptr noundef nonnull %2, i32 noundef %0) #40, !dbg !1799
  %5 = call i32 @sigprocmask(i32 noundef 1, ptr noundef nonnull %2, ptr noundef null) #40, !dbg !1800
  %6 = icmp eq i32 %5, 0, !dbg !1802
  br i1 %6, label %11, label %7, !dbg !1803

7:                                                ; preds = %1
  %8 = tail call ptr @__errno_location() #43, !dbg !1804
  %9 = load i32, ptr %8, align 4, !dbg !1804, !tbaa !1027
  %10 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.73, i32 noundef 5) #40, !dbg !1804
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %9, ptr noundef %10) #40, !dbg !1804
  br label %11, !dbg !1804

11:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #40, !dbg !1805
  ret void, !dbg !1805
}

; Function Attrs: nounwind
declare !dbg !1806 i32 @sigaddset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1809 i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1816 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1820 i32 @getpid() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1823 i32 @fork() local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1824 i32 @prctl(i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1828 i32 @getppid() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1829 i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @settimeout(double noundef %0, i1 noundef %1) unnamed_addr #10 !dbg !1832 {
  %3 = alloca %struct.itimerspec, align 8
  %4 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata double %0, metadata !1836, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i1 %1, metadata !1837, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1859
  %5 = tail call [2 x i64] @dtotimespec(double noundef %0) #43, !dbg !1860
  %6 = extractvalue [2 x i64] %5, 0, !dbg !1860
  call void @llvm.dbg.value(metadata i64 %6, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1859
  %7 = extractvalue [2 x i64] %5, 1, !dbg !1860
  call void @llvm.dbg.value(metadata i64 %7, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1859
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #40, !dbg !1861
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1845, metadata !DIExpression()), !dbg !1862
  %8 = getelementptr inbounds %struct.itimerspec, ptr %3, i64 0, i32 1, !dbg !1863
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !1864
  store i64 %6, ptr %8, align 8, !dbg !1865, !tbaa.struct !1866
  %9 = getelementptr inbounds %struct.itimerspec, ptr %3, i64 0, i32 1, i32 1, !dbg !1865
  store i64 %7, ptr %9, align 8, !dbg !1865, !tbaa.struct !1869
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !1870
  call void @llvm.dbg.value(metadata ptr %4, metadata !1851, metadata !DIExpression(DW_OP_deref)), !dbg !1859
  %10 = call i32 @timer_create(i32 noundef 0, ptr noundef null, ptr noundef nonnull %4) #40, !dbg !1871
  %11 = icmp eq i32 %10, 0, !dbg !1873
  br i1 %11, label %12, label %24, !dbg !1874

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8, !dbg !1875, !tbaa !956
  call void @llvm.dbg.value(metadata ptr %13, metadata !1851, metadata !DIExpression()), !dbg !1859
  %14 = call i32 @timer_settime(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %3, ptr noundef null) #40, !dbg !1878
  %15 = icmp eq i32 %14, 0, !dbg !1879
  br i1 %15, label %42, label %16, !dbg !1880

16:                                               ; preds = %12
  br i1 %1, label %17, label %21, !dbg !1881

17:                                               ; preds = %16
  %18 = tail call ptr @__errno_location() #43, !dbg !1883
  %19 = load i32, ptr %18, align 4, !dbg !1883, !tbaa !1027
  %20 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef 5) #40, !dbg !1883
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %19, ptr noundef %20) #40, !dbg !1883
  br label %21, !dbg !1883

21:                                               ; preds = %17, %16
  %22 = load ptr, ptr %4, align 8, !dbg !1885, !tbaa !956
  call void @llvm.dbg.value(metadata ptr %22, metadata !1851, metadata !DIExpression()), !dbg !1859
  %23 = call i32 @timer_delete(ptr noundef %22) #40, !dbg !1886
  br label %31, !dbg !1887

24:                                               ; preds = %2
  br i1 %1, label %25, label %31, !dbg !1888

25:                                               ; preds = %24
  %26 = tail call ptr @__errno_location() #43, !dbg !1890
  %27 = load i32, ptr %26, align 4, !dbg !1890, !tbaa !1027
  %28 = icmp eq i32 %27, 38, !dbg !1891
  br i1 %28, label %31, label %29, !dbg !1892

29:                                               ; preds = %25
  %30 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.75, i32 noundef 5) #40, !dbg !1893
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %27, ptr noundef %30) #40, !dbg !1893
  br label %31, !dbg !1893

31:                                               ; preds = %24, %25, %29, %21
  %32 = fcmp ult double %0, 0x41EFFFFFFFE00000, !dbg !1894
  br i1 %32, label %33, label %39, !dbg !1895

33:                                               ; preds = %31
  %34 = fptoui double %0 to i32, !dbg !1896
  call void @llvm.dbg.value(metadata i32 %34, metadata !1856, metadata !DIExpression()), !dbg !1897
  %35 = uitofp i32 %34 to double, !dbg !1898
  %36 = fcmp olt double %35, %0, !dbg !1899
  %37 = zext i1 %36 to i32, !dbg !1899
  %38 = add i32 %37, %34, !dbg !1900
  call void @llvm.dbg.value(metadata i32 %38, metadata !1855, metadata !DIExpression()), !dbg !1859
  br label %39

39:                                               ; preds = %31, %33
  %40 = phi i32 [ %38, %33 ], [ -1, %31 ], !dbg !1901
  call void @llvm.dbg.value(metadata i32 %40, metadata !1855, metadata !DIExpression()), !dbg !1859
  %41 = call i32 @alarm(i32 noundef %40) #40, !dbg !1902
  br label %42, !dbg !1903

42:                                               ; preds = %12, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !1903
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #40, !dbg !1903
  ret void, !dbg !1903
}

declare !dbg !1904 i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1908 i32 @sigsuspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1911 i32 @raise(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nounwind
declare !dbg !1914 i32 @timer_create(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1955 i32 @timer_settime(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1963 i32 @timer_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1966 i32 @alarm(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !1969 i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: nounwind
declare !dbg !1972 i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare !dbg !1975 void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @operand2sig(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !1976 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1980, metadata !DIExpression()), !dbg !1991
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #40, !dbg !1992
  %4 = load i8, ptr %0, align 1, !dbg !1993, !tbaa !1036
  %5 = zext i8 %4 to i32, !dbg !1993
  call void @llvm.dbg.value(metadata i32 %5, metadata !1994, metadata !DIExpression()), !dbg !2000
  %6 = add nsw i32 %5, -48, !dbg !2002
  %7 = icmp ult i32 %6, 10, !dbg !2002
  br i1 %7, label %8, label %36, !dbg !2003

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #40, !dbg !2004
  %9 = tail call ptr @__errno_location() #43, !dbg !2005
  store i32 0, ptr %9, align 4, !dbg !2006, !tbaa !1027
  call void @llvm.dbg.value(metadata ptr %3, metadata !1982, metadata !DIExpression(DW_OP_deref)), !dbg !2007
  %10 = call i64 @strtol(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 10) #40, !dbg !2008
  %11 = freeze i64 %10, !dbg !2009
  call void @llvm.dbg.value(metadata i64 %10, metadata !1985, metadata !DIExpression()), !dbg !2007
  %12 = trunc i64 %11 to i32, !dbg !2009
  call void @llvm.dbg.value(metadata i32 %12, metadata !1986, metadata !DIExpression()), !dbg !2007
  %13 = load ptr, ptr %3, align 8, !dbg !2010, !tbaa !956
  call void @llvm.dbg.value(metadata ptr %13, metadata !1982, metadata !DIExpression()), !dbg !2007
  %14 = icmp eq ptr %13, %0, !dbg !2011
  br i1 %14, label %27, label %15, !dbg !2012

15:                                               ; preds = %8
  %16 = load i8, ptr %13, align 1, !dbg !2013, !tbaa !1036
  %17 = icmp eq i8 %16, 0, !dbg !2013
  br i1 %17, label %18, label %27, !dbg !2014

18:                                               ; preds = %15
  %19 = load i32, ptr %9, align 4, !dbg !2015, !tbaa !1027
  %20 = icmp eq i32 %19, 0, !dbg !2015
  %21 = add i64 %11, 2147483648
  %22 = icmp ult i64 %21, 4294967296
  %23 = and i1 %22, %20, !dbg !2016
  br i1 %23, label %24, label %27, !dbg !2016

24:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i32 %12, metadata !1981, metadata !DIExpression()), !dbg !1991
  %25 = icmp eq i32 %12, -1, !dbg !2017
  %26 = icmp slt i32 %12, 255, !dbg !2019
  br i1 %26, label %27, label %30, !dbg !2019

27:                                               ; preds = %8, %15, %18, %24
  %28 = phi i1 [ %25, %24 ], [ true, %18 ], [ true, %15 ], [ true, %8 ]
  %29 = phi i32 [ %12, %24 ], [ -1, %18 ], [ -1, %15 ], [ -1, %8 ]
  br label %30, !dbg !2019

30:                                               ; preds = %24, %27
  %31 = phi i1 [ %28, %27 ], [ %25, %24 ]
  %32 = phi i32 [ %29, %27 ], [ %12, %24 ]
  %33 = phi i32 [ 127, %27 ], [ 255, %24 ]
  %34 = select i1 %31, i32 -1, i32 %33, !dbg !2019
  %35 = and i32 %34, %32, !dbg !2019
  store i32 %35, ptr %2, align 4, !dbg !2007, !tbaa !1027
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40, !dbg !2020
  br label %73, !dbg !2021

36:                                               ; preds = %1
  %37 = tail call noalias nonnull ptr @xstrdup(ptr noundef nonnull %0) #40, !dbg !2022
  call void @llvm.dbg.value(metadata ptr %37, metadata !1987, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata ptr %37, metadata !1989, metadata !DIExpression()), !dbg !2024
  %38 = load i8, ptr %37, align 1, !dbg !2025, !tbaa !1036
  %39 = icmp eq i8 %38, 0, !dbg !2027
  br i1 %39, label %40, label %43, !dbg !2027

40:                                               ; preds = %51, %36
  call void @llvm.dbg.value(metadata ptr %2, metadata !1981, metadata !DIExpression(DW_OP_deref)), !dbg !1991
  %41 = call i32 @str2sig(ptr noundef nonnull %37, ptr noundef nonnull %2) #40, !dbg !2028
  %42 = icmp eq i32 %41, 0, !dbg !2030
  br i1 %42, label %71, label %55, !dbg !2031

43:                                               ; preds = %36, %51
  %44 = phi i8 [ %53, %51 ], [ %38, %36 ]
  %45 = phi ptr [ %52, %51 ], [ %37, %36 ]
  call void @llvm.dbg.value(metadata ptr %45, metadata !1989, metadata !DIExpression()), !dbg !2024
  %46 = zext i8 %44 to i32, !dbg !2032
  %47 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.32, i32 %46, i64 27), !dbg !2034
  %48 = icmp eq ptr %47, null, !dbg !2034
  br i1 %48, label %51, label %49, !dbg !2035

49:                                               ; preds = %43
  %50 = add i8 %44, -32, !dbg !2036
  store i8 %50, ptr %45, align 1, !dbg !2036, !tbaa !1036
  br label %51, !dbg !2037

51:                                               ; preds = %43, %49
  %52 = getelementptr inbounds i8, ptr %45, i64 1, !dbg !2038
  call void @llvm.dbg.value(metadata ptr %52, metadata !1989, metadata !DIExpression()), !dbg !2024
  %53 = load i8, ptr %52, align 1, !dbg !2025, !tbaa !1036
  %54 = icmp eq i8 %53, 0, !dbg !2027
  br i1 %54, label %40, label %43, !dbg !2027, !llvm.loop !2039

55:                                               ; preds = %40
  %56 = load i8, ptr %37, align 1, !dbg !2041, !tbaa !1036
  %57 = icmp eq i8 %56, 83, !dbg !2042
  br i1 %57, label %58, label %70, !dbg !2043

58:                                               ; preds = %55
  %59 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !2044
  %60 = load i8, ptr %59, align 1, !dbg !2044, !tbaa !1036
  %61 = icmp eq i8 %60, 73, !dbg !2045
  br i1 %61, label %62, label %70, !dbg !2046

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %37, i64 2, !dbg !2047
  %64 = load i8, ptr %63, align 1, !dbg !2047, !tbaa !1036
  %65 = icmp eq i8 %64, 71, !dbg !2048
  br i1 %65, label %66, label %70, !dbg !2049

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %37, i64 3, !dbg !2050
  call void @llvm.dbg.value(metadata ptr %2, metadata !1981, metadata !DIExpression(DW_OP_deref)), !dbg !1991
  %68 = call i32 @str2sig(ptr noundef nonnull %67, ptr noundef nonnull %2) #40, !dbg !2051
  %69 = icmp eq i32 %68, 0, !dbg !2052
  br i1 %69, label %71, label %70, !dbg !2053

70:                                               ; preds = %66, %62, %58, %55
  call void @llvm.dbg.value(metadata i32 -1, metadata !1981, metadata !DIExpression()), !dbg !1991
  store i32 -1, ptr %2, align 4, !dbg !2054, !tbaa !1027
  br label %71, !dbg !2055

71:                                               ; preds = %70, %66, %40
  call void @free(ptr noundef nonnull %37) #40, !dbg !2056
  %72 = load i32, ptr %2, align 4, !dbg !2057, !tbaa !1027
  br label %73

73:                                               ; preds = %71, %30
  %74 = phi i32 [ %72, %71 ], [ %35, %30 ], !dbg !2057
  call void @llvm.dbg.value(metadata i32 %74, metadata !1981, metadata !DIExpression()), !dbg !1991
  %75 = icmp ugt i32 %74, 64, !dbg !2059
  br i1 %75, label %76, label %79, !dbg !2059

76:                                               ; preds = %73
  %77 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.33, i32 noundef 5) #40, !dbg !2060
  %78 = call ptr @quote(ptr noundef nonnull %0) #40, !dbg !2060
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %77, ptr noundef %78) #40, !dbg !2060
  br label %79, !dbg !2062

79:                                               ; preds = %73, %76
  %80 = phi i32 [ -1, %76 ], [ %74, %73 ], !dbg !1991
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #40, !dbg !2063
  ret i32 %80, !dbg !2063
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2064 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2068 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local double @cl_strtod(ptr noundef nonnull %0, ptr noalias noundef writeonly %1) local_unnamed_addr #10 !dbg !2071 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2075, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata ptr %1, metadata !2076, metadata !DIExpression()), !dbg !2084
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #40, !dbg !2085
  call void @llvm.dbg.value(metadata ptr %3, metadata !2077, metadata !DIExpression(DW_OP_deref)), !dbg !2084
  %5 = call double @strtod(ptr noundef nonnull %0, ptr noundef nonnull %3) #40, !dbg !2086
  call void @llvm.dbg.value(metadata double %5, metadata !2078, metadata !DIExpression()), !dbg !2084
  %6 = load ptr, ptr %3, align 8, !dbg !2087, !tbaa !956
  call void @llvm.dbg.value(metadata ptr %6, metadata !2077, metadata !DIExpression()), !dbg !2084
  %7 = load i8, ptr %6, align 1, !dbg !2088, !tbaa !1036
  %8 = icmp eq i8 %7, 0, !dbg !2088
  br i1 %8, label %19, label %9, !dbg !2089

9:                                                ; preds = %2
  %10 = tail call ptr @__errno_location() #43, !dbg !2090
  %11 = load i32, ptr %10, align 4, !dbg !2090, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %11, metadata !2079, metadata !DIExpression()), !dbg !2091
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2092
  call void @llvm.dbg.value(metadata ptr %4, metadata !2082, metadata !DIExpression(DW_OP_deref)), !dbg !2091
  %12 = call double @c_strtod(ptr noundef nonnull %0, ptr noundef nonnull %4) #40, !dbg !2093
  call void @llvm.dbg.value(metadata double %12, metadata !2083, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata ptr %6, metadata !2077, metadata !DIExpression()), !dbg !2084
  %13 = load ptr, ptr %4, align 8, !dbg !2094, !tbaa !956
  call void @llvm.dbg.value(metadata ptr %13, metadata !2082, metadata !DIExpression()), !dbg !2091
  %14 = icmp ult ptr %6, %13, !dbg !2096
  br i1 %14, label %16, label %15, !dbg !2097

15:                                               ; preds = %9
  store i32 %11, ptr %10, align 4, !dbg !2098, !tbaa !1027
  br label %16

16:                                               ; preds = %9, %15
  %17 = phi ptr [ %6, %15 ], [ %13, %9 ]
  %18 = phi double [ %5, %15 ], [ %12, %9 ], !dbg !2084
  call void @llvm.dbg.value(metadata double %18, metadata !2078, metadata !DIExpression()), !dbg !2084
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2099
  br label %19, !dbg !2100

19:                                               ; preds = %16, %2
  %20 = phi ptr [ %17, %16 ], [ %6, %2 ]
  %21 = phi double [ %18, %16 ], [ %5, %2 ], !dbg !2084
  call void @llvm.dbg.value(metadata double %21, metadata !2078, metadata !DIExpression()), !dbg !2084
  %22 = icmp eq ptr %1, null, !dbg !2101
  br i1 %22, label %24, label %23, !dbg !2103

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr %20, metadata !2077, metadata !DIExpression()), !dbg !2084
  store ptr %20, ptr %1, align 8, !dbg !2104, !tbaa !956
  br label %24, !dbg !2105

24:                                               ; preds = %23, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40, !dbg !2106
  ret double %21, !dbg !2107
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2108 double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #19 !dbg !2111 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2113, metadata !DIExpression()), !dbg !2114
  store ptr %0, ptr @file_name, align 8, !dbg !2115, !tbaa !956
  ret void, !dbg !2116
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #19 !dbg !2117 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2121, metadata !DIExpression()), !dbg !2122
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !2123, !tbaa !2124
  ret void, !dbg !2126
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2127 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2132, !tbaa !956
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !2133
  %3 = icmp eq i32 %2, 0, !dbg !2134
  br i1 %3, label %22, label %4, !dbg !2135

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !2136, !tbaa !2124, !range !2137, !noundef !965
  %6 = icmp eq i8 %5, 0, !dbg !2136
  br i1 %6, label %11, label %7, !dbg !2138

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !2139
  %9 = load i32, ptr %8, align 4, !dbg !2139, !tbaa !1027
  %10 = icmp eq i32 %9, 32, !dbg !2140
  br i1 %10, label %22, label %11, !dbg !2141

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1.42, i32 noundef 5) #40, !dbg !2142
  call void @llvm.dbg.value(metadata ptr %12, metadata !2129, metadata !DIExpression()), !dbg !2143
  %13 = load ptr, ptr @file_name, align 8, !dbg !2144, !tbaa !956
  %14 = icmp eq ptr %13, null, !dbg !2144
  %15 = tail call ptr @__errno_location() #43, !dbg !2146
  %16 = load i32, ptr %15, align 4, !dbg !2146, !tbaa !1027
  br i1 %14, label %19, label %17, !dbg !2147

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !2148
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.43, ptr noundef %18, ptr noundef %12) #40, !dbg !2148
  br label %20, !dbg !2148

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.44, ptr noundef %12) #40, !dbg !2149
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2150, !tbaa !1027
  tail call void @_exit(i32 noundef %21) #42, !dbg !2151
  unreachable, !dbg !2151

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2152, !tbaa !956
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !2154
  %25 = icmp eq i32 %24, 0, !dbg !2155
  br i1 %25, label %28, label %26, !dbg !2156

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2157, !tbaa !1027
  tail call void @_exit(i32 noundef %27) #42, !dbg !2158
  unreachable, !dbg !2158

28:                                               ; preds = %22
  ret void, !dbg !2159
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local [2 x i64] @dtotimespec(double noundef %0) local_unnamed_addr #12 !dbg !2160 {
  call void @llvm.dbg.value(metadata double %0, metadata !2168, metadata !DIExpression()), !dbg !2175
  %2 = fcmp ogt double %0, 0xC3E0000000000000, !dbg !2176
  br i1 %2, label %3, label %27, !dbg !2177

3:                                                ; preds = %1
  %4 = fcmp olt double %0, 0x43E0000000000000, !dbg !2178
  br i1 %4, label %5, label %27, !dbg !2179

5:                                                ; preds = %3
  %6 = fptosi double %0 to i64, !dbg !2180
  call void @llvm.dbg.value(metadata i64 %6, metadata !2169, metadata !DIExpression()), !dbg !2181
  %7 = sitofp i64 %6 to double, !dbg !2182
  %8 = fsub double %0, %7, !dbg !2183
  %9 = fmul double %8, 1.000000e+09, !dbg !2184
  call void @llvm.dbg.value(metadata double %9, metadata !2173, metadata !DIExpression()), !dbg !2181
  %10 = fptosi double %9 to i64, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %10, metadata !2174, metadata !DIExpression()), !dbg !2181
  %11 = sitofp i64 %10 to double, !dbg !2186
  %12 = fcmp ogt double %9, %11, !dbg !2187
  %13 = zext i1 %12 to i64
  %14 = add nsw i64 %13, %10, !dbg !2188
  call void @llvm.dbg.value(metadata i64 %14, metadata !2174, metadata !DIExpression()), !dbg !2181
  %15 = freeze i64 %14
  %16 = sdiv i64 %15, 1000000000, !dbg !2189
  %17 = add nsw i64 %16, %6, !dbg !2190
  call void @llvm.dbg.value(metadata i64 %17, metadata !2169, metadata !DIExpression()), !dbg !2181
  %18 = mul i64 %16, 1000000000
  %19 = sub i64 %15, %18
  call void @llvm.dbg.value(metadata i64 %19, metadata !2174, metadata !DIExpression()), !dbg !2181
  %20 = icmp slt i64 %19, 0, !dbg !2191
  %21 = add nsw i64 %19, 1000000000, !dbg !2193
  %22 = ashr i64 %19, 63, !dbg !2193
  %23 = add nsw i64 %17, %22, !dbg !2193
  %24 = select i1 %20, i64 %21, i64 %19, !dbg !2193
  call void @llvm.dbg.value(metadata i64 %24, metadata !2174, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i64 %23, metadata !2169, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i64 %23, metadata !2194, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i64 %24, metadata !2199, metadata !DIExpression()), !dbg !2200
  %25 = insertvalue [2 x i64] poison, i64 %23, 0, !dbg !2202
  %26 = insertvalue [2 x i64] %25, i64 %24, 1, !dbg !2202
  br label %27

27:                                               ; preds = %3, %1, %5
  %28 = phi [2 x i64] [ %26, %5 ], [ [i64 -9223372036854775808, i64 0], %1 ], [ [i64 9223372036854775807, i64 999999999], %3 ]
  ret [2 x i64] %28, !dbg !2203
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #20 !dbg !2204 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2208, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i32 %1, metadata !2209, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata ptr %2, metadata !2210, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2211, metadata !DIExpression()), !dbg !2213
  tail call fastcc void @flush_stdout(), !dbg !2214
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2215, !tbaa !956
  %7 = icmp eq ptr %6, null, !dbg !2215
  br i1 %7, label %9, label %8, !dbg !2217

8:                                                ; preds = %4
  tail call void %6() #40, !dbg !2218
  br label %13, !dbg !2218

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2219, !tbaa !956
  %11 = tail call ptr @getprogname() #41, !dbg !2219
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef %11) #40, !dbg !2219
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !2221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2221, !tbaa.struct !2222
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2221
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !2221
  ret void, !dbg !2223
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2224 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2226, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i32 1, metadata !2228, metadata !DIExpression()), !dbg !2231
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !2234
  %2 = icmp slt i32 %1, 0, !dbg !2235
  br i1 %2, label %6, label %3, !dbg !2236

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2237, !tbaa !956
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !2237
  br label %6, !dbg !2237

6:                                                ; preds = %3, %0
  ret void, !dbg !2238
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #21

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2239 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2241, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 %1, metadata !2242, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata ptr %2, metadata !2243, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2244, metadata !DIExpression()), !dbg !2246
  %7 = load ptr, ptr @stderr, align 8, !dbg !2247, !tbaa !956
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !2248, !noalias !2292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2296
  call void @llvm.dbg.value(metadata ptr %7, metadata !2288, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata ptr %2, metadata !2289, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2290, metadata !DIExpression()), !dbg !2298
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #40, !dbg !2248
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !2248, !noalias !2292
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2299, !tbaa !1027
  %10 = add i32 %9, 1, !dbg !2299
  store i32 %10, ptr @error_message_count, align 4, !dbg !2299, !tbaa !1027
  %11 = icmp eq i32 %1, 0, !dbg !2300
  br i1 %11, label %21, label %12, !dbg !2302

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2303, metadata !DIExpression()), !dbg !2311
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !2313
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2307, metadata !DIExpression()), !dbg !2314
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !2315
  call void @llvm.dbg.value(metadata ptr %13, metadata !2306, metadata !DIExpression()), !dbg !2311
  %14 = icmp eq ptr %13, null, !dbg !2316
  br i1 %14, label %15, label %17, !dbg !2318

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.56, ptr noundef nonnull @.str.5.57, i32 noundef 5) #40, !dbg !2319
  call void @llvm.dbg.value(metadata ptr %16, metadata !2306, metadata !DIExpression()), !dbg !2311
  br label %17, !dbg !2320

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2311
  call void @llvm.dbg.value(metadata ptr %18, metadata !2306, metadata !DIExpression()), !dbg !2311
  %19 = load ptr, ptr @stderr, align 8, !dbg !2321, !tbaa !956
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.58, ptr noundef %18) #40, !dbg !2321
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !2322
  br label %21, !dbg !2323

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2324, !tbaa !956
  call void @llvm.dbg.value(metadata i32 10, metadata !2325, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata ptr %22, metadata !2331, metadata !DIExpression()), !dbg !2332
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2334
  %24 = load ptr, ptr %23, align 8, !dbg !2334, !tbaa !2335
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2334
  %26 = load ptr, ptr %25, align 8, !dbg !2334, !tbaa !2337
  %27 = icmp ult ptr %24, %26, !dbg !2334
  br i1 %27, label %30, label %28, !dbg !2334, !prof !2338

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #40, !dbg !2334
  br label %32, !dbg !2334

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2334
  store ptr %31, ptr %23, align 8, !dbg !2334, !tbaa !2335
  store i8 10, ptr %24, align 1, !dbg !2334, !tbaa !1036
  br label %32, !dbg !2334

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2339, !tbaa !956
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #40, !dbg !2339
  %35 = icmp eq i32 %0, 0, !dbg !2340
  br i1 %35, label %37, label %36, !dbg !2342

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #42, !dbg !2343
  unreachable, !dbg !2343

37:                                               ; preds = %32
  ret void, !dbg !2344
}

declare !dbg !2345 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2348 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2351 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2354 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2357 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2361 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2365, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i32 %1, metadata !2366, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata ptr %2, metadata !2367, metadata !DIExpression()), !dbg !2369
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #40, !dbg !2370
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2368, metadata !DIExpression()), !dbg !2371
  call void @llvm.va_start(ptr nonnull %4), !dbg !2372
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !2373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2373, !tbaa.struct !2222
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #45, !dbg !2373
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !2373
  call void @llvm.va_end(ptr nonnull %4), !dbg !2374
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #40, !dbg !2375
  ret void, !dbg !2375
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #22

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #20 !dbg !498 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !515, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i32 %1, metadata !516, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %2, metadata !517, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i32 %3, metadata !518, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %4, metadata !519, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.declare(metadata ptr %5, metadata !520, metadata !DIExpression()), !dbg !2377
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2378, !tbaa !1027
  %9 = icmp eq i32 %8, 0, !dbg !2378
  br i1 %9, label %24, label %10, !dbg !2380

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2381, !tbaa !1027
  %12 = icmp eq i32 %11, %3, !dbg !2384
  br i1 %12, label %13, label %23, !dbg !2385

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2386, !tbaa !956
  %15 = icmp eq ptr %14, %2, !dbg !2387
  br i1 %15, label %37, label %16, !dbg !2388

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2389
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2390
  br i1 %19, label %20, label %23, !dbg !2390

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2391
  %22 = icmp eq i32 %21, 0, !dbg !2392
  br i1 %22, label %37, label %23, !dbg !2393

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2394, !tbaa !956
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2395, !tbaa !1027
  br label %24, !dbg !2396

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2397
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2398, !tbaa !956
  %26 = icmp eq ptr %25, null, !dbg !2398
  br i1 %26, label %28, label %27, !dbg !2400

27:                                               ; preds = %24
  tail call void %25() #40, !dbg !2401
  br label %32, !dbg !2401

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2402, !tbaa !956
  %30 = tail call ptr @getprogname() #41, !dbg !2402
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.61, ptr noundef %30) #40, !dbg !2402
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2404, !tbaa !956
  %34 = icmp eq ptr %2, null, !dbg !2404
  %35 = select i1 %34, ptr @.str.3.62, ptr @.str.2.63, !dbg !2404
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #40, !dbg !2404
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !2405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2405, !tbaa.struct !2222
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2405
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !2405
  br label %37, !dbg !2406

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2406
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2407 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2411, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i32 %1, metadata !2412, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata ptr %2, metadata !2413, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i32 %3, metadata !2414, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata ptr %4, metadata !2415, metadata !DIExpression()), !dbg !2417
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !2418
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2416, metadata !DIExpression()), !dbg !2419
  call void @llvm.va_start(ptr nonnull %6), !dbg !2420
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !2421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2421, !tbaa.struct !2222
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #45, !dbg !2421
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !2421
  call void @llvm.va_end(ptr nonnull %6), !dbg !2422
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !2423
  ret void, !dbg !2423
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #23 !dbg !2424 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2427, !tbaa !956
  ret ptr %1, !dbg !2428
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #24 !dbg !2429 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2431, metadata !DIExpression()), !dbg !2434
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2435
  call void @llvm.dbg.value(metadata ptr %2, metadata !2432, metadata !DIExpression()), !dbg !2434
  %3 = icmp eq ptr %2, null, !dbg !2436
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2436
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2436
  call void @llvm.dbg.value(metadata ptr %5, metadata !2433, metadata !DIExpression()), !dbg !2434
  %6 = ptrtoint ptr %5 to i64, !dbg !2437
  %7 = ptrtoint ptr %0 to i64, !dbg !2437
  %8 = sub i64 %6, %7, !dbg !2437
  %9 = icmp sgt i64 %8, 6, !dbg !2439
  br i1 %9, label %10, label %19, !dbg !2440

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2441
  call void @llvm.dbg.value(metadata ptr %11, metadata !2442, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata ptr @.str.77, metadata !2447, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i64 7, metadata !2448, metadata !DIExpression()), !dbg !2449
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.77, i64 7), !dbg !2451
  %13 = icmp eq i32 %12, 0, !dbg !2452
  br i1 %13, label %14, label %19, !dbg !2453

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2431, metadata !DIExpression()), !dbg !2434
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.78, i64 noundef 3) #41, !dbg !2454
  %16 = icmp eq i32 %15, 0, !dbg !2457
  %17 = select i1 %16, i64 3, i64 0, !dbg !2458
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2458
  br label %19, !dbg !2458

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2434
  call void @llvm.dbg.value(metadata ptr %21, metadata !2433, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata ptr %20, metadata !2431, metadata !DIExpression()), !dbg !2434
  store ptr %20, ptr @program_name, align 8, !dbg !2459, !tbaa !956
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2460, !tbaa !956
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2461, !tbaa !956
  ret void, !dbg !2462
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2463 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !554 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !561, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata ptr %1, metadata !562, metadata !DIExpression()), !dbg !2464
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2465
  call void @llvm.dbg.value(metadata ptr %5, metadata !563, metadata !DIExpression()), !dbg !2464
  %6 = icmp eq ptr %5, %0, !dbg !2466
  br i1 %6, label %7, label %14, !dbg !2468

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2469
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2470
  call void @llvm.dbg.declare(metadata ptr %4, metadata !569, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata ptr %4, metadata !2472, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata ptr %4, metadata !2481, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i32 0, metadata !2487, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i64 8, metadata !2488, metadata !DIExpression()), !dbg !2489
  store i64 0, ptr %4, align 8, !dbg !2491
  call void @llvm.dbg.value(metadata ptr %3, metadata !564, metadata !DIExpression(DW_OP_deref)), !dbg !2464
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2492
  %9 = icmp eq i64 %8, 2, !dbg !2494
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !564, metadata !DIExpression()), !dbg !2464
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2495
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2464
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2496
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2496
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2464
  ret ptr %15, !dbg !2496
}

; Function Attrs: nounwind
declare !dbg !2497 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2503 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2508, metadata !DIExpression()), !dbg !2511
  %2 = tail call ptr @__errno_location() #43, !dbg !2512
  %3 = load i32, ptr %2, align 4, !dbg !2512, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %3, metadata !2509, metadata !DIExpression()), !dbg !2511
  %4 = icmp eq ptr %0, null, !dbg !2513
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2513
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #46, !dbg !2514
  call void @llvm.dbg.value(metadata ptr %6, metadata !2510, metadata !DIExpression()), !dbg !2511
  store i32 %3, ptr %2, align 4, !dbg !2515, !tbaa !1027
  ret ptr %6, !dbg !2516
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #25 !dbg !2517 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2523, metadata !DIExpression()), !dbg !2524
  %2 = icmp eq ptr %0, null, !dbg !2525
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2525
  %4 = load i32, ptr %3, align 8, !dbg !2526, !tbaa !2527
  ret i32 %4, !dbg !2529
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2530 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2534, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 %1, metadata !2535, metadata !DIExpression()), !dbg !2536
  %3 = icmp eq ptr %0, null, !dbg !2537
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2537
  store i32 %1, ptr %4, align 8, !dbg !2538, !tbaa !2527
  ret void, !dbg !2539
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #27 !dbg !2540 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2544, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i8 %1, metadata !2545, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i32 %2, metadata !2546, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i8 %1, metadata !2547, metadata !DIExpression()), !dbg !2552
  %4 = icmp eq ptr %0, null, !dbg !2553
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2553
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2554
  %7 = lshr i8 %1, 5, !dbg !2555
  %8 = zext i8 %7 to i64, !dbg !2555
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2556
  call void @llvm.dbg.value(metadata ptr %9, metadata !2548, metadata !DIExpression()), !dbg !2552
  %10 = and i8 %1, 31, !dbg !2557
  %11 = zext i8 %10 to i32, !dbg !2557
  call void @llvm.dbg.value(metadata i32 %11, metadata !2550, metadata !DIExpression()), !dbg !2552
  %12 = load i32, ptr %9, align 4, !dbg !2558, !tbaa !1027
  %13 = lshr i32 %12, %11, !dbg !2559
  %14 = and i32 %13, 1, !dbg !2560
  call void @llvm.dbg.value(metadata i32 %14, metadata !2551, metadata !DIExpression()), !dbg !2552
  %15 = xor i32 %13, %2, !dbg !2561
  %16 = and i32 %15, 1, !dbg !2561
  %17 = shl nuw i32 %16, %11, !dbg !2562
  %18 = xor i32 %17, %12, !dbg !2563
  store i32 %18, ptr %9, align 4, !dbg !2563, !tbaa !1027
  ret i32 %14, !dbg !2564
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #27 !dbg !2565 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2569, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i32 %1, metadata !2570, metadata !DIExpression()), !dbg !2572
  %3 = icmp eq ptr %0, null, !dbg !2573
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2575
  call void @llvm.dbg.value(metadata ptr %4, metadata !2569, metadata !DIExpression()), !dbg !2572
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2576
  %6 = load i32, ptr %5, align 4, !dbg !2576, !tbaa !2577
  call void @llvm.dbg.value(metadata i32 %6, metadata !2571, metadata !DIExpression()), !dbg !2572
  store i32 %1, ptr %5, align 4, !dbg !2578, !tbaa !2577
  ret i32 %6, !dbg !2579
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2580 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2584, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata ptr %1, metadata !2585, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata ptr %2, metadata !2586, metadata !DIExpression()), !dbg !2587
  %4 = icmp eq ptr %0, null, !dbg !2588
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2590
  call void @llvm.dbg.value(metadata ptr %5, metadata !2584, metadata !DIExpression()), !dbg !2587
  store i32 10, ptr %5, align 8, !dbg !2591, !tbaa !2527
  %6 = icmp ne ptr %1, null, !dbg !2592
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2594
  br i1 %8, label %10, label %9, !dbg !2594

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2595
  unreachable, !dbg !2595

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2596
  store ptr %1, ptr %11, align 8, !dbg !2597, !tbaa !2598
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2599
  store ptr %2, ptr %12, align 8, !dbg !2600, !tbaa !2601
  ret void, !dbg !2602
}

; Function Attrs: noreturn nounwind
declare !dbg !2603 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2604 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2608, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %1, metadata !2609, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %2, metadata !2610, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %3, metadata !2611, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %4, metadata !2612, metadata !DIExpression()), !dbg !2616
  %6 = icmp eq ptr %4, null, !dbg !2617
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2617
  call void @llvm.dbg.value(metadata ptr %7, metadata !2613, metadata !DIExpression()), !dbg !2616
  %8 = tail call ptr @__errno_location() #43, !dbg !2618
  %9 = load i32, ptr %8, align 4, !dbg !2618, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %9, metadata !2614, metadata !DIExpression()), !dbg !2616
  %10 = load i32, ptr %7, align 8, !dbg !2619, !tbaa !2527
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2620
  %12 = load i32, ptr %11, align 4, !dbg !2620, !tbaa !2577
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2621
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2622
  %15 = load ptr, ptr %14, align 8, !dbg !2622, !tbaa !2598
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2623
  %17 = load ptr, ptr %16, align 8, !dbg !2623, !tbaa !2601
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2624
  call void @llvm.dbg.value(metadata i64 %18, metadata !2615, metadata !DIExpression()), !dbg !2616
  store i32 %9, ptr %8, align 4, !dbg !2625, !tbaa !1027
  ret i64 %18, !dbg !2626
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2627 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2633, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %1, metadata !2634, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %2, metadata !2635, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %3, metadata !2636, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i32 %4, metadata !2637, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i32 %5, metadata !2638, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %6, metadata !2639, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %7, metadata !2640, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %8, metadata !2641, metadata !DIExpression()), !dbg !2695
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2696
  %17 = icmp eq i64 %16, 1, !dbg !2697
  call void @llvm.dbg.value(metadata i1 %17, metadata !2642, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2695
  call void @llvm.dbg.value(metadata i64 0, metadata !2643, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 0, metadata !2644, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr null, metadata !2645, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 0, metadata !2646, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 0, metadata !2647, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i32 %5, metadata !2648, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2695
  call void @llvm.dbg.value(metadata i8 0, metadata !2649, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 1, metadata !2650, metadata !DIExpression()), !dbg !2695
  %18 = and i32 %5, 2, !dbg !2698
  %19 = icmp ne i32 %18, 0, !dbg !2698
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2698

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !2699
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !2700
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !2701
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2634, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 poison, metadata !2650, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 poison, metadata !2649, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 poison, metadata !2648, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 poison, metadata !2647, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %34, metadata !2646, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %33, metadata !2645, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %32, metadata !2644, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 0, metadata !2643, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %31, metadata !2636, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %30, metadata !2641, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %29, metadata !2640, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i32 %28, metadata !2637, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.label(metadata !2688), !dbg !2702
  call void @llvm.dbg.value(metadata i8 0, metadata !2651, metadata !DIExpression()), !dbg !2695
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
  ], !dbg !2703

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2648, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i32 5, metadata !2637, metadata !DIExpression()), !dbg !2695
  br label %102, !dbg !2704

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2648, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i32 5, metadata !2637, metadata !DIExpression()), !dbg !2695
  br i1 %36, label %102, label %42, !dbg !2704

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2705
  br i1 %43, label %102, label %44, !dbg !2709

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2705, !tbaa !1036
  br label %102, !dbg !2705

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.91, metadata !667, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i32 %28, metadata !668, metadata !DIExpression()), !dbg !2710
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.92, ptr noundef nonnull @.str.11.91, i32 noundef 5) #40, !dbg !2714
  call void @llvm.dbg.value(metadata ptr %46, metadata !669, metadata !DIExpression()), !dbg !2710
  %47 = icmp eq ptr %46, @.str.11.91, !dbg !2715
  br i1 %47, label %48, label %57, !dbg !2717

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !2718
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !2719
  call void @llvm.dbg.declare(metadata ptr %13, metadata !671, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata ptr %13, metadata !2721, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata ptr %13, metadata !2729, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i32 0, metadata !2732, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 8, metadata !2733, metadata !DIExpression()), !dbg !2734
  store i64 0, ptr %13, align 8, !dbg !2736
  call void @llvm.dbg.value(metadata ptr %12, metadata !670, metadata !DIExpression(DW_OP_deref)), !dbg !2710
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !2737
  %50 = icmp eq i64 %49, 3, !dbg !2739
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !670, metadata !DIExpression()), !dbg !2710
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2740
  %54 = icmp eq i32 %28, 9, !dbg !2740
  %55 = select i1 %54, ptr @.str.10.93, ptr @.str.12.94, !dbg !2740
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2740
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !2741
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !2741
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2710
  call void @llvm.dbg.value(metadata ptr %58, metadata !2640, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr @.str.12.94, metadata !667, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i32 %28, metadata !668, metadata !DIExpression()), !dbg !2742
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.92, ptr noundef nonnull @.str.12.94, i32 noundef 5) #40, !dbg !2744
  call void @llvm.dbg.value(metadata ptr %59, metadata !669, metadata !DIExpression()), !dbg !2742
  %60 = icmp eq ptr %59, @.str.12.94, !dbg !2745
  br i1 %60, label %61, label %70, !dbg !2746

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !2747
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !2748
  call void @llvm.dbg.declare(metadata ptr %11, metadata !671, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata ptr %11, metadata !2721, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata ptr %11, metadata !2729, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 0, metadata !2732, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i64 8, metadata !2733, metadata !DIExpression()), !dbg !2752
  store i64 0, ptr %11, align 8, !dbg !2754
  call void @llvm.dbg.value(metadata ptr %10, metadata !670, metadata !DIExpression(DW_OP_deref)), !dbg !2742
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !2755
  %63 = icmp eq i64 %62, 3, !dbg !2756
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !670, metadata !DIExpression()), !dbg !2742
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2757
  %67 = icmp eq i32 %28, 9, !dbg !2757
  %68 = select i1 %67, ptr @.str.10.93, ptr @.str.12.94, !dbg !2757
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2757
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !2758
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !2758
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !2641, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %71, metadata !2640, metadata !DIExpression()), !dbg !2695
  br i1 %36, label %88, label %73, !dbg !2759

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !2652, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 0, metadata !2643, metadata !DIExpression()), !dbg !2695
  %74 = load i8, ptr %71, align 1, !dbg !2761, !tbaa !1036
  %75 = icmp eq i8 %74, 0, !dbg !2763
  br i1 %75, label %88, label %76, !dbg !2763

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !2652, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 %79, metadata !2643, metadata !DIExpression()), !dbg !2695
  %80 = icmp ult i64 %79, %39, !dbg !2764
  br i1 %80, label %81, label %83, !dbg !2767

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2764
  store i8 %77, ptr %82, align 1, !dbg !2764, !tbaa !1036
  br label %83, !dbg !2764

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2767
  call void @llvm.dbg.value(metadata i64 %84, metadata !2643, metadata !DIExpression()), !dbg !2695
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2768
  call void @llvm.dbg.value(metadata ptr %85, metadata !2652, metadata !DIExpression()), !dbg !2760
  %86 = load i8, ptr %85, align 1, !dbg !2761, !tbaa !1036
  %87 = icmp eq i8 %86, 0, !dbg !2763
  br i1 %87, label %88, label %76, !dbg !2763, !llvm.loop !2769

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !2771
  call void @llvm.dbg.value(metadata i64 %89, metadata !2643, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 1, metadata !2647, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %72, metadata !2645, metadata !DIExpression()), !dbg !2695
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #41, !dbg !2772
  call void @llvm.dbg.value(metadata i64 %90, metadata !2646, metadata !DIExpression()), !dbg !2695
  br label %102, !dbg !2773

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2647, metadata !DIExpression()), !dbg !2695
  br label %93, !dbg !2774

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2648, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 poison, metadata !2647, metadata !DIExpression()), !dbg !2695
  br i1 %36, label %102, label %96, !dbg !2775

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2648, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 poison, metadata !2647, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i32 2, metadata !2637, metadata !DIExpression()), !dbg !2695
  br label %102, !dbg !2776

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2648, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 poison, metadata !2647, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i32 2, metadata !2637, metadata !DIExpression()), !dbg !2695
  br i1 %36, label %102, label %96, !dbg !2776

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !2777
  br i1 %98, label %102, label %99, !dbg !2781

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !2777, !tbaa !1036
  br label %102, !dbg !2777

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2648, metadata !DIExpression()), !dbg !2695
  br label %102, !dbg !2782

101:                                              ; preds = %27
  call void @abort() #42, !dbg !2783
  unreachable, !dbg !2783

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !2771
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.93, %42 ], [ @.str.10.93, %44 ], [ @.str.10.93, %41 ], [ %33, %27 ], [ @.str.12.94, %96 ], [ @.str.12.94, %99 ], [ @.str.12.94, %95 ], [ @.str.10.93, %40 ], [ @.str.12.94, %93 ], [ @.str.12.94, %92 ], !dbg !2695
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2695
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2648, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 poison, metadata !2647, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %108, metadata !2646, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %107, metadata !2645, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %106, metadata !2643, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %105, metadata !2641, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %104, metadata !2640, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i32 %103, metadata !2637, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 0, metadata !2657, metadata !DIExpression()), !dbg !2784
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
  br label %122, !dbg !2785

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !2771
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !2699
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !2786
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2634, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %129, metadata !2657, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i8 poison, metadata !2651, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 poison, metadata !2650, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 poison, metadata !2649, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %125, metadata !2644, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %124, metadata !2643, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %123, metadata !2636, metadata !DIExpression()), !dbg !2695
  %131 = icmp eq i64 %123, -1, !dbg !2787
  br i1 %131, label %132, label %136, !dbg !2788

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2789
  %134 = load i8, ptr %133, align 1, !dbg !2789, !tbaa !1036
  %135 = icmp eq i8 %134, 0, !dbg !2790
  br i1 %135, label %579, label %138, !dbg !2791

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !2792
  br i1 %137, label %579, label %138, !dbg !2791

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2659, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 0, metadata !2662, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 0, metadata !2663, metadata !DIExpression()), !dbg !2793
  br i1 %114, label %139, label %152, !dbg !2794

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !2796
  %141 = select i1 %131, i1 %115, i1 false, !dbg !2797
  br i1 %141, label %142, label %144, !dbg !2797

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %143, metadata !2636, metadata !DIExpression()), !dbg !2695
  br label %144, !dbg !2799

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !2799
  call void @llvm.dbg.value(metadata i64 %145, metadata !2636, metadata !DIExpression()), !dbg !2695
  %146 = icmp ugt i64 %140, %145, !dbg !2800
  br i1 %146, label %152, label %147, !dbg !2801

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2802
  call void @llvm.dbg.value(metadata ptr %148, metadata !2803, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata ptr %107, metadata !2806, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i64 %108, metadata !2807, metadata !DIExpression()), !dbg !2808
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !2810
  %150 = icmp eq i32 %149, 0, !dbg !2811
  %151 = and i1 %150, %110, !dbg !2812
  br i1 %151, label %630, label %152, !dbg !2812

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2659, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %153, metadata !2636, metadata !DIExpression()), !dbg !2695
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2813
  %156 = load i8, ptr %155, align 1, !dbg !2813, !tbaa !1036
  call void @llvm.dbg.value(metadata i8 %156, metadata !2664, metadata !DIExpression()), !dbg !2793
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
  ], !dbg !2814

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !2815

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !2816

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !2662, metadata !DIExpression()), !dbg !2793
  %160 = select i1 %111, i1 true, i1 %128, !dbg !2820
  br i1 %160, label %177, label %161, !dbg !2820

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !2822
  br i1 %162, label %163, label %165, !dbg !2826

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2822
  store i8 39, ptr %164, align 1, !dbg !2822, !tbaa !1036
  br label %165, !dbg !2822

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !2826
  call void @llvm.dbg.value(metadata i64 %166, metadata !2643, metadata !DIExpression()), !dbg !2695
  %167 = icmp ult i64 %166, %130, !dbg !2827
  br i1 %167, label %168, label %170, !dbg !2830

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !2827
  store i8 36, ptr %169, align 1, !dbg !2827, !tbaa !1036
  br label %170, !dbg !2827

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !2830
  call void @llvm.dbg.value(metadata i64 %171, metadata !2643, metadata !DIExpression()), !dbg !2695
  %172 = icmp ult i64 %171, %130, !dbg !2831
  br i1 %172, label %173, label %175, !dbg !2834

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !2831
  store i8 39, ptr %174, align 1, !dbg !2831, !tbaa !1036
  br label %175, !dbg !2831

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !2834
  call void @llvm.dbg.value(metadata i64 %176, metadata !2643, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 1, metadata !2651, metadata !DIExpression()), !dbg !2695
  br label %177, !dbg !2835

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2695
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2651, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %178, metadata !2643, metadata !DIExpression()), !dbg !2695
  %180 = icmp ult i64 %178, %130, !dbg !2836
  br i1 %180, label %181, label %183, !dbg !2839

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !2836
  store i8 92, ptr %182, align 1, !dbg !2836, !tbaa !1036
  br label %183, !dbg !2836

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !2839
  call void @llvm.dbg.value(metadata i64 %184, metadata !2643, metadata !DIExpression()), !dbg !2695
  br i1 %111, label %185, label %482, !dbg !2840

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2842
  %187 = icmp ult i64 %186, %153, !dbg !2843
  br i1 %187, label %188, label %439, !dbg !2844

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2845
  %190 = load i8, ptr %189, align 1, !dbg !2845, !tbaa !1036
  %191 = add i8 %190, -48, !dbg !2846
  %192 = icmp ult i8 %191, 10, !dbg !2846
  br i1 %192, label %193, label %439, !dbg !2846

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2847
  br i1 %194, label %195, label %197, !dbg !2851

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2847
  store i8 48, ptr %196, align 1, !dbg !2847, !tbaa !1036
  br label %197, !dbg !2847

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2851
  call void @llvm.dbg.value(metadata i64 %198, metadata !2643, metadata !DIExpression()), !dbg !2695
  %199 = icmp ult i64 %198, %130, !dbg !2852
  br i1 %199, label %200, label %202, !dbg !2855

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2852
  store i8 48, ptr %201, align 1, !dbg !2852, !tbaa !1036
  br label %202, !dbg !2852

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2855
  call void @llvm.dbg.value(metadata i64 %203, metadata !2643, metadata !DIExpression()), !dbg !2695
  br label %439, !dbg !2856

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2857

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2858

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2859

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2861

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2863
  %210 = icmp ult i64 %209, %153, !dbg !2864
  br i1 %210, label %211, label %439, !dbg !2865

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2866
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2867
  %214 = load i8, ptr %213, align 1, !dbg !2867, !tbaa !1036
  %215 = icmp eq i8 %214, 63, !dbg !2868
  br i1 %215, label %216, label %439, !dbg !2869

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2870
  %218 = load i8, ptr %217, align 1, !dbg !2870, !tbaa !1036
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
  ], !dbg !2871

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2872

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !2664, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %209, metadata !2657, metadata !DIExpression()), !dbg !2784
  %221 = icmp ult i64 %124, %130, !dbg !2874
  br i1 %221, label %222, label %224, !dbg !2877

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2874
  store i8 63, ptr %223, align 1, !dbg !2874, !tbaa !1036
  br label %224, !dbg !2874

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2877
  call void @llvm.dbg.value(metadata i64 %225, metadata !2643, metadata !DIExpression()), !dbg !2695
  %226 = icmp ult i64 %225, %130, !dbg !2878
  br i1 %226, label %227, label %229, !dbg !2881

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2878
  store i8 34, ptr %228, align 1, !dbg !2878, !tbaa !1036
  br label %229, !dbg !2878

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %230, metadata !2643, metadata !DIExpression()), !dbg !2695
  %231 = icmp ult i64 %230, %130, !dbg !2882
  br i1 %231, label %232, label %234, !dbg !2885

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2882
  store i8 34, ptr %233, align 1, !dbg !2882, !tbaa !1036
  br label %234, !dbg !2882

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %235, metadata !2643, metadata !DIExpression()), !dbg !2695
  %236 = icmp ult i64 %235, %130, !dbg !2886
  br i1 %236, label %237, label %239, !dbg !2889

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2886
  store i8 63, ptr %238, align 1, !dbg !2886, !tbaa !1036
  br label %239, !dbg !2886

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2889
  call void @llvm.dbg.value(metadata i64 %240, metadata !2643, metadata !DIExpression()), !dbg !2695
  br label %439, !dbg !2890

241:                                              ; preds = %152
  br label %251, !dbg !2891

242:                                              ; preds = %152
  br label %251, !dbg !2892

243:                                              ; preds = %152
  br label %249, !dbg !2893

244:                                              ; preds = %152
  br label %249, !dbg !2894

245:                                              ; preds = %152
  br label %251, !dbg !2895

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2896

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2897

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2900

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2902
  call void @llvm.dbg.label(metadata !2689), !dbg !2903
  br i1 %119, label %621, label %251, !dbg !2904

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2902
  call void @llvm.dbg.label(metadata !2691), !dbg !2906
  br i1 %109, label %493, label %450, !dbg !2907

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2908

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2909, !tbaa !1036
  %256 = icmp eq i8 %255, 0, !dbg !2911
  br i1 %256, label %257, label %439, !dbg !2912

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2913
  br i1 %258, label %259, label %439, !dbg !2915

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2663, metadata !DIExpression()), !dbg !2793
  br label %260, !dbg !2916

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2663, metadata !DIExpression()), !dbg !2793
  br i1 %116, label %262, label %439, !dbg !2917

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2919

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2649, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 1, metadata !2663, metadata !DIExpression()), !dbg !2793
  br i1 %116, label %264, label %439, !dbg !2920

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2921

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2924
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2926
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2926
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2926
  call void @llvm.dbg.value(metadata i64 %270, metadata !2634, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %269, metadata !2644, metadata !DIExpression()), !dbg !2695
  %271 = icmp ult i64 %124, %270, !dbg !2927
  br i1 %271, label %272, label %274, !dbg !2930

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2927
  store i8 39, ptr %273, align 1, !dbg !2927, !tbaa !1036
  br label %274, !dbg !2927

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2930
  call void @llvm.dbg.value(metadata i64 %275, metadata !2643, metadata !DIExpression()), !dbg !2695
  %276 = icmp ult i64 %275, %270, !dbg !2931
  br i1 %276, label %277, label %279, !dbg !2934

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2931
  store i8 92, ptr %278, align 1, !dbg !2931, !tbaa !1036
  br label %279, !dbg !2931

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2934
  call void @llvm.dbg.value(metadata i64 %280, metadata !2643, metadata !DIExpression()), !dbg !2695
  %281 = icmp ult i64 %280, %270, !dbg !2935
  br i1 %281, label %282, label %284, !dbg !2938

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2935
  store i8 39, ptr %283, align 1, !dbg !2935, !tbaa !1036
  br label %284, !dbg !2935

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2938
  call void @llvm.dbg.value(metadata i64 %285, metadata !2643, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 0, metadata !2651, metadata !DIExpression()), !dbg !2695
  br label %439, !dbg !2939

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2940

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !2665, metadata !DIExpression()), !dbg !2941
  %288 = tail call ptr @__ctype_b_loc() #43, !dbg !2942
  %289 = load ptr, ptr %288, align 8, !dbg !2942, !tbaa !956
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2942
  %292 = load i16, ptr %291, align 2, !dbg !2942, !tbaa !1068
  %293 = and i16 %292, 16384, !dbg !2942
  %294 = icmp ne i16 %293, 0, !dbg !2944
  call void @llvm.dbg.value(metadata i1 %294, metadata !2668, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2941
  br label %337, !dbg !2945

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !2946
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2669, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata ptr %14, metadata !2721, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata ptr %14, metadata !2729, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i32 0, metadata !2732, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i64 8, metadata !2733, metadata !DIExpression()), !dbg !2950
  store i64 0, ptr %14, align 8, !dbg !2952
  call void @llvm.dbg.value(metadata i64 0, metadata !2665, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 1, metadata !2668, metadata !DIExpression()), !dbg !2941
  %296 = icmp eq i64 %153, -1, !dbg !2953
  br i1 %296, label %297, label %299, !dbg !2955

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2956
  call void @llvm.dbg.value(metadata i64 %298, metadata !2636, metadata !DIExpression()), !dbg !2695
  br label %299, !dbg !2957

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !2793
  call void @llvm.dbg.value(metadata i64 %300, metadata !2636, metadata !DIExpression()), !dbg !2695
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !2958
  %301 = sub i64 %300, %129, !dbg !2959
  call void @llvm.dbg.value(metadata ptr %15, metadata !2672, metadata !DIExpression(DW_OP_deref)), !dbg !2960
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #40, !dbg !2961
  call void @llvm.dbg.value(metadata i64 %302, metadata !2676, metadata !DIExpression()), !dbg !2960
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2962

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !2665, metadata !DIExpression()), !dbg !2941
  %304 = icmp ugt i64 %300, %129, !dbg !2963
  br i1 %304, label %306, label %332, !dbg !2965

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !2668, metadata !DIExpression()), !dbg !2941
  br label %332, !dbg !2966

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !2665, metadata !DIExpression()), !dbg !2941
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2968
  %310 = load i8, ptr %309, align 1, !dbg !2968, !tbaa !1036
  %311 = icmp eq i8 %310, 0, !dbg !2965
  br i1 %311, label %332, label %312, !dbg !2969

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2970
  call void @llvm.dbg.value(metadata i64 %313, metadata !2665, metadata !DIExpression()), !dbg !2941
  %314 = add i64 %313, %129, !dbg !2971
  %315 = icmp eq i64 %313, %301, !dbg !2963
  br i1 %315, label %332, label %306, !dbg !2965, !llvm.loop !2972

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2973
  %319 = and i1 %318, %110, !dbg !2973
  call void @llvm.dbg.value(metadata i64 1, metadata !2677, metadata !DIExpression()), !dbg !2974
  br i1 %319, label %320, label %328, !dbg !2973

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2677, metadata !DIExpression()), !dbg !2974
  %322 = add i64 %321, %129, !dbg !2975
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2977
  %324 = load i8, ptr %323, align 1, !dbg !2977, !tbaa !1036
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2978

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2979
  call void @llvm.dbg.value(metadata i64 %326, metadata !2677, metadata !DIExpression()), !dbg !2974
  %327 = icmp eq i64 %326, %302, !dbg !2980
  br i1 %327, label %328, label %320, !dbg !2981, !llvm.loop !2982

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2984, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %329, metadata !2672, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i32 %329, metadata !2986, metadata !DIExpression()), !dbg !2994
  %330 = call i32 @iswprint(i32 noundef %329) #40, !dbg !2996
  %331 = icmp ne i32 %330, 0, !dbg !2997
  call void @llvm.dbg.value(metadata i8 poison, metadata !2668, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i64 %302, metadata !2665, metadata !DIExpression()), !dbg !2941
  br label %332, !dbg !2998

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2668, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i64 %333, metadata !2665, metadata !DIExpression()), !dbg !2941
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2999
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3000
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2668, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i64 0, metadata !2665, metadata !DIExpression()), !dbg !2941
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2999
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3000
  call void @llvm.dbg.label(metadata !2694), !dbg !3001
  %336 = select i1 %109, i32 4, i32 2, !dbg !3002
  br label %626, !dbg !3002

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !2793
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !3004
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2668, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i64 %339, metadata !2665, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i64 %338, metadata !2636, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i1 %340, metadata !2663, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2793
  %341 = icmp ult i64 %339, 2, !dbg !3005
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !3006
  br i1 %343, label %439, label %344, !dbg !3006

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !3007
  call void @llvm.dbg.value(metadata i64 %345, metadata !2685, metadata !DIExpression()), !dbg !3008
  br label %346, !dbg !3009

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2695
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !2784
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !3010
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !2793
  call void @llvm.dbg.value(metadata i8 %352, metadata !2664, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %351, metadata !2662, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 poison, metadata !2659, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %349, metadata !2657, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i8 poison, metadata !2651, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %347, metadata !2643, metadata !DIExpression()), !dbg !2695
  br i1 %342, label %397, label %353, !dbg !3011

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !3016

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !2662, metadata !DIExpression()), !dbg !2793
  %355 = select i1 %111, i1 true, i1 %348, !dbg !3019
  br i1 %355, label %372, label %356, !dbg !3019

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !3021
  br i1 %357, label %358, label %360, !dbg !3025

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3021
  store i8 39, ptr %359, align 1, !dbg !3021, !tbaa !1036
  br label %360, !dbg !3021

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !3025
  call void @llvm.dbg.value(metadata i64 %361, metadata !2643, metadata !DIExpression()), !dbg !2695
  %362 = icmp ult i64 %361, %130, !dbg !3026
  br i1 %362, label %363, label %365, !dbg !3029

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !3026
  store i8 36, ptr %364, align 1, !dbg !3026, !tbaa !1036
  br label %365, !dbg !3026

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !3029
  call void @llvm.dbg.value(metadata i64 %366, metadata !2643, metadata !DIExpression()), !dbg !2695
  %367 = icmp ult i64 %366, %130, !dbg !3030
  br i1 %367, label %368, label %370, !dbg !3033

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !3030
  store i8 39, ptr %369, align 1, !dbg !3030, !tbaa !1036
  br label %370, !dbg !3030

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !3033
  call void @llvm.dbg.value(metadata i64 %371, metadata !2643, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 1, metadata !2651, metadata !DIExpression()), !dbg !2695
  br label %372, !dbg !3034

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2695
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2651, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %373, metadata !2643, metadata !DIExpression()), !dbg !2695
  %375 = icmp ult i64 %373, %130, !dbg !3035
  br i1 %375, label %376, label %378, !dbg !3038

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !3035
  store i8 92, ptr %377, align 1, !dbg !3035, !tbaa !1036
  br label %378, !dbg !3035

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !3038
  call void @llvm.dbg.value(metadata i64 %379, metadata !2643, metadata !DIExpression()), !dbg !2695
  %380 = icmp ult i64 %379, %130, !dbg !3039
  br i1 %380, label %381, label %385, !dbg !3042

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !3039
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !3039
  store i8 %383, ptr %384, align 1, !dbg !3039, !tbaa !1036
  br label %385, !dbg !3039

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !3042
  call void @llvm.dbg.value(metadata i64 %386, metadata !2643, metadata !DIExpression()), !dbg !2695
  %387 = icmp ult i64 %386, %130, !dbg !3043
  br i1 %387, label %388, label %393, !dbg !3046

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !3043
  %391 = or i8 %390, 48, !dbg !3043
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3043
  store i8 %391, ptr %392, align 1, !dbg !3043, !tbaa !1036
  br label %393, !dbg !3043

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !3046
  call void @llvm.dbg.value(metadata i64 %394, metadata !2643, metadata !DIExpression()), !dbg !2695
  %395 = and i8 %352, 7, !dbg !3047
  %396 = or i8 %395, 48, !dbg !3048
  call void @llvm.dbg.value(metadata i8 %396, metadata !2664, metadata !DIExpression()), !dbg !2793
  br label %404, !dbg !3049

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !3050

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !3051
  br i1 %399, label %400, label %402, !dbg !3056

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3051
  store i8 92, ptr %401, align 1, !dbg !3051, !tbaa !1036
  br label %402, !dbg !3051

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !3056
  call void @llvm.dbg.value(metadata i64 %403, metadata !2643, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 0, metadata !2659, metadata !DIExpression()), !dbg !2793
  br label %404, !dbg !3057

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2695
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !2793
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !2793
  call void @llvm.dbg.value(metadata i8 %409, metadata !2664, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %408, metadata !2662, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 poison, metadata !2659, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 poison, metadata !2651, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %405, metadata !2643, metadata !DIExpression()), !dbg !2695
  %410 = add i64 %349, 1, !dbg !3058
  %411 = icmp ugt i64 %345, %410, !dbg !3060
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !3061

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !3062
  %415 = select i1 %406, i1 %414, i1 false, !dbg !3062
  br i1 %415, label %416, label %427, !dbg !3062

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !3065
  br i1 %417, label %418, label %420, !dbg !3069

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !3065
  store i8 39, ptr %419, align 1, !dbg !3065, !tbaa !1036
  br label %420, !dbg !3065

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !3069
  call void @llvm.dbg.value(metadata i64 %421, metadata !2643, metadata !DIExpression()), !dbg !2695
  %422 = icmp ult i64 %421, %130, !dbg !3070
  br i1 %422, label %423, label %425, !dbg !3073

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !3070
  store i8 39, ptr %424, align 1, !dbg !3070, !tbaa !1036
  br label %425, !dbg !3070

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !3073
  call void @llvm.dbg.value(metadata i64 %426, metadata !2643, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 0, metadata !2651, metadata !DIExpression()), !dbg !2695
  br label %427, !dbg !3074

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !3075
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2651, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %428, metadata !2643, metadata !DIExpression()), !dbg !2695
  %430 = icmp ult i64 %428, %130, !dbg !3076
  br i1 %430, label %431, label %433, !dbg !3079

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !3076
  store i8 %409, ptr %432, align 1, !dbg !3076, !tbaa !1036
  br label %433, !dbg !3076

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !3079
  call void @llvm.dbg.value(metadata i64 %434, metadata !2643, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %410, metadata !2657, metadata !DIExpression()), !dbg !2784
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !3080
  %436 = load i8, ptr %435, align 1, !dbg !3080, !tbaa !1036
  call void @llvm.dbg.value(metadata i8 %436, metadata !2664, metadata !DIExpression()), !dbg !2793
  br label %346, !dbg !3081, !llvm.loop !3082

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !2664, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i1 %340, metadata !2663, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %408, metadata !2662, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 poison, metadata !2659, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %349, metadata !2657, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i8 poison, metadata !2651, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %405, metadata !2643, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %338, metadata !2636, metadata !DIExpression()), !dbg !2695
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !3085
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2695
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !2699
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !2784
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !2793
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !2634, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 %448, metadata !2664, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 poison, metadata !2663, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 poison, metadata !2662, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 poison, metadata !2659, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %445, metadata !2657, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i8 poison, metadata !2651, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 poison, metadata !2649, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %442, metadata !2644, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %441, metadata !2643, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %440, metadata !2636, metadata !DIExpression()), !dbg !2695
  br i1 %112, label %461, label %450, !dbg !3086

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
  br i1 %121, label %462, label %482, !dbg !3088

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !3089

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
  %473 = lshr i8 %464, 5, !dbg !3090
  %474 = zext i8 %473 to i64, !dbg !3090
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !3091
  %476 = load i32, ptr %475, align 4, !dbg !3091, !tbaa !1027
  %477 = and i8 %464, 31, !dbg !3092
  %478 = zext i8 %477 to i32, !dbg !3092
  %479 = shl nuw i32 1, %478, !dbg !3093
  %480 = and i32 %476, %479, !dbg !3093
  %481 = icmp eq i32 %480, 0, !dbg !3093
  br i1 %481, label %482, label %493, !dbg !3094

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
  br i1 %154, label %493, label %529, !dbg !3095

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !3085
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2695
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !2699
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !3096
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !2793
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !2634, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 %501, metadata !2664, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 poison, metadata !2663, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %499, metadata !2657, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i8 poison, metadata !2651, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 poison, metadata !2649, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %496, metadata !2644, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %495, metadata !2643, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %494, metadata !2636, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.label(metadata !2692), !dbg !3097
  br i1 %110, label %621, label %503, !dbg !3098

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !2662, metadata !DIExpression()), !dbg !2793
  %504 = select i1 %111, i1 true, i1 %498, !dbg !3100
  br i1 %504, label %521, label %505, !dbg !3100

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !3102
  br i1 %506, label %507, label %509, !dbg !3106

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !3102
  store i8 39, ptr %508, align 1, !dbg !3102, !tbaa !1036
  br label %509, !dbg !3102

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !3106
  call void @llvm.dbg.value(metadata i64 %510, metadata !2643, metadata !DIExpression()), !dbg !2695
  %511 = icmp ult i64 %510, %502, !dbg !3107
  br i1 %511, label %512, label %514, !dbg !3110

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !3107
  store i8 36, ptr %513, align 1, !dbg !3107, !tbaa !1036
  br label %514, !dbg !3107

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %515, metadata !2643, metadata !DIExpression()), !dbg !2695
  %516 = icmp ult i64 %515, %502, !dbg !3111
  br i1 %516, label %517, label %519, !dbg !3114

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !3111
  store i8 39, ptr %518, align 1, !dbg !3111, !tbaa !1036
  br label %519, !dbg !3111

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !3114
  call void @llvm.dbg.value(metadata i64 %520, metadata !2643, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 1, metadata !2651, metadata !DIExpression()), !dbg !2695
  br label %521, !dbg !3115

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !2793
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2651, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %522, metadata !2643, metadata !DIExpression()), !dbg !2695
  %524 = icmp ult i64 %522, %502, !dbg !3116
  br i1 %524, label %525, label %527, !dbg !3119

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3116
  store i8 92, ptr %526, align 1, !dbg !3116, !tbaa !1036
  br label %527, !dbg !3116

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !3119
  call void @llvm.dbg.value(metadata i64 %502, metadata !2634, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 %501, metadata !2664, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 poison, metadata !2663, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 poison, metadata !2662, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %499, metadata !2657, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i8 poison, metadata !2651, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 poison, metadata !2649, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %496, metadata !2644, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %528, metadata !2643, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %494, metadata !2636, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.label(metadata !2693), !dbg !3120
  br label %553, !dbg !3121

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !3085
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2695
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !2699
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !3096
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !3124
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !2634, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 %538, metadata !2664, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 poison, metadata !2663, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 poison, metadata !2662, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %535, metadata !2657, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i8 poison, metadata !2651, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 poison, metadata !2649, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %532, metadata !2644, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %531, metadata !2643, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %530, metadata !2636, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.label(metadata !2693), !dbg !3120
  %540 = xor i1 %534, true, !dbg !3121
  %541 = select i1 %540, i1 true, i1 %536, !dbg !3121
  br i1 %541, label %553, label %542, !dbg !3121

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !3125
  br i1 %543, label %544, label %546, !dbg !3129

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !3125
  store i8 39, ptr %545, align 1, !dbg !3125, !tbaa !1036
  br label %546, !dbg !3125

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !3129
  call void @llvm.dbg.value(metadata i64 %547, metadata !2643, metadata !DIExpression()), !dbg !2695
  %548 = icmp ult i64 %547, %539, !dbg !3130
  br i1 %548, label %549, label %551, !dbg !3133

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !3130
  store i8 39, ptr %550, align 1, !dbg !3130, !tbaa !1036
  br label %551, !dbg !3130

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !3133
  call void @llvm.dbg.value(metadata i64 %552, metadata !2643, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 0, metadata !2651, metadata !DIExpression()), !dbg !2695
  br label %553, !dbg !3134

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !2793
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2651, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %561, metadata !2643, metadata !DIExpression()), !dbg !2695
  %563 = icmp ult i64 %561, %554, !dbg !3135
  br i1 %563, label %564, label %566, !dbg !3138

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !3135
  store i8 %555, ptr %565, align 1, !dbg !3135, !tbaa !1036
  br label %566, !dbg !3135

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3138
  call void @llvm.dbg.value(metadata i64 %567, metadata !2643, metadata !DIExpression()), !dbg !2695
  %568 = select i1 %556, i1 %127, i1 false, !dbg !3139
  call void @llvm.dbg.value(metadata i8 poison, metadata !2650, metadata !DIExpression()), !dbg !2695
  br label %569, !dbg !3140

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !3085
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2695
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !2699
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !3096
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !2634, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %576, metadata !2657, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i8 poison, metadata !2651, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 poison, metadata !2650, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 poison, metadata !2649, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %572, metadata !2644, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %571, metadata !2643, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %570, metadata !2636, metadata !DIExpression()), !dbg !2695
  %578 = add i64 %576, 1, !dbg !3141
  call void @llvm.dbg.value(metadata i64 %578, metadata !2657, metadata !DIExpression()), !dbg !2784
  br label %122, !dbg !3142, !llvm.loop !3143

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !2634, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 poison, metadata !2650, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 poison, metadata !2649, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %125, metadata !2644, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %124, metadata !2643, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %123, metadata !2636, metadata !DIExpression()), !dbg !2695
  %580 = icmp ne i64 %124, 0, !dbg !3145
  %581 = xor i1 %110, true, !dbg !3147
  %582 = or i1 %580, %581, !dbg !3147
  %583 = or i1 %582, %111, !dbg !3147
  br i1 %583, label %584, label %621, !dbg !3147

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !3148
  %586 = xor i1 %126, true, !dbg !3148
  %587 = select i1 %585, i1 true, i1 %586, !dbg !3148
  br i1 %587, label %595, label %588, !dbg !3148

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !3150

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !3152
  br label %636, !dbg !3154

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !3155
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !3157
  br i1 %594, label %27, label %595, !dbg !3157

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !3158
  %598 = or i1 %597, %596, !dbg !3160
  br i1 %598, label %614, label %599, !dbg !3160

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !2645, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %124, metadata !2643, metadata !DIExpression()), !dbg !2695
  %600 = load i8, ptr %107, align 1, !dbg !3161, !tbaa !1036
  %601 = icmp eq i8 %600, 0, !dbg !3164
  br i1 %601, label %614, label %602, !dbg !3164

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !2645, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %605, metadata !2643, metadata !DIExpression()), !dbg !2695
  %606 = icmp ult i64 %605, %130, !dbg !3165
  br i1 %606, label %607, label %609, !dbg !3168

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !3165
  store i8 %603, ptr %608, align 1, !dbg !3165, !tbaa !1036
  br label %609, !dbg !3165

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !3168
  call void @llvm.dbg.value(metadata i64 %610, metadata !2643, metadata !DIExpression()), !dbg !2695
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !3169
  call void @llvm.dbg.value(metadata ptr %611, metadata !2645, metadata !DIExpression()), !dbg !2695
  %612 = load i8, ptr %611, align 1, !dbg !3161, !tbaa !1036
  %613 = icmp eq i8 %612, 0, !dbg !3164
  br i1 %613, label %614, label %602, !dbg !3164, !llvm.loop !3170

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !2771
  call void @llvm.dbg.value(metadata i64 %615, metadata !2643, metadata !DIExpression()), !dbg !2695
  %616 = icmp ult i64 %615, %130, !dbg !3172
  br i1 %616, label %617, label %636, !dbg !3174

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !3175
  store i8 0, ptr %618, align 1, !dbg !3176, !tbaa !1036
  br label %636, !dbg !3175

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2694), !dbg !3001
  %620 = icmp eq i32 %103, 2, !dbg !3177
  br i1 %620, label %626, label %630, !dbg !3002

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2694), !dbg !3001
  %624 = icmp eq i32 %103, 2, !dbg !3177
  %625 = select i1 %109, i32 4, i32 2, !dbg !3002
  br i1 %624, label %626, label %630, !dbg !3002

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !3002

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !2637, metadata !DIExpression()), !dbg !2695
  %634 = and i32 %5, -3, !dbg !3178
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !3179
  br label %636, !dbg !3180

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !3181
}

; Function Attrs: nounwind
declare !dbg !3182 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3185 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3188 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3190 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3194, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i64 %1, metadata !3195, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata ptr %2, metadata !3196, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata ptr %0, metadata !3198, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i64 %1, metadata !3203, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata ptr null, metadata !3204, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata ptr %2, metadata !3205, metadata !DIExpression()), !dbg !3211
  %4 = icmp eq ptr %2, null, !dbg !3213
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3213
  call void @llvm.dbg.value(metadata ptr %5, metadata !3206, metadata !DIExpression()), !dbg !3211
  %6 = tail call ptr @__errno_location() #43, !dbg !3214
  %7 = load i32, ptr %6, align 4, !dbg !3214, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %7, metadata !3207, metadata !DIExpression()), !dbg !3211
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3215
  %9 = load i32, ptr %8, align 4, !dbg !3215, !tbaa !2577
  %10 = or i32 %9, 1, !dbg !3216
  call void @llvm.dbg.value(metadata i32 %10, metadata !3208, metadata !DIExpression()), !dbg !3211
  %11 = load i32, ptr %5, align 8, !dbg !3217, !tbaa !2527
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3218
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3219
  %14 = load ptr, ptr %13, align 8, !dbg !3219, !tbaa !2598
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3220
  %16 = load ptr, ptr %15, align 8, !dbg !3220, !tbaa !2601
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3221
  %18 = add i64 %17, 1, !dbg !3222
  call void @llvm.dbg.value(metadata i64 %18, metadata !3209, metadata !DIExpression()), !dbg !3211
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #47, !dbg !3223
  call void @llvm.dbg.value(metadata ptr %19, metadata !3210, metadata !DIExpression()), !dbg !3211
  %20 = load i32, ptr %5, align 8, !dbg !3224, !tbaa !2527
  %21 = load ptr, ptr %13, align 8, !dbg !3225, !tbaa !2598
  %22 = load ptr, ptr %15, align 8, !dbg !3226, !tbaa !2601
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3227
  store i32 %7, ptr %6, align 4, !dbg !3228, !tbaa !1027
  ret ptr %19, !dbg !3229
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3199 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3198, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %1, metadata !3203, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %2, metadata !3204, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %3, metadata !3205, metadata !DIExpression()), !dbg !3230
  %5 = icmp eq ptr %3, null, !dbg !3231
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3231
  call void @llvm.dbg.value(metadata ptr %6, metadata !3206, metadata !DIExpression()), !dbg !3230
  %7 = tail call ptr @__errno_location() #43, !dbg !3232
  %8 = load i32, ptr %7, align 4, !dbg !3232, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %8, metadata !3207, metadata !DIExpression()), !dbg !3230
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3233
  %10 = load i32, ptr %9, align 4, !dbg !3233, !tbaa !2577
  %11 = icmp eq ptr %2, null, !dbg !3234
  %12 = zext i1 %11 to i32, !dbg !3234
  %13 = or i32 %10, %12, !dbg !3235
  call void @llvm.dbg.value(metadata i32 %13, metadata !3208, metadata !DIExpression()), !dbg !3230
  %14 = load i32, ptr %6, align 8, !dbg !3236, !tbaa !2527
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3237
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3238
  %17 = load ptr, ptr %16, align 8, !dbg !3238, !tbaa !2598
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3239
  %19 = load ptr, ptr %18, align 8, !dbg !3239, !tbaa !2601
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3240
  %21 = add i64 %20, 1, !dbg !3241
  call void @llvm.dbg.value(metadata i64 %21, metadata !3209, metadata !DIExpression()), !dbg !3230
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #47, !dbg !3242
  call void @llvm.dbg.value(metadata ptr %22, metadata !3210, metadata !DIExpression()), !dbg !3230
  %23 = load i32, ptr %6, align 8, !dbg !3243, !tbaa !2527
  %24 = load ptr, ptr %16, align 8, !dbg !3244, !tbaa !2598
  %25 = load ptr, ptr %18, align 8, !dbg !3245, !tbaa !2601
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3246
  store i32 %8, ptr %7, align 4, !dbg !3247, !tbaa !1027
  br i1 %11, label %28, label %27, !dbg !3248

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3249, !tbaa !1867
  br label %28, !dbg !3251

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3252
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3253 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3258, !tbaa !956
  call void @llvm.dbg.value(metadata ptr %1, metadata !3255, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i32 1, metadata !3256, metadata !DIExpression()), !dbg !3260
  %2 = load i32, ptr @nslots, align 4, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 1, metadata !3256, metadata !DIExpression()), !dbg !3260
  %3 = icmp sgt i32 %2, 1, !dbg !3261
  br i1 %3, label %4, label %6, !dbg !3263

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3261
  br label %10, !dbg !3263

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3264
  %8 = load ptr, ptr %7, align 8, !dbg !3264, !tbaa !3266
  %9 = icmp eq ptr %8, @slot0, !dbg !3268
  br i1 %9, label %17, label %16, !dbg !3269

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3256, metadata !DIExpression()), !dbg !3260
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3270
  %13 = load ptr, ptr %12, align 8, !dbg !3270, !tbaa !3266
  tail call void @free(ptr noundef %13) #40, !dbg !3271
  %14 = add nuw nsw i64 %11, 1, !dbg !3272
  call void @llvm.dbg.value(metadata i64 %14, metadata !3256, metadata !DIExpression()), !dbg !3260
  %15 = icmp eq i64 %14, %5, !dbg !3261
  br i1 %15, label %6, label %10, !dbg !3263, !llvm.loop !3273

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !3275
  store i64 256, ptr @slotvec0, align 8, !dbg !3277, !tbaa !3278
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3279, !tbaa !3266
  br label %17, !dbg !3280

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3281
  br i1 %18, label %20, label %19, !dbg !3283

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !3284
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3286, !tbaa !956
  br label %20, !dbg !3287

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3288, !tbaa !1027
  ret void, !dbg !3289
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3290 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3292, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata ptr %1, metadata !3293, metadata !DIExpression()), !dbg !3294
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3295
  ret ptr %3, !dbg !3296
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3297 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3301, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata ptr %1, metadata !3302, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %2, metadata !3303, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata ptr %3, metadata !3304, metadata !DIExpression()), !dbg !3317
  %6 = tail call ptr @__errno_location() #43, !dbg !3318
  %7 = load i32, ptr %6, align 4, !dbg !3318, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %7, metadata !3305, metadata !DIExpression()), !dbg !3317
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3319, !tbaa !956
  call void @llvm.dbg.value(metadata ptr %8, metadata !3306, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3307, metadata !DIExpression()), !dbg !3317
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3320
  br i1 %9, label %10, label %11, !dbg !3320

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !3322
  unreachable, !dbg !3322

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3323, !tbaa !1027
  %13 = icmp sgt i32 %12, %0, !dbg !3324
  br i1 %13, label %32, label %14, !dbg !3325

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3326
  call void @llvm.dbg.value(metadata i1 %15, metadata !3308, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3327
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3328
  %16 = sext i32 %12 to i64, !dbg !3329
  call void @llvm.dbg.value(metadata i64 %16, metadata !3311, metadata !DIExpression()), !dbg !3327
  store i64 %16, ptr %5, align 8, !dbg !3330, !tbaa !1867
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3331
  %18 = add nuw nsw i32 %0, 1, !dbg !3332
  %19 = sub i32 %18, %12, !dbg !3333
  %20 = sext i32 %19 to i64, !dbg !3334
  call void @llvm.dbg.value(metadata ptr %5, metadata !3311, metadata !DIExpression(DW_OP_deref)), !dbg !3327
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3335
  call void @llvm.dbg.value(metadata ptr %21, metadata !3306, metadata !DIExpression()), !dbg !3317
  store ptr %21, ptr @slotvec, align 8, !dbg !3336, !tbaa !956
  br i1 %15, label %22, label %23, !dbg !3337

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3338, !tbaa.struct !3340
  br label %23, !dbg !3341

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3342, !tbaa !1027
  %25 = sext i32 %24 to i64, !dbg !3343
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3343
  %27 = load i64, ptr %5, align 8, !dbg !3344, !tbaa !1867
  call void @llvm.dbg.value(metadata i64 %27, metadata !3311, metadata !DIExpression()), !dbg !3327
  %28 = sub nsw i64 %27, %25, !dbg !3345
  %29 = shl i64 %28, 4, !dbg !3346
  call void @llvm.dbg.value(metadata ptr %26, metadata !2729, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i32 0, metadata !2732, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i64 %29, metadata !2733, metadata !DIExpression()), !dbg !3347
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3349
  %30 = load i64, ptr %5, align 8, !dbg !3350, !tbaa !1867
  call void @llvm.dbg.value(metadata i64 %30, metadata !3311, metadata !DIExpression()), !dbg !3327
  %31 = trunc i64 %30 to i32, !dbg !3350
  store i32 %31, ptr @nslots, align 4, !dbg !3351, !tbaa !1027
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3352
  br label %32, !dbg !3353

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3317
  call void @llvm.dbg.value(metadata ptr %33, metadata !3306, metadata !DIExpression()), !dbg !3317
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3354
  %36 = load i64, ptr %35, align 8, !dbg !3355, !tbaa !3278
  call void @llvm.dbg.value(metadata i64 %36, metadata !3312, metadata !DIExpression()), !dbg !3356
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3357
  %38 = load ptr, ptr %37, align 8, !dbg !3357, !tbaa !3266
  call void @llvm.dbg.value(metadata ptr %38, metadata !3314, metadata !DIExpression()), !dbg !3356
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3358
  %40 = load i32, ptr %39, align 4, !dbg !3358, !tbaa !2577
  %41 = or i32 %40, 1, !dbg !3359
  call void @llvm.dbg.value(metadata i32 %41, metadata !3315, metadata !DIExpression()), !dbg !3356
  %42 = load i32, ptr %3, align 8, !dbg !3360, !tbaa !2527
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3361
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3362
  %45 = load ptr, ptr %44, align 8, !dbg !3362, !tbaa !2598
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3363
  %47 = load ptr, ptr %46, align 8, !dbg !3363, !tbaa !2601
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3364
  call void @llvm.dbg.value(metadata i64 %48, metadata !3316, metadata !DIExpression()), !dbg !3356
  %49 = icmp ugt i64 %36, %48, !dbg !3365
  br i1 %49, label %60, label %50, !dbg !3367

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3368
  call void @llvm.dbg.value(metadata i64 %51, metadata !3312, metadata !DIExpression()), !dbg !3356
  store i64 %51, ptr %35, align 8, !dbg !3370, !tbaa !3278
  %52 = icmp eq ptr %38, @slot0, !dbg !3371
  br i1 %52, label %54, label %53, !dbg !3373

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3374
  br label %54, !dbg !3374

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #47, !dbg !3375
  call void @llvm.dbg.value(metadata ptr %55, metadata !3314, metadata !DIExpression()), !dbg !3356
  store ptr %55, ptr %37, align 8, !dbg !3376, !tbaa !3266
  %56 = load i32, ptr %3, align 8, !dbg !3377, !tbaa !2527
  %57 = load ptr, ptr %44, align 8, !dbg !3378, !tbaa !2598
  %58 = load ptr, ptr %46, align 8, !dbg !3379, !tbaa !2601
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3380
  br label %60, !dbg !3381

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3356
  call void @llvm.dbg.value(metadata ptr %61, metadata !3314, metadata !DIExpression()), !dbg !3356
  store i32 %7, ptr %6, align 4, !dbg !3382, !tbaa !1027
  ret ptr %61, !dbg !3383
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3384 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3388, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata ptr %1, metadata !3389, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i64 %2, metadata !3390, metadata !DIExpression()), !dbg !3391
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3392
  ret ptr %4, !dbg !3393
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3394 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3396, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 0, metadata !3292, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr %0, metadata !3293, metadata !DIExpression()), !dbg !3398
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3400
  ret ptr %2, !dbg !3401
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3402 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3406, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i64 %1, metadata !3407, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i32 0, metadata !3388, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata ptr %0, metadata !3389, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i64 %1, metadata !3390, metadata !DIExpression()), !dbg !3409
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3411
  ret ptr %3, !dbg !3412
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3413 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3417, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata i32 %1, metadata !3418, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata ptr %2, metadata !3419, metadata !DIExpression()), !dbg !3421
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3422
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3420, metadata !DIExpression()), !dbg !3423
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3424), !dbg !3427
  call void @llvm.dbg.value(metadata i32 %1, metadata !3428, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3433, metadata !DIExpression()), !dbg !3436
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3436, !alias.scope !3424
  %5 = icmp eq i32 %1, 10, !dbg !3437
  br i1 %5, label %6, label %7, !dbg !3439

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3440, !noalias !3424
  unreachable, !dbg !3440

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3441, !tbaa !2527, !alias.scope !3424
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3442
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3443
  ret ptr %8, !dbg !3444
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3445 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3449, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i32 %1, metadata !3450, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata ptr %2, metadata !3451, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i64 %3, metadata !3452, metadata !DIExpression()), !dbg !3454
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3455
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3453, metadata !DIExpression()), !dbg !3456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3457), !dbg !3460
  call void @llvm.dbg.value(metadata i32 %1, metadata !3428, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3433, metadata !DIExpression()), !dbg !3463
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3463, !alias.scope !3457
  %6 = icmp eq i32 %1, 10, !dbg !3464
  br i1 %6, label %7, label %8, !dbg !3465

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3466, !noalias !3457
  unreachable, !dbg !3466

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3467, !tbaa !2527, !alias.scope !3457
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3468
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3469
  ret ptr %9, !dbg !3470
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3471 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3475, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata ptr %1, metadata !3476, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i32 0, metadata !3417, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i32 %0, metadata !3418, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata ptr %1, metadata !3419, metadata !DIExpression()), !dbg !3478
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3480
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3420, metadata !DIExpression()), !dbg !3481
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3482), !dbg !3485
  call void @llvm.dbg.value(metadata i32 %0, metadata !3428, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3433, metadata !DIExpression()), !dbg !3488
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3488, !alias.scope !3482
  %4 = icmp eq i32 %0, 10, !dbg !3489
  br i1 %4, label %5, label %6, !dbg !3490

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3491, !noalias !3482
  unreachable, !dbg !3491

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3492, !tbaa !2527, !alias.scope !3482
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3493
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3494
  ret ptr %7, !dbg !3495
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3496 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3500, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata ptr %1, metadata !3501, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i64 %2, metadata !3502, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i32 0, metadata !3449, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i32 %0, metadata !3450, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata ptr %1, metadata !3451, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i64 %2, metadata !3452, metadata !DIExpression()), !dbg !3504
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3506
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3453, metadata !DIExpression()), !dbg !3507
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3508), !dbg !3511
  call void @llvm.dbg.value(metadata i32 %0, metadata !3428, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3433, metadata !DIExpression()), !dbg !3514
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3514, !alias.scope !3508
  %5 = icmp eq i32 %0, 10, !dbg !3515
  br i1 %5, label %6, label %7, !dbg !3516

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3517, !noalias !3508
  unreachable, !dbg !3517

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3518, !tbaa !2527, !alias.scope !3508
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3519
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3520
  ret ptr %8, !dbg !3521
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3522 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3526, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i64 %1, metadata !3527, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i8 %2, metadata !3528, metadata !DIExpression()), !dbg !3530
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3531
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3529, metadata !DIExpression()), !dbg !3532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3533, !tbaa.struct !3534
  call void @llvm.dbg.value(metadata ptr %4, metadata !2544, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i8 %2, metadata !2545, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i32 1, metadata !2546, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i8 %2, metadata !2547, metadata !DIExpression()), !dbg !3535
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3537
  %6 = lshr i8 %2, 5, !dbg !3538
  %7 = zext i8 %6 to i64, !dbg !3538
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3539
  call void @llvm.dbg.value(metadata ptr %8, metadata !2548, metadata !DIExpression()), !dbg !3535
  %9 = and i8 %2, 31, !dbg !3540
  %10 = zext i8 %9 to i32, !dbg !3540
  call void @llvm.dbg.value(metadata i32 %10, metadata !2550, metadata !DIExpression()), !dbg !3535
  %11 = load i32, ptr %8, align 4, !dbg !3541, !tbaa !1027
  %12 = lshr i32 %11, %10, !dbg !3542
  call void @llvm.dbg.value(metadata i32 %12, metadata !2551, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3535
  %13 = and i32 %12, 1, !dbg !3543
  %14 = xor i32 %13, 1, !dbg !3543
  %15 = shl nuw i32 %14, %10, !dbg !3544
  %16 = xor i32 %15, %11, !dbg !3545
  store i32 %16, ptr %8, align 4, !dbg !3545, !tbaa !1027
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3546
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3547
  ret ptr %17, !dbg !3548
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3549 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3553, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i8 %1, metadata !3554, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata ptr %0, metadata !3526, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i64 -1, metadata !3527, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i8 %1, metadata !3528, metadata !DIExpression()), !dbg !3556
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3558
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3529, metadata !DIExpression()), !dbg !3559
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3560, !tbaa.struct !3534
  call void @llvm.dbg.value(metadata ptr %3, metadata !2544, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i8 %1, metadata !2545, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i32 1, metadata !2546, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i8 %1, metadata !2547, metadata !DIExpression()), !dbg !3561
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3563
  %5 = lshr i8 %1, 5, !dbg !3564
  %6 = zext i8 %5 to i64, !dbg !3564
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3565
  call void @llvm.dbg.value(metadata ptr %7, metadata !2548, metadata !DIExpression()), !dbg !3561
  %8 = and i8 %1, 31, !dbg !3566
  %9 = zext i8 %8 to i32, !dbg !3566
  call void @llvm.dbg.value(metadata i32 %9, metadata !2550, metadata !DIExpression()), !dbg !3561
  %10 = load i32, ptr %7, align 4, !dbg !3567, !tbaa !1027
  %11 = lshr i32 %10, %9, !dbg !3568
  call void @llvm.dbg.value(metadata i32 %11, metadata !2551, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3561
  %12 = and i32 %11, 1, !dbg !3569
  %13 = xor i32 %12, 1, !dbg !3569
  %14 = shl nuw i32 %13, %9, !dbg !3570
  %15 = xor i32 %14, %10, !dbg !3571
  store i32 %15, ptr %7, align 4, !dbg !3571, !tbaa !1027
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3572
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3573
  ret ptr %16, !dbg !3574
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3575 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3577, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata ptr %0, metadata !3553, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i8 58, metadata !3554, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata ptr %0, metadata !3526, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i64 -1, metadata !3527, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i8 58, metadata !3528, metadata !DIExpression()), !dbg !3581
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3583
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3529, metadata !DIExpression()), !dbg !3584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3585, !tbaa.struct !3534
  call void @llvm.dbg.value(metadata ptr %2, metadata !2544, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i8 58, metadata !2545, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 1, metadata !2546, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i8 58, metadata !2547, metadata !DIExpression()), !dbg !3586
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3588
  call void @llvm.dbg.value(metadata ptr %3, metadata !2548, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 26, metadata !2550, metadata !DIExpression()), !dbg !3586
  %4 = load i32, ptr %3, align 4, !dbg !3589, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %4, metadata !2551, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3586
  %5 = or i32 %4, 67108864, !dbg !3590
  store i32 %5, ptr %3, align 4, !dbg !3590, !tbaa !1027
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3591
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3592
  ret ptr %6, !dbg !3593
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3594 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3596, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i64 %1, metadata !3597, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata ptr %0, metadata !3526, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i64 %1, metadata !3527, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i8 58, metadata !3528, metadata !DIExpression()), !dbg !3599
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3601
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3529, metadata !DIExpression()), !dbg !3602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3603, !tbaa.struct !3534
  call void @llvm.dbg.value(metadata ptr %3, metadata !2544, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i8 58, metadata !2545, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 1, metadata !2546, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i8 58, metadata !2547, metadata !DIExpression()), !dbg !3604
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3606
  call void @llvm.dbg.value(metadata ptr %4, metadata !2548, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 26, metadata !2550, metadata !DIExpression()), !dbg !3604
  %5 = load i32, ptr %4, align 4, !dbg !3607, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %5, metadata !2551, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3604
  %6 = or i32 %5, 67108864, !dbg !3608
  store i32 %6, ptr %4, align 4, !dbg !3608, !tbaa !1027
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3609
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3610
  ret ptr %7, !dbg !3611
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3612 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3433, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3618
  call void @llvm.dbg.value(metadata i32 %0, metadata !3614, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i32 %1, metadata !3615, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata ptr %2, metadata !3616, metadata !DIExpression()), !dbg !3620
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3621
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3617, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32 %1, metadata !3428, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i32 0, metadata !3433, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3623
  %5 = icmp eq i32 %1, 10, !dbg !3624
  br i1 %5, label %6, label %7, !dbg !3625

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3626, !noalias !3627
  unreachable, !dbg !3626

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3433, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3623
  store i32 %1, ptr %4, align 8, !dbg !3630, !tbaa.struct !3534
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3630
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3630
  call void @llvm.dbg.value(metadata ptr %4, metadata !2544, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i8 58, metadata !2545, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i32 1, metadata !2546, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i8 58, metadata !2547, metadata !DIExpression()), !dbg !3631
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3633
  call void @llvm.dbg.value(metadata ptr %9, metadata !2548, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i32 26, metadata !2550, metadata !DIExpression()), !dbg !3631
  %10 = load i32, ptr %9, align 4, !dbg !3634, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %10, metadata !2551, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3631
  %11 = or i32 %10, 67108864, !dbg !3635
  store i32 %11, ptr %9, align 4, !dbg !3635, !tbaa !1027
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3636
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3637
  ret ptr %12, !dbg !3638
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3639 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3643, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata ptr %1, metadata !3644, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata ptr %2, metadata !3645, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata ptr %3, metadata !3646, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i32 %0, metadata !3648, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata ptr %1, metadata !3653, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata ptr %2, metadata !3654, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata ptr %3, metadata !3655, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata i64 -1, metadata !3656, metadata !DIExpression()), !dbg !3658
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3660
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3657, metadata !DIExpression()), !dbg !3661
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3662, !tbaa.struct !3534
  call void @llvm.dbg.value(metadata ptr %5, metadata !2584, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata ptr %1, metadata !2585, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata ptr %2, metadata !2586, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata ptr %5, metadata !2584, metadata !DIExpression()), !dbg !3663
  store i32 10, ptr %5, align 8, !dbg !3665, !tbaa !2527
  %6 = icmp ne ptr %1, null, !dbg !3666
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3667
  br i1 %8, label %10, label %9, !dbg !3667

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3668
  unreachable, !dbg !3668

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3669
  store ptr %1, ptr %11, align 8, !dbg !3670, !tbaa !2598
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3671
  store ptr %2, ptr %12, align 8, !dbg !3672, !tbaa !2601
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3673
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3674
  ret ptr %13, !dbg !3675
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3649 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3648, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata ptr %1, metadata !3653, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata ptr %2, metadata !3654, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata ptr %3, metadata !3655, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i64 %4, metadata !3656, metadata !DIExpression()), !dbg !3676
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3677
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3657, metadata !DIExpression()), !dbg !3678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3679, !tbaa.struct !3534
  call void @llvm.dbg.value(metadata ptr %6, metadata !2584, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata ptr %1, metadata !2585, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata ptr %2, metadata !2586, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata ptr %6, metadata !2584, metadata !DIExpression()), !dbg !3680
  store i32 10, ptr %6, align 8, !dbg !3682, !tbaa !2527
  %7 = icmp ne ptr %1, null, !dbg !3683
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3684
  br i1 %9, label %11, label %10, !dbg !3684

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3685
  unreachable, !dbg !3685

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3686
  store ptr %1, ptr %12, align 8, !dbg !3687, !tbaa !2598
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3688
  store ptr %2, ptr %13, align 8, !dbg !3689, !tbaa !2601
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3690
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3691
  ret ptr %14, !dbg !3692
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3693 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3697, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata ptr %1, metadata !3698, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata ptr %2, metadata !3699, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i32 0, metadata !3643, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata ptr %0, metadata !3644, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata ptr %1, metadata !3645, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata ptr %2, metadata !3646, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i32 0, metadata !3648, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata ptr %0, metadata !3653, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata ptr %1, metadata !3654, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata ptr %2, metadata !3655, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i64 -1, metadata !3656, metadata !DIExpression()), !dbg !3703
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3705
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3657, metadata !DIExpression()), !dbg !3706
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3707, !tbaa.struct !3534
  call void @llvm.dbg.value(metadata ptr %4, metadata !2584, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata ptr %0, metadata !2585, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata ptr %1, metadata !2586, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata ptr %4, metadata !2584, metadata !DIExpression()), !dbg !3708
  store i32 10, ptr %4, align 8, !dbg !3710, !tbaa !2527
  %5 = icmp ne ptr %0, null, !dbg !3711
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3712
  br i1 %7, label %9, label %8, !dbg !3712

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3713
  unreachable, !dbg !3713

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3714
  store ptr %0, ptr %10, align 8, !dbg !3715, !tbaa !2598
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3716
  store ptr %1, ptr %11, align 8, !dbg !3717, !tbaa !2601
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3718
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3719
  ret ptr %12, !dbg !3720
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3721 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3725, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata ptr %1, metadata !3726, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata ptr %2, metadata !3727, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i64 %3, metadata !3728, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i32 0, metadata !3648, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %0, metadata !3653, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %1, metadata !3654, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %2, metadata !3655, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i64 %3, metadata !3656, metadata !DIExpression()), !dbg !3730
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3732
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3657, metadata !DIExpression()), !dbg !3733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3734, !tbaa.struct !3534
  call void @llvm.dbg.value(metadata ptr %5, metadata !2584, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata ptr %0, metadata !2585, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata ptr %1, metadata !2586, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata ptr %5, metadata !2584, metadata !DIExpression()), !dbg !3735
  store i32 10, ptr %5, align 8, !dbg !3737, !tbaa !2527
  %6 = icmp ne ptr %0, null, !dbg !3738
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3739
  br i1 %8, label %10, label %9, !dbg !3739

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3740
  unreachable, !dbg !3740

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3741
  store ptr %0, ptr %11, align 8, !dbg !3742, !tbaa !2598
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3743
  store ptr %1, ptr %12, align 8, !dbg !3744, !tbaa !2601
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3745
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3746
  ret ptr %13, !dbg !3747
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3748 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3752, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata ptr %1, metadata !3753, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 %2, metadata !3754, metadata !DIExpression()), !dbg !3755
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3756
  ret ptr %4, !dbg !3757
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3758 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3762, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i64 %1, metadata !3763, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i32 0, metadata !3752, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata ptr %0, metadata !3753, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i64 %1, metadata !3754, metadata !DIExpression()), !dbg !3765
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3767
  ret ptr %3, !dbg !3768
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3769 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3773, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata ptr %1, metadata !3774, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i32 %0, metadata !3752, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata ptr %1, metadata !3753, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 -1, metadata !3754, metadata !DIExpression()), !dbg !3776
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3778
  ret ptr %3, !dbg !3779
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3780 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3784, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i32 0, metadata !3773, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata ptr %0, metadata !3774, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata i32 0, metadata !3752, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata ptr %0, metadata !3753, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i64 -1, metadata !3754, metadata !DIExpression()), !dbg !3788
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3790
  ret ptr %2, !dbg !3791
}

; Function Attrs: nounwind uwtable
define dso_local i32 @str2sig(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 !dbg !3792 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3796, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata ptr %1, metadata !3797, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata ptr %0, metadata !3799, metadata !DIExpression()), !dbg !3820
  %6 = load i8, ptr %0, align 1, !dbg !3822, !tbaa !1036
  %7 = zext i8 %6 to i32, !dbg !3822
  %8 = add nsw i32 %7, -48, !dbg !3822
  %9 = icmp ult i32 %8, 10, !dbg !3822
  br i1 %9, label %10, label %18, !dbg !3823

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #40, !dbg !3824
  call void @llvm.dbg.value(metadata ptr %3, metadata !3802, metadata !DIExpression(DW_OP_deref)), !dbg !3825
  %11 = call i64 @strtol(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 10) #40, !dbg !3826
  call void @llvm.dbg.value(metadata i64 %11, metadata !3805, metadata !DIExpression()), !dbg !3825
  %12 = load ptr, ptr %3, align 8, !dbg !3827, !tbaa !956
  call void @llvm.dbg.value(metadata ptr %12, metadata !3802, metadata !DIExpression()), !dbg !3825
  %13 = load i8, ptr %12, align 1, !dbg !3829, !tbaa !1036
  %14 = icmp ne i8 %13, 0, !dbg !3829
  %15 = icmp sgt i64 %11, 64
  %16 = select i1 %14, i1 true, i1 %15, !dbg !3830
  %17 = trunc i64 %11 to i32, !dbg !3830
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40, !dbg !3831
  br i1 %16, label %74, label %75

18:                                               ; preds = %2, %23
  %19 = phi i64 [ %24, %23 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !3806, metadata !DIExpression()), !dbg !3832
  %20 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %19, i32 1, !dbg !3833
  call void @llvm.dbg.value(metadata ptr %20, metadata !3836, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata ptr %0, metadata !3839, metadata !DIExpression()), !dbg !3840
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !3842
  %22 = icmp eq i32 %21, 0, !dbg !3843
  br i1 %22, label %26, label %23, !dbg !3844

23:                                               ; preds = %18
  %24 = add nuw nsw i64 %19, 1, !dbg !3845
  call void @llvm.dbg.value(metadata i64 %24, metadata !3806, metadata !DIExpression()), !dbg !3832
  %25 = icmp eq i64 %24, 35, !dbg !3846
  br i1 %25, label %30, label %18, !dbg !3847, !llvm.loop !3848

26:                                               ; preds = %18
  %27 = and i64 %19, 4294967295, !dbg !3850
  %28 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %27, !dbg !3851
  %29 = load i32, ptr %28, align 4, !dbg !3852, !tbaa !3853
  br label %75

30:                                               ; preds = %23
  %31 = tail call i32 @__libc_current_sigrtmin() #40, !dbg !3855
  call void @llvm.dbg.value(metadata i32 %31, metadata !3809, metadata !DIExpression()), !dbg !3856
  %32 = tail call i32 @__libc_current_sigrtmax() #40, !dbg !3857
  call void @llvm.dbg.value(metadata i32 %32, metadata !3811, metadata !DIExpression()), !dbg !3856
  %33 = icmp sgt i32 %31, 0, !dbg !3858
  br i1 %33, label %34, label %53, !dbg !3859

34:                                               ; preds = %30
  %35 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.101, i64 noundef 5) #41, !dbg !3860
  %36 = icmp eq i32 %35, 0, !dbg !3861
  br i1 %36, label %37, label %53, !dbg !3862

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !3863
  %38 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !3864
  call void @llvm.dbg.value(metadata ptr %4, metadata !3812, metadata !DIExpression(DW_OP_deref)), !dbg !3865
  %39 = call i64 @strtol(ptr noundef nonnull %38, ptr noundef nonnull %4, i32 noundef 10) #40, !dbg !3866
  call void @llvm.dbg.value(metadata i64 %39, metadata !3815, metadata !DIExpression()), !dbg !3865
  %40 = load ptr, ptr %4, align 8, !dbg !3867, !tbaa !956
  call void @llvm.dbg.value(metadata ptr %40, metadata !3812, metadata !DIExpression()), !dbg !3865
  %41 = load i8, ptr %40, align 1, !dbg !3869, !tbaa !1036
  %42 = icmp eq i8 %41, 0, !dbg !3869
  %43 = icmp sgt i64 %39, -1
  %44 = select i1 %42, i1 %43, i1 false, !dbg !3870
  br i1 %44, label %45, label %49, !dbg !3870

45:                                               ; preds = %37
  %46 = sub nsw i32 %32, %31, !dbg !3871
  %47 = sext i32 %46 to i64, !dbg !3872
  %48 = icmp sgt i64 %39, %47, !dbg !3873
  br i1 %48, label %49, label %50, !dbg !3874

49:                                               ; preds = %45, %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !3875
  br label %74

50:                                               ; preds = %45
  %51 = trunc i64 %39 to i32, !dbg !3876
  %52 = add i32 %31, %51, !dbg !3876
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !3875
  br label %75

53:                                               ; preds = %34, %30
  %54 = icmp sgt i32 %32, 0, !dbg !3877
  br i1 %54, label %55, label %74, !dbg !3878

55:                                               ; preds = %53
  %56 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.1.102, i64 noundef 5) #41, !dbg !3879
  %57 = icmp eq i32 %56, 0, !dbg !3880
  br i1 %57, label %58, label %74, !dbg !3881

58:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3882
  %59 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !3883
  call void @llvm.dbg.value(metadata ptr %5, metadata !3816, metadata !DIExpression(DW_OP_deref)), !dbg !3884
  %60 = call i64 @strtol(ptr noundef nonnull %59, ptr noundef nonnull %5, i32 noundef 10) #40, !dbg !3885
  call void @llvm.dbg.value(metadata i64 %60, metadata !3819, metadata !DIExpression()), !dbg !3884
  %61 = load ptr, ptr %5, align 8, !dbg !3886, !tbaa !956
  call void @llvm.dbg.value(metadata ptr %61, metadata !3816, metadata !DIExpression()), !dbg !3884
  %62 = load i8, ptr %61, align 1, !dbg !3888, !tbaa !1036
  %63 = icmp eq i8 %62, 0, !dbg !3888
  br i1 %63, label %64, label %70, !dbg !3889

64:                                               ; preds = %58
  %65 = sub nsw i32 %31, %32, !dbg !3890
  %66 = sext i32 %65 to i64, !dbg !3891
  %67 = icmp sge i64 %60, %66, !dbg !3892
  %68 = icmp slt i64 %60, 1
  %69 = and i1 %67, %68, !dbg !3893
  br i1 %69, label %71, label %70, !dbg !3893

70:                                               ; preds = %64, %58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3894
  br label %74

71:                                               ; preds = %64
  %72 = trunc i64 %60 to i32, !dbg !3895
  %73 = add i32 %32, %72, !dbg !3895
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3894
  br label %75

74:                                               ; preds = %70, %55, %53, %49, %10
  br label %75, !dbg !3896

75:                                               ; preds = %10, %26, %50, %71, %74
  %76 = phi i32 [ %17, %10 ], [ -1, %74 ], [ %29, %26 ], [ %52, %50 ], [ %73, %71 ], !dbg !3820
  store i32 %76, ptr %1, align 4, !dbg !3897, !tbaa !1027
  %77 = ashr i32 %76, 31, !dbg !3898
  ret i32 %77, !dbg !3899
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sig2str(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3900 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3904, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata ptr %1, metadata !3905, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i32 0, metadata !3906, metadata !DIExpression()), !dbg !3914
  br label %3, !dbg !3915

3:                                                ; preds = %2, %8
  %4 = phi i64 [ 0, %2 ], [ %9, %8 ]
  call void @llvm.dbg.value(metadata i64 %4, metadata !3906, metadata !DIExpression()), !dbg !3914
  %5 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %4, !dbg !3916
  %6 = load i32, ptr %5, align 4, !dbg !3919, !tbaa !3853
  %7 = icmp eq i32 %6, %0, !dbg !3920
  br i1 %7, label %11, label %8, !dbg !3921

8:                                                ; preds = %3
  %9 = add nuw nsw i64 %4, 1, !dbg !3922
  call void @llvm.dbg.value(metadata i64 %9, metadata !3906, metadata !DIExpression()), !dbg !3914
  %10 = icmp eq i64 %9, 35, !dbg !3923
  br i1 %10, label %15, label %3, !dbg !3915, !llvm.loop !3924

11:                                               ; preds = %3
  %12 = and i64 %4, 4294967295, !dbg !3926
  %13 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %12, i32 1, !dbg !3927
  call void @llvm.dbg.value(metadata ptr %1, metadata !3929, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata ptr %13, metadata !3935, metadata !DIExpression()), !dbg !3936
  %14 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %13), !dbg !3938
  br label %33

15:                                               ; preds = %8
  %16 = tail call i32 @__libc_current_sigrtmin() #40, !dbg !3939
  call void @llvm.dbg.value(metadata i32 %16, metadata !3908, metadata !DIExpression()), !dbg !3940
  %17 = tail call i32 @__libc_current_sigrtmax() #40, !dbg !3941
  call void @llvm.dbg.value(metadata i32 %17, metadata !3910, metadata !DIExpression()), !dbg !3940
  %18 = icmp sgt i32 %16, %0, !dbg !3942
  %19 = icmp slt i32 %17, %0
  %20 = select i1 %18, i1 true, i1 %19, !dbg !3944
  br i1 %20, label %33, label %21, !dbg !3944

21:                                               ; preds = %15
  %22 = sub nsw i32 %17, %16, !dbg !3945
  %23 = sdiv i32 %22, 2, !dbg !3947
  %24 = add nsw i32 %23, %16, !dbg !3948
  %25 = icmp slt i32 %24, %0, !dbg !3949
  call void @llvm.dbg.value(metadata ptr %1, metadata !3929, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata ptr %1, metadata !3929, metadata !DIExpression()), !dbg !3953
  %26 = select i1 %25, ptr @.str.1.102, ptr @.str.101
  %27 = select i1 %25, i32 %17, i32 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) %26, i64 6, i1 false), !dbg !3956
  call void @llvm.dbg.value(metadata i32 %27, metadata !3911, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata !DIArgList(i32 %0, i32 %27), metadata !3912, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3940
  %28 = icmp eq i32 %27, %0, !dbg !3957
  br i1 %28, label %33, label %29, !dbg !3959

29:                                               ; preds = %21
  %30 = sub nsw i32 %0, %27, !dbg !3960
  call void @llvm.dbg.value(metadata i32 %30, metadata !3912, metadata !DIExpression()), !dbg !3940
  %31 = getelementptr inbounds i8, ptr %1, i64 5, !dbg !3961
  %32 = tail call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %31, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.2.105, i32 noundef %30) #40, !dbg !3961
  br label %33, !dbg !3961

33:                                               ; preds = %11, %15, %29, %21
  %34 = phi i32 [ 0, %11 ], [ -1, %15 ], [ 0, %29 ], [ 0, %21 ], !dbg !3913
  ret i32 %34, !dbg !3962
}

; Function Attrs: nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias nocapture readonly) #29

; Function Attrs: nofree
declare !dbg !3963 i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3966 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4005, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata ptr %1, metadata !4006, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata ptr %2, metadata !4007, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata ptr %3, metadata !4008, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata ptr %4, metadata !4009, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata i64 %5, metadata !4010, metadata !DIExpression()), !dbg !4011
  %7 = icmp eq ptr %1, null, !dbg !4012
  br i1 %7, label %10, label %8, !dbg !4014

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.106, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !4015
  br label %12, !dbg !4015

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.107, ptr noundef %2, ptr noundef %3) #40, !dbg !4016
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.3.109, i32 noundef 5) #40, !dbg !4017
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !4017
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.110, ptr noundef %0), !dbg !4018
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.5.111, i32 noundef 5) #40, !dbg !4019
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.112) #40, !dbg !4019
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.110, ptr noundef %0), !dbg !4020
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
  ], !dbg !4021

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.7.113, i32 noundef 5) #40, !dbg !4022
  %21 = load ptr, ptr %4, align 8, !dbg !4022, !tbaa !956
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !4022
  br label %147, !dbg !4024

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.8.114, i32 noundef 5) #40, !dbg !4025
  %25 = load ptr, ptr %4, align 8, !dbg !4025, !tbaa !956
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4025
  %27 = load ptr, ptr %26, align 8, !dbg !4025, !tbaa !956
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !4025
  br label %147, !dbg !4026

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.9.115, i32 noundef 5) #40, !dbg !4027
  %31 = load ptr, ptr %4, align 8, !dbg !4027, !tbaa !956
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4027
  %33 = load ptr, ptr %32, align 8, !dbg !4027, !tbaa !956
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4027
  %35 = load ptr, ptr %34, align 8, !dbg !4027, !tbaa !956
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !4027
  br label %147, !dbg !4028

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.10.116, i32 noundef 5) #40, !dbg !4029
  %39 = load ptr, ptr %4, align 8, !dbg !4029, !tbaa !956
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4029
  %41 = load ptr, ptr %40, align 8, !dbg !4029, !tbaa !956
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4029
  %43 = load ptr, ptr %42, align 8, !dbg !4029, !tbaa !956
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4029
  %45 = load ptr, ptr %44, align 8, !dbg !4029, !tbaa !956
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !4029
  br label %147, !dbg !4030

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.11.117, i32 noundef 5) #40, !dbg !4031
  %49 = load ptr, ptr %4, align 8, !dbg !4031, !tbaa !956
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4031
  %51 = load ptr, ptr %50, align 8, !dbg !4031, !tbaa !956
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4031
  %53 = load ptr, ptr %52, align 8, !dbg !4031, !tbaa !956
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4031
  %55 = load ptr, ptr %54, align 8, !dbg !4031, !tbaa !956
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4031
  %57 = load ptr, ptr %56, align 8, !dbg !4031, !tbaa !956
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !4031
  br label %147, !dbg !4032

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.12.118, i32 noundef 5) #40, !dbg !4033
  %61 = load ptr, ptr %4, align 8, !dbg !4033, !tbaa !956
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4033
  %63 = load ptr, ptr %62, align 8, !dbg !4033, !tbaa !956
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4033
  %65 = load ptr, ptr %64, align 8, !dbg !4033, !tbaa !956
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4033
  %67 = load ptr, ptr %66, align 8, !dbg !4033, !tbaa !956
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4033
  %69 = load ptr, ptr %68, align 8, !dbg !4033, !tbaa !956
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4033
  %71 = load ptr, ptr %70, align 8, !dbg !4033, !tbaa !956
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !4033
  br label %147, !dbg !4034

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.13.119, i32 noundef 5) #40, !dbg !4035
  %75 = load ptr, ptr %4, align 8, !dbg !4035, !tbaa !956
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4035
  %77 = load ptr, ptr %76, align 8, !dbg !4035, !tbaa !956
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4035
  %79 = load ptr, ptr %78, align 8, !dbg !4035, !tbaa !956
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4035
  %81 = load ptr, ptr %80, align 8, !dbg !4035, !tbaa !956
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4035
  %83 = load ptr, ptr %82, align 8, !dbg !4035, !tbaa !956
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4035
  %85 = load ptr, ptr %84, align 8, !dbg !4035, !tbaa !956
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4035
  %87 = load ptr, ptr %86, align 8, !dbg !4035, !tbaa !956
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !4035
  br label %147, !dbg !4036

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.14.120, i32 noundef 5) #40, !dbg !4037
  %91 = load ptr, ptr %4, align 8, !dbg !4037, !tbaa !956
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4037
  %93 = load ptr, ptr %92, align 8, !dbg !4037, !tbaa !956
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4037
  %95 = load ptr, ptr %94, align 8, !dbg !4037, !tbaa !956
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4037
  %97 = load ptr, ptr %96, align 8, !dbg !4037, !tbaa !956
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4037
  %99 = load ptr, ptr %98, align 8, !dbg !4037, !tbaa !956
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4037
  %101 = load ptr, ptr %100, align 8, !dbg !4037, !tbaa !956
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4037
  %103 = load ptr, ptr %102, align 8, !dbg !4037, !tbaa !956
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4037
  %105 = load ptr, ptr %104, align 8, !dbg !4037, !tbaa !956
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !4037
  br label %147, !dbg !4038

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.15.121, i32 noundef 5) #40, !dbg !4039
  %109 = load ptr, ptr %4, align 8, !dbg !4039, !tbaa !956
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4039
  %111 = load ptr, ptr %110, align 8, !dbg !4039, !tbaa !956
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4039
  %113 = load ptr, ptr %112, align 8, !dbg !4039, !tbaa !956
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4039
  %115 = load ptr, ptr %114, align 8, !dbg !4039, !tbaa !956
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4039
  %117 = load ptr, ptr %116, align 8, !dbg !4039, !tbaa !956
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4039
  %119 = load ptr, ptr %118, align 8, !dbg !4039, !tbaa !956
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4039
  %121 = load ptr, ptr %120, align 8, !dbg !4039, !tbaa !956
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4039
  %123 = load ptr, ptr %122, align 8, !dbg !4039, !tbaa !956
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4039
  %125 = load ptr, ptr %124, align 8, !dbg !4039, !tbaa !956
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !4039
  br label %147, !dbg !4040

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.16.122, i32 noundef 5) #40, !dbg !4041
  %129 = load ptr, ptr %4, align 8, !dbg !4041, !tbaa !956
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4041
  %131 = load ptr, ptr %130, align 8, !dbg !4041, !tbaa !956
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4041
  %133 = load ptr, ptr %132, align 8, !dbg !4041, !tbaa !956
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4041
  %135 = load ptr, ptr %134, align 8, !dbg !4041, !tbaa !956
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4041
  %137 = load ptr, ptr %136, align 8, !dbg !4041, !tbaa !956
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4041
  %139 = load ptr, ptr %138, align 8, !dbg !4041, !tbaa !956
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4041
  %141 = load ptr, ptr %140, align 8, !dbg !4041, !tbaa !956
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4041
  %143 = load ptr, ptr %142, align 8, !dbg !4041, !tbaa !956
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4041
  %145 = load ptr, ptr %144, align 8, !dbg !4041, !tbaa !956
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !4041
  br label %147, !dbg !4042

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4043
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4044 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4048, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata ptr %1, metadata !4049, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata ptr %2, metadata !4050, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata ptr %3, metadata !4051, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata ptr %4, metadata !4052, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i64 0, metadata !4053, metadata !DIExpression()), !dbg !4054
  br label %6, !dbg !4055

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4057
  call void @llvm.dbg.value(metadata i64 %7, metadata !4053, metadata !DIExpression()), !dbg !4054
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4058
  %9 = load ptr, ptr %8, align 8, !dbg !4058, !tbaa !956
  %10 = icmp eq ptr %9, null, !dbg !4060
  %11 = add i64 %7, 1, !dbg !4061
  call void @llvm.dbg.value(metadata i64 %11, metadata !4053, metadata !DIExpression()), !dbg !4054
  br i1 %10, label %12, label %6, !dbg !4060, !llvm.loop !4062

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4064
  ret void, !dbg !4065
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4066 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4081, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata ptr %1, metadata !4082, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata ptr %2, metadata !4083, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata ptr %3, metadata !4084, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4085, metadata !DIExpression()), !dbg !4090
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !4091
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4087, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i64 0, metadata !4086, metadata !DIExpression()), !dbg !4089
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4086, metadata !DIExpression()), !dbg !4089
  %10 = icmp sgt i32 %9, -1, !dbg !4093
  br i1 %10, label %18, label %11, !dbg !4093

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4093
  store i32 %12, ptr %7, align 8, !dbg !4093
  %13 = icmp ult i32 %9, -7, !dbg !4093
  br i1 %13, label %14, label %18, !dbg !4093

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4093
  %16 = sext i32 %9 to i64, !dbg !4093
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4093
  br label %22, !dbg !4093

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4093
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4093
  store ptr %21, ptr %4, align 8, !dbg !4093
  br label %22, !dbg !4093

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4093
  %25 = load ptr, ptr %24, align 8, !dbg !4093
  store ptr %25, ptr %6, align 8, !dbg !4096, !tbaa !956
  %26 = icmp eq ptr %25, null, !dbg !4097
  br i1 %26, label %197, label %27, !dbg !4098

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !4086, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 1, metadata !4086, metadata !DIExpression()), !dbg !4089
  %28 = icmp sgt i32 %23, -1, !dbg !4093
  br i1 %28, label %36, label %29, !dbg !4093

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4093
  store i32 %30, ptr %7, align 8, !dbg !4093
  %31 = icmp ult i32 %23, -7, !dbg !4093
  br i1 %31, label %32, label %36, !dbg !4093

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4093
  %34 = sext i32 %23 to i64, !dbg !4093
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4093
  br label %40, !dbg !4093

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4093
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4093
  store ptr %39, ptr %4, align 8, !dbg !4093
  br label %40, !dbg !4093

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4093
  %43 = load ptr, ptr %42, align 8, !dbg !4093
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4099
  store ptr %43, ptr %44, align 8, !dbg !4096, !tbaa !956
  %45 = icmp eq ptr %43, null, !dbg !4097
  br i1 %45, label %197, label %46, !dbg !4098

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4086, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 2, metadata !4086, metadata !DIExpression()), !dbg !4089
  %47 = icmp sgt i32 %41, -1, !dbg !4093
  br i1 %47, label %55, label %48, !dbg !4093

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4093
  store i32 %49, ptr %7, align 8, !dbg !4093
  %50 = icmp ult i32 %41, -7, !dbg !4093
  br i1 %50, label %51, label %55, !dbg !4093

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4093
  %53 = sext i32 %41 to i64, !dbg !4093
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4093
  br label %59, !dbg !4093

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4093
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4093
  store ptr %58, ptr %4, align 8, !dbg !4093
  br label %59, !dbg !4093

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4093
  %62 = load ptr, ptr %61, align 8, !dbg !4093
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4099
  store ptr %62, ptr %63, align 8, !dbg !4096, !tbaa !956
  %64 = icmp eq ptr %62, null, !dbg !4097
  br i1 %64, label %197, label %65, !dbg !4098

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !4086, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 3, metadata !4086, metadata !DIExpression()), !dbg !4089
  %66 = icmp sgt i32 %60, -1, !dbg !4093
  br i1 %66, label %74, label %67, !dbg !4093

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4093
  store i32 %68, ptr %7, align 8, !dbg !4093
  %69 = icmp ult i32 %60, -7, !dbg !4093
  br i1 %69, label %70, label %74, !dbg !4093

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4093
  %72 = sext i32 %60 to i64, !dbg !4093
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4093
  br label %78, !dbg !4093

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4093
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4093
  store ptr %77, ptr %4, align 8, !dbg !4093
  br label %78, !dbg !4093

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4093
  %81 = load ptr, ptr %80, align 8, !dbg !4093
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4099
  store ptr %81, ptr %82, align 8, !dbg !4096, !tbaa !956
  %83 = icmp eq ptr %81, null, !dbg !4097
  br i1 %83, label %197, label %84, !dbg !4098

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !4086, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 4, metadata !4086, metadata !DIExpression()), !dbg !4089
  %85 = icmp sgt i32 %79, -1, !dbg !4093
  br i1 %85, label %93, label %86, !dbg !4093

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4093
  store i32 %87, ptr %7, align 8, !dbg !4093
  %88 = icmp ult i32 %79, -7, !dbg !4093
  br i1 %88, label %89, label %93, !dbg !4093

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4093
  %91 = sext i32 %79 to i64, !dbg !4093
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4093
  br label %97, !dbg !4093

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4093
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4093
  store ptr %96, ptr %4, align 8, !dbg !4093
  br label %97, !dbg !4093

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4093
  %100 = load ptr, ptr %99, align 8, !dbg !4093
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4099
  store ptr %100, ptr %101, align 8, !dbg !4096, !tbaa !956
  %102 = icmp eq ptr %100, null, !dbg !4097
  br i1 %102, label %197, label %103, !dbg !4098

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !4086, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 5, metadata !4086, metadata !DIExpression()), !dbg !4089
  %104 = icmp sgt i32 %98, -1, !dbg !4093
  br i1 %104, label %112, label %105, !dbg !4093

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4093
  store i32 %106, ptr %7, align 8, !dbg !4093
  %107 = icmp ult i32 %98, -7, !dbg !4093
  br i1 %107, label %108, label %112, !dbg !4093

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4093
  %110 = sext i32 %98 to i64, !dbg !4093
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4093
  br label %116, !dbg !4093

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4093
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4093
  store ptr %115, ptr %4, align 8, !dbg !4093
  br label %116, !dbg !4093

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4093
  %119 = load ptr, ptr %118, align 8, !dbg !4093
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4099
  store ptr %119, ptr %120, align 8, !dbg !4096, !tbaa !956
  %121 = icmp eq ptr %119, null, !dbg !4097
  br i1 %121, label %197, label %122, !dbg !4098

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !4086, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 6, metadata !4086, metadata !DIExpression()), !dbg !4089
  %123 = icmp sgt i32 %117, -1, !dbg !4093
  br i1 %123, label %131, label %124, !dbg !4093

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4093
  store i32 %125, ptr %7, align 8, !dbg !4093
  %126 = icmp ult i32 %117, -7, !dbg !4093
  br i1 %126, label %127, label %131, !dbg !4093

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4093
  %129 = sext i32 %117 to i64, !dbg !4093
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4093
  br label %135, !dbg !4093

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4093
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4093
  store ptr %134, ptr %4, align 8, !dbg !4093
  br label %135, !dbg !4093

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4093
  %138 = load ptr, ptr %137, align 8, !dbg !4093
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4099
  store ptr %138, ptr %139, align 8, !dbg !4096, !tbaa !956
  %140 = icmp eq ptr %138, null, !dbg !4097
  br i1 %140, label %197, label %141, !dbg !4098

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !4086, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 7, metadata !4086, metadata !DIExpression()), !dbg !4089
  %142 = icmp sgt i32 %136, -1, !dbg !4093
  br i1 %142, label %150, label %143, !dbg !4093

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4093
  store i32 %144, ptr %7, align 8, !dbg !4093
  %145 = icmp ult i32 %136, -7, !dbg !4093
  br i1 %145, label %146, label %150, !dbg !4093

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4093
  %148 = sext i32 %136 to i64, !dbg !4093
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4093
  br label %154, !dbg !4093

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4093
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4093
  store ptr %153, ptr %4, align 8, !dbg !4093
  br label %154, !dbg !4093

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4093
  %157 = load ptr, ptr %156, align 8, !dbg !4093
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4099
  store ptr %157, ptr %158, align 8, !dbg !4096, !tbaa !956
  %159 = icmp eq ptr %157, null, !dbg !4097
  br i1 %159, label %197, label %160, !dbg !4098

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !4086, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 8, metadata !4086, metadata !DIExpression()), !dbg !4089
  %161 = icmp sgt i32 %155, -1, !dbg !4093
  br i1 %161, label %169, label %162, !dbg !4093

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4093
  store i32 %163, ptr %7, align 8, !dbg !4093
  %164 = icmp ult i32 %155, -7, !dbg !4093
  br i1 %164, label %165, label %169, !dbg !4093

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4093
  %167 = sext i32 %155 to i64, !dbg !4093
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4093
  br label %173, !dbg !4093

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4093
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4093
  store ptr %172, ptr %4, align 8, !dbg !4093
  br label %173, !dbg !4093

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4093
  %176 = load ptr, ptr %175, align 8, !dbg !4093
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4099
  store ptr %176, ptr %177, align 8, !dbg !4096, !tbaa !956
  %178 = icmp eq ptr %176, null, !dbg !4097
  br i1 %178, label %197, label %179, !dbg !4098

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !4086, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 9, metadata !4086, metadata !DIExpression()), !dbg !4089
  %180 = icmp sgt i32 %174, -1, !dbg !4093
  br i1 %180, label %188, label %181, !dbg !4093

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4093
  store i32 %182, ptr %7, align 8, !dbg !4093
  %183 = icmp ult i32 %174, -7, !dbg !4093
  br i1 %183, label %184, label %188, !dbg !4093

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4093
  %186 = sext i32 %174 to i64, !dbg !4093
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4093
  br label %191, !dbg !4093

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4093
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4093
  store ptr %190, ptr %4, align 8, !dbg !4093
  br label %191, !dbg !4093

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4093
  %193 = load ptr, ptr %192, align 8, !dbg !4093
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4099
  store ptr %193, ptr %194, align 8, !dbg !4096, !tbaa !956
  %195 = icmp eq ptr %193, null, !dbg !4097
  %196 = select i1 %195, i64 9, i64 10, !dbg !4098
  br label %197, !dbg !4098

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4100
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4101
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !4102
  ret void, !dbg !4102
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4103 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4107, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata ptr %1, metadata !4108, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata ptr %2, metadata !4109, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata ptr %3, metadata !4110, metadata !DIExpression()), !dbg !4112
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !4113
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4111, metadata !DIExpression()), !dbg !4114
  call void @llvm.va_start(ptr nonnull %5), !dbg !4115
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !4116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4116, !tbaa.struct !2222
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4116
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !4116
  call void @llvm.va_end(ptr nonnull %5), !dbg !4117
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !4118
  ret void, !dbg !4118
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4119 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4120, !tbaa !956
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.110, ptr noundef %1), !dbg !4120
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.17.127, i32 noundef 5) #40, !dbg !4121
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.128) #40, !dbg !4121
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.19.129, i32 noundef 5) #40, !dbg !4122
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.130, ptr noundef nonnull @.str.21.131) #40, !dbg !4122
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.22.132, i32 noundef 5) #40, !dbg !4123
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.133) #40, !dbg !4123
  ret void, !dbg !4124
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4125 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4130, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 %1, metadata !4131, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 %2, metadata !4132, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %0, metadata !4134, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i64 %1, metadata !4137, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i64 %2, metadata !4138, metadata !DIExpression()), !dbg !4139
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4141
  call void @llvm.dbg.value(metadata ptr %4, metadata !4142, metadata !DIExpression()), !dbg !4147
  %5 = icmp eq ptr %4, null, !dbg !4149
  br i1 %5, label %6, label %7, !dbg !4151

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4152
  unreachable, !dbg !4152

7:                                                ; preds = %3
  ret ptr %4, !dbg !4153
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4135 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4134, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata i64 %1, metadata !4137, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata i64 %2, metadata !4138, metadata !DIExpression()), !dbg !4154
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4155
  call void @llvm.dbg.value(metadata ptr %4, metadata !4142, metadata !DIExpression()), !dbg !4156
  %5 = icmp eq ptr %4, null, !dbg !4158
  br i1 %5, label %6, label %7, !dbg !4159

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4160
  unreachable, !dbg !4160

7:                                                ; preds = %3
  ret ptr %4, !dbg !4161
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4162 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4166, metadata !DIExpression()), !dbg !4167
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4168
  call void @llvm.dbg.value(metadata ptr %2, metadata !4142, metadata !DIExpression()), !dbg !4169
  %3 = icmp eq ptr %2, null, !dbg !4171
  br i1 %3, label %4, label %5, !dbg !4172

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4173
  unreachable, !dbg !4173

5:                                                ; preds = %1
  ret ptr %2, !dbg !4174
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4175 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4176 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4180, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.value(metadata i64 %0, metadata !4182, metadata !DIExpression()), !dbg !4186
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4188
  call void @llvm.dbg.value(metadata ptr %2, metadata !4142, metadata !DIExpression()), !dbg !4189
  %3 = icmp eq ptr %2, null, !dbg !4191
  br i1 %3, label %4, label %5, !dbg !4192

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4193
  unreachable, !dbg !4193

5:                                                ; preds = %1
  ret ptr %2, !dbg !4194
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4195 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4199, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata i64 %0, metadata !4166, metadata !DIExpression()), !dbg !4201
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4203
  call void @llvm.dbg.value(metadata ptr %2, metadata !4142, metadata !DIExpression()), !dbg !4204
  %3 = icmp eq ptr %2, null, !dbg !4206
  br i1 %3, label %4, label %5, !dbg !4207

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4208
  unreachable, !dbg !4208

5:                                                ; preds = %1
  ret ptr %2, !dbg !4209
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4210 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4214, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.value(metadata i64 %1, metadata !4215, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.value(metadata ptr %0, metadata !4217, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 %1, metadata !4221, metadata !DIExpression()), !dbg !4222
  %3 = icmp eq i64 %1, 0, !dbg !4224
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4224
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !4225
  call void @llvm.dbg.value(metadata ptr %5, metadata !4142, metadata !DIExpression()), !dbg !4226
  %6 = icmp eq ptr %5, null, !dbg !4228
  br i1 %6, label %7, label %8, !dbg !4229

7:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4230
  unreachable, !dbg !4230

8:                                                ; preds = %2
  ret ptr %5, !dbg !4231
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4232 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4233 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4237, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i64 %1, metadata !4238, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata ptr %0, metadata !4240, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.value(metadata i64 %1, metadata !4243, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.value(metadata ptr %0, metadata !4217, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i64 %1, metadata !4221, metadata !DIExpression()), !dbg !4246
  %3 = icmp eq i64 %1, 0, !dbg !4248
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4248
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !4249
  call void @llvm.dbg.value(metadata ptr %5, metadata !4142, metadata !DIExpression()), !dbg !4250
  %6 = icmp eq ptr %5, null, !dbg !4252
  br i1 %6, label %7, label %8, !dbg !4253

7:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4254
  unreachable, !dbg !4254

8:                                                ; preds = %2
  ret ptr %5, !dbg !4255
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4256 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4260, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i64 %1, metadata !4261, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i64 %2, metadata !4262, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata ptr %0, metadata !4264, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i64 %1, metadata !4267, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i64 %2, metadata !4268, metadata !DIExpression()), !dbg !4269
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4271
  call void @llvm.dbg.value(metadata ptr %4, metadata !4142, metadata !DIExpression()), !dbg !4272
  %5 = icmp eq ptr %4, null, !dbg !4274
  br i1 %5, label %6, label %7, !dbg !4275

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4276
  unreachable, !dbg !4276

7:                                                ; preds = %3
  ret ptr %4, !dbg !4277
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4278 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4282, metadata !DIExpression()), !dbg !4284
  call void @llvm.dbg.value(metadata i64 %1, metadata !4283, metadata !DIExpression()), !dbg !4284
  call void @llvm.dbg.value(metadata ptr null, metadata !4134, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i64 %0, metadata !4137, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i64 %1, metadata !4138, metadata !DIExpression()), !dbg !4285
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4287
  call void @llvm.dbg.value(metadata ptr %3, metadata !4142, metadata !DIExpression()), !dbg !4288
  %4 = icmp eq ptr %3, null, !dbg !4290
  br i1 %4, label %5, label %6, !dbg !4291

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4292
  unreachable, !dbg !4292

6:                                                ; preds = %2
  ret ptr %3, !dbg !4293
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4294 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4298, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i64 %1, metadata !4299, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata ptr null, metadata !4260, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i64 %0, metadata !4261, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i64 %1, metadata !4262, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata ptr null, metadata !4264, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.value(metadata i64 %0, metadata !4267, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.value(metadata i64 %1, metadata !4268, metadata !DIExpression()), !dbg !4303
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4305
  call void @llvm.dbg.value(metadata ptr %3, metadata !4142, metadata !DIExpression()), !dbg !4306
  %4 = icmp eq ptr %3, null, !dbg !4308
  br i1 %4, label %5, label %6, !dbg !4309

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4310
  unreachable, !dbg !4310

6:                                                ; preds = %2
  ret ptr %3, !dbg !4311
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4312 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4316, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.value(metadata ptr %1, metadata !4317, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.value(metadata ptr %0, metadata !895, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata ptr %1, metadata !896, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i64 1, metadata !897, metadata !DIExpression()), !dbg !4319
  %3 = load i64, ptr %1, align 8, !dbg !4321, !tbaa !1867
  call void @llvm.dbg.value(metadata i64 %3, metadata !898, metadata !DIExpression()), !dbg !4319
  %4 = icmp eq ptr %0, null, !dbg !4322
  br i1 %4, label %5, label %8, !dbg !4324

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4325
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4328
  br label %15, !dbg !4328

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4329
  %10 = add nuw i64 %9, 1, !dbg !4329
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4329
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4329
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4329
  call void @llvm.dbg.value(metadata i64 %13, metadata !898, metadata !DIExpression()), !dbg !4319
  br i1 %12, label %14, label %15, !dbg !4332

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !4333
  unreachable, !dbg !4333

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4319
  call void @llvm.dbg.value(metadata i64 %16, metadata !898, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata ptr %0, metadata !4134, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i64 %16, metadata !4137, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i64 1, metadata !4138, metadata !DIExpression()), !dbg !4334
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !4336
  call void @llvm.dbg.value(metadata ptr %17, metadata !4142, metadata !DIExpression()), !dbg !4337
  %18 = icmp eq ptr %17, null, !dbg !4339
  br i1 %18, label %19, label %20, !dbg !4340

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !4341
  unreachable, !dbg !4341

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !895, metadata !DIExpression()), !dbg !4319
  store i64 %16, ptr %1, align 8, !dbg !4342, !tbaa !1867
  ret ptr %17, !dbg !4343
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !890 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !895, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.value(metadata ptr %1, metadata !896, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.value(metadata i64 %2, metadata !897, metadata !DIExpression()), !dbg !4344
  %4 = load i64, ptr %1, align 8, !dbg !4345, !tbaa !1867
  call void @llvm.dbg.value(metadata i64 %4, metadata !898, metadata !DIExpression()), !dbg !4344
  %5 = icmp eq ptr %0, null, !dbg !4346
  br i1 %5, label %6, label %13, !dbg !4347

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4348
  br i1 %7, label %8, label %20, !dbg !4349

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4350
  call void @llvm.dbg.value(metadata i64 %9, metadata !898, metadata !DIExpression()), !dbg !4344
  %10 = icmp ugt i64 %2, 128, !dbg !4352
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4353
  call void @llvm.dbg.value(metadata i64 %12, metadata !898, metadata !DIExpression()), !dbg !4344
  br label %20, !dbg !4354

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4355
  %15 = add nuw i64 %14, 1, !dbg !4355
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4355
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4355
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4355
  call void @llvm.dbg.value(metadata i64 %18, metadata !898, metadata !DIExpression()), !dbg !4344
  br i1 %17, label %19, label %20, !dbg !4356

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !4357
  unreachable, !dbg !4357

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4344
  call void @llvm.dbg.value(metadata i64 %21, metadata !898, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.value(metadata ptr %0, metadata !4134, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i64 %21, metadata !4137, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i64 %2, metadata !4138, metadata !DIExpression()), !dbg !4358
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !4360
  call void @llvm.dbg.value(metadata ptr %22, metadata !4142, metadata !DIExpression()), !dbg !4361
  %23 = icmp eq ptr %22, null, !dbg !4363
  br i1 %23, label %24, label %25, !dbg !4364

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !4365
  unreachable, !dbg !4365

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !895, metadata !DIExpression()), !dbg !4344
  store i64 %21, ptr %1, align 8, !dbg !4366, !tbaa !1867
  ret ptr %22, !dbg !4367
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !902 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !910, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata ptr %1, metadata !911, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata i64 %2, metadata !912, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata i64 %3, metadata !913, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata i64 %4, metadata !914, metadata !DIExpression()), !dbg !4368
  %6 = load i64, ptr %1, align 8, !dbg !4369, !tbaa !1867
  call void @llvm.dbg.value(metadata i64 %6, metadata !915, metadata !DIExpression()), !dbg !4368
  %7 = ashr i64 %6, 1, !dbg !4370
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4370
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4370
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4370
  call void @llvm.dbg.value(metadata i64 %10, metadata !916, metadata !DIExpression()), !dbg !4368
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4372
  call void @llvm.dbg.value(metadata i64 %11, metadata !916, metadata !DIExpression()), !dbg !4368
  %12 = icmp sgt i64 %3, -1, !dbg !4373
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4375
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4375
  call void @llvm.dbg.value(metadata i64 %15, metadata !916, metadata !DIExpression()), !dbg !4368
  %16 = icmp slt i64 %4, 0, !dbg !4376
  br i1 %16, label %17, label %30, !dbg !4376

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4376
  br i1 %18, label %19, label %24, !dbg !4376

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4376
  %21 = udiv i64 9223372036854775807, %20, !dbg !4376
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4376
  br i1 %23, label %46, label %43, !dbg !4376

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4376
  br i1 %25, label %43, label %26, !dbg !4376

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4376
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4376
  %29 = icmp ult i64 %28, %15, !dbg !4376
  br i1 %29, label %46, label %43, !dbg !4376

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4376
  br i1 %31, label %43, label %32, !dbg !4376

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4376
  br i1 %33, label %34, label %40, !dbg !4376

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4376
  br i1 %35, label %43, label %36, !dbg !4376

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4376
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4376
  %39 = icmp ult i64 %38, %4, !dbg !4376
  br i1 %39, label %46, label %43, !dbg !4376

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4376
  br i1 %42, label %46, label %43, !dbg !4376

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !917, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4368
  %44 = mul i64 %15, %4, !dbg !4376
  call void @llvm.dbg.value(metadata i64 %44, metadata !917, metadata !DIExpression()), !dbg !4368
  %45 = icmp slt i64 %44, 128, !dbg !4376
  br i1 %45, label %46, label %52, !dbg !4376

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !918, metadata !DIExpression()), !dbg !4368
  %48 = sdiv i64 %47, %4, !dbg !4377
  call void @llvm.dbg.value(metadata i64 %48, metadata !916, metadata !DIExpression()), !dbg !4368
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4380
  call void @llvm.dbg.value(metadata i64 %51, metadata !917, metadata !DIExpression()), !dbg !4368
  br label %52, !dbg !4381

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4368
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4368
  call void @llvm.dbg.value(metadata i64 %54, metadata !917, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata i64 %53, metadata !916, metadata !DIExpression()), !dbg !4368
  %55 = icmp eq ptr %0, null, !dbg !4382
  br i1 %55, label %56, label %57, !dbg !4384

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4385, !tbaa !1867
  br label %57, !dbg !4386

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4387
  %59 = icmp slt i64 %58, %2, !dbg !4389
  br i1 %59, label %60, label %97, !dbg !4390

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4391
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4391
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4391
  call void @llvm.dbg.value(metadata i64 %63, metadata !916, metadata !DIExpression()), !dbg !4368
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4392
  br i1 %66, label %96, label %67, !dbg !4392

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4393

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4393
  br i1 %69, label %70, label %75, !dbg !4393

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4393
  %72 = udiv i64 9223372036854775807, %71, !dbg !4393
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4393
  br i1 %74, label %96, label %94, !dbg !4393

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4393
  br i1 %76, label %94, label %77, !dbg !4393

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4393
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4393
  %80 = icmp ult i64 %79, %63, !dbg !4393
  br i1 %80, label %96, label %94, !dbg !4393

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4393
  br i1 %82, label %94, label %83, !dbg !4393

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4393
  br i1 %84, label %85, label %91, !dbg !4393

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4393
  br i1 %86, label %94, label %87, !dbg !4393

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4393
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4393
  %90 = icmp ult i64 %89, %4, !dbg !4393
  br i1 %90, label %96, label %94, !dbg !4393

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4393
  br i1 %93, label %96, label %94, !dbg !4393

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !917, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4368
  %95 = mul i64 %63, %4, !dbg !4393
  call void @llvm.dbg.value(metadata i64 %95, metadata !917, metadata !DIExpression()), !dbg !4368
  br label %97, !dbg !4394

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #42, !dbg !4395
  unreachable, !dbg !4395

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4368
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4368
  call void @llvm.dbg.value(metadata i64 %99, metadata !917, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata i64 %98, metadata !916, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata ptr %0, metadata !4214, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata i64 %99, metadata !4215, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata ptr %0, metadata !4217, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i64 %99, metadata !4221, metadata !DIExpression()), !dbg !4398
  %100 = icmp eq i64 %99, 0, !dbg !4400
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4400
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #46, !dbg !4401
  call void @llvm.dbg.value(metadata ptr %102, metadata !4142, metadata !DIExpression()), !dbg !4402
  %103 = icmp eq ptr %102, null, !dbg !4404
  br i1 %103, label %104, label %105, !dbg !4405

104:                                              ; preds = %97
  tail call void @xalloc_die() #42, !dbg !4406
  unreachable, !dbg !4406

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !910, metadata !DIExpression()), !dbg !4368
  store i64 %98, ptr %1, align 8, !dbg !4407, !tbaa !1867
  ret ptr %102, !dbg !4408
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4409 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4411, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata i64 %0, metadata !4413, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.value(metadata i64 1, metadata !4416, metadata !DIExpression()), !dbg !4417
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4419
  call void @llvm.dbg.value(metadata ptr %2, metadata !4142, metadata !DIExpression()), !dbg !4420
  %3 = icmp eq ptr %2, null, !dbg !4422
  br i1 %3, label %4, label %5, !dbg !4423

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4424
  unreachable, !dbg !4424

5:                                                ; preds = %1
  ret ptr %2, !dbg !4425
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4426 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4414 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4413, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64 %1, metadata !4416, metadata !DIExpression()), !dbg !4427
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4428
  call void @llvm.dbg.value(metadata ptr %3, metadata !4142, metadata !DIExpression()), !dbg !4429
  %4 = icmp eq ptr %3, null, !dbg !4431
  br i1 %4, label %5, label %6, !dbg !4432

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4433
  unreachable, !dbg !4433

6:                                                ; preds = %2
  ret ptr %3, !dbg !4434
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4435 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4437, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.value(metadata i64 %0, metadata !4439, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.value(metadata i64 1, metadata !4442, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.value(metadata i64 %0, metadata !4445, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata i64 1, metadata !4448, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata i64 %0, metadata !4445, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata i64 1, metadata !4448, metadata !DIExpression()), !dbg !4449
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4451
  call void @llvm.dbg.value(metadata ptr %2, metadata !4142, metadata !DIExpression()), !dbg !4452
  %3 = icmp eq ptr %2, null, !dbg !4454
  br i1 %3, label %4, label %5, !dbg !4455

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4456
  unreachable, !dbg !4456

5:                                                ; preds = %1
  ret ptr %2, !dbg !4457
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4440 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4439, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i64 %1, metadata !4442, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i64 %0, metadata !4445, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i64 %1, metadata !4448, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i64 %0, metadata !4445, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i64 %1, metadata !4448, metadata !DIExpression()), !dbg !4459
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4461
  call void @llvm.dbg.value(metadata ptr %3, metadata !4142, metadata !DIExpression()), !dbg !4462
  %4 = icmp eq ptr %3, null, !dbg !4464
  br i1 %4, label %5, label %6, !dbg !4465

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4466
  unreachable, !dbg !4466

6:                                                ; preds = %2
  ret ptr %3, !dbg !4467
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4468 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4472, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata i64 %1, metadata !4473, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata i64 %1, metadata !4166, metadata !DIExpression()), !dbg !4475
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4477
  call void @llvm.dbg.value(metadata ptr %3, metadata !4142, metadata !DIExpression()), !dbg !4478
  %4 = icmp eq ptr %3, null, !dbg !4480
  br i1 %4, label %5, label %6, !dbg !4481

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4482
  unreachable, !dbg !4482

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4483, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata ptr %0, metadata !4489, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata i64 %1, metadata !4490, metadata !DIExpression()), !dbg !4491
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4493
  ret ptr %3, !dbg !4494
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4495 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4499, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %1, metadata !4500, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %1, metadata !4180, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i64 %1, metadata !4182, metadata !DIExpression()), !dbg !4504
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4506
  call void @llvm.dbg.value(metadata ptr %3, metadata !4142, metadata !DIExpression()), !dbg !4507
  %4 = icmp eq ptr %3, null, !dbg !4509
  br i1 %4, label %5, label %6, !dbg !4510

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4511
  unreachable, !dbg !4511

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4483, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata ptr %0, metadata !4489, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i64 %1, metadata !4490, metadata !DIExpression()), !dbg !4512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4514
  ret ptr %3, !dbg !4515
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4516 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4520, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i64 %1, metadata !4521, metadata !DIExpression()), !dbg !4523
  %3 = add nsw i64 %1, 1, !dbg !4524
  call void @llvm.dbg.value(metadata i64 %3, metadata !4180, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i64 %3, metadata !4182, metadata !DIExpression()), !dbg !4527
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4529
  call void @llvm.dbg.value(metadata ptr %4, metadata !4142, metadata !DIExpression()), !dbg !4530
  %5 = icmp eq ptr %4, null, !dbg !4532
  br i1 %5, label %6, label %7, !dbg !4533

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4534
  unreachable, !dbg !4534

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4522, metadata !DIExpression()), !dbg !4523
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4535
  store i8 0, ptr %8, align 1, !dbg !4536, !tbaa !1036
  call void @llvm.dbg.value(metadata ptr %4, metadata !4483, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata ptr %0, metadata !4489, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i64 %1, metadata !4490, metadata !DIExpression()), !dbg !4537
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4539
  ret ptr %4, !dbg !4540
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4541 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4543, metadata !DIExpression()), !dbg !4544
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4545
  %3 = add i64 %2, 1, !dbg !4546
  call void @llvm.dbg.value(metadata ptr %0, metadata !4472, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i64 %3, metadata !4473, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i64 %3, metadata !4166, metadata !DIExpression()), !dbg !4549
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4551
  call void @llvm.dbg.value(metadata ptr %4, metadata !4142, metadata !DIExpression()), !dbg !4552
  %5 = icmp eq ptr %4, null, !dbg !4554
  br i1 %5, label %6, label %7, !dbg !4555

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4556
  unreachable, !dbg !4556

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4483, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata ptr %0, metadata !4489, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i64 %3, metadata !4490, metadata !DIExpression()), !dbg !4557
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4559
  ret ptr %4, !dbg !4560
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4561 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4565, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %1, metadata !4563, metadata !DIExpression()), !dbg !4566
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.146, ptr noundef nonnull @.str.2.147, i32 noundef 5) #40, !dbg !4565
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.148, ptr noundef %2) #40, !dbg !4565
  %3 = icmp eq i32 %1, 0, !dbg !4565
  tail call void @llvm.assume(i1 %3), !dbg !4565
  tail call void @abort() #42, !dbg !4567
  unreachable, !dbg !4567
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nounwind uwtable
define dso_local double @c_strtod(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4568 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4572, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata ptr %1, metadata !4573, metadata !DIExpression()), !dbg !4576
  %3 = load volatile ptr, ptr @c_locale_cache, align 8, !dbg !4577, !tbaa !956
  %4 = icmp eq ptr %3, null, !dbg !4577
  br i1 %4, label %5, label %7, !dbg !4583

5:                                                ; preds = %2
  %6 = tail call ptr @newlocale(i32 noundef 8127, ptr noundef nonnull @.str.151, ptr noundef null) #40, !dbg !4584
  store volatile ptr %6, ptr @c_locale_cache, align 8, !dbg !4585, !tbaa !956
  br label %7, !dbg !4586

7:                                                ; preds = %2, %5
  %8 = load volatile ptr, ptr @c_locale_cache, align 8, !dbg !4587, !tbaa !956
  call void @llvm.dbg.value(metadata ptr %8, metadata !4575, metadata !DIExpression()), !dbg !4576
  %9 = icmp eq ptr %8, null, !dbg !4588
  br i1 %9, label %10, label %13, !dbg !4590

10:                                               ; preds = %7
  %11 = icmp eq ptr %1, null, !dbg !4591
  br i1 %11, label %15, label %12, !dbg !4594

12:                                               ; preds = %10
  store ptr %0, ptr %1, align 8, !dbg !4595, !tbaa !956
  br label %15, !dbg !4596

13:                                               ; preds = %7
  %14 = tail call double @strtod_l(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8) #40, !dbg !4597
  call void @llvm.dbg.value(metadata double %14, metadata !4574, metadata !DIExpression()), !dbg !4576
  br label %15, !dbg !4598

15:                                               ; preds = %10, %12, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %10 ], !dbg !4576
  ret double %16, !dbg !4599
}

; Function Attrs: nounwind
declare !dbg !4600 ptr @newlocale(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4603 double @strtod_l(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4606 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4644, metadata !DIExpression()), !dbg !4649
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !4650
  call void @llvm.dbg.value(metadata i1 poison, metadata !4645, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4649
  call void @llvm.dbg.value(metadata ptr %0, metadata !4651, metadata !DIExpression()), !dbg !4654
  %3 = load i32, ptr %0, align 8, !dbg !4656, !tbaa !4657
  %4 = and i32 %3, 32, !dbg !4658
  %5 = icmp eq i32 %4, 0, !dbg !4658
  call void @llvm.dbg.value(metadata i1 %5, metadata !4647, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4649
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !4659
  %7 = icmp eq i32 %6, 0, !dbg !4660
  call void @llvm.dbg.value(metadata i1 %7, metadata !4648, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4649
  br i1 %5, label %8, label %18, !dbg !4661

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4663
  call void @llvm.dbg.value(metadata i1 %9, metadata !4645, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4649
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4664
  %11 = xor i1 %7, true, !dbg !4664
  %12 = sext i1 %11 to i32, !dbg !4664
  br i1 %10, label %21, label %13, !dbg !4664

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !4665
  %15 = load i32, ptr %14, align 4, !dbg !4665, !tbaa !1027
  %16 = icmp ne i32 %15, 9, !dbg !4666
  %17 = sext i1 %16 to i32, !dbg !4667
  br label %21, !dbg !4667

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4668

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !4670
  store i32 0, ptr %20, align 4, !dbg !4672, !tbaa !1027
  br label %21, !dbg !4670

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4649
  ret i32 %22, !dbg !4673
}

; Function Attrs: nounwind
declare !dbg !4674 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4678 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4716, metadata !DIExpression()), !dbg !4720
  call void @llvm.dbg.value(metadata i32 0, metadata !4717, metadata !DIExpression()), !dbg !4720
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4721
  call void @llvm.dbg.value(metadata i32 %2, metadata !4718, metadata !DIExpression()), !dbg !4720
  %3 = icmp slt i32 %2, 0, !dbg !4722
  br i1 %3, label %4, label %6, !dbg !4724

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4725
  br label %24, !dbg !4726

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4727
  %8 = icmp eq i32 %7, 0, !dbg !4727
  br i1 %8, label %13, label %9, !dbg !4729

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4730
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !4731
  %12 = icmp eq i64 %11, -1, !dbg !4732
  br i1 %12, label %16, label %13, !dbg !4733

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !4734
  %15 = icmp eq i32 %14, 0, !dbg !4734
  br i1 %15, label %16, label %18, !dbg !4735

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4717, metadata !DIExpression()), !dbg !4720
  call void @llvm.dbg.value(metadata i32 0, metadata !4719, metadata !DIExpression()), !dbg !4720
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4736
  call void @llvm.dbg.value(metadata i32 %17, metadata !4719, metadata !DIExpression()), !dbg !4720
  br label %24, !dbg !4737

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !4738
  %20 = load i32, ptr %19, align 4, !dbg !4738, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 %20, metadata !4717, metadata !DIExpression()), !dbg !4720
  call void @llvm.dbg.value(metadata i32 0, metadata !4719, metadata !DIExpression()), !dbg !4720
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4736
  call void @llvm.dbg.value(metadata i32 %21, metadata !4719, metadata !DIExpression()), !dbg !4720
  %22 = icmp eq i32 %20, 0, !dbg !4739
  br i1 %22, label %24, label %23, !dbg !4737

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4741, !tbaa !1027
  call void @llvm.dbg.value(metadata i32 -1, metadata !4719, metadata !DIExpression()), !dbg !4720
  br label %24, !dbg !4743

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4720
  ret i32 %25, !dbg !4744
}

; Function Attrs: nofree nounwind
declare !dbg !4745 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4746 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4747 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4748 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4751 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4789, metadata !DIExpression()), !dbg !4790
  %2 = icmp eq ptr %0, null, !dbg !4791
  br i1 %2, label %6, label %3, !dbg !4793

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4794
  %5 = icmp eq i32 %4, 0, !dbg !4794
  br i1 %5, label %6, label %8, !dbg !4795

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4796
  br label %16, !dbg !4797

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4798, metadata !DIExpression()), !dbg !4803
  %9 = load i32, ptr %0, align 8, !dbg !4805, !tbaa !4657
  %10 = and i32 %9, 256, !dbg !4807
  %11 = icmp eq i32 %10, 0, !dbg !4807
  br i1 %11, label %14, label %12, !dbg !4808

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !4809
  br label %14, !dbg !4809

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4810
  br label %16, !dbg !4811

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4790
  ret i32 %17, !dbg !4812
}

; Function Attrs: nofree nounwind
declare !dbg !4813 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4814 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4853, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 %1, metadata !4854, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i32 %2, metadata !4855, metadata !DIExpression()), !dbg !4859
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4860
  %5 = load ptr, ptr %4, align 8, !dbg !4860, !tbaa !4861
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4862
  %7 = load ptr, ptr %6, align 8, !dbg !4862, !tbaa !4863
  %8 = icmp eq ptr %5, %7, !dbg !4864
  br i1 %8, label %9, label %27, !dbg !4865

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4866
  %11 = load ptr, ptr %10, align 8, !dbg !4866, !tbaa !2335
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4867
  %13 = load ptr, ptr %12, align 8, !dbg !4867, !tbaa !4868
  %14 = icmp eq ptr %11, %13, !dbg !4869
  br i1 %14, label %15, label %27, !dbg !4870

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4871
  %17 = load ptr, ptr %16, align 8, !dbg !4871, !tbaa !4872
  %18 = icmp eq ptr %17, null, !dbg !4873
  br i1 %18, label %19, label %27, !dbg !4874

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4875
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !4876
  call void @llvm.dbg.value(metadata i64 %21, metadata !4856, metadata !DIExpression()), !dbg !4877
  %22 = icmp eq i64 %21, -1, !dbg !4878
  br i1 %22, label %29, label %23, !dbg !4880

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4881, !tbaa !4657
  %25 = and i32 %24, -17, !dbg !4881
  store i32 %25, ptr %0, align 8, !dbg !4881, !tbaa !4657
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4882
  store i64 %21, ptr %26, align 8, !dbg !4883, !tbaa !4884
  br label %29, !dbg !4885

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4886
  br label %29, !dbg !4887

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4859
  ret i32 %30, !dbg !4888
}

; Function Attrs: nofree nounwind
declare !dbg !4889 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4892 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4897, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata ptr %1, metadata !4898, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata i64 %2, metadata !4899, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata ptr %3, metadata !4900, metadata !DIExpression()), !dbg !4902
  %5 = icmp eq ptr %1, null, !dbg !4903
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4905
  %7 = select i1 %5, ptr @.str.162, ptr %1, !dbg !4905
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4905
  call void @llvm.dbg.value(metadata i64 %8, metadata !4899, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata ptr %7, metadata !4898, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata ptr %6, metadata !4897, metadata !DIExpression()), !dbg !4902
  %9 = icmp eq ptr %3, null, !dbg !4906
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4908
  call void @llvm.dbg.value(metadata ptr %10, metadata !4900, metadata !DIExpression()), !dbg !4902
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #40, !dbg !4909
  call void @llvm.dbg.value(metadata i64 %11, metadata !4901, metadata !DIExpression()), !dbg !4902
  %12 = icmp ult i64 %11, -3, !dbg !4910
  br i1 %12, label %13, label %17, !dbg !4912

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #41, !dbg !4913
  %15 = icmp eq i32 %14, 0, !dbg !4913
  br i1 %15, label %16, label %29, !dbg !4914

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4915, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.value(metadata ptr %10, metadata !4922, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i32 0, metadata !4925, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i64 8, metadata !4926, metadata !DIExpression()), !dbg !4927
  store i64 0, ptr %10, align 1, !dbg !4929
  br label %29, !dbg !4930

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4931
  br i1 %18, label %19, label %20, !dbg !4933

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !4934
  unreachable, !dbg !4934

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4935

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #40, !dbg !4937
  br i1 %23, label %29, label %24, !dbg !4938

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4939
  br i1 %25, label %29, label %26, !dbg !4942

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4943, !tbaa !1036
  %28 = zext i8 %27 to i32, !dbg !4944
  store i32 %28, ptr %6, align 4, !dbg !4945, !tbaa !1027
  br label %29, !dbg !4946

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4902
  ret i64 %30, !dbg !4947
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4948 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !4954 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4956, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata i64 %1, metadata !4957, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata i64 %2, metadata !4958, metadata !DIExpression()), !dbg !4960
  %4 = icmp eq i64 %2, 0, !dbg !4961
  br i1 %4, label %8, label %5, !dbg !4961

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4961
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4961
  br i1 %7, label %13, label %8, !dbg !4961

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4959, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4960
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4959, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4960
  %9 = mul i64 %2, %1, !dbg !4961
  call void @llvm.dbg.value(metadata i64 %9, metadata !4959, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata ptr %0, metadata !4963, metadata !DIExpression()), !dbg !4967
  call void @llvm.dbg.value(metadata i64 %9, metadata !4966, metadata !DIExpression()), !dbg !4967
  %10 = icmp eq i64 %9, 0, !dbg !4969
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4969
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #46, !dbg !4970
  br label %15, !dbg !4971

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4959, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4960
  %14 = tail call ptr @__errno_location() #43, !dbg !4972
  store i32 12, ptr %14, align 4, !dbg !4974, !tbaa !1027
  br label %15, !dbg !4975

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4960
  ret ptr %16, !dbg !4976
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4977 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4979, metadata !DIExpression()), !dbg !4984
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !4985
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4980, metadata !DIExpression()), !dbg !4986
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !4987
  %4 = icmp eq i32 %3, 0, !dbg !4987
  br i1 %4, label %5, label %12, !dbg !4989

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4990, metadata !DIExpression()), !dbg !4994
  call void @llvm.dbg.value(metadata ptr @.str.167, metadata !4993, metadata !DIExpression()), !dbg !4994
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.167, i64 2), !dbg !4997
  %7 = icmp eq i32 %6, 0, !dbg !4998
  br i1 %7, label %11, label %8, !dbg !4999

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4990, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.value(metadata ptr @.str.1.168, metadata !4993, metadata !DIExpression()), !dbg !5000
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.168, i64 6), !dbg !5002
  %10 = icmp eq i32 %9, 0, !dbg !5003
  br i1 %10, label %11, label %12, !dbg !5004

11:                                               ; preds = %8, %5
  br label %12, !dbg !5005

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4984
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !5006
  ret i1 %13, !dbg !5006
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5007 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5011, metadata !DIExpression()), !dbg !5014
  call void @llvm.dbg.value(metadata ptr %1, metadata !5012, metadata !DIExpression()), !dbg !5014
  call void @llvm.dbg.value(metadata i64 %2, metadata !5013, metadata !DIExpression()), !dbg !5014
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !5015
  ret i32 %4, !dbg !5016
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5017 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5021, metadata !DIExpression()), !dbg !5022
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !5023
  ret ptr %2, !dbg !5024
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5025 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5027, metadata !DIExpression()), !dbg !5029
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5030
  call void @llvm.dbg.value(metadata ptr %2, metadata !5028, metadata !DIExpression()), !dbg !5029
  ret ptr %2, !dbg !5031
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5032 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5034, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.value(metadata ptr %1, metadata !5035, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.value(metadata i64 %2, metadata !5036, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.value(metadata i32 %0, metadata !5027, metadata !DIExpression()), !dbg !5042
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5044
  call void @llvm.dbg.value(metadata ptr %4, metadata !5028, metadata !DIExpression()), !dbg !5042
  call void @llvm.dbg.value(metadata ptr %4, metadata !5037, metadata !DIExpression()), !dbg !5041
  %5 = icmp eq ptr %4, null, !dbg !5045
  br i1 %5, label %6, label %9, !dbg !5046

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5047
  br i1 %7, label %19, label %8, !dbg !5050

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5051, !tbaa !1036
  br label %19, !dbg !5052

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !5053
  call void @llvm.dbg.value(metadata i64 %10, metadata !5038, metadata !DIExpression()), !dbg !5054
  %11 = icmp ult i64 %10, %2, !dbg !5055
  br i1 %11, label %12, label %14, !dbg !5057

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5058
  call void @llvm.dbg.value(metadata ptr %1, metadata !5060, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata ptr %4, metadata !5063, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i64 %13, metadata !5064, metadata !DIExpression()), !dbg !5065
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #40, !dbg !5067
  br label %19, !dbg !5068

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5069
  br i1 %15, label %19, label %16, !dbg !5072

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5073
  call void @llvm.dbg.value(metadata ptr %1, metadata !5060, metadata !DIExpression()), !dbg !5075
  call void @llvm.dbg.value(metadata ptr %4, metadata !5063, metadata !DIExpression()), !dbg !5075
  call void @llvm.dbg.value(metadata i64 %17, metadata !5064, metadata !DIExpression()), !dbg !5075
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !5077
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5078
  store i8 0, ptr %18, align 1, !dbg !5079, !tbaa !1036
  br label %19, !dbg !5080

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5081
  ret i32 %20, !dbg !5082
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
attributes #17 = { nofree nounwind willreturn memory(argmem: read) }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
attributes #44 = { noreturn }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { nounwind allocsize(0) }
attributes #48 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!94, !862, !471, !864, !475, !866, !490, !800, !877, !544, !558, !609, !699, !879, !792, !886, !920, !813, !922, !924, !926, !928, !844, !930, !933, !935, !937}
!llvm.ident = !{!939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939}
!llvm.module.flags = !{!940, !941, !942, !943, !944, !945, !946}

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
!94 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, retainedTypes: !124, globals: !140, splitDebugInlining: false, nameTableKind: None)
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
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !135, line: 46, baseType: !136)
!135 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!459 = distinct !DIGlobalVariable(scope: null, file: !460, line: 72, type: !381, isLocal: true, isDefinition: true)
!460 = !DIFile(filename: "src/operand2sig.c", directory: "/src", checksumkind: CSK_MD5, checksum: "46beb430284fcb3f5c7434dd479a51b3")
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !460, line: 87, type: !463, isLocal: true, isDefinition: true)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 19)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !468, line: 3, type: !150, isLocal: true, isDefinition: true)
!468 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(name: "Version", scope: !471, file: !468, line: 3, type: !137, isLocal: false, isDefinition: true)
!471 = distinct !DICompileUnit(language: DW_LANG_C11, file: !468, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !472, splitDebugInlining: false, nameTableKind: None)
!472 = !{!466, !469}
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(name: "file_name", scope: !475, file: !476, line: 45, type: !137, isLocal: true, isDefinition: true)
!475 = distinct !DICompileUnit(language: DW_LANG_C11, file: !476, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !477, splitDebugInlining: false, nameTableKind: None)
!476 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!477 = !{!478, !480, !482, !484, !473, !486}
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !476, line: 121, type: !321, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !476, line: 121, type: !391, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !476, line: 123, type: !321, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !476, line: 126, type: !310, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !475, file: !476, line: 55, type: !190, isLocal: true, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !490, file: !491, line: 66, type: !539, isLocal: false, isDefinition: true)
!490 = distinct !DICompileUnit(language: DW_LANG_C11, file: !491, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !492, globals: !493, splitDebugInlining: false, nameTableKind: None)
!491 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!492 = !{!126, !139}
!493 = !{!494, !496, !521, !523, !525, !527, !488, !529, !531, !533, !535, !537}
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !491, line: 272, type: !284, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(name: "old_file_name", scope: !498, file: !491, line: 304, type: !137, isLocal: true, isDefinition: true)
!498 = distinct !DISubprogram(name: "verror_at_line", scope: !491, file: !491, line: 298, type: !499, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !514)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !105, !105, !137, !98, !137, !501}
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !502, line: 52, baseType: !503)
!502 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !504, line: 14, baseType: !505)
!504 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !506, baseType: !507)
!506 = !DIFile(filename: "lib/error.c", directory: "/src")
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !508)
!508 = !{!509, !510, !511, !512, !513}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !507, file: !506, baseType: !126, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !507, file: !506, baseType: !126, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !507, file: !506, baseType: !126, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !507, file: !506, baseType: !105, size: 32, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !507, file: !506, baseType: !105, size: 32, offset: 224)
!514 = !{!515, !516, !517, !518, !519, !520}
!515 = !DILocalVariable(name: "status", arg: 1, scope: !498, file: !491, line: 298, type: !105)
!516 = !DILocalVariable(name: "errnum", arg: 2, scope: !498, file: !491, line: 298, type: !105)
!517 = !DILocalVariable(name: "file_name", arg: 3, scope: !498, file: !491, line: 298, type: !137)
!518 = !DILocalVariable(name: "line_number", arg: 4, scope: !498, file: !491, line: 298, type: !98)
!519 = !DILocalVariable(name: "message", arg: 5, scope: !498, file: !491, line: 298, type: !137)
!520 = !DILocalVariable(name: "args", arg: 6, scope: !498, file: !491, line: 298, type: !501)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(name: "old_line_number", scope: !498, file: !491, line: 305, type: !98, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !491, line: 338, type: !291, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !491, line: 346, type: !19, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !491, line: 346, type: !301, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(name: "error_message_count", scope: !490, file: !491, line: 69, type: !98, isLocal: false, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !490, file: !491, line: 295, type: !105, isLocal: false, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !491, line: 208, type: !321, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !491, line: 208, type: !429, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !491, line: 214, type: !284, isLocal: true, isDefinition: true)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{null}
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(name: "program_name", scope: !544, file: !545, line: 31, type: !137, isLocal: false, isDefinition: true)
!544 = distinct !DICompileUnit(language: DW_LANG_C11, file: !545, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !546, globals: !547, splitDebugInlining: false, nameTableKind: None)
!545 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!546 = !{!125}
!547 = !{!542, !548, !550}
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !545, line: 46, type: !19, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !545, line: 49, type: !291, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "utf07FF", scope: !554, file: !555, line: 46, type: !582, isLocal: true, isDefinition: true)
!554 = distinct !DISubprogram(name: "proper_name_lite", scope: !555, file: !555, line: 38, type: !556, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !558, retainedNodes: !560)
!555 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!556 = !DISubroutineType(types: !557)
!557 = !{!137, !137, !137}
!558 = distinct !DICompileUnit(language: DW_LANG_C11, file: !555, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !559, splitDebugInlining: false, nameTableKind: None)
!559 = !{!552}
!560 = !{!561, !562, !563, !564, !569}
!561 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !554, file: !555, line: 38, type: !137)
!562 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !554, file: !555, line: 38, type: !137)
!563 = !DILocalVariable(name: "translation", scope: !554, file: !555, line: 40, type: !137)
!564 = !DILocalVariable(name: "w", scope: !554, file: !555, line: 47, type: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !566, line: 37, baseType: !567)
!566 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !184, line: 57, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !184, line: 42, baseType: !98)
!569 = !DILocalVariable(name: "mbs", scope: !554, file: !555, line: 48, type: !570)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !571, line: 6, baseType: !572)
!571 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !573, line: 21, baseType: !574)
!573 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !573, line: 13, size: 64, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !574, file: !573, line: 15, baseType: !105, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !574, file: !573, line: 20, baseType: !578, size: 32, offset: 32)
!578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !574, file: !573, line: 16, size: 32, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !578, file: !573, line: 18, baseType: !98, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !578, file: !573, line: 19, baseType: !291, size: 32)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 16, elements: !302)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !585, line: 78, type: !19, isLocal: true, isDefinition: true)
!585 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !585, line: 79, type: !296, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !585, line: 80, type: !590, isLocal: true, isDefinition: true)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 13)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !585, line: 81, type: !590, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !585, line: 82, type: !273, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !585, line: 83, type: !301, isLocal: true, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !585, line: 84, type: !19, isLocal: true, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !585, line: 85, type: !321, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !585, line: 86, type: !321, isLocal: true, isDefinition: true)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !585, line: 87, type: !19, isLocal: true, isDefinition: true)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !609, file: !585, line: 76, type: !695, isLocal: false, isDefinition: true)
!609 = distinct !DICompileUnit(language: DW_LANG_C11, file: !585, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !610, retainedTypes: !630, globals: !631, splitDebugInlining: false, nameTableKind: None)
!610 = !{!611, !625, !109}
!611 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !612, line: 42, baseType: !98, size: 32, elements: !613)
!612 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!613 = !{!614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624}
!614 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!615 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!616 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!617 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!618 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!619 = !DIEnumerator(name: "c_quoting_style", value: 5)
!620 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!621 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!622 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!623 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!624 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!625 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !612, line: 254, baseType: !98, size: 32, elements: !626)
!626 = !{!627, !628, !629}
!627 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!628 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!629 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!630 = !{!105, !133, !134}
!631 = !{!583, !586, !588, !593, !595, !597, !599, !601, !603, !605, !607, !632, !636, !646, !648, !653, !655, !657, !659, !661, !684, !691, !693}
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !609, file: !585, line: 92, type: !634, isLocal: false, isDefinition: true)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 320, elements: !80)
!635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !611)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !609, file: !585, line: 1040, type: !638, isLocal: false, isDefinition: true)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !585, line: 56, size: 448, elements: !639)
!639 = !{!640, !641, !642, !644, !645}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !638, file: !585, line: 59, baseType: !611, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !585, line: 62, baseType: !105, size: 32, offset: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !638, file: !585, line: 66, baseType: !643, size: 256, offset: 64)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 256, elements: !20)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !638, file: !585, line: 69, baseType: !137, size: 64, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !638, file: !585, line: 72, baseType: !137, size: 64, offset: 384)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !609, file: !585, line: 107, type: !638, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(name: "slot0", scope: !609, file: !585, line: 831, type: !650, isLocal: true, isDefinition: true)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !651)
!651 = !{!652}
!652 = !DISubrange(count: 256)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !585, line: 321, type: !301, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !585, line: 357, type: !301, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !585, line: 358, type: !301, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !585, line: 199, type: !321, isLocal: true, isDefinition: true)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(name: "quote", scope: !663, file: !585, line: 228, type: !682, isLocal: true, isDefinition: true)
!663 = distinct !DISubprogram(name: "gettext_quote", scope: !585, file: !585, line: 197, type: !664, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !666)
!664 = !DISubroutineType(types: !665)
!665 = !{!137, !137, !611}
!666 = !{!667, !668, !669, !670, !671}
!667 = !DILocalVariable(name: "msgid", arg: 1, scope: !663, file: !585, line: 197, type: !137)
!668 = !DILocalVariable(name: "s", arg: 2, scope: !663, file: !585, line: 197, type: !611)
!669 = !DILocalVariable(name: "translation", scope: !663, file: !585, line: 199, type: !137)
!670 = !DILocalVariable(name: "w", scope: !663, file: !585, line: 229, type: !565)
!671 = !DILocalVariable(name: "mbs", scope: !663, file: !585, line: 230, type: !672)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !571, line: 6, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !573, line: 21, baseType: !674)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !573, line: 13, size: 64, elements: !675)
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !674, file: !573, line: 15, baseType: !105, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !674, file: !573, line: 20, baseType: !678, size: 32, offset: 32)
!678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !674, file: !573, line: 16, size: 32, elements: !679)
!679 = !{!680, !681}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !678, file: !573, line: 18, baseType: !98, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !678, file: !573, line: 19, baseType: !291, size: 32)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !683)
!683 = !{!303, !293}
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(name: "slotvec", scope: !609, file: !585, line: 834, type: !686, isLocal: true, isDefinition: true)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !585, line: 823, size: 128, elements: !688)
!688 = !{!689, !690}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !687, file: !585, line: 825, baseType: !134, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !687, file: !585, line: 826, baseType: !125, size: 64, offset: 64)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(name: "nslots", scope: !609, file: !585, line: 832, type: !105, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(name: "slotvec0", scope: !609, file: !585, line: 833, type: !687, isLocal: true, isDefinition: true)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 704, elements: !397)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(name: "numname_table", scope: !699, file: !700, line: 43, type: !709, isLocal: true, isDefinition: true)
!699 = distinct !DICompileUnit(language: DW_LANG_C11, file: !700, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !701, globals: !702, splitDebugInlining: false, nameTableKind: None)
!700 = !DIFile(filename: "lib/sig2str.c", directory: "/src", checksumkind: CSK_MD5, checksum: "828136ef7ede39101f7053cda7cea598")
!701 = !{!98}
!702 = !{!703, !705, !707, !697}
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !700, line: 351, type: !296, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !700, line: 356, type: !296, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !700, line: 362, type: !291, isLocal: true, isDefinition: true)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !710, size: 3360, elements: !715)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numname", file: !700, line: 43, size: 96, elements: !711)
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !710, file: !700, line: 43, baseType: !105, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !710, file: !700, line: 43, baseType: !714, size: 64, offset: 32)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !20)
!715 = !{!716}
!716 = !DISubrange(count: 35)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !719, line: 67, type: !391, isLocal: true, isDefinition: true)
!719 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !719, line: 69, type: !321, isLocal: true, isDefinition: true)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !719, line: 83, type: !321, isLocal: true, isDefinition: true)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !719, line: 83, type: !291, isLocal: true, isDefinition: true)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !719, line: 85, type: !301, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !719, line: 88, type: !730, isLocal: true, isDefinition: true)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 171)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !719, line: 88, type: !157, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !719, line: 105, type: !362, isLocal: true, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !719, line: 109, type: !434, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !719, line: 113, type: !741, isLocal: true, isDefinition: true)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !742)
!742 = !{!743}
!743 = !DISubrange(count: 28)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !719, line: 120, type: !419, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !719, line: 127, type: !748, isLocal: true, isDefinition: true)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !749)
!749 = !{!750}
!750 = !DISubrange(count: 36)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(scope: null, file: !719, line: 134, type: !345, isLocal: true, isDefinition: true)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(scope: null, file: !719, line: 142, type: !755, isLocal: true, isDefinition: true)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !756)
!756 = !{!757}
!757 = !DISubrange(count: 44)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(scope: null, file: !719, line: 150, type: !760, isLocal: true, isDefinition: true)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 48)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !719, line: 159, type: !765, isLocal: true, isDefinition: true)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 52)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(scope: null, file: !719, line: 170, type: !770, isLocal: true, isDefinition: true)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !771)
!771 = !{!772}
!772 = !DISubrange(count: 60)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(scope: null, file: !719, line: 248, type: !273, isLocal: true, isDefinition: true)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(scope: null, file: !719, line: 248, type: !367, isLocal: true, isDefinition: true)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(scope: null, file: !719, line: 254, type: !273, isLocal: true, isDefinition: true)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(scope: null, file: !719, line: 254, type: !143, isLocal: true, isDefinition: true)
!781 = !DIGlobalVariableExpression(var: !782, expr: !DIExpression())
!782 = distinct !DIGlobalVariable(scope: null, file: !719, line: 254, type: !345, isLocal: true, isDefinition: true)
!783 = !DIGlobalVariableExpression(var: !784, expr: !DIExpression())
!784 = distinct !DIGlobalVariable(scope: null, file: !719, line: 259, type: !3, isLocal: true, isDefinition: true)
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(scope: null, file: !719, line: 259, type: !787, isLocal: true, isDefinition: true)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !788)
!788 = !{!789}
!789 = !DISubrange(count: 29)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !792, file: !793, line: 26, type: !795, isLocal: false, isDefinition: true)
!792 = distinct !DICompileUnit(language: DW_LANG_C11, file: !793, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !794, splitDebugInlining: false, nameTableKind: None)
!793 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!794 = !{!790}
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 376, elements: !796)
!796 = !{!797}
!797 = !DISubrange(count: 47)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(name: "exit_failure", scope: !800, file: !801, line: 24, type: !803, isLocal: false, isDefinition: true)
!800 = distinct !DICompileUnit(language: DW_LANG_C11, file: !801, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !802, splitDebugInlining: false, nameTableKind: None)
!801 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!802 = !{!798}
!803 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !105)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !806, line: 34, type: !310, isLocal: true, isDefinition: true)
!806 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(scope: null, file: !806, line: 34, type: !321, isLocal: true, isDefinition: true)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(scope: null, file: !806, line: 34, type: !340, isLocal: true, isDefinition: true)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !813, file: !814, line: 58, type: !838, isLocal: true, isDefinition: true)
!813 = distinct !DICompileUnit(language: DW_LANG_C11, file: !814, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !815, globals: !835, splitDebugInlining: false, nameTableKind: None)
!814 = !DIFile(filename: "lib/c-strtod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5149e55c3d66a821d48006aa16ce6f10")
!815 = !{!125, !816}
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !817, line: 24, baseType: !818)
!817 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/locale_t.h", directory: "", checksumkind: CSK_MD5, checksum: "4752f26e930c42056083e96227ff0057")
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !819, line: 41, baseType: !820)
!819 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__locale_t.h", directory: "", checksumkind: CSK_MD5, checksum: "79eea70c97dfcbc51f94cdf9446ea8a8")
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !819, line: 27, size: 1856, elements: !822)
!822 = !{!823, !827, !830, !832, !833}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !821, file: !819, line: 30, baseType: !824, size: 832)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !825, size: 832, elements: !591)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !819, line: 30, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !821, file: !819, line: 33, baseType: !828, size: 64, offset: 832)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !821, file: !819, line: 34, baseType: !831, size: 64, offset: 896)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !821, file: !819, line: 35, baseType: !831, size: 64, offset: 960)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !821, file: !819, line: 38, baseType: !834, size: 832, offset: 1024)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 832, elements: !591)
!835 = !{!836, !811}
!836 = !DIGlobalVariableExpression(var: !837, expr: !DIExpression())
!837 = distinct !DIGlobalVariable(scope: null, file: !814, line: 66, type: !301, isLocal: true, isDefinition: true)
!838 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !816)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(scope: null, file: !841, line: 108, type: !74, isLocal: true, isDefinition: true)
!841 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(name: "internal_state", scope: !844, file: !841, line: 97, type: !847, isLocal: true, isDefinition: true)
!844 = distinct !DICompileUnit(language: DW_LANG_C11, file: !841, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !845, globals: !846, splitDebugInlining: false, nameTableKind: None)
!845 = !{!126, !134, !139}
!846 = !{!839, !842}
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !571, line: 6, baseType: !848)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !573, line: 21, baseType: !849)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !573, line: 13, size: 64, elements: !850)
!850 = !{!851, !852}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !849, file: !573, line: 15, baseType: !105, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !849, file: !573, line: 20, baseType: !853, size: 32, offset: 32)
!853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !849, file: !573, line: 16, size: 32, elements: !854)
!854 = !{!855, !856}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !853, file: !573, line: 18, baseType: !98, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !853, file: !573, line: 19, baseType: !291, size: 32)
!857 = !DIGlobalVariableExpression(var: !858, expr: !DIExpression())
!858 = distinct !DIGlobalVariable(scope: null, file: !859, line: 35, type: !301, isLocal: true, isDefinition: true)
!859 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(scope: null, file: !859, line: 35, type: !296, isLocal: true, isDefinition: true)
!862 = distinct !DICompileUnit(language: DW_LANG_C11, file: !460, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !863, splitDebugInlining: false, nameTableKind: None)
!863 = !{!458, !461}
!864 = distinct !DICompileUnit(language: DW_LANG_C11, file: !865, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!865 = !DIFile(filename: "lib/cl-strtod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a67239aa557b1854772fcd1589240f00")
!866 = distinct !DICompileUnit(language: DW_LANG_C11, file: !867, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !868, retainedTypes: !873, splitDebugInlining: false, nameTableKind: None)
!867 = !DIFile(filename: "lib/dtotimespec.c", directory: "/src", checksumkind: CSK_MD5, checksum: "863541a7a9cbed8b745823733251add6")
!868 = !{!869}
!869 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !870, line: 44, baseType: !98, size: 32, elements: !871)
!870 = !DIFile(filename: "./lib/timespec.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f2321879fdee55a014e00353b7423449")
!871 = !{!872}
!872 = !DIEnumerator(name: "TIMESPEC_HZ", value: 1000000000)
!873 = !{!874}
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !875, line: 10, baseType: !876)
!875 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !184, line: 160, baseType: !253)
!877 = distinct !DICompileUnit(language: DW_LANG_C11, file: !878, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!878 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!879 = distinct !DICompileUnit(language: DW_LANG_C11, file: !719, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !880, retainedTypes: !884, globals: !885, splitDebugInlining: false, nameTableKind: None)
!880 = !{!881}
!881 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !719, line: 40, baseType: !98, size: 32, elements: !882)
!882 = !{!883}
!883 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!884 = !{!126}
!885 = !{!717, !720, !722, !724, !726, !728, !733, !735, !737, !739, !744, !746, !751, !753, !758, !763, !768, !773, !775, !777, !779, !781, !783, !785}
!886 = distinct !DICompileUnit(language: DW_LANG_C11, file: !887, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !888, retainedTypes: !919, splitDebugInlining: false, nameTableKind: None)
!887 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!888 = !{!889, !901}
!889 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !890, file: !887, line: 188, baseType: !98, size: 32, elements: !899)
!890 = distinct !DISubprogram(name: "x2nrealloc", scope: !887, file: !887, line: 176, type: !891, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !894)
!891 = !DISubroutineType(types: !892)
!892 = !{!126, !126, !893, !134}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!894 = !{!895, !896, !897, !898}
!895 = !DILocalVariable(name: "p", arg: 1, scope: !890, file: !887, line: 176, type: !126)
!896 = !DILocalVariable(name: "pn", arg: 2, scope: !890, file: !887, line: 176, type: !893)
!897 = !DILocalVariable(name: "s", arg: 3, scope: !890, file: !887, line: 176, type: !134)
!898 = !DILocalVariable(name: "n", scope: !890, file: !887, line: 178, type: !134)
!899 = !{!900}
!900 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!901 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !902, file: !887, line: 228, baseType: !98, size: 32, elements: !899)
!902 = distinct !DISubprogram(name: "xpalloc", scope: !887, file: !887, line: 223, type: !903, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !909)
!903 = !DISubroutineType(types: !904)
!904 = !{!126, !126, !905, !906, !908, !906}
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !907, line: 130, baseType: !908)
!907 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !135, line: 35, baseType: !253)
!909 = !{!910, !911, !912, !913, !914, !915, !916, !917, !918}
!910 = !DILocalVariable(name: "pa", arg: 1, scope: !902, file: !887, line: 223, type: !126)
!911 = !DILocalVariable(name: "pn", arg: 2, scope: !902, file: !887, line: 223, type: !905)
!912 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !902, file: !887, line: 223, type: !906)
!913 = !DILocalVariable(name: "n_max", arg: 4, scope: !902, file: !887, line: 223, type: !908)
!914 = !DILocalVariable(name: "s", arg: 5, scope: !902, file: !887, line: 223, type: !906)
!915 = !DILocalVariable(name: "n0", scope: !902, file: !887, line: 230, type: !906)
!916 = !DILocalVariable(name: "n", scope: !902, file: !887, line: 237, type: !906)
!917 = !DILocalVariable(name: "nbytes", scope: !902, file: !887, line: 248, type: !906)
!918 = !DILocalVariable(name: "adjusted_nbytes", scope: !902, file: !887, line: 252, type: !906)
!919 = !{!125, !126, !190, !253, !136}
!920 = distinct !DICompileUnit(language: DW_LANG_C11, file: !806, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !921, splitDebugInlining: false, nameTableKind: None)
!921 = !{!804, !807, !809}
!922 = distinct !DICompileUnit(language: DW_LANG_C11, file: !923, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!923 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!924 = distinct !DICompileUnit(language: DW_LANG_C11, file: !925, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!925 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!926 = distinct !DICompileUnit(language: DW_LANG_C11, file: !927, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !884, splitDebugInlining: false, nameTableKind: None)
!927 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!928 = distinct !DICompileUnit(language: DW_LANG_C11, file: !929, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !884, splitDebugInlining: false, nameTableKind: None)
!929 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!930 = distinct !DICompileUnit(language: DW_LANG_C11, file: !931, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !932, splitDebugInlining: false, nameTableKind: None)
!931 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!932 = !{!190, !136, !126}
!933 = distinct !DICompileUnit(language: DW_LANG_C11, file: !859, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !934, splitDebugInlining: false, nameTableKind: None)
!934 = !{!857, !860}
!935 = distinct !DICompileUnit(language: DW_LANG_C11, file: !936, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!936 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!937 = distinct !DICompileUnit(language: DW_LANG_C11, file: !938, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !884, splitDebugInlining: false, nameTableKind: None)
!938 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!939 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!940 = !{i32 7, !"Dwarf Version", i32 5}
!941 = !{i32 2, !"Debug Info Version", i32 3}
!942 = !{i32 1, !"wchar_size", i32 4}
!943 = !{i32 8, !"PIC Level", i32 2}
!944 = !{i32 7, !"PIE Level", i32 2}
!945 = !{i32 7, !"uwtable", i32 2}
!946 = !{i32 7, !"frame-pointer", i32 1}
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
!963 = !DILocation(line: 736, column: 3, scope: !964, inlinedAt: !966)
!964 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !97, file: !97, line: 734, type: !540, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !965)
!965 = !{}
!966 = distinct !DILocation(line: 277, column: 7, scope: !961)
!967 = !DILocation(line: 279, column: 7, scope: !961)
!968 = !DILocation(line: 285, column: 7, scope: !961)
!969 = !DILocation(line: 290, column: 7, scope: !961)
!970 = !DILocation(line: 295, column: 7, scope: !961)
!971 = !DILocation(line: 301, column: 7, scope: !961)
!972 = !DILocation(line: 306, column: 7, scope: !961)
!973 = !DILocation(line: 307, column: 7, scope: !961)
!974 = !DILocation(line: 309, column: 7, scope: !961)
!975 = !DILocation(line: 314, column: 7, scope: !961)
!976 = !DILocation(line: 320, column: 7, scope: !961)
!977 = !DILocalVariable(name: "program", arg: 1, scope: !978, file: !97, line: 836, type: !137)
!978 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !97, file: !97, line: 836, type: !979, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !981)
!979 = !DISubroutineType(types: !980)
!980 = !{null, !137}
!981 = !{!977, !982, !989, !990, !992, !993}
!982 = !DILocalVariable(name: "infomap", scope: !978, file: !97, line: 838, type: !983)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !984, size: 896, elements: !322)
!984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !985)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !978, file: !97, line: 838, size: 128, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !985, file: !97, line: 838, baseType: !137, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !985, file: !97, line: 838, baseType: !137, size: 64, offset: 64)
!989 = !DILocalVariable(name: "node", scope: !978, file: !97, line: 848, type: !137)
!990 = !DILocalVariable(name: "map_prog", scope: !978, file: !97, line: 849, type: !991)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!992 = !DILocalVariable(name: "lc_messages", scope: !978, file: !97, line: 861, type: !137)
!993 = !DILocalVariable(name: "url_program", scope: !978, file: !97, line: 874, type: !137)
!994 = !DILocation(line: 0, scope: !978, inlinedAt: !995)
!995 = distinct !DILocation(line: 330, column: 7, scope: !961)
!996 = !DILocation(line: 857, column: 3, scope: !978, inlinedAt: !995)
!997 = !DILocation(line: 861, column: 29, scope: !978, inlinedAt: !995)
!998 = !DILocation(line: 862, column: 7, scope: !999, inlinedAt: !995)
!999 = distinct !DILexicalBlock(scope: !978, file: !97, line: 862, column: 7)
!1000 = !DILocation(line: 862, column: 19, scope: !999, inlinedAt: !995)
!1001 = !DILocation(line: 862, column: 22, scope: !999, inlinedAt: !995)
!1002 = !DILocation(line: 862, column: 7, scope: !978, inlinedAt: !995)
!1003 = !DILocation(line: 868, column: 7, scope: !1004, inlinedAt: !995)
!1004 = distinct !DILexicalBlock(scope: !999, file: !97, line: 863, column: 5)
!1005 = !DILocation(line: 870, column: 5, scope: !1004, inlinedAt: !995)
!1006 = !DILocation(line: 875, column: 3, scope: !978, inlinedAt: !995)
!1007 = !DILocation(line: 877, column: 3, scope: !978, inlinedAt: !995)
!1008 = !DILocation(line: 332, column: 3, scope: !947)
!1009 = !DISubprogram(name: "dcgettext", scope: !1010, file: !1010, line: 51, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1010 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!125, !137, !137, !105}
!1013 = !DISubprogram(name: "__fprintf_chk", scope: !1014, file: !1014, line: 93, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1014 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!105, !1017, !105, !1018, null}
!1017 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !226)
!1018 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !137)
!1019 = !DISubprogram(name: "__printf_chk", scope: !1014, file: !1014, line: 95, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!105, !105, !1018, null}
!1022 = !DISubprogram(name: "fputs_unlocked", scope: !502, file: !502, line: 691, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
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
!1139 = !DISubprogram(name: "setlocale", scope: !1140, file: !1140, line: 122, type: !1141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1140 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!125, !105, !137}
!1143 = !DISubprogram(name: "strncmp", scope: !1144, file: !1144, line: 159, type: !1145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1144 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!105, !137, !137, !134}
!1147 = !DISubprogram(name: "exit", scope: !1148, file: !1148, line: 624, type: !130, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1148 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1149 = !DISubprogram(name: "getenv", scope: !1148, file: !1148, line: 641, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!125, !137}
!1152 = !DISubprogram(name: "strcmp", scope: !1144, file: !1144, line: 156, type: !1153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!105, !137, !137}
!1155 = !DISubprogram(name: "strspn", scope: !1144, file: !1144, line: 297, type: !1156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!136, !137, !137}
!1158 = !DISubprogram(name: "strchr", scope: !1144, file: !1144, line: 246, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!125, !137, !105}
!1161 = !DISubprogram(name: "__ctype_b_loc", scope: !110, file: !110, line: 79, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!1164}
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!1165 = !DISubprogram(name: "strcspn", scope: !1144, file: !1144, line: 293, type: !1156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1166 = !DISubprogram(name: "fwrite_unlocked", scope: !502, file: !502, line: 704, type: !1167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
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
!1204 = !DILocation(line: 0, scope: !1172)
!1205 = !DILocation(line: 514, column: 21, scope: !1172)
!1206 = !DILocation(line: 514, column: 3, scope: !1172)
!1207 = !DILocation(line: 515, column: 3, scope: !1172)
!1208 = !DILocation(line: 516, column: 3, scope: !1172)
!1209 = !DILocation(line: 517, column: 3, scope: !1172)
!1210 = !DILocalVariable(name: "status", arg: 1, scope: !1211, file: !97, line: 102, type: !105)
!1211 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !97, file: !97, line: 102, type: !130, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1212)
!1212 = !{!1210}
!1213 = !DILocation(line: 0, scope: !1211, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 519, column: 3, scope: !1172)
!1215 = !DILocation(line: 105, column: 18, scope: !1216, inlinedAt: !1214)
!1216 = distinct !DILexicalBlock(scope: !1211, file: !97, line: 104, column: 7)
!1217 = !DILocation(line: 520, column: 3, scope: !1172)
!1218 = !DILocation(line: 522, column: 3, scope: !1172)
!1219 = !DILocation(line: 522, column: 15, scope: !1172)
!1220 = !DILocation(line: 528, column: 22, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 526, column: 9)
!1222 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 524, column: 5)
!1223 = !DILocation(line: 529, column: 11, scope: !1221)
!1224 = !DILocation(line: 532, column: 40, scope: !1221)
!1225 = !DILocation(line: 532, column: 24, scope: !1221)
!1226 = !DILocation(line: 532, column: 22, scope: !1221)
!1227 = !{!1228, !1228, i64 0}
!1228 = !{!"double", !958, i64 0}
!1229 = !DILocation(line: 533, column: 11, scope: !1221)
!1230 = !DILocation(line: 536, column: 27, scope: !1221)
!1231 = !DILocation(line: 537, column: 11, scope: !1221)
!1232 = !DILocation(line: 540, column: 38, scope: !1221)
!1233 = !DILocation(line: 540, column: 25, scope: !1221)
!1234 = !DILocation(line: 540, column: 23, scope: !1221)
!1235 = !DILocation(line: 541, column: 27, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1221, file: !2, line: 541, column: 15)
!1237 = !DILocation(line: 541, column: 15, scope: !1221)
!1238 = distinct !{!1238, !1218, !1239, !1074}
!1239 = !DILocation(line: 557, column: 5, scope: !1172)
!1240 = !DILocation(line: 542, column: 13, scope: !1236)
!1241 = !DILocation(line: 546, column: 19, scope: !1221)
!1242 = !DILocation(line: 547, column: 11, scope: !1221)
!1243 = !DILocation(line: 549, column: 9, scope: !1221)
!1244 = !DILocation(line: 551, column: 9, scope: !1221)
!1245 = !DILocation(line: 554, column: 11, scope: !1221)
!1246 = !DILocation(line: 559, column: 14, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 559, column: 7)
!1248 = !DILocation(line: 559, column: 12, scope: !1247)
!1249 = !DILocation(line: 559, column: 21, scope: !1247)
!1250 = !DILocation(line: 559, column: 7, scope: !1172)
!1251 = !DILocation(line: 560, column: 5, scope: !1247)
!1252 = !DILocation(line: 562, column: 40, scope: !1172)
!1253 = !DILocation(line: 562, column: 29, scope: !1172)
!1254 = !DILocation(line: 562, column: 13, scope: !1172)
!1255 = !DILocation(line: 564, column: 11, scope: !1172)
!1256 = !DILocation(line: 564, column: 8, scope: !1172)
!1257 = !DILocation(line: 565, column: 13, scope: !1172)
!1258 = !DILocation(line: 565, column: 11, scope: !1172)
!1259 = !DILocation(line: 571, column: 8, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 571, column: 7)
!1261 = !DILocation(line: 571, column: 7, scope: !1172)
!1262 = !DILocation(line: 572, column: 5, scope: !1260)
!1263 = !DILocation(line: 576, column: 20, scope: !1172)
!1264 = !DILocalVariable(name: "sigterm", arg: 1, scope: !1265, file: !2, line: 437, type: !105)
!1265 = distinct !DISubprogram(name: "install_cleanup", scope: !2, file: !2, line: 437, type: !130, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1266)
!1266 = !{!1264, !1267, !1355, !1357}
!1267 = !DILocalVariable(name: "sa", scope: !1265, file: !2, line: 439, type: !1268)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1269, line: 27, size: 1216, elements: !1270)
!1269 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/sigaction.h", directory: "", checksumkind: CSK_MD5, checksum: "95401d18e887df415f59d7a2cb411c28")
!1270 = !{!1271, !1352, !1353, !1354}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !1268, file: !1269, line: 38, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1268, file: !1269, line: 31, size: 64, elements: !1273)
!1273 = !{!1274, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1272, file: !1269, line: 34, baseType: !127, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !1272, file: !1269, line: 36, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !105, !1279, !126}
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !1281, line: 124, baseType: !1282)
!1281 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/siginfo_t.h", directory: "", checksumkind: CSK_MD5, checksum: "023cf7b0ef843da262cf07900eda0ac5")
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1281, line: 36, size: 1024, elements: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1288}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1282, file: !1281, line: 38, baseType: !105, size: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1282, file: !1281, line: 40, baseType: !105, size: 32, offset: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1282, file: !1281, line: 42, baseType: !105, size: 32, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1282, file: !1281, line: 48, baseType: !105, size: 32, offset: 96)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1282, file: !1281, line: 123, baseType: !1289, size: 896, offset: 128)
!1289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1282, file: !1281, line: 51, size: 896, elements: !1290)
!1290 = !{!1291, !1293, !1299, !1311, !1317, !1326, !1341, !1346}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !1289, file: !1281, line: 53, baseType: !1292, size: 896)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 896, elements: !742)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1289, file: !1281, line: 60, baseType: !1294, size: 64)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !1281, line: 56, size: 64, elements: !1295)
!1295 = !{!1296, !1297}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1294, file: !1281, line: 58, baseType: !183, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1294, file: !1281, line: 59, baseType: !1298, size: 32, offset: 32)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !184, line: 146, baseType: !98)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1289, file: !1281, line: 68, baseType: !1300, size: 128)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !1281, line: 63, size: 128, elements: !1301)
!1301 = !{!1302, !1303, !1304}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !1300, file: !1281, line: 65, baseType: !105, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !1300, file: !1281, line: 66, baseType: !105, size: 32, offset: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1300, file: !1281, line: 67, baseType: !1305, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigval_t", file: !1306, line: 30, baseType: !1307)
!1306 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__sigval_t.h", directory: "", checksumkind: CSK_MD5, checksum: "bc7605d16e396c16f725f8da13f6eb20")
!1307 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1306, line: 24, size: 64, elements: !1308)
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1307, file: !1306, line: 26, baseType: !105, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1307, file: !1306, line: 27, baseType: !126, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1289, file: !1281, line: 76, baseType: !1312, size: 128)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !1281, line: 71, size: 128, elements: !1313)
!1313 = !{!1314, !1315, !1316}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1312, file: !1281, line: 73, baseType: !183, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1312, file: !1281, line: 74, baseType: !1298, size: 32, offset: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1312, file: !1281, line: 75, baseType: !1305, size: 64, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1289, file: !1281, line: 86, baseType: !1318, size: 256)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !1281, line: 79, size: 256, elements: !1319)
!1319 = !{!1320, !1321, !1322, !1323, !1325}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1318, file: !1281, line: 81, baseType: !183, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1318, file: !1281, line: 82, baseType: !1298, size: 32, offset: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !1318, file: !1281, line: 83, baseType: !105, size: 32, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !1318, file: !1281, line: 84, baseType: !1324, size: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !184, line: 156, baseType: !253)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !1318, file: !1281, line: 85, baseType: !1324, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1289, file: !1281, line: 105, baseType: !1327, size: 256)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !1281, line: 89, size: 256, elements: !1328)
!1328 = !{!1329, !1330, !1332}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !1327, file: !1281, line: 91, baseType: !126, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !1327, file: !1281, line: 93, baseType: !1331, size: 16, offset: 64)
!1331 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_bounds", scope: !1327, file: !1281, line: 104, baseType: !1333, size: 128, offset: 128)
!1333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1327, file: !1281, line: 94, size: 128, elements: !1334)
!1334 = !{!1335, !1340}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1333, file: !1281, line: 101, baseType: !1336, size: 128)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1333, file: !1281, line: 97, size: 128, elements: !1337)
!1337 = !{!1338, !1339}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1336, file: !1281, line: 99, baseType: !126, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1336, file: !1281, line: 100, baseType: !126, size: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1333, file: !1281, line: 103, baseType: !568, size: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1289, file: !1281, line: 112, baseType: !1342, size: 128)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !1281, line: 108, size: 128, elements: !1343)
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !1342, file: !1281, line: 110, baseType: !253, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !1342, file: !1281, line: 111, baseType: !105, size: 32, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1289, file: !1281, line: 121, baseType: !1347, size: 128)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !1281, line: 116, size: 128, elements: !1348)
!1348 = !{!1349, !1350, !1351}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1347, file: !1281, line: 118, baseType: !126, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1347, file: !1281, line: 119, baseType: !105, size: 32, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1347, file: !1281, line: 120, baseType: !98, size: 32, offset: 96)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1268, file: !1269, line: 46, baseType: !1184, size: 1024, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1268, file: !1269, line: 49, baseType: !105, size: 32, offset: 1088)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1268, file: !1269, line: 52, baseType: !539, size: 64, offset: 1152)
!1355 = !DILocalVariable(name: "i", scope: !1356, file: !2, line: 445, type: !105)
!1356 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 445, column: 3)
!1357 = !DILocalVariable(name: "s", scope: !1358, file: !2, line: 450, type: !105)
!1358 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 450, column: 3)
!1359 = !DILocation(line: 0, scope: !1265, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 576, column: 3, scope: !1172)
!1361 = !DILocation(line: 439, column: 3, scope: !1265, inlinedAt: !1360)
!1362 = !DILocation(line: 439, column: 20, scope: !1265, inlinedAt: !1360)
!1363 = !DILocation(line: 440, column: 20, scope: !1265, inlinedAt: !1360)
!1364 = !DILocation(line: 440, column: 3, scope: !1265, inlinedAt: !1360)
!1365 = !DILocation(line: 441, column: 17, scope: !1265, inlinedAt: !1360)
!1366 = !DILocation(line: 442, column: 6, scope: !1265, inlinedAt: !1360)
!1367 = !DILocation(line: 442, column: 15, scope: !1265, inlinedAt: !1360)
!1368 = !{!1369, !1028, i64 136}
!1369 = !{!"sigaction", !958, i64 0, !1370, i64 8, !1028, i64 136, !957, i64 144}
!1370 = !{!"", !958, i64 0}
!1371 = !DILocation(line: 0, scope: !1356, inlinedAt: !1360)
!1372 = !DILocation(line: 445, column: 3, scope: !1356, inlinedAt: !1360)
!1373 = !DILocation(line: 450, column: 16, scope: !1358, inlinedAt: !1360)
!1374 = !DILocation(line: 0, scope: !1358, inlinedAt: !1360)
!1375 = !DILocation(line: 450, column: 31, scope: !1376, inlinedAt: !1360)
!1376 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 450, column: 3)
!1377 = !DILocation(line: 450, column: 28, scope: !1376, inlinedAt: !1360)
!1378 = !DILocation(line: 450, column: 3, scope: !1358, inlinedAt: !1360)
!1379 = !DILocation(line: 446, column: 29, scope: !1380, inlinedAt: !1360)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 446, column: 9)
!1381 = distinct !DILexicalBlock(scope: !1356, file: !2, line: 445, column: 3)
!1382 = !DILocalVariable(name: "sig", arg: 1, scope: !1383, file: !2, line: 422, type: !105)
!1383 = distinct !DISubprogram(name: "sig_needs_handling", scope: !2, file: !2, line: 422, type: !1384, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1386)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!190, !105, !105}
!1386 = !{!1382, !1387, !1388, !1389}
!1387 = !DILocalVariable(name: "sigterm", arg: 2, scope: !1383, file: !2, line: 422, type: !105)
!1388 = !DILocalVariable(name: "old_sa", scope: !1383, file: !2, line: 430, type: !1268)
!1389 = !DILocalVariable(name: "ret", scope: !1383, file: !2, line: 432, type: !190)
!1390 = !DILocation(line: 0, scope: !1383, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 446, column: 9, scope: !1380, inlinedAt: !1360)
!1392 = !DILocation(line: 424, column: 11, scope: !1393, inlinedAt: !1391)
!1393 = distinct !DILexicalBlock(scope: !1383, file: !2, line: 424, column: 7)
!1394 = !DILocation(line: 424, column: 22, scope: !1393, inlinedAt: !1391)
!1395 = !DILocation(line: 430, column: 3, scope: !1383, inlinedAt: !1391)
!1396 = !DILocation(line: 430, column: 20, scope: !1383, inlinedAt: !1391)
!1397 = !DILocation(line: 431, column: 3, scope: !1383, inlinedAt: !1391)
!1398 = !DILocation(line: 432, column: 21, scope: !1383, inlinedAt: !1391)
!1399 = !DILocation(line: 432, column: 32, scope: !1383, inlinedAt: !1391)
!1400 = !DILocation(line: 434, column: 1, scope: !1383, inlinedAt: !1391)
!1401 = !DILocation(line: 446, column: 9, scope: !1381, inlinedAt: !1360)
!1402 = !DILocation(line: 447, column: 7, scope: !1380, inlinedAt: !1360)
!1403 = !DILocation(line: 445, column: 44, scope: !1381, inlinedAt: !1360)
!1404 = !DILocation(line: 445, column: 21, scope: !1381, inlinedAt: !1360)
!1405 = distinct !{!1405, !1372, !1406, !1074}
!1406 = !DILocation(line: 447, column: 40, scope: !1356, inlinedAt: !1360)
!1407 = !DILocation(line: 0, scope: !1383, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 451, column: 9, scope: !1409, inlinedAt: !1360)
!1409 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 451, column: 9)
!1410 = !DILocation(line: 424, column: 11, scope: !1393, inlinedAt: !1408)
!1411 = !DILocation(line: 424, column: 22, scope: !1393, inlinedAt: !1408)
!1412 = !DILocation(line: 430, column: 3, scope: !1383, inlinedAt: !1408)
!1413 = !DILocation(line: 430, column: 20, scope: !1383, inlinedAt: !1408)
!1414 = !DILocation(line: 431, column: 3, scope: !1383, inlinedAt: !1408)
!1415 = !DILocation(line: 432, column: 21, scope: !1383, inlinedAt: !1408)
!1416 = !DILocation(line: 432, column: 32, scope: !1383, inlinedAt: !1408)
!1417 = !DILocation(line: 434, column: 1, scope: !1383, inlinedAt: !1408)
!1418 = !DILocation(line: 451, column: 9, scope: !1376, inlinedAt: !1360)
!1419 = !DILocation(line: 452, column: 7, scope: !1409, inlinedAt: !1360)
!1420 = !DILocation(line: 450, column: 42, scope: !1376, inlinedAt: !1360)
!1421 = distinct !{!1421, !1378, !1422, !1074}
!1422 = !DILocation(line: 452, column: 30, scope: !1358, inlinedAt: !1360)
!1423 = !DILocation(line: 454, column: 3, scope: !1265, inlinedAt: !1360)
!1424 = !DILocation(line: 455, column: 1, scope: !1265, inlinedAt: !1360)
!1425 = !DILocation(line: 577, column: 3, scope: !1172)
!1426 = !DILocation(line: 578, column: 3, scope: !1172)
!1427 = !DILocation(line: 406, column: 3, scope: !1428, inlinedAt: !1431)
!1428 = distinct !DISubprogram(name: "install_sigchld", scope: !2, file: !2, line: 404, type: !540, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1429)
!1429 = !{!1430}
!1430 = !DILocalVariable(name: "sa", scope: !1428, file: !2, line: 406, type: !1268)
!1431 = distinct !DILocation(line: 579, column: 3, scope: !1172)
!1432 = !DILocation(line: 406, column: 20, scope: !1428, inlinedAt: !1431)
!1433 = !DILocation(line: 407, column: 20, scope: !1428, inlinedAt: !1431)
!1434 = !DILocation(line: 407, column: 3, scope: !1428, inlinedAt: !1431)
!1435 = !DILocation(line: 408, column: 17, scope: !1428, inlinedAt: !1431)
!1436 = !DILocation(line: 409, column: 6, scope: !1428, inlinedAt: !1431)
!1437 = !DILocation(line: 409, column: 15, scope: !1428, inlinedAt: !1431)
!1438 = !DILocation(line: 412, column: 3, scope: !1428, inlinedAt: !1431)
!1439 = !DILocation(line: 416, column: 3, scope: !1428, inlinedAt: !1431)
!1440 = !DILocation(line: 417, column: 1, scope: !1428, inlinedAt: !1431)
!1441 = !DILocation(line: 583, column: 3, scope: !1172)
!1442 = !DILocation(line: 586, column: 3, scope: !1172)
!1443 = !DILocation(line: 586, column: 12, scope: !1172)
!1444 = !DILocation(line: 587, column: 27, scope: !1172)
!1445 = !DILocalVariable(name: "sigterm", arg: 1, scope: !1446, file: !2, line: 463, type: !105)
!1446 = distinct !DISubprogram(name: "block_cleanup_and_chld", scope: !2, file: !2, line: 463, type: !1447, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1450)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{null, !105, !1449}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1450 = !{!1445, !1451, !1452, !1453, !1455}
!1451 = !DILocalVariable(name: "old_set", arg: 2, scope: !1446, file: !2, line: 463, type: !1449)
!1452 = !DILocalVariable(name: "block_set", scope: !1446, file: !2, line: 465, type: !1182)
!1453 = !DILocalVariable(name: "i", scope: !1454, file: !2, line: 468, type: !105)
!1454 = distinct !DILexicalBlock(scope: !1446, file: !2, line: 468, column: 3)
!1455 = !DILocalVariable(name: "s", scope: !1456, file: !2, line: 472, type: !105)
!1456 = distinct !DILexicalBlock(scope: !1446, file: !2, line: 472, column: 3)
!1457 = !DILocation(line: 0, scope: !1446, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 587, column: 3, scope: !1172)
!1459 = !DILocation(line: 465, column: 3, scope: !1446, inlinedAt: !1458)
!1460 = !DILocation(line: 465, column: 12, scope: !1446, inlinedAt: !1458)
!1461 = !DILocation(line: 466, column: 3, scope: !1446, inlinedAt: !1458)
!1462 = !DILocation(line: 0, scope: !1454, inlinedAt: !1458)
!1463 = !DILocation(line: 468, column: 3, scope: !1454, inlinedAt: !1458)
!1464 = !DILocation(line: 472, column: 16, scope: !1456, inlinedAt: !1458)
!1465 = !DILocation(line: 0, scope: !1456, inlinedAt: !1458)
!1466 = !DILocation(line: 472, column: 31, scope: !1467, inlinedAt: !1458)
!1467 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 472, column: 3)
!1468 = !DILocation(line: 472, column: 28, scope: !1467, inlinedAt: !1458)
!1469 = !DILocation(line: 472, column: 3, scope: !1456, inlinedAt: !1458)
!1470 = !DILocation(line: 469, column: 29, scope: !1471, inlinedAt: !1458)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 469, column: 9)
!1472 = distinct !DILexicalBlock(scope: !1454, file: !2, line: 468, column: 3)
!1473 = !DILocation(line: 0, scope: !1383, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 469, column: 9, scope: !1471, inlinedAt: !1458)
!1475 = !DILocation(line: 424, column: 11, scope: !1393, inlinedAt: !1474)
!1476 = !DILocation(line: 424, column: 22, scope: !1393, inlinedAt: !1474)
!1477 = !DILocation(line: 430, column: 3, scope: !1383, inlinedAt: !1474)
!1478 = !DILocation(line: 430, column: 20, scope: !1383, inlinedAt: !1474)
!1479 = !DILocation(line: 431, column: 3, scope: !1383, inlinedAt: !1474)
!1480 = !DILocation(line: 432, column: 21, scope: !1383, inlinedAt: !1474)
!1481 = !DILocation(line: 432, column: 32, scope: !1383, inlinedAt: !1474)
!1482 = !DILocation(line: 434, column: 1, scope: !1383, inlinedAt: !1474)
!1483 = !DILocation(line: 469, column: 9, scope: !1472, inlinedAt: !1458)
!1484 = !DILocation(line: 470, column: 7, scope: !1471, inlinedAt: !1458)
!1485 = !DILocation(line: 468, column: 44, scope: !1472, inlinedAt: !1458)
!1486 = !DILocation(line: 468, column: 21, scope: !1472, inlinedAt: !1458)
!1487 = distinct !{!1487, !1463, !1488, !1074}
!1488 = !DILocation(line: 470, column: 41, scope: !1454, inlinedAt: !1458)
!1489 = !DILocation(line: 476, column: 3, scope: !1446, inlinedAt: !1458)
!1490 = !DILocation(line: 478, column: 3, scope: !1446, inlinedAt: !1458)
!1491 = !DILocation(line: 480, column: 7, scope: !1492, inlinedAt: !1458)
!1492 = distinct !DILexicalBlock(scope: !1446, file: !2, line: 480, column: 7)
!1493 = !DILocation(line: 480, column: 52, scope: !1492, inlinedAt: !1458)
!1494 = !DILocation(line: 480, column: 7, scope: !1446, inlinedAt: !1458)
!1495 = !DILocation(line: 0, scope: !1383, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 473, column: 9, scope: !1497, inlinedAt: !1458)
!1497 = distinct !DILexicalBlock(scope: !1467, file: !2, line: 473, column: 9)
!1498 = !DILocation(line: 424, column: 11, scope: !1393, inlinedAt: !1496)
!1499 = !DILocation(line: 424, column: 22, scope: !1393, inlinedAt: !1496)
!1500 = !DILocation(line: 430, column: 3, scope: !1383, inlinedAt: !1496)
!1501 = !DILocation(line: 430, column: 20, scope: !1383, inlinedAt: !1496)
!1502 = !DILocation(line: 431, column: 3, scope: !1383, inlinedAt: !1496)
!1503 = !DILocation(line: 432, column: 21, scope: !1383, inlinedAt: !1496)
!1504 = !DILocation(line: 432, column: 32, scope: !1383, inlinedAt: !1496)
!1505 = !DILocation(line: 434, column: 1, scope: !1383, inlinedAt: !1496)
!1506 = !DILocation(line: 473, column: 9, scope: !1467, inlinedAt: !1458)
!1507 = !DILocation(line: 474, column: 7, scope: !1497, inlinedAt: !1458)
!1508 = !DILocation(line: 472, column: 42, scope: !1467, inlinedAt: !1458)
!1509 = distinct !{!1509, !1469, !1510, !1074}
!1510 = !DILocation(line: 474, column: 31, scope: !1456, inlinedAt: !1458)
!1511 = !DILocation(line: 481, column: 5, scope: !1492, inlinedAt: !1458)
!1512 = !DILocation(line: 482, column: 1, scope: !1446, inlinedAt: !1458)
!1513 = !DILocation(line: 593, column: 23, scope: !1172)
!1514 = !DILocation(line: 600, column: 19, scope: !1172)
!1515 = !DILocation(line: 600, column: 17, scope: !1172)
!1516 = !DILocation(line: 601, column: 7, scope: !1172)
!1517 = !DILocation(line: 603, column: 7, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 602, column: 5)
!1519 = !DILocation(line: 604, column: 7, scope: !1518)
!1520 = !DILocation(line: 610, column: 32, scope: !1192)
!1521 = !DILocation(line: 610, column: 7, scope: !1192)
!1522 = !DILocation(line: 615, column: 11, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 615, column: 11)
!1524 = !DILocation(line: 615, column: 22, scope: !1523)
!1525 = !DILocation(line: 615, column: 11, scope: !1192)
!1526 = !DILocation(line: 619, column: 11, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 619, column: 11)
!1528 = !DILocation(line: 619, column: 54, scope: !1527)
!1529 = !DILocation(line: 619, column: 11, scope: !1192)
!1530 = !DILocation(line: 621, column: 11, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 620, column: 9)
!1532 = !DILocation(line: 622, column: 11, scope: !1531)
!1533 = !DILocation(line: 626, column: 7, scope: !1192)
!1534 = !DILocation(line: 627, column: 7, scope: !1192)
!1535 = !DILocation(line: 629, column: 15, scope: !1192)
!1536 = !DILocation(line: 629, column: 7, scope: !1192)
!1537 = !DILocation(line: 632, column: 25, scope: !1192)
!1538 = !DILocation(line: 632, column: 31, scope: !1192)
!1539 = !DILocation(line: 0, scope: !1192)
!1540 = !DILocation(line: 633, column: 7, scope: !1192)
!1541 = !DILocation(line: 639, column: 7, scope: !1196)
!1542 = !DILocation(line: 641, column: 7, scope: !1196)
!1543 = !DILocation(line: 647, column: 38, scope: !1196)
!1544 = !DILocation(line: 0, scope: !1196)
!1545 = !DILocation(line: 647, column: 29, scope: !1196)
!1546 = !DILocation(line: 647, column: 72, scope: !1196)
!1547 = !DILocation(line: 647, column: 7, scope: !1196)
!1548 = !DILocation(line: 648, column: 9, scope: !1196)
!1549 = distinct !{!1549, !1547, !1550, !1074}
!1550 = !DILocation(line: 648, column: 30, scope: !1196)
!1551 = !DILocation(line: 650, column: 23, scope: !1203)
!1552 = !DILocation(line: 650, column: 11, scope: !1196)
!1553 = !DILocation(line: 653, column: 11, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 651, column: 9)
!1555 = !DILocation(line: 655, column: 9, scope: !1554)
!1556 = !DILocation(line: 658, column: 15, scope: !1201)
!1557 = !DILocation(line: 658, column: 15, scope: !1202)
!1558 = !DILocation(line: 659, column: 13, scope: !1201)
!1559 = !DILocation(line: 660, column: 20, scope: !1200)
!1560 = !DILocation(line: 660, column: 20, scope: !1201)
!1561 = !DILocation(line: 0, scope: !1199)
!1562 = !DILocation(line: 663, column: 19, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 663, column: 19)
!1564 = !DILocation(line: 663, column: 19, scope: !1199)
!1565 = !DILocation(line: 664, column: 17, scope: !1563)
!1566 = !DILocation(line: 665, column: 20, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 665, column: 19)
!1568 = !DILocation(line: 665, column: 30, scope: !1567)
!1569 = !DILocation(line: 490, column: 7, scope: !1570, inlinedAt: !1574)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !2, line: 490, column: 7)
!1571 = distinct !DISubprogram(name: "disable_core_dumps", scope: !2, file: !2, line: 487, type: !1572, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !965)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!190}
!1574 = distinct !DILocation(line: 665, column: 33, scope: !1567)
!1575 = !DILocation(line: 490, column: 34, scope: !1570, inlinedAt: !1574)
!1576 = !DILocation(line: 490, column: 7, scope: !1571, inlinedAt: !1574)
!1577 = !DILocation(line: 503, column: 3, scope: !1571, inlinedAt: !1574)
!1578 = !DILocation(line: 665, column: 19, scope: !1199)
!1579 = !DILocation(line: 668, column: 19, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1567, file: !2, line: 666, column: 17)
!1581 = !DILocation(line: 669, column: 19, scope: !1580)
!1582 = !DILocation(line: 670, column: 19, scope: !1580)
!1583 = !DILocation(line: 671, column: 17, scope: !1580)
!1584 = !DILocation(line: 675, column: 19, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 675, column: 19)
!1586 = !DILocation(line: 675, column: 29, scope: !1585)
!1587 = !DILocation(line: 676, column: 33, scope: !1585)
!1588 = !DILocation(line: 676, column: 17, scope: !1585)
!1589 = !DILocation(line: 677, column: 28, scope: !1199)
!1590 = !DILocation(line: 678, column: 13, scope: !1199)
!1591 = !DILocation(line: 682, column: 15, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 680, column: 13)
!1593 = !DILocation(line: 687, column: 11, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 687, column: 11)
!1595 = !DILocation(line: 687, column: 21, scope: !1594)
!1596 = !DILocation(line: 690, column: 5, scope: !1193)
!1597 = !DILocation(line: 0, scope: !1194)
!1598 = !DILocation(line: 691, column: 1, scope: !1172)
!1599 = !DISubprogram(name: "bindtextdomain", scope: !1010, file: !1010, line: 86, type: !1600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!125, !137, !137}
!1602 = !DISubprogram(name: "textdomain", scope: !1010, file: !1010, line: 82, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1603 = !DISubprogram(name: "atexit", scope: !1148, file: !1148, line: 602, type: !1604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!105, !539}
!1606 = !DISubprogram(name: "getopt_long", scope: !447, file: !447, line: 66, type: !1607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!105, !105, !1609, !137, !1611, !452}
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!1612 = distinct !DISubprogram(name: "parse_duration", scope: !2, file: !2, line: 371, type: !1613, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1615)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!187, !137}
!1615 = !{!1616, !1617, !1618, !1619}
!1616 = !DILocalVariable(name: "str", arg: 1, scope: !1612, file: !2, line: 371, type: !137)
!1617 = !DILocalVariable(name: "ep", scope: !1612, file: !2, line: 373, type: !125)
!1618 = !DILocalVariable(name: "duration", scope: !1612, file: !2, line: 375, type: !187)
!1619 = !DILocalVariable(name: "s", scope: !1612, file: !2, line: 376, type: !187)
!1620 = !DILocation(line: 0, scope: !1612)
!1621 = !DILocation(line: 373, column: 3, scope: !1612)
!1622 = !DILocation(line: 374, column: 3, scope: !1612)
!1623 = !DILocation(line: 374, column: 9, scope: !1612)
!1624 = !DILocation(line: 375, column: 21, scope: !1612)
!1625 = !DILocation(line: 376, column: 41, scope: !1612)
!1626 = !DILocalVariable(name: "c", arg: 1, scope: !1627, file: !1628, line: 54, type: !187)
!1627 = distinct !DISubprogram(name: "dtimespec_bound", scope: !1628, file: !1628, line: 54, type: !1629, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1631)
!1628 = !DIFile(filename: "./lib/dtimespec-bound.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1c1d0447ed5234421679b9baaf454c86")
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!187, !187, !105}
!1631 = !{!1626, !1632, !1633}
!1632 = !DILocalVariable(name: "err", arg: 2, scope: !1627, file: !1628, line: 54, type: !105)
!1633 = !DILocalVariable(name: "phi", scope: !1627, file: !1628, line: 70, type: !187)
!1634 = !DILocation(line: 0, scope: !1627, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 376, column: 14, scope: !1612)
!1636 = !DILocation(line: 60, column: 11, scope: !1637, inlinedAt: !1635)
!1637 = distinct !DILexicalBlock(scope: !1627, file: !1628, line: 60, column: 7)
!1638 = !DILocation(line: 60, column: 21, scope: !1637, inlinedAt: !1635)
!1639 = !DILocation(line: 378, column: 7, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 378, column: 7)
!1641 = !DILocation(line: 378, column: 10, scope: !1640)
!1642 = !DILocation(line: 380, column: 7, scope: !1640)
!1643 = !DILocation(line: 382, column: 11, scope: !1640)
!1644 = !DILocation(line: 382, column: 15, scope: !1640)
!1645 = !DILocation(line: 382, column: 23, scope: !1640)
!1646 = !DILocation(line: 382, column: 18, scope: !1640)
!1647 = !DILocation(line: 384, column: 7, scope: !1640)
!1648 = !DILocalVariable(name: "x", arg: 1, scope: !1649, file: !2, line: 342, type: !1652)
!1649 = distinct !DISubprogram(name: "apply_time_suffix", scope: !2, file: !2, line: 342, type: !1650, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1653)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!190, !1652, !4}
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!1653 = !{!1648, !1654, !1655}
!1654 = !DILocalVariable(name: "suffix_char", arg: 2, scope: !1649, file: !2, line: 342, type: !4)
!1655 = !DILocalVariable(name: "multiplier", scope: !1649, file: !2, line: 344, type: !105)
!1656 = !DILocation(line: 0, scope: !1649, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 384, column: 11, scope: !1640)
!1658 = !DILocation(line: 346, column: 3, scope: !1649, inlinedAt: !1657)
!1659 = !DILocation(line: 354, column: 7, scope: !1660, inlinedAt: !1657)
!1660 = distinct !DILexicalBlock(scope: !1649, file: !2, line: 347, column: 5)
!1661 = !DILocation(line: 357, column: 7, scope: !1660, inlinedAt: !1657)
!1662 = !DILocation(line: 360, column: 7, scope: !1660, inlinedAt: !1657)
!1663 = !DILocation(line: 386, column: 7, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1640, file: !2, line: 385, column: 5)
!1665 = !DILocation(line: 387, column: 7, scope: !1664)
!1666 = !DILocation(line: 365, column: 28, scope: !1649, inlinedAt: !1657)
!1667 = !DILocation(line: 0, scope: !1627, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 365, column: 8, scope: !1649, inlinedAt: !1657)
!1669 = !DILocation(line: 60, column: 21, scope: !1637, inlinedAt: !1668)
!1670 = !DILocation(line: 391, column: 1, scope: !1612)
!1671 = !DILocation(line: 390, column: 3, scope: !1612)
!1672 = !DISubprogram(name: "setpgid", scope: !1673, file: !1673, line: 668, type: !1674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1673 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!105, !183, !183}
!1676 = !DISubprogram(name: "sigemptyset", scope: !128, file: !128, line: 199, type: !1677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!105, !1449}
!1679 = distinct !DISubprogram(name: "cleanup", scope: !2, file: !2, line: 204, type: !130, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1680)
!1680 = !{!1681, !1682, !1687}
!1681 = !DILocalVariable(name: "sig", arg: 1, scope: !1679, file: !2, line: 204, type: !105)
!1682 = !DILocalVariable(name: "saved_errno", scope: !1683, file: !2, line: 221, type: !105)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !2, line: 220, column: 9)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !2, line: 219, column: 11)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !2, line: 218, column: 5)
!1686 = distinct !DILexicalBlock(scope: !1679, file: !2, line: 217, column: 7)
!1687 = !DILocalVariable(name: "signame", scope: !1688, file: !2, line: 234, type: !463)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !2, line: 233, column: 9)
!1689 = distinct !DILexicalBlock(scope: !1685, file: !2, line: 232, column: 11)
!1690 = !DILocation(line: 0, scope: !1679)
!1691 = !DILocation(line: 206, column: 11, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1679, file: !2, line: 206, column: 7)
!1693 = !DILocation(line: 206, column: 7, scope: !1679)
!1694 = !DILocation(line: 208, column: 17, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1692, file: !2, line: 207, column: 5)
!1696 = !DILocation(line: 0, scope: !1211, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 214, column: 7, scope: !1695)
!1698 = !DILocation(line: 105, column: 18, scope: !1216, inlinedAt: !1697)
!1699 = !DILocation(line: 215, column: 13, scope: !1695)
!1700 = !DILocation(line: 216, column: 5, scope: !1695)
!1701 = !DILocation(line: 217, column: 11, scope: !1686)
!1702 = !DILocation(line: 217, column: 9, scope: !1686)
!1703 = !DILocation(line: 217, column: 7, scope: !1679)
!1704 = !DILocation(line: 219, column: 11, scope: !1684)
!1705 = !DILocation(line: 219, column: 11, scope: !1685)
!1706 = !DILocation(line: 221, column: 29, scope: !1683)
!1707 = !DILocation(line: 0, scope: !1683)
!1708 = !DILocation(line: 223, column: 23, scope: !1683)
!1709 = !DILocation(line: 224, column: 11, scope: !1683)
!1710 = !DILocation(line: 225, column: 22, scope: !1683)
!1711 = !DILocation(line: 226, column: 17, scope: !1683)
!1712 = !DILocation(line: 227, column: 9, scope: !1683)
!1713 = !DILocation(line: 232, column: 11, scope: !1689)
!1714 = !DILocation(line: 232, column: 11, scope: !1685)
!1715 = !DILocation(line: 234, column: 11, scope: !1688)
!1716 = !DILocation(line: 234, column: 16, scope: !1688)
!1717 = !DILocation(line: 235, column: 19, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1688, file: !2, line: 235, column: 15)
!1719 = !DILocation(line: 235, column: 24, scope: !1718)
!1720 = !DILocation(line: 235, column: 27, scope: !1718)
!1721 = !DILocation(line: 235, column: 50, scope: !1718)
!1722 = !DILocation(line: 235, column: 15, scope: !1688)
!1723 = !DILocation(line: 236, column: 13, scope: !1718)
!1724 = !DILocation(line: 237, column: 11, scope: !1688)
!1725 = !DILocation(line: 239, column: 9, scope: !1689)
!1726 = !DILocation(line: 239, column: 9, scope: !1688)
!1727 = !DILocation(line: 240, column: 17, scope: !1685)
!1728 = !DILocalVariable(name: "where", arg: 1, scope: !1729, file: !2, line: 182, type: !181)
!1729 = distinct !DISubprogram(name: "send_sig", scope: !2, file: !2, line: 182, type: !1730, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1732)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!105, !181, !105}
!1732 = !{!1728, !1733}
!1733 = !DILocalVariable(name: "sig", arg: 2, scope: !1729, file: !2, line: 182, type: !105)
!1734 = !DILocation(line: 0, scope: !1729, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 240, column: 7, scope: !1685)
!1736 = !DILocation(line: 191, column: 13, scope: !1737, inlinedAt: !1735)
!1737 = distinct !DILexicalBlock(scope: !1729, file: !2, line: 191, column: 7)
!1738 = !DILocation(line: 191, column: 7, scope: !1729, inlinedAt: !1735)
!1739 = !DILocation(line: 192, column: 5, scope: !1737, inlinedAt: !1735)
!1740 = !DILocation(line: 193, column: 10, scope: !1729, inlinedAt: !1735)
!1741 = !DILocation(line: 244, column: 12, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1685, file: !2, line: 244, column: 11)
!1743 = !DILocation(line: 244, column: 11, scope: !1685)
!1744 = !DILocation(line: 0, scope: !1729, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 246, column: 11, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1742, file: !2, line: 245, column: 9)
!1747 = !DILocation(line: 192, column: 5, scope: !1737, inlinedAt: !1745)
!1748 = !DILocation(line: 193, column: 10, scope: !1729, inlinedAt: !1745)
!1749 = !DILocation(line: 247, column: 30, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1746, file: !2, line: 247, column: 15)
!1751 = !DILocation(line: 249, column: 25, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 248, column: 13)
!1753 = !DILocation(line: 0, scope: !1729, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 249, column: 15, scope: !1752)
!1755 = !DILocation(line: 191, column: 13, scope: !1737, inlinedAt: !1754)
!1756 = !DILocation(line: 191, column: 7, scope: !1729, inlinedAt: !1754)
!1757 = !DILocation(line: 192, column: 5, scope: !1737, inlinedAt: !1754)
!1758 = !DILocation(line: 193, column: 10, scope: !1729, inlinedAt: !1754)
!1759 = !DILocation(line: 0, scope: !1729, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 250, column: 15, scope: !1752)
!1761 = !DILocation(line: 192, column: 5, scope: !1737, inlinedAt: !1760)
!1762 = !DILocation(line: 193, column: 10, scope: !1729, inlinedAt: !1760)
!1763 = !DILocation(line: 251, column: 13, scope: !1752)
!1764 = !DILocation(line: 254, column: 26, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1686, file: !2, line: 254, column: 12)
!1766 = !DILocation(line: 254, column: 12, scope: !1686)
!1767 = !DILocation(line: 259, column: 18, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1765, file: !2, line: 258, column: 5)
!1769 = !DILocation(line: 259, column: 7, scope: !1768)
!1770 = !DILocation(line: 261, column: 1, scope: !1679)
!1771 = !DISubprogram(name: "__libc_current_sigrtmin", scope: !128, file: !128, line: 383, type: !1772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!105}
!1774 = !DISubprogram(name: "__libc_current_sigrtmax", scope: !128, file: !128, line: 385, type: !1772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1775 = !DISubprogram(name: "sigaction", scope: !128, file: !128, line: 243, type: !1776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!105, !105, !1778, !1781}
!1778 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1779)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1268)
!1781 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1782)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1783 = !DISubprogram(name: "signal", scope: !128, file: !128, line: 88, type: !1784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!127, !105, !127}
!1786 = distinct !DISubprogram(name: "chld", scope: !2, file: !2, line: 199, type: !130, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1787)
!1787 = !{!1788}
!1788 = !DILocalVariable(name: "sig", arg: 1, scope: !1786, file: !2, line: 199, type: !105)
!1789 = !DILocation(line: 0, scope: !1786)
!1790 = !DILocation(line: 201, column: 1, scope: !1786)
!1791 = distinct !DISubprogram(name: "unblock_signal", scope: !2, file: !2, line: 394, type: !130, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1792)
!1792 = !{!1793, !1794}
!1793 = !DILocalVariable(name: "sig", arg: 1, scope: !1791, file: !2, line: 394, type: !105)
!1794 = !DILocalVariable(name: "unblock_set", scope: !1791, file: !2, line: 396, type: !1182)
!1795 = !DILocation(line: 0, scope: !1791)
!1796 = !DILocation(line: 396, column: 3, scope: !1791)
!1797 = !DILocation(line: 396, column: 12, scope: !1791)
!1798 = !DILocation(line: 397, column: 3, scope: !1791)
!1799 = !DILocation(line: 398, column: 3, scope: !1791)
!1800 = !DILocation(line: 399, column: 7, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1791, file: !2, line: 399, column: 7)
!1802 = !DILocation(line: 399, column: 53, scope: !1801)
!1803 = !DILocation(line: 399, column: 7, scope: !1791)
!1804 = !DILocation(line: 400, column: 5, scope: !1801)
!1805 = !DILocation(line: 401, column: 1, scope: !1791)
!1806 = !DISubprogram(name: "sigaddset", scope: !128, file: !128, line: 205, type: !1807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!105, !1449, !105}
!1809 = !DISubprogram(name: "sigprocmask", scope: !128, file: !128, line: 232, type: !1810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!105, !105, !1812, !1815}
!1812 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1813)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1182)
!1815 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1449)
!1816 = !DISubprogram(name: "__errno_location", scope: !1817, file: !1817, line: 37, type: !1818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1817 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!452}
!1820 = !DISubprogram(name: "getpid", scope: !1673, file: !1673, line: 650, type: !1821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!183}
!1823 = !DISubprogram(name: "fork", scope: !1673, file: !1673, line: 778, type: !1821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1824 = !DISubprogram(name: "prctl", scope: !1825, file: !1825, line: 42, type: !1826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1825 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/prctl.h", directory: "", checksumkind: CSK_MD5, checksum: "03df3307493f4e984a818e48f1f1ebd0")
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!105, !105, null}
!1828 = !DISubprogram(name: "getppid", scope: !1673, file: !1673, line: 653, type: !1821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1829 = !DISubprogram(name: "execvp", scope: !1673, file: !1673, line: 599, type: !1830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!105, !137, !1609}
!1832 = distinct !DISubprogram(name: "settimeout", scope: !2, file: !2, line: 115, type: !1833, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1835)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !187, !190}
!1835 = !{!1836, !1837, !1838, !1845, !1851, !1855, !1856}
!1836 = !DILocalVariable(name: "duration", arg: 1, scope: !1832, file: !2, line: 115, type: !187)
!1837 = !DILocalVariable(name: "warn", arg: 2, scope: !1832, file: !2, line: 115, type: !190)
!1838 = !DILocalVariable(name: "ts", scope: !1832, file: !2, line: 121, type: !1839)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1840, line: 11, size: 128, elements: !1841)
!1840 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1841 = !{!1842, !1843}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1839, file: !1840, line: 16, baseType: !876, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1839, file: !1840, line: 21, baseType: !1844, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !184, line: 197, baseType: !253)
!1845 = !DILocalVariable(name: "its", scope: !1832, file: !2, line: 122, type: !1846)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "itimerspec", file: !1847, line: 8, size: 256, elements: !1848)
!1847 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_itimerspec.h", directory: "", checksumkind: CSK_MD5, checksum: "dfcd7ec63e6a27775d5c6dbba8655c7d")
!1848 = !{!1849, !1850}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "it_interval", scope: !1846, file: !1847, line: 10, baseType: !1839, size: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "it_value", scope: !1846, file: !1847, line: 11, baseType: !1839, size: 128, offset: 128)
!1851 = !DILocalVariable(name: "timerid", scope: !1832, file: !2, line: 123, type: !1852)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "timer_t", file: !1853, line: 7, baseType: !1854)
!1853 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/timer_t.h", directory: "", checksumkind: CSK_MD5, checksum: "b257b0db40a7b7cec2ff2d7c51baed44")
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__timer_t", file: !184, line: 172, baseType: !126)
!1855 = !DILocalVariable(name: "timeint", scope: !1832, file: !2, line: 168, type: !98)
!1856 = !DILocalVariable(name: "duration_floor", scope: !1857, file: !2, line: 173, type: !98)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !2, line: 172, column: 5)
!1858 = distinct !DILexicalBlock(scope: !1832, file: !2, line: 169, column: 7)
!1859 = !DILocation(line: 0, scope: !1832)
!1860 = !DILocation(line: 121, column: 24, scope: !1832)
!1861 = !DILocation(line: 122, column: 3, scope: !1832)
!1862 = !DILocation(line: 122, column: 21, scope: !1832)
!1863 = !DILocation(line: 122, column: 27, scope: !1832)
!1864 = !DILocation(line: 122, column: 43, scope: !1832)
!1865 = !DILocation(line: 122, column: 60, scope: !1832)
!1866 = !{i64 0, i64 8, !1867, i64 8, i64 8, !1867}
!1867 = !{!1868, !1868, i64 0}
!1868 = !{!"long", !958, i64 0}
!1869 = !{i64 0, i64 8, !1867}
!1870 = !DILocation(line: 123, column: 3, scope: !1832)
!1871 = !DILocation(line: 124, column: 7, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1832, file: !2, line: 124, column: 7)
!1873 = !DILocation(line: 124, column: 53, scope: !1872)
!1874 = !DILocation(line: 124, column: 7, scope: !1832)
!1875 = !DILocation(line: 126, column: 26, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !2, line: 126, column: 11)
!1877 = distinct !DILexicalBlock(scope: !1872, file: !2, line: 125, column: 5)
!1878 = !DILocation(line: 126, column: 11, scope: !1876)
!1879 = !DILocation(line: 126, column: 50, scope: !1876)
!1880 = !DILocation(line: 126, column: 11, scope: !1877)
!1881 = !DILocation(line: 130, column: 15, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1876, file: !2, line: 129, column: 9)
!1883 = !DILocation(line: 131, column: 13, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1882, file: !2, line: 130, column: 15)
!1885 = !DILocation(line: 132, column: 25, scope: !1882)
!1886 = !DILocation(line: 132, column: 11, scope: !1882)
!1887 = !DILocation(line: 134, column: 5, scope: !1877)
!1888 = !DILocation(line: 135, column: 17, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1872, file: !2, line: 135, column: 12)
!1890 = !DILocation(line: 135, column: 20, scope: !1889)
!1891 = !DILocation(line: 135, column: 26, scope: !1889)
!1892 = !DILocation(line: 135, column: 12, scope: !1872)
!1893 = !DILocation(line: 136, column: 5, scope: !1889)
!1894 = !DILocation(line: 169, column: 16, scope: !1858)
!1895 = !DILocation(line: 169, column: 7, scope: !1832)
!1896 = !DILocation(line: 173, column: 37, scope: !1857)
!1897 = !DILocation(line: 0, scope: !1857)
!1898 = !DILocation(line: 174, column: 35, scope: !1857)
!1899 = !DILocation(line: 174, column: 50, scope: !1857)
!1900 = !DILocation(line: 174, column: 32, scope: !1857)
!1901 = !DILocation(line: 0, scope: !1858)
!1902 = !DILocation(line: 176, column: 3, scope: !1832)
!1903 = !DILocation(line: 177, column: 1, scope: !1832)
!1904 = !DISubprogram(name: "waitpid", scope: !1905, file: !1905, line: 111, type: !1906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1905 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/wait.h", directory: "", checksumkind: CSK_MD5, checksum: "f653fe63e16922d44e1c6e15caa2acb6")
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!183, !183, !452, !105}
!1908 = !DISubprogram(name: "sigsuspend", scope: !128, file: !128, line: 240, type: !1909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!105, !1813}
!1911 = !DISubprogram(name: "raise", scope: !128, file: !128, line: 123, type: !1912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!105, !105}
!1914 = !DISubprogram(name: "timer_create", scope: !1915, file: !1915, line: 331, type: !1916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1915 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!105, !1918, !1921, !1953}
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !1919, line: 7, baseType: !1920)
!1919 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/clockid_t.h", directory: "", checksumkind: CSK_MD5, checksum: "099a80153c2ad48bc7f5f4a188cb6d24")
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clockid_t", file: !184, line: 169, baseType: !105)
!1921 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1922)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigevent", file: !1924, line: 22, size: 512, elements: !1925)
!1924 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/sigevent_t.h", directory: "", checksumkind: CSK_MD5, checksum: "816c6e661f14523d03101a714ce8e208")
!1925 = !{!1926, !1927, !1928, !1929}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_value", scope: !1923, file: !1924, line: 24, baseType: !1305, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_signo", scope: !1923, file: !1924, line: 25, baseType: !105, size: 32, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_notify", scope: !1923, file: !1924, line: 26, baseType: !105, size: 32, offset: 96)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_sigev_un", scope: !1923, file: !1924, line: 41, baseType: !1930, size: 384, offset: 128)
!1930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1923, file: !1924, line: 28, size: 384, elements: !1931)
!1931 = !{!1932, !1934, !1935}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !1930, file: !1924, line: 30, baseType: !1933, size: 384)
!1933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 384, elements: !392)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1930, file: !1924, line: 34, baseType: !183, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_sigev_thread", scope: !1930, file: !1924, line: 40, baseType: !1936, size: 128)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1930, file: !1924, line: 36, size: 128, elements: !1937)
!1937 = !{!1938, !1942}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_function", scope: !1936, file: !1924, line: 38, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{null, !1305}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_attribute", scope: !1936, file: !1924, line: 39, baseType: !1943, size: 64, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !1945, line: 62, baseType: !1946)
!1945 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !1945, line: 56, size: 512, elements: !1947)
!1947 = !{!1948, !1952}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1946, file: !1945, line: 58, baseType: !1949, size: 512)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1950)
!1950 = !{!1951}
!1951 = !DISubrange(count: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1946, file: !1945, line: 59, baseType: !253, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1954)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1955 = !DISubprogram(name: "timer_settime", scope: !1915, file: !1915, line: 340, type: !1956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!105, !1852, !105, !1958, !1961}
!1958 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1959)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1846)
!1961 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1962)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1963 = !DISubprogram(name: "timer_delete", scope: !1915, file: !1915, line: 336, type: !1964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!105, !1852}
!1966 = !DISubprogram(name: "alarm", scope: !1673, file: !1673, line: 452, type: !1967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!98, !98}
!1969 = !DISubprogram(name: "__builtin___snprintf_chk", scope: !2, file: !2, line: 236, type: !1970, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!105, !125, !136, !105, !136, !137, null}
!1972 = !DISubprogram(name: "kill", scope: !128, file: !128, line: 112, type: !1973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!105, !183, !105}
!1975 = !DISubprogram(name: "_exit", scope: !1673, file: !1673, line: 624, type: !130, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !965)
!1976 = distinct !DISubprogram(name: "operand2sig", scope: !460, file: !460, line: 36, type: !1977, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !1979)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!105, !137}
!1979 = !{!1980, !1981, !1982, !1985, !1986, !1987, !1989}
!1980 = !DILocalVariable(name: "operand", arg: 1, scope: !1976, file: !460, line: 36, type: !137)
!1981 = !DILocalVariable(name: "signum", scope: !1976, file: !460, line: 38, type: !105)
!1982 = !DILocalVariable(name: "endp", scope: !1983, file: !460, line: 53, type: !125)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !460, line: 41, column: 5)
!1984 = distinct !DILexicalBlock(scope: !1976, file: !460, line: 40, column: 7)
!1985 = !DILocalVariable(name: "l", scope: !1983, file: !460, line: 54, type: !253)
!1986 = !DILocalVariable(name: "i", scope: !1983, file: !460, line: 55, type: !105)
!1987 = !DILocalVariable(name: "upcased", scope: !1988, file: !460, line: 70, type: !125)
!1988 = distinct !DILexicalBlock(scope: !1984, file: !460, line: 67, column: 5)
!1989 = !DILocalVariable(name: "p", scope: !1990, file: !460, line: 71, type: !125)
!1990 = distinct !DILexicalBlock(scope: !1988, file: !460, line: 71, column: 7)
!1991 = !DILocation(line: 0, scope: !1976)
!1992 = !DILocation(line: 38, column: 3, scope: !1976)
!1993 = !DILocation(line: 40, column: 18, scope: !1984)
!1994 = !DILocalVariable(name: "c", arg: 1, scope: !1995, file: !1996, line: 233, type: !105)
!1995 = distinct !DISubprogram(name: "c_isdigit", scope: !1996, file: !1996, line: 233, type: !1997, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !1999)
!1996 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!190, !105}
!1999 = !{!1994}
!2000 = !DILocation(line: 0, scope: !1995, inlinedAt: !2001)
!2001 = distinct !DILocation(line: 40, column: 7, scope: !1984)
!2002 = !DILocation(line: 235, column: 3, scope: !1995, inlinedAt: !2001)
!2003 = !DILocation(line: 40, column: 7, scope: !1976)
!2004 = !DILocation(line: 53, column: 7, scope: !1983)
!2005 = !DILocation(line: 54, column: 21, scope: !1983)
!2006 = !DILocation(line: 54, column: 27, scope: !1983)
!2007 = !DILocation(line: 0, scope: !1983)
!2008 = !DILocation(line: 54, column: 32, scope: !1983)
!2009 = !DILocation(line: 55, column: 15, scope: !1983)
!2010 = !DILocation(line: 56, column: 28, scope: !1983)
!2011 = !DILocation(line: 56, column: 25, scope: !1983)
!2012 = !DILocation(line: 56, column: 33, scope: !1983)
!2013 = !DILocation(line: 56, column: 36, scope: !1983)
!2014 = !DILocation(line: 56, column: 42, scope: !1983)
!2015 = !DILocation(line: 56, column: 45, scope: !1983)
!2016 = !DILocation(line: 56, column: 51, scope: !1983)
!2017 = !DILocation(line: 58, column: 18, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1983, file: !460, line: 58, column: 11)
!2019 = !DILocation(line: 58, column: 11, scope: !1983)
!2020 = !DILocation(line: 65, column: 5, scope: !1984)
!2021 = !DILocation(line: 65, column: 5, scope: !1983)
!2022 = !DILocation(line: 70, column: 23, scope: !1988)
!2023 = !DILocation(line: 0, scope: !1988)
!2024 = !DILocation(line: 0, scope: !1990)
!2025 = !DILocation(line: 71, column: 31, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1990, file: !460, line: 71, column: 7)
!2027 = !DILocation(line: 71, column: 7, scope: !1990)
!2028 = !DILocation(line: 77, column: 13, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !1988, file: !460, line: 77, column: 11)
!2030 = !DILocation(line: 77, column: 40, scope: !2029)
!2031 = !DILocation(line: 78, column: 13, scope: !2029)
!2032 = !DILocation(line: 72, column: 51, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2026, file: !460, line: 72, column: 13)
!2034 = !DILocation(line: 72, column: 13, scope: !2033)
!2035 = !DILocation(line: 72, column: 13, scope: !2026)
!2036 = !DILocation(line: 73, column: 14, scope: !2033)
!2037 = !DILocation(line: 73, column: 11, scope: !2033)
!2038 = !DILocation(line: 71, column: 36, scope: !2026)
!2039 = distinct !{!2039, !2027, !2040, !1074}
!2040 = !DILocation(line: 73, column: 23, scope: !1990)
!2041 = !DILocation(line: 78, column: 17, scope: !2029)
!2042 = !DILocation(line: 78, column: 28, scope: !2029)
!2043 = !DILocation(line: 78, column: 35, scope: !2029)
!2044 = !DILocation(line: 78, column: 38, scope: !2029)
!2045 = !DILocation(line: 78, column: 49, scope: !2029)
!2046 = !DILocation(line: 78, column: 56, scope: !2029)
!2047 = !DILocation(line: 78, column: 59, scope: !2029)
!2048 = !DILocation(line: 78, column: 70, scope: !2029)
!2049 = !DILocation(line: 79, column: 17, scope: !2029)
!2050 = !DILocation(line: 79, column: 37, scope: !2029)
!2051 = !DILocation(line: 79, column: 20, scope: !2029)
!2052 = !DILocation(line: 79, column: 51, scope: !2029)
!2053 = !DILocation(line: 77, column: 11, scope: !1988)
!2054 = !DILocation(line: 80, column: 16, scope: !2029)
!2055 = !DILocation(line: 80, column: 9, scope: !2029)
!2056 = !DILocation(line: 82, column: 7, scope: !1988)
!2057 = !DILocation(line: 85, column: 11, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1976, file: !460, line: 85, column: 7)
!2059 = !DILocation(line: 85, column: 18, scope: !2058)
!2060 = !DILocation(line: 87, column: 7, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2058, file: !460, line: 86, column: 5)
!2062 = !DILocation(line: 88, column: 7, scope: !2061)
!2063 = !DILocation(line: 92, column: 1, scope: !1976)
!2064 = !DISubprogram(name: "strtol", scope: !1148, file: !1148, line: 177, type: !2065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!253, !1018, !2067, !105}
!2067 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1175)
!2068 = !DISubprogram(name: "free", scope: !1148, file: !1148, line: 555, type: !2069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{null, !126}
!2071 = distinct !DISubprogram(name: "cl_strtod", scope: !865, file: !865, line: 59, type: !2072, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !864, retainedNodes: !2074)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!187, !137, !2067}
!2074 = !{!2075, !2076, !2077, !2078, !2079, !2082, !2083}
!2075 = !DILocalVariable(name: "nptr", arg: 1, scope: !2071, file: !865, line: 59, type: !137)
!2076 = !DILocalVariable(name: "endptr", arg: 2, scope: !2071, file: !865, line: 59, type: !2067)
!2077 = !DILocalVariable(name: "end", scope: !2071, file: !865, line: 61, type: !125)
!2078 = !DILocalVariable(name: "d", scope: !2071, file: !865, line: 62, type: !187)
!2079 = !DILocalVariable(name: "strtod_errno", scope: !2080, file: !865, line: 65, type: !105)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !865, line: 64, column: 5)
!2081 = distinct !DILexicalBlock(scope: !2071, file: !865, line: 63, column: 7)
!2082 = !DILocalVariable(name: "c_end", scope: !2080, file: !865, line: 66, type: !125)
!2083 = !DILocalVariable(name: "c", scope: !2080, file: !865, line: 67, type: !187)
!2084 = !DILocation(line: 0, scope: !2071)
!2085 = !DILocation(line: 61, column: 3, scope: !2071)
!2086 = !DILocation(line: 62, column: 14, scope: !2071)
!2087 = !DILocation(line: 63, column: 8, scope: !2081)
!2088 = !DILocation(line: 63, column: 7, scope: !2081)
!2089 = !DILocation(line: 63, column: 7, scope: !2071)
!2090 = !DILocation(line: 65, column: 26, scope: !2080)
!2091 = !DILocation(line: 0, scope: !2080)
!2092 = !DILocation(line: 66, column: 7, scope: !2080)
!2093 = !DILocation(line: 67, column: 18, scope: !2080)
!2094 = !DILocation(line: 68, column: 17, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2080, file: !865, line: 68, column: 11)
!2096 = !DILocation(line: 68, column: 15, scope: !2095)
!2097 = !DILocation(line: 68, column: 11, scope: !2080)
!2098 = !DILocation(line: 71, column: 15, scope: !2095)
!2099 = !DILocation(line: 72, column: 5, scope: !2081)
!2100 = !DILocation(line: 72, column: 5, scope: !2080)
!2101 = !DILocation(line: 73, column: 7, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2071, file: !865, line: 73, column: 7)
!2103 = !DILocation(line: 73, column: 7, scope: !2071)
!2104 = !DILocation(line: 74, column: 13, scope: !2102)
!2105 = !DILocation(line: 74, column: 5, scope: !2102)
!2106 = !DILocation(line: 76, column: 1, scope: !2071)
!2107 = !DILocation(line: 75, column: 3, scope: !2071)
!2108 = !DISubprogram(name: "strtod", scope: !1148, file: !1148, line: 118, type: !2109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!187, !1018, !2067}
!2111 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !476, file: !476, line: 50, type: !979, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2112)
!2112 = !{!2113}
!2113 = !DILocalVariable(name: "file", arg: 1, scope: !2111, file: !476, line: 50, type: !137)
!2114 = !DILocation(line: 0, scope: !2111)
!2115 = !DILocation(line: 52, column: 13, scope: !2111)
!2116 = !DILocation(line: 53, column: 1, scope: !2111)
!2117 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !476, file: !476, line: 87, type: !2118, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2120)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{null, !190}
!2120 = !{!2121}
!2121 = !DILocalVariable(name: "ignore", arg: 1, scope: !2117, file: !476, line: 87, type: !190)
!2122 = !DILocation(line: 0, scope: !2117)
!2123 = !DILocation(line: 89, column: 16, scope: !2117)
!2124 = !{!2125, !2125, i64 0}
!2125 = !{!"_Bool", !958, i64 0}
!2126 = !DILocation(line: 90, column: 1, scope: !2117)
!2127 = distinct !DISubprogram(name: "close_stdout", scope: !476, file: !476, line: 116, type: !540, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2128)
!2128 = !{!2129}
!2129 = !DILocalVariable(name: "write_error", scope: !2130, file: !476, line: 121, type: !137)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !476, line: 120, column: 5)
!2131 = distinct !DILexicalBlock(scope: !2127, file: !476, line: 118, column: 7)
!2132 = !DILocation(line: 118, column: 21, scope: !2131)
!2133 = !DILocation(line: 118, column: 7, scope: !2131)
!2134 = !DILocation(line: 118, column: 29, scope: !2131)
!2135 = !DILocation(line: 119, column: 7, scope: !2131)
!2136 = !DILocation(line: 119, column: 12, scope: !2131)
!2137 = !{i8 0, i8 2}
!2138 = !DILocation(line: 119, column: 25, scope: !2131)
!2139 = !DILocation(line: 119, column: 28, scope: !2131)
!2140 = !DILocation(line: 119, column: 34, scope: !2131)
!2141 = !DILocation(line: 118, column: 7, scope: !2127)
!2142 = !DILocation(line: 121, column: 33, scope: !2130)
!2143 = !DILocation(line: 0, scope: !2130)
!2144 = !DILocation(line: 122, column: 11, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2130, file: !476, line: 122, column: 11)
!2146 = !DILocation(line: 0, scope: !2145)
!2147 = !DILocation(line: 122, column: 11, scope: !2130)
!2148 = !DILocation(line: 123, column: 9, scope: !2145)
!2149 = !DILocation(line: 126, column: 9, scope: !2145)
!2150 = !DILocation(line: 128, column: 14, scope: !2130)
!2151 = !DILocation(line: 128, column: 7, scope: !2130)
!2152 = !DILocation(line: 133, column: 42, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2127, file: !476, line: 133, column: 7)
!2154 = !DILocation(line: 133, column: 28, scope: !2153)
!2155 = !DILocation(line: 133, column: 50, scope: !2153)
!2156 = !DILocation(line: 133, column: 7, scope: !2127)
!2157 = !DILocation(line: 134, column: 12, scope: !2153)
!2158 = !DILocation(line: 134, column: 5, scope: !2153)
!2159 = !DILocation(line: 135, column: 1, scope: !2127)
!2160 = distinct !DISubprogram(name: "dtotimespec", scope: !867, file: !867, line: 30, type: !2161, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !2167)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!2163, !187}
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1840, line: 11, size: 128, elements: !2164)
!2164 = !{!2165, !2166}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2163, file: !1840, line: 16, baseType: !876, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2163, file: !1840, line: 21, baseType: !1844, size: 64, offset: 64)
!2167 = !{!2168, !2169, !2173, !2174}
!2168 = !DILocalVariable(name: "sec", arg: 1, scope: !2160, file: !867, line: 30, type: !187)
!2169 = !DILocalVariable(name: "s", scope: !2170, file: !867, line: 38, type: !874)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !867, line: 37, column: 5)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !867, line: 34, column: 12)
!2172 = distinct !DILexicalBlock(scope: !2160, file: !867, line: 32, column: 7)
!2173 = !DILocalVariable(name: "frac", scope: !2170, file: !867, line: 39, type: !187)
!2174 = !DILocalVariable(name: "ns", scope: !2170, file: !867, line: 40, type: !253)
!2175 = !DILocation(line: 0, scope: !2160)
!2176 = !DILocation(line: 32, column: 32, scope: !2172)
!2177 = !DILocation(line: 32, column: 7, scope: !2160)
!2178 = !DILocation(line: 34, column: 19, scope: !2171)
!2179 = !DILocation(line: 34, column: 12, scope: !2172)
!2180 = !DILocation(line: 38, column: 18, scope: !2170)
!2181 = !DILocation(line: 0, scope: !2170)
!2182 = !DILocation(line: 39, column: 42, scope: !2170)
!2183 = !DILocation(line: 39, column: 40, scope: !2170)
!2184 = !DILocation(line: 39, column: 33, scope: !2170)
!2185 = !DILocation(line: 40, column: 17, scope: !2170)
!2186 = !DILocation(line: 41, column: 13, scope: !2170)
!2187 = !DILocation(line: 41, column: 16, scope: !2170)
!2188 = !DILocation(line: 41, column: 10, scope: !2170)
!2189 = !DILocation(line: 42, column: 15, scope: !2170)
!2190 = !DILocation(line: 42, column: 9, scope: !2170)
!2191 = !DILocation(line: 45, column: 14, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2170, file: !867, line: 45, column: 11)
!2193 = !DILocation(line: 45, column: 11, scope: !2170)
!2194 = !DILocalVariable(name: "s", arg: 1, scope: !2195, file: !870, line: 56, type: !874)
!2195 = distinct !DISubprogram(name: "make_timespec", scope: !870, file: !870, line: 56, type: !2196, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !2198)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!2163, !874, !253}
!2198 = !{!2194, !2199}
!2199 = !DILocalVariable(name: "ns", arg: 2, scope: !2195, file: !870, line: 56, type: !253)
!2200 = !DILocation(line: 0, scope: !2195, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 51, column: 14, scope: !2170)
!2202 = !DILocation(line: 58, column: 3, scope: !2195, inlinedAt: !2201)
!2203 = !DILocation(line: 53, column: 1, scope: !2160)
!2204 = distinct !DISubprogram(name: "verror", scope: !491, file: !491, line: 251, type: !2205, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2207)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{null, !105, !105, !137, !501}
!2207 = !{!2208, !2209, !2210, !2211}
!2208 = !DILocalVariable(name: "status", arg: 1, scope: !2204, file: !491, line: 251, type: !105)
!2209 = !DILocalVariable(name: "errnum", arg: 2, scope: !2204, file: !491, line: 251, type: !105)
!2210 = !DILocalVariable(name: "message", arg: 3, scope: !2204, file: !491, line: 251, type: !137)
!2211 = !DILocalVariable(name: "args", arg: 4, scope: !2204, file: !491, line: 251, type: !501)
!2212 = !DILocation(line: 0, scope: !2204)
!2213 = !DILocation(line: 251, column: 1, scope: !2204)
!2214 = !DILocation(line: 261, column: 3, scope: !2204)
!2215 = !DILocation(line: 265, column: 7, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2204, file: !491, line: 265, column: 7)
!2217 = !DILocation(line: 265, column: 7, scope: !2204)
!2218 = !DILocation(line: 266, column: 5, scope: !2216)
!2219 = !DILocation(line: 272, column: 7, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2216, file: !491, line: 268, column: 5)
!2221 = !DILocation(line: 276, column: 3, scope: !2204)
!2222 = !{i64 0, i64 8, !956, i64 8, i64 8, !956, i64 16, i64 8, !956, i64 24, i64 4, !1027, i64 28, i64 4, !1027}
!2223 = !DILocation(line: 282, column: 1, scope: !2204)
!2224 = distinct !DISubprogram(name: "flush_stdout", scope: !491, file: !491, line: 163, type: !540, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2225)
!2225 = !{!2226}
!2226 = !DILocalVariable(name: "stdout_fd", scope: !2224, file: !491, line: 166, type: !105)
!2227 = !DILocation(line: 0, scope: !2224)
!2228 = !DILocalVariable(name: "fd", arg: 1, scope: !2229, file: !491, line: 145, type: !105)
!2229 = distinct !DISubprogram(name: "is_open", scope: !491, file: !491, line: 145, type: !1912, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2230)
!2230 = !{!2228}
!2231 = !DILocation(line: 0, scope: !2229, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 182, column: 25, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2224, file: !491, line: 182, column: 7)
!2234 = !DILocation(line: 157, column: 15, scope: !2229, inlinedAt: !2232)
!2235 = !DILocation(line: 157, column: 12, scope: !2229, inlinedAt: !2232)
!2236 = !DILocation(line: 182, column: 7, scope: !2224)
!2237 = !DILocation(line: 184, column: 5, scope: !2233)
!2238 = !DILocation(line: 185, column: 1, scope: !2224)
!2239 = distinct !DISubprogram(name: "error_tail", scope: !491, file: !491, line: 219, type: !2205, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2240)
!2240 = !{!2241, !2242, !2243, !2244}
!2241 = !DILocalVariable(name: "status", arg: 1, scope: !2239, file: !491, line: 219, type: !105)
!2242 = !DILocalVariable(name: "errnum", arg: 2, scope: !2239, file: !491, line: 219, type: !105)
!2243 = !DILocalVariable(name: "message", arg: 3, scope: !2239, file: !491, line: 219, type: !137)
!2244 = !DILocalVariable(name: "args", arg: 4, scope: !2239, file: !491, line: 219, type: !501)
!2245 = !DILocation(line: 0, scope: !2239)
!2246 = !DILocation(line: 219, column: 1, scope: !2239)
!2247 = !DILocation(line: 229, column: 13, scope: !2239)
!2248 = !DILocation(line: 135, column: 10, scope: !2249, inlinedAt: !2291)
!2249 = distinct !DISubprogram(name: "vfprintf", scope: !1014, file: !1014, line: 132, type: !2250, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2287)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!105, !2252, !1018, !503}
!2252 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2253)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !2255)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !2256)
!2256 = !{!2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2255, file: !230, line: 51, baseType: !105, size: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2255, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2255, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2255, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2255, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2255, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2255, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2255, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2255, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2255, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2255, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2255, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2255, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2255, file: !230, line: 70, baseType: !2271, size: 64, offset: 832)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2255, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2255, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2255, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2255, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2255, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2255, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2255, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2255, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2255, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2255, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2255, file: !230, line: 93, baseType: !2271, size: 64, offset: 1344)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2255, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2255, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2255, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2255, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!2287 = !{!2288, !2289, !2290}
!2288 = !DILocalVariable(name: "__stream", arg: 1, scope: !2249, file: !1014, line: 132, type: !2252)
!2289 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2249, file: !1014, line: 133, type: !1018)
!2290 = !DILocalVariable(name: "__ap", arg: 3, scope: !2249, file: !1014, line: 133, type: !503)
!2291 = distinct !DILocation(line: 229, column: 3, scope: !2239)
!2292 = !{!2293, !2295}
!2293 = distinct !{!2293, !2294, !"vfprintf.inline: argument 0"}
!2294 = distinct !{!2294, !"vfprintf.inline"}
!2295 = distinct !{!2295, !2294, !"vfprintf.inline: argument 1"}
!2296 = !DILocation(line: 229, column: 3, scope: !2239)
!2297 = !DILocation(line: 0, scope: !2249, inlinedAt: !2291)
!2298 = !DILocation(line: 133, column: 49, scope: !2249, inlinedAt: !2291)
!2299 = !DILocation(line: 232, column: 3, scope: !2239)
!2300 = !DILocation(line: 233, column: 7, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2239, file: !491, line: 233, column: 7)
!2302 = !DILocation(line: 233, column: 7, scope: !2239)
!2303 = !DILocalVariable(name: "errnum", arg: 1, scope: !2304, file: !491, line: 188, type: !105)
!2304 = distinct !DISubprogram(name: "print_errno_message", scope: !491, file: !491, line: 188, type: !130, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2305)
!2305 = !{!2303, !2306, !2307}
!2306 = !DILocalVariable(name: "s", scope: !2304, file: !491, line: 190, type: !137)
!2307 = !DILocalVariable(name: "errbuf", scope: !2304, file: !491, line: 193, type: !2308)
!2308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2309)
!2309 = !{!2310}
!2310 = !DISubrange(count: 1024)
!2311 = !DILocation(line: 0, scope: !2304, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 234, column: 5, scope: !2301)
!2313 = !DILocation(line: 193, column: 3, scope: !2304, inlinedAt: !2312)
!2314 = !DILocation(line: 193, column: 8, scope: !2304, inlinedAt: !2312)
!2315 = !DILocation(line: 195, column: 7, scope: !2304, inlinedAt: !2312)
!2316 = !DILocation(line: 207, column: 9, scope: !2317, inlinedAt: !2312)
!2317 = distinct !DILexicalBlock(scope: !2304, file: !491, line: 207, column: 7)
!2318 = !DILocation(line: 207, column: 7, scope: !2304, inlinedAt: !2312)
!2319 = !DILocation(line: 208, column: 9, scope: !2317, inlinedAt: !2312)
!2320 = !DILocation(line: 208, column: 5, scope: !2317, inlinedAt: !2312)
!2321 = !DILocation(line: 214, column: 3, scope: !2304, inlinedAt: !2312)
!2322 = !DILocation(line: 216, column: 1, scope: !2304, inlinedAt: !2312)
!2323 = !DILocation(line: 234, column: 5, scope: !2301)
!2324 = !DILocation(line: 238, column: 3, scope: !2239)
!2325 = !DILocalVariable(name: "__c", arg: 1, scope: !2326, file: !2327, line: 101, type: !105)
!2326 = distinct !DISubprogram(name: "putc_unlocked", scope: !2327, file: !2327, line: 101, type: !2328, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2330)
!2327 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!105, !105, !2253}
!2330 = !{!2325, !2331}
!2331 = !DILocalVariable(name: "__stream", arg: 2, scope: !2326, file: !2327, line: 101, type: !2253)
!2332 = !DILocation(line: 0, scope: !2326, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 238, column: 3, scope: !2239)
!2334 = !DILocation(line: 103, column: 10, scope: !2326, inlinedAt: !2333)
!2335 = !{!2336, !957, i64 40}
!2336 = !{!"_IO_FILE", !1028, i64 0, !957, i64 8, !957, i64 16, !957, i64 24, !957, i64 32, !957, i64 40, !957, i64 48, !957, i64 56, !957, i64 64, !957, i64 72, !957, i64 80, !957, i64 88, !957, i64 96, !957, i64 104, !1028, i64 112, !1028, i64 116, !1868, i64 120, !1069, i64 128, !958, i64 130, !958, i64 131, !957, i64 136, !1868, i64 144, !957, i64 152, !957, i64 160, !957, i64 168, !957, i64 176, !1868, i64 184, !1028, i64 192, !958, i64 196}
!2337 = !{!2336, !957, i64 48}
!2338 = !{!"branch_weights", i32 2000, i32 1}
!2339 = !DILocation(line: 240, column: 3, scope: !2239)
!2340 = !DILocation(line: 241, column: 7, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2239, file: !491, line: 241, column: 7)
!2342 = !DILocation(line: 241, column: 7, scope: !2239)
!2343 = !DILocation(line: 242, column: 5, scope: !2341)
!2344 = !DILocation(line: 243, column: 1, scope: !2239)
!2345 = !DISubprogram(name: "__vfprintf_chk", scope: !1014, file: !1014, line: 96, type: !2346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!105, !2252, !105, !1018, !503}
!2348 = !DISubprogram(name: "strerror_r", scope: !1144, file: !1144, line: 444, type: !2349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!125, !105, !125, !134}
!2351 = !DISubprogram(name: "__overflow", scope: !502, file: !502, line: 886, type: !2352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!105, !2253, !105}
!2354 = !DISubprogram(name: "fflush_unlocked", scope: !502, file: !502, line: 239, type: !2355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!105, !2253}
!2357 = !DISubprogram(name: "fcntl", scope: !2358, file: !2358, line: 149, type: !2359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!2358 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!105, !105, !105, null}
!2361 = distinct !DISubprogram(name: "error", scope: !491, file: !491, line: 285, type: !2362, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2364)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{null, !105, !105, !137, null}
!2364 = !{!2365, !2366, !2367, !2368}
!2365 = !DILocalVariable(name: "status", arg: 1, scope: !2361, file: !491, line: 285, type: !105)
!2366 = !DILocalVariable(name: "errnum", arg: 2, scope: !2361, file: !491, line: 285, type: !105)
!2367 = !DILocalVariable(name: "message", arg: 3, scope: !2361, file: !491, line: 285, type: !137)
!2368 = !DILocalVariable(name: "ap", scope: !2361, file: !491, line: 287, type: !501)
!2369 = !DILocation(line: 0, scope: !2361)
!2370 = !DILocation(line: 287, column: 3, scope: !2361)
!2371 = !DILocation(line: 287, column: 11, scope: !2361)
!2372 = !DILocation(line: 288, column: 3, scope: !2361)
!2373 = !DILocation(line: 289, column: 3, scope: !2361)
!2374 = !DILocation(line: 290, column: 3, scope: !2361)
!2375 = !DILocation(line: 291, column: 1, scope: !2361)
!2376 = !DILocation(line: 0, scope: !498)
!2377 = !DILocation(line: 298, column: 1, scope: !498)
!2378 = !DILocation(line: 302, column: 7, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !498, file: !491, line: 302, column: 7)
!2380 = !DILocation(line: 302, column: 7, scope: !498)
!2381 = !DILocation(line: 307, column: 11, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !491, line: 307, column: 11)
!2383 = distinct !DILexicalBlock(scope: !2379, file: !491, line: 303, column: 5)
!2384 = !DILocation(line: 307, column: 27, scope: !2382)
!2385 = !DILocation(line: 308, column: 11, scope: !2382)
!2386 = !DILocation(line: 308, column: 28, scope: !2382)
!2387 = !DILocation(line: 308, column: 25, scope: !2382)
!2388 = !DILocation(line: 309, column: 15, scope: !2382)
!2389 = !DILocation(line: 309, column: 33, scope: !2382)
!2390 = !DILocation(line: 310, column: 19, scope: !2382)
!2391 = !DILocation(line: 311, column: 22, scope: !2382)
!2392 = !DILocation(line: 311, column: 56, scope: !2382)
!2393 = !DILocation(line: 307, column: 11, scope: !2383)
!2394 = !DILocation(line: 316, column: 21, scope: !2383)
!2395 = !DILocation(line: 317, column: 23, scope: !2383)
!2396 = !DILocation(line: 318, column: 5, scope: !2383)
!2397 = !DILocation(line: 327, column: 3, scope: !498)
!2398 = !DILocation(line: 331, column: 7, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !498, file: !491, line: 331, column: 7)
!2400 = !DILocation(line: 331, column: 7, scope: !498)
!2401 = !DILocation(line: 332, column: 5, scope: !2399)
!2402 = !DILocation(line: 338, column: 7, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2399, file: !491, line: 334, column: 5)
!2404 = !DILocation(line: 346, column: 3, scope: !498)
!2405 = !DILocation(line: 350, column: 3, scope: !498)
!2406 = !DILocation(line: 356, column: 1, scope: !498)
!2407 = distinct !DISubprogram(name: "error_at_line", scope: !491, file: !491, line: 359, type: !2408, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{null, !105, !105, !137, !98, !137, null}
!2410 = !{!2411, !2412, !2413, !2414, !2415, !2416}
!2411 = !DILocalVariable(name: "status", arg: 1, scope: !2407, file: !491, line: 359, type: !105)
!2412 = !DILocalVariable(name: "errnum", arg: 2, scope: !2407, file: !491, line: 359, type: !105)
!2413 = !DILocalVariable(name: "file_name", arg: 3, scope: !2407, file: !491, line: 359, type: !137)
!2414 = !DILocalVariable(name: "line_number", arg: 4, scope: !2407, file: !491, line: 360, type: !98)
!2415 = !DILocalVariable(name: "message", arg: 5, scope: !2407, file: !491, line: 360, type: !137)
!2416 = !DILocalVariable(name: "ap", scope: !2407, file: !491, line: 362, type: !501)
!2417 = !DILocation(line: 0, scope: !2407)
!2418 = !DILocation(line: 362, column: 3, scope: !2407)
!2419 = !DILocation(line: 362, column: 11, scope: !2407)
!2420 = !DILocation(line: 363, column: 3, scope: !2407)
!2421 = !DILocation(line: 364, column: 3, scope: !2407)
!2422 = !DILocation(line: 366, column: 3, scope: !2407)
!2423 = !DILocation(line: 367, column: 1, scope: !2407)
!2424 = distinct !DISubprogram(name: "getprogname", scope: !878, file: !878, line: 54, type: !2425, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !965)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!137}
!2427 = !DILocation(line: 58, column: 10, scope: !2424)
!2428 = !DILocation(line: 58, column: 3, scope: !2424)
!2429 = distinct !DISubprogram(name: "set_program_name", scope: !545, file: !545, line: 37, type: !979, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2430)
!2430 = !{!2431, !2432, !2433}
!2431 = !DILocalVariable(name: "argv0", arg: 1, scope: !2429, file: !545, line: 37, type: !137)
!2432 = !DILocalVariable(name: "slash", scope: !2429, file: !545, line: 44, type: !137)
!2433 = !DILocalVariable(name: "base", scope: !2429, file: !545, line: 45, type: !137)
!2434 = !DILocation(line: 0, scope: !2429)
!2435 = !DILocation(line: 44, column: 23, scope: !2429)
!2436 = !DILocation(line: 45, column: 22, scope: !2429)
!2437 = !DILocation(line: 46, column: 17, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2429, file: !545, line: 46, column: 7)
!2439 = !DILocation(line: 46, column: 9, scope: !2438)
!2440 = !DILocation(line: 46, column: 25, scope: !2438)
!2441 = !DILocation(line: 46, column: 40, scope: !2438)
!2442 = !DILocalVariable(name: "__s1", arg: 1, scope: !2443, file: !1040, line: 974, type: !1170)
!2443 = distinct !DISubprogram(name: "memeq", scope: !1040, file: !1040, line: 974, type: !2444, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !2446)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!190, !1170, !1170, !134}
!2446 = !{!2442, !2447, !2448}
!2447 = !DILocalVariable(name: "__s2", arg: 2, scope: !2443, file: !1040, line: 974, type: !1170)
!2448 = !DILocalVariable(name: "__n", arg: 3, scope: !2443, file: !1040, line: 974, type: !134)
!2449 = !DILocation(line: 0, scope: !2443, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 46, column: 28, scope: !2438)
!2451 = !DILocation(line: 976, column: 11, scope: !2443, inlinedAt: !2450)
!2452 = !DILocation(line: 976, column: 10, scope: !2443, inlinedAt: !2450)
!2453 = !DILocation(line: 46, column: 7, scope: !2429)
!2454 = !DILocation(line: 49, column: 11, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !545, line: 49, column: 11)
!2456 = distinct !DILexicalBlock(scope: !2438, file: !545, line: 47, column: 5)
!2457 = !DILocation(line: 49, column: 36, scope: !2455)
!2458 = !DILocation(line: 49, column: 11, scope: !2456)
!2459 = !DILocation(line: 65, column: 16, scope: !2429)
!2460 = !DILocation(line: 71, column: 27, scope: !2429)
!2461 = !DILocation(line: 74, column: 33, scope: !2429)
!2462 = !DILocation(line: 76, column: 1, scope: !2429)
!2463 = !DISubprogram(name: "strrchr", scope: !1144, file: !1144, line: 273, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!2464 = !DILocation(line: 0, scope: !554)
!2465 = !DILocation(line: 40, column: 29, scope: !554)
!2466 = !DILocation(line: 41, column: 19, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !554, file: !555, line: 41, column: 7)
!2468 = !DILocation(line: 41, column: 7, scope: !554)
!2469 = !DILocation(line: 47, column: 3, scope: !554)
!2470 = !DILocation(line: 48, column: 3, scope: !554)
!2471 = !DILocation(line: 48, column: 13, scope: !554)
!2472 = !DILocalVariable(name: "ps", arg: 1, scope: !2473, file: !2474, line: 1135, type: !2477)
!2473 = distinct !DISubprogram(name: "mbszero", scope: !2474, file: !2474, line: 1135, type: !2475, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !558, retainedNodes: !2478)
!2474 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2475 = !DISubroutineType(types: !2476)
!2476 = !{null, !2477}
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!2478 = !{!2472}
!2479 = !DILocation(line: 0, scope: !2473, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 48, column: 18, scope: !554)
!2481 = !DILocalVariable(name: "__dest", arg: 1, scope: !2482, file: !2483, line: 57, type: !126)
!2482 = distinct !DISubprogram(name: "memset", scope: !2483, file: !2483, line: 57, type: !2484, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !558, retainedNodes: !2486)
!2483 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!126, !126, !105, !134}
!2486 = !{!2481, !2487, !2488}
!2487 = !DILocalVariable(name: "__ch", arg: 2, scope: !2482, file: !2483, line: 57, type: !105)
!2488 = !DILocalVariable(name: "__len", arg: 3, scope: !2482, file: !2483, line: 57, type: !134)
!2489 = !DILocation(line: 0, scope: !2482, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 1137, column: 3, scope: !2473, inlinedAt: !2480)
!2491 = !DILocation(line: 59, column: 10, scope: !2482, inlinedAt: !2490)
!2492 = !DILocation(line: 49, column: 7, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !554, file: !555, line: 49, column: 7)
!2494 = !DILocation(line: 49, column: 39, scope: !2493)
!2495 = !DILocation(line: 49, column: 44, scope: !2493)
!2496 = !DILocation(line: 54, column: 1, scope: !554)
!2497 = !DISubprogram(name: "mbrtoc32", scope: !566, file: !566, line: 57, type: !2498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!134, !2500, !1018, !134, !2502}
!2500 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2501)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2477)
!2503 = distinct !DISubprogram(name: "clone_quoting_options", scope: !585, file: !585, line: 113, type: !2504, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !2507)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!2506, !2506}
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!2507 = !{!2508, !2509, !2510}
!2508 = !DILocalVariable(name: "o", arg: 1, scope: !2503, file: !585, line: 113, type: !2506)
!2509 = !DILocalVariable(name: "saved_errno", scope: !2503, file: !585, line: 115, type: !105)
!2510 = !DILocalVariable(name: "p", scope: !2503, file: !585, line: 116, type: !2506)
!2511 = !DILocation(line: 0, scope: !2503)
!2512 = !DILocation(line: 115, column: 21, scope: !2503)
!2513 = !DILocation(line: 116, column: 40, scope: !2503)
!2514 = !DILocation(line: 116, column: 31, scope: !2503)
!2515 = !DILocation(line: 118, column: 9, scope: !2503)
!2516 = !DILocation(line: 119, column: 3, scope: !2503)
!2517 = distinct !DISubprogram(name: "get_quoting_style", scope: !585, file: !585, line: 124, type: !2518, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !2522)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!611, !2520}
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!2522 = !{!2523}
!2523 = !DILocalVariable(name: "o", arg: 1, scope: !2517, file: !585, line: 124, type: !2520)
!2524 = !DILocation(line: 0, scope: !2517)
!2525 = !DILocation(line: 126, column: 11, scope: !2517)
!2526 = !DILocation(line: 126, column: 46, scope: !2517)
!2527 = !{!2528, !958, i64 0}
!2528 = !{!"quoting_options", !958, i64 0, !1028, i64 4, !958, i64 8, !957, i64 40, !957, i64 48}
!2529 = !DILocation(line: 126, column: 3, scope: !2517)
!2530 = distinct !DISubprogram(name: "set_quoting_style", scope: !585, file: !585, line: 132, type: !2531, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !2533)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{null, !2506, !611}
!2533 = !{!2534, !2535}
!2534 = !DILocalVariable(name: "o", arg: 1, scope: !2530, file: !585, line: 132, type: !2506)
!2535 = !DILocalVariable(name: "s", arg: 2, scope: !2530, file: !585, line: 132, type: !611)
!2536 = !DILocation(line: 0, scope: !2530)
!2537 = !DILocation(line: 134, column: 4, scope: !2530)
!2538 = !DILocation(line: 134, column: 45, scope: !2530)
!2539 = !DILocation(line: 135, column: 1, scope: !2530)
!2540 = distinct !DISubprogram(name: "set_char_quoting", scope: !585, file: !585, line: 143, type: !2541, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !2543)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!105, !2506, !4, !105}
!2543 = !{!2544, !2545, !2546, !2547, !2548, !2550, !2551}
!2544 = !DILocalVariable(name: "o", arg: 1, scope: !2540, file: !585, line: 143, type: !2506)
!2545 = !DILocalVariable(name: "c", arg: 2, scope: !2540, file: !585, line: 143, type: !4)
!2546 = !DILocalVariable(name: "i", arg: 3, scope: !2540, file: !585, line: 143, type: !105)
!2547 = !DILocalVariable(name: "uc", scope: !2540, file: !585, line: 145, type: !139)
!2548 = !DILocalVariable(name: "p", scope: !2540, file: !585, line: 146, type: !2549)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!2550 = !DILocalVariable(name: "shift", scope: !2540, file: !585, line: 148, type: !105)
!2551 = !DILocalVariable(name: "r", scope: !2540, file: !585, line: 149, type: !98)
!2552 = !DILocation(line: 0, scope: !2540)
!2553 = !DILocation(line: 147, column: 6, scope: !2540)
!2554 = !DILocation(line: 147, column: 41, scope: !2540)
!2555 = !DILocation(line: 147, column: 62, scope: !2540)
!2556 = !DILocation(line: 147, column: 57, scope: !2540)
!2557 = !DILocation(line: 148, column: 15, scope: !2540)
!2558 = !DILocation(line: 149, column: 21, scope: !2540)
!2559 = !DILocation(line: 149, column: 24, scope: !2540)
!2560 = !DILocation(line: 149, column: 34, scope: !2540)
!2561 = !DILocation(line: 150, column: 19, scope: !2540)
!2562 = !DILocation(line: 150, column: 24, scope: !2540)
!2563 = !DILocation(line: 150, column: 6, scope: !2540)
!2564 = !DILocation(line: 151, column: 3, scope: !2540)
!2565 = distinct !DISubprogram(name: "set_quoting_flags", scope: !585, file: !585, line: 159, type: !2566, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !2568)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!105, !2506, !105}
!2568 = !{!2569, !2570, !2571}
!2569 = !DILocalVariable(name: "o", arg: 1, scope: !2565, file: !585, line: 159, type: !2506)
!2570 = !DILocalVariable(name: "i", arg: 2, scope: !2565, file: !585, line: 159, type: !105)
!2571 = !DILocalVariable(name: "r", scope: !2565, file: !585, line: 163, type: !105)
!2572 = !DILocation(line: 0, scope: !2565)
!2573 = !DILocation(line: 161, column: 8, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2565, file: !585, line: 161, column: 7)
!2575 = !DILocation(line: 161, column: 7, scope: !2565)
!2576 = !DILocation(line: 163, column: 14, scope: !2565)
!2577 = !{!2528, !1028, i64 4}
!2578 = !DILocation(line: 164, column: 12, scope: !2565)
!2579 = !DILocation(line: 165, column: 3, scope: !2565)
!2580 = distinct !DISubprogram(name: "set_custom_quoting", scope: !585, file: !585, line: 169, type: !2581, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !2583)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{null, !2506, !137, !137}
!2583 = !{!2584, !2585, !2586}
!2584 = !DILocalVariable(name: "o", arg: 1, scope: !2580, file: !585, line: 169, type: !2506)
!2585 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2580, file: !585, line: 170, type: !137)
!2586 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2580, file: !585, line: 170, type: !137)
!2587 = !DILocation(line: 0, scope: !2580)
!2588 = !DILocation(line: 172, column: 8, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2580, file: !585, line: 172, column: 7)
!2590 = !DILocation(line: 172, column: 7, scope: !2580)
!2591 = !DILocation(line: 174, column: 12, scope: !2580)
!2592 = !DILocation(line: 175, column: 8, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2580, file: !585, line: 175, column: 7)
!2594 = !DILocation(line: 175, column: 19, scope: !2593)
!2595 = !DILocation(line: 176, column: 5, scope: !2593)
!2596 = !DILocation(line: 177, column: 6, scope: !2580)
!2597 = !DILocation(line: 177, column: 17, scope: !2580)
!2598 = !{!2528, !957, i64 40}
!2599 = !DILocation(line: 178, column: 6, scope: !2580)
!2600 = !DILocation(line: 178, column: 18, scope: !2580)
!2601 = !{!2528, !957, i64 48}
!2602 = !DILocation(line: 179, column: 1, scope: !2580)
!2603 = !DISubprogram(name: "abort", scope: !1148, file: !1148, line: 598, type: !540, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !965)
!2604 = distinct !DISubprogram(name: "quotearg_buffer", scope: !585, file: !585, line: 774, type: !2605, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!134, !125, !134, !137, !134, !2520}
!2607 = !{!2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615}
!2608 = !DILocalVariable(name: "buffer", arg: 1, scope: !2604, file: !585, line: 774, type: !125)
!2609 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2604, file: !585, line: 774, type: !134)
!2610 = !DILocalVariable(name: "arg", arg: 3, scope: !2604, file: !585, line: 775, type: !137)
!2611 = !DILocalVariable(name: "argsize", arg: 4, scope: !2604, file: !585, line: 775, type: !134)
!2612 = !DILocalVariable(name: "o", arg: 5, scope: !2604, file: !585, line: 776, type: !2520)
!2613 = !DILocalVariable(name: "p", scope: !2604, file: !585, line: 778, type: !2520)
!2614 = !DILocalVariable(name: "saved_errno", scope: !2604, file: !585, line: 779, type: !105)
!2615 = !DILocalVariable(name: "r", scope: !2604, file: !585, line: 780, type: !134)
!2616 = !DILocation(line: 0, scope: !2604)
!2617 = !DILocation(line: 778, column: 37, scope: !2604)
!2618 = !DILocation(line: 779, column: 21, scope: !2604)
!2619 = !DILocation(line: 781, column: 43, scope: !2604)
!2620 = !DILocation(line: 781, column: 53, scope: !2604)
!2621 = !DILocation(line: 781, column: 63, scope: !2604)
!2622 = !DILocation(line: 782, column: 43, scope: !2604)
!2623 = !DILocation(line: 782, column: 58, scope: !2604)
!2624 = !DILocation(line: 780, column: 14, scope: !2604)
!2625 = !DILocation(line: 783, column: 9, scope: !2604)
!2626 = !DILocation(line: 784, column: 3, scope: !2604)
!2627 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !585, file: !585, line: 251, type: !2628, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !2632)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!134, !125, !134, !137, !134, !611, !105, !2630, !137, !137}
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!2632 = !{!2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2657, !2659, !2662, !2663, !2664, !2665, !2668, !2669, !2672, !2676, !2677, !2685, !2688, !2689, !2691, !2692, !2693, !2694}
!2633 = !DILocalVariable(name: "buffer", arg: 1, scope: !2627, file: !585, line: 251, type: !125)
!2634 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2627, file: !585, line: 251, type: !134)
!2635 = !DILocalVariable(name: "arg", arg: 3, scope: !2627, file: !585, line: 252, type: !137)
!2636 = !DILocalVariable(name: "argsize", arg: 4, scope: !2627, file: !585, line: 252, type: !134)
!2637 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2627, file: !585, line: 253, type: !611)
!2638 = !DILocalVariable(name: "flags", arg: 6, scope: !2627, file: !585, line: 253, type: !105)
!2639 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2627, file: !585, line: 254, type: !2630)
!2640 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2627, file: !585, line: 255, type: !137)
!2641 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2627, file: !585, line: 256, type: !137)
!2642 = !DILocalVariable(name: "unibyte_locale", scope: !2627, file: !585, line: 258, type: !190)
!2643 = !DILocalVariable(name: "len", scope: !2627, file: !585, line: 260, type: !134)
!2644 = !DILocalVariable(name: "orig_buffersize", scope: !2627, file: !585, line: 261, type: !134)
!2645 = !DILocalVariable(name: "quote_string", scope: !2627, file: !585, line: 262, type: !137)
!2646 = !DILocalVariable(name: "quote_string_len", scope: !2627, file: !585, line: 263, type: !134)
!2647 = !DILocalVariable(name: "backslash_escapes", scope: !2627, file: !585, line: 264, type: !190)
!2648 = !DILocalVariable(name: "elide_outer_quotes", scope: !2627, file: !585, line: 265, type: !190)
!2649 = !DILocalVariable(name: "encountered_single_quote", scope: !2627, file: !585, line: 266, type: !190)
!2650 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2627, file: !585, line: 267, type: !190)
!2651 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2627, file: !585, line: 309, type: !190)
!2652 = !DILocalVariable(name: "lq", scope: !2653, file: !585, line: 361, type: !137)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !585, line: 361, column: 11)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !585, line: 360, column: 13)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !585, line: 333, column: 7)
!2656 = distinct !DILexicalBlock(scope: !2627, file: !585, line: 312, column: 5)
!2657 = !DILocalVariable(name: "i", scope: !2658, file: !585, line: 395, type: !134)
!2658 = distinct !DILexicalBlock(scope: !2627, file: !585, line: 395, column: 3)
!2659 = !DILocalVariable(name: "is_right_quote", scope: !2660, file: !585, line: 397, type: !190)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !585, line: 396, column: 5)
!2661 = distinct !DILexicalBlock(scope: !2658, file: !585, line: 395, column: 3)
!2662 = !DILocalVariable(name: "escaping", scope: !2660, file: !585, line: 398, type: !190)
!2663 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2660, file: !585, line: 399, type: !190)
!2664 = !DILocalVariable(name: "c", scope: !2660, file: !585, line: 417, type: !139)
!2665 = !DILocalVariable(name: "m", scope: !2666, file: !585, line: 598, type: !134)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !585, line: 596, column: 11)
!2667 = distinct !DILexicalBlock(scope: !2660, file: !585, line: 419, column: 9)
!2668 = !DILocalVariable(name: "printable", scope: !2666, file: !585, line: 600, type: !190)
!2669 = !DILocalVariable(name: "mbs", scope: !2670, file: !585, line: 609, type: !672)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !585, line: 608, column: 15)
!2671 = distinct !DILexicalBlock(scope: !2666, file: !585, line: 602, column: 17)
!2672 = !DILocalVariable(name: "w", scope: !2673, file: !585, line: 618, type: !565)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !585, line: 617, column: 19)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !585, line: 616, column: 17)
!2675 = distinct !DILexicalBlock(scope: !2670, file: !585, line: 616, column: 17)
!2676 = !DILocalVariable(name: "bytes", scope: !2673, file: !585, line: 619, type: !134)
!2677 = !DILocalVariable(name: "j", scope: !2678, file: !585, line: 648, type: !134)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !585, line: 648, column: 29)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !585, line: 647, column: 27)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !585, line: 645, column: 29)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !585, line: 636, column: 23)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !585, line: 628, column: 30)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !585, line: 623, column: 30)
!2684 = distinct !DILexicalBlock(scope: !2673, file: !585, line: 621, column: 25)
!2685 = !DILocalVariable(name: "ilim", scope: !2686, file: !585, line: 674, type: !134)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !585, line: 671, column: 15)
!2687 = distinct !DILexicalBlock(scope: !2666, file: !585, line: 670, column: 17)
!2688 = !DILabel(scope: !2627, name: "process_input", file: !585, line: 308)
!2689 = !DILabel(scope: !2690, name: "c_and_shell_escape", file: !585, line: 502)
!2690 = distinct !DILexicalBlock(scope: !2667, file: !585, line: 478, column: 9)
!2691 = !DILabel(scope: !2690, name: "c_escape", file: !585, line: 507)
!2692 = !DILabel(scope: !2660, name: "store_escape", file: !585, line: 709)
!2693 = !DILabel(scope: !2660, name: "store_c", file: !585, line: 712)
!2694 = !DILabel(scope: !2627, name: "force_outer_quoting_style", file: !585, line: 753)
!2695 = !DILocation(line: 0, scope: !2627)
!2696 = !DILocation(line: 258, column: 25, scope: !2627)
!2697 = !DILocation(line: 258, column: 36, scope: !2627)
!2698 = !DILocation(line: 267, column: 3, scope: !2627)
!2699 = !DILocation(line: 261, column: 10, scope: !2627)
!2700 = !DILocation(line: 262, column: 15, scope: !2627)
!2701 = !DILocation(line: 263, column: 10, scope: !2627)
!2702 = !DILocation(line: 308, column: 2, scope: !2627)
!2703 = !DILocation(line: 311, column: 3, scope: !2627)
!2704 = !DILocation(line: 318, column: 11, scope: !2656)
!2705 = !DILocation(line: 319, column: 9, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !585, line: 319, column: 9)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !585, line: 319, column: 9)
!2708 = distinct !DILexicalBlock(scope: !2656, file: !585, line: 318, column: 11)
!2709 = !DILocation(line: 319, column: 9, scope: !2707)
!2710 = !DILocation(line: 0, scope: !663, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 357, column: 26, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !585, line: 335, column: 11)
!2713 = distinct !DILexicalBlock(scope: !2655, file: !585, line: 334, column: 13)
!2714 = !DILocation(line: 199, column: 29, scope: !663, inlinedAt: !2711)
!2715 = !DILocation(line: 201, column: 19, scope: !2716, inlinedAt: !2711)
!2716 = distinct !DILexicalBlock(scope: !663, file: !585, line: 201, column: 7)
!2717 = !DILocation(line: 201, column: 7, scope: !663, inlinedAt: !2711)
!2718 = !DILocation(line: 229, column: 3, scope: !663, inlinedAt: !2711)
!2719 = !DILocation(line: 230, column: 3, scope: !663, inlinedAt: !2711)
!2720 = !DILocation(line: 230, column: 13, scope: !663, inlinedAt: !2711)
!2721 = !DILocalVariable(name: "ps", arg: 1, scope: !2722, file: !2474, line: 1135, type: !2725)
!2722 = distinct !DISubprogram(name: "mbszero", scope: !2474, file: !2474, line: 1135, type: !2723, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !2726)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{null, !2725}
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!2726 = !{!2721}
!2727 = !DILocation(line: 0, scope: !2722, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 230, column: 18, scope: !663, inlinedAt: !2711)
!2729 = !DILocalVariable(name: "__dest", arg: 1, scope: !2730, file: !2483, line: 57, type: !126)
!2730 = distinct !DISubprogram(name: "memset", scope: !2483, file: !2483, line: 57, type: !2484, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !2731)
!2731 = !{!2729, !2732, !2733}
!2732 = !DILocalVariable(name: "__ch", arg: 2, scope: !2730, file: !2483, line: 57, type: !105)
!2733 = !DILocalVariable(name: "__len", arg: 3, scope: !2730, file: !2483, line: 57, type: !134)
!2734 = !DILocation(line: 0, scope: !2730, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 1137, column: 3, scope: !2722, inlinedAt: !2728)
!2736 = !DILocation(line: 59, column: 10, scope: !2730, inlinedAt: !2735)
!2737 = !DILocation(line: 231, column: 7, scope: !2738, inlinedAt: !2711)
!2738 = distinct !DILexicalBlock(scope: !663, file: !585, line: 231, column: 7)
!2739 = !DILocation(line: 231, column: 40, scope: !2738, inlinedAt: !2711)
!2740 = !DILocation(line: 231, column: 45, scope: !2738, inlinedAt: !2711)
!2741 = !DILocation(line: 235, column: 1, scope: !663, inlinedAt: !2711)
!2742 = !DILocation(line: 0, scope: !663, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 358, column: 27, scope: !2712)
!2744 = !DILocation(line: 199, column: 29, scope: !663, inlinedAt: !2743)
!2745 = !DILocation(line: 201, column: 19, scope: !2716, inlinedAt: !2743)
!2746 = !DILocation(line: 201, column: 7, scope: !663, inlinedAt: !2743)
!2747 = !DILocation(line: 229, column: 3, scope: !663, inlinedAt: !2743)
!2748 = !DILocation(line: 230, column: 3, scope: !663, inlinedAt: !2743)
!2749 = !DILocation(line: 230, column: 13, scope: !663, inlinedAt: !2743)
!2750 = !DILocation(line: 0, scope: !2722, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 230, column: 18, scope: !663, inlinedAt: !2743)
!2752 = !DILocation(line: 0, scope: !2730, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 1137, column: 3, scope: !2722, inlinedAt: !2751)
!2754 = !DILocation(line: 59, column: 10, scope: !2730, inlinedAt: !2753)
!2755 = !DILocation(line: 231, column: 7, scope: !2738, inlinedAt: !2743)
!2756 = !DILocation(line: 231, column: 40, scope: !2738, inlinedAt: !2743)
!2757 = !DILocation(line: 231, column: 45, scope: !2738, inlinedAt: !2743)
!2758 = !DILocation(line: 235, column: 1, scope: !663, inlinedAt: !2743)
!2759 = !DILocation(line: 360, column: 13, scope: !2655)
!2760 = !DILocation(line: 0, scope: !2653)
!2761 = !DILocation(line: 361, column: 45, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2653, file: !585, line: 361, column: 11)
!2763 = !DILocation(line: 361, column: 11, scope: !2653)
!2764 = !DILocation(line: 362, column: 13, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !585, line: 362, column: 13)
!2766 = distinct !DILexicalBlock(scope: !2762, file: !585, line: 362, column: 13)
!2767 = !DILocation(line: 362, column: 13, scope: !2766)
!2768 = !DILocation(line: 361, column: 52, scope: !2762)
!2769 = distinct !{!2769, !2763, !2770, !1074}
!2770 = !DILocation(line: 362, column: 13, scope: !2653)
!2771 = !DILocation(line: 260, column: 10, scope: !2627)
!2772 = !DILocation(line: 365, column: 28, scope: !2655)
!2773 = !DILocation(line: 367, column: 7, scope: !2656)
!2774 = !DILocation(line: 370, column: 7, scope: !2656)
!2775 = !DILocation(line: 376, column: 11, scope: !2656)
!2776 = !DILocation(line: 381, column: 11, scope: !2656)
!2777 = !DILocation(line: 382, column: 9, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !585, line: 382, column: 9)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !585, line: 382, column: 9)
!2780 = distinct !DILexicalBlock(scope: !2656, file: !585, line: 381, column: 11)
!2781 = !DILocation(line: 382, column: 9, scope: !2779)
!2782 = !DILocation(line: 389, column: 7, scope: !2656)
!2783 = !DILocation(line: 392, column: 7, scope: !2656)
!2784 = !DILocation(line: 0, scope: !2658)
!2785 = !DILocation(line: 395, column: 8, scope: !2658)
!2786 = !DILocation(line: 395, scope: !2658)
!2787 = !DILocation(line: 395, column: 34, scope: !2661)
!2788 = !DILocation(line: 395, column: 26, scope: !2661)
!2789 = !DILocation(line: 395, column: 48, scope: !2661)
!2790 = !DILocation(line: 395, column: 55, scope: !2661)
!2791 = !DILocation(line: 395, column: 3, scope: !2658)
!2792 = !DILocation(line: 395, column: 67, scope: !2661)
!2793 = !DILocation(line: 0, scope: !2660)
!2794 = !DILocation(line: 402, column: 11, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2660, file: !585, line: 401, column: 11)
!2796 = !DILocation(line: 404, column: 17, scope: !2795)
!2797 = !DILocation(line: 405, column: 39, scope: !2795)
!2798 = !DILocation(line: 409, column: 32, scope: !2795)
!2799 = !DILocation(line: 405, column: 19, scope: !2795)
!2800 = !DILocation(line: 405, column: 15, scope: !2795)
!2801 = !DILocation(line: 410, column: 11, scope: !2795)
!2802 = !DILocation(line: 410, column: 25, scope: !2795)
!2803 = !DILocalVariable(name: "__s1", arg: 1, scope: !2804, file: !1040, line: 974, type: !1170)
!2804 = distinct !DISubprogram(name: "memeq", scope: !1040, file: !1040, line: 974, type: !2444, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !2805)
!2805 = !{!2803, !2806, !2807}
!2806 = !DILocalVariable(name: "__s2", arg: 2, scope: !2804, file: !1040, line: 974, type: !1170)
!2807 = !DILocalVariable(name: "__n", arg: 3, scope: !2804, file: !1040, line: 974, type: !134)
!2808 = !DILocation(line: 0, scope: !2804, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 410, column: 14, scope: !2795)
!2810 = !DILocation(line: 976, column: 11, scope: !2804, inlinedAt: !2809)
!2811 = !DILocation(line: 976, column: 10, scope: !2804, inlinedAt: !2809)
!2812 = !DILocation(line: 401, column: 11, scope: !2660)
!2813 = !DILocation(line: 417, column: 25, scope: !2660)
!2814 = !DILocation(line: 418, column: 7, scope: !2660)
!2815 = !DILocation(line: 421, column: 15, scope: !2667)
!2816 = !DILocation(line: 423, column: 15, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !585, line: 423, column: 15)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !585, line: 422, column: 13)
!2819 = distinct !DILexicalBlock(scope: !2667, file: !585, line: 421, column: 15)
!2820 = !DILocation(line: 423, column: 15, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2817, file: !585, line: 423, column: 15)
!2822 = !DILocation(line: 423, column: 15, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !585, line: 423, column: 15)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !585, line: 423, column: 15)
!2825 = distinct !DILexicalBlock(scope: !2821, file: !585, line: 423, column: 15)
!2826 = !DILocation(line: 423, column: 15, scope: !2824)
!2827 = !DILocation(line: 423, column: 15, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !585, line: 423, column: 15)
!2829 = distinct !DILexicalBlock(scope: !2825, file: !585, line: 423, column: 15)
!2830 = !DILocation(line: 423, column: 15, scope: !2829)
!2831 = !DILocation(line: 423, column: 15, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !585, line: 423, column: 15)
!2833 = distinct !DILexicalBlock(scope: !2825, file: !585, line: 423, column: 15)
!2834 = !DILocation(line: 423, column: 15, scope: !2833)
!2835 = !DILocation(line: 423, column: 15, scope: !2825)
!2836 = !DILocation(line: 423, column: 15, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2838, file: !585, line: 423, column: 15)
!2838 = distinct !DILexicalBlock(scope: !2817, file: !585, line: 423, column: 15)
!2839 = !DILocation(line: 423, column: 15, scope: !2838)
!2840 = !DILocation(line: 431, column: 19, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2818, file: !585, line: 430, column: 19)
!2842 = !DILocation(line: 431, column: 24, scope: !2841)
!2843 = !DILocation(line: 431, column: 28, scope: !2841)
!2844 = !DILocation(line: 431, column: 38, scope: !2841)
!2845 = !DILocation(line: 431, column: 48, scope: !2841)
!2846 = !DILocation(line: 431, column: 59, scope: !2841)
!2847 = !DILocation(line: 433, column: 19, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !585, line: 433, column: 19)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !585, line: 433, column: 19)
!2850 = distinct !DILexicalBlock(scope: !2841, file: !585, line: 432, column: 17)
!2851 = !DILocation(line: 433, column: 19, scope: !2849)
!2852 = !DILocation(line: 434, column: 19, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !585, line: 434, column: 19)
!2854 = distinct !DILexicalBlock(scope: !2850, file: !585, line: 434, column: 19)
!2855 = !DILocation(line: 434, column: 19, scope: !2854)
!2856 = !DILocation(line: 435, column: 17, scope: !2850)
!2857 = !DILocation(line: 442, column: 20, scope: !2819)
!2858 = !DILocation(line: 447, column: 11, scope: !2667)
!2859 = !DILocation(line: 450, column: 19, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2667, file: !585, line: 448, column: 13)
!2861 = !DILocation(line: 456, column: 19, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2860, file: !585, line: 455, column: 19)
!2863 = !DILocation(line: 456, column: 24, scope: !2862)
!2864 = !DILocation(line: 456, column: 28, scope: !2862)
!2865 = !DILocation(line: 456, column: 38, scope: !2862)
!2866 = !DILocation(line: 456, column: 47, scope: !2862)
!2867 = !DILocation(line: 456, column: 41, scope: !2862)
!2868 = !DILocation(line: 456, column: 52, scope: !2862)
!2869 = !DILocation(line: 455, column: 19, scope: !2860)
!2870 = !DILocation(line: 457, column: 25, scope: !2862)
!2871 = !DILocation(line: 457, column: 17, scope: !2862)
!2872 = !DILocation(line: 464, column: 25, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2862, file: !585, line: 458, column: 19)
!2874 = !DILocation(line: 468, column: 21, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !585, line: 468, column: 21)
!2876 = distinct !DILexicalBlock(scope: !2873, file: !585, line: 468, column: 21)
!2877 = !DILocation(line: 468, column: 21, scope: !2876)
!2878 = !DILocation(line: 469, column: 21, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !585, line: 469, column: 21)
!2880 = distinct !DILexicalBlock(scope: !2873, file: !585, line: 469, column: 21)
!2881 = !DILocation(line: 469, column: 21, scope: !2880)
!2882 = !DILocation(line: 470, column: 21, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !585, line: 470, column: 21)
!2884 = distinct !DILexicalBlock(scope: !2873, file: !585, line: 470, column: 21)
!2885 = !DILocation(line: 470, column: 21, scope: !2884)
!2886 = !DILocation(line: 471, column: 21, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !585, line: 471, column: 21)
!2888 = distinct !DILexicalBlock(scope: !2873, file: !585, line: 471, column: 21)
!2889 = !DILocation(line: 471, column: 21, scope: !2888)
!2890 = !DILocation(line: 472, column: 21, scope: !2873)
!2891 = !DILocation(line: 482, column: 33, scope: !2690)
!2892 = !DILocation(line: 483, column: 33, scope: !2690)
!2893 = !DILocation(line: 485, column: 33, scope: !2690)
!2894 = !DILocation(line: 486, column: 33, scope: !2690)
!2895 = !DILocation(line: 487, column: 33, scope: !2690)
!2896 = !DILocation(line: 490, column: 17, scope: !2690)
!2897 = !DILocation(line: 492, column: 21, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !585, line: 491, column: 15)
!2899 = distinct !DILexicalBlock(scope: !2690, file: !585, line: 490, column: 17)
!2900 = !DILocation(line: 499, column: 35, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2690, file: !585, line: 499, column: 17)
!2902 = !DILocation(line: 0, scope: !2690)
!2903 = !DILocation(line: 502, column: 11, scope: !2690)
!2904 = !DILocation(line: 504, column: 17, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2690, file: !585, line: 503, column: 17)
!2906 = !DILocation(line: 507, column: 11, scope: !2690)
!2907 = !DILocation(line: 508, column: 17, scope: !2690)
!2908 = !DILocation(line: 517, column: 15, scope: !2667)
!2909 = !DILocation(line: 517, column: 40, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2667, file: !585, line: 517, column: 15)
!2911 = !DILocation(line: 517, column: 47, scope: !2910)
!2912 = !DILocation(line: 517, column: 18, scope: !2910)
!2913 = !DILocation(line: 521, column: 17, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2667, file: !585, line: 521, column: 15)
!2915 = !DILocation(line: 521, column: 15, scope: !2667)
!2916 = !DILocation(line: 525, column: 11, scope: !2667)
!2917 = !DILocation(line: 537, column: 15, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2667, file: !585, line: 536, column: 15)
!2919 = !DILocation(line: 536, column: 15, scope: !2667)
!2920 = !DILocation(line: 544, column: 15, scope: !2667)
!2921 = !DILocation(line: 546, column: 19, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !585, line: 545, column: 13)
!2923 = distinct !DILexicalBlock(scope: !2667, file: !585, line: 544, column: 15)
!2924 = !DILocation(line: 549, column: 19, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2922, file: !585, line: 549, column: 19)
!2926 = !DILocation(line: 549, column: 30, scope: !2925)
!2927 = !DILocation(line: 558, column: 15, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !585, line: 558, column: 15)
!2929 = distinct !DILexicalBlock(scope: !2922, file: !585, line: 558, column: 15)
!2930 = !DILocation(line: 558, column: 15, scope: !2929)
!2931 = !DILocation(line: 559, column: 15, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !585, line: 559, column: 15)
!2933 = distinct !DILexicalBlock(scope: !2922, file: !585, line: 559, column: 15)
!2934 = !DILocation(line: 559, column: 15, scope: !2933)
!2935 = !DILocation(line: 560, column: 15, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !585, line: 560, column: 15)
!2937 = distinct !DILexicalBlock(scope: !2922, file: !585, line: 560, column: 15)
!2938 = !DILocation(line: 560, column: 15, scope: !2937)
!2939 = !DILocation(line: 562, column: 13, scope: !2922)
!2940 = !DILocation(line: 602, column: 17, scope: !2666)
!2941 = !DILocation(line: 0, scope: !2666)
!2942 = !DILocation(line: 605, column: 29, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2671, file: !585, line: 603, column: 15)
!2944 = !DILocation(line: 605, column: 41, scope: !2943)
!2945 = !DILocation(line: 606, column: 15, scope: !2943)
!2946 = !DILocation(line: 609, column: 17, scope: !2670)
!2947 = !DILocation(line: 609, column: 27, scope: !2670)
!2948 = !DILocation(line: 0, scope: !2722, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 609, column: 32, scope: !2670)
!2950 = !DILocation(line: 0, scope: !2730, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 1137, column: 3, scope: !2722, inlinedAt: !2949)
!2952 = !DILocation(line: 59, column: 10, scope: !2730, inlinedAt: !2951)
!2953 = !DILocation(line: 613, column: 29, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2670, file: !585, line: 613, column: 21)
!2955 = !DILocation(line: 613, column: 21, scope: !2670)
!2956 = !DILocation(line: 614, column: 29, scope: !2954)
!2957 = !DILocation(line: 614, column: 19, scope: !2954)
!2958 = !DILocation(line: 618, column: 21, scope: !2673)
!2959 = !DILocation(line: 620, column: 54, scope: !2673)
!2960 = !DILocation(line: 0, scope: !2673)
!2961 = !DILocation(line: 619, column: 36, scope: !2673)
!2962 = !DILocation(line: 621, column: 25, scope: !2673)
!2963 = !DILocation(line: 631, column: 38, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2682, file: !585, line: 629, column: 23)
!2965 = !DILocation(line: 631, column: 48, scope: !2964)
!2966 = !DILocation(line: 626, column: 25, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2683, file: !585, line: 624, column: 23)
!2968 = !DILocation(line: 631, column: 51, scope: !2964)
!2969 = !DILocation(line: 631, column: 25, scope: !2964)
!2970 = !DILocation(line: 632, column: 28, scope: !2964)
!2971 = !DILocation(line: 631, column: 34, scope: !2964)
!2972 = distinct !{!2972, !2969, !2970, !1074}
!2973 = !DILocation(line: 646, column: 29, scope: !2680)
!2974 = !DILocation(line: 0, scope: !2678)
!2975 = !DILocation(line: 649, column: 49, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2678, file: !585, line: 648, column: 29)
!2977 = !DILocation(line: 649, column: 39, scope: !2976)
!2978 = !DILocation(line: 649, column: 31, scope: !2976)
!2979 = !DILocation(line: 648, column: 60, scope: !2976)
!2980 = !DILocation(line: 648, column: 50, scope: !2976)
!2981 = !DILocation(line: 648, column: 29, scope: !2678)
!2982 = distinct !{!2982, !2981, !2983, !1074}
!2983 = !DILocation(line: 654, column: 33, scope: !2678)
!2984 = !DILocation(line: 657, column: 43, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2681, file: !585, line: 657, column: 29)
!2986 = !DILocalVariable(name: "wc", arg: 1, scope: !2987, file: !2988, line: 865, type: !2991)
!2987 = distinct !DISubprogram(name: "c32isprint", scope: !2988, file: !2988, line: 865, type: !2989, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !2993)
!2988 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!105, !2991}
!2991 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2992, line: 20, baseType: !98)
!2992 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2993 = !{!2986}
!2994 = !DILocation(line: 0, scope: !2987, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 657, column: 31, scope: !2985)
!2996 = !DILocation(line: 871, column: 10, scope: !2987, inlinedAt: !2995)
!2997 = !DILocation(line: 657, column: 31, scope: !2985)
!2998 = !DILocation(line: 664, column: 23, scope: !2673)
!2999 = !DILocation(line: 665, column: 19, scope: !2674)
!3000 = !DILocation(line: 666, column: 15, scope: !2671)
!3001 = !DILocation(line: 753, column: 2, scope: !2627)
!3002 = !DILocation(line: 756, column: 51, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2627, file: !585, line: 756, column: 7)
!3004 = !DILocation(line: 0, scope: !2671)
!3005 = !DILocation(line: 670, column: 19, scope: !2687)
!3006 = !DILocation(line: 670, column: 23, scope: !2687)
!3007 = !DILocation(line: 674, column: 33, scope: !2686)
!3008 = !DILocation(line: 0, scope: !2686)
!3009 = !DILocation(line: 676, column: 17, scope: !2686)
!3010 = !DILocation(line: 398, column: 12, scope: !2660)
!3011 = !DILocation(line: 678, column: 43, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !585, line: 678, column: 25)
!3013 = distinct !DILexicalBlock(scope: !3014, file: !585, line: 677, column: 19)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !585, line: 676, column: 17)
!3015 = distinct !DILexicalBlock(scope: !2686, file: !585, line: 676, column: 17)
!3016 = !DILocation(line: 680, column: 25, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !585, line: 680, column: 25)
!3018 = distinct !DILexicalBlock(scope: !3012, file: !585, line: 679, column: 23)
!3019 = !DILocation(line: 680, column: 25, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3017, file: !585, line: 680, column: 25)
!3021 = !DILocation(line: 680, column: 25, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !585, line: 680, column: 25)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !585, line: 680, column: 25)
!3024 = distinct !DILexicalBlock(scope: !3020, file: !585, line: 680, column: 25)
!3025 = !DILocation(line: 680, column: 25, scope: !3023)
!3026 = !DILocation(line: 680, column: 25, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !585, line: 680, column: 25)
!3028 = distinct !DILexicalBlock(scope: !3024, file: !585, line: 680, column: 25)
!3029 = !DILocation(line: 680, column: 25, scope: !3028)
!3030 = !DILocation(line: 680, column: 25, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3032, file: !585, line: 680, column: 25)
!3032 = distinct !DILexicalBlock(scope: !3024, file: !585, line: 680, column: 25)
!3033 = !DILocation(line: 680, column: 25, scope: !3032)
!3034 = !DILocation(line: 680, column: 25, scope: !3024)
!3035 = !DILocation(line: 680, column: 25, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !585, line: 680, column: 25)
!3037 = distinct !DILexicalBlock(scope: !3017, file: !585, line: 680, column: 25)
!3038 = !DILocation(line: 680, column: 25, scope: !3037)
!3039 = !DILocation(line: 681, column: 25, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !585, line: 681, column: 25)
!3041 = distinct !DILexicalBlock(scope: !3018, file: !585, line: 681, column: 25)
!3042 = !DILocation(line: 681, column: 25, scope: !3041)
!3043 = !DILocation(line: 682, column: 25, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !585, line: 682, column: 25)
!3045 = distinct !DILexicalBlock(scope: !3018, file: !585, line: 682, column: 25)
!3046 = !DILocation(line: 682, column: 25, scope: !3045)
!3047 = !DILocation(line: 683, column: 38, scope: !3018)
!3048 = !DILocation(line: 683, column: 33, scope: !3018)
!3049 = !DILocation(line: 684, column: 23, scope: !3018)
!3050 = !DILocation(line: 685, column: 30, scope: !3012)
!3051 = !DILocation(line: 687, column: 25, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !585, line: 687, column: 25)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !585, line: 687, column: 25)
!3054 = distinct !DILexicalBlock(scope: !3055, file: !585, line: 686, column: 23)
!3055 = distinct !DILexicalBlock(scope: !3012, file: !585, line: 685, column: 30)
!3056 = !DILocation(line: 687, column: 25, scope: !3053)
!3057 = !DILocation(line: 689, column: 23, scope: !3054)
!3058 = !DILocation(line: 690, column: 35, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3013, file: !585, line: 690, column: 25)
!3060 = !DILocation(line: 690, column: 30, scope: !3059)
!3061 = !DILocation(line: 690, column: 25, scope: !3013)
!3062 = !DILocation(line: 692, column: 21, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !585, line: 692, column: 21)
!3064 = distinct !DILexicalBlock(scope: !3013, file: !585, line: 692, column: 21)
!3065 = !DILocation(line: 692, column: 21, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !585, line: 692, column: 21)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !585, line: 692, column: 21)
!3068 = distinct !DILexicalBlock(scope: !3063, file: !585, line: 692, column: 21)
!3069 = !DILocation(line: 692, column: 21, scope: !3067)
!3070 = !DILocation(line: 692, column: 21, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !585, line: 692, column: 21)
!3072 = distinct !DILexicalBlock(scope: !3068, file: !585, line: 692, column: 21)
!3073 = !DILocation(line: 692, column: 21, scope: !3072)
!3074 = !DILocation(line: 692, column: 21, scope: !3068)
!3075 = !DILocation(line: 0, scope: !3013)
!3076 = !DILocation(line: 693, column: 21, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !585, line: 693, column: 21)
!3078 = distinct !DILexicalBlock(scope: !3013, file: !585, line: 693, column: 21)
!3079 = !DILocation(line: 693, column: 21, scope: !3078)
!3080 = !DILocation(line: 694, column: 25, scope: !3013)
!3081 = !DILocation(line: 676, column: 17, scope: !3014)
!3082 = distinct !{!3082, !3083, !3084}
!3083 = !DILocation(line: 676, column: 17, scope: !3015)
!3084 = !DILocation(line: 695, column: 19, scope: !3015)
!3085 = !DILocation(line: 409, column: 30, scope: !2795)
!3086 = !DILocation(line: 702, column: 34, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !2660, file: !585, line: 702, column: 11)
!3088 = !DILocation(line: 704, column: 14, scope: !3087)
!3089 = !DILocation(line: 705, column: 14, scope: !3087)
!3090 = !DILocation(line: 705, column: 35, scope: !3087)
!3091 = !DILocation(line: 705, column: 17, scope: !3087)
!3092 = !DILocation(line: 705, column: 47, scope: !3087)
!3093 = !DILocation(line: 705, column: 65, scope: !3087)
!3094 = !DILocation(line: 706, column: 11, scope: !3087)
!3095 = !DILocation(line: 702, column: 11, scope: !2660)
!3096 = !DILocation(line: 395, column: 15, scope: !2658)
!3097 = !DILocation(line: 709, column: 5, scope: !2660)
!3098 = !DILocation(line: 710, column: 7, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !2660, file: !585, line: 710, column: 7)
!3100 = !DILocation(line: 710, column: 7, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3099, file: !585, line: 710, column: 7)
!3102 = !DILocation(line: 710, column: 7, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !585, line: 710, column: 7)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !585, line: 710, column: 7)
!3105 = distinct !DILexicalBlock(scope: !3101, file: !585, line: 710, column: 7)
!3106 = !DILocation(line: 710, column: 7, scope: !3104)
!3107 = !DILocation(line: 710, column: 7, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !585, line: 710, column: 7)
!3109 = distinct !DILexicalBlock(scope: !3105, file: !585, line: 710, column: 7)
!3110 = !DILocation(line: 710, column: 7, scope: !3109)
!3111 = !DILocation(line: 710, column: 7, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !585, line: 710, column: 7)
!3113 = distinct !DILexicalBlock(scope: !3105, file: !585, line: 710, column: 7)
!3114 = !DILocation(line: 710, column: 7, scope: !3113)
!3115 = !DILocation(line: 710, column: 7, scope: !3105)
!3116 = !DILocation(line: 710, column: 7, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !585, line: 710, column: 7)
!3118 = distinct !DILexicalBlock(scope: !3099, file: !585, line: 710, column: 7)
!3119 = !DILocation(line: 710, column: 7, scope: !3118)
!3120 = !DILocation(line: 712, column: 5, scope: !2660)
!3121 = !DILocation(line: 713, column: 7, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3123, file: !585, line: 713, column: 7)
!3123 = distinct !DILexicalBlock(scope: !2660, file: !585, line: 713, column: 7)
!3124 = !DILocation(line: 417, column: 21, scope: !2660)
!3125 = !DILocation(line: 713, column: 7, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !585, line: 713, column: 7)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !585, line: 713, column: 7)
!3128 = distinct !DILexicalBlock(scope: !3122, file: !585, line: 713, column: 7)
!3129 = !DILocation(line: 713, column: 7, scope: !3127)
!3130 = !DILocation(line: 713, column: 7, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !585, line: 713, column: 7)
!3132 = distinct !DILexicalBlock(scope: !3128, file: !585, line: 713, column: 7)
!3133 = !DILocation(line: 713, column: 7, scope: !3132)
!3134 = !DILocation(line: 713, column: 7, scope: !3128)
!3135 = !DILocation(line: 714, column: 7, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !585, line: 714, column: 7)
!3137 = distinct !DILexicalBlock(scope: !2660, file: !585, line: 714, column: 7)
!3138 = !DILocation(line: 714, column: 7, scope: !3137)
!3139 = !DILocation(line: 716, column: 11, scope: !2660)
!3140 = !DILocation(line: 718, column: 5, scope: !2661)
!3141 = !DILocation(line: 395, column: 82, scope: !2661)
!3142 = !DILocation(line: 395, column: 3, scope: !2661)
!3143 = distinct !{!3143, !2791, !3144, !1074}
!3144 = !DILocation(line: 718, column: 5, scope: !2658)
!3145 = !DILocation(line: 720, column: 11, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !2627, file: !585, line: 720, column: 7)
!3147 = !DILocation(line: 720, column: 16, scope: !3146)
!3148 = !DILocation(line: 728, column: 51, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !2627, file: !585, line: 728, column: 7)
!3150 = !DILocation(line: 731, column: 11, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3149, file: !585, line: 730, column: 5)
!3152 = !DILocation(line: 732, column: 16, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3151, file: !585, line: 731, column: 11)
!3154 = !DILocation(line: 732, column: 9, scope: !3153)
!3155 = !DILocation(line: 736, column: 18, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3153, file: !585, line: 736, column: 16)
!3157 = !DILocation(line: 736, column: 29, scope: !3156)
!3158 = !DILocation(line: 745, column: 7, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !2627, file: !585, line: 745, column: 7)
!3160 = !DILocation(line: 745, column: 20, scope: !3159)
!3161 = !DILocation(line: 746, column: 12, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !585, line: 746, column: 5)
!3163 = distinct !DILexicalBlock(scope: !3159, file: !585, line: 746, column: 5)
!3164 = !DILocation(line: 746, column: 5, scope: !3163)
!3165 = !DILocation(line: 747, column: 7, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !585, line: 747, column: 7)
!3167 = distinct !DILexicalBlock(scope: !3162, file: !585, line: 747, column: 7)
!3168 = !DILocation(line: 747, column: 7, scope: !3167)
!3169 = !DILocation(line: 746, column: 39, scope: !3162)
!3170 = distinct !{!3170, !3164, !3171, !1074}
!3171 = !DILocation(line: 747, column: 7, scope: !3163)
!3172 = !DILocation(line: 749, column: 11, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !2627, file: !585, line: 749, column: 7)
!3174 = !DILocation(line: 749, column: 7, scope: !2627)
!3175 = !DILocation(line: 750, column: 5, scope: !3173)
!3176 = !DILocation(line: 750, column: 17, scope: !3173)
!3177 = !DILocation(line: 756, column: 21, scope: !3003)
!3178 = !DILocation(line: 760, column: 42, scope: !2627)
!3179 = !DILocation(line: 758, column: 10, scope: !2627)
!3180 = !DILocation(line: 758, column: 3, scope: !2627)
!3181 = !DILocation(line: 762, column: 1, scope: !2627)
!3182 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1148, file: !1148, line: 98, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!134}
!3185 = !DISubprogram(name: "strlen", scope: !1144, file: !1144, line: 407, type: !3186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!136, !137}
!3188 = !DISubprogram(name: "iswprint", scope: !3189, file: !3189, line: 120, type: !2989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!3189 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3190 = distinct !DISubprogram(name: "quotearg_alloc", scope: !585, file: !585, line: 788, type: !3191, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!125, !137, !134, !2520}
!3193 = !{!3194, !3195, !3196}
!3194 = !DILocalVariable(name: "arg", arg: 1, scope: !3190, file: !585, line: 788, type: !137)
!3195 = !DILocalVariable(name: "argsize", arg: 2, scope: !3190, file: !585, line: 788, type: !134)
!3196 = !DILocalVariable(name: "o", arg: 3, scope: !3190, file: !585, line: 789, type: !2520)
!3197 = !DILocation(line: 0, scope: !3190)
!3198 = !DILocalVariable(name: "arg", arg: 1, scope: !3199, file: !585, line: 801, type: !137)
!3199 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !585, file: !585, line: 801, type: !3200, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3202)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!125, !137, !134, !893, !2520}
!3202 = !{!3198, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210}
!3203 = !DILocalVariable(name: "argsize", arg: 2, scope: !3199, file: !585, line: 801, type: !134)
!3204 = !DILocalVariable(name: "size", arg: 3, scope: !3199, file: !585, line: 801, type: !893)
!3205 = !DILocalVariable(name: "o", arg: 4, scope: !3199, file: !585, line: 802, type: !2520)
!3206 = !DILocalVariable(name: "p", scope: !3199, file: !585, line: 804, type: !2520)
!3207 = !DILocalVariable(name: "saved_errno", scope: !3199, file: !585, line: 805, type: !105)
!3208 = !DILocalVariable(name: "flags", scope: !3199, file: !585, line: 807, type: !105)
!3209 = !DILocalVariable(name: "bufsize", scope: !3199, file: !585, line: 808, type: !134)
!3210 = !DILocalVariable(name: "buf", scope: !3199, file: !585, line: 812, type: !125)
!3211 = !DILocation(line: 0, scope: !3199, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 791, column: 10, scope: !3190)
!3213 = !DILocation(line: 804, column: 37, scope: !3199, inlinedAt: !3212)
!3214 = !DILocation(line: 805, column: 21, scope: !3199, inlinedAt: !3212)
!3215 = !DILocation(line: 807, column: 18, scope: !3199, inlinedAt: !3212)
!3216 = !DILocation(line: 807, column: 24, scope: !3199, inlinedAt: !3212)
!3217 = !DILocation(line: 808, column: 72, scope: !3199, inlinedAt: !3212)
!3218 = !DILocation(line: 809, column: 56, scope: !3199, inlinedAt: !3212)
!3219 = !DILocation(line: 810, column: 49, scope: !3199, inlinedAt: !3212)
!3220 = !DILocation(line: 811, column: 49, scope: !3199, inlinedAt: !3212)
!3221 = !DILocation(line: 808, column: 20, scope: !3199, inlinedAt: !3212)
!3222 = !DILocation(line: 811, column: 62, scope: !3199, inlinedAt: !3212)
!3223 = !DILocation(line: 812, column: 15, scope: !3199, inlinedAt: !3212)
!3224 = !DILocation(line: 813, column: 60, scope: !3199, inlinedAt: !3212)
!3225 = !DILocation(line: 815, column: 32, scope: !3199, inlinedAt: !3212)
!3226 = !DILocation(line: 815, column: 47, scope: !3199, inlinedAt: !3212)
!3227 = !DILocation(line: 813, column: 3, scope: !3199, inlinedAt: !3212)
!3228 = !DILocation(line: 816, column: 9, scope: !3199, inlinedAt: !3212)
!3229 = !DILocation(line: 791, column: 3, scope: !3190)
!3230 = !DILocation(line: 0, scope: !3199)
!3231 = !DILocation(line: 804, column: 37, scope: !3199)
!3232 = !DILocation(line: 805, column: 21, scope: !3199)
!3233 = !DILocation(line: 807, column: 18, scope: !3199)
!3234 = !DILocation(line: 807, column: 27, scope: !3199)
!3235 = !DILocation(line: 807, column: 24, scope: !3199)
!3236 = !DILocation(line: 808, column: 72, scope: !3199)
!3237 = !DILocation(line: 809, column: 56, scope: !3199)
!3238 = !DILocation(line: 810, column: 49, scope: !3199)
!3239 = !DILocation(line: 811, column: 49, scope: !3199)
!3240 = !DILocation(line: 808, column: 20, scope: !3199)
!3241 = !DILocation(line: 811, column: 62, scope: !3199)
!3242 = !DILocation(line: 812, column: 15, scope: !3199)
!3243 = !DILocation(line: 813, column: 60, scope: !3199)
!3244 = !DILocation(line: 815, column: 32, scope: !3199)
!3245 = !DILocation(line: 815, column: 47, scope: !3199)
!3246 = !DILocation(line: 813, column: 3, scope: !3199)
!3247 = !DILocation(line: 816, column: 9, scope: !3199)
!3248 = !DILocation(line: 817, column: 7, scope: !3199)
!3249 = !DILocation(line: 818, column: 11, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3199, file: !585, line: 817, column: 7)
!3251 = !DILocation(line: 818, column: 5, scope: !3250)
!3252 = !DILocation(line: 819, column: 3, scope: !3199)
!3253 = distinct !DISubprogram(name: "quotearg_free", scope: !585, file: !585, line: 837, type: !540, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3254)
!3254 = !{!3255, !3256}
!3255 = !DILocalVariable(name: "sv", scope: !3253, file: !585, line: 839, type: !686)
!3256 = !DILocalVariable(name: "i", scope: !3257, file: !585, line: 840, type: !105)
!3257 = distinct !DILexicalBlock(scope: !3253, file: !585, line: 840, column: 3)
!3258 = !DILocation(line: 839, column: 24, scope: !3253)
!3259 = !DILocation(line: 0, scope: !3253)
!3260 = !DILocation(line: 0, scope: !3257)
!3261 = !DILocation(line: 840, column: 21, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3257, file: !585, line: 840, column: 3)
!3263 = !DILocation(line: 840, column: 3, scope: !3257)
!3264 = !DILocation(line: 842, column: 13, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3253, file: !585, line: 842, column: 7)
!3266 = !{!3267, !957, i64 8}
!3267 = !{!"slotvec", !1868, i64 0, !957, i64 8}
!3268 = !DILocation(line: 842, column: 17, scope: !3265)
!3269 = !DILocation(line: 842, column: 7, scope: !3253)
!3270 = !DILocation(line: 841, column: 17, scope: !3262)
!3271 = !DILocation(line: 841, column: 5, scope: !3262)
!3272 = !DILocation(line: 840, column: 32, scope: !3262)
!3273 = distinct !{!3273, !3263, !3274, !1074}
!3274 = !DILocation(line: 841, column: 20, scope: !3257)
!3275 = !DILocation(line: 844, column: 7, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3265, file: !585, line: 843, column: 5)
!3277 = !DILocation(line: 845, column: 21, scope: !3276)
!3278 = !{!3267, !1868, i64 0}
!3279 = !DILocation(line: 846, column: 20, scope: !3276)
!3280 = !DILocation(line: 847, column: 5, scope: !3276)
!3281 = !DILocation(line: 848, column: 10, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3253, file: !585, line: 848, column: 7)
!3283 = !DILocation(line: 848, column: 7, scope: !3253)
!3284 = !DILocation(line: 850, column: 7, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3282, file: !585, line: 849, column: 5)
!3286 = !DILocation(line: 851, column: 15, scope: !3285)
!3287 = !DILocation(line: 852, column: 5, scope: !3285)
!3288 = !DILocation(line: 853, column: 10, scope: !3253)
!3289 = !DILocation(line: 854, column: 1, scope: !3253)
!3290 = distinct !DISubprogram(name: "quotearg_n", scope: !585, file: !585, line: 919, type: !1141, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3291)
!3291 = !{!3292, !3293}
!3292 = !DILocalVariable(name: "n", arg: 1, scope: !3290, file: !585, line: 919, type: !105)
!3293 = !DILocalVariable(name: "arg", arg: 2, scope: !3290, file: !585, line: 919, type: !137)
!3294 = !DILocation(line: 0, scope: !3290)
!3295 = !DILocation(line: 921, column: 10, scope: !3290)
!3296 = !DILocation(line: 921, column: 3, scope: !3290)
!3297 = distinct !DISubprogram(name: "quotearg_n_options", scope: !585, file: !585, line: 866, type: !3298, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3300)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!125, !105, !137, !134, !2520}
!3300 = !{!3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3311, !3312, !3314, !3315, !3316}
!3301 = !DILocalVariable(name: "n", arg: 1, scope: !3297, file: !585, line: 866, type: !105)
!3302 = !DILocalVariable(name: "arg", arg: 2, scope: !3297, file: !585, line: 866, type: !137)
!3303 = !DILocalVariable(name: "argsize", arg: 3, scope: !3297, file: !585, line: 866, type: !134)
!3304 = !DILocalVariable(name: "options", arg: 4, scope: !3297, file: !585, line: 867, type: !2520)
!3305 = !DILocalVariable(name: "saved_errno", scope: !3297, file: !585, line: 869, type: !105)
!3306 = !DILocalVariable(name: "sv", scope: !3297, file: !585, line: 871, type: !686)
!3307 = !DILocalVariable(name: "nslots_max", scope: !3297, file: !585, line: 873, type: !105)
!3308 = !DILocalVariable(name: "preallocated", scope: !3309, file: !585, line: 879, type: !190)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !585, line: 878, column: 5)
!3310 = distinct !DILexicalBlock(scope: !3297, file: !585, line: 877, column: 7)
!3311 = !DILocalVariable(name: "new_nslots", scope: !3309, file: !585, line: 880, type: !906)
!3312 = !DILocalVariable(name: "size", scope: !3313, file: !585, line: 891, type: !134)
!3313 = distinct !DILexicalBlock(scope: !3297, file: !585, line: 890, column: 3)
!3314 = !DILocalVariable(name: "val", scope: !3313, file: !585, line: 892, type: !125)
!3315 = !DILocalVariable(name: "flags", scope: !3313, file: !585, line: 894, type: !105)
!3316 = !DILocalVariable(name: "qsize", scope: !3313, file: !585, line: 895, type: !134)
!3317 = !DILocation(line: 0, scope: !3297)
!3318 = !DILocation(line: 869, column: 21, scope: !3297)
!3319 = !DILocation(line: 871, column: 24, scope: !3297)
!3320 = !DILocation(line: 874, column: 17, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3297, file: !585, line: 874, column: 7)
!3322 = !DILocation(line: 875, column: 5, scope: !3321)
!3323 = !DILocation(line: 877, column: 7, scope: !3310)
!3324 = !DILocation(line: 877, column: 14, scope: !3310)
!3325 = !DILocation(line: 877, column: 7, scope: !3297)
!3326 = !DILocation(line: 879, column: 31, scope: !3309)
!3327 = !DILocation(line: 0, scope: !3309)
!3328 = !DILocation(line: 880, column: 7, scope: !3309)
!3329 = !DILocation(line: 880, column: 26, scope: !3309)
!3330 = !DILocation(line: 880, column: 13, scope: !3309)
!3331 = !DILocation(line: 882, column: 31, scope: !3309)
!3332 = !DILocation(line: 883, column: 33, scope: !3309)
!3333 = !DILocation(line: 883, column: 42, scope: !3309)
!3334 = !DILocation(line: 883, column: 31, scope: !3309)
!3335 = !DILocation(line: 882, column: 22, scope: !3309)
!3336 = !DILocation(line: 882, column: 15, scope: !3309)
!3337 = !DILocation(line: 884, column: 11, scope: !3309)
!3338 = !DILocation(line: 885, column: 15, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3309, file: !585, line: 884, column: 11)
!3340 = !{i64 0, i64 8, !1867, i64 8, i64 8, !956}
!3341 = !DILocation(line: 885, column: 9, scope: !3339)
!3342 = !DILocation(line: 886, column: 20, scope: !3309)
!3343 = !DILocation(line: 886, column: 18, scope: !3309)
!3344 = !DILocation(line: 886, column: 32, scope: !3309)
!3345 = !DILocation(line: 886, column: 43, scope: !3309)
!3346 = !DILocation(line: 886, column: 53, scope: !3309)
!3347 = !DILocation(line: 0, scope: !2730, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 886, column: 7, scope: !3309)
!3349 = !DILocation(line: 59, column: 10, scope: !2730, inlinedAt: !3348)
!3350 = !DILocation(line: 887, column: 16, scope: !3309)
!3351 = !DILocation(line: 887, column: 14, scope: !3309)
!3352 = !DILocation(line: 888, column: 5, scope: !3310)
!3353 = !DILocation(line: 888, column: 5, scope: !3309)
!3354 = !DILocation(line: 891, column: 19, scope: !3313)
!3355 = !DILocation(line: 891, column: 25, scope: !3313)
!3356 = !DILocation(line: 0, scope: !3313)
!3357 = !DILocation(line: 892, column: 23, scope: !3313)
!3358 = !DILocation(line: 894, column: 26, scope: !3313)
!3359 = !DILocation(line: 894, column: 32, scope: !3313)
!3360 = !DILocation(line: 896, column: 55, scope: !3313)
!3361 = !DILocation(line: 897, column: 55, scope: !3313)
!3362 = !DILocation(line: 898, column: 55, scope: !3313)
!3363 = !DILocation(line: 899, column: 55, scope: !3313)
!3364 = !DILocation(line: 895, column: 20, scope: !3313)
!3365 = !DILocation(line: 901, column: 14, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3313, file: !585, line: 901, column: 9)
!3367 = !DILocation(line: 901, column: 9, scope: !3313)
!3368 = !DILocation(line: 903, column: 35, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3366, file: !585, line: 902, column: 7)
!3370 = !DILocation(line: 903, column: 20, scope: !3369)
!3371 = !DILocation(line: 904, column: 17, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3369, file: !585, line: 904, column: 13)
!3373 = !DILocation(line: 904, column: 13, scope: !3369)
!3374 = !DILocation(line: 905, column: 11, scope: !3372)
!3375 = !DILocation(line: 906, column: 27, scope: !3369)
!3376 = !DILocation(line: 906, column: 19, scope: !3369)
!3377 = !DILocation(line: 907, column: 69, scope: !3369)
!3378 = !DILocation(line: 909, column: 44, scope: !3369)
!3379 = !DILocation(line: 910, column: 44, scope: !3369)
!3380 = !DILocation(line: 907, column: 9, scope: !3369)
!3381 = !DILocation(line: 911, column: 7, scope: !3369)
!3382 = !DILocation(line: 913, column: 11, scope: !3313)
!3383 = !DILocation(line: 914, column: 5, scope: !3313)
!3384 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !585, file: !585, line: 925, type: !3385, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3387)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!125, !105, !137, !134}
!3387 = !{!3388, !3389, !3390}
!3388 = !DILocalVariable(name: "n", arg: 1, scope: !3384, file: !585, line: 925, type: !105)
!3389 = !DILocalVariable(name: "arg", arg: 2, scope: !3384, file: !585, line: 925, type: !137)
!3390 = !DILocalVariable(name: "argsize", arg: 3, scope: !3384, file: !585, line: 925, type: !134)
!3391 = !DILocation(line: 0, scope: !3384)
!3392 = !DILocation(line: 927, column: 10, scope: !3384)
!3393 = !DILocation(line: 927, column: 3, scope: !3384)
!3394 = distinct !DISubprogram(name: "quotearg", scope: !585, file: !585, line: 931, type: !1150, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3395)
!3395 = !{!3396}
!3396 = !DILocalVariable(name: "arg", arg: 1, scope: !3394, file: !585, line: 931, type: !137)
!3397 = !DILocation(line: 0, scope: !3394)
!3398 = !DILocation(line: 0, scope: !3290, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 933, column: 10, scope: !3394)
!3400 = !DILocation(line: 921, column: 10, scope: !3290, inlinedAt: !3399)
!3401 = !DILocation(line: 933, column: 3, scope: !3394)
!3402 = distinct !DISubprogram(name: "quotearg_mem", scope: !585, file: !585, line: 937, type: !3403, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3405)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!125, !137, !134}
!3405 = !{!3406, !3407}
!3406 = !DILocalVariable(name: "arg", arg: 1, scope: !3402, file: !585, line: 937, type: !137)
!3407 = !DILocalVariable(name: "argsize", arg: 2, scope: !3402, file: !585, line: 937, type: !134)
!3408 = !DILocation(line: 0, scope: !3402)
!3409 = !DILocation(line: 0, scope: !3384, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 939, column: 10, scope: !3402)
!3411 = !DILocation(line: 927, column: 10, scope: !3384, inlinedAt: !3410)
!3412 = !DILocation(line: 939, column: 3, scope: !3402)
!3413 = distinct !DISubprogram(name: "quotearg_n_style", scope: !585, file: !585, line: 943, type: !3414, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3416)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!125, !105, !611, !137}
!3416 = !{!3417, !3418, !3419, !3420}
!3417 = !DILocalVariable(name: "n", arg: 1, scope: !3413, file: !585, line: 943, type: !105)
!3418 = !DILocalVariable(name: "s", arg: 2, scope: !3413, file: !585, line: 943, type: !611)
!3419 = !DILocalVariable(name: "arg", arg: 3, scope: !3413, file: !585, line: 943, type: !137)
!3420 = !DILocalVariable(name: "o", scope: !3413, file: !585, line: 945, type: !2521)
!3421 = !DILocation(line: 0, scope: !3413)
!3422 = !DILocation(line: 945, column: 3, scope: !3413)
!3423 = !DILocation(line: 945, column: 32, scope: !3413)
!3424 = !{!3425}
!3425 = distinct !{!3425, !3426, !"quoting_options_from_style: argument 0"}
!3426 = distinct !{!3426, !"quoting_options_from_style"}
!3427 = !DILocation(line: 945, column: 36, scope: !3413)
!3428 = !DILocalVariable(name: "style", arg: 1, scope: !3429, file: !585, line: 183, type: !611)
!3429 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !585, file: !585, line: 183, type: !3430, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3432)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!638, !611}
!3432 = !{!3428, !3433}
!3433 = !DILocalVariable(name: "o", scope: !3429, file: !585, line: 185, type: !638)
!3434 = !DILocation(line: 0, scope: !3429, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 945, column: 36, scope: !3413)
!3436 = !DILocation(line: 185, column: 26, scope: !3429, inlinedAt: !3435)
!3437 = !DILocation(line: 186, column: 13, scope: !3438, inlinedAt: !3435)
!3438 = distinct !DILexicalBlock(scope: !3429, file: !585, line: 186, column: 7)
!3439 = !DILocation(line: 186, column: 7, scope: !3429, inlinedAt: !3435)
!3440 = !DILocation(line: 187, column: 5, scope: !3438, inlinedAt: !3435)
!3441 = !DILocation(line: 188, column: 11, scope: !3429, inlinedAt: !3435)
!3442 = !DILocation(line: 946, column: 10, scope: !3413)
!3443 = !DILocation(line: 947, column: 1, scope: !3413)
!3444 = !DILocation(line: 946, column: 3, scope: !3413)
!3445 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !585, file: !585, line: 950, type: !3446, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3448)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!125, !105, !611, !137, !134}
!3448 = !{!3449, !3450, !3451, !3452, !3453}
!3449 = !DILocalVariable(name: "n", arg: 1, scope: !3445, file: !585, line: 950, type: !105)
!3450 = !DILocalVariable(name: "s", arg: 2, scope: !3445, file: !585, line: 950, type: !611)
!3451 = !DILocalVariable(name: "arg", arg: 3, scope: !3445, file: !585, line: 951, type: !137)
!3452 = !DILocalVariable(name: "argsize", arg: 4, scope: !3445, file: !585, line: 951, type: !134)
!3453 = !DILocalVariable(name: "o", scope: !3445, file: !585, line: 953, type: !2521)
!3454 = !DILocation(line: 0, scope: !3445)
!3455 = !DILocation(line: 953, column: 3, scope: !3445)
!3456 = !DILocation(line: 953, column: 32, scope: !3445)
!3457 = !{!3458}
!3458 = distinct !{!3458, !3459, !"quoting_options_from_style: argument 0"}
!3459 = distinct !{!3459, !"quoting_options_from_style"}
!3460 = !DILocation(line: 953, column: 36, scope: !3445)
!3461 = !DILocation(line: 0, scope: !3429, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 953, column: 36, scope: !3445)
!3463 = !DILocation(line: 185, column: 26, scope: !3429, inlinedAt: !3462)
!3464 = !DILocation(line: 186, column: 13, scope: !3438, inlinedAt: !3462)
!3465 = !DILocation(line: 186, column: 7, scope: !3429, inlinedAt: !3462)
!3466 = !DILocation(line: 187, column: 5, scope: !3438, inlinedAt: !3462)
!3467 = !DILocation(line: 188, column: 11, scope: !3429, inlinedAt: !3462)
!3468 = !DILocation(line: 954, column: 10, scope: !3445)
!3469 = !DILocation(line: 955, column: 1, scope: !3445)
!3470 = !DILocation(line: 954, column: 3, scope: !3445)
!3471 = distinct !DISubprogram(name: "quotearg_style", scope: !585, file: !585, line: 958, type: !3472, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3474)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!125, !611, !137}
!3474 = !{!3475, !3476}
!3475 = !DILocalVariable(name: "s", arg: 1, scope: !3471, file: !585, line: 958, type: !611)
!3476 = !DILocalVariable(name: "arg", arg: 2, scope: !3471, file: !585, line: 958, type: !137)
!3477 = !DILocation(line: 0, scope: !3471)
!3478 = !DILocation(line: 0, scope: !3413, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 960, column: 10, scope: !3471)
!3480 = !DILocation(line: 945, column: 3, scope: !3413, inlinedAt: !3479)
!3481 = !DILocation(line: 945, column: 32, scope: !3413, inlinedAt: !3479)
!3482 = !{!3483}
!3483 = distinct !{!3483, !3484, !"quoting_options_from_style: argument 0"}
!3484 = distinct !{!3484, !"quoting_options_from_style"}
!3485 = !DILocation(line: 945, column: 36, scope: !3413, inlinedAt: !3479)
!3486 = !DILocation(line: 0, scope: !3429, inlinedAt: !3487)
!3487 = distinct !DILocation(line: 945, column: 36, scope: !3413, inlinedAt: !3479)
!3488 = !DILocation(line: 185, column: 26, scope: !3429, inlinedAt: !3487)
!3489 = !DILocation(line: 186, column: 13, scope: !3438, inlinedAt: !3487)
!3490 = !DILocation(line: 186, column: 7, scope: !3429, inlinedAt: !3487)
!3491 = !DILocation(line: 187, column: 5, scope: !3438, inlinedAt: !3487)
!3492 = !DILocation(line: 188, column: 11, scope: !3429, inlinedAt: !3487)
!3493 = !DILocation(line: 946, column: 10, scope: !3413, inlinedAt: !3479)
!3494 = !DILocation(line: 947, column: 1, scope: !3413, inlinedAt: !3479)
!3495 = !DILocation(line: 960, column: 3, scope: !3471)
!3496 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !585, file: !585, line: 964, type: !3497, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3499)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!125, !611, !137, !134}
!3499 = !{!3500, !3501, !3502}
!3500 = !DILocalVariable(name: "s", arg: 1, scope: !3496, file: !585, line: 964, type: !611)
!3501 = !DILocalVariable(name: "arg", arg: 2, scope: !3496, file: !585, line: 964, type: !137)
!3502 = !DILocalVariable(name: "argsize", arg: 3, scope: !3496, file: !585, line: 964, type: !134)
!3503 = !DILocation(line: 0, scope: !3496)
!3504 = !DILocation(line: 0, scope: !3445, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 966, column: 10, scope: !3496)
!3506 = !DILocation(line: 953, column: 3, scope: !3445, inlinedAt: !3505)
!3507 = !DILocation(line: 953, column: 32, scope: !3445, inlinedAt: !3505)
!3508 = !{!3509}
!3509 = distinct !{!3509, !3510, !"quoting_options_from_style: argument 0"}
!3510 = distinct !{!3510, !"quoting_options_from_style"}
!3511 = !DILocation(line: 953, column: 36, scope: !3445, inlinedAt: !3505)
!3512 = !DILocation(line: 0, scope: !3429, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 953, column: 36, scope: !3445, inlinedAt: !3505)
!3514 = !DILocation(line: 185, column: 26, scope: !3429, inlinedAt: !3513)
!3515 = !DILocation(line: 186, column: 13, scope: !3438, inlinedAt: !3513)
!3516 = !DILocation(line: 186, column: 7, scope: !3429, inlinedAt: !3513)
!3517 = !DILocation(line: 187, column: 5, scope: !3438, inlinedAt: !3513)
!3518 = !DILocation(line: 188, column: 11, scope: !3429, inlinedAt: !3513)
!3519 = !DILocation(line: 954, column: 10, scope: !3445, inlinedAt: !3505)
!3520 = !DILocation(line: 955, column: 1, scope: !3445, inlinedAt: !3505)
!3521 = !DILocation(line: 966, column: 3, scope: !3496)
!3522 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !585, file: !585, line: 970, type: !3523, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3525)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!125, !137, !134, !4}
!3525 = !{!3526, !3527, !3528, !3529}
!3526 = !DILocalVariable(name: "arg", arg: 1, scope: !3522, file: !585, line: 970, type: !137)
!3527 = !DILocalVariable(name: "argsize", arg: 2, scope: !3522, file: !585, line: 970, type: !134)
!3528 = !DILocalVariable(name: "ch", arg: 3, scope: !3522, file: !585, line: 970, type: !4)
!3529 = !DILocalVariable(name: "options", scope: !3522, file: !585, line: 972, type: !638)
!3530 = !DILocation(line: 0, scope: !3522)
!3531 = !DILocation(line: 972, column: 3, scope: !3522)
!3532 = !DILocation(line: 972, column: 26, scope: !3522)
!3533 = !DILocation(line: 973, column: 13, scope: !3522)
!3534 = !{i64 0, i64 4, !1036, i64 4, i64 4, !1027, i64 8, i64 32, !1036, i64 40, i64 8, !956, i64 48, i64 8, !956}
!3535 = !DILocation(line: 0, scope: !2540, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 974, column: 3, scope: !3522)
!3537 = !DILocation(line: 147, column: 41, scope: !2540, inlinedAt: !3536)
!3538 = !DILocation(line: 147, column: 62, scope: !2540, inlinedAt: !3536)
!3539 = !DILocation(line: 147, column: 57, scope: !2540, inlinedAt: !3536)
!3540 = !DILocation(line: 148, column: 15, scope: !2540, inlinedAt: !3536)
!3541 = !DILocation(line: 149, column: 21, scope: !2540, inlinedAt: !3536)
!3542 = !DILocation(line: 149, column: 24, scope: !2540, inlinedAt: !3536)
!3543 = !DILocation(line: 150, column: 19, scope: !2540, inlinedAt: !3536)
!3544 = !DILocation(line: 150, column: 24, scope: !2540, inlinedAt: !3536)
!3545 = !DILocation(line: 150, column: 6, scope: !2540, inlinedAt: !3536)
!3546 = !DILocation(line: 975, column: 10, scope: !3522)
!3547 = !DILocation(line: 976, column: 1, scope: !3522)
!3548 = !DILocation(line: 975, column: 3, scope: !3522)
!3549 = distinct !DISubprogram(name: "quotearg_char", scope: !585, file: !585, line: 979, type: !3550, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3552)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!125, !137, !4}
!3552 = !{!3553, !3554}
!3553 = !DILocalVariable(name: "arg", arg: 1, scope: !3549, file: !585, line: 979, type: !137)
!3554 = !DILocalVariable(name: "ch", arg: 2, scope: !3549, file: !585, line: 979, type: !4)
!3555 = !DILocation(line: 0, scope: !3549)
!3556 = !DILocation(line: 0, scope: !3522, inlinedAt: !3557)
!3557 = distinct !DILocation(line: 981, column: 10, scope: !3549)
!3558 = !DILocation(line: 972, column: 3, scope: !3522, inlinedAt: !3557)
!3559 = !DILocation(line: 972, column: 26, scope: !3522, inlinedAt: !3557)
!3560 = !DILocation(line: 973, column: 13, scope: !3522, inlinedAt: !3557)
!3561 = !DILocation(line: 0, scope: !2540, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 974, column: 3, scope: !3522, inlinedAt: !3557)
!3563 = !DILocation(line: 147, column: 41, scope: !2540, inlinedAt: !3562)
!3564 = !DILocation(line: 147, column: 62, scope: !2540, inlinedAt: !3562)
!3565 = !DILocation(line: 147, column: 57, scope: !2540, inlinedAt: !3562)
!3566 = !DILocation(line: 148, column: 15, scope: !2540, inlinedAt: !3562)
!3567 = !DILocation(line: 149, column: 21, scope: !2540, inlinedAt: !3562)
!3568 = !DILocation(line: 149, column: 24, scope: !2540, inlinedAt: !3562)
!3569 = !DILocation(line: 150, column: 19, scope: !2540, inlinedAt: !3562)
!3570 = !DILocation(line: 150, column: 24, scope: !2540, inlinedAt: !3562)
!3571 = !DILocation(line: 150, column: 6, scope: !2540, inlinedAt: !3562)
!3572 = !DILocation(line: 975, column: 10, scope: !3522, inlinedAt: !3557)
!3573 = !DILocation(line: 976, column: 1, scope: !3522, inlinedAt: !3557)
!3574 = !DILocation(line: 981, column: 3, scope: !3549)
!3575 = distinct !DISubprogram(name: "quotearg_colon", scope: !585, file: !585, line: 985, type: !1150, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3576)
!3576 = !{!3577}
!3577 = !DILocalVariable(name: "arg", arg: 1, scope: !3575, file: !585, line: 985, type: !137)
!3578 = !DILocation(line: 0, scope: !3575)
!3579 = !DILocation(line: 0, scope: !3549, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 987, column: 10, scope: !3575)
!3581 = !DILocation(line: 0, scope: !3522, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 981, column: 10, scope: !3549, inlinedAt: !3580)
!3583 = !DILocation(line: 972, column: 3, scope: !3522, inlinedAt: !3582)
!3584 = !DILocation(line: 972, column: 26, scope: !3522, inlinedAt: !3582)
!3585 = !DILocation(line: 973, column: 13, scope: !3522, inlinedAt: !3582)
!3586 = !DILocation(line: 0, scope: !2540, inlinedAt: !3587)
!3587 = distinct !DILocation(line: 974, column: 3, scope: !3522, inlinedAt: !3582)
!3588 = !DILocation(line: 147, column: 57, scope: !2540, inlinedAt: !3587)
!3589 = !DILocation(line: 149, column: 21, scope: !2540, inlinedAt: !3587)
!3590 = !DILocation(line: 150, column: 6, scope: !2540, inlinedAt: !3587)
!3591 = !DILocation(line: 975, column: 10, scope: !3522, inlinedAt: !3582)
!3592 = !DILocation(line: 976, column: 1, scope: !3522, inlinedAt: !3582)
!3593 = !DILocation(line: 987, column: 3, scope: !3575)
!3594 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !585, file: !585, line: 991, type: !3403, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3595)
!3595 = !{!3596, !3597}
!3596 = !DILocalVariable(name: "arg", arg: 1, scope: !3594, file: !585, line: 991, type: !137)
!3597 = !DILocalVariable(name: "argsize", arg: 2, scope: !3594, file: !585, line: 991, type: !134)
!3598 = !DILocation(line: 0, scope: !3594)
!3599 = !DILocation(line: 0, scope: !3522, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 993, column: 10, scope: !3594)
!3601 = !DILocation(line: 972, column: 3, scope: !3522, inlinedAt: !3600)
!3602 = !DILocation(line: 972, column: 26, scope: !3522, inlinedAt: !3600)
!3603 = !DILocation(line: 973, column: 13, scope: !3522, inlinedAt: !3600)
!3604 = !DILocation(line: 0, scope: !2540, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 974, column: 3, scope: !3522, inlinedAt: !3600)
!3606 = !DILocation(line: 147, column: 57, scope: !2540, inlinedAt: !3605)
!3607 = !DILocation(line: 149, column: 21, scope: !2540, inlinedAt: !3605)
!3608 = !DILocation(line: 150, column: 6, scope: !2540, inlinedAt: !3605)
!3609 = !DILocation(line: 975, column: 10, scope: !3522, inlinedAt: !3600)
!3610 = !DILocation(line: 976, column: 1, scope: !3522, inlinedAt: !3600)
!3611 = !DILocation(line: 993, column: 3, scope: !3594)
!3612 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !585, file: !585, line: 997, type: !3414, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3613)
!3613 = !{!3614, !3615, !3616, !3617}
!3614 = !DILocalVariable(name: "n", arg: 1, scope: !3612, file: !585, line: 997, type: !105)
!3615 = !DILocalVariable(name: "s", arg: 2, scope: !3612, file: !585, line: 997, type: !611)
!3616 = !DILocalVariable(name: "arg", arg: 3, scope: !3612, file: !585, line: 997, type: !137)
!3617 = !DILocalVariable(name: "options", scope: !3612, file: !585, line: 999, type: !638)
!3618 = !DILocation(line: 185, column: 26, scope: !3429, inlinedAt: !3619)
!3619 = distinct !DILocation(line: 1000, column: 13, scope: !3612)
!3620 = !DILocation(line: 0, scope: !3612)
!3621 = !DILocation(line: 999, column: 3, scope: !3612)
!3622 = !DILocation(line: 999, column: 26, scope: !3612)
!3623 = !DILocation(line: 0, scope: !3429, inlinedAt: !3619)
!3624 = !DILocation(line: 186, column: 13, scope: !3438, inlinedAt: !3619)
!3625 = !DILocation(line: 186, column: 7, scope: !3429, inlinedAt: !3619)
!3626 = !DILocation(line: 187, column: 5, scope: !3438, inlinedAt: !3619)
!3627 = !{!3628}
!3628 = distinct !{!3628, !3629, !"quoting_options_from_style: argument 0"}
!3629 = distinct !{!3629, !"quoting_options_from_style"}
!3630 = !DILocation(line: 1000, column: 13, scope: !3612)
!3631 = !DILocation(line: 0, scope: !2540, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 1001, column: 3, scope: !3612)
!3633 = !DILocation(line: 147, column: 57, scope: !2540, inlinedAt: !3632)
!3634 = !DILocation(line: 149, column: 21, scope: !2540, inlinedAt: !3632)
!3635 = !DILocation(line: 150, column: 6, scope: !2540, inlinedAt: !3632)
!3636 = !DILocation(line: 1002, column: 10, scope: !3612)
!3637 = !DILocation(line: 1003, column: 1, scope: !3612)
!3638 = !DILocation(line: 1002, column: 3, scope: !3612)
!3639 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !585, file: !585, line: 1006, type: !3640, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3642)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!125, !105, !137, !137, !137}
!3642 = !{!3643, !3644, !3645, !3646}
!3643 = !DILocalVariable(name: "n", arg: 1, scope: !3639, file: !585, line: 1006, type: !105)
!3644 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3639, file: !585, line: 1006, type: !137)
!3645 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3639, file: !585, line: 1007, type: !137)
!3646 = !DILocalVariable(name: "arg", arg: 4, scope: !3639, file: !585, line: 1007, type: !137)
!3647 = !DILocation(line: 0, scope: !3639)
!3648 = !DILocalVariable(name: "n", arg: 1, scope: !3649, file: !585, line: 1014, type: !105)
!3649 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !585, file: !585, line: 1014, type: !3650, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3652)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!125, !105, !137, !137, !137, !134}
!3652 = !{!3648, !3653, !3654, !3655, !3656, !3657}
!3653 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3649, file: !585, line: 1014, type: !137)
!3654 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3649, file: !585, line: 1015, type: !137)
!3655 = !DILocalVariable(name: "arg", arg: 4, scope: !3649, file: !585, line: 1016, type: !137)
!3656 = !DILocalVariable(name: "argsize", arg: 5, scope: !3649, file: !585, line: 1016, type: !134)
!3657 = !DILocalVariable(name: "o", scope: !3649, file: !585, line: 1018, type: !638)
!3658 = !DILocation(line: 0, scope: !3649, inlinedAt: !3659)
!3659 = distinct !DILocation(line: 1009, column: 10, scope: !3639)
!3660 = !DILocation(line: 1018, column: 3, scope: !3649, inlinedAt: !3659)
!3661 = !DILocation(line: 1018, column: 26, scope: !3649, inlinedAt: !3659)
!3662 = !DILocation(line: 1018, column: 30, scope: !3649, inlinedAt: !3659)
!3663 = !DILocation(line: 0, scope: !2580, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 1019, column: 3, scope: !3649, inlinedAt: !3659)
!3665 = !DILocation(line: 174, column: 12, scope: !2580, inlinedAt: !3664)
!3666 = !DILocation(line: 175, column: 8, scope: !2593, inlinedAt: !3664)
!3667 = !DILocation(line: 175, column: 19, scope: !2593, inlinedAt: !3664)
!3668 = !DILocation(line: 176, column: 5, scope: !2593, inlinedAt: !3664)
!3669 = !DILocation(line: 177, column: 6, scope: !2580, inlinedAt: !3664)
!3670 = !DILocation(line: 177, column: 17, scope: !2580, inlinedAt: !3664)
!3671 = !DILocation(line: 178, column: 6, scope: !2580, inlinedAt: !3664)
!3672 = !DILocation(line: 178, column: 18, scope: !2580, inlinedAt: !3664)
!3673 = !DILocation(line: 1020, column: 10, scope: !3649, inlinedAt: !3659)
!3674 = !DILocation(line: 1021, column: 1, scope: !3649, inlinedAt: !3659)
!3675 = !DILocation(line: 1009, column: 3, scope: !3639)
!3676 = !DILocation(line: 0, scope: !3649)
!3677 = !DILocation(line: 1018, column: 3, scope: !3649)
!3678 = !DILocation(line: 1018, column: 26, scope: !3649)
!3679 = !DILocation(line: 1018, column: 30, scope: !3649)
!3680 = !DILocation(line: 0, scope: !2580, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 1019, column: 3, scope: !3649)
!3682 = !DILocation(line: 174, column: 12, scope: !2580, inlinedAt: !3681)
!3683 = !DILocation(line: 175, column: 8, scope: !2593, inlinedAt: !3681)
!3684 = !DILocation(line: 175, column: 19, scope: !2593, inlinedAt: !3681)
!3685 = !DILocation(line: 176, column: 5, scope: !2593, inlinedAt: !3681)
!3686 = !DILocation(line: 177, column: 6, scope: !2580, inlinedAt: !3681)
!3687 = !DILocation(line: 177, column: 17, scope: !2580, inlinedAt: !3681)
!3688 = !DILocation(line: 178, column: 6, scope: !2580, inlinedAt: !3681)
!3689 = !DILocation(line: 178, column: 18, scope: !2580, inlinedAt: !3681)
!3690 = !DILocation(line: 1020, column: 10, scope: !3649)
!3691 = !DILocation(line: 1021, column: 1, scope: !3649)
!3692 = !DILocation(line: 1020, column: 3, scope: !3649)
!3693 = distinct !DISubprogram(name: "quotearg_custom", scope: !585, file: !585, line: 1024, type: !3694, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3696)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!125, !137, !137, !137}
!3696 = !{!3697, !3698, !3699}
!3697 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3693, file: !585, line: 1024, type: !137)
!3698 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3693, file: !585, line: 1024, type: !137)
!3699 = !DILocalVariable(name: "arg", arg: 3, scope: !3693, file: !585, line: 1025, type: !137)
!3700 = !DILocation(line: 0, scope: !3693)
!3701 = !DILocation(line: 0, scope: !3639, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 1027, column: 10, scope: !3693)
!3703 = !DILocation(line: 0, scope: !3649, inlinedAt: !3704)
!3704 = distinct !DILocation(line: 1009, column: 10, scope: !3639, inlinedAt: !3702)
!3705 = !DILocation(line: 1018, column: 3, scope: !3649, inlinedAt: !3704)
!3706 = !DILocation(line: 1018, column: 26, scope: !3649, inlinedAt: !3704)
!3707 = !DILocation(line: 1018, column: 30, scope: !3649, inlinedAt: !3704)
!3708 = !DILocation(line: 0, scope: !2580, inlinedAt: !3709)
!3709 = distinct !DILocation(line: 1019, column: 3, scope: !3649, inlinedAt: !3704)
!3710 = !DILocation(line: 174, column: 12, scope: !2580, inlinedAt: !3709)
!3711 = !DILocation(line: 175, column: 8, scope: !2593, inlinedAt: !3709)
!3712 = !DILocation(line: 175, column: 19, scope: !2593, inlinedAt: !3709)
!3713 = !DILocation(line: 176, column: 5, scope: !2593, inlinedAt: !3709)
!3714 = !DILocation(line: 177, column: 6, scope: !2580, inlinedAt: !3709)
!3715 = !DILocation(line: 177, column: 17, scope: !2580, inlinedAt: !3709)
!3716 = !DILocation(line: 178, column: 6, scope: !2580, inlinedAt: !3709)
!3717 = !DILocation(line: 178, column: 18, scope: !2580, inlinedAt: !3709)
!3718 = !DILocation(line: 1020, column: 10, scope: !3649, inlinedAt: !3704)
!3719 = !DILocation(line: 1021, column: 1, scope: !3649, inlinedAt: !3704)
!3720 = !DILocation(line: 1027, column: 3, scope: !3693)
!3721 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !585, file: !585, line: 1031, type: !3722, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3724)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!125, !137, !137, !137, !134}
!3724 = !{!3725, !3726, !3727, !3728}
!3725 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3721, file: !585, line: 1031, type: !137)
!3726 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3721, file: !585, line: 1031, type: !137)
!3727 = !DILocalVariable(name: "arg", arg: 3, scope: !3721, file: !585, line: 1032, type: !137)
!3728 = !DILocalVariable(name: "argsize", arg: 4, scope: !3721, file: !585, line: 1032, type: !134)
!3729 = !DILocation(line: 0, scope: !3721)
!3730 = !DILocation(line: 0, scope: !3649, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 1034, column: 10, scope: !3721)
!3732 = !DILocation(line: 1018, column: 3, scope: !3649, inlinedAt: !3731)
!3733 = !DILocation(line: 1018, column: 26, scope: !3649, inlinedAt: !3731)
!3734 = !DILocation(line: 1018, column: 30, scope: !3649, inlinedAt: !3731)
!3735 = !DILocation(line: 0, scope: !2580, inlinedAt: !3736)
!3736 = distinct !DILocation(line: 1019, column: 3, scope: !3649, inlinedAt: !3731)
!3737 = !DILocation(line: 174, column: 12, scope: !2580, inlinedAt: !3736)
!3738 = !DILocation(line: 175, column: 8, scope: !2593, inlinedAt: !3736)
!3739 = !DILocation(line: 175, column: 19, scope: !2593, inlinedAt: !3736)
!3740 = !DILocation(line: 176, column: 5, scope: !2593, inlinedAt: !3736)
!3741 = !DILocation(line: 177, column: 6, scope: !2580, inlinedAt: !3736)
!3742 = !DILocation(line: 177, column: 17, scope: !2580, inlinedAt: !3736)
!3743 = !DILocation(line: 178, column: 6, scope: !2580, inlinedAt: !3736)
!3744 = !DILocation(line: 178, column: 18, scope: !2580, inlinedAt: !3736)
!3745 = !DILocation(line: 1020, column: 10, scope: !3649, inlinedAt: !3731)
!3746 = !DILocation(line: 1021, column: 1, scope: !3649, inlinedAt: !3731)
!3747 = !DILocation(line: 1034, column: 3, scope: !3721)
!3748 = distinct !DISubprogram(name: "quote_n_mem", scope: !585, file: !585, line: 1049, type: !3749, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3751)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!137, !105, !137, !134}
!3751 = !{!3752, !3753, !3754}
!3752 = !DILocalVariable(name: "n", arg: 1, scope: !3748, file: !585, line: 1049, type: !105)
!3753 = !DILocalVariable(name: "arg", arg: 2, scope: !3748, file: !585, line: 1049, type: !137)
!3754 = !DILocalVariable(name: "argsize", arg: 3, scope: !3748, file: !585, line: 1049, type: !134)
!3755 = !DILocation(line: 0, scope: !3748)
!3756 = !DILocation(line: 1051, column: 10, scope: !3748)
!3757 = !DILocation(line: 1051, column: 3, scope: !3748)
!3758 = distinct !DISubprogram(name: "quote_mem", scope: !585, file: !585, line: 1055, type: !3759, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3761)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!137, !137, !134}
!3761 = !{!3762, !3763}
!3762 = !DILocalVariable(name: "arg", arg: 1, scope: !3758, file: !585, line: 1055, type: !137)
!3763 = !DILocalVariable(name: "argsize", arg: 2, scope: !3758, file: !585, line: 1055, type: !134)
!3764 = !DILocation(line: 0, scope: !3758)
!3765 = !DILocation(line: 0, scope: !3748, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 1057, column: 10, scope: !3758)
!3767 = !DILocation(line: 1051, column: 10, scope: !3748, inlinedAt: !3766)
!3768 = !DILocation(line: 1057, column: 3, scope: !3758)
!3769 = distinct !DISubprogram(name: "quote_n", scope: !585, file: !585, line: 1061, type: !3770, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3772)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!137, !105, !137}
!3772 = !{!3773, !3774}
!3773 = !DILocalVariable(name: "n", arg: 1, scope: !3769, file: !585, line: 1061, type: !105)
!3774 = !DILocalVariable(name: "arg", arg: 2, scope: !3769, file: !585, line: 1061, type: !137)
!3775 = !DILocation(line: 0, scope: !3769)
!3776 = !DILocation(line: 0, scope: !3748, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 1063, column: 10, scope: !3769)
!3778 = !DILocation(line: 1051, column: 10, scope: !3748, inlinedAt: !3777)
!3779 = !DILocation(line: 1063, column: 3, scope: !3769)
!3780 = distinct !DISubprogram(name: "quote", scope: !585, file: !585, line: 1067, type: !3781, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3783)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!137, !137}
!3783 = !{!3784}
!3784 = !DILocalVariable(name: "arg", arg: 1, scope: !3780, file: !585, line: 1067, type: !137)
!3785 = !DILocation(line: 0, scope: !3780)
!3786 = !DILocation(line: 0, scope: !3769, inlinedAt: !3787)
!3787 = distinct !DILocation(line: 1069, column: 10, scope: !3780)
!3788 = !DILocation(line: 0, scope: !3748, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 1063, column: 10, scope: !3769, inlinedAt: !3787)
!3790 = !DILocation(line: 1051, column: 10, scope: !3748, inlinedAt: !3789)
!3791 = !DILocation(line: 1069, column: 3, scope: !3780)
!3792 = distinct !DISubprogram(name: "str2sig", scope: !700, file: !700, line: 321, type: !3793, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3795)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!105, !137, !452}
!3795 = !{!3796, !3797}
!3796 = !DILocalVariable(name: "signame", arg: 1, scope: !3792, file: !700, line: 321, type: !137)
!3797 = !DILocalVariable(name: "signum", arg: 2, scope: !3792, file: !700, line: 321, type: !452)
!3798 = !DILocation(line: 0, scope: !3792)
!3799 = !DILocalVariable(name: "signame", arg: 1, scope: !3800, file: !700, line: 278, type: !137)
!3800 = distinct !DISubprogram(name: "str2signum", scope: !700, file: !700, line: 278, type: !1977, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3801)
!3801 = !{!3799, !3802, !3805, !3806, !3809, !3811, !3812, !3815, !3816, !3819}
!3802 = !DILocalVariable(name: "endp", scope: !3803, file: !700, line: 282, type: !125)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !700, line: 281, column: 5)
!3804 = distinct !DILexicalBlock(scope: !3800, file: !700, line: 280, column: 7)
!3805 = !DILocalVariable(name: "n", scope: !3803, file: !700, line: 283, type: !253)
!3806 = !DILocalVariable(name: "i", scope: !3807, file: !700, line: 289, type: !98)
!3807 = distinct !DILexicalBlock(scope: !3808, file: !700, line: 289, column: 7)
!3808 = distinct !DILexicalBlock(scope: !3804, file: !700, line: 288, column: 5)
!3809 = !DILocalVariable(name: "rtmin", scope: !3810, file: !700, line: 294, type: !105)
!3810 = distinct !DILexicalBlock(scope: !3808, file: !700, line: 293, column: 7)
!3811 = !DILocalVariable(name: "rtmax", scope: !3810, file: !700, line: 295, type: !105)
!3812 = !DILocalVariable(name: "endp", scope: !3813, file: !700, line: 299, type: !125)
!3813 = distinct !DILexicalBlock(scope: !3814, file: !700, line: 298, column: 11)
!3814 = distinct !DILexicalBlock(scope: !3810, file: !700, line: 297, column: 13)
!3815 = !DILocalVariable(name: "n", scope: !3813, file: !700, line: 300, type: !253)
!3816 = !DILocalVariable(name: "endp", scope: !3817, file: !700, line: 306, type: !125)
!3817 = distinct !DILexicalBlock(scope: !3818, file: !700, line: 305, column: 11)
!3818 = distinct !DILexicalBlock(scope: !3814, file: !700, line: 304, column: 18)
!3819 = !DILocalVariable(name: "n", scope: !3817, file: !700, line: 307, type: !253)
!3820 = !DILocation(line: 0, scope: !3800, inlinedAt: !3821)
!3821 = distinct !DILocation(line: 323, column: 13, scope: !3792)
!3822 = !DILocation(line: 280, column: 7, scope: !3804, inlinedAt: !3821)
!3823 = !DILocation(line: 280, column: 7, scope: !3800, inlinedAt: !3821)
!3824 = !DILocation(line: 282, column: 7, scope: !3803, inlinedAt: !3821)
!3825 = !DILocation(line: 0, scope: !3803, inlinedAt: !3821)
!3826 = !DILocation(line: 283, column: 20, scope: !3803, inlinedAt: !3821)
!3827 = !DILocation(line: 284, column: 14, scope: !3828, inlinedAt: !3821)
!3828 = distinct !DILexicalBlock(scope: !3803, file: !700, line: 284, column: 11)
!3829 = !DILocation(line: 284, column: 13, scope: !3828, inlinedAt: !3821)
!3830 = !DILocation(line: 284, column: 19, scope: !3828, inlinedAt: !3821)
!3831 = !DILocation(line: 286, column: 5, scope: !3804, inlinedAt: !3821)
!3832 = !DILocation(line: 0, scope: !3807, inlinedAt: !3821)
!3833 = !DILocation(line: 290, column: 37, scope: !3834, inlinedAt: !3821)
!3834 = distinct !DILexicalBlock(scope: !3835, file: !700, line: 290, column: 13)
!3835 = distinct !DILexicalBlock(scope: !3807, file: !700, line: 289, column: 7)
!3836 = !DILocalVariable(name: "__s1", arg: 1, scope: !3837, file: !1040, line: 1359, type: !137)
!3837 = distinct !DISubprogram(name: "streq", scope: !1040, file: !1040, line: 1359, type: !1041, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3838)
!3838 = !{!3836, !3839}
!3839 = !DILocalVariable(name: "__s2", arg: 2, scope: !3837, file: !1040, line: 1359, type: !137)
!3840 = !DILocation(line: 0, scope: !3837, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 290, column: 13, scope: !3834, inlinedAt: !3821)
!3842 = !DILocation(line: 1361, column: 11, scope: !3837, inlinedAt: !3841)
!3843 = !DILocation(line: 1361, column: 10, scope: !3837, inlinedAt: !3841)
!3844 = !DILocation(line: 290, column: 13, scope: !3835, inlinedAt: !3821)
!3845 = !DILocation(line: 289, column: 54, scope: !3835, inlinedAt: !3821)
!3846 = !DILocation(line: 289, column: 34, scope: !3835, inlinedAt: !3821)
!3847 = !DILocation(line: 289, column: 7, scope: !3807, inlinedAt: !3821)
!3848 = distinct !{!3848, !3847, !3849, !1074}
!3849 = !DILocation(line: 291, column: 35, scope: !3807, inlinedAt: !3821)
!3850 = !DILocation(line: 289, column: 32, scope: !3835, inlinedAt: !3821)
!3851 = !DILocation(line: 290, column: 20, scope: !3834, inlinedAt: !3821)
!3852 = !DILocation(line: 291, column: 35, scope: !3834, inlinedAt: !3821)
!3853 = !{!3854, !1028, i64 0}
!3854 = !{!"numname", !1028, i64 0, !958, i64 4}
!3855 = !DILocation(line: 294, column: 21, scope: !3810, inlinedAt: !3821)
!3856 = !DILocation(line: 0, scope: !3810, inlinedAt: !3821)
!3857 = !DILocation(line: 295, column: 21, scope: !3810, inlinedAt: !3821)
!3858 = !DILocation(line: 297, column: 15, scope: !3814, inlinedAt: !3821)
!3859 = !DILocation(line: 297, column: 23, scope: !3814, inlinedAt: !3821)
!3860 = !DILocation(line: 297, column: 26, scope: !3814, inlinedAt: !3821)
!3861 = !DILocation(line: 297, column: 56, scope: !3814, inlinedAt: !3821)
!3862 = !DILocation(line: 297, column: 13, scope: !3810, inlinedAt: !3821)
!3863 = !DILocation(line: 299, column: 13, scope: !3813, inlinedAt: !3821)
!3864 = !DILocation(line: 300, column: 42, scope: !3813, inlinedAt: !3821)
!3865 = !DILocation(line: 0, scope: !3813, inlinedAt: !3821)
!3866 = !DILocation(line: 300, column: 26, scope: !3813, inlinedAt: !3821)
!3867 = !DILocation(line: 301, column: 20, scope: !3868, inlinedAt: !3821)
!3868 = distinct !DILexicalBlock(scope: !3813, file: !700, line: 301, column: 17)
!3869 = !DILocation(line: 301, column: 19, scope: !3868, inlinedAt: !3821)
!3870 = !DILocation(line: 301, column: 25, scope: !3868, inlinedAt: !3821)
!3871 = !DILocation(line: 301, column: 49, scope: !3868, inlinedAt: !3821)
!3872 = !DILocation(line: 301, column: 43, scope: !3868, inlinedAt: !3821)
!3873 = !DILocation(line: 301, column: 40, scope: !3868, inlinedAt: !3821)
!3874 = !DILocation(line: 301, column: 17, scope: !3813, inlinedAt: !3821)
!3875 = !DILocation(line: 303, column: 11, scope: !3814, inlinedAt: !3821)
!3876 = !DILocation(line: 302, column: 22, scope: !3868, inlinedAt: !3821)
!3877 = !DILocation(line: 304, column: 20, scope: !3818, inlinedAt: !3821)
!3878 = !DILocation(line: 304, column: 28, scope: !3818, inlinedAt: !3821)
!3879 = !DILocation(line: 304, column: 31, scope: !3818, inlinedAt: !3821)
!3880 = !DILocation(line: 304, column: 61, scope: !3818, inlinedAt: !3821)
!3881 = !DILocation(line: 304, column: 18, scope: !3814, inlinedAt: !3821)
!3882 = !DILocation(line: 306, column: 13, scope: !3817, inlinedAt: !3821)
!3883 = !DILocation(line: 307, column: 42, scope: !3817, inlinedAt: !3821)
!3884 = !DILocation(line: 0, scope: !3817, inlinedAt: !3821)
!3885 = !DILocation(line: 307, column: 26, scope: !3817, inlinedAt: !3821)
!3886 = !DILocation(line: 308, column: 20, scope: !3887, inlinedAt: !3821)
!3887 = distinct !DILexicalBlock(scope: !3817, file: !700, line: 308, column: 17)
!3888 = !DILocation(line: 308, column: 19, scope: !3887, inlinedAt: !3821)
!3889 = !DILocation(line: 308, column: 25, scope: !3887, inlinedAt: !3821)
!3890 = !DILocation(line: 308, column: 34, scope: !3887, inlinedAt: !3821)
!3891 = !DILocation(line: 308, column: 28, scope: !3887, inlinedAt: !3821)
!3892 = !DILocation(line: 308, column: 42, scope: !3887, inlinedAt: !3821)
!3893 = !DILocation(line: 308, column: 47, scope: !3887, inlinedAt: !3821)
!3894 = !DILocation(line: 310, column: 11, scope: !3818, inlinedAt: !3821)
!3895 = !DILocation(line: 309, column: 22, scope: !3887, inlinedAt: !3821)
!3896 = !DILocation(line: 314, column: 3, scope: !3800, inlinedAt: !3821)
!3897 = !DILocation(line: 323, column: 11, scope: !3792)
!3898 = !DILocation(line: 324, column: 10, scope: !3792)
!3899 = !DILocation(line: 324, column: 3, scope: !3792)
!3900 = distinct !DISubprogram(name: "sig2str", scope: !700, file: !700, line: 332, type: !3901, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3903)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!105, !105, !125}
!3903 = !{!3904, !3905, !3906, !3908, !3910, !3911, !3912}
!3904 = !DILocalVariable(name: "signum", arg: 1, scope: !3900, file: !700, line: 332, type: !105)
!3905 = !DILocalVariable(name: "signame", arg: 2, scope: !3900, file: !700, line: 332, type: !125)
!3906 = !DILocalVariable(name: "i", scope: !3907, file: !700, line: 334, type: !98)
!3907 = distinct !DILexicalBlock(scope: !3900, file: !700, line: 334, column: 3)
!3908 = !DILocalVariable(name: "rtmin", scope: !3909, file: !700, line: 342, type: !105)
!3909 = distinct !DILexicalBlock(scope: !3900, file: !700, line: 341, column: 3)
!3910 = !DILocalVariable(name: "rtmax", scope: !3909, file: !700, line: 343, type: !105)
!3911 = !DILocalVariable(name: "base", scope: !3909, file: !700, line: 348, type: !105)
!3912 = !DILocalVariable(name: "delta", scope: !3909, file: !700, line: 360, type: !105)
!3913 = !DILocation(line: 0, scope: !3900)
!3914 = !DILocation(line: 0, scope: !3907)
!3915 = !DILocation(line: 334, column: 3, scope: !3907)
!3916 = !DILocation(line: 335, column: 9, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3918, file: !700, line: 335, column: 9)
!3918 = distinct !DILexicalBlock(scope: !3907, file: !700, line: 334, column: 3)
!3919 = !DILocation(line: 335, column: 26, scope: !3917)
!3920 = !DILocation(line: 335, column: 30, scope: !3917)
!3921 = !DILocation(line: 335, column: 9, scope: !3918)
!3922 = !DILocation(line: 334, column: 50, scope: !3918)
!3923 = !DILocation(line: 334, column: 30, scope: !3918)
!3924 = distinct !{!3924, !3915, !3925, !1074}
!3925 = !DILocation(line: 339, column: 7, scope: !3907)
!3926 = !DILocation(line: 334, column: 28, scope: !3918)
!3927 = !DILocation(line: 337, column: 43, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3917, file: !700, line: 336, column: 7)
!3929 = !DILocalVariable(name: "__dest", arg: 1, scope: !3930, file: !2483, line: 77, type: !3933)
!3930 = distinct !DISubprogram(name: "strcpy", scope: !2483, file: !2483, line: 77, type: !3931, scopeLine: 78, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3934)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!125, !3933, !1018}
!3933 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !125)
!3934 = !{!3929, !3935}
!3935 = !DILocalVariable(name: "__src", arg: 2, scope: !3930, file: !2483, line: 77, type: !1018)
!3936 = !DILocation(line: 0, scope: !3930, inlinedAt: !3937)
!3937 = distinct !DILocation(line: 337, column: 9, scope: !3928)
!3938 = !DILocation(line: 79, column: 10, scope: !3930, inlinedAt: !3937)
!3939 = !DILocation(line: 342, column: 17, scope: !3909)
!3940 = !DILocation(line: 0, scope: !3909)
!3941 = !DILocation(line: 343, column: 17, scope: !3909)
!3942 = !DILocation(line: 345, column: 18, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3909, file: !700, line: 345, column: 9)
!3944 = !DILocation(line: 345, column: 28, scope: !3943)
!3945 = !DILocation(line: 349, column: 34, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3909, file: !700, line: 349, column: 9)
!3947 = !DILocation(line: 349, column: 43, scope: !3946)
!3948 = !DILocation(line: 349, column: 25, scope: !3946)
!3949 = !DILocation(line: 349, column: 16, scope: !3946)
!3950 = !DILocation(line: 0, scope: !3930, inlinedAt: !3951)
!3951 = distinct !DILocation(line: 356, column: 9, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3946, file: !700, line: 355, column: 7)
!3953 = !DILocation(line: 0, scope: !3930, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 351, column: 9, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3946, file: !700, line: 350, column: 7)
!3956 = !DILocation(line: 0, scope: !3946)
!3957 = !DILocation(line: 361, column: 15, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3909, file: !700, line: 361, column: 9)
!3959 = !DILocation(line: 361, column: 9, scope: !3909)
!3960 = !DILocation(line: 360, column: 24, scope: !3909)
!3961 = !DILocation(line: 362, column: 7, scope: !3958)
!3962 = !DILocation(line: 365, column: 1, scope: !3900)
!3963 = !DISubprogram(name: "__builtin___sprintf_chk", scope: !700, file: !700, line: 362, type: !3964, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!105, !125, !105, !136, !137, null}
!3966 = distinct !DISubprogram(name: "version_etc_arn", scope: !719, file: !719, line: 61, type: !3967, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4004)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{null, !3969, !137, !137, !137, !4003, !134}
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !3971)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !3972)
!3972 = !{!3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3971, file: !230, line: 51, baseType: !105, size: 32)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3971, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3971, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3971, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3971, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3971, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3971, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3971, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3971, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3971, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3971, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3971, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3971, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3971, file: !230, line: 70, baseType: !3987, size: 64, offset: 832)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3971, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3971, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3971, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3971, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3971, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3971, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3971, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3971, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3971, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3971, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3971, file: !230, line: 93, baseType: !3987, size: 64, offset: 1344)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3971, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3971, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3971, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3971, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!4004 = !{!4005, !4006, !4007, !4008, !4009, !4010}
!4005 = !DILocalVariable(name: "stream", arg: 1, scope: !3966, file: !719, line: 61, type: !3969)
!4006 = !DILocalVariable(name: "command_name", arg: 2, scope: !3966, file: !719, line: 62, type: !137)
!4007 = !DILocalVariable(name: "package", arg: 3, scope: !3966, file: !719, line: 62, type: !137)
!4008 = !DILocalVariable(name: "version", arg: 4, scope: !3966, file: !719, line: 63, type: !137)
!4009 = !DILocalVariable(name: "authors", arg: 5, scope: !3966, file: !719, line: 64, type: !4003)
!4010 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3966, file: !719, line: 64, type: !134)
!4011 = !DILocation(line: 0, scope: !3966)
!4012 = !DILocation(line: 66, column: 7, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !3966, file: !719, line: 66, column: 7)
!4014 = !DILocation(line: 66, column: 7, scope: !3966)
!4015 = !DILocation(line: 67, column: 5, scope: !4013)
!4016 = !DILocation(line: 69, column: 5, scope: !4013)
!4017 = !DILocation(line: 83, column: 3, scope: !3966)
!4018 = !DILocation(line: 85, column: 3, scope: !3966)
!4019 = !DILocation(line: 88, column: 3, scope: !3966)
!4020 = !DILocation(line: 95, column: 3, scope: !3966)
!4021 = !DILocation(line: 97, column: 3, scope: !3966)
!4022 = !DILocation(line: 105, column: 7, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !3966, file: !719, line: 98, column: 5)
!4024 = !DILocation(line: 106, column: 7, scope: !4023)
!4025 = !DILocation(line: 109, column: 7, scope: !4023)
!4026 = !DILocation(line: 110, column: 7, scope: !4023)
!4027 = !DILocation(line: 113, column: 7, scope: !4023)
!4028 = !DILocation(line: 115, column: 7, scope: !4023)
!4029 = !DILocation(line: 120, column: 7, scope: !4023)
!4030 = !DILocation(line: 122, column: 7, scope: !4023)
!4031 = !DILocation(line: 127, column: 7, scope: !4023)
!4032 = !DILocation(line: 129, column: 7, scope: !4023)
!4033 = !DILocation(line: 134, column: 7, scope: !4023)
!4034 = !DILocation(line: 137, column: 7, scope: !4023)
!4035 = !DILocation(line: 142, column: 7, scope: !4023)
!4036 = !DILocation(line: 145, column: 7, scope: !4023)
!4037 = !DILocation(line: 150, column: 7, scope: !4023)
!4038 = !DILocation(line: 154, column: 7, scope: !4023)
!4039 = !DILocation(line: 159, column: 7, scope: !4023)
!4040 = !DILocation(line: 163, column: 7, scope: !4023)
!4041 = !DILocation(line: 170, column: 7, scope: !4023)
!4042 = !DILocation(line: 174, column: 7, scope: !4023)
!4043 = !DILocation(line: 176, column: 1, scope: !3966)
!4044 = distinct !DISubprogram(name: "version_etc_ar", scope: !719, file: !719, line: 183, type: !4045, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4047)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{null, !3969, !137, !137, !137, !4003}
!4047 = !{!4048, !4049, !4050, !4051, !4052, !4053}
!4048 = !DILocalVariable(name: "stream", arg: 1, scope: !4044, file: !719, line: 183, type: !3969)
!4049 = !DILocalVariable(name: "command_name", arg: 2, scope: !4044, file: !719, line: 184, type: !137)
!4050 = !DILocalVariable(name: "package", arg: 3, scope: !4044, file: !719, line: 184, type: !137)
!4051 = !DILocalVariable(name: "version", arg: 4, scope: !4044, file: !719, line: 185, type: !137)
!4052 = !DILocalVariable(name: "authors", arg: 5, scope: !4044, file: !719, line: 185, type: !4003)
!4053 = !DILocalVariable(name: "n_authors", scope: !4044, file: !719, line: 187, type: !134)
!4054 = !DILocation(line: 0, scope: !4044)
!4055 = !DILocation(line: 189, column: 8, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4044, file: !719, line: 189, column: 3)
!4057 = !DILocation(line: 189, scope: !4056)
!4058 = !DILocation(line: 189, column: 23, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4056, file: !719, line: 189, column: 3)
!4060 = !DILocation(line: 189, column: 3, scope: !4056)
!4061 = !DILocation(line: 189, column: 52, scope: !4059)
!4062 = distinct !{!4062, !4060, !4063, !1074}
!4063 = !DILocation(line: 190, column: 5, scope: !4056)
!4064 = !DILocation(line: 191, column: 3, scope: !4044)
!4065 = !DILocation(line: 192, column: 1, scope: !4044)
!4066 = distinct !DISubprogram(name: "version_etc_va", scope: !719, file: !719, line: 199, type: !4067, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4080)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{null, !3969, !137, !137, !137, !4069}
!4069 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !502, line: 52, baseType: !4070)
!4070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !504, line: 14, baseType: !4071)
!4071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4072, baseType: !4073)
!4072 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4074)
!4074 = !{!4075, !4076, !4077, !4078, !4079}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4073, file: !4072, line: 192, baseType: !126, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4073, file: !4072, line: 192, baseType: !126, size: 64, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4073, file: !4072, line: 192, baseType: !126, size: 64, offset: 128)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4073, file: !4072, line: 192, baseType: !105, size: 32, offset: 192)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4073, file: !4072, line: 192, baseType: !105, size: 32, offset: 224)
!4080 = !{!4081, !4082, !4083, !4084, !4085, !4086, !4087}
!4081 = !DILocalVariable(name: "stream", arg: 1, scope: !4066, file: !719, line: 199, type: !3969)
!4082 = !DILocalVariable(name: "command_name", arg: 2, scope: !4066, file: !719, line: 200, type: !137)
!4083 = !DILocalVariable(name: "package", arg: 3, scope: !4066, file: !719, line: 200, type: !137)
!4084 = !DILocalVariable(name: "version", arg: 4, scope: !4066, file: !719, line: 201, type: !137)
!4085 = !DILocalVariable(name: "authors", arg: 5, scope: !4066, file: !719, line: 201, type: !4069)
!4086 = !DILocalVariable(name: "n_authors", scope: !4066, file: !719, line: 203, type: !134)
!4087 = !DILocalVariable(name: "authtab", scope: !4066, file: !719, line: 204, type: !4088)
!4088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 640, elements: !80)
!4089 = !DILocation(line: 0, scope: !4066)
!4090 = !DILocation(line: 201, column: 46, scope: !4066)
!4091 = !DILocation(line: 204, column: 3, scope: !4066)
!4092 = !DILocation(line: 204, column: 15, scope: !4066)
!4093 = !DILocation(line: 208, column: 35, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4095, file: !719, line: 206, column: 3)
!4095 = distinct !DILexicalBlock(scope: !4066, file: !719, line: 206, column: 3)
!4096 = !DILocation(line: 208, column: 33, scope: !4094)
!4097 = !DILocation(line: 208, column: 67, scope: !4094)
!4098 = !DILocation(line: 206, column: 3, scope: !4095)
!4099 = !DILocation(line: 208, column: 14, scope: !4094)
!4100 = !DILocation(line: 0, scope: !4095)
!4101 = !DILocation(line: 211, column: 3, scope: !4066)
!4102 = !DILocation(line: 213, column: 1, scope: !4066)
!4103 = distinct !DISubprogram(name: "version_etc", scope: !719, file: !719, line: 230, type: !4104, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4106)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{null, !3969, !137, !137, !137, null}
!4106 = !{!4107, !4108, !4109, !4110, !4111}
!4107 = !DILocalVariable(name: "stream", arg: 1, scope: !4103, file: !719, line: 230, type: !3969)
!4108 = !DILocalVariable(name: "command_name", arg: 2, scope: !4103, file: !719, line: 231, type: !137)
!4109 = !DILocalVariable(name: "package", arg: 3, scope: !4103, file: !719, line: 231, type: !137)
!4110 = !DILocalVariable(name: "version", arg: 4, scope: !4103, file: !719, line: 232, type: !137)
!4111 = !DILocalVariable(name: "authors", scope: !4103, file: !719, line: 234, type: !4069)
!4112 = !DILocation(line: 0, scope: !4103)
!4113 = !DILocation(line: 234, column: 3, scope: !4103)
!4114 = !DILocation(line: 234, column: 11, scope: !4103)
!4115 = !DILocation(line: 235, column: 3, scope: !4103)
!4116 = !DILocation(line: 236, column: 3, scope: !4103)
!4117 = !DILocation(line: 237, column: 3, scope: !4103)
!4118 = !DILocation(line: 238, column: 1, scope: !4103)
!4119 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !719, file: !719, line: 241, type: !540, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !965)
!4120 = !DILocation(line: 243, column: 3, scope: !4119)
!4121 = !DILocation(line: 248, column: 3, scope: !4119)
!4122 = !DILocation(line: 254, column: 3, scope: !4119)
!4123 = !DILocation(line: 259, column: 3, scope: !4119)
!4124 = !DILocation(line: 261, column: 1, scope: !4119)
!4125 = distinct !DISubprogram(name: "xnrealloc", scope: !4126, file: !4126, line: 147, type: !4127, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4129)
!4126 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!126, !126, !134, !134}
!4129 = !{!4130, !4131, !4132}
!4130 = !DILocalVariable(name: "p", arg: 1, scope: !4125, file: !4126, line: 147, type: !126)
!4131 = !DILocalVariable(name: "n", arg: 2, scope: !4125, file: !4126, line: 147, type: !134)
!4132 = !DILocalVariable(name: "s", arg: 3, scope: !4125, file: !4126, line: 147, type: !134)
!4133 = !DILocation(line: 0, scope: !4125)
!4134 = !DILocalVariable(name: "p", arg: 1, scope: !4135, file: !887, line: 83, type: !126)
!4135 = distinct !DISubprogram(name: "xreallocarray", scope: !887, file: !887, line: 83, type: !4127, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4136)
!4136 = !{!4134, !4137, !4138}
!4137 = !DILocalVariable(name: "n", arg: 2, scope: !4135, file: !887, line: 83, type: !134)
!4138 = !DILocalVariable(name: "s", arg: 3, scope: !4135, file: !887, line: 83, type: !134)
!4139 = !DILocation(line: 0, scope: !4135, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 149, column: 10, scope: !4125)
!4141 = !DILocation(line: 85, column: 25, scope: !4135, inlinedAt: !4140)
!4142 = !DILocalVariable(name: "p", arg: 1, scope: !4143, file: !887, line: 37, type: !126)
!4143 = distinct !DISubprogram(name: "check_nonnull", scope: !887, file: !887, line: 37, type: !4144, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4146)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!126, !126}
!4146 = !{!4142}
!4147 = !DILocation(line: 0, scope: !4143, inlinedAt: !4148)
!4148 = distinct !DILocation(line: 85, column: 10, scope: !4135, inlinedAt: !4140)
!4149 = !DILocation(line: 39, column: 8, scope: !4150, inlinedAt: !4148)
!4150 = distinct !DILexicalBlock(scope: !4143, file: !887, line: 39, column: 7)
!4151 = !DILocation(line: 39, column: 7, scope: !4143, inlinedAt: !4148)
!4152 = !DILocation(line: 40, column: 5, scope: !4150, inlinedAt: !4148)
!4153 = !DILocation(line: 149, column: 3, scope: !4125)
!4154 = !DILocation(line: 0, scope: !4135)
!4155 = !DILocation(line: 85, column: 25, scope: !4135)
!4156 = !DILocation(line: 0, scope: !4143, inlinedAt: !4157)
!4157 = distinct !DILocation(line: 85, column: 10, scope: !4135)
!4158 = !DILocation(line: 39, column: 8, scope: !4150, inlinedAt: !4157)
!4159 = !DILocation(line: 39, column: 7, scope: !4143, inlinedAt: !4157)
!4160 = !DILocation(line: 40, column: 5, scope: !4150, inlinedAt: !4157)
!4161 = !DILocation(line: 85, column: 3, scope: !4135)
!4162 = distinct !DISubprogram(name: "xmalloc", scope: !887, file: !887, line: 47, type: !4163, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4165)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!126, !134}
!4165 = !{!4166}
!4166 = !DILocalVariable(name: "s", arg: 1, scope: !4162, file: !887, line: 47, type: !134)
!4167 = !DILocation(line: 0, scope: !4162)
!4168 = !DILocation(line: 49, column: 25, scope: !4162)
!4169 = !DILocation(line: 0, scope: !4143, inlinedAt: !4170)
!4170 = distinct !DILocation(line: 49, column: 10, scope: !4162)
!4171 = !DILocation(line: 39, column: 8, scope: !4150, inlinedAt: !4170)
!4172 = !DILocation(line: 39, column: 7, scope: !4143, inlinedAt: !4170)
!4173 = !DILocation(line: 40, column: 5, scope: !4150, inlinedAt: !4170)
!4174 = !DILocation(line: 49, column: 3, scope: !4162)
!4175 = !DISubprogram(name: "malloc", scope: !1148, file: !1148, line: 540, type: !4163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!4176 = distinct !DISubprogram(name: "ximalloc", scope: !887, file: !887, line: 53, type: !4177, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4179)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!126, !906}
!4179 = !{!4180}
!4180 = !DILocalVariable(name: "s", arg: 1, scope: !4176, file: !887, line: 53, type: !906)
!4181 = !DILocation(line: 0, scope: !4176)
!4182 = !DILocalVariable(name: "s", arg: 1, scope: !4183, file: !4184, line: 55, type: !906)
!4183 = distinct !DISubprogram(name: "imalloc", scope: !4184, file: !4184, line: 55, type: !4177, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4185)
!4184 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4185 = !{!4182}
!4186 = !DILocation(line: 0, scope: !4183, inlinedAt: !4187)
!4187 = distinct !DILocation(line: 55, column: 25, scope: !4176)
!4188 = !DILocation(line: 57, column: 26, scope: !4183, inlinedAt: !4187)
!4189 = !DILocation(line: 0, scope: !4143, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 55, column: 10, scope: !4176)
!4191 = !DILocation(line: 39, column: 8, scope: !4150, inlinedAt: !4190)
!4192 = !DILocation(line: 39, column: 7, scope: !4143, inlinedAt: !4190)
!4193 = !DILocation(line: 40, column: 5, scope: !4150, inlinedAt: !4190)
!4194 = !DILocation(line: 55, column: 3, scope: !4176)
!4195 = distinct !DISubprogram(name: "xcharalloc", scope: !887, file: !887, line: 59, type: !4196, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4198)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!125, !134}
!4198 = !{!4199}
!4199 = !DILocalVariable(name: "n", arg: 1, scope: !4195, file: !887, line: 59, type: !134)
!4200 = !DILocation(line: 0, scope: !4195)
!4201 = !DILocation(line: 0, scope: !4162, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 61, column: 10, scope: !4195)
!4203 = !DILocation(line: 49, column: 25, scope: !4162, inlinedAt: !4202)
!4204 = !DILocation(line: 0, scope: !4143, inlinedAt: !4205)
!4205 = distinct !DILocation(line: 49, column: 10, scope: !4162, inlinedAt: !4202)
!4206 = !DILocation(line: 39, column: 8, scope: !4150, inlinedAt: !4205)
!4207 = !DILocation(line: 39, column: 7, scope: !4143, inlinedAt: !4205)
!4208 = !DILocation(line: 40, column: 5, scope: !4150, inlinedAt: !4205)
!4209 = !DILocation(line: 61, column: 3, scope: !4195)
!4210 = distinct !DISubprogram(name: "xrealloc", scope: !887, file: !887, line: 68, type: !4211, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4213)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!126, !126, !134}
!4213 = !{!4214, !4215}
!4214 = !DILocalVariable(name: "p", arg: 1, scope: !4210, file: !887, line: 68, type: !126)
!4215 = !DILocalVariable(name: "s", arg: 2, scope: !4210, file: !887, line: 68, type: !134)
!4216 = !DILocation(line: 0, scope: !4210)
!4217 = !DILocalVariable(name: "ptr", arg: 1, scope: !4218, file: !4219, line: 2057, type: !126)
!4218 = distinct !DISubprogram(name: "rpl_realloc", scope: !4219, file: !4219, line: 2057, type: !4211, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4220)
!4219 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4220 = !{!4217, !4221}
!4221 = !DILocalVariable(name: "size", arg: 2, scope: !4218, file: !4219, line: 2057, type: !134)
!4222 = !DILocation(line: 0, scope: !4218, inlinedAt: !4223)
!4223 = distinct !DILocation(line: 70, column: 25, scope: !4210)
!4224 = !DILocation(line: 2059, column: 24, scope: !4218, inlinedAt: !4223)
!4225 = !DILocation(line: 2059, column: 10, scope: !4218, inlinedAt: !4223)
!4226 = !DILocation(line: 0, scope: !4143, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 70, column: 10, scope: !4210)
!4228 = !DILocation(line: 39, column: 8, scope: !4150, inlinedAt: !4227)
!4229 = !DILocation(line: 39, column: 7, scope: !4143, inlinedAt: !4227)
!4230 = !DILocation(line: 40, column: 5, scope: !4150, inlinedAt: !4227)
!4231 = !DILocation(line: 70, column: 3, scope: !4210)
!4232 = !DISubprogram(name: "realloc", scope: !1148, file: !1148, line: 551, type: !4211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!4233 = distinct !DISubprogram(name: "xirealloc", scope: !887, file: !887, line: 74, type: !4234, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4236)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!126, !126, !906}
!4236 = !{!4237, !4238}
!4237 = !DILocalVariable(name: "p", arg: 1, scope: !4233, file: !887, line: 74, type: !126)
!4238 = !DILocalVariable(name: "s", arg: 2, scope: !4233, file: !887, line: 74, type: !906)
!4239 = !DILocation(line: 0, scope: !4233)
!4240 = !DILocalVariable(name: "p", arg: 1, scope: !4241, file: !4184, line: 66, type: !126)
!4241 = distinct !DISubprogram(name: "irealloc", scope: !4184, file: !4184, line: 66, type: !4234, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4242)
!4242 = !{!4240, !4243}
!4243 = !DILocalVariable(name: "s", arg: 2, scope: !4241, file: !4184, line: 66, type: !906)
!4244 = !DILocation(line: 0, scope: !4241, inlinedAt: !4245)
!4245 = distinct !DILocation(line: 76, column: 25, scope: !4233)
!4246 = !DILocation(line: 0, scope: !4218, inlinedAt: !4247)
!4247 = distinct !DILocation(line: 68, column: 26, scope: !4241, inlinedAt: !4245)
!4248 = !DILocation(line: 2059, column: 24, scope: !4218, inlinedAt: !4247)
!4249 = !DILocation(line: 2059, column: 10, scope: !4218, inlinedAt: !4247)
!4250 = !DILocation(line: 0, scope: !4143, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 76, column: 10, scope: !4233)
!4252 = !DILocation(line: 39, column: 8, scope: !4150, inlinedAt: !4251)
!4253 = !DILocation(line: 39, column: 7, scope: !4143, inlinedAt: !4251)
!4254 = !DILocation(line: 40, column: 5, scope: !4150, inlinedAt: !4251)
!4255 = !DILocation(line: 76, column: 3, scope: !4233)
!4256 = distinct !DISubprogram(name: "xireallocarray", scope: !887, file: !887, line: 89, type: !4257, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4259)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!126, !126, !906, !906}
!4259 = !{!4260, !4261, !4262}
!4260 = !DILocalVariable(name: "p", arg: 1, scope: !4256, file: !887, line: 89, type: !126)
!4261 = !DILocalVariable(name: "n", arg: 2, scope: !4256, file: !887, line: 89, type: !906)
!4262 = !DILocalVariable(name: "s", arg: 3, scope: !4256, file: !887, line: 89, type: !906)
!4263 = !DILocation(line: 0, scope: !4256)
!4264 = !DILocalVariable(name: "p", arg: 1, scope: !4265, file: !4184, line: 98, type: !126)
!4265 = distinct !DISubprogram(name: "ireallocarray", scope: !4184, file: !4184, line: 98, type: !4257, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4266)
!4266 = !{!4264, !4267, !4268}
!4267 = !DILocalVariable(name: "n", arg: 2, scope: !4265, file: !4184, line: 98, type: !906)
!4268 = !DILocalVariable(name: "s", arg: 3, scope: !4265, file: !4184, line: 98, type: !906)
!4269 = !DILocation(line: 0, scope: !4265, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 91, column: 25, scope: !4256)
!4271 = !DILocation(line: 101, column: 13, scope: !4265, inlinedAt: !4270)
!4272 = !DILocation(line: 0, scope: !4143, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 91, column: 10, scope: !4256)
!4274 = !DILocation(line: 39, column: 8, scope: !4150, inlinedAt: !4273)
!4275 = !DILocation(line: 39, column: 7, scope: !4143, inlinedAt: !4273)
!4276 = !DILocation(line: 40, column: 5, scope: !4150, inlinedAt: !4273)
!4277 = !DILocation(line: 91, column: 3, scope: !4256)
!4278 = distinct !DISubprogram(name: "xnmalloc", scope: !887, file: !887, line: 98, type: !4279, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4281)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!126, !134, !134}
!4281 = !{!4282, !4283}
!4282 = !DILocalVariable(name: "n", arg: 1, scope: !4278, file: !887, line: 98, type: !134)
!4283 = !DILocalVariable(name: "s", arg: 2, scope: !4278, file: !887, line: 98, type: !134)
!4284 = !DILocation(line: 0, scope: !4278)
!4285 = !DILocation(line: 0, scope: !4135, inlinedAt: !4286)
!4286 = distinct !DILocation(line: 100, column: 10, scope: !4278)
!4287 = !DILocation(line: 85, column: 25, scope: !4135, inlinedAt: !4286)
!4288 = !DILocation(line: 0, scope: !4143, inlinedAt: !4289)
!4289 = distinct !DILocation(line: 85, column: 10, scope: !4135, inlinedAt: !4286)
!4290 = !DILocation(line: 39, column: 8, scope: !4150, inlinedAt: !4289)
!4291 = !DILocation(line: 39, column: 7, scope: !4143, inlinedAt: !4289)
!4292 = !DILocation(line: 40, column: 5, scope: !4150, inlinedAt: !4289)
!4293 = !DILocation(line: 100, column: 3, scope: !4278)
!4294 = distinct !DISubprogram(name: "xinmalloc", scope: !887, file: !887, line: 104, type: !4295, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4297)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!126, !906, !906}
!4297 = !{!4298, !4299}
!4298 = !DILocalVariable(name: "n", arg: 1, scope: !4294, file: !887, line: 104, type: !906)
!4299 = !DILocalVariable(name: "s", arg: 2, scope: !4294, file: !887, line: 104, type: !906)
!4300 = !DILocation(line: 0, scope: !4294)
!4301 = !DILocation(line: 0, scope: !4256, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 106, column: 10, scope: !4294)
!4303 = !DILocation(line: 0, scope: !4265, inlinedAt: !4304)
!4304 = distinct !DILocation(line: 91, column: 25, scope: !4256, inlinedAt: !4302)
!4305 = !DILocation(line: 101, column: 13, scope: !4265, inlinedAt: !4304)
!4306 = !DILocation(line: 0, scope: !4143, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 91, column: 10, scope: !4256, inlinedAt: !4302)
!4308 = !DILocation(line: 39, column: 8, scope: !4150, inlinedAt: !4307)
!4309 = !DILocation(line: 39, column: 7, scope: !4143, inlinedAt: !4307)
!4310 = !DILocation(line: 40, column: 5, scope: !4150, inlinedAt: !4307)
!4311 = !DILocation(line: 106, column: 3, scope: !4294)
!4312 = distinct !DISubprogram(name: "x2realloc", scope: !887, file: !887, line: 116, type: !4313, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4315)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!126, !126, !893}
!4315 = !{!4316, !4317}
!4316 = !DILocalVariable(name: "p", arg: 1, scope: !4312, file: !887, line: 116, type: !126)
!4317 = !DILocalVariable(name: "ps", arg: 2, scope: !4312, file: !887, line: 116, type: !893)
!4318 = !DILocation(line: 0, scope: !4312)
!4319 = !DILocation(line: 0, scope: !890, inlinedAt: !4320)
!4320 = distinct !DILocation(line: 118, column: 10, scope: !4312)
!4321 = !DILocation(line: 178, column: 14, scope: !890, inlinedAt: !4320)
!4322 = !DILocation(line: 180, column: 9, scope: !4323, inlinedAt: !4320)
!4323 = distinct !DILexicalBlock(scope: !890, file: !887, line: 180, column: 7)
!4324 = !DILocation(line: 180, column: 7, scope: !890, inlinedAt: !4320)
!4325 = !DILocation(line: 182, column: 13, scope: !4326, inlinedAt: !4320)
!4326 = distinct !DILexicalBlock(scope: !4327, file: !887, line: 182, column: 11)
!4327 = distinct !DILexicalBlock(scope: !4323, file: !887, line: 181, column: 5)
!4328 = !DILocation(line: 182, column: 11, scope: !4327, inlinedAt: !4320)
!4329 = !DILocation(line: 197, column: 11, scope: !4330, inlinedAt: !4320)
!4330 = distinct !DILexicalBlock(scope: !4331, file: !887, line: 197, column: 11)
!4331 = distinct !DILexicalBlock(scope: !4323, file: !887, line: 195, column: 5)
!4332 = !DILocation(line: 197, column: 11, scope: !4331, inlinedAt: !4320)
!4333 = !DILocation(line: 198, column: 9, scope: !4330, inlinedAt: !4320)
!4334 = !DILocation(line: 0, scope: !4135, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 201, column: 7, scope: !890, inlinedAt: !4320)
!4336 = !DILocation(line: 85, column: 25, scope: !4135, inlinedAt: !4335)
!4337 = !DILocation(line: 0, scope: !4143, inlinedAt: !4338)
!4338 = distinct !DILocation(line: 85, column: 10, scope: !4135, inlinedAt: !4335)
!4339 = !DILocation(line: 39, column: 8, scope: !4150, inlinedAt: !4338)
!4340 = !DILocation(line: 39, column: 7, scope: !4143, inlinedAt: !4338)
!4341 = !DILocation(line: 40, column: 5, scope: !4150, inlinedAt: !4338)
!4342 = !DILocation(line: 202, column: 7, scope: !890, inlinedAt: !4320)
!4343 = !DILocation(line: 118, column: 3, scope: !4312)
!4344 = !DILocation(line: 0, scope: !890)
!4345 = !DILocation(line: 178, column: 14, scope: !890)
!4346 = !DILocation(line: 180, column: 9, scope: !4323)
!4347 = !DILocation(line: 180, column: 7, scope: !890)
!4348 = !DILocation(line: 182, column: 13, scope: !4326)
!4349 = !DILocation(line: 182, column: 11, scope: !4327)
!4350 = !DILocation(line: 190, column: 30, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4326, file: !887, line: 183, column: 9)
!4352 = !DILocation(line: 191, column: 16, scope: !4351)
!4353 = !DILocation(line: 191, column: 13, scope: !4351)
!4354 = !DILocation(line: 192, column: 9, scope: !4351)
!4355 = !DILocation(line: 197, column: 11, scope: !4330)
!4356 = !DILocation(line: 197, column: 11, scope: !4331)
!4357 = !DILocation(line: 198, column: 9, scope: !4330)
!4358 = !DILocation(line: 0, scope: !4135, inlinedAt: !4359)
!4359 = distinct !DILocation(line: 201, column: 7, scope: !890)
!4360 = !DILocation(line: 85, column: 25, scope: !4135, inlinedAt: !4359)
!4361 = !DILocation(line: 0, scope: !4143, inlinedAt: !4362)
!4362 = distinct !DILocation(line: 85, column: 10, scope: !4135, inlinedAt: !4359)
!4363 = !DILocation(line: 39, column: 8, scope: !4150, inlinedAt: !4362)
!4364 = !DILocation(line: 39, column: 7, scope: !4143, inlinedAt: !4362)
!4365 = !DILocation(line: 40, column: 5, scope: !4150, inlinedAt: !4362)
!4366 = !DILocation(line: 202, column: 7, scope: !890)
!4367 = !DILocation(line: 203, column: 3, scope: !890)
!4368 = !DILocation(line: 0, scope: !902)
!4369 = !DILocation(line: 230, column: 14, scope: !902)
!4370 = !DILocation(line: 238, column: 7, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !902, file: !887, line: 238, column: 7)
!4372 = !DILocation(line: 238, column: 7, scope: !902)
!4373 = !DILocation(line: 240, column: 9, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !902, file: !887, line: 240, column: 7)
!4375 = !DILocation(line: 240, column: 18, scope: !4374)
!4376 = !DILocation(line: 253, column: 8, scope: !902)
!4377 = !DILocation(line: 258, column: 27, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4379, file: !887, line: 257, column: 5)
!4379 = distinct !DILexicalBlock(scope: !902, file: !887, line: 256, column: 7)
!4380 = !DILocation(line: 259, column: 32, scope: !4378)
!4381 = !DILocation(line: 260, column: 5, scope: !4378)
!4382 = !DILocation(line: 262, column: 9, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !902, file: !887, line: 262, column: 7)
!4384 = !DILocation(line: 262, column: 7, scope: !902)
!4385 = !DILocation(line: 263, column: 9, scope: !4383)
!4386 = !DILocation(line: 263, column: 5, scope: !4383)
!4387 = !DILocation(line: 264, column: 9, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !902, file: !887, line: 264, column: 7)
!4389 = !DILocation(line: 264, column: 14, scope: !4388)
!4390 = !DILocation(line: 265, column: 7, scope: !4388)
!4391 = !DILocation(line: 265, column: 11, scope: !4388)
!4392 = !DILocation(line: 266, column: 11, scope: !4388)
!4393 = !DILocation(line: 267, column: 14, scope: !4388)
!4394 = !DILocation(line: 264, column: 7, scope: !902)
!4395 = !DILocation(line: 268, column: 5, scope: !4388)
!4396 = !DILocation(line: 0, scope: !4210, inlinedAt: !4397)
!4397 = distinct !DILocation(line: 269, column: 8, scope: !902)
!4398 = !DILocation(line: 0, scope: !4218, inlinedAt: !4399)
!4399 = distinct !DILocation(line: 70, column: 25, scope: !4210, inlinedAt: !4397)
!4400 = !DILocation(line: 2059, column: 24, scope: !4218, inlinedAt: !4399)
!4401 = !DILocation(line: 2059, column: 10, scope: !4218, inlinedAt: !4399)
!4402 = !DILocation(line: 0, scope: !4143, inlinedAt: !4403)
!4403 = distinct !DILocation(line: 70, column: 10, scope: !4210, inlinedAt: !4397)
!4404 = !DILocation(line: 39, column: 8, scope: !4150, inlinedAt: !4403)
!4405 = !DILocation(line: 39, column: 7, scope: !4143, inlinedAt: !4403)
!4406 = !DILocation(line: 40, column: 5, scope: !4150, inlinedAt: !4403)
!4407 = !DILocation(line: 270, column: 7, scope: !902)
!4408 = !DILocation(line: 271, column: 3, scope: !902)
!4409 = distinct !DISubprogram(name: "xzalloc", scope: !887, file: !887, line: 279, type: !4163, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4410)
!4410 = !{!4411}
!4411 = !DILocalVariable(name: "s", arg: 1, scope: !4409, file: !887, line: 279, type: !134)
!4412 = !DILocation(line: 0, scope: !4409)
!4413 = !DILocalVariable(name: "n", arg: 1, scope: !4414, file: !887, line: 294, type: !134)
!4414 = distinct !DISubprogram(name: "xcalloc", scope: !887, file: !887, line: 294, type: !4279, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4415)
!4415 = !{!4413, !4416}
!4416 = !DILocalVariable(name: "s", arg: 2, scope: !4414, file: !887, line: 294, type: !134)
!4417 = !DILocation(line: 0, scope: !4414, inlinedAt: !4418)
!4418 = distinct !DILocation(line: 281, column: 10, scope: !4409)
!4419 = !DILocation(line: 296, column: 25, scope: !4414, inlinedAt: !4418)
!4420 = !DILocation(line: 0, scope: !4143, inlinedAt: !4421)
!4421 = distinct !DILocation(line: 296, column: 10, scope: !4414, inlinedAt: !4418)
!4422 = !DILocation(line: 39, column: 8, scope: !4150, inlinedAt: !4421)
!4423 = !DILocation(line: 39, column: 7, scope: !4143, inlinedAt: !4421)
!4424 = !DILocation(line: 40, column: 5, scope: !4150, inlinedAt: !4421)
!4425 = !DILocation(line: 281, column: 3, scope: !4409)
!4426 = !DISubprogram(name: "calloc", scope: !1148, file: !1148, line: 543, type: !4279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!4427 = !DILocation(line: 0, scope: !4414)
!4428 = !DILocation(line: 296, column: 25, scope: !4414)
!4429 = !DILocation(line: 0, scope: !4143, inlinedAt: !4430)
!4430 = distinct !DILocation(line: 296, column: 10, scope: !4414)
!4431 = !DILocation(line: 39, column: 8, scope: !4150, inlinedAt: !4430)
!4432 = !DILocation(line: 39, column: 7, scope: !4143, inlinedAt: !4430)
!4433 = !DILocation(line: 40, column: 5, scope: !4150, inlinedAt: !4430)
!4434 = !DILocation(line: 296, column: 3, scope: !4414)
!4435 = distinct !DISubprogram(name: "xizalloc", scope: !887, file: !887, line: 285, type: !4177, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4436)
!4436 = !{!4437}
!4437 = !DILocalVariable(name: "s", arg: 1, scope: !4435, file: !887, line: 285, type: !906)
!4438 = !DILocation(line: 0, scope: !4435)
!4439 = !DILocalVariable(name: "n", arg: 1, scope: !4440, file: !887, line: 300, type: !906)
!4440 = distinct !DISubprogram(name: "xicalloc", scope: !887, file: !887, line: 300, type: !4295, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4441)
!4441 = !{!4439, !4442}
!4442 = !DILocalVariable(name: "s", arg: 2, scope: !4440, file: !887, line: 300, type: !906)
!4443 = !DILocation(line: 0, scope: !4440, inlinedAt: !4444)
!4444 = distinct !DILocation(line: 287, column: 10, scope: !4435)
!4445 = !DILocalVariable(name: "n", arg: 1, scope: !4446, file: !4184, line: 77, type: !906)
!4446 = distinct !DISubprogram(name: "icalloc", scope: !4184, file: !4184, line: 77, type: !4295, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4447)
!4447 = !{!4445, !4448}
!4448 = !DILocalVariable(name: "s", arg: 2, scope: !4446, file: !4184, line: 77, type: !906)
!4449 = !DILocation(line: 0, scope: !4446, inlinedAt: !4450)
!4450 = distinct !DILocation(line: 302, column: 25, scope: !4440, inlinedAt: !4444)
!4451 = !DILocation(line: 91, column: 10, scope: !4446, inlinedAt: !4450)
!4452 = !DILocation(line: 0, scope: !4143, inlinedAt: !4453)
!4453 = distinct !DILocation(line: 302, column: 10, scope: !4440, inlinedAt: !4444)
!4454 = !DILocation(line: 39, column: 8, scope: !4150, inlinedAt: !4453)
!4455 = !DILocation(line: 39, column: 7, scope: !4143, inlinedAt: !4453)
!4456 = !DILocation(line: 40, column: 5, scope: !4150, inlinedAt: !4453)
!4457 = !DILocation(line: 287, column: 3, scope: !4435)
!4458 = !DILocation(line: 0, scope: !4440)
!4459 = !DILocation(line: 0, scope: !4446, inlinedAt: !4460)
!4460 = distinct !DILocation(line: 302, column: 25, scope: !4440)
!4461 = !DILocation(line: 91, column: 10, scope: !4446, inlinedAt: !4460)
!4462 = !DILocation(line: 0, scope: !4143, inlinedAt: !4463)
!4463 = distinct !DILocation(line: 302, column: 10, scope: !4440)
!4464 = !DILocation(line: 39, column: 8, scope: !4150, inlinedAt: !4463)
!4465 = !DILocation(line: 39, column: 7, scope: !4143, inlinedAt: !4463)
!4466 = !DILocation(line: 40, column: 5, scope: !4150, inlinedAt: !4463)
!4467 = !DILocation(line: 302, column: 3, scope: !4440)
!4468 = distinct !DISubprogram(name: "xmemdup", scope: !887, file: !887, line: 310, type: !4469, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4471)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!126, !1170, !134}
!4471 = !{!4472, !4473}
!4472 = !DILocalVariable(name: "p", arg: 1, scope: !4468, file: !887, line: 310, type: !1170)
!4473 = !DILocalVariable(name: "s", arg: 2, scope: !4468, file: !887, line: 310, type: !134)
!4474 = !DILocation(line: 0, scope: !4468)
!4475 = !DILocation(line: 0, scope: !4162, inlinedAt: !4476)
!4476 = distinct !DILocation(line: 312, column: 18, scope: !4468)
!4477 = !DILocation(line: 49, column: 25, scope: !4162, inlinedAt: !4476)
!4478 = !DILocation(line: 0, scope: !4143, inlinedAt: !4479)
!4479 = distinct !DILocation(line: 49, column: 10, scope: !4162, inlinedAt: !4476)
!4480 = !DILocation(line: 39, column: 8, scope: !4150, inlinedAt: !4479)
!4481 = !DILocation(line: 39, column: 7, scope: !4143, inlinedAt: !4479)
!4482 = !DILocation(line: 40, column: 5, scope: !4150, inlinedAt: !4479)
!4483 = !DILocalVariable(name: "__dest", arg: 1, scope: !4484, file: !2483, line: 26, type: !4487)
!4484 = distinct !DISubprogram(name: "memcpy", scope: !2483, file: !2483, line: 26, type: !4485, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4488)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!126, !4487, !1169, !134}
!4487 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !126)
!4488 = !{!4483, !4489, !4490}
!4489 = !DILocalVariable(name: "__src", arg: 2, scope: !4484, file: !2483, line: 26, type: !1169)
!4490 = !DILocalVariable(name: "__len", arg: 3, scope: !4484, file: !2483, line: 26, type: !134)
!4491 = !DILocation(line: 0, scope: !4484, inlinedAt: !4492)
!4492 = distinct !DILocation(line: 312, column: 10, scope: !4468)
!4493 = !DILocation(line: 29, column: 10, scope: !4484, inlinedAt: !4492)
!4494 = !DILocation(line: 312, column: 3, scope: !4468)
!4495 = distinct !DISubprogram(name: "ximemdup", scope: !887, file: !887, line: 316, type: !4496, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4498)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!126, !1170, !906}
!4498 = !{!4499, !4500}
!4499 = !DILocalVariable(name: "p", arg: 1, scope: !4495, file: !887, line: 316, type: !1170)
!4500 = !DILocalVariable(name: "s", arg: 2, scope: !4495, file: !887, line: 316, type: !906)
!4501 = !DILocation(line: 0, scope: !4495)
!4502 = !DILocation(line: 0, scope: !4176, inlinedAt: !4503)
!4503 = distinct !DILocation(line: 318, column: 18, scope: !4495)
!4504 = !DILocation(line: 0, scope: !4183, inlinedAt: !4505)
!4505 = distinct !DILocation(line: 55, column: 25, scope: !4176, inlinedAt: !4503)
!4506 = !DILocation(line: 57, column: 26, scope: !4183, inlinedAt: !4505)
!4507 = !DILocation(line: 0, scope: !4143, inlinedAt: !4508)
!4508 = distinct !DILocation(line: 55, column: 10, scope: !4176, inlinedAt: !4503)
!4509 = !DILocation(line: 39, column: 8, scope: !4150, inlinedAt: !4508)
!4510 = !DILocation(line: 39, column: 7, scope: !4143, inlinedAt: !4508)
!4511 = !DILocation(line: 40, column: 5, scope: !4150, inlinedAt: !4508)
!4512 = !DILocation(line: 0, scope: !4484, inlinedAt: !4513)
!4513 = distinct !DILocation(line: 318, column: 10, scope: !4495)
!4514 = !DILocation(line: 29, column: 10, scope: !4484, inlinedAt: !4513)
!4515 = !DILocation(line: 318, column: 3, scope: !4495)
!4516 = distinct !DISubprogram(name: "ximemdup0", scope: !887, file: !887, line: 325, type: !4517, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4519)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!125, !1170, !906}
!4519 = !{!4520, !4521, !4522}
!4520 = !DILocalVariable(name: "p", arg: 1, scope: !4516, file: !887, line: 325, type: !1170)
!4521 = !DILocalVariable(name: "s", arg: 2, scope: !4516, file: !887, line: 325, type: !906)
!4522 = !DILocalVariable(name: "result", scope: !4516, file: !887, line: 327, type: !125)
!4523 = !DILocation(line: 0, scope: !4516)
!4524 = !DILocation(line: 327, column: 30, scope: !4516)
!4525 = !DILocation(line: 0, scope: !4176, inlinedAt: !4526)
!4526 = distinct !DILocation(line: 327, column: 18, scope: !4516)
!4527 = !DILocation(line: 0, scope: !4183, inlinedAt: !4528)
!4528 = distinct !DILocation(line: 55, column: 25, scope: !4176, inlinedAt: !4526)
!4529 = !DILocation(line: 57, column: 26, scope: !4183, inlinedAt: !4528)
!4530 = !DILocation(line: 0, scope: !4143, inlinedAt: !4531)
!4531 = distinct !DILocation(line: 55, column: 10, scope: !4176, inlinedAt: !4526)
!4532 = !DILocation(line: 39, column: 8, scope: !4150, inlinedAt: !4531)
!4533 = !DILocation(line: 39, column: 7, scope: !4143, inlinedAt: !4531)
!4534 = !DILocation(line: 40, column: 5, scope: !4150, inlinedAt: !4531)
!4535 = !DILocation(line: 328, column: 3, scope: !4516)
!4536 = !DILocation(line: 328, column: 13, scope: !4516)
!4537 = !DILocation(line: 0, scope: !4484, inlinedAt: !4538)
!4538 = distinct !DILocation(line: 329, column: 10, scope: !4516)
!4539 = !DILocation(line: 29, column: 10, scope: !4484, inlinedAt: !4538)
!4540 = !DILocation(line: 329, column: 3, scope: !4516)
!4541 = distinct !DISubprogram(name: "xstrdup", scope: !887, file: !887, line: 335, type: !1150, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4542)
!4542 = !{!4543}
!4543 = !DILocalVariable(name: "string", arg: 1, scope: !4541, file: !887, line: 335, type: !137)
!4544 = !DILocation(line: 0, scope: !4541)
!4545 = !DILocation(line: 337, column: 27, scope: !4541)
!4546 = !DILocation(line: 337, column: 43, scope: !4541)
!4547 = !DILocation(line: 0, scope: !4468, inlinedAt: !4548)
!4548 = distinct !DILocation(line: 337, column: 10, scope: !4541)
!4549 = !DILocation(line: 0, scope: !4162, inlinedAt: !4550)
!4550 = distinct !DILocation(line: 312, column: 18, scope: !4468, inlinedAt: !4548)
!4551 = !DILocation(line: 49, column: 25, scope: !4162, inlinedAt: !4550)
!4552 = !DILocation(line: 0, scope: !4143, inlinedAt: !4553)
!4553 = distinct !DILocation(line: 49, column: 10, scope: !4162, inlinedAt: !4550)
!4554 = !DILocation(line: 39, column: 8, scope: !4150, inlinedAt: !4553)
!4555 = !DILocation(line: 39, column: 7, scope: !4143, inlinedAt: !4553)
!4556 = !DILocation(line: 40, column: 5, scope: !4150, inlinedAt: !4553)
!4557 = !DILocation(line: 0, scope: !4484, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 312, column: 10, scope: !4468, inlinedAt: !4548)
!4559 = !DILocation(line: 29, column: 10, scope: !4484, inlinedAt: !4558)
!4560 = !DILocation(line: 337, column: 3, scope: !4541)
!4561 = distinct !DISubprogram(name: "xalloc_die", scope: !806, file: !806, line: 32, type: !540, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4562)
!4562 = !{!4563}
!4563 = !DILocalVariable(name: "__errstatus", scope: !4564, file: !806, line: 34, type: !426)
!4564 = distinct !DILexicalBlock(scope: !4561, file: !806, line: 34, column: 3)
!4565 = !DILocation(line: 34, column: 3, scope: !4564)
!4566 = !DILocation(line: 0, scope: !4564)
!4567 = !DILocation(line: 40, column: 3, scope: !4561)
!4568 = distinct !DISubprogram(name: "c_strtod", scope: !814, file: !814, line: 102, type: !4569, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !4571)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!187, !137, !1175}
!4571 = !{!4572, !4573, !4574, !4575}
!4572 = !DILocalVariable(name: "nptr", arg: 1, scope: !4568, file: !814, line: 102, type: !137)
!4573 = !DILocalVariable(name: "endptr", arg: 2, scope: !4568, file: !814, line: 102, type: !1175)
!4574 = !DILocalVariable(name: "r", scope: !4568, file: !814, line: 104, type: !187)
!4575 = !DILocalVariable(name: "locale", scope: !4568, file: !814, line: 108, type: !816)
!4576 = !DILocation(line: 0, scope: !4568)
!4577 = !DILocation(line: 65, column: 8, scope: !4578, inlinedAt: !4582)
!4578 = distinct !DILexicalBlock(scope: !4579, file: !814, line: 65, column: 7)
!4579 = distinct !DISubprogram(name: "c_locale", scope: !814, file: !814, line: 63, type: !4580, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !965)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!816}
!4582 = distinct !DILocation(line: 108, column: 21, scope: !4568)
!4583 = !DILocation(line: 65, column: 7, scope: !4579, inlinedAt: !4582)
!4584 = !DILocation(line: 66, column: 22, scope: !4578, inlinedAt: !4582)
!4585 = !DILocation(line: 66, column: 20, scope: !4578, inlinedAt: !4582)
!4586 = !DILocation(line: 66, column: 5, scope: !4578, inlinedAt: !4582)
!4587 = !DILocation(line: 67, column: 10, scope: !4579, inlinedAt: !4582)
!4588 = !DILocation(line: 109, column: 8, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4568, file: !814, line: 109, column: 7)
!4590 = !DILocation(line: 109, column: 7, scope: !4568)
!4591 = !DILocation(line: 111, column: 11, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4593, file: !814, line: 111, column: 11)
!4593 = distinct !DILexicalBlock(scope: !4589, file: !814, line: 110, column: 5)
!4594 = !DILocation(line: 111, column: 11, scope: !4593)
!4595 = !DILocation(line: 112, column: 17, scope: !4592)
!4596 = !DILocation(line: 112, column: 9, scope: !4592)
!4597 = !DILocation(line: 118, column: 7, scope: !4568)
!4598 = !DILocation(line: 342, column: 3, scope: !4568)
!4599 = !DILocation(line: 343, column: 1, scope: !4568)
!4600 = !DISubprogram(name: "newlocale", scope: !1140, file: !1140, line: 141, type: !4601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!816, !105, !137, !816}
!4603 = !DISubprogram(name: "strtod_l", scope: !1148, file: !1148, line: 296, type: !4604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!187, !1018, !2067, !816}
!4606 = distinct !DISubprogram(name: "close_stream", scope: !923, file: !923, line: 55, type: !4607, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !4643)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!105, !4609}
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !4611)
!4611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !4612)
!4612 = !{!4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4611, file: !230, line: 51, baseType: !105, size: 32)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4611, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4611, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4611, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4611, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4611, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4611, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4611, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4611, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4611, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4611, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4611, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4611, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4611, file: !230, line: 70, baseType: !4627, size: 64, offset: 832)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4611, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4611, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4611, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4611, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4611, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4611, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4611, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4611, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4611, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4611, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4611, file: !230, line: 93, baseType: !4627, size: 64, offset: 1344)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4611, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4611, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4611, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4611, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!4643 = !{!4644, !4645, !4647, !4648}
!4644 = !DILocalVariable(name: "stream", arg: 1, scope: !4606, file: !923, line: 55, type: !4609)
!4645 = !DILocalVariable(name: "some_pending", scope: !4606, file: !923, line: 57, type: !4646)
!4646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!4647 = !DILocalVariable(name: "prev_fail", scope: !4606, file: !923, line: 58, type: !4646)
!4648 = !DILocalVariable(name: "fclose_fail", scope: !4606, file: !923, line: 59, type: !4646)
!4649 = !DILocation(line: 0, scope: !4606)
!4650 = !DILocation(line: 57, column: 30, scope: !4606)
!4651 = !DILocalVariable(name: "__stream", arg: 1, scope: !4652, file: !2327, line: 135, type: !4609)
!4652 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2327, file: !2327, line: 135, type: !4607, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !4653)
!4653 = !{!4651}
!4654 = !DILocation(line: 0, scope: !4652, inlinedAt: !4655)
!4655 = distinct !DILocation(line: 58, column: 27, scope: !4606)
!4656 = !DILocation(line: 137, column: 10, scope: !4652, inlinedAt: !4655)
!4657 = !{!2336, !1028, i64 0}
!4658 = !DILocation(line: 58, column: 43, scope: !4606)
!4659 = !DILocation(line: 59, column: 29, scope: !4606)
!4660 = !DILocation(line: 59, column: 45, scope: !4606)
!4661 = !DILocation(line: 69, column: 17, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4606, file: !923, line: 69, column: 7)
!4663 = !DILocation(line: 57, column: 50, scope: !4606)
!4664 = !DILocation(line: 69, column: 33, scope: !4662)
!4665 = !DILocation(line: 69, column: 53, scope: !4662)
!4666 = !DILocation(line: 69, column: 59, scope: !4662)
!4667 = !DILocation(line: 69, column: 7, scope: !4606)
!4668 = !DILocation(line: 71, column: 11, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4662, file: !923, line: 70, column: 5)
!4670 = !DILocation(line: 72, column: 9, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4669, file: !923, line: 71, column: 11)
!4672 = !DILocation(line: 72, column: 15, scope: !4671)
!4673 = !DILocation(line: 77, column: 1, scope: !4606)
!4674 = !DISubprogram(name: "__fpending", scope: !4675, file: !4675, line: 75, type: !4676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!4675 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!134, !4609}
!4678 = distinct !DISubprogram(name: "rpl_fclose", scope: !925, file: !925, line: 58, type: !4679, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !924, retainedNodes: !4715)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{!105, !4681}
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !4683)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !4684)
!4684 = !{!4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4683, file: !230, line: 51, baseType: !105, size: 32)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4683, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4683, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4683, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4683, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4683, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4683, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4683, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4683, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4683, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4683, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4683, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4683, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4683, file: !230, line: 70, baseType: !4699, size: 64, offset: 832)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4683, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4683, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4683, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4683, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4683, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4683, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4683, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4683, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4683, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4683, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4683, file: !230, line: 93, baseType: !4699, size: 64, offset: 1344)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4683, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4683, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4683, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4683, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!4715 = !{!4716, !4717, !4718, !4719}
!4716 = !DILocalVariable(name: "fp", arg: 1, scope: !4678, file: !925, line: 58, type: !4681)
!4717 = !DILocalVariable(name: "saved_errno", scope: !4678, file: !925, line: 60, type: !105)
!4718 = !DILocalVariable(name: "fd", scope: !4678, file: !925, line: 63, type: !105)
!4719 = !DILocalVariable(name: "result", scope: !4678, file: !925, line: 74, type: !105)
!4720 = !DILocation(line: 0, scope: !4678)
!4721 = !DILocation(line: 63, column: 12, scope: !4678)
!4722 = !DILocation(line: 64, column: 10, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4678, file: !925, line: 64, column: 7)
!4724 = !DILocation(line: 64, column: 7, scope: !4678)
!4725 = !DILocation(line: 65, column: 12, scope: !4723)
!4726 = !DILocation(line: 65, column: 5, scope: !4723)
!4727 = !DILocation(line: 70, column: 9, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4678, file: !925, line: 70, column: 7)
!4729 = !DILocation(line: 70, column: 23, scope: !4728)
!4730 = !DILocation(line: 70, column: 33, scope: !4728)
!4731 = !DILocation(line: 70, column: 26, scope: !4728)
!4732 = !DILocation(line: 70, column: 59, scope: !4728)
!4733 = !DILocation(line: 71, column: 7, scope: !4728)
!4734 = !DILocation(line: 71, column: 10, scope: !4728)
!4735 = !DILocation(line: 70, column: 7, scope: !4678)
!4736 = !DILocation(line: 100, column: 12, scope: !4678)
!4737 = !DILocation(line: 105, column: 7, scope: !4678)
!4738 = !DILocation(line: 72, column: 19, scope: !4728)
!4739 = !DILocation(line: 105, column: 19, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4678, file: !925, line: 105, column: 7)
!4741 = !DILocation(line: 107, column: 13, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4740, file: !925, line: 106, column: 5)
!4743 = !DILocation(line: 109, column: 5, scope: !4742)
!4744 = !DILocation(line: 112, column: 1, scope: !4678)
!4745 = !DISubprogram(name: "fileno", scope: !502, file: !502, line: 809, type: !4679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!4746 = !DISubprogram(name: "fclose", scope: !502, file: !502, line: 178, type: !4679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!4747 = !DISubprogram(name: "__freading", scope: !4675, file: !4675, line: 51, type: !4679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!4748 = !DISubprogram(name: "lseek", scope: !1673, file: !1673, line: 339, type: !4749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!252, !105, !252, !105}
!4751 = distinct !DISubprogram(name: "rpl_fflush", scope: !927, file: !927, line: 130, type: !4752, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4788)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!105, !4754}
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !4756)
!4756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !4757)
!4757 = !{!4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4756, file: !230, line: 51, baseType: !105, size: 32)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4756, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4756, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4756, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4756, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4756, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4756, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4756, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4756, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4756, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4756, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4756, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4756, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4756, file: !230, line: 70, baseType: !4772, size: 64, offset: 832)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4756, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4756, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4756, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4756, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4756, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4756, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4756, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4756, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4756, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4756, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4756, file: !230, line: 93, baseType: !4772, size: 64, offset: 1344)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4756, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4756, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4756, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4756, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!4788 = !{!4789}
!4789 = !DILocalVariable(name: "stream", arg: 1, scope: !4751, file: !927, line: 130, type: !4754)
!4790 = !DILocation(line: 0, scope: !4751)
!4791 = !DILocation(line: 151, column: 14, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4751, file: !927, line: 151, column: 7)
!4793 = !DILocation(line: 151, column: 22, scope: !4792)
!4794 = !DILocation(line: 151, column: 27, scope: !4792)
!4795 = !DILocation(line: 151, column: 7, scope: !4751)
!4796 = !DILocation(line: 152, column: 12, scope: !4792)
!4797 = !DILocation(line: 152, column: 5, scope: !4792)
!4798 = !DILocalVariable(name: "fp", arg: 1, scope: !4799, file: !927, line: 42, type: !4754)
!4799 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !927, file: !927, line: 42, type: !4800, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4802)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{null, !4754}
!4802 = !{!4798}
!4803 = !DILocation(line: 0, scope: !4799, inlinedAt: !4804)
!4804 = distinct !DILocation(line: 157, column: 3, scope: !4751)
!4805 = !DILocation(line: 44, column: 12, scope: !4806, inlinedAt: !4804)
!4806 = distinct !DILexicalBlock(scope: !4799, file: !927, line: 44, column: 7)
!4807 = !DILocation(line: 44, column: 19, scope: !4806, inlinedAt: !4804)
!4808 = !DILocation(line: 44, column: 7, scope: !4799, inlinedAt: !4804)
!4809 = !DILocation(line: 46, column: 5, scope: !4806, inlinedAt: !4804)
!4810 = !DILocation(line: 159, column: 10, scope: !4751)
!4811 = !DILocation(line: 159, column: 3, scope: !4751)
!4812 = !DILocation(line: 236, column: 1, scope: !4751)
!4813 = !DISubprogram(name: "fflush", scope: !502, file: !502, line: 230, type: !4752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!4814 = distinct !DISubprogram(name: "rpl_fseeko", scope: !929, file: !929, line: 28, type: !4815, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4852)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!105, !4817, !4851, !105}
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !4819)
!4819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !4820)
!4820 = !{!4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4819, file: !230, line: 51, baseType: !105, size: 32)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4819, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4819, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4819, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4819, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4819, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4819, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4819, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4819, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4819, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4819, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4819, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4819, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4819, file: !230, line: 70, baseType: !4835, size: 64, offset: 832)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4819, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4819, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4819, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4819, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4819, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4819, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4819, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4819, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4819, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4819, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4819, file: !230, line: 93, baseType: !4835, size: 64, offset: 1344)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4819, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4819, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4819, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4819, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!4851 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !502, line: 63, baseType: !252)
!4852 = !{!4853, !4854, !4855, !4856}
!4853 = !DILocalVariable(name: "fp", arg: 1, scope: !4814, file: !929, line: 28, type: !4817)
!4854 = !DILocalVariable(name: "offset", arg: 2, scope: !4814, file: !929, line: 28, type: !4851)
!4855 = !DILocalVariable(name: "whence", arg: 3, scope: !4814, file: !929, line: 28, type: !105)
!4856 = !DILocalVariable(name: "pos", scope: !4857, file: !929, line: 123, type: !4851)
!4857 = distinct !DILexicalBlock(scope: !4858, file: !929, line: 119, column: 5)
!4858 = distinct !DILexicalBlock(scope: !4814, file: !929, line: 55, column: 7)
!4859 = !DILocation(line: 0, scope: !4814)
!4860 = !DILocation(line: 55, column: 12, scope: !4858)
!4861 = !{!2336, !957, i64 16}
!4862 = !DILocation(line: 55, column: 33, scope: !4858)
!4863 = !{!2336, !957, i64 8}
!4864 = !DILocation(line: 55, column: 25, scope: !4858)
!4865 = !DILocation(line: 56, column: 7, scope: !4858)
!4866 = !DILocation(line: 56, column: 15, scope: !4858)
!4867 = !DILocation(line: 56, column: 37, scope: !4858)
!4868 = !{!2336, !957, i64 32}
!4869 = !DILocation(line: 56, column: 29, scope: !4858)
!4870 = !DILocation(line: 57, column: 7, scope: !4858)
!4871 = !DILocation(line: 57, column: 15, scope: !4858)
!4872 = !{!2336, !957, i64 72}
!4873 = !DILocation(line: 57, column: 29, scope: !4858)
!4874 = !DILocation(line: 55, column: 7, scope: !4814)
!4875 = !DILocation(line: 123, column: 26, scope: !4857)
!4876 = !DILocation(line: 123, column: 19, scope: !4857)
!4877 = !DILocation(line: 0, scope: !4857)
!4878 = !DILocation(line: 124, column: 15, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4857, file: !929, line: 124, column: 11)
!4880 = !DILocation(line: 124, column: 11, scope: !4857)
!4881 = !DILocation(line: 135, column: 19, scope: !4857)
!4882 = !DILocation(line: 136, column: 12, scope: !4857)
!4883 = !DILocation(line: 136, column: 20, scope: !4857)
!4884 = !{!2336, !1868, i64 144}
!4885 = !DILocation(line: 167, column: 7, scope: !4857)
!4886 = !DILocation(line: 169, column: 10, scope: !4814)
!4887 = !DILocation(line: 169, column: 3, scope: !4814)
!4888 = !DILocation(line: 170, column: 1, scope: !4814)
!4889 = !DISubprogram(name: "fseeko", scope: !502, file: !502, line: 736, type: !4890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!105, !4817, !252, !105}
!4892 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !841, file: !841, line: 100, type: !4893, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !844, retainedNodes: !4896)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{!134, !2501, !137, !134, !4895}
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!4896 = !{!4897, !4898, !4899, !4900, !4901}
!4897 = !DILocalVariable(name: "pwc", arg: 1, scope: !4892, file: !841, line: 100, type: !2501)
!4898 = !DILocalVariable(name: "s", arg: 2, scope: !4892, file: !841, line: 100, type: !137)
!4899 = !DILocalVariable(name: "n", arg: 3, scope: !4892, file: !841, line: 100, type: !134)
!4900 = !DILocalVariable(name: "ps", arg: 4, scope: !4892, file: !841, line: 100, type: !4895)
!4901 = !DILocalVariable(name: "ret", scope: !4892, file: !841, line: 130, type: !134)
!4902 = !DILocation(line: 0, scope: !4892)
!4903 = !DILocation(line: 105, column: 9, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4892, file: !841, line: 105, column: 7)
!4905 = !DILocation(line: 105, column: 7, scope: !4892)
!4906 = !DILocation(line: 117, column: 10, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4892, file: !841, line: 117, column: 7)
!4908 = !DILocation(line: 117, column: 7, scope: !4892)
!4909 = !DILocation(line: 130, column: 16, scope: !4892)
!4910 = !DILocation(line: 135, column: 11, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4892, file: !841, line: 135, column: 7)
!4912 = !DILocation(line: 135, column: 25, scope: !4911)
!4913 = !DILocation(line: 135, column: 30, scope: !4911)
!4914 = !DILocation(line: 135, column: 7, scope: !4892)
!4915 = !DILocalVariable(name: "ps", arg: 1, scope: !4916, file: !2474, line: 1135, type: !4895)
!4916 = distinct !DISubprogram(name: "mbszero", scope: !2474, file: !2474, line: 1135, type: !4917, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !844, retainedNodes: !4919)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{null, !4895}
!4919 = !{!4915}
!4920 = !DILocation(line: 0, scope: !4916, inlinedAt: !4921)
!4921 = distinct !DILocation(line: 137, column: 5, scope: !4911)
!4922 = !DILocalVariable(name: "__dest", arg: 1, scope: !4923, file: !2483, line: 57, type: !126)
!4923 = distinct !DISubprogram(name: "memset", scope: !2483, file: !2483, line: 57, type: !2484, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !844, retainedNodes: !4924)
!4924 = !{!4922, !4925, !4926}
!4925 = !DILocalVariable(name: "__ch", arg: 2, scope: !4923, file: !2483, line: 57, type: !105)
!4926 = !DILocalVariable(name: "__len", arg: 3, scope: !4923, file: !2483, line: 57, type: !134)
!4927 = !DILocation(line: 0, scope: !4923, inlinedAt: !4928)
!4928 = distinct !DILocation(line: 1137, column: 3, scope: !4916, inlinedAt: !4921)
!4929 = !DILocation(line: 59, column: 10, scope: !4923, inlinedAt: !4928)
!4930 = !DILocation(line: 137, column: 5, scope: !4911)
!4931 = !DILocation(line: 138, column: 11, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4892, file: !841, line: 138, column: 7)
!4933 = !DILocation(line: 138, column: 7, scope: !4892)
!4934 = !DILocation(line: 139, column: 5, scope: !4932)
!4935 = !DILocation(line: 143, column: 26, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4892, file: !841, line: 143, column: 7)
!4937 = !DILocation(line: 143, column: 41, scope: !4936)
!4938 = !DILocation(line: 143, column: 7, scope: !4892)
!4939 = !DILocation(line: 145, column: 15, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4941, file: !841, line: 145, column: 11)
!4941 = distinct !DILexicalBlock(scope: !4936, file: !841, line: 144, column: 5)
!4942 = !DILocation(line: 145, column: 11, scope: !4941)
!4943 = !DILocation(line: 146, column: 32, scope: !4940)
!4944 = !DILocation(line: 146, column: 16, scope: !4940)
!4945 = !DILocation(line: 146, column: 14, scope: !4940)
!4946 = !DILocation(line: 146, column: 9, scope: !4940)
!4947 = !DILocation(line: 286, column: 1, scope: !4892)
!4948 = !DISubprogram(name: "mbsinit", scope: !4949, file: !4949, line: 293, type: !4950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !965)
!4949 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4950 = !DISubroutineType(types: !4951)
!4951 = !{!105, !4952}
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !847)
!4954 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !931, file: !931, line: 27, type: !4127, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !930, retainedNodes: !4955)
!4955 = !{!4956, !4957, !4958, !4959}
!4956 = !DILocalVariable(name: "ptr", arg: 1, scope: !4954, file: !931, line: 27, type: !126)
!4957 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4954, file: !931, line: 27, type: !134)
!4958 = !DILocalVariable(name: "size", arg: 3, scope: !4954, file: !931, line: 27, type: !134)
!4959 = !DILocalVariable(name: "nbytes", scope: !4954, file: !931, line: 29, type: !134)
!4960 = !DILocation(line: 0, scope: !4954)
!4961 = !DILocation(line: 30, column: 7, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4954, file: !931, line: 30, column: 7)
!4963 = !DILocalVariable(name: "ptr", arg: 1, scope: !4964, file: !4219, line: 2057, type: !126)
!4964 = distinct !DISubprogram(name: "rpl_realloc", scope: !4219, file: !4219, line: 2057, type: !4211, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !930, retainedNodes: !4965)
!4965 = !{!4963, !4966}
!4966 = !DILocalVariable(name: "size", arg: 2, scope: !4964, file: !4219, line: 2057, type: !134)
!4967 = !DILocation(line: 0, scope: !4964, inlinedAt: !4968)
!4968 = distinct !DILocation(line: 37, column: 10, scope: !4954)
!4969 = !DILocation(line: 2059, column: 24, scope: !4964, inlinedAt: !4968)
!4970 = !DILocation(line: 2059, column: 10, scope: !4964, inlinedAt: !4968)
!4971 = !DILocation(line: 37, column: 3, scope: !4954)
!4972 = !DILocation(line: 32, column: 7, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4962, file: !931, line: 31, column: 5)
!4974 = !DILocation(line: 32, column: 13, scope: !4973)
!4975 = !DILocation(line: 33, column: 7, scope: !4973)
!4976 = !DILocation(line: 38, column: 1, scope: !4954)
!4977 = distinct !DISubprogram(name: "hard_locale", scope: !859, file: !859, line: 28, type: !1997, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !933, retainedNodes: !4978)
!4978 = !{!4979, !4980}
!4979 = !DILocalVariable(name: "category", arg: 1, scope: !4977, file: !859, line: 28, type: !105)
!4980 = !DILocalVariable(name: "locale", scope: !4977, file: !859, line: 30, type: !4981)
!4981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4982)
!4982 = !{!4983}
!4983 = !DISubrange(count: 257)
!4984 = !DILocation(line: 0, scope: !4977)
!4985 = !DILocation(line: 30, column: 3, scope: !4977)
!4986 = !DILocation(line: 30, column: 8, scope: !4977)
!4987 = !DILocation(line: 32, column: 7, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4977, file: !859, line: 32, column: 7)
!4989 = !DILocation(line: 32, column: 7, scope: !4977)
!4990 = !DILocalVariable(name: "__s1", arg: 1, scope: !4991, file: !1040, line: 1359, type: !137)
!4991 = distinct !DISubprogram(name: "streq", scope: !1040, file: !1040, line: 1359, type: !1041, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !933, retainedNodes: !4992)
!4992 = !{!4990, !4993}
!4993 = !DILocalVariable(name: "__s2", arg: 2, scope: !4991, file: !1040, line: 1359, type: !137)
!4994 = !DILocation(line: 0, scope: !4991, inlinedAt: !4995)
!4995 = distinct !DILocation(line: 35, column: 9, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4977, file: !859, line: 35, column: 7)
!4997 = !DILocation(line: 1361, column: 11, scope: !4991, inlinedAt: !4995)
!4998 = !DILocation(line: 1361, column: 10, scope: !4991, inlinedAt: !4995)
!4999 = !DILocation(line: 35, column: 29, scope: !4996)
!5000 = !DILocation(line: 0, scope: !4991, inlinedAt: !5001)
!5001 = distinct !DILocation(line: 35, column: 32, scope: !4996)
!5002 = !DILocation(line: 1361, column: 11, scope: !4991, inlinedAt: !5001)
!5003 = !DILocation(line: 1361, column: 10, scope: !4991, inlinedAt: !5001)
!5004 = !DILocation(line: 35, column: 7, scope: !4977)
!5005 = !DILocation(line: 46, column: 3, scope: !4977)
!5006 = !DILocation(line: 47, column: 1, scope: !4977)
!5007 = distinct !DISubprogram(name: "setlocale_null_r", scope: !936, file: !936, line: 154, type: !5008, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !5010)
!5008 = !DISubroutineType(types: !5009)
!5009 = !{!105, !105, !125, !134}
!5010 = !{!5011, !5012, !5013}
!5011 = !DILocalVariable(name: "category", arg: 1, scope: !5007, file: !936, line: 154, type: !105)
!5012 = !DILocalVariable(name: "buf", arg: 2, scope: !5007, file: !936, line: 154, type: !125)
!5013 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5007, file: !936, line: 154, type: !134)
!5014 = !DILocation(line: 0, scope: !5007)
!5015 = !DILocation(line: 159, column: 10, scope: !5007)
!5016 = !DILocation(line: 159, column: 3, scope: !5007)
!5017 = distinct !DISubprogram(name: "setlocale_null", scope: !936, file: !936, line: 186, type: !5018, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !5020)
!5018 = !DISubroutineType(types: !5019)
!5019 = !{!137, !105}
!5020 = !{!5021}
!5021 = !DILocalVariable(name: "category", arg: 1, scope: !5017, file: !936, line: 186, type: !105)
!5022 = !DILocation(line: 0, scope: !5017)
!5023 = !DILocation(line: 189, column: 10, scope: !5017)
!5024 = !DILocation(line: 189, column: 3, scope: !5017)
!5025 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !938, file: !938, line: 35, type: !5018, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !937, retainedNodes: !5026)
!5026 = !{!5027, !5028}
!5027 = !DILocalVariable(name: "category", arg: 1, scope: !5025, file: !938, line: 35, type: !105)
!5028 = !DILocalVariable(name: "result", scope: !5025, file: !938, line: 37, type: !137)
!5029 = !DILocation(line: 0, scope: !5025)
!5030 = !DILocation(line: 37, column: 24, scope: !5025)
!5031 = !DILocation(line: 62, column: 3, scope: !5025)
!5032 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !938, file: !938, line: 66, type: !5008, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !937, retainedNodes: !5033)
!5033 = !{!5034, !5035, !5036, !5037, !5038}
!5034 = !DILocalVariable(name: "category", arg: 1, scope: !5032, file: !938, line: 66, type: !105)
!5035 = !DILocalVariable(name: "buf", arg: 2, scope: !5032, file: !938, line: 66, type: !125)
!5036 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5032, file: !938, line: 66, type: !134)
!5037 = !DILocalVariable(name: "result", scope: !5032, file: !938, line: 111, type: !137)
!5038 = !DILocalVariable(name: "length", scope: !5039, file: !938, line: 125, type: !134)
!5039 = distinct !DILexicalBlock(scope: !5040, file: !938, line: 124, column: 5)
!5040 = distinct !DILexicalBlock(scope: !5032, file: !938, line: 113, column: 7)
!5041 = !DILocation(line: 0, scope: !5032)
!5042 = !DILocation(line: 0, scope: !5025, inlinedAt: !5043)
!5043 = distinct !DILocation(line: 111, column: 24, scope: !5032)
!5044 = !DILocation(line: 37, column: 24, scope: !5025, inlinedAt: !5043)
!5045 = !DILocation(line: 113, column: 14, scope: !5040)
!5046 = !DILocation(line: 113, column: 7, scope: !5032)
!5047 = !DILocation(line: 116, column: 19, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5049, file: !938, line: 116, column: 11)
!5049 = distinct !DILexicalBlock(scope: !5040, file: !938, line: 114, column: 5)
!5050 = !DILocation(line: 116, column: 11, scope: !5049)
!5051 = !DILocation(line: 120, column: 16, scope: !5048)
!5052 = !DILocation(line: 120, column: 9, scope: !5048)
!5053 = !DILocation(line: 125, column: 23, scope: !5039)
!5054 = !DILocation(line: 0, scope: !5039)
!5055 = !DILocation(line: 126, column: 18, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5039, file: !938, line: 126, column: 11)
!5057 = !DILocation(line: 126, column: 11, scope: !5039)
!5058 = !DILocation(line: 128, column: 39, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5056, file: !938, line: 127, column: 9)
!5060 = !DILocalVariable(name: "__dest", arg: 1, scope: !5061, file: !2483, line: 26, type: !4487)
!5061 = distinct !DISubprogram(name: "memcpy", scope: !2483, file: !2483, line: 26, type: !4485, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !937, retainedNodes: !5062)
!5062 = !{!5060, !5063, !5064}
!5063 = !DILocalVariable(name: "__src", arg: 2, scope: !5061, file: !2483, line: 26, type: !1169)
!5064 = !DILocalVariable(name: "__len", arg: 3, scope: !5061, file: !2483, line: 26, type: !134)
!5065 = !DILocation(line: 0, scope: !5061, inlinedAt: !5066)
!5066 = distinct !DILocation(line: 128, column: 11, scope: !5059)
!5067 = !DILocation(line: 29, column: 10, scope: !5061, inlinedAt: !5066)
!5068 = !DILocation(line: 129, column: 11, scope: !5059)
!5069 = !DILocation(line: 133, column: 23, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5071, file: !938, line: 133, column: 15)
!5071 = distinct !DILexicalBlock(scope: !5056, file: !938, line: 132, column: 9)
!5072 = !DILocation(line: 133, column: 15, scope: !5071)
!5073 = !DILocation(line: 138, column: 44, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5070, file: !938, line: 134, column: 13)
!5075 = !DILocation(line: 0, scope: !5061, inlinedAt: !5076)
!5076 = distinct !DILocation(line: 138, column: 15, scope: !5074)
!5077 = !DILocation(line: 29, column: 10, scope: !5061, inlinedAt: !5076)
!5078 = !DILocation(line: 139, column: 15, scope: !5074)
!5079 = !DILocation(line: 139, column: 32, scope: !5074)
!5080 = !DILocation(line: 140, column: 13, scope: !5074)
!5081 = !DILocation(line: 0, scope: !5040)
!5082 = !DILocation(line: 145, column: 1, scope: !5032)
