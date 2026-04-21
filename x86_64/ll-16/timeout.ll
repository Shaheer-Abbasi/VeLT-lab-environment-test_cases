; ModuleID = 'src/timeout.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@.str.32 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1, !dbg !458
@.str.1.33 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1, !dbg !461
@.str.36 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !466
@Version = dso_local local_unnamed_addr global ptr @.str.36, align 8, !dbg !469
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !473
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !486
@.str.41 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !478
@.str.1.42 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !480
@.str.2.43 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !482
@.str.3.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !484
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !488
@stderr = external local_unnamed_addr global ptr, align 8
@.str.55 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !494
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !526
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !496
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !516
@.str.1.61 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !518
@.str.2.63 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !520
@.str.3.62 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !522
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !524
@.str.4.56 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !528
@.str.5.57 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !530
@.str.6.58 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !532
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !537
@.str.77 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !543
@.str.1.78 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !545
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !547
@.str.81 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !578
@.str.1.82 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !581
@.str.2.83 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !583
@.str.3.84 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !588
@.str.4.85 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !590
@.str.5.86 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !592
@.str.6.87 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !594
@.str.7.88 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !596
@.str.8.89 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !598
@.str.9.90 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !600
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.81, ptr @.str.1.82, ptr @.str.2.83, ptr @.str.3.84, ptr @.str.4.85, ptr @.str.5.86, ptr @.str.6.87, ptr @.str.7.88, ptr @.str.8.89, ptr @.str.9.90, ptr null], align 16, !dbg !602
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !627
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !641
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !679
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !686
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !643
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !688
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !631
@.str.10.93 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !648
@.str.11.91 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !650
@.str.12.94 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !652
@.str.13.92 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !654
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !656
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 16, !dbg !692
@.str.101 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1, !dbg !698
@.str.1.102 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1, !dbg !700
@.str.2.105 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1, !dbg !702
@.str.106 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !712
@.str.1.107 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !715
@.str.2.108 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !717
@.str.3.109 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !719
@.str.4.110 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !721
@.str.5.111 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !723
@.str.6.112 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !728
@.str.7.113 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !730
@.str.8.114 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !732
@.str.9.115 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !734
@.str.10.116 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !739
@.str.11.117 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !741
@.str.12.118 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !746
@.str.13.119 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !748
@.str.14.120 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !753
@.str.15.121 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !758
@.str.16.122 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !763
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.127 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !768
@.str.18.128 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !770
@.str.19.129 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !772
@.str.20.130 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !774
@.str.21.131 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !776
@.str.22.132 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !778
@.str.23.133 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !780
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !785
@exit_failure = dso_local global i32 1, align 4, !dbg !793
@.str.148 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !799
@.str.1.146 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !802
@.str.2.147 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !804
@c_locale_cache = internal global ptr null, align 8, !dbg !806
@.str.151 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !831
@.str.162 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !834
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !837
@.str.1.167 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !852

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !941 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !943, metadata !DIExpression()), !dbg !944
  %2 = icmp eq i32 %0, 0, !dbg !945
  br i1 %2, label %8, label %3, !dbg !947

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !948, !tbaa !950
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !948
  %6 = load ptr, ptr @program_name, align 8, !dbg !948, !tbaa !950
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !948
  br label %48, !dbg !948

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !954
  %10 = load ptr, ptr @program_name, align 8, !dbg !954, !tbaa !950
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #40, !dbg !954
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !956
  %13 = load ptr, ptr @stdout, align 8, !dbg !956, !tbaa !950
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !956
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #40, !dbg !957
  %16 = load ptr, ptr @stdout, align 8, !dbg !957, !tbaa !950
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !957
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !961
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !961
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !962
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !962
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !963
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !963
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !964
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !964
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !965
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !965
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #40, !dbg !966
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !966
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #40, !dbg !967
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !967
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #40, !dbg !968
  %26 = load ptr, ptr @stdout, align 8, !dbg !968, !tbaa !950
  %27 = tail call i32 @fputs_unlocked(ptr noundef %25, ptr noundef %26), !dbg !968
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #40, !dbg !969
  %29 = load ptr, ptr @stdout, align 8, !dbg !969, !tbaa !950
  %30 = tail call i32 @fputs_unlocked(ptr noundef %28, ptr noundef %29), !dbg !969
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #40, !dbg !970
  %32 = load ptr, ptr @stdout, align 8, !dbg !970, !tbaa !950
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !970
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !971, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !983, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata ptr poison, metadata !983, metadata !DIExpression()), !dbg !988
  tail call void @emit_bug_reporting_address() #40, !dbg !990
  %34 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !991
  call void @llvm.dbg.value(metadata ptr %34, metadata !986, metadata !DIExpression()), !dbg !988
  %35 = icmp eq ptr %34, null, !dbg !992
  br i1 %35, label %43, label %36, !dbg !994

36:                                               ; preds = %8
  %37 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(4) @.str.58, i64 noundef 3) #41, !dbg !995
  %38 = icmp eq i32 %37, 0, !dbg !995
  br i1 %38, label %43, label %39, !dbg !996

39:                                               ; preds = %36
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #40, !dbg !997
  %41 = load ptr, ptr @stdout, align 8, !dbg !997, !tbaa !950
  %42 = tail call i32 @fputs_unlocked(ptr noundef %40, ptr noundef %41), !dbg !997
  br label %43, !dbg !999

43:                                               ; preds = %8, %36, %39
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !983, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !987, metadata !DIExpression()), !dbg !988
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #40, !dbg !1000
  %45 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %44, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.3) #40, !dbg !1000
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #40, !dbg !1001
  %47 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %46, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.62) #40, !dbg !1001
  br label %48

48:                                               ; preds = %43, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !1002
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
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !208, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata ptr %0, metadata !209, metadata !DIExpression()), !dbg !1020
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1021, !tbaa !1022
  %3 = icmp eq i32 %2, -1, !dbg !1024
  br i1 %3, label %4, label %16, !dbg !1025

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.28) #40, !dbg !1026
  call void @llvm.dbg.value(metadata ptr %5, metadata !210, metadata !DIExpression()), !dbg !1027
  %6 = icmp eq ptr %5, null, !dbg !1028
  br i1 %6, label %14, label %7, !dbg !1029

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1030, !tbaa !1031
  %9 = icmp eq i8 %8, 0, !dbg !1030
  br i1 %9, label %14, label %10, !dbg !1032

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1033, metadata !DIExpression()), !dbg !1040
  call void @llvm.dbg.value(metadata ptr @.str.29, metadata !1039, metadata !DIExpression()), !dbg !1040
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.29) #41, !dbg !1042
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
  br label %128, !dbg !1051

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !213, metadata !DIExpression()), !dbg !1020
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.30) #41, !dbg !1052
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1053
  call void @llvm.dbg.value(metadata ptr %24, metadata !214, metadata !DIExpression()), !dbg !1020
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !1054
  call void @llvm.dbg.value(metadata ptr %25, metadata !215, metadata !DIExpression()), !dbg !1020
  %26 = icmp eq ptr %25, null, !dbg !1055
  br i1 %26, label %58, label %27, !dbg !1056

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1057
  br i1 %28, label %58, label %29, !dbg !1058

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !216, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i64 0, metadata !220, metadata !DIExpression()), !dbg !1059
  %30 = icmp ult ptr %24, %25, !dbg !1060
  br i1 %30, label %31, label %52, !dbg !1061

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !1020
  %33 = load ptr, ptr %32, align 8, !tbaa !950
  br label %34, !dbg !1061

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !216, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %36, metadata !220, metadata !DIExpression()), !dbg !1059
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1062
  call void @llvm.dbg.value(metadata ptr %37, metadata !216, metadata !DIExpression()), !dbg !1059
  %38 = load i8, ptr %35, align 1, !dbg !1062, !tbaa !1031
  %39 = sext i8 %38 to i64, !dbg !1062
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1062
  %41 = load i16, ptr %40, align 2, !dbg !1062, !tbaa !1063
  %42 = freeze i16 %41, !dbg !1065
  %43 = lshr i16 %42, 13, !dbg !1065
  %44 = and i16 %43, 1, !dbg !1065
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1066
  call void @llvm.dbg.value(metadata i64 %46, metadata !220, metadata !DIExpression()), !dbg !1059
  %47 = icmp ult ptr %37, %25, !dbg !1060
  %48 = icmp ult i64 %46, 2, !dbg !1067
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1067
  br i1 %49, label %34, label %50, !dbg !1061, !llvm.loop !1068

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1070
  br i1 %51, label %52, label %54, !dbg !1072

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1072

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !1072
  call void @llvm.dbg.value(metadata i8 %57, metadata !213, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata ptr %56, metadata !215, metadata !DIExpression()), !dbg !1020
  br label %58, !dbg !1073

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !1020
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !1020
  call void @llvm.dbg.value(metadata i8 %60, metadata !213, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata ptr %59, metadata !215, metadata !DIExpression()), !dbg !1020
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.31) #41, !dbg !1074
  call void @llvm.dbg.value(metadata i64 %61, metadata !221, metadata !DIExpression()), !dbg !1020
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !1075
  call void @llvm.dbg.value(metadata ptr %62, metadata !222, metadata !DIExpression()), !dbg !1020
  br label %63, !dbg !1076

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !1020
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !1020
  call void @llvm.dbg.value(metadata i8 %65, metadata !213, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata ptr %64, metadata !222, metadata !DIExpression()), !dbg !1020
  %66 = load i8, ptr %64, align 1, !dbg !1077, !tbaa !1031
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !1078

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1079
  %69 = load i8, ptr %68, align 1, !dbg !1082, !tbaa !1031
  %70 = icmp eq i8 %69, 45, !dbg !1083
  %71 = select i1 %70, i8 0, i8 %65, !dbg !1084
  br label %72, !dbg !1084

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !1020
  call void @llvm.dbg.value(metadata i8 %73, metadata !213, metadata !DIExpression()), !dbg !1020
  %74 = tail call ptr @__ctype_b_loc() #43, !dbg !1085
  %75 = load ptr, ptr %74, align 8, !dbg !1085, !tbaa !950
  %76 = sext i8 %66 to i64, !dbg !1085
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !1085
  %78 = load i16, ptr %77, align 2, !dbg !1085, !tbaa !1063
  %79 = and i16 %78, 8192, !dbg !1085
  %80 = icmp eq i16 %79, 0, !dbg !1085
  br i1 %80, label %96, label %81, !dbg !1087

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !1088
  br i1 %82, label %98, label %83, !dbg !1091

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1092
  %85 = load i8, ptr %84, align 1, !dbg !1092, !tbaa !1031
  %86 = sext i8 %85 to i64, !dbg !1092
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !1092
  %88 = load i16, ptr %87, align 2, !dbg !1092, !tbaa !1063
  %89 = and i16 %88, 8192, !dbg !1092
  %90 = icmp eq i16 %89, 0, !dbg !1092
  br i1 %90, label %91, label %98, !dbg !1093

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !1094
  %93 = icmp ne i8 %92, 0, !dbg !1094
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1096
  br i1 %95, label %96, label %98, !dbg !1096

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1097
  call void @llvm.dbg.value(metadata ptr %97, metadata !222, metadata !DIExpression()), !dbg !1020
  br label %63, !dbg !1076, !llvm.loop !1098

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1100
  %100 = load ptr, ptr @stdout, align 8, !dbg !1100, !tbaa !950
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1100
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1033, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1033, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1033, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1033, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1033, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1033, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1033, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1033, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1033, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1033, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !277, metadata !DIExpression()), !dbg !1020
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.45, i64 noundef 6) #41, !dbg !1121
  %103 = icmp eq i32 %102, 0, !dbg !1121
  br i1 %103, label %107, label %104, !dbg !1123

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.46, i64 noundef 9) #41, !dbg !1124
  %106 = icmp eq i32 %105, 0, !dbg !1124
  br i1 %106, label %107, label %110, !dbg !1125

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1126
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #40, !dbg !1126
  br label %113, !dbg !1128

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1129
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #40, !dbg !1129
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1131, !tbaa !950
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.51, ptr noundef %114), !dbg !1131
  %116 = load ptr, ptr @stdout, align 8, !dbg !1132, !tbaa !950
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.52, ptr noundef %116), !dbg !1132
  %118 = ptrtoint ptr %64 to i64, !dbg !1133
  %119 = sub i64 %118, %99, !dbg !1133
  %120 = load ptr, ptr @stdout, align 8, !dbg !1133, !tbaa !950
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1133
  %122 = load ptr, ptr @stdout, align 8, !dbg !1134, !tbaa !950
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.53, ptr noundef %122), !dbg !1134
  %124 = load ptr, ptr @stdout, align 8, !dbg !1135, !tbaa !950
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.54, ptr noundef %124), !dbg !1135
  %126 = load ptr, ptr @stdout, align 8, !dbg !1136, !tbaa !950
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1136
  br label %128, !dbg !1137

128:                                              ; preds = %113, %19
  ret void, !dbg !1137
}

; Function Attrs: nounwind
declare !dbg !1138 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1142 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1146 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1148 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1151 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1154 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1157 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1160 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1164 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1165 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1171 {
  %3 = alloca %struct.sigaction, align 8
  %4 = alloca %struct.sigaction, align 8
  %5 = alloca %struct.__sigset_t, align 8
  %6 = alloca %struct.sigaction, align 8
  %7 = alloca %struct.sigaction, align 8
  %8 = alloca %struct.sigaction, align 8
  %9 = alloca %struct.sigaction, align 8
  %10 = alloca %struct.__sigset_t, align 8
  %11 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1176, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata ptr %1, metadata !1177, metadata !DIExpression()), !dbg !1203
  %12 = load ptr, ptr %1, align 8, !dbg !1204, !tbaa !950
  tail call void @set_program_name(ptr noundef %12) #40, !dbg !1205
  %13 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.14) #40, !dbg !1206
  %14 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #40, !dbg !1207
  %15 = tail call ptr @textdomain(ptr noundef nonnull @.str.15) #40, !dbg !1208
  call void @llvm.dbg.value(metadata i32 125, metadata !1209, metadata !DIExpression()), !dbg !1212
  store volatile i32 125, ptr @exit_failure, align 4, !dbg !1214, !tbaa !1022
  %16 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1216
  br label %17, !dbg !1217

17:                                               ; preds = %28, %2
  %18 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @long_options, ptr noundef null) #40, !dbg !1218
  call void @llvm.dbg.value(metadata i32 %18, metadata !1179, metadata !DIExpression()), !dbg !1203
  switch i32 %18, label %36 [
    i32 -1, label %37
    i32 102, label %19
    i32 107, label %20
    i32 112, label %23
    i32 115, label %24
    i32 118, label %30
    i32 -130, label %31
    i32 -131, label %32
  ], !dbg !1217

19:                                               ; preds = %17
  store i1 true, ptr @foreground, align 1, !dbg !1219
  br label %28, !dbg !1222

20:                                               ; preds = %17
  %21 = load ptr, ptr @optarg, align 8, !dbg !1223, !tbaa !950
  %22 = tail call fastcc double @parse_duration(ptr noundef %21), !dbg !1224
  store double %22, ptr @kill_after, align 8, !dbg !1225, !tbaa !1226
  br label %28, !dbg !1228

23:                                               ; preds = %17
  store i1 true, ptr @preserve_status, align 1, !dbg !1229
  br label %28, !dbg !1230

24:                                               ; preds = %17
  %25 = load ptr, ptr @optarg, align 8, !dbg !1231, !tbaa !950
  %26 = tail call i32 @operand2sig(ptr noundef %25) #40, !dbg !1232
  store i32 %26, ptr @term_signal, align 4, !dbg !1233, !tbaa !1022
  %27 = icmp eq i32 %26, -1, !dbg !1234
  br i1 %27, label %29, label %28, !dbg !1236

28:                                               ; preds = %24, %30, %23, %20, %19
  br label %17, !dbg !1218, !llvm.loop !1237

29:                                               ; preds = %24
  tail call void @usage(i32 noundef 125) #44, !dbg !1239
  unreachable, !dbg !1239

30:                                               ; preds = %17
  store i1 true, ptr @verbose, align 1, !dbg !1240
  br label %28, !dbg !1241

31:                                               ; preds = %17
  tail call void @usage(i32 noundef 0) #44, !dbg !1242
  unreachable, !dbg !1242

32:                                               ; preds = %17
  %33 = load ptr, ptr @stdout, align 8, !dbg !1243, !tbaa !950
  %34 = load ptr, ptr @Version, align 8, !dbg !1243, !tbaa !950
  %35 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #40, !dbg !1243
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18, ptr noundef %34, ptr noundef %35, ptr noundef null) #40, !dbg !1243
  tail call void @exit(i32 noundef 0) #42, !dbg !1243
  unreachable, !dbg !1243

36:                                               ; preds = %17
  tail call void @usage(i32 noundef 125) #44, !dbg !1244
  unreachable, !dbg !1244

37:                                               ; preds = %17
  %38 = load i32, ptr @optind, align 4, !dbg !1245, !tbaa !1022
  %39 = sub nsw i32 %0, %38, !dbg !1247
  %40 = icmp slt i32 %39, 2, !dbg !1248
  br i1 %40, label %41, label %42, !dbg !1249

41:                                               ; preds = %37
  tail call void @usage(i32 noundef 125) #44, !dbg !1250
  unreachable, !dbg !1250

42:                                               ; preds = %37
  %43 = add nsw i32 %38, 1, !dbg !1251
  store i32 %43, ptr @optind, align 4, !dbg !1251, !tbaa !1022
  %44 = sext i32 %38 to i64, !dbg !1252
  %45 = getelementptr inbounds ptr, ptr %1, i64 %44, !dbg !1252
  %46 = load ptr, ptr %45, align 8, !dbg !1252, !tbaa !950
  %47 = tail call fastcc double @parse_duration(ptr noundef %46), !dbg !1253
  call void @llvm.dbg.value(metadata double %47, metadata !1178, metadata !DIExpression()), !dbg !1203
  %48 = load i32, ptr @optind, align 4, !dbg !1254, !tbaa !1022
  %49 = sext i32 %48 to i64, !dbg !1255
  %50 = getelementptr inbounds ptr, ptr %1, i64 %49, !dbg !1255
  call void @llvm.dbg.value(metadata ptr %50, metadata !1177, metadata !DIExpression()), !dbg !1203
  %51 = load ptr, ptr %50, align 8, !dbg !1256, !tbaa !950
  store ptr %51, ptr @command, align 8, !dbg !1257, !tbaa !950
  %52 = load i1, ptr @foreground, align 1, !dbg !1258
  br i1 %52, label %55, label %53, !dbg !1260

53:                                               ; preds = %42
  %54 = tail call i32 @setpgid(i32 noundef 0, i32 noundef 0) #40, !dbg !1261
  br label %55, !dbg !1261

55:                                               ; preds = %53, %42
  %56 = load i32, ptr @term_signal, align 4, !dbg !1262, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %56, metadata !1263, metadata !DIExpression()), !dbg !1358
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %9) #40, !dbg !1360
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1266, metadata !DIExpression()), !dbg !1361
  %57 = getelementptr inbounds %struct.sigaction, ptr %9, i64 0, i32 1, !dbg !1362
  %58 = call i32 @sigemptyset(ptr noundef nonnull %57) #40, !dbg !1363
  store ptr @cleanup, ptr %9, align 8, !dbg !1364, !tbaa !1031
  %59 = getelementptr inbounds %struct.sigaction, ptr %9, i64 0, i32 2, !dbg !1365
  store i32 268435456, ptr %59, align 8, !dbg !1366, !tbaa !1367
  call void @llvm.dbg.value(metadata i32 0, metadata !1354, metadata !DIExpression()), !dbg !1370
  br label %64, !dbg !1371

60:                                               ; preds = %77
  %61 = call i32 @__libc_current_sigrtmin() #40, !dbg !1372
  call void @llvm.dbg.value(metadata i32 %61, metadata !1356, metadata !DIExpression()), !dbg !1373
  %62 = call i32 @__libc_current_sigrtmax() #40, !dbg !1374
  %63 = icmp sgt i32 %61, %62, !dbg !1376
  br i1 %63, label %95, label %80, !dbg !1377

64:                                               ; preds = %77, %55
  %65 = phi i64 [ 0, %55 ], [ %78, %77 ]
  call void @llvm.dbg.value(metadata i64 %65, metadata !1354, metadata !DIExpression()), !dbg !1370
  %66 = getelementptr inbounds [22 x i32], ptr @term_sig, i64 0, i64 %65, !dbg !1378
  %67 = load i32, ptr %66, align 4, !dbg !1378, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %67, metadata !1381, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %56, metadata !1386, metadata !DIExpression()), !dbg !1389
  %68 = icmp eq i64 %65, 0, !dbg !1391
  %69 = icmp eq i32 %67, %56
  %70 = or i1 %68, %69, !dbg !1393
  br i1 %70, label %75, label %71, !dbg !1393

71:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %8) #40, !dbg !1394
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1387, metadata !DIExpression()), !dbg !1395
  %72 = call i32 @sigaction(i32 noundef %67, ptr noundef null, ptr noundef nonnull %8) #40, !dbg !1396
  %73 = load ptr, ptr %8, align 8, !dbg !1397, !tbaa !1031
  %74 = icmp eq ptr %73, inttoptr (i64 1 to ptr), !dbg !1398
  call void @llvm.dbg.value(metadata i1 %74, metadata !1388, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1389
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %8) #40, !dbg !1399
  br i1 %74, label %77, label %75, !dbg !1400

75:                                               ; preds = %71, %64
  %76 = call i32 @sigaction(i32 noundef %67, ptr noundef nonnull %9, ptr noundef null) #40, !dbg !1401
  br label %77, !dbg !1401

77:                                               ; preds = %75, %71
  %78 = add nuw nsw i64 %65, 1, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %78, metadata !1354, metadata !DIExpression()), !dbg !1370
  %79 = icmp eq i64 %78, 22, !dbg !1403
  br i1 %79, label %60, label %64, !dbg !1371, !llvm.loop !1404

80:                                               ; preds = %60, %91
  %81 = phi i32 [ %92, %91 ], [ %61, %60 ]
  call void @llvm.dbg.value(metadata i32 %81, metadata !1356, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i32 %81, metadata !1381, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i32 %56, metadata !1386, metadata !DIExpression()), !dbg !1406
  %82 = icmp eq i32 %81, 14, !dbg !1409
  %83 = icmp eq i32 %81, %56
  %84 = or i1 %82, %83, !dbg !1410
  br i1 %84, label %89, label %85, !dbg !1410

85:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %7) #40, !dbg !1411
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1387, metadata !DIExpression()), !dbg !1412
  %86 = call i32 @sigaction(i32 noundef %81, ptr noundef null, ptr noundef nonnull %7) #40, !dbg !1413
  %87 = load ptr, ptr %7, align 8, !dbg !1414, !tbaa !1031
  %88 = icmp eq ptr %87, inttoptr (i64 1 to ptr), !dbg !1415
  call void @llvm.dbg.value(metadata i1 %88, metadata !1388, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1406
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %7) #40, !dbg !1416
  br i1 %88, label %91, label %89, !dbg !1417

89:                                               ; preds = %85, %80
  %90 = call i32 @sigaction(i32 noundef %81, ptr noundef nonnull %9, ptr noundef null) #40, !dbg !1418
  br label %91, !dbg !1418

91:                                               ; preds = %89, %85
  %92 = add nsw i32 %81, 1, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %92, metadata !1356, metadata !DIExpression()), !dbg !1373
  %93 = call i32 @__libc_current_sigrtmax() #40, !dbg !1374
  %94 = icmp slt i32 %81, %93, !dbg !1376
  br i1 %94, label %80, label %95, !dbg !1377, !llvm.loop !1420

95:                                               ; preds = %91, %60
  %96 = call i32 @sigaction(i32 noundef %56, ptr noundef nonnull %9, ptr noundef null) #40, !dbg !1422
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %9) #40, !dbg !1423
  %97 = call ptr @signal(i32 noundef 21, ptr noundef nonnull inttoptr (i64 1 to ptr)) #40, !dbg !1424
  %98 = call ptr @signal(i32 noundef 22, ptr noundef nonnull inttoptr (i64 1 to ptr)) #40, !dbg !1425
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %6) #40, !dbg !1426
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1429, metadata !DIExpression()), !dbg !1431
  %99 = getelementptr inbounds %struct.sigaction, ptr %6, i64 0, i32 1, !dbg !1432
  %100 = call i32 @sigemptyset(ptr noundef nonnull %99) #40, !dbg !1433
  store ptr @chld, ptr %6, align 8, !dbg !1434, !tbaa !1031
  %101 = getelementptr inbounds %struct.sigaction, ptr %6, i64 0, i32 2, !dbg !1435
  store i32 268435456, ptr %101, align 8, !dbg !1436, !tbaa !1367
  %102 = call i32 @sigaction(i32 noundef 17, ptr noundef nonnull %6, ptr noundef null) #40, !dbg !1437
  call fastcc void @unblock_signal(i32 noundef 17), !dbg !1438
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %6) #40, !dbg !1439
  call fastcc void @unblock_signal(i32 noundef 14), !dbg !1440
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #40, !dbg !1441
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1180, metadata !DIExpression()), !dbg !1442
  %103 = load i32, ptr @term_signal, align 4, !dbg !1443, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %103, metadata !1444, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata ptr %10, metadata !1450, metadata !DIExpression()), !dbg !1456
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #40, !dbg !1458
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1451, metadata !DIExpression()), !dbg !1459
  %104 = call i32 @sigemptyset(ptr noundef nonnull %5) #40, !dbg !1460
  call void @llvm.dbg.value(metadata i32 0, metadata !1452, metadata !DIExpression()), !dbg !1461
  br label %109, !dbg !1462

105:                                              ; preds = %122
  %106 = call i32 @__libc_current_sigrtmin() #40, !dbg !1463
  call void @llvm.dbg.value(metadata i32 %106, metadata !1454, metadata !DIExpression()), !dbg !1464
  %107 = call i32 @__libc_current_sigrtmax() #40, !dbg !1465
  %108 = icmp sgt i32 %106, %107, !dbg !1467
  br i1 %108, label %125, label %130, !dbg !1468

109:                                              ; preds = %122, %95
  %110 = phi i64 [ 0, %95 ], [ %123, %122 ]
  call void @llvm.dbg.value(metadata i64 %110, metadata !1452, metadata !DIExpression()), !dbg !1461
  %111 = getelementptr inbounds [22 x i32], ptr @term_sig, i64 0, i64 %110, !dbg !1469
  %112 = load i32, ptr %111, align 4, !dbg !1469, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %112, metadata !1381, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i32 %103, metadata !1386, metadata !DIExpression()), !dbg !1472
  %113 = icmp eq i64 %110, 0, !dbg !1474
  %114 = icmp eq i32 %112, %103
  %115 = or i1 %113, %114, !dbg !1475
  br i1 %115, label %120, label %116, !dbg !1475

116:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %4) #40, !dbg !1476
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1387, metadata !DIExpression()), !dbg !1477
  %117 = call i32 @sigaction(i32 noundef %112, ptr noundef null, ptr noundef nonnull %4) #40, !dbg !1478
  %118 = load ptr, ptr %4, align 8, !dbg !1479, !tbaa !1031
  %119 = icmp eq ptr %118, inttoptr (i64 1 to ptr), !dbg !1480
  call void @llvm.dbg.value(metadata i1 %119, metadata !1388, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1472
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %4) #40, !dbg !1481
  br i1 %119, label %122, label %120, !dbg !1482

120:                                              ; preds = %116, %109
  %121 = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef %112) #40, !dbg !1483
  br label %122, !dbg !1483

122:                                              ; preds = %120, %116
  %123 = add nuw nsw i64 %110, 1, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %123, metadata !1452, metadata !DIExpression()), !dbg !1461
  %124 = icmp eq i64 %123, 22, !dbg !1485
  br i1 %124, label %105, label %109, !dbg !1462, !llvm.loop !1486

125:                                              ; preds = %141, %105
  %126 = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef %103) #40, !dbg !1488
  %127 = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef 17) #40, !dbg !1489
  %128 = call i32 @sigprocmask(i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %10) #40, !dbg !1490
  %129 = icmp eq i32 %128, 0, !dbg !1492
  br i1 %129, label %149, label %145, !dbg !1493

130:                                              ; preds = %105, %141
  %131 = phi i32 [ %142, %141 ], [ %106, %105 ]
  call void @llvm.dbg.value(metadata i32 %131, metadata !1454, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i32 %131, metadata !1381, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i32 %103, metadata !1386, metadata !DIExpression()), !dbg !1494
  %132 = icmp eq i32 %131, 14, !dbg !1497
  %133 = icmp eq i32 %131, %103
  %134 = or i1 %132, %133, !dbg !1498
  br i1 %134, label %139, label %135, !dbg !1498

135:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %3) #40, !dbg !1499
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1387, metadata !DIExpression()), !dbg !1500
  %136 = call i32 @sigaction(i32 noundef %131, ptr noundef null, ptr noundef nonnull %3) #40, !dbg !1501
  %137 = load ptr, ptr %3, align 8, !dbg !1502, !tbaa !1031
  %138 = icmp eq ptr %137, inttoptr (i64 1 to ptr), !dbg !1503
  call void @llvm.dbg.value(metadata i1 %138, metadata !1388, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1494
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %3) #40, !dbg !1504
  br i1 %138, label %141, label %139, !dbg !1505

139:                                              ; preds = %135, %130
  %140 = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef %131) #40, !dbg !1506
  br label %141, !dbg !1506

141:                                              ; preds = %139, %135
  %142 = add nsw i32 %131, 1, !dbg !1507
  call void @llvm.dbg.value(metadata i32 %142, metadata !1454, metadata !DIExpression()), !dbg !1464
  %143 = call i32 @__libc_current_sigrtmax() #40, !dbg !1465
  %144 = icmp slt i32 %131, %143, !dbg !1467
  br i1 %144, label %130, label %125, !dbg !1468, !llvm.loop !1508

145:                                              ; preds = %125
  %146 = tail call ptr @__errno_location() #43, !dbg !1510
  %147 = load i32, ptr %146, align 4, !dbg !1510, !tbaa !1022
  %148 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.73, i32 noundef 5) #40, !dbg !1510
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %147, ptr noundef %148) #40, !dbg !1510
  br label %149, !dbg !1510

149:                                              ; preds = %125, %145
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #40, !dbg !1511
  %150 = call i32 @getpid() #40, !dbg !1512
  call void @llvm.dbg.value(metadata i32 %150, metadata !1189, metadata !DIExpression()), !dbg !1203
  %151 = call i32 @fork() #40, !dbg !1513
  store i32 %151, ptr @monitored_pid, align 4, !dbg !1514, !tbaa !1022
  switch i32 %151, label %180 [
    i32 -1, label %152
    i32 0, label %156
  ], !dbg !1515

152:                                              ; preds = %149
  %153 = tail call ptr @__errno_location() #43, !dbg !1516
  %154 = load i32, ptr %153, align 4, !dbg !1516, !tbaa !1022
  %155 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #40, !dbg !1516
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %154, ptr noundef %155) #40, !dbg !1516
  br label %240, !dbg !1518

156:                                              ; preds = %149
  %157 = load i32, ptr @term_signal, align 4, !dbg !1519, !tbaa !1022
  %158 = call i32 (i32, ...) @prctl(i32 noundef 1, i32 noundef %157) #40, !dbg !1520
  %159 = call i32 @getppid() #40, !dbg !1521
  %160 = icmp eq i32 %159, %150, !dbg !1523
  br i1 %160, label %161, label %240, !dbg !1524

161:                                              ; preds = %156
  %162 = call i32 @sigprocmask(i32 noundef 2, ptr noundef nonnull %10, ptr noundef null) #40, !dbg !1525
  %163 = icmp eq i32 %162, 0, !dbg !1527
  br i1 %163, label %168, label %164, !dbg !1528

164:                                              ; preds = %161
  %165 = tail call ptr @__errno_location() #43, !dbg !1529
  %166 = load i32, ptr %165, align 4, !dbg !1529, !tbaa !1022
  %167 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #40, !dbg !1529
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %166, ptr noundef %167) #40, !dbg !1529
  br label %240, !dbg !1531

168:                                              ; preds = %161
  %169 = call ptr @signal(i32 noundef 21, ptr noundef null) #40, !dbg !1532
  %170 = call ptr @signal(i32 noundef 22, ptr noundef null) #40, !dbg !1533
  %171 = load ptr, ptr %50, align 8, !dbg !1534, !tbaa !950
  %172 = call i32 @execvp(ptr noundef %171, ptr noundef nonnull %50) #40, !dbg !1535
  %173 = tail call ptr @__errno_location() #43, !dbg !1536
  %174 = load i32, ptr %173, align 4, !dbg !1536, !tbaa !1022
  %175 = icmp eq i32 %174, 2, !dbg !1537
  %176 = select i1 %175, i32 127, i32 126, !dbg !1536
  call void @llvm.dbg.value(metadata i32 %176, metadata !1190, metadata !DIExpression()), !dbg !1538
  %177 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #40, !dbg !1539
  %178 = load ptr, ptr @command, align 8, !dbg !1539, !tbaa !950
  %179 = call ptr @quote(ptr noundef %178) #40, !dbg !1539
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %174, ptr noundef %177, ptr noundef %179) #40, !dbg !1539
  br label %240

180:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #40, !dbg !1540
  call fastcc void @settimeout(double noundef %47, i1 noundef zeroext true), !dbg !1541
  %181 = load i32, ptr @monitored_pid, align 4, !dbg !1542, !tbaa !1022
  call void @llvm.dbg.value(metadata ptr %11, metadata !1196, metadata !DIExpression(DW_OP_deref)), !dbg !1543
  %182 = call i32 @waitpid(i32 noundef %181, ptr noundef nonnull %11, i32 noundef 1) #40, !dbg !1544
  call void @llvm.dbg.value(metadata i32 %182, metadata !1194, metadata !DIExpression()), !dbg !1543
  %183 = icmp eq i32 %182, 0, !dbg !1545
  br i1 %183, label %184, label %189, !dbg !1546

184:                                              ; preds = %180, %184
  %185 = call i32 @sigsuspend(ptr noundef nonnull %10) #40, !dbg !1547
  %186 = load i32, ptr @monitored_pid, align 4, !dbg !1542, !tbaa !1022
  call void @llvm.dbg.value(metadata ptr %11, metadata !1196, metadata !DIExpression(DW_OP_deref)), !dbg !1543
  %187 = call i32 @waitpid(i32 noundef %186, ptr noundef nonnull %11, i32 noundef 1) #40, !dbg !1544
  call void @llvm.dbg.value(metadata i32 %187, metadata !1194, metadata !DIExpression()), !dbg !1543
  %188 = icmp eq i32 %187, 0, !dbg !1545
  br i1 %188, label %184, label %189, !dbg !1546, !llvm.loop !1548

189:                                              ; preds = %184, %180
  %190 = phi i32 [ %182, %180 ], [ %187, %184 ], !dbg !1544
  %191 = icmp slt i32 %190, 0, !dbg !1550
  br i1 %191, label %192, label %196, !dbg !1551

192:                                              ; preds = %189
  %193 = tail call ptr @__errno_location() #43, !dbg !1552
  %194 = load i32, ptr %193, align 4, !dbg !1552, !tbaa !1022
  %195 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #40, !dbg !1552
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %194, ptr noundef %195) #40, !dbg !1552
  call void @llvm.dbg.value(metadata i32 125, metadata !1196, metadata !DIExpression()), !dbg !1543
  br label %234, !dbg !1554

196:                                              ; preds = %189
  %197 = load i32, ptr %11, align 4, !dbg !1555, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %197, metadata !1196, metadata !DIExpression()), !dbg !1543
  %198 = and i32 %197, 127, !dbg !1555
  %199 = icmp eq i32 %198, 0, !dbg !1555
  br i1 %199, label %200, label %203, !dbg !1556

200:                                              ; preds = %196
  %201 = lshr i32 %197, 8
  %202 = and i32 %201, 255
  call void @llvm.dbg.value(metadata i32 %202, metadata !1196, metadata !DIExpression()), !dbg !1543
  br label %234, !dbg !1557

203:                                              ; preds = %196
  %204 = shl nuw nsw i32 %198, 24, !dbg !1558
  %205 = add nuw i32 %204, 16777216, !dbg !1558
  %206 = icmp sgt i32 %205, 33554431, !dbg !1558
  br i1 %206, label %207, label %231, !dbg !1559

207:                                              ; preds = %203
  call void @llvm.dbg.value(metadata i32 %198, metadata !1197, metadata !DIExpression()), !dbg !1560
  %208 = and i32 %197, 128, !dbg !1561
  %209 = icmp eq i32 %208, 0, !dbg !1561
  br i1 %209, label %212, label %210, !dbg !1563

210:                                              ; preds = %207
  %211 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #40, !dbg !1564
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %211) #40, !dbg !1564
  br label %212, !dbg !1564

212:                                              ; preds = %210, %207
  %213 = load i1, ptr @timed_out, align 4, !dbg !1565
  br i1 %213, label %224, label %214, !dbg !1567

214:                                              ; preds = %212
  %215 = call i32 (i32, ...) @prctl(i32 noundef 4, i32 noundef 0) #40, !dbg !1568
  %216 = icmp eq i32 %215, 0, !dbg !1574
  br i1 %216, label %221, label %217, !dbg !1575

217:                                              ; preds = %214
  %218 = tail call ptr @__errno_location() #43, !dbg !1576
  %219 = load i32, ptr %218, align 4, !dbg !1576, !tbaa !1022
  %220 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.76, i32 noundef 5) #40, !dbg !1576
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %219, ptr noundef %220) #40, !dbg !1576
  br label %224, !dbg !1577

221:                                              ; preds = %214
  %222 = call ptr @signal(i32 noundef %198, ptr noundef null) #40, !dbg !1578
  call fastcc void @unblock_signal(i32 noundef %198), !dbg !1580
  %223 = call i32 @raise(i32 noundef %198) #40, !dbg !1581
  br label %224, !dbg !1582

224:                                              ; preds = %217, %221, %212
  %225 = load i1, ptr @timed_out, align 4, !dbg !1583
  %226 = icmp eq i32 %198, 9
  %227 = select i1 %225, i1 %226, i1 false, !dbg !1585
  br i1 %227, label %228, label %229, !dbg !1585

228:                                              ; preds = %224
  store i1 true, ptr @preserve_status, align 1, !dbg !1586
  br label %229, !dbg !1587

229:                                              ; preds = %228, %224
  %230 = or i32 %198, 128, !dbg !1588
  call void @llvm.dbg.value(metadata i32 %230, metadata !1196, metadata !DIExpression()), !dbg !1543
  br label %234, !dbg !1589

231:                                              ; preds = %203
  %232 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #40, !dbg !1590
  %233 = load i32, ptr %11, align 4, !dbg !1590, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %233, metadata !1196, metadata !DIExpression()), !dbg !1543
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %232, i32 noundef %233) #40, !dbg !1590
  call void @llvm.dbg.value(metadata i32 1, metadata !1196, metadata !DIExpression()), !dbg !1543
  br label %234

234:                                              ; preds = %200, %231, %229, %192
  %235 = phi i32 [ %202, %200 ], [ 1, %231 ], [ %230, %229 ], [ 125, %192 ]
  %236 = load i1, ptr @timed_out, align 4, !dbg !1592
  %237 = load i1, ptr @preserve_status, align 1, !dbg !1594
  %238 = select i1 %237, i32 %235, i32 124, !dbg !1594
  %239 = select i1 %236, i32 %238, i32 %235, !dbg !1594
  call void @llvm.dbg.value(metadata i32 %239, metadata !1196, metadata !DIExpression()), !dbg !1543
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #40, !dbg !1595
  br label %240

240:                                              ; preds = %156, %234, %168, %164, %152
  %241 = phi i32 [ 125, %152 ], [ 125, %164 ], [ %176, %168 ], [ %239, %234 ], [ 125, %156 ], !dbg !1596
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #40, !dbg !1597
  ret i32 %241, !dbg !1597
}

; Function Attrs: nounwind
declare !dbg !1598 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1601 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1602 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1605 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc double @parse_duration(ptr noundef %0) unnamed_addr #10 !dbg !1611 {
  %2 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1615, metadata !DIExpression()), !dbg !1619
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #40, !dbg !1620
  %3 = tail call ptr @__errno_location() #43, !dbg !1621
  store i32 0, ptr %3, align 4, !dbg !1622, !tbaa !1022
  call void @llvm.dbg.value(metadata ptr %2, metadata !1616, metadata !DIExpression(DW_OP_deref)), !dbg !1619
  %4 = call double @cl_strtod(ptr noundef %0, ptr noundef nonnull %2) #40, !dbg !1623
  call void @llvm.dbg.value(metadata double %4, metadata !1617, metadata !DIExpression()), !dbg !1619
  %5 = load i32, ptr %3, align 4, !dbg !1624, !tbaa !1022
  call void @llvm.dbg.value(metadata double %4, metadata !1625, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i32 %5, metadata !1631, metadata !DIExpression()), !dbg !1633
  %6 = icmp eq i32 %5, 34, !dbg !1635
  %7 = fcmp oeq double %4, 0.000000e+00
  %8 = and i1 %7, %6, !dbg !1637
  %9 = call double @llvm.copysign.f64(double 4.940660e-324, double %4), !dbg !1637
  %10 = call double @llvm.fmuladd.f64(double %4, double 0x3CA0000000000001, double %4), !dbg !1637
  %11 = select i1 %8, double %9, double %10, !dbg !1637
  call void @llvm.dbg.value(metadata double %11, metadata !1618, metadata !DIExpression()), !dbg !1619
  %12 = load ptr, ptr %2, align 8, !dbg !1638, !tbaa !950
  call void @llvm.dbg.value(metadata ptr %12, metadata !1616, metadata !DIExpression()), !dbg !1619
  %13 = icmp ne ptr %12, %0, !dbg !1640
  %14 = fcmp oge double %11, 0.000000e+00
  %15 = select i1 %13, i1 %14, i1 false, !dbg !1641
  br i1 %15, label %16, label %28, !dbg !1641

16:                                               ; preds = %1
  %17 = load i8, ptr %12, align 1, !dbg !1642, !tbaa !1031
  %18 = icmp eq i8 %17, 0, !dbg !1642
  br i1 %18, label %31, label %19, !dbg !1643

19:                                               ; preds = %16
  %20 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !1644
  %21 = load i8, ptr %20, align 1, !dbg !1645, !tbaa !1031
  %22 = icmp eq i8 %21, 0, !dbg !1645
  br i1 %22, label %23, label %28, !dbg !1646

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr %12, metadata !1616, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata ptr undef, metadata !1647, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8 %17, metadata !1653, metadata !DIExpression()), !dbg !1655
  %24 = sext i8 %17 to i32, !dbg !1657
  switch i32 %24, label %28 [
    i32 0, label %31
    i32 115, label %31
    i32 109, label %25
    i32 104, label %26
    i32 100, label %27
  ], !dbg !1658

25:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 60, metadata !1654, metadata !DIExpression()), !dbg !1655
  br label %31, !dbg !1659

26:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 3600, metadata !1654, metadata !DIExpression()), !dbg !1655
  br label %31, !dbg !1661

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 86400, metadata !1654, metadata !DIExpression()), !dbg !1655
  br label %31, !dbg !1662

28:                                               ; preds = %23, %19, %1
  %29 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.70, i32 noundef 5) #40, !dbg !1663
  %30 = call ptr @quote(ptr noundef %0) #40, !dbg !1663
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %29, ptr noundef %30) #40, !dbg !1663
  call void @usage(i32 noundef 125) #44, !dbg !1665
  unreachable, !dbg !1665

31:                                               ; preds = %16, %23, %23, %25, %26, %27
  %32 = phi double [ 8.640000e+04, %27 ], [ 3.600000e+03, %26 ], [ 6.000000e+01, %25 ], [ 1.000000e+00, %23 ], [ 1.000000e+00, %23 ], [ 1.000000e+00, %16 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !1654, metadata !DIExpression()), !dbg !1655
  %33 = fmul double %11, %32, !dbg !1666
  call void @llvm.dbg.value(metadata double %33, metadata !1625, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i32 0, metadata !1631, metadata !DIExpression()), !dbg !1667
  %34 = call double @llvm.fmuladd.f64(double %33, double 0x3CA0000000000001, double %33), !dbg !1669
  call void @llvm.dbg.value(metadata double undef, metadata !1618, metadata !DIExpression()), !dbg !1619
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #40, !dbg !1670
  ret double %34, !dbg !1671
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
  %2 = alloca [19 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1681, metadata !DIExpression()), !dbg !1690
  %3 = icmp eq i32 %0, 14, !dbg !1691
  br i1 %3, label %4, label %6, !dbg !1693

4:                                                ; preds = %1
  store i1 true, ptr @timed_out, align 4, !dbg !1694
  call void @llvm.dbg.value(metadata i32 124, metadata !1209, metadata !DIExpression()), !dbg !1696
  store volatile i32 124, ptr @exit_failure, align 4, !dbg !1698, !tbaa !1022
  %5 = load i32, ptr @term_signal, align 4, !dbg !1699, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %5, metadata !1681, metadata !DIExpression()), !dbg !1690
  br label %6, !dbg !1700

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !1681, metadata !DIExpression()), !dbg !1690
  %8 = load i32, ptr @monitored_pid, align 4, !dbg !1701, !tbaa !1022
  %9 = icmp sgt i32 %8, 0, !dbg !1702
  br i1 %9, label %10, label %49, !dbg !1703

10:                                               ; preds = %6
  %11 = load double, ptr @kill_after, align 8, !dbg !1704, !tbaa !1226
  %12 = fcmp une double %11, 0.000000e+00, !dbg !1704
  br i1 %12, label %13, label %16, !dbg !1705

13:                                               ; preds = %10
  %14 = tail call ptr @__errno_location() #43, !dbg !1706
  %15 = load i32, ptr %14, align 4, !dbg !1706, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %15, metadata !1682, metadata !DIExpression()), !dbg !1707
  store i32 9, ptr @term_signal, align 4, !dbg !1708, !tbaa !1022
  tail call fastcc void @settimeout(double noundef %11, i1 noundef zeroext false), !dbg !1709
  store double 0.000000e+00, ptr @kill_after, align 8, !dbg !1710, !tbaa !1226
  store i32 %15, ptr %14, align 4, !dbg !1711, !tbaa !1022
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
  %27 = load ptr, ptr @command, align 8, !dbg !1724, !tbaa !950
  %28 = call ptr @quote(ptr noundef %27) #40, !dbg !1724
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %26, ptr noundef nonnull %2, ptr noundef %28) #40, !dbg !1724
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %2) #40, !dbg !1725
  br label %29, !dbg !1726

29:                                               ; preds = %25, %16
  %30 = load i32, ptr @monitored_pid, align 4, !dbg !1727, !tbaa !1022
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
  %41 = load i32, ptr @monitored_pid, align 4, !dbg !1751, !tbaa !1022
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
  %9 = load i32, ptr %8, align 4, !dbg !1804, !tbaa !1022
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
define internal fastcc void @settimeout(double noundef %0, i1 noundef zeroext %1) unnamed_addr #10 !dbg !1832 {
  %3 = alloca %struct.itimerspec, align 8
  %4 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata double %0, metadata !1836, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i1 %1, metadata !1837, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1859
  %5 = tail call { i64, i64 } @dtotimespec(double noundef %0) #43, !dbg !1860
  %6 = extractvalue { i64, i64 } %5, 0, !dbg !1860
  call void @llvm.dbg.value(metadata i64 %6, metadata !1838, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1859
  %7 = extractvalue { i64, i64 } %5, 1, !dbg !1860
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
  %13 = load ptr, ptr %4, align 8, !dbg !1875, !tbaa !950
  call void @llvm.dbg.value(metadata ptr %13, metadata !1851, metadata !DIExpression()), !dbg !1859
  %14 = call i32 @timer_settime(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %3, ptr noundef null) #40, !dbg !1878
  %15 = icmp eq i32 %14, 0, !dbg !1879
  br i1 %15, label %42, label %16, !dbg !1880

16:                                               ; preds = %12
  br i1 %1, label %17, label %21, !dbg !1881

17:                                               ; preds = %16
  %18 = tail call ptr @__errno_location() #43, !dbg !1883
  %19 = load i32, ptr %18, align 4, !dbg !1883, !tbaa !1022
  %20 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef 5) #40, !dbg !1883
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %19, ptr noundef %20) #40, !dbg !1883
  br label %21, !dbg !1883

21:                                               ; preds = %17, %16
  %22 = load ptr, ptr %4, align 8, !dbg !1885, !tbaa !950
  call void @llvm.dbg.value(metadata ptr %22, metadata !1851, metadata !DIExpression()), !dbg !1859
  %23 = call i32 @timer_delete(ptr noundef %22) #40, !dbg !1886
  br label %31, !dbg !1887

24:                                               ; preds = %2
  br i1 %1, label %25, label %31, !dbg !1888

25:                                               ; preds = %24
  %26 = tail call ptr @__errno_location() #43, !dbg !1890
  %27 = load i32, ptr %26, align 4, !dbg !1890, !tbaa !1022
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
  %4 = load i8, ptr %0, align 1, !dbg !1993, !tbaa !1031
  %5 = sext i8 %4 to i32, !dbg !1993
  call void @llvm.dbg.value(metadata i32 %5, metadata !1994, metadata !DIExpression()), !dbg !2000
  %6 = add nsw i32 %5, -48, !dbg !2002
  %7 = icmp ult i32 %6, 10, !dbg !2002
  br i1 %7, label %8, label %36, !dbg !2003

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #40, !dbg !2004
  %9 = tail call ptr @__errno_location() #43, !dbg !2005
  store i32 0, ptr %9, align 4, !dbg !2006, !tbaa !1022
  call void @llvm.dbg.value(metadata ptr %3, metadata !1982, metadata !DIExpression(DW_OP_deref)), !dbg !2007
  %10 = call i64 @strtol(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 10) #40, !dbg !2008
  %11 = freeze i64 %10, !dbg !2009
  call void @llvm.dbg.value(metadata i64 %10, metadata !1985, metadata !DIExpression()), !dbg !2007
  %12 = trunc i64 %11 to i32, !dbg !2009
  call void @llvm.dbg.value(metadata i32 %12, metadata !1986, metadata !DIExpression()), !dbg !2007
  %13 = load ptr, ptr %3, align 8, !dbg !2010, !tbaa !950
  call void @llvm.dbg.value(metadata ptr %13, metadata !1982, metadata !DIExpression()), !dbg !2007
  %14 = icmp eq ptr %13, %0, !dbg !2011
  br i1 %14, label %27, label %15, !dbg !2012

15:                                               ; preds = %8
  %16 = load i8, ptr %13, align 1, !dbg !2013, !tbaa !1031
  %17 = icmp eq i8 %16, 0, !dbg !2013
  br i1 %17, label %18, label %27, !dbg !2014

18:                                               ; preds = %15
  %19 = load i32, ptr %9, align 4, !dbg !2015, !tbaa !1022
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
  store i32 %35, ptr %2, align 4, !dbg !2007, !tbaa !1022
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40, !dbg !2020
  br label %73, !dbg !2021

36:                                               ; preds = %1
  %37 = tail call noalias nonnull ptr @xstrdup(ptr noundef nonnull %0) #40, !dbg !2022
  call void @llvm.dbg.value(metadata ptr %37, metadata !1987, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata ptr %37, metadata !1989, metadata !DIExpression()), !dbg !2024
  %38 = load i8, ptr %37, align 1, !dbg !2025, !tbaa !1031
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
  %46 = sext i8 %44 to i32, !dbg !2032
  %47 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.32, i32 %46, i64 27), !dbg !2034
  %48 = icmp eq ptr %47, null, !dbg !2034
  br i1 %48, label %51, label %49, !dbg !2035

49:                                               ; preds = %43
  %50 = add i8 %44, -32, !dbg !2036
  store i8 %50, ptr %45, align 1, !dbg !2036, !tbaa !1031
  br label %51, !dbg !2037

51:                                               ; preds = %43, %49
  %52 = getelementptr inbounds i8, ptr %45, i64 1, !dbg !2038
  call void @llvm.dbg.value(metadata ptr %52, metadata !1989, metadata !DIExpression()), !dbg !2024
  %53 = load i8, ptr %52, align 1, !dbg !2025, !tbaa !1031
  %54 = icmp eq i8 %53, 0, !dbg !2027
  br i1 %54, label %40, label %43, !dbg !2027, !llvm.loop !2039

55:                                               ; preds = %40
  %56 = load i8, ptr %37, align 1, !dbg !2041, !tbaa !1031
  %57 = icmp eq i8 %56, 83, !dbg !2042
  br i1 %57, label %58, label %70, !dbg !2043

58:                                               ; preds = %55
  %59 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !2044
  %60 = load i8, ptr %59, align 1, !dbg !2044, !tbaa !1031
  %61 = icmp eq i8 %60, 73, !dbg !2045
  br i1 %61, label %62, label %70, !dbg !2046

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %37, i64 2, !dbg !2047
  %64 = load i8, ptr %63, align 1, !dbg !2047, !tbaa !1031
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
  store i32 -1, ptr %2, align 4, !dbg !2054, !tbaa !1022
  br label %71, !dbg !2055

71:                                               ; preds = %70, %66, %40
  call void @free(ptr noundef nonnull %37) #40, !dbg !2056
  %72 = load i32, ptr %2, align 4, !dbg !2057, !tbaa !1022
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
  %6 = load ptr, ptr %3, align 8, !dbg !2087, !tbaa !950
  call void @llvm.dbg.value(metadata ptr %6, metadata !2077, metadata !DIExpression()), !dbg !2084
  %7 = load i8, ptr %6, align 1, !dbg !2088, !tbaa !1031
  %8 = icmp eq i8 %7, 0, !dbg !2088
  br i1 %8, label %19, label %9, !dbg !2089

9:                                                ; preds = %2
  %10 = tail call ptr @__errno_location() #43, !dbg !2090
  %11 = load i32, ptr %10, align 4, !dbg !2090, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %11, metadata !2079, metadata !DIExpression()), !dbg !2091
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2092
  call void @llvm.dbg.value(metadata ptr %4, metadata !2082, metadata !DIExpression(DW_OP_deref)), !dbg !2091
  %12 = call double @c_strtod(ptr noundef nonnull %0, ptr noundef nonnull %4) #40, !dbg !2093
  call void @llvm.dbg.value(metadata double %12, metadata !2083, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata ptr %6, metadata !2077, metadata !DIExpression()), !dbg !2084
  %13 = load ptr, ptr %4, align 8, !dbg !2094, !tbaa !950
  call void @llvm.dbg.value(metadata ptr %13, metadata !2082, metadata !DIExpression()), !dbg !2091
  %14 = icmp ult ptr %6, %13, !dbg !2096
  br i1 %14, label %16, label %15, !dbg !2097

15:                                               ; preds = %9
  store i32 %11, ptr %10, align 4, !dbg !2098, !tbaa !1022
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
  store ptr %20, ptr %1, align 8, !dbg !2104, !tbaa !950
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
  store ptr %0, ptr @file_name, align 8, !dbg !2115, !tbaa !950
  ret void, !dbg !2116
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #19 !dbg !2117 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2121, metadata !DIExpression()), !dbg !2122
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !2123, !tbaa !2124
  ret void, !dbg !2126
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2127 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2132, !tbaa !950
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !2133
  %3 = icmp eq i32 %2, 0, !dbg !2134
  br i1 %3, label %22, label %4, !dbg !2135

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !2136, !tbaa !2124, !range !2137, !noundef !959
  %6 = icmp eq i8 %5, 0, !dbg !2136
  br i1 %6, label %11, label %7, !dbg !2138

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !2139
  %9 = load i32, ptr %8, align 4, !dbg !2139, !tbaa !1022
  %10 = icmp eq i32 %9, 32, !dbg !2140
  br i1 %10, label %22, label %11, !dbg !2141

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1.42, i32 noundef 5) #40, !dbg !2142
  call void @llvm.dbg.value(metadata ptr %12, metadata !2129, metadata !DIExpression()), !dbg !2143
  %13 = load ptr, ptr @file_name, align 8, !dbg !2144, !tbaa !950
  %14 = icmp eq ptr %13, null, !dbg !2144
  %15 = tail call ptr @__errno_location() #43, !dbg !2146
  %16 = load i32, ptr %15, align 4, !dbg !2146, !tbaa !1022
  br i1 %14, label %19, label %17, !dbg !2147

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !2148
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.43, ptr noundef %18, ptr noundef %12) #40, !dbg !2148
  br label %20, !dbg !2148

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.44, ptr noundef %12) #40, !dbg !2149
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2150, !tbaa !1022
  tail call void @_exit(i32 noundef %21) #42, !dbg !2151
  unreachable, !dbg !2151

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2152, !tbaa !950
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !2154
  %25 = icmp eq i32 %24, 0, !dbg !2155
  br i1 %25, label %28, label %26, !dbg !2156

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2157, !tbaa !1022
  tail call void @_exit(i32 noundef %27) #42, !dbg !2158
  unreachable, !dbg !2158

28:                                               ; preds = %22
  ret void, !dbg !2159
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @dtotimespec(double noundef %0) local_unnamed_addr #12 !dbg !2160 {
  call void @llvm.dbg.value(metadata double %0, metadata !2168, metadata !DIExpression()), !dbg !2175
  %2 = fcmp ogt double %0, 0xC3E0000000000000, !dbg !2176
  br i1 %2, label %3, label %25, !dbg !2177

3:                                                ; preds = %1
  %4 = fcmp olt double %0, 0x43E0000000000000, !dbg !2178
  br i1 %4, label %5, label %25, !dbg !2179

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
  %15 = sdiv i64 %14, 1000000000, !dbg !2189
  %16 = add nsw i64 %15, %6, !dbg !2190
  call void @llvm.dbg.value(metadata i64 %16, metadata !2169, metadata !DIExpression()), !dbg !2181
  %17 = srem i64 %14, 1000000000, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %17, metadata !2174, metadata !DIExpression()), !dbg !2181
  %18 = icmp slt i64 %17, 0, !dbg !2192
  %19 = add nsw i64 %17, 1000000000, !dbg !2194
  %20 = ashr i64 %17, 63, !dbg !2194
  %21 = add nsw i64 %16, %20, !dbg !2194
  %22 = select i1 %18, i64 %19, i64 %17, !dbg !2194
  call void @llvm.dbg.value(metadata i64 %22, metadata !2174, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i64 %21, metadata !2169, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i64 %21, metadata !2195, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i64 %22, metadata !2200, metadata !DIExpression()), !dbg !2201
  %23 = insertvalue { i64, i64 } poison, i64 %21, 0, !dbg !2203
  %24 = insertvalue { i64, i64 } %23, i64 %22, 1, !dbg !2203
  br label %25

25:                                               ; preds = %3, %1, %5
  %26 = phi { i64, i64 } [ %24, %5 ], [ { i64 -9223372036854775808, i64 0 }, %1 ], [ { i64 9223372036854775807, i64 999999999 }, %3 ]
  ret { i64, i64 } %26, !dbg !2204
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 !dbg !2205 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2209, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata i32 %1, metadata !2210, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata ptr %2, metadata !2211, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata ptr %3, metadata !2212, metadata !DIExpression()), !dbg !2213
  tail call fastcc void @flush_stdout(), !dbg !2214
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2215, !tbaa !950
  %6 = icmp eq ptr %5, null, !dbg !2215
  br i1 %6, label %8, label %7, !dbg !2217

7:                                                ; preds = %4
  tail call void %5() #40, !dbg !2218
  br label %12, !dbg !2218

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2219, !tbaa !950
  %10 = tail call ptr @getprogname() #41, !dbg !2219
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef %10) #40, !dbg !2219
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2221
  ret void, !dbg !2222
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2223 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2225, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i32 1, metadata !2227, metadata !DIExpression()), !dbg !2230
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !2233
  %2 = icmp slt i32 %1, 0, !dbg !2234
  br i1 %2, label %6, label %3, !dbg !2235

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2236, !tbaa !950
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !2236
  br label %6, !dbg !2236

6:                                                ; preds = %3, %0
  ret void, !dbg !2237
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2238 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2240, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i32 %1, metadata !2241, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata ptr %2, metadata !2242, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata ptr %3, metadata !2243, metadata !DIExpression()), !dbg !2244
  %6 = load ptr, ptr @stderr, align 8, !dbg !2245, !tbaa !950
  call void @llvm.dbg.value(metadata ptr %6, metadata !2246, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata ptr %2, metadata !2286, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata ptr %3, metadata !2287, metadata !DIExpression()), !dbg !2288
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #40, !dbg !2290
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2291, !tbaa !1022
  %9 = add i32 %8, 1, !dbg !2291
  store i32 %9, ptr @error_message_count, align 4, !dbg !2291, !tbaa !1022
  %10 = icmp eq i32 %1, 0, !dbg !2292
  br i1 %10, label %20, label %11, !dbg !2294

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2295, metadata !DIExpression()), !dbg !2303
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !2305
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2299, metadata !DIExpression()), !dbg !2306
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !2307
  call void @llvm.dbg.value(metadata ptr %12, metadata !2298, metadata !DIExpression()), !dbg !2303
  %13 = icmp eq ptr %12, null, !dbg !2308
  br i1 %13, label %14, label %16, !dbg !2310

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.56, ptr noundef nonnull @.str.5.57, i32 noundef 5) #40, !dbg !2311
  call void @llvm.dbg.value(metadata ptr %15, metadata !2298, metadata !DIExpression()), !dbg !2303
  br label %16, !dbg !2312

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2303
  call void @llvm.dbg.value(metadata ptr %17, metadata !2298, metadata !DIExpression()), !dbg !2303
  %18 = load ptr, ptr @stderr, align 8, !dbg !2313, !tbaa !950
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.58, ptr noundef %17) #40, !dbg !2313
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !2314
  br label %20, !dbg !2315

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2316, !tbaa !950
  call void @llvm.dbg.value(metadata i32 10, metadata !2317, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata ptr %21, metadata !2323, metadata !DIExpression()), !dbg !2324
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2326
  %23 = load ptr, ptr %22, align 8, !dbg !2326, !tbaa !2327
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2326
  %25 = load ptr, ptr %24, align 8, !dbg !2326, !tbaa !2329
  %26 = icmp ult ptr %23, %25, !dbg !2326
  br i1 %26, label %29, label %27, !dbg !2326, !prof !2330

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #40, !dbg !2326
  br label %31, !dbg !2326

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2326
  store ptr %30, ptr %22, align 8, !dbg !2326, !tbaa !2327
  store i8 10, ptr %23, align 1, !dbg !2326, !tbaa !1031
  br label %31, !dbg !2326

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2331, !tbaa !950
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #40, !dbg !2331
  %34 = icmp eq i32 %0, 0, !dbg !2332
  br i1 %34, label %36, label %35, !dbg !2334

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #42, !dbg !2335
  unreachable, !dbg !2335

36:                                               ; preds = %31
  ret void, !dbg !2336
}

declare !dbg !2337 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2340 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2343 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2346 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2349 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2353 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2357, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i32 %1, metadata !2358, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata ptr %2, metadata !2359, metadata !DIExpression()), !dbg !2366
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #40, !dbg !2367
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2360, metadata !DIExpression()), !dbg !2368
  call void @llvm.va_start(ptr nonnull %4), !dbg !2369
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #45, !dbg !2370
  call void @llvm.va_end(ptr nonnull %4), !dbg !2371
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #40, !dbg !2372
  ret void, !dbg !2372
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #21

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #20 !dbg !498 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !510, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i32 %1, metadata !511, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata ptr %2, metadata !512, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i32 %3, metadata !513, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata ptr %4, metadata !514, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata ptr %5, metadata !515, metadata !DIExpression()), !dbg !2373
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2374, !tbaa !1022
  %8 = icmp eq i32 %7, 0, !dbg !2374
  br i1 %8, label %23, label %9, !dbg !2376

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2377, !tbaa !1022
  %11 = icmp eq i32 %10, %3, !dbg !2380
  br i1 %11, label %12, label %22, !dbg !2381

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2382, !tbaa !950
  %14 = icmp eq ptr %13, %2, !dbg !2383
  br i1 %14, label %36, label %15, !dbg !2384

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2385
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2386
  br i1 %18, label %19, label %22, !dbg !2386

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2387
  %21 = icmp eq i32 %20, 0, !dbg !2388
  br i1 %21, label %36, label %22, !dbg !2389

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2390, !tbaa !950
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2391, !tbaa !1022
  br label %23, !dbg !2392

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2393
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2394, !tbaa !950
  %25 = icmp eq ptr %24, null, !dbg !2394
  br i1 %25, label %27, label %26, !dbg !2396

26:                                               ; preds = %23
  tail call void %24() #40, !dbg !2397
  br label %31, !dbg !2397

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2398, !tbaa !950
  %29 = tail call ptr @getprogname() #41, !dbg !2398
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.61, ptr noundef %29) #40, !dbg !2398
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2400, !tbaa !950
  %33 = icmp eq ptr %2, null, !dbg !2400
  %34 = select i1 %33, ptr @.str.3.62, ptr @.str.2.63, !dbg !2400
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #40, !dbg !2400
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2401
  br label %36, !dbg !2402

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2402
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2403 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2407, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 %1, metadata !2408, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %2, metadata !2409, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 %3, metadata !2410, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %4, metadata !2411, metadata !DIExpression()), !dbg !2413
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #40, !dbg !2414
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2412, metadata !DIExpression()), !dbg !2415
  call void @llvm.va_start(ptr nonnull %6), !dbg !2416
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #45, !dbg !2417
  call void @llvm.va_end(ptr nonnull %6), !dbg !2418
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #40, !dbg !2419
  ret void, !dbg !2419
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #22 !dbg !2420 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2423, !tbaa !950
  ret ptr %1, !dbg !2424
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #23 !dbg !2425 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2427, metadata !DIExpression()), !dbg !2430
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2431
  call void @llvm.dbg.value(metadata ptr %2, metadata !2428, metadata !DIExpression()), !dbg !2430
  %3 = icmp eq ptr %2, null, !dbg !2432
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2432
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2432
  call void @llvm.dbg.value(metadata ptr %5, metadata !2429, metadata !DIExpression()), !dbg !2430
  %6 = ptrtoint ptr %5 to i64, !dbg !2433
  %7 = ptrtoint ptr %0 to i64, !dbg !2433
  %8 = sub i64 %6, %7, !dbg !2433
  %9 = icmp sgt i64 %8, 6, !dbg !2435
  br i1 %9, label %10, label %19, !dbg !2436

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2437
  call void @llvm.dbg.value(metadata ptr %11, metadata !2438, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata ptr @.str.77, metadata !2443, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i64 7, metadata !2444, metadata !DIExpression()), !dbg !2445
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.77, i64 7), !dbg !2447
  %13 = icmp eq i32 %12, 0, !dbg !2448
  br i1 %13, label %14, label %19, !dbg !2449

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2427, metadata !DIExpression()), !dbg !2430
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.78, i64 noundef 3) #41, !dbg !2450
  %16 = icmp eq i32 %15, 0, !dbg !2453
  %17 = select i1 %16, i64 3, i64 0, !dbg !2454
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2454
  br label %19, !dbg !2454

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2430
  call void @llvm.dbg.value(metadata ptr %21, metadata !2429, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata ptr %20, metadata !2427, metadata !DIExpression()), !dbg !2430
  store ptr %20, ptr @program_name, align 8, !dbg !2455, !tbaa !950
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2456, !tbaa !950
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2457, !tbaa !950
  ret void, !dbg !2458
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2459 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !549 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !556, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata ptr %1, metadata !557, metadata !DIExpression()), !dbg !2460
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2461
  call void @llvm.dbg.value(metadata ptr %5, metadata !558, metadata !DIExpression()), !dbg !2460
  %6 = icmp eq ptr %5, %0, !dbg !2462
  br i1 %6, label %7, label %14, !dbg !2464

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2465
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2466
  call void @llvm.dbg.declare(metadata ptr %4, metadata !564, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata ptr %4, metadata !2468, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata ptr %4, metadata !2477, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i32 0, metadata !2483, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i64 8, metadata !2484, metadata !DIExpression()), !dbg !2485
  store i64 0, ptr %4, align 8, !dbg !2487
  call void @llvm.dbg.value(metadata ptr %3, metadata !559, metadata !DIExpression(DW_OP_deref)), !dbg !2460
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2488
  %9 = icmp eq i64 %8, 2, !dbg !2490
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !559, metadata !DIExpression()), !dbg !2460
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2491
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2460
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2492
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2492
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2460
  ret ptr %15, !dbg !2492
}

; Function Attrs: nounwind
declare !dbg !2493 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2499 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2504, metadata !DIExpression()), !dbg !2507
  %2 = tail call ptr @__errno_location() #43, !dbg !2508
  %3 = load i32, ptr %2, align 4, !dbg !2508, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %3, metadata !2505, metadata !DIExpression()), !dbg !2507
  %4 = icmp eq ptr %0, null, !dbg !2509
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2509
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #46, !dbg !2510
  call void @llvm.dbg.value(metadata ptr %6, metadata !2506, metadata !DIExpression()), !dbg !2507
  store i32 %3, ptr %2, align 4, !dbg !2511, !tbaa !1022
  ret ptr %6, !dbg !2512
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #24 !dbg !2513 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2519, metadata !DIExpression()), !dbg !2520
  %2 = icmp eq ptr %0, null, !dbg !2521
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2521
  %4 = load i32, ptr %3, align 8, !dbg !2522, !tbaa !2523
  ret i32 %4, !dbg !2525
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2526 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2530, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i32 %1, metadata !2531, metadata !DIExpression()), !dbg !2532
  %3 = icmp eq ptr %0, null, !dbg !2533
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2533
  store i32 %1, ptr %4, align 8, !dbg !2534, !tbaa !2523
  ret void, !dbg !2535
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #26 !dbg !2536 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2540, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i8 %1, metadata !2541, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i32 %2, metadata !2542, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i8 %1, metadata !2543, metadata !DIExpression()), !dbg !2548
  %4 = icmp eq ptr %0, null, !dbg !2549
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2549
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2550
  %7 = lshr i8 %1, 5, !dbg !2551
  %8 = zext i8 %7 to i64, !dbg !2551
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2552
  call void @llvm.dbg.value(metadata ptr %9, metadata !2544, metadata !DIExpression()), !dbg !2548
  %10 = and i8 %1, 31, !dbg !2553
  %11 = zext i8 %10 to i32, !dbg !2553
  call void @llvm.dbg.value(metadata i32 %11, metadata !2546, metadata !DIExpression()), !dbg !2548
  %12 = load i32, ptr %9, align 4, !dbg !2554, !tbaa !1022
  %13 = lshr i32 %12, %11, !dbg !2555
  %14 = and i32 %13, 1, !dbg !2556
  call void @llvm.dbg.value(metadata i32 %14, metadata !2547, metadata !DIExpression()), !dbg !2548
  %15 = xor i32 %13, %2, !dbg !2557
  %16 = and i32 %15, 1, !dbg !2557
  %17 = shl nuw i32 %16, %11, !dbg !2558
  %18 = xor i32 %17, %12, !dbg !2559
  store i32 %18, ptr %9, align 4, !dbg !2559, !tbaa !1022
  ret i32 %14, !dbg !2560
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2561 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2565, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i32 %1, metadata !2566, metadata !DIExpression()), !dbg !2568
  %3 = icmp eq ptr %0, null, !dbg !2569
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2571
  call void @llvm.dbg.value(metadata ptr %4, metadata !2565, metadata !DIExpression()), !dbg !2568
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2572
  %6 = load i32, ptr %5, align 4, !dbg !2572, !tbaa !2573
  call void @llvm.dbg.value(metadata i32 %6, metadata !2567, metadata !DIExpression()), !dbg !2568
  store i32 %1, ptr %5, align 4, !dbg !2574, !tbaa !2573
  ret i32 %6, !dbg !2575
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2576 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2580, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata ptr %1, metadata !2581, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata ptr %2, metadata !2582, metadata !DIExpression()), !dbg !2583
  %4 = icmp eq ptr %0, null, !dbg !2584
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2586
  call void @llvm.dbg.value(metadata ptr %5, metadata !2580, metadata !DIExpression()), !dbg !2583
  store i32 10, ptr %5, align 8, !dbg !2587, !tbaa !2523
  %6 = icmp ne ptr %1, null, !dbg !2588
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2590
  br i1 %8, label %10, label %9, !dbg !2590

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2591
  unreachable, !dbg !2591

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2592
  store ptr %1, ptr %11, align 8, !dbg !2593, !tbaa !2594
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2595
  store ptr %2, ptr %12, align 8, !dbg !2596, !tbaa !2597
  ret void, !dbg !2598
}

; Function Attrs: noreturn nounwind
declare !dbg !2599 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2600 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2604, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i64 %1, metadata !2605, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata ptr %2, metadata !2606, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i64 %3, metadata !2607, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata ptr %4, metadata !2608, metadata !DIExpression()), !dbg !2612
  %6 = icmp eq ptr %4, null, !dbg !2613
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2613
  call void @llvm.dbg.value(metadata ptr %7, metadata !2609, metadata !DIExpression()), !dbg !2612
  %8 = tail call ptr @__errno_location() #43, !dbg !2614
  %9 = load i32, ptr %8, align 4, !dbg !2614, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %9, metadata !2610, metadata !DIExpression()), !dbg !2612
  %10 = load i32, ptr %7, align 8, !dbg !2615, !tbaa !2523
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2616
  %12 = load i32, ptr %11, align 4, !dbg !2616, !tbaa !2573
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2617
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2618
  %15 = load ptr, ptr %14, align 8, !dbg !2618, !tbaa !2594
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2619
  %17 = load ptr, ptr %16, align 8, !dbg !2619, !tbaa !2597
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2620
  call void @llvm.dbg.value(metadata i64 %18, metadata !2611, metadata !DIExpression()), !dbg !2612
  store i32 %9, ptr %8, align 4, !dbg !2621, !tbaa !1022
  ret i64 %18, !dbg !2622
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2623 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2629, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %1, metadata !2630, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %2, metadata !2631, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %3, metadata !2632, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 %4, metadata !2633, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 %5, metadata !2634, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %6, metadata !2635, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %7, metadata !2636, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %8, metadata !2637, metadata !DIExpression()), !dbg !2691
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2692
  %17 = icmp eq i64 %16, 1, !dbg !2693
  call void @llvm.dbg.value(metadata i1 %17, metadata !2638, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2691
  call void @llvm.dbg.value(metadata i64 0, metadata !2639, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 0, metadata !2640, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr null, metadata !2641, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 0, metadata !2642, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 0, metadata !2643, metadata !DIExpression()), !dbg !2691
  %18 = trunc i32 %5 to i8, !dbg !2694
  %19 = lshr i8 %18, 1, !dbg !2694
  %20 = and i8 %19, 1, !dbg !2694
  call void @llvm.dbg.value(metadata i8 %20, metadata !2644, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 0, metadata !2645, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 1, metadata !2646, metadata !DIExpression()), !dbg !2691
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2695

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2696
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2697
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2698
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !2699
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2691
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !2700
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !2701
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2630, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %39, metadata !2646, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %38, metadata !2645, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %37, metadata !2644, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %36, metadata !2643, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %35, metadata !2642, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %34, metadata !2641, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %33, metadata !2640, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 0, metadata !2639, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %32, metadata !2632, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %31, metadata !2637, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %30, metadata !2636, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 %29, metadata !2633, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.label(metadata !2684), !dbg !2702
  call void @llvm.dbg.value(metadata i8 0, metadata !2647, metadata !DIExpression()), !dbg !2691
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
  ], !dbg !2703

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2644, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 5, metadata !2633, metadata !DIExpression()), !dbg !2691
  br label %115, !dbg !2704

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !2644, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 5, metadata !2633, metadata !DIExpression()), !dbg !2691
  %43 = and i8 %37, 1, !dbg !2705
  %44 = icmp eq i8 %43, 0, !dbg !2705
  br i1 %44, label %45, label %115, !dbg !2704

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2707
  br i1 %46, label %115, label %47, !dbg !2710

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2707, !tbaa !1031
  br label %115, !dbg !2707

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.91, metadata !662, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i32 %29, metadata !663, metadata !DIExpression()), !dbg !2711
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.92, ptr noundef nonnull @.str.11.91, i32 noundef 5) #40, !dbg !2715
  call void @llvm.dbg.value(metadata ptr %49, metadata !664, metadata !DIExpression()), !dbg !2711
  %50 = icmp eq ptr %49, @.str.11.91, !dbg !2716
  br i1 %50, label %51, label %60, !dbg !2718

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !2719
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !2720
  call void @llvm.dbg.declare(metadata ptr %13, metadata !666, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata ptr %13, metadata !2722, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata ptr %13, metadata !2730, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i32 0, metadata !2733, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i64 8, metadata !2734, metadata !DIExpression()), !dbg !2735
  store i64 0, ptr %13, align 8, !dbg !2737
  call void @llvm.dbg.value(metadata ptr %12, metadata !665, metadata !DIExpression(DW_OP_deref)), !dbg !2711
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !2738
  %53 = icmp eq i64 %52, 3, !dbg !2740
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !665, metadata !DIExpression()), !dbg !2711
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2741
  %57 = icmp eq i32 %29, 9, !dbg !2741
  %58 = select i1 %57, ptr @.str.10.93, ptr @.str.12.94, !dbg !2741
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2741
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !2742
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !2742
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2711
  call void @llvm.dbg.value(metadata ptr %61, metadata !2636, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr @.str.12.94, metadata !662, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i32 %29, metadata !663, metadata !DIExpression()), !dbg !2743
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.92, ptr noundef nonnull @.str.12.94, i32 noundef 5) #40, !dbg !2745
  call void @llvm.dbg.value(metadata ptr %62, metadata !664, metadata !DIExpression()), !dbg !2743
  %63 = icmp eq ptr %62, @.str.12.94, !dbg !2746
  br i1 %63, label %64, label %73, !dbg !2747

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !2748
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !2749
  call void @llvm.dbg.declare(metadata ptr %11, metadata !666, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata ptr %11, metadata !2722, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata ptr %11, metadata !2730, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i32 0, metadata !2733, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i64 8, metadata !2734, metadata !DIExpression()), !dbg !2753
  store i64 0, ptr %11, align 8, !dbg !2755
  call void @llvm.dbg.value(metadata ptr %10, metadata !665, metadata !DIExpression(DW_OP_deref)), !dbg !2743
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !2756
  %66 = icmp eq i64 %65, 3, !dbg !2757
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !665, metadata !DIExpression()), !dbg !2743
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2758
  %70 = icmp eq i32 %29, 9, !dbg !2758
  %71 = select i1 %70, ptr @.str.10.93, ptr @.str.12.94, !dbg !2758
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2758
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !2759
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !2759
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !2637, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %74, metadata !2636, metadata !DIExpression()), !dbg !2691
  %76 = and i8 %37, 1, !dbg !2760
  %77 = icmp eq i8 %76, 0, !dbg !2760
  br i1 %77, label %78, label %93, !dbg !2761

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !2648, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 0, metadata !2639, metadata !DIExpression()), !dbg !2691
  %79 = load i8, ptr %74, align 1, !dbg !2763, !tbaa !1031
  %80 = icmp eq i8 %79, 0, !dbg !2765
  br i1 %80, label %93, label %81, !dbg !2765

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !2648, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %84, metadata !2639, metadata !DIExpression()), !dbg !2691
  %85 = icmp ult i64 %84, %40, !dbg !2766
  br i1 %85, label %86, label %88, !dbg !2769

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2766
  store i8 %82, ptr %87, align 1, !dbg !2766, !tbaa !1031
  br label %88, !dbg !2766

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2769
  call void @llvm.dbg.value(metadata i64 %89, metadata !2639, metadata !DIExpression()), !dbg !2691
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2770
  call void @llvm.dbg.value(metadata ptr %90, metadata !2648, metadata !DIExpression()), !dbg !2762
  %91 = load i8, ptr %90, align 1, !dbg !2763, !tbaa !1031
  %92 = icmp eq i8 %91, 0, !dbg !2765
  br i1 %92, label %93, label %81, !dbg !2765, !llvm.loop !2771

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2773
  call void @llvm.dbg.value(metadata i64 %94, metadata !2639, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 1, metadata !2643, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %75, metadata !2641, metadata !DIExpression()), !dbg !2691
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #41, !dbg !2774
  call void @llvm.dbg.value(metadata i64 %95, metadata !2642, metadata !DIExpression()), !dbg !2691
  br label %115, !dbg !2775

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2643, metadata !DIExpression()), !dbg !2691
  br label %97, !dbg !2776

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2691
  call void @llvm.dbg.value(metadata i8 %98, metadata !2643, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 1, metadata !2644, metadata !DIExpression()), !dbg !2691
  br label %99, !dbg !2777

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !2699
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2691
  call void @llvm.dbg.value(metadata i8 %101, metadata !2644, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %100, metadata !2643, metadata !DIExpression()), !dbg !2691
  %102 = and i8 %101, 1, !dbg !2778
  %103 = icmp eq i8 %102, 0, !dbg !2778
  %104 = select i1 %103, i8 1, i8 %100, !dbg !2780
  br label %105, !dbg !2780

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2691
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2694
  call void @llvm.dbg.value(metadata i8 %107, metadata !2644, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %106, metadata !2643, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 2, metadata !2633, metadata !DIExpression()), !dbg !2691
  %108 = and i8 %107, 1, !dbg !2781
  %109 = icmp eq i8 %108, 0, !dbg !2781
  br i1 %109, label %110, label %115, !dbg !2783

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !2784
  br i1 %111, label %115, label %112, !dbg !2787

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !2784, !tbaa !1031
  br label %115, !dbg !2784

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !2644, metadata !DIExpression()), !dbg !2691
  br label %115, !dbg !2788

114:                                              ; preds = %28
  call void @abort() #42, !dbg !2789
  unreachable, !dbg !2789

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !2773
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.93, %45 ], [ @.str.10.93, %47 ], [ @.str.10.93, %42 ], [ %34, %28 ], [ @.str.12.94, %110 ], [ @.str.12.94, %112 ], [ @.str.12.94, %105 ], [ @.str.10.93, %41 ], !dbg !2691
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2691
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2691
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2691
  call void @llvm.dbg.value(metadata i8 %123, metadata !2644, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %122, metadata !2643, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %121, metadata !2642, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %120, metadata !2641, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %119, metadata !2639, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %118, metadata !2637, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %117, metadata !2636, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 %116, metadata !2633, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 0, metadata !2653, metadata !DIExpression()), !dbg !2790
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
  br label %138, !dbg !2791

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !2773
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2696
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !2700
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !2701
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !2792
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !2793
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !2630, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %145, metadata !2653, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 %144, metadata !2647, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %143, metadata !2646, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %142, metadata !2645, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %141, metadata !2640, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %140, metadata !2639, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %139, metadata !2632, metadata !DIExpression()), !dbg !2691
  %147 = icmp eq i64 %139, -1, !dbg !2794
  br i1 %147, label %148, label %152, !dbg !2795

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2796
  %150 = load i8, ptr %149, align 1, !dbg !2796, !tbaa !1031
  %151 = icmp eq i8 %150, 0, !dbg !2797
  br i1 %151, label %627, label %154, !dbg !2798

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2799
  br i1 %153, label %627, label %154, !dbg !2798

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !2655, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 0, metadata !2658, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 0, metadata !2659, metadata !DIExpression()), !dbg !2800
  br i1 %129, label %155, label %170, !dbg !2801

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !2803
  %157 = select i1 %147, i1 %130, i1 false, !dbg !2804
  br i1 %157, label %158, label %160, !dbg !2804

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2805
  call void @llvm.dbg.value(metadata i64 %159, metadata !2632, metadata !DIExpression()), !dbg !2691
  br label %160, !dbg !2806

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2806
  call void @llvm.dbg.value(metadata i64 %161, metadata !2632, metadata !DIExpression()), !dbg !2691
  %162 = icmp ugt i64 %156, %161, !dbg !2807
  br i1 %162, label %170, label %163, !dbg !2808

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2809
  call void @llvm.dbg.value(metadata ptr %164, metadata !2810, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata ptr %120, metadata !2813, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i64 %121, metadata !2814, metadata !DIExpression()), !dbg !2815
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !2817
  %166 = icmp ne i32 %165, 0, !dbg !2818
  %167 = select i1 %166, i1 true, i1 %132, !dbg !2819
  %168 = xor i1 %166, true, !dbg !2819
  %169 = zext i1 %168 to i8, !dbg !2819
  br i1 %167, label %170, label %688, !dbg !2819

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2800
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2800
  call void @llvm.dbg.value(metadata i8 %173, metadata !2655, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %171, metadata !2632, metadata !DIExpression()), !dbg !2691
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2820
  %175 = load i8, ptr %174, align 1, !dbg !2820, !tbaa !1031
  call void @llvm.dbg.value(metadata i8 %175, metadata !2660, metadata !DIExpression()), !dbg !2800
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
  ], !dbg !2821

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !2822

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !2823

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !2658, metadata !DIExpression()), !dbg !2800
  %179 = and i8 %144, 1, !dbg !2827
  %180 = icmp eq i8 %179, 0, !dbg !2827
  %181 = select i1 %133, i1 %180, i1 false, !dbg !2827
  br i1 %181, label %182, label %198, !dbg !2827

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2829
  br i1 %183, label %184, label %186, !dbg !2833

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2829
  store i8 39, ptr %185, align 1, !dbg !2829, !tbaa !1031
  br label %186, !dbg !2829

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2833
  call void @llvm.dbg.value(metadata i64 %187, metadata !2639, metadata !DIExpression()), !dbg !2691
  %188 = icmp ult i64 %187, %146, !dbg !2834
  br i1 %188, label %189, label %191, !dbg !2837

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2834
  store i8 36, ptr %190, align 1, !dbg !2834, !tbaa !1031
  br label %191, !dbg !2834

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2837
  call void @llvm.dbg.value(metadata i64 %192, metadata !2639, metadata !DIExpression()), !dbg !2691
  %193 = icmp ult i64 %192, %146, !dbg !2838
  br i1 %193, label %194, label %196, !dbg !2841

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2838
  store i8 39, ptr %195, align 1, !dbg !2838, !tbaa !1031
  br label %196, !dbg !2838

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2841
  call void @llvm.dbg.value(metadata i64 %197, metadata !2639, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 1, metadata !2647, metadata !DIExpression()), !dbg !2691
  br label %198, !dbg !2842

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2691
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2691
  call void @llvm.dbg.value(metadata i8 %200, metadata !2647, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %199, metadata !2639, metadata !DIExpression()), !dbg !2691
  %201 = icmp ult i64 %199, %146, !dbg !2843
  br i1 %201, label %202, label %204, !dbg !2846

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2843
  store i8 92, ptr %203, align 1, !dbg !2843, !tbaa !1031
  br label %204, !dbg !2843

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2846
  call void @llvm.dbg.value(metadata i64 %205, metadata !2639, metadata !DIExpression()), !dbg !2691
  br i1 %126, label %206, label %491, !dbg !2847

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2849
  %208 = icmp ult i64 %207, %171, !dbg !2850
  br i1 %208, label %209, label %480, !dbg !2851

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2852
  %211 = load i8, ptr %210, align 1, !dbg !2852, !tbaa !1031
  %212 = add i8 %211, -48, !dbg !2853
  %213 = icmp ult i8 %212, 10, !dbg !2853
  br i1 %213, label %214, label %480, !dbg !2853

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2854
  br i1 %215, label %216, label %218, !dbg !2858

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2854
  store i8 48, ptr %217, align 1, !dbg !2854, !tbaa !1031
  br label %218, !dbg !2854

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2858
  call void @llvm.dbg.value(metadata i64 %219, metadata !2639, metadata !DIExpression()), !dbg !2691
  %220 = icmp ult i64 %219, %146, !dbg !2859
  br i1 %220, label %221, label %223, !dbg !2862

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2859
  store i8 48, ptr %222, align 1, !dbg !2859, !tbaa !1031
  br label %223, !dbg !2859

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2862
  call void @llvm.dbg.value(metadata i64 %224, metadata !2639, metadata !DIExpression()), !dbg !2691
  br label %480, !dbg !2863

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2864

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2865

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2866

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2868

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2870
  %231 = icmp ult i64 %230, %171, !dbg !2871
  br i1 %231, label %232, label %480, !dbg !2872

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2873
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2874
  %235 = load i8, ptr %234, align 1, !dbg !2874, !tbaa !1031
  %236 = icmp eq i8 %235, 63, !dbg !2875
  br i1 %236, label %237, label %480, !dbg !2876

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2877
  %239 = load i8, ptr %238, align 1, !dbg !2877, !tbaa !1031
  %240 = sext i8 %239 to i32, !dbg !2877
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
  ], !dbg !2878

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2879

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !2660, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %230, metadata !2653, metadata !DIExpression()), !dbg !2790
  %243 = icmp ult i64 %140, %146, !dbg !2881
  br i1 %243, label %244, label %246, !dbg !2884

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2881
  store i8 63, ptr %245, align 1, !dbg !2881, !tbaa !1031
  br label %246, !dbg !2881

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2884
  call void @llvm.dbg.value(metadata i64 %247, metadata !2639, metadata !DIExpression()), !dbg !2691
  %248 = icmp ult i64 %247, %146, !dbg !2885
  br i1 %248, label %249, label %251, !dbg !2888

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2885
  store i8 34, ptr %250, align 1, !dbg !2885, !tbaa !1031
  br label %251, !dbg !2885

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2888
  call void @llvm.dbg.value(metadata i64 %252, metadata !2639, metadata !DIExpression()), !dbg !2691
  %253 = icmp ult i64 %252, %146, !dbg !2889
  br i1 %253, label %254, label %256, !dbg !2892

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2889
  store i8 34, ptr %255, align 1, !dbg !2889, !tbaa !1031
  br label %256, !dbg !2889

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2892
  call void @llvm.dbg.value(metadata i64 %257, metadata !2639, metadata !DIExpression()), !dbg !2691
  %258 = icmp ult i64 %257, %146, !dbg !2893
  br i1 %258, label %259, label %261, !dbg !2896

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2893
  store i8 63, ptr %260, align 1, !dbg !2893, !tbaa !1031
  br label %261, !dbg !2893

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2896
  call void @llvm.dbg.value(metadata i64 %262, metadata !2639, metadata !DIExpression()), !dbg !2691
  br label %480, !dbg !2897

263:                                              ; preds = %170
  br label %274, !dbg !2898

264:                                              ; preds = %170
  br label %274, !dbg !2899

265:                                              ; preds = %170
  br label %272, !dbg !2900

266:                                              ; preds = %170
  br label %272, !dbg !2901

267:                                              ; preds = %170
  br label %274, !dbg !2902

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2903

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2904

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2907

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2909

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2910
  call void @llvm.dbg.label(metadata !2685), !dbg !2911
  br i1 %134, label %274, label %670, !dbg !2912

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2910
  call void @llvm.dbg.label(metadata !2687), !dbg !2914
  br i1 %125, label %535, label %491, !dbg !2915

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2916

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2917, !tbaa !1031
  %279 = icmp eq i8 %278, 0, !dbg !2919
  br i1 %279, label %280, label %480, !dbg !2920

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2921
  br i1 %281, label %282, label %480, !dbg !2923

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2659, metadata !DIExpression()), !dbg !2800
  br label %283, !dbg !2924

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !2800
  call void @llvm.dbg.value(metadata i8 %284, metadata !2659, metadata !DIExpression()), !dbg !2800
  br i1 %134, label %480, label %670, !dbg !2925

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2645, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 1, metadata !2659, metadata !DIExpression()), !dbg !2800
  br i1 %133, label %286, label %480, !dbg !2927

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2928

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2931
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2933
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2933
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2933
  call void @llvm.dbg.value(metadata i64 %292, metadata !2630, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %291, metadata !2640, metadata !DIExpression()), !dbg !2691
  %293 = icmp ult i64 %140, %292, !dbg !2934
  br i1 %293, label %294, label %296, !dbg !2937

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2934
  store i8 39, ptr %295, align 1, !dbg !2934, !tbaa !1031
  br label %296, !dbg !2934

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2937
  call void @llvm.dbg.value(metadata i64 %297, metadata !2639, metadata !DIExpression()), !dbg !2691
  %298 = icmp ult i64 %297, %292, !dbg !2938
  br i1 %298, label %299, label %301, !dbg !2941

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2938
  store i8 92, ptr %300, align 1, !dbg !2938, !tbaa !1031
  br label %301, !dbg !2938

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2941
  call void @llvm.dbg.value(metadata i64 %302, metadata !2639, metadata !DIExpression()), !dbg !2691
  %303 = icmp ult i64 %302, %292, !dbg !2942
  br i1 %303, label %304, label %306, !dbg !2945

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2942
  store i8 39, ptr %305, align 1, !dbg !2942, !tbaa !1031
  br label %306, !dbg !2942

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2945
  call void @llvm.dbg.value(metadata i64 %307, metadata !2639, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 0, metadata !2647, metadata !DIExpression()), !dbg !2691
  br label %480, !dbg !2946

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2947

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !2661, metadata !DIExpression()), !dbg !2948
  %310 = tail call ptr @__ctype_b_loc() #43, !dbg !2949
  %311 = load ptr, ptr %310, align 8, !dbg !2949, !tbaa !950
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2949
  %314 = load i16, ptr %313, align 2, !dbg !2949, !tbaa !1063
  %315 = lshr i16 %314, 14, !dbg !2951
  %316 = trunc i16 %315 to i8, !dbg !2951
  %317 = and i8 %316, 1, !dbg !2951
  call void @llvm.dbg.value(metadata i8 %317, metadata !2664, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %171, metadata !2632, metadata !DIExpression()), !dbg !2691
  %318 = icmp eq i8 %317, 0, !dbg !2952
  call void @llvm.dbg.value(metadata i1 %318, metadata !2659, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2800
  br label %368, !dbg !2953

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !2954
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2665, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata ptr %14, metadata !2722, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata ptr %14, metadata !2730, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i32 0, metadata !2733, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 8, metadata !2734, metadata !DIExpression()), !dbg !2958
  store i64 0, ptr %14, align 8, !dbg !2960
  call void @llvm.dbg.value(metadata i64 0, metadata !2661, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8 1, metadata !2664, metadata !DIExpression()), !dbg !2948
  %320 = icmp eq i64 %171, -1, !dbg !2961
  br i1 %320, label %321, label %323, !dbg !2963

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2964
  call void @llvm.dbg.value(metadata i64 %322, metadata !2632, metadata !DIExpression()), !dbg !2691
  br label %323, !dbg !2965

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !2800
  call void @llvm.dbg.value(metadata i64 %324, metadata !2632, metadata !DIExpression()), !dbg !2691
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !2966
  %325 = sub i64 %324, %145, !dbg !2967
  call void @llvm.dbg.value(metadata ptr %15, metadata !2668, metadata !DIExpression(DW_OP_deref)), !dbg !2968
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #40, !dbg !2969
  call void @llvm.dbg.value(metadata i64 %326, metadata !2672, metadata !DIExpression()), !dbg !2968
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2970

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !2661, metadata !DIExpression()), !dbg !2948
  %328 = icmp ugt i64 %324, %145, !dbg !2971
  br i1 %328, label %331, label %329, !dbg !2973

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !2664, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 0, metadata !2661, metadata !DIExpression()), !dbg !2948
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2974
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2975
  call void @llvm.dbg.value(metadata i64 %324, metadata !2632, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i1 true, metadata !2659, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2800
  br label %368, !dbg !2953

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !2664, metadata !DIExpression()), !dbg !2948
  br label %360, !dbg !2976

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2661, metadata !DIExpression()), !dbg !2948
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2978
  %335 = load i8, ptr %334, align 1, !dbg !2978, !tbaa !1031
  %336 = icmp eq i8 %335, 0, !dbg !2973
  br i1 %336, label %363, label %337, !dbg !2979

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2980
  call void @llvm.dbg.value(metadata i64 %338, metadata !2661, metadata !DIExpression()), !dbg !2948
  %339 = add i64 %338, %145, !dbg !2981
  %340 = icmp eq i64 %338, %325, !dbg !2971
  br i1 %340, label %363, label %331, !dbg !2973, !llvm.loop !2982

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2983
  %344 = and i1 %343, %133, !dbg !2983
  call void @llvm.dbg.value(metadata i64 1, metadata !2673, metadata !DIExpression()), !dbg !2984
  br i1 %344, label %345, label %354, !dbg !2983

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2673, metadata !DIExpression()), !dbg !2984
  %347 = add i64 %346, %145, !dbg !2985
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2987
  %349 = load i8, ptr %348, align 1, !dbg !2987, !tbaa !1031
  %350 = sext i8 %349 to i32, !dbg !2987
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2988

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2989
  call void @llvm.dbg.value(metadata i64 %352, metadata !2673, metadata !DIExpression()), !dbg !2984
  %353 = icmp eq i64 %352, %326, !dbg !2990
  br i1 %353, label %354, label %345, !dbg !2991, !llvm.loop !2992

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2994, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %355, metadata !2668, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i32 %355, metadata !2996, metadata !DIExpression()), !dbg !3004
  %356 = call i32 @iswprint(i32 noundef %355) #40, !dbg !3006
  %357 = icmp ne i32 %356, 0, !dbg !3007
  %358 = zext i1 %357 to i8, !dbg !3008
  call void @llvm.dbg.value(metadata i8 %358, metadata !2664, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %326, metadata !2661, metadata !DIExpression()), !dbg !2948
  br label %363, !dbg !3009

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !2664, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 0, metadata !2661, metadata !DIExpression()), !dbg !2948
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2974
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2975
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !2664, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 0, metadata !2661, metadata !DIExpression()), !dbg !2948
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2974
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2975
  call void @llvm.dbg.value(metadata i64 %324, metadata !2632, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i1 %361, metadata !2659, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2800
  br label %368, !dbg !2953

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !2664, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %364, metadata !2661, metadata !DIExpression()), !dbg !2948
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2974
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2975
  call void @llvm.dbg.value(metadata i64 %324, metadata !2632, metadata !DIExpression()), !dbg !2691
  %366 = icmp eq i8 %365, 0, !dbg !2952
  call void @llvm.dbg.value(metadata i1 %366, metadata !2659, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2800
  %367 = icmp ugt i64 %364, 1, !dbg !3010
  br i1 %367, label %374, label %368, !dbg !2953

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !3011
  br i1 %373, label %374, label %480, !dbg !3011

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !3012
  call void @llvm.dbg.value(metadata i64 %379, metadata !2681, metadata !DIExpression()), !dbg !3013
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !3014

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2691
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !2792
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !2790
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !2800
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !3015
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !2800
  call void @llvm.dbg.value(metadata i8 %387, metadata !2660, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 %386, metadata !2658, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 %385, metadata !2655, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %384, metadata !2653, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 %383, metadata !2647, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %382, metadata !2639, metadata !DIExpression()), !dbg !2691
  br i1 %380, label %388, label %434, !dbg !3016

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !3021

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !2658, metadata !DIExpression()), !dbg !2800
  %390 = and i8 %383, 1, !dbg !3024
  %391 = icmp eq i8 %390, 0, !dbg !3024
  %392 = select i1 %133, i1 %391, i1 false, !dbg !3024
  br i1 %392, label %393, label %409, !dbg !3024

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !3026
  br i1 %394, label %395, label %397, !dbg !3030

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3026
  store i8 39, ptr %396, align 1, !dbg !3026, !tbaa !1031
  br label %397, !dbg !3026

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !3030
  call void @llvm.dbg.value(metadata i64 %398, metadata !2639, metadata !DIExpression()), !dbg !2691
  %399 = icmp ult i64 %398, %146, !dbg !3031
  br i1 %399, label %400, label %402, !dbg !3034

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !3031
  store i8 36, ptr %401, align 1, !dbg !3031, !tbaa !1031
  br label %402, !dbg !3031

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !3034
  call void @llvm.dbg.value(metadata i64 %403, metadata !2639, metadata !DIExpression()), !dbg !2691
  %404 = icmp ult i64 %403, %146, !dbg !3035
  br i1 %404, label %405, label %407, !dbg !3038

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !3035
  store i8 39, ptr %406, align 1, !dbg !3035, !tbaa !1031
  br label %407, !dbg !3035

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !3038
  call void @llvm.dbg.value(metadata i64 %408, metadata !2639, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 1, metadata !2647, metadata !DIExpression()), !dbg !2691
  br label %409, !dbg !3039

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2691
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2691
  call void @llvm.dbg.value(metadata i8 %411, metadata !2647, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %410, metadata !2639, metadata !DIExpression()), !dbg !2691
  %412 = icmp ult i64 %410, %146, !dbg !3040
  br i1 %412, label %413, label %415, !dbg !3043

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !3040
  store i8 92, ptr %414, align 1, !dbg !3040, !tbaa !1031
  br label %415, !dbg !3040

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !3043
  call void @llvm.dbg.value(metadata i64 %416, metadata !2639, metadata !DIExpression()), !dbg !2691
  %417 = icmp ult i64 %416, %146, !dbg !3044
  br i1 %417, label %418, label %422, !dbg !3047

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !3044
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !3044
  store i8 %420, ptr %421, align 1, !dbg !3044, !tbaa !1031
  br label %422, !dbg !3044

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !3047
  call void @llvm.dbg.value(metadata i64 %423, metadata !2639, metadata !DIExpression()), !dbg !2691
  %424 = icmp ult i64 %423, %146, !dbg !3048
  br i1 %424, label %425, label %430, !dbg !3051

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !3048
  %428 = or i8 %427, 48, !dbg !3048
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !3048
  store i8 %428, ptr %429, align 1, !dbg !3048, !tbaa !1031
  br label %430, !dbg !3048

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !3051
  call void @llvm.dbg.value(metadata i64 %431, metadata !2639, metadata !DIExpression()), !dbg !2691
  %432 = and i8 %387, 7, !dbg !3052
  %433 = or i8 %432, 48, !dbg !3053
  call void @llvm.dbg.value(metadata i8 %433, metadata !2660, metadata !DIExpression()), !dbg !2800
  br label %443, !dbg !3054

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !3055
  %436 = icmp eq i8 %435, 0, !dbg !3055
  br i1 %436, label %443, label %437, !dbg !3057

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !3058
  br i1 %438, label %439, label %441, !dbg !3062

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3058
  store i8 92, ptr %440, align 1, !dbg !3058, !tbaa !1031
  br label %441, !dbg !3058

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !3062
  call void @llvm.dbg.value(metadata i64 %442, metadata !2639, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 0, metadata !2655, metadata !DIExpression()), !dbg !2800
  br label %443, !dbg !3063

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2691
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !2792
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !2800
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !2800
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !2800
  call void @llvm.dbg.value(metadata i8 %448, metadata !2660, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 %447, metadata !2658, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 %446, metadata !2655, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 %445, metadata !2647, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %444, metadata !2639, metadata !DIExpression()), !dbg !2691
  %449 = add i64 %384, 1, !dbg !3064
  %450 = icmp ugt i64 %379, %449, !dbg !3066
  br i1 %450, label %451, label %478, !dbg !3067

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !3068
  %453 = icmp ne i8 %452, 0, !dbg !3068
  %454 = and i8 %447, 1, !dbg !3068
  %455 = icmp eq i8 %454, 0, !dbg !3068
  %456 = select i1 %453, i1 %455, i1 false, !dbg !3068
  br i1 %456, label %457, label %468, !dbg !3068

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !3071
  br i1 %458, label %459, label %461, !dbg !3075

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !3071
  store i8 39, ptr %460, align 1, !dbg !3071, !tbaa !1031
  br label %461, !dbg !3071

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !3075
  call void @llvm.dbg.value(metadata i64 %462, metadata !2639, metadata !DIExpression()), !dbg !2691
  %463 = icmp ult i64 %462, %146, !dbg !3076
  br i1 %463, label %464, label %466, !dbg !3079

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !3076
  store i8 39, ptr %465, align 1, !dbg !3076, !tbaa !1031
  br label %466, !dbg !3076

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !3079
  call void @llvm.dbg.value(metadata i64 %467, metadata !2639, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 0, metadata !2647, metadata !DIExpression()), !dbg !2691
  br label %468, !dbg !3080

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !3081
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2691
  call void @llvm.dbg.value(metadata i8 %470, metadata !2647, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %469, metadata !2639, metadata !DIExpression()), !dbg !2691
  %471 = icmp ult i64 %469, %146, !dbg !3082
  br i1 %471, label %472, label %474, !dbg !3085

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !3082
  store i8 %448, ptr %473, align 1, !dbg !3082, !tbaa !1031
  br label %474, !dbg !3082

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !3085
  call void @llvm.dbg.value(metadata i64 %475, metadata !2639, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %449, metadata !2653, metadata !DIExpression()), !dbg !2790
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !3086
  %477 = load i8, ptr %476, align 1, !dbg !3086, !tbaa !1031
  call void @llvm.dbg.value(metadata i8 %477, metadata !2660, metadata !DIExpression()), !dbg !2800
  br label %381, !dbg !3087, !llvm.loop !3088

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !2800
  call void @llvm.dbg.value(metadata i8 %448, metadata !2660, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 %479, metadata !2659, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 %447, metadata !2658, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 %446, metadata !2655, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %384, metadata !2653, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 %445, metadata !2647, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %444, metadata !2639, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %378, metadata !2632, metadata !DIExpression()), !dbg !2691
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !3091
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2691
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2696
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2691
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2691
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !2790
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !2800
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !2800
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !2800
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !2630, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %489, metadata !2660, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 %488, metadata !2659, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 %487, metadata !2658, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 %173, metadata !2655, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %486, metadata !2653, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 %485, metadata !2647, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %484, metadata !2645, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %483, metadata !2640, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %482, metadata !2639, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %481, metadata !2632, metadata !DIExpression()), !dbg !2691
  br i1 %127, label %502, label %491, !dbg !3092

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
  br i1 %137, label %503, label %524, !dbg !3094

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !3095

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
  %514 = lshr i8 %505, 5, !dbg !3096
  %515 = zext i8 %514 to i64, !dbg !3096
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !3097
  %517 = load i32, ptr %516, align 4, !dbg !3097, !tbaa !1022
  %518 = and i8 %505, 31, !dbg !3098
  %519 = zext i8 %518 to i32, !dbg !3098
  %520 = shl nuw i32 1, %519, !dbg !3099
  %521 = and i32 %517, %520, !dbg !3099
  %522 = icmp eq i32 %521, 0, !dbg !3099
  %523 = and i1 %172, %522, !dbg !3100
  br i1 %523, label %573, label %535, !dbg !3100

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
  br i1 %172, label %573, label %535, !dbg !3101

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !3091
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2691
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2696
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !2700
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !2792
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !3102
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !2800
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !2800
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !2630, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %543, metadata !2660, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 %542, metadata !2659, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %541, metadata !2653, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 %540, metadata !2647, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %539, metadata !2645, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %538, metadata !2640, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %537, metadata !2639, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %536, metadata !2632, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.label(metadata !2688), !dbg !3103
  br i1 %132, label %545, label %674, !dbg !3104

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !2658, metadata !DIExpression()), !dbg !2800
  %546 = and i8 %540, 1, !dbg !3106
  %547 = icmp eq i8 %546, 0, !dbg !3106
  %548 = select i1 %133, i1 %547, i1 false, !dbg !3106
  br i1 %548, label %549, label %565, !dbg !3106

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !3108
  br i1 %550, label %551, label %553, !dbg !3112

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !3108
  store i8 39, ptr %552, align 1, !dbg !3108, !tbaa !1031
  br label %553, !dbg !3108

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !3112
  call void @llvm.dbg.value(metadata i64 %554, metadata !2639, metadata !DIExpression()), !dbg !2691
  %555 = icmp ult i64 %554, %544, !dbg !3113
  br i1 %555, label %556, label %558, !dbg !3116

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !3113
  store i8 36, ptr %557, align 1, !dbg !3113, !tbaa !1031
  br label %558, !dbg !3113

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !3116
  call void @llvm.dbg.value(metadata i64 %559, metadata !2639, metadata !DIExpression()), !dbg !2691
  %560 = icmp ult i64 %559, %544, !dbg !3117
  br i1 %560, label %561, label %563, !dbg !3120

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !3117
  store i8 39, ptr %562, align 1, !dbg !3117, !tbaa !1031
  br label %563, !dbg !3117

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !3120
  call void @llvm.dbg.value(metadata i64 %564, metadata !2639, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 1, metadata !2647, metadata !DIExpression()), !dbg !2691
  br label %565, !dbg !3121

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !2800
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2691
  call void @llvm.dbg.value(metadata i8 %567, metadata !2647, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %566, metadata !2639, metadata !DIExpression()), !dbg !2691
  %568 = icmp ult i64 %566, %544, !dbg !3122
  br i1 %568, label %569, label %571, !dbg !3125

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !3122
  store i8 92, ptr %570, align 1, !dbg !3122, !tbaa !1031
  br label %571, !dbg !3122

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !3125
  call void @llvm.dbg.value(metadata i64 %544, metadata !2630, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %543, metadata !2660, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 %542, metadata !2659, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 1, metadata !2658, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %541, metadata !2653, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 %567, metadata !2647, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %539, metadata !2645, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %538, metadata !2640, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %572, metadata !2639, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %536, metadata !2632, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.label(metadata !2689), !dbg !3126
  br label %600, !dbg !3127

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !3091
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2691
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2696
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !2700
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !2792
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !3102
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !2800
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !2800
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !3130
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !2630, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %582, metadata !2660, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 %581, metadata !2659, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 %580, metadata !2658, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %579, metadata !2653, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 %578, metadata !2647, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %577, metadata !2645, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %576, metadata !2640, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %575, metadata !2639, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %574, metadata !2632, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.label(metadata !2689), !dbg !3126
  %584 = and i8 %578, 1, !dbg !3127
  %585 = icmp ne i8 %584, 0, !dbg !3127
  %586 = and i8 %580, 1, !dbg !3127
  %587 = icmp eq i8 %586, 0, !dbg !3127
  %588 = select i1 %585, i1 %587, i1 false, !dbg !3127
  br i1 %588, label %589, label %600, !dbg !3127

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !3131
  br i1 %590, label %591, label %593, !dbg !3135

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !3131
  store i8 39, ptr %592, align 1, !dbg !3131, !tbaa !1031
  br label %593, !dbg !3131

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !3135
  call void @llvm.dbg.value(metadata i64 %594, metadata !2639, metadata !DIExpression()), !dbg !2691
  %595 = icmp ult i64 %594, %583, !dbg !3136
  br i1 %595, label %596, label %598, !dbg !3139

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !3136
  store i8 39, ptr %597, align 1, !dbg !3136, !tbaa !1031
  br label %598, !dbg !3136

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !3139
  call void @llvm.dbg.value(metadata i64 %599, metadata !2639, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 0, metadata !2647, metadata !DIExpression()), !dbg !2691
  br label %600, !dbg !3140

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !2800
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2691
  call void @llvm.dbg.value(metadata i8 %609, metadata !2647, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %608, metadata !2639, metadata !DIExpression()), !dbg !2691
  %610 = icmp ult i64 %608, %601, !dbg !3141
  br i1 %610, label %611, label %613, !dbg !3144

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !3141
  store i8 %602, ptr %612, align 1, !dbg !3141, !tbaa !1031
  br label %613, !dbg !3141

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !3144
  call void @llvm.dbg.value(metadata i64 %614, metadata !2639, metadata !DIExpression()), !dbg !2691
  %615 = icmp eq i8 %603, 0, !dbg !3145
  %616 = select i1 %615, i8 0, i8 %143, !dbg !3147
  call void @llvm.dbg.value(metadata i8 %616, metadata !2646, metadata !DIExpression()), !dbg !2691
  br label %617, !dbg !3148

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !3091
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2691
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2696
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !2700
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !2701
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !2792
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !3102
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !2630, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %624, metadata !2653, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 %623, metadata !2647, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %622, metadata !2646, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %621, metadata !2645, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %620, metadata !2640, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %619, metadata !2639, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %618, metadata !2632, metadata !DIExpression()), !dbg !2691
  %626 = add i64 %624, 1, !dbg !3149
  call void @llvm.dbg.value(metadata i64 %626, metadata !2653, metadata !DIExpression()), !dbg !2790
  br label %138, !dbg !3150, !llvm.loop !3151

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !2630, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %143, metadata !2646, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %142, metadata !2645, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %141, metadata !2640, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %140, metadata !2639, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %139, metadata !2632, metadata !DIExpression()), !dbg !2691
  %628 = icmp eq i64 %140, 0, !dbg !3153
  %629 = and i1 %133, %628, !dbg !3155
  %630 = xor i1 %629, true, !dbg !3155
  %631 = select i1 %630, i1 true, i1 %132, !dbg !3155
  br i1 %631, label %632, label %670, !dbg !3155

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !3156
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !3156
  br i1 %636, label %637, label %646, !dbg !3156

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !3158
  %639 = icmp eq i8 %638, 0, !dbg !3158
  br i1 %639, label %642, label %640, !dbg !3161

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !3162
  br label %694, !dbg !3163

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !3164
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !3166
  br i1 %645, label %28, label %646, !dbg !3166

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !3167
  %649 = select i1 %648, i1 %647, i1 false, !dbg !3169
  br i1 %649, label %650, label %665, !dbg !3169

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !2641, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %140, metadata !2639, metadata !DIExpression()), !dbg !2691
  %651 = load i8, ptr %120, align 1, !dbg !3170, !tbaa !1031
  %652 = icmp eq i8 %651, 0, !dbg !3173
  br i1 %652, label %665, label %653, !dbg !3173

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !2641, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %656, metadata !2639, metadata !DIExpression()), !dbg !2691
  %657 = icmp ult i64 %656, %146, !dbg !3174
  br i1 %657, label %658, label %660, !dbg !3177

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !3174
  store i8 %654, ptr %659, align 1, !dbg !3174, !tbaa !1031
  br label %660, !dbg !3174

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !3177
  call void @llvm.dbg.value(metadata i64 %661, metadata !2639, metadata !DIExpression()), !dbg !2691
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !3178
  call void @llvm.dbg.value(metadata ptr %662, metadata !2641, metadata !DIExpression()), !dbg !2691
  %663 = load i8, ptr %662, align 1, !dbg !3170, !tbaa !1031
  %664 = icmp eq i8 %663, 0, !dbg !3173
  br i1 %664, label %665, label %653, !dbg !3173, !llvm.loop !3179

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !2773
  call void @llvm.dbg.value(metadata i64 %666, metadata !2639, metadata !DIExpression()), !dbg !2691
  %667 = icmp ult i64 %666, %146, !dbg !3181
  br i1 %667, label %668, label %694, !dbg !3183

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !3184
  store i8 0, ptr %669, align 1, !dbg !3185, !tbaa !1031
  br label %694, !dbg !3184

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2690), !dbg !3186
  %672 = icmp eq i8 %124, 0, !dbg !3187
  %673 = select i1 %672, i32 2, i32 4, !dbg !3187
  br label %684, !dbg !3187

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !3187
  %678 = select i1 %677, i32 2, i32 4, !dbg !3187
  br label %679, !dbg !3189

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2690), !dbg !3186
  %683 = icmp eq i32 %116, 2, !dbg !3189
  br i1 %683, label %684, label %688, !dbg !3187

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !3187

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !2633, metadata !DIExpression()), !dbg !2691
  %692 = and i32 %5, -3, !dbg !3190
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !3191
  br label %694, !dbg !3192

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !3193
}

; Function Attrs: nounwind
declare !dbg !3194 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3197 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3200 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3202 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3206, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i64 %1, metadata !3207, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata ptr %2, metadata !3208, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata ptr %0, metadata !3210, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64 %1, metadata !3215, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata ptr null, metadata !3216, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata ptr %2, metadata !3217, metadata !DIExpression()), !dbg !3223
  %4 = icmp eq ptr %2, null, !dbg !3225
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3225
  call void @llvm.dbg.value(metadata ptr %5, metadata !3218, metadata !DIExpression()), !dbg !3223
  %6 = tail call ptr @__errno_location() #43, !dbg !3226
  %7 = load i32, ptr %6, align 4, !dbg !3226, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %7, metadata !3219, metadata !DIExpression()), !dbg !3223
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3227
  %9 = load i32, ptr %8, align 4, !dbg !3227, !tbaa !2573
  %10 = or i32 %9, 1, !dbg !3228
  call void @llvm.dbg.value(metadata i32 %10, metadata !3220, metadata !DIExpression()), !dbg !3223
  %11 = load i32, ptr %5, align 8, !dbg !3229, !tbaa !2523
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3230
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3231
  %14 = load ptr, ptr %13, align 8, !dbg !3231, !tbaa !2594
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3232
  %16 = load ptr, ptr %15, align 8, !dbg !3232, !tbaa !2597
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3233
  %18 = add i64 %17, 1, !dbg !3234
  call void @llvm.dbg.value(metadata i64 %18, metadata !3221, metadata !DIExpression()), !dbg !3223
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #47, !dbg !3235
  call void @llvm.dbg.value(metadata ptr %19, metadata !3222, metadata !DIExpression()), !dbg !3223
  %20 = load i32, ptr %5, align 8, !dbg !3236, !tbaa !2523
  %21 = load ptr, ptr %13, align 8, !dbg !3237, !tbaa !2594
  %22 = load ptr, ptr %15, align 8, !dbg !3238, !tbaa !2597
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3239
  store i32 %7, ptr %6, align 4, !dbg !3240, !tbaa !1022
  ret ptr %19, !dbg !3241
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3211 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3210, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %1, metadata !3215, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata ptr %2, metadata !3216, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata ptr %3, metadata !3217, metadata !DIExpression()), !dbg !3242
  %5 = icmp eq ptr %3, null, !dbg !3243
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3243
  call void @llvm.dbg.value(metadata ptr %6, metadata !3218, metadata !DIExpression()), !dbg !3242
  %7 = tail call ptr @__errno_location() #43, !dbg !3244
  %8 = load i32, ptr %7, align 4, !dbg !3244, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %8, metadata !3219, metadata !DIExpression()), !dbg !3242
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3245
  %10 = load i32, ptr %9, align 4, !dbg !3245, !tbaa !2573
  %11 = icmp eq ptr %2, null, !dbg !3246
  %12 = zext i1 %11 to i32, !dbg !3246
  %13 = or i32 %10, %12, !dbg !3247
  call void @llvm.dbg.value(metadata i32 %13, metadata !3220, metadata !DIExpression()), !dbg !3242
  %14 = load i32, ptr %6, align 8, !dbg !3248, !tbaa !2523
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3249
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3250
  %17 = load ptr, ptr %16, align 8, !dbg !3250, !tbaa !2594
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3251
  %19 = load ptr, ptr %18, align 8, !dbg !3251, !tbaa !2597
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3252
  %21 = add i64 %20, 1, !dbg !3253
  call void @llvm.dbg.value(metadata i64 %21, metadata !3221, metadata !DIExpression()), !dbg !3242
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #47, !dbg !3254
  call void @llvm.dbg.value(metadata ptr %22, metadata !3222, metadata !DIExpression()), !dbg !3242
  %23 = load i32, ptr %6, align 8, !dbg !3255, !tbaa !2523
  %24 = load ptr, ptr %16, align 8, !dbg !3256, !tbaa !2594
  %25 = load ptr, ptr %18, align 8, !dbg !3257, !tbaa !2597
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3258
  store i32 %8, ptr %7, align 4, !dbg !3259, !tbaa !1022
  br i1 %11, label %28, label %27, !dbg !3260

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3261, !tbaa !1867
  br label %28, !dbg !3263

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3264
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3265 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3270, !tbaa !950
  call void @llvm.dbg.value(metadata ptr %1, metadata !3267, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i32 1, metadata !3268, metadata !DIExpression()), !dbg !3272
  %2 = load i32, ptr @nslots, align 4, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 1, metadata !3268, metadata !DIExpression()), !dbg !3272
  %3 = icmp sgt i32 %2, 1, !dbg !3273
  br i1 %3, label %4, label %6, !dbg !3275

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3273
  br label %10, !dbg !3275

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3276
  %8 = load ptr, ptr %7, align 8, !dbg !3276, !tbaa !3278
  %9 = icmp eq ptr %8, @slot0, !dbg !3280
  br i1 %9, label %17, label %16, !dbg !3281

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3268, metadata !DIExpression()), !dbg !3272
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3282
  %13 = load ptr, ptr %12, align 8, !dbg !3282, !tbaa !3278
  tail call void @free(ptr noundef %13) #40, !dbg !3283
  %14 = add nuw nsw i64 %11, 1, !dbg !3284
  call void @llvm.dbg.value(metadata i64 %14, metadata !3268, metadata !DIExpression()), !dbg !3272
  %15 = icmp eq i64 %14, %5, !dbg !3273
  br i1 %15, label %6, label %10, !dbg !3275, !llvm.loop !3285

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !3287
  store i64 256, ptr @slotvec0, align 8, !dbg !3289, !tbaa !3290
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3291, !tbaa !3278
  br label %17, !dbg !3292

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3293
  br i1 %18, label %20, label %19, !dbg !3295

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !3296
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3298, !tbaa !950
  br label %20, !dbg !3299

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3300, !tbaa !1022
  ret void, !dbg !3301
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3302 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3304, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata ptr %1, metadata !3305, metadata !DIExpression()), !dbg !3306
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3307
  ret ptr %3, !dbg !3308
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3309 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3313, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata ptr %1, metadata !3314, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i64 %2, metadata !3315, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata ptr %3, metadata !3316, metadata !DIExpression()), !dbg !3329
  %6 = tail call ptr @__errno_location() #43, !dbg !3330
  %7 = load i32, ptr %6, align 4, !dbg !3330, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %7, metadata !3317, metadata !DIExpression()), !dbg !3329
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3331, !tbaa !950
  call void @llvm.dbg.value(metadata ptr %8, metadata !3318, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3319, metadata !DIExpression()), !dbg !3329
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3332
  br i1 %9, label %10, label %11, !dbg !3332

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !3334
  unreachable, !dbg !3334

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3335, !tbaa !1022
  %13 = icmp sgt i32 %12, %0, !dbg !3336
  br i1 %13, label %32, label %14, !dbg !3337

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3338
  call void @llvm.dbg.value(metadata i1 %15, metadata !3320, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3339
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3340
  %16 = sext i32 %12 to i64, !dbg !3341
  call void @llvm.dbg.value(metadata i64 %16, metadata !3323, metadata !DIExpression()), !dbg !3339
  store i64 %16, ptr %5, align 8, !dbg !3342, !tbaa !1867
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3343
  %18 = add nuw nsw i32 %0, 1, !dbg !3344
  %19 = sub i32 %18, %12, !dbg !3345
  %20 = sext i32 %19 to i64, !dbg !3346
  call void @llvm.dbg.value(metadata ptr %5, metadata !3323, metadata !DIExpression(DW_OP_deref)), !dbg !3339
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3347
  call void @llvm.dbg.value(metadata ptr %21, metadata !3318, metadata !DIExpression()), !dbg !3329
  store ptr %21, ptr @slotvec, align 8, !dbg !3348, !tbaa !950
  br i1 %15, label %22, label %23, !dbg !3349

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3350, !tbaa.struct !3352
  br label %23, !dbg !3353

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3354, !tbaa !1022
  %25 = sext i32 %24 to i64, !dbg !3355
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3355
  %27 = load i64, ptr %5, align 8, !dbg !3356, !tbaa !1867
  call void @llvm.dbg.value(metadata i64 %27, metadata !3323, metadata !DIExpression()), !dbg !3339
  %28 = sub nsw i64 %27, %25, !dbg !3357
  %29 = shl i64 %28, 4, !dbg !3358
  call void @llvm.dbg.value(metadata ptr %26, metadata !2730, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 0, metadata !2733, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i64 %29, metadata !2734, metadata !DIExpression()), !dbg !3359
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3361
  %30 = load i64, ptr %5, align 8, !dbg !3362, !tbaa !1867
  call void @llvm.dbg.value(metadata i64 %30, metadata !3323, metadata !DIExpression()), !dbg !3339
  %31 = trunc i64 %30 to i32, !dbg !3362
  store i32 %31, ptr @nslots, align 4, !dbg !3363, !tbaa !1022
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3364
  br label %32, !dbg !3365

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3329
  call void @llvm.dbg.value(metadata ptr %33, metadata !3318, metadata !DIExpression()), !dbg !3329
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3366
  %36 = load i64, ptr %35, align 8, !dbg !3367, !tbaa !3290
  call void @llvm.dbg.value(metadata i64 %36, metadata !3324, metadata !DIExpression()), !dbg !3368
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3369
  %38 = load ptr, ptr %37, align 8, !dbg !3369, !tbaa !3278
  call void @llvm.dbg.value(metadata ptr %38, metadata !3326, metadata !DIExpression()), !dbg !3368
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3370
  %40 = load i32, ptr %39, align 4, !dbg !3370, !tbaa !2573
  %41 = or i32 %40, 1, !dbg !3371
  call void @llvm.dbg.value(metadata i32 %41, metadata !3327, metadata !DIExpression()), !dbg !3368
  %42 = load i32, ptr %3, align 8, !dbg !3372, !tbaa !2523
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3373
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3374
  %45 = load ptr, ptr %44, align 8, !dbg !3374, !tbaa !2594
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3375
  %47 = load ptr, ptr %46, align 8, !dbg !3375, !tbaa !2597
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3376
  call void @llvm.dbg.value(metadata i64 %48, metadata !3328, metadata !DIExpression()), !dbg !3368
  %49 = icmp ugt i64 %36, %48, !dbg !3377
  br i1 %49, label %60, label %50, !dbg !3379

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3380
  call void @llvm.dbg.value(metadata i64 %51, metadata !3324, metadata !DIExpression()), !dbg !3368
  store i64 %51, ptr %35, align 8, !dbg !3382, !tbaa !3290
  %52 = icmp eq ptr %38, @slot0, !dbg !3383
  br i1 %52, label %54, label %53, !dbg !3385

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3386
  br label %54, !dbg !3386

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #47, !dbg !3387
  call void @llvm.dbg.value(metadata ptr %55, metadata !3326, metadata !DIExpression()), !dbg !3368
  store ptr %55, ptr %37, align 8, !dbg !3388, !tbaa !3278
  %56 = load i32, ptr %3, align 8, !dbg !3389, !tbaa !2523
  %57 = load ptr, ptr %44, align 8, !dbg !3390, !tbaa !2594
  %58 = load ptr, ptr %46, align 8, !dbg !3391, !tbaa !2597
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3392
  br label %60, !dbg !3393

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3368
  call void @llvm.dbg.value(metadata ptr %61, metadata !3326, metadata !DIExpression()), !dbg !3368
  store i32 %7, ptr %6, align 4, !dbg !3394, !tbaa !1022
  ret ptr %61, !dbg !3395
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3396 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3400, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata ptr %1, metadata !3401, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i64 %2, metadata !3402, metadata !DIExpression()), !dbg !3403
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3404
  ret ptr %4, !dbg !3405
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3406 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3408, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata ptr %0, metadata !3305, metadata !DIExpression()), !dbg !3410
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3412
  ret ptr %2, !dbg !3413
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3414 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3418, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i64 %1, metadata !3419, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i32 0, metadata !3400, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata ptr %0, metadata !3401, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata i64 %1, metadata !3402, metadata !DIExpression()), !dbg !3421
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3423
  ret ptr %3, !dbg !3424
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3425 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3429, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i32 %1, metadata !3430, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata ptr %2, metadata !3431, metadata !DIExpression()), !dbg !3433
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3434
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3432, metadata !DIExpression()), !dbg !3435
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3436), !dbg !3439
  call void @llvm.dbg.value(metadata i32 %1, metadata !3440, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3445, metadata !DIExpression()), !dbg !3448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3448, !alias.scope !3436
  %5 = icmp eq i32 %1, 10, !dbg !3449
  br i1 %5, label %6, label %7, !dbg !3451

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3452, !noalias !3436
  unreachable, !dbg !3452

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3453, !tbaa !2523, !alias.scope !3436
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3454
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3455
  ret ptr %8, !dbg !3456
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3457 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3461, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 %1, metadata !3462, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata ptr %2, metadata !3463, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64 %3, metadata !3464, metadata !DIExpression()), !dbg !3466
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3467
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3465, metadata !DIExpression()), !dbg !3468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3469), !dbg !3472
  call void @llvm.dbg.value(metadata i32 %1, metadata !3440, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3445, metadata !DIExpression()), !dbg !3475
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3475, !alias.scope !3469
  %6 = icmp eq i32 %1, 10, !dbg !3476
  br i1 %6, label %7, label %8, !dbg !3477

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3478, !noalias !3469
  unreachable, !dbg !3478

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3479, !tbaa !2523, !alias.scope !3469
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3480
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3481
  ret ptr %9, !dbg !3482
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3483 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3487, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata ptr %1, metadata !3488, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i32 0, metadata !3429, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 %0, metadata !3430, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata ptr %1, metadata !3431, metadata !DIExpression()), !dbg !3490
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3492
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3432, metadata !DIExpression()), !dbg !3493
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3494), !dbg !3497
  call void @llvm.dbg.value(metadata i32 %0, metadata !3440, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3445, metadata !DIExpression()), !dbg !3500
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3500, !alias.scope !3494
  %4 = icmp eq i32 %0, 10, !dbg !3501
  br i1 %4, label %5, label %6, !dbg !3502

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3503, !noalias !3494
  unreachable, !dbg !3503

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3504, !tbaa !2523, !alias.scope !3494
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3505
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3506
  ret ptr %7, !dbg !3507
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3508 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3512, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata ptr %1, metadata !3513, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 %2, metadata !3514, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i32 0, metadata !3461, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i32 %0, metadata !3462, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata ptr %1, metadata !3463, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i64 %2, metadata !3464, metadata !DIExpression()), !dbg !3516
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3518
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3465, metadata !DIExpression()), !dbg !3519
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3520), !dbg !3523
  call void @llvm.dbg.value(metadata i32 %0, metadata !3440, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3445, metadata !DIExpression()), !dbg !3526
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3526, !alias.scope !3520
  %5 = icmp eq i32 %0, 10, !dbg !3527
  br i1 %5, label %6, label %7, !dbg !3528

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3529, !noalias !3520
  unreachable, !dbg !3529

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3530, !tbaa !2523, !alias.scope !3520
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3531
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3532
  ret ptr %8, !dbg !3533
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3534 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3538, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i64 %1, metadata !3539, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i8 %2, metadata !3540, metadata !DIExpression()), !dbg !3542
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3543
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3541, metadata !DIExpression()), !dbg !3544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3545, !tbaa.struct !3546
  call void @llvm.dbg.value(metadata ptr %4, metadata !2540, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i8 %2, metadata !2541, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i32 1, metadata !2542, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i8 %2, metadata !2543, metadata !DIExpression()), !dbg !3547
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3549
  %6 = lshr i8 %2, 5, !dbg !3550
  %7 = zext i8 %6 to i64, !dbg !3550
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3551
  call void @llvm.dbg.value(metadata ptr %8, metadata !2544, metadata !DIExpression()), !dbg !3547
  %9 = and i8 %2, 31, !dbg !3552
  %10 = zext i8 %9 to i32, !dbg !3552
  call void @llvm.dbg.value(metadata i32 %10, metadata !2546, metadata !DIExpression()), !dbg !3547
  %11 = load i32, ptr %8, align 4, !dbg !3553, !tbaa !1022
  %12 = lshr i32 %11, %10, !dbg !3554
  call void @llvm.dbg.value(metadata i32 %12, metadata !2547, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3547
  %13 = and i32 %12, 1, !dbg !3555
  %14 = xor i32 %13, 1, !dbg !3555
  %15 = shl nuw i32 %14, %10, !dbg !3556
  %16 = xor i32 %15, %11, !dbg !3557
  store i32 %16, ptr %8, align 4, !dbg !3557, !tbaa !1022
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3558
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3559
  ret ptr %17, !dbg !3560
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3561 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3565, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i8 %1, metadata !3566, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata ptr %0, metadata !3538, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i64 -1, metadata !3539, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i8 %1, metadata !3540, metadata !DIExpression()), !dbg !3568
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3570
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3541, metadata !DIExpression()), !dbg !3571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3572, !tbaa.struct !3546
  call void @llvm.dbg.value(metadata ptr %3, metadata !2540, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i8 %1, metadata !2541, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 1, metadata !2542, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i8 %1, metadata !2543, metadata !DIExpression()), !dbg !3573
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3575
  %5 = lshr i8 %1, 5, !dbg !3576
  %6 = zext i8 %5 to i64, !dbg !3576
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3577
  call void @llvm.dbg.value(metadata ptr %7, metadata !2544, metadata !DIExpression()), !dbg !3573
  %8 = and i8 %1, 31, !dbg !3578
  %9 = zext i8 %8 to i32, !dbg !3578
  call void @llvm.dbg.value(metadata i32 %9, metadata !2546, metadata !DIExpression()), !dbg !3573
  %10 = load i32, ptr %7, align 4, !dbg !3579, !tbaa !1022
  %11 = lshr i32 %10, %9, !dbg !3580
  call void @llvm.dbg.value(metadata i32 %11, metadata !2547, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3573
  %12 = and i32 %11, 1, !dbg !3581
  %13 = xor i32 %12, 1, !dbg !3581
  %14 = shl nuw i32 %13, %9, !dbg !3582
  %15 = xor i32 %14, %10, !dbg !3583
  store i32 %15, ptr %7, align 4, !dbg !3583, !tbaa !1022
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3584
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3585
  ret ptr %16, !dbg !3586
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3587 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3589, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata ptr %0, metadata !3565, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8 58, metadata !3566, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata ptr %0, metadata !3538, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i64 -1, metadata !3539, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i8 58, metadata !3540, metadata !DIExpression()), !dbg !3593
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3595
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3541, metadata !DIExpression()), !dbg !3596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3597, !tbaa.struct !3546
  call void @llvm.dbg.value(metadata ptr %2, metadata !2540, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i8 58, metadata !2541, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i32 1, metadata !2542, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i8 58, metadata !2543, metadata !DIExpression()), !dbg !3598
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3600
  call void @llvm.dbg.value(metadata ptr %3, metadata !2544, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i32 26, metadata !2546, metadata !DIExpression()), !dbg !3598
  %4 = load i32, ptr %3, align 4, !dbg !3601, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %4, metadata !2547, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3598
  %5 = or i32 %4, 67108864, !dbg !3602
  store i32 %5, ptr %3, align 4, !dbg !3602, !tbaa !1022
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3603
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3604
  ret ptr %6, !dbg !3605
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3606 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3608, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 %1, metadata !3609, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata ptr %0, metadata !3538, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i64 %1, metadata !3539, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i8 58, metadata !3540, metadata !DIExpression()), !dbg !3611
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3613
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3541, metadata !DIExpression()), !dbg !3614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3615, !tbaa.struct !3546
  call void @llvm.dbg.value(metadata ptr %3, metadata !2540, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i8 58, metadata !2541, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i32 1, metadata !2542, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i8 58, metadata !2543, metadata !DIExpression()), !dbg !3616
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3618
  call void @llvm.dbg.value(metadata ptr %4, metadata !2544, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i32 26, metadata !2546, metadata !DIExpression()), !dbg !3616
  %5 = load i32, ptr %4, align 4, !dbg !3619, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %5, metadata !2547, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3616
  %6 = or i32 %5, 67108864, !dbg !3620
  store i32 %6, ptr %4, align 4, !dbg !3620, !tbaa !1022
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3621
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3622
  ret ptr %7, !dbg !3623
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3624 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3445, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3630
  call void @llvm.dbg.value(metadata i32 %0, metadata !3626, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i32 %1, metadata !3627, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata ptr %2, metadata !3628, metadata !DIExpression()), !dbg !3632
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3633
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3629, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i32 %1, metadata !3440, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i32 0, metadata !3445, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3635
  %5 = icmp eq i32 %1, 10, !dbg !3636
  br i1 %5, label %6, label %7, !dbg !3637

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3638, !noalias !3639
  unreachable, !dbg !3638

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3445, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3635
  store i32 %1, ptr %4, align 8, !dbg !3642, !tbaa.struct !3546
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3642
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3642
  call void @llvm.dbg.value(metadata ptr %4, metadata !2540, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i8 58, metadata !2541, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i32 1, metadata !2542, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i8 58, metadata !2543, metadata !DIExpression()), !dbg !3643
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3645
  call void @llvm.dbg.value(metadata ptr %9, metadata !2544, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i32 26, metadata !2546, metadata !DIExpression()), !dbg !3643
  %10 = load i32, ptr %9, align 4, !dbg !3646, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %10, metadata !2547, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3643
  %11 = or i32 %10, 67108864, !dbg !3647
  store i32 %11, ptr %9, align 4, !dbg !3647, !tbaa !1022
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3648
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3649
  ret ptr %12, !dbg !3650
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3651 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3655, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata ptr %1, metadata !3656, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata ptr %2, metadata !3657, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata ptr %3, metadata !3658, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i32 %0, metadata !3660, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata ptr %1, metadata !3665, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata ptr %2, metadata !3666, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata ptr %3, metadata !3667, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i64 -1, metadata !3668, metadata !DIExpression()), !dbg !3670
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3672
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3669, metadata !DIExpression()), !dbg !3673
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3674, !tbaa.struct !3546
  call void @llvm.dbg.value(metadata ptr %5, metadata !2580, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata ptr %1, metadata !2581, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata ptr %2, metadata !2582, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata ptr %5, metadata !2580, metadata !DIExpression()), !dbg !3675
  store i32 10, ptr %5, align 8, !dbg !3677, !tbaa !2523
  %6 = icmp ne ptr %1, null, !dbg !3678
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3679
  br i1 %8, label %10, label %9, !dbg !3679

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3680
  unreachable, !dbg !3680

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3681
  store ptr %1, ptr %11, align 8, !dbg !3682, !tbaa !2594
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3683
  store ptr %2, ptr %12, align 8, !dbg !3684, !tbaa !2597
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3685
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3686
  ret ptr %13, !dbg !3687
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3661 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3660, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata ptr %1, metadata !3665, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata ptr %2, metadata !3666, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata ptr %3, metadata !3667, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i64 %4, metadata !3668, metadata !DIExpression()), !dbg !3688
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3689
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3669, metadata !DIExpression()), !dbg !3690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3691, !tbaa.struct !3546
  call void @llvm.dbg.value(metadata ptr %6, metadata !2580, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata ptr %1, metadata !2581, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata ptr %2, metadata !2582, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata ptr %6, metadata !2580, metadata !DIExpression()), !dbg !3692
  store i32 10, ptr %6, align 8, !dbg !3694, !tbaa !2523
  %7 = icmp ne ptr %1, null, !dbg !3695
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3696
  br i1 %9, label %11, label %10, !dbg !3696

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3697
  unreachable, !dbg !3697

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3698
  store ptr %1, ptr %12, align 8, !dbg !3699, !tbaa !2594
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3700
  store ptr %2, ptr %13, align 8, !dbg !3701, !tbaa !2597
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3702
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3703
  ret ptr %14, !dbg !3704
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3705 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3709, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata ptr %1, metadata !3710, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata ptr %2, metadata !3711, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i32 0, metadata !3655, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata ptr %0, metadata !3656, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata ptr %1, metadata !3657, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata ptr %2, metadata !3658, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i32 0, metadata !3660, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata ptr %0, metadata !3665, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata ptr %1, metadata !3666, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata ptr %2, metadata !3667, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i64 -1, metadata !3668, metadata !DIExpression()), !dbg !3715
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3717
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3669, metadata !DIExpression()), !dbg !3718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3719, !tbaa.struct !3546
  call void @llvm.dbg.value(metadata ptr %4, metadata !2580, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata ptr %0, metadata !2581, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata ptr %1, metadata !2582, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata ptr %4, metadata !2580, metadata !DIExpression()), !dbg !3720
  store i32 10, ptr %4, align 8, !dbg !3722, !tbaa !2523
  %5 = icmp ne ptr %0, null, !dbg !3723
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3724
  br i1 %7, label %9, label %8, !dbg !3724

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3725
  unreachable, !dbg !3725

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3726
  store ptr %0, ptr %10, align 8, !dbg !3727, !tbaa !2594
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3728
  store ptr %1, ptr %11, align 8, !dbg !3729, !tbaa !2597
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3730
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3731
  ret ptr %12, !dbg !3732
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3733 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3737, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata ptr %1, metadata !3738, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata ptr %2, metadata !3739, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 %3, metadata !3740, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i32 0, metadata !3660, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata ptr %0, metadata !3665, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata ptr %1, metadata !3666, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata ptr %2, metadata !3667, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i64 %3, metadata !3668, metadata !DIExpression()), !dbg !3742
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3744
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3669, metadata !DIExpression()), !dbg !3745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3746, !tbaa.struct !3546
  call void @llvm.dbg.value(metadata ptr %5, metadata !2580, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata ptr %0, metadata !2581, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata ptr %1, metadata !2582, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata ptr %5, metadata !2580, metadata !DIExpression()), !dbg !3747
  store i32 10, ptr %5, align 8, !dbg !3749, !tbaa !2523
  %6 = icmp ne ptr %0, null, !dbg !3750
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3751
  br i1 %8, label %10, label %9, !dbg !3751

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3752
  unreachable, !dbg !3752

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3753
  store ptr %0, ptr %11, align 8, !dbg !3754, !tbaa !2594
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3755
  store ptr %1, ptr %12, align 8, !dbg !3756, !tbaa !2597
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3757
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3758
  ret ptr %13, !dbg !3759
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3760 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3764, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata ptr %1, metadata !3765, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata i64 %2, metadata !3766, metadata !DIExpression()), !dbg !3767
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3768
  ret ptr %4, !dbg !3769
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3770 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3774, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 %1, metadata !3775, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i32 0, metadata !3764, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata ptr %0, metadata !3765, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i64 %1, metadata !3766, metadata !DIExpression()), !dbg !3777
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3779
  ret ptr %3, !dbg !3780
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3781 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3785, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata ptr %1, metadata !3786, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i32 %0, metadata !3764, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata ptr %1, metadata !3765, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i64 -1, metadata !3766, metadata !DIExpression()), !dbg !3788
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3790
  ret ptr %3, !dbg !3791
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3792 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3796, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i32 0, metadata !3785, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata ptr %0, metadata !3786, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i32 0, metadata !3764, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata ptr %0, metadata !3765, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i64 -1, metadata !3766, metadata !DIExpression()), !dbg !3800
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3802
  ret ptr %2, !dbg !3803
}

; Function Attrs: nounwind uwtable
define dso_local i32 @str2sig(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 !dbg !3804 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3808, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata ptr %1, metadata !3809, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata ptr %0, metadata !3811, metadata !DIExpression()), !dbg !3832
  %6 = load i8, ptr %0, align 1, !dbg !3834, !tbaa !1031
  %7 = sext i8 %6 to i32, !dbg !3834
  %8 = add nsw i32 %7, -48, !dbg !3834
  %9 = icmp ult i32 %8, 10, !dbg !3834
  br i1 %9, label %10, label %18, !dbg !3835

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #40, !dbg !3836
  call void @llvm.dbg.value(metadata ptr %3, metadata !3814, metadata !DIExpression(DW_OP_deref)), !dbg !3837
  %11 = call i64 @strtol(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 10) #40, !dbg !3838
  call void @llvm.dbg.value(metadata i64 %11, metadata !3817, metadata !DIExpression()), !dbg !3837
  %12 = load ptr, ptr %3, align 8, !dbg !3839, !tbaa !950
  call void @llvm.dbg.value(metadata ptr %12, metadata !3814, metadata !DIExpression()), !dbg !3837
  %13 = load i8, ptr %12, align 1, !dbg !3841, !tbaa !1031
  %14 = icmp ne i8 %13, 0, !dbg !3841
  %15 = icmp sgt i64 %11, 64
  %16 = select i1 %14, i1 true, i1 %15, !dbg !3842
  %17 = trunc i64 %11 to i32, !dbg !3842
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40, !dbg !3843
  br i1 %16, label %74, label %75

18:                                               ; preds = %2, %23
  %19 = phi i64 [ %24, %23 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !3818, metadata !DIExpression()), !dbg !3844
  %20 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %19, i32 1, !dbg !3845
  call void @llvm.dbg.value(metadata ptr %20, metadata !3848, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata ptr %0, metadata !3851, metadata !DIExpression()), !dbg !3852
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !3854
  %22 = icmp eq i32 %21, 0, !dbg !3855
  br i1 %22, label %26, label %23, !dbg !3856

23:                                               ; preds = %18
  %24 = add nuw nsw i64 %19, 1, !dbg !3857
  call void @llvm.dbg.value(metadata i64 %24, metadata !3818, metadata !DIExpression()), !dbg !3844
  %25 = icmp eq i64 %24, 35, !dbg !3858
  br i1 %25, label %30, label %18, !dbg !3859, !llvm.loop !3860

26:                                               ; preds = %18
  %27 = and i64 %19, 4294967295, !dbg !3862
  %28 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %27, !dbg !3863
  %29 = load i32, ptr %28, align 4, !dbg !3864, !tbaa !3865
  br label %75

30:                                               ; preds = %23
  %31 = tail call i32 @__libc_current_sigrtmin() #40, !dbg !3867
  call void @llvm.dbg.value(metadata i32 %31, metadata !3821, metadata !DIExpression()), !dbg !3868
  %32 = tail call i32 @__libc_current_sigrtmax() #40, !dbg !3869
  call void @llvm.dbg.value(metadata i32 %32, metadata !3823, metadata !DIExpression()), !dbg !3868
  %33 = icmp sgt i32 %31, 0, !dbg !3870
  br i1 %33, label %34, label %53, !dbg !3871

34:                                               ; preds = %30
  %35 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.101, i64 noundef 5) #41, !dbg !3872
  %36 = icmp eq i32 %35, 0, !dbg !3873
  br i1 %36, label %37, label %53, !dbg !3874

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !3875
  %38 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !3876
  call void @llvm.dbg.value(metadata ptr %4, metadata !3824, metadata !DIExpression(DW_OP_deref)), !dbg !3877
  %39 = call i64 @strtol(ptr noundef nonnull %38, ptr noundef nonnull %4, i32 noundef 10) #40, !dbg !3878
  call void @llvm.dbg.value(metadata i64 %39, metadata !3827, metadata !DIExpression()), !dbg !3877
  %40 = load ptr, ptr %4, align 8, !dbg !3879, !tbaa !950
  call void @llvm.dbg.value(metadata ptr %40, metadata !3824, metadata !DIExpression()), !dbg !3877
  %41 = load i8, ptr %40, align 1, !dbg !3881, !tbaa !1031
  %42 = icmp eq i8 %41, 0, !dbg !3881
  %43 = icmp sgt i64 %39, -1
  %44 = select i1 %42, i1 %43, i1 false, !dbg !3882
  br i1 %44, label %45, label %49, !dbg !3882

45:                                               ; preds = %37
  %46 = sub nsw i32 %32, %31, !dbg !3883
  %47 = sext i32 %46 to i64, !dbg !3884
  %48 = icmp sgt i64 %39, %47, !dbg !3885
  br i1 %48, label %49, label %50, !dbg !3886

49:                                               ; preds = %45, %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !3887
  br label %74

50:                                               ; preds = %45
  %51 = trunc i64 %39 to i32, !dbg !3888
  %52 = add i32 %31, %51, !dbg !3888
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !3887
  br label %75

53:                                               ; preds = %34, %30
  %54 = icmp sgt i32 %32, 0, !dbg !3889
  br i1 %54, label %55, label %74, !dbg !3890

55:                                               ; preds = %53
  %56 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.1.102, i64 noundef 5) #41, !dbg !3891
  %57 = icmp eq i32 %56, 0, !dbg !3892
  br i1 %57, label %58, label %74, !dbg !3893

58:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3894
  %59 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !3895
  call void @llvm.dbg.value(metadata ptr %5, metadata !3828, metadata !DIExpression(DW_OP_deref)), !dbg !3896
  %60 = call i64 @strtol(ptr noundef nonnull %59, ptr noundef nonnull %5, i32 noundef 10) #40, !dbg !3897
  call void @llvm.dbg.value(metadata i64 %60, metadata !3831, metadata !DIExpression()), !dbg !3896
  %61 = load ptr, ptr %5, align 8, !dbg !3898, !tbaa !950
  call void @llvm.dbg.value(metadata ptr %61, metadata !3828, metadata !DIExpression()), !dbg !3896
  %62 = load i8, ptr %61, align 1, !dbg !3900, !tbaa !1031
  %63 = icmp eq i8 %62, 0, !dbg !3900
  br i1 %63, label %64, label %70, !dbg !3901

64:                                               ; preds = %58
  %65 = sub nsw i32 %31, %32, !dbg !3902
  %66 = sext i32 %65 to i64, !dbg !3903
  %67 = icmp sge i64 %60, %66, !dbg !3904
  %68 = icmp slt i64 %60, 1
  %69 = and i1 %67, %68, !dbg !3905
  br i1 %69, label %71, label %70, !dbg !3905

70:                                               ; preds = %64, %58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3906
  br label %74

71:                                               ; preds = %64
  %72 = trunc i64 %60 to i32, !dbg !3907
  %73 = add i32 %32, %72, !dbg !3907
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3906
  br label %75

74:                                               ; preds = %70, %55, %53, %49, %10
  br label %75, !dbg !3908

75:                                               ; preds = %10, %26, %50, %71, %74
  %76 = phi i32 [ %17, %10 ], [ -1, %74 ], [ %29, %26 ], [ %52, %50 ], [ %73, %71 ], !dbg !3832
  store i32 %76, ptr %1, align 4, !dbg !3909, !tbaa !1022
  %77 = ashr i32 %76, 31, !dbg !3910
  ret i32 %77, !dbg !3911
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sig2str(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3912 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3916, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata ptr %1, metadata !3917, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 0, metadata !3918, metadata !DIExpression()), !dbg !3926
  br label %3, !dbg !3927

3:                                                ; preds = %28, %2
  %4 = phi i64 [ 0, %2 ], [ %29, %28 ]
  call void @llvm.dbg.value(metadata i64 %4, metadata !3918, metadata !DIExpression()), !dbg !3926
  %5 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %4, !dbg !3928
  %6 = load i32, ptr %5, align 4, !dbg !3931, !tbaa !3865
  %7 = icmp eq i32 %6, %0, !dbg !3932
  br i1 %7, label %31, label %8, !dbg !3933

8:                                                ; preds = %3
  %9 = add nuw nsw i64 %4, 1, !dbg !3934
  call void @llvm.dbg.value(metadata i64 %9, metadata !3918, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i64 %9, metadata !3918, metadata !DIExpression()), !dbg !3926
  %10 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %9, !dbg !3928
  %11 = load i32, ptr %10, align 4, !dbg !3931, !tbaa !3865
  %12 = icmp eq i32 %11, %0, !dbg !3932
  br i1 %12, label %31, label %13, !dbg !3933

13:                                               ; preds = %8
  %14 = add nuw nsw i64 %4, 2, !dbg !3934
  call void @llvm.dbg.value(metadata i64 %14, metadata !3918, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i64 %14, metadata !3918, metadata !DIExpression()), !dbg !3926
  %15 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %14, !dbg !3928
  %16 = load i32, ptr %15, align 4, !dbg !3931, !tbaa !3865
  %17 = icmp eq i32 %16, %0, !dbg !3932
  br i1 %17, label %31, label %18, !dbg !3933

18:                                               ; preds = %13
  %19 = add nuw nsw i64 %4, 3, !dbg !3934
  call void @llvm.dbg.value(metadata i64 %19, metadata !3918, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i64 %19, metadata !3918, metadata !DIExpression()), !dbg !3926
  %20 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %19, !dbg !3928
  %21 = load i32, ptr %20, align 4, !dbg !3931, !tbaa !3865
  %22 = icmp eq i32 %21, %0, !dbg !3932
  br i1 %22, label %31, label %23, !dbg !3933

23:                                               ; preds = %18
  %24 = add nuw nsw i64 %4, 4, !dbg !3934
  call void @llvm.dbg.value(metadata i64 %24, metadata !3918, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i64 %24, metadata !3918, metadata !DIExpression()), !dbg !3926
  %25 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %24, !dbg !3928
  %26 = load i32, ptr %25, align 4, !dbg !3931, !tbaa !3865
  %27 = icmp eq i32 %26, %0, !dbg !3932
  br i1 %27, label %31, label %28, !dbg !3933

28:                                               ; preds = %23
  %29 = add nuw nsw i64 %4, 5, !dbg !3934
  call void @llvm.dbg.value(metadata i64 %29, metadata !3918, metadata !DIExpression()), !dbg !3926
  %30 = icmp eq i64 %29, 35, !dbg !3935
  br i1 %30, label %36, label %3, !dbg !3927, !llvm.loop !3936

31:                                               ; preds = %23, %18, %13, %8, %3
  %32 = phi i64 [ %4, %3 ], [ %9, %8 ], [ %14, %13 ], [ %19, %18 ], [ %24, %23 ]
  %33 = and i64 %32, 4294967295, !dbg !3938
  %34 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %33, i32 1, !dbg !3939
  call void @llvm.dbg.value(metadata ptr %1, metadata !3941, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata ptr %34, metadata !3947, metadata !DIExpression()), !dbg !3948
  %35 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %34), !dbg !3950
  br label %54

36:                                               ; preds = %28
  %37 = tail call i32 @__libc_current_sigrtmin() #40, !dbg !3951
  call void @llvm.dbg.value(metadata i32 %37, metadata !3920, metadata !DIExpression()), !dbg !3952
  %38 = tail call i32 @__libc_current_sigrtmax() #40, !dbg !3953
  call void @llvm.dbg.value(metadata i32 %38, metadata !3922, metadata !DIExpression()), !dbg !3952
  %39 = icmp sgt i32 %37, %0, !dbg !3954
  %40 = icmp slt i32 %38, %0
  %41 = select i1 %39, i1 true, i1 %40, !dbg !3956
  br i1 %41, label %54, label %42, !dbg !3956

42:                                               ; preds = %36
  %43 = sub nsw i32 %38, %37, !dbg !3957
  %44 = sdiv i32 %43, 2, !dbg !3959
  %45 = add nsw i32 %44, %37, !dbg !3960
  %46 = icmp slt i32 %45, %0, !dbg !3961
  call void @llvm.dbg.value(metadata ptr %1, metadata !3941, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata ptr %1, metadata !3941, metadata !DIExpression()), !dbg !3965
  %47 = select i1 %46, ptr @.str.1.102, ptr @.str.101
  %48 = select i1 %46, i32 %38, i32 %37
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) %47, i64 6, i1 false), !dbg !3968
  call void @llvm.dbg.value(metadata i32 %48, metadata !3923, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata !DIArgList(i32 %0, i32 %48), metadata !3924, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3952
  %49 = icmp eq i32 %48, %0, !dbg !3969
  br i1 %49, label %54, label %50, !dbg !3971

50:                                               ; preds = %42
  %51 = sub nsw i32 %0, %48, !dbg !3972
  call void @llvm.dbg.value(metadata i32 %51, metadata !3924, metadata !DIExpression()), !dbg !3952
  %52 = getelementptr inbounds i8, ptr %1, i64 5, !dbg !3973
  %53 = tail call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %52, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.2.105, i32 noundef %51) #40, !dbg !3973
  br label %54, !dbg !3973

54:                                               ; preds = %31, %36, %50, %42
  %55 = phi i32 [ 0, %31 ], [ -1, %36 ], [ 0, %50 ], [ 0, %42 ], !dbg !3925
  ret i32 %55, !dbg !3974
}

; Function Attrs: nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias nocapture readonly) #29

; Function Attrs: nofree
declare !dbg !3975 i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3978 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4017, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata ptr %1, metadata !4018, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata ptr %2, metadata !4019, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata ptr %3, metadata !4020, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata ptr %4, metadata !4021, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 %5, metadata !4022, metadata !DIExpression()), !dbg !4023
  %7 = icmp eq ptr %1, null, !dbg !4024
  br i1 %7, label %10, label %8, !dbg !4026

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.106, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !4027
  br label %12, !dbg !4027

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.107, ptr noundef %2, ptr noundef %3) #40, !dbg !4028
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.3.109, i32 noundef 5) #40, !dbg !4029
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !4029
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.110, ptr noundef %0), !dbg !4030
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.5.111, i32 noundef 5) #40, !dbg !4031
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.112) #40, !dbg !4031
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.110, ptr noundef %0), !dbg !4032
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
  ], !dbg !4033

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.7.113, i32 noundef 5) #40, !dbg !4034
  %21 = load ptr, ptr %4, align 8, !dbg !4034, !tbaa !950
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !4034
  br label %147, !dbg !4036

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.8.114, i32 noundef 5) #40, !dbg !4037
  %25 = load ptr, ptr %4, align 8, !dbg !4037, !tbaa !950
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4037
  %27 = load ptr, ptr %26, align 8, !dbg !4037, !tbaa !950
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !4037
  br label %147, !dbg !4038

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.9.115, i32 noundef 5) #40, !dbg !4039
  %31 = load ptr, ptr %4, align 8, !dbg !4039, !tbaa !950
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4039
  %33 = load ptr, ptr %32, align 8, !dbg !4039, !tbaa !950
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4039
  %35 = load ptr, ptr %34, align 8, !dbg !4039, !tbaa !950
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !4039
  br label %147, !dbg !4040

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.10.116, i32 noundef 5) #40, !dbg !4041
  %39 = load ptr, ptr %4, align 8, !dbg !4041, !tbaa !950
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4041
  %41 = load ptr, ptr %40, align 8, !dbg !4041, !tbaa !950
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4041
  %43 = load ptr, ptr %42, align 8, !dbg !4041, !tbaa !950
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4041
  %45 = load ptr, ptr %44, align 8, !dbg !4041, !tbaa !950
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !4041
  br label %147, !dbg !4042

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.11.117, i32 noundef 5) #40, !dbg !4043
  %49 = load ptr, ptr %4, align 8, !dbg !4043, !tbaa !950
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4043
  %51 = load ptr, ptr %50, align 8, !dbg !4043, !tbaa !950
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4043
  %53 = load ptr, ptr %52, align 8, !dbg !4043, !tbaa !950
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4043
  %55 = load ptr, ptr %54, align 8, !dbg !4043, !tbaa !950
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4043
  %57 = load ptr, ptr %56, align 8, !dbg !4043, !tbaa !950
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !4043
  br label %147, !dbg !4044

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.12.118, i32 noundef 5) #40, !dbg !4045
  %61 = load ptr, ptr %4, align 8, !dbg !4045, !tbaa !950
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4045
  %63 = load ptr, ptr %62, align 8, !dbg !4045, !tbaa !950
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4045
  %65 = load ptr, ptr %64, align 8, !dbg !4045, !tbaa !950
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4045
  %67 = load ptr, ptr %66, align 8, !dbg !4045, !tbaa !950
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4045
  %69 = load ptr, ptr %68, align 8, !dbg !4045, !tbaa !950
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4045
  %71 = load ptr, ptr %70, align 8, !dbg !4045, !tbaa !950
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !4045
  br label %147, !dbg !4046

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.13.119, i32 noundef 5) #40, !dbg !4047
  %75 = load ptr, ptr %4, align 8, !dbg !4047, !tbaa !950
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4047
  %77 = load ptr, ptr %76, align 8, !dbg !4047, !tbaa !950
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4047
  %79 = load ptr, ptr %78, align 8, !dbg !4047, !tbaa !950
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4047
  %81 = load ptr, ptr %80, align 8, !dbg !4047, !tbaa !950
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4047
  %83 = load ptr, ptr %82, align 8, !dbg !4047, !tbaa !950
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4047
  %85 = load ptr, ptr %84, align 8, !dbg !4047, !tbaa !950
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4047
  %87 = load ptr, ptr %86, align 8, !dbg !4047, !tbaa !950
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !4047
  br label %147, !dbg !4048

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.14.120, i32 noundef 5) #40, !dbg !4049
  %91 = load ptr, ptr %4, align 8, !dbg !4049, !tbaa !950
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4049
  %93 = load ptr, ptr %92, align 8, !dbg !4049, !tbaa !950
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4049
  %95 = load ptr, ptr %94, align 8, !dbg !4049, !tbaa !950
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4049
  %97 = load ptr, ptr %96, align 8, !dbg !4049, !tbaa !950
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4049
  %99 = load ptr, ptr %98, align 8, !dbg !4049, !tbaa !950
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4049
  %101 = load ptr, ptr %100, align 8, !dbg !4049, !tbaa !950
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4049
  %103 = load ptr, ptr %102, align 8, !dbg !4049, !tbaa !950
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4049
  %105 = load ptr, ptr %104, align 8, !dbg !4049, !tbaa !950
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !4049
  br label %147, !dbg !4050

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.15.121, i32 noundef 5) #40, !dbg !4051
  %109 = load ptr, ptr %4, align 8, !dbg !4051, !tbaa !950
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4051
  %111 = load ptr, ptr %110, align 8, !dbg !4051, !tbaa !950
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4051
  %113 = load ptr, ptr %112, align 8, !dbg !4051, !tbaa !950
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4051
  %115 = load ptr, ptr %114, align 8, !dbg !4051, !tbaa !950
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4051
  %117 = load ptr, ptr %116, align 8, !dbg !4051, !tbaa !950
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4051
  %119 = load ptr, ptr %118, align 8, !dbg !4051, !tbaa !950
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4051
  %121 = load ptr, ptr %120, align 8, !dbg !4051, !tbaa !950
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4051
  %123 = load ptr, ptr %122, align 8, !dbg !4051, !tbaa !950
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4051
  %125 = load ptr, ptr %124, align 8, !dbg !4051, !tbaa !950
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !4051
  br label %147, !dbg !4052

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.16.122, i32 noundef 5) #40, !dbg !4053
  %129 = load ptr, ptr %4, align 8, !dbg !4053, !tbaa !950
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4053
  %131 = load ptr, ptr %130, align 8, !dbg !4053, !tbaa !950
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4053
  %133 = load ptr, ptr %132, align 8, !dbg !4053, !tbaa !950
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4053
  %135 = load ptr, ptr %134, align 8, !dbg !4053, !tbaa !950
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4053
  %137 = load ptr, ptr %136, align 8, !dbg !4053, !tbaa !950
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4053
  %139 = load ptr, ptr %138, align 8, !dbg !4053, !tbaa !950
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4053
  %141 = load ptr, ptr %140, align 8, !dbg !4053, !tbaa !950
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4053
  %143 = load ptr, ptr %142, align 8, !dbg !4053, !tbaa !950
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4053
  %145 = load ptr, ptr %144, align 8, !dbg !4053, !tbaa !950
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !4053
  br label %147, !dbg !4054

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4055
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4056 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4060, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata ptr %1, metadata !4061, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata ptr %2, metadata !4062, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata ptr %3, metadata !4063, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata ptr %4, metadata !4064, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 0, metadata !4065, metadata !DIExpression()), !dbg !4066
  br label %6, !dbg !4067

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4069
  call void @llvm.dbg.value(metadata i64 %7, metadata !4065, metadata !DIExpression()), !dbg !4066
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4070
  %9 = load ptr, ptr %8, align 8, !dbg !4070, !tbaa !950
  %10 = icmp eq ptr %9, null, !dbg !4072
  %11 = add i64 %7, 1, !dbg !4073
  call void @llvm.dbg.value(metadata i64 %11, metadata !4065, metadata !DIExpression()), !dbg !4066
  br i1 %10, label %12, label %6, !dbg !4072, !llvm.loop !4074

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4076
  ret void, !dbg !4077
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4078 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4090, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata ptr %1, metadata !4091, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata ptr %2, metadata !4092, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata ptr %3, metadata !4093, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata ptr %4, metadata !4094, metadata !DIExpression()), !dbg !4098
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !4099
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4096, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i64 0, metadata !4095, metadata !DIExpression()), !dbg !4098
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4095, metadata !DIExpression()), !dbg !4098
  %10 = icmp ult i32 %9, 41, !dbg !4101
  br i1 %10, label %11, label %16, !dbg !4101

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4101
  %13 = zext i32 %9 to i64, !dbg !4101
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4101
  %15 = add nuw nsw i32 %9, 8, !dbg !4101
  store i32 %15, ptr %4, align 8, !dbg !4101
  br label %19, !dbg !4101

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4101
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4101
  store ptr %18, ptr %7, align 8, !dbg !4101
  br label %19, !dbg !4101

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4101
  %22 = load ptr, ptr %21, align 8, !dbg !4101
  store ptr %22, ptr %6, align 16, !dbg !4104, !tbaa !950
  %23 = icmp eq ptr %22, null, !dbg !4105
  br i1 %23, label %128, label %24, !dbg !4106

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !4095, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i64 1, metadata !4095, metadata !DIExpression()), !dbg !4098
  %25 = icmp ult i32 %20, 41, !dbg !4101
  br i1 %25, label %29, label %26, !dbg !4101

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4101
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4101
  store ptr %28, ptr %7, align 8, !dbg !4101
  br label %34, !dbg !4101

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4101
  %31 = zext i32 %20 to i64, !dbg !4101
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4101
  %33 = add nuw nsw i32 %20, 8, !dbg !4101
  store i32 %33, ptr %4, align 8, !dbg !4101
  br label %34, !dbg !4101

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4101
  %37 = load ptr, ptr %36, align 8, !dbg !4101
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4107
  store ptr %37, ptr %38, align 8, !dbg !4104, !tbaa !950
  %39 = icmp eq ptr %37, null, !dbg !4105
  br i1 %39, label %128, label %40, !dbg !4106

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !4095, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i64 2, metadata !4095, metadata !DIExpression()), !dbg !4098
  %41 = icmp ult i32 %35, 41, !dbg !4101
  br i1 %41, label %45, label %42, !dbg !4101

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4101
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4101
  store ptr %44, ptr %7, align 8, !dbg !4101
  br label %50, !dbg !4101

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4101
  %47 = zext i32 %35 to i64, !dbg !4101
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4101
  %49 = add nuw nsw i32 %35, 8, !dbg !4101
  store i32 %49, ptr %4, align 8, !dbg !4101
  br label %50, !dbg !4101

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4101
  %53 = load ptr, ptr %52, align 8, !dbg !4101
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4107
  store ptr %53, ptr %54, align 16, !dbg !4104, !tbaa !950
  %55 = icmp eq ptr %53, null, !dbg !4105
  br i1 %55, label %128, label %56, !dbg !4106

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !4095, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i64 3, metadata !4095, metadata !DIExpression()), !dbg !4098
  %57 = icmp ult i32 %51, 41, !dbg !4101
  br i1 %57, label %61, label %58, !dbg !4101

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4101
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4101
  store ptr %60, ptr %7, align 8, !dbg !4101
  br label %66, !dbg !4101

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4101
  %63 = zext i32 %51 to i64, !dbg !4101
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4101
  %65 = add nuw nsw i32 %51, 8, !dbg !4101
  store i32 %65, ptr %4, align 8, !dbg !4101
  br label %66, !dbg !4101

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4101
  %69 = load ptr, ptr %68, align 8, !dbg !4101
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4107
  store ptr %69, ptr %70, align 8, !dbg !4104, !tbaa !950
  %71 = icmp eq ptr %69, null, !dbg !4105
  br i1 %71, label %128, label %72, !dbg !4106

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !4095, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i64 4, metadata !4095, metadata !DIExpression()), !dbg !4098
  %73 = icmp ult i32 %67, 41, !dbg !4101
  br i1 %73, label %77, label %74, !dbg !4101

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4101
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4101
  store ptr %76, ptr %7, align 8, !dbg !4101
  br label %82, !dbg !4101

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4101
  %79 = zext i32 %67 to i64, !dbg !4101
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4101
  %81 = add nuw nsw i32 %67, 8, !dbg !4101
  store i32 %81, ptr %4, align 8, !dbg !4101
  br label %82, !dbg !4101

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4101
  %85 = load ptr, ptr %84, align 8, !dbg !4101
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4107
  store ptr %85, ptr %86, align 16, !dbg !4104, !tbaa !950
  %87 = icmp eq ptr %85, null, !dbg !4105
  br i1 %87, label %128, label %88, !dbg !4106

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !4095, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i64 5, metadata !4095, metadata !DIExpression()), !dbg !4098
  %89 = icmp ult i32 %83, 41, !dbg !4101
  br i1 %89, label %93, label %90, !dbg !4101

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4101
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4101
  store ptr %92, ptr %7, align 8, !dbg !4101
  br label %98, !dbg !4101

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4101
  %95 = zext i32 %83 to i64, !dbg !4101
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4101
  %97 = add nuw nsw i32 %83, 8, !dbg !4101
  store i32 %97, ptr %4, align 8, !dbg !4101
  br label %98, !dbg !4101

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4101
  %100 = load ptr, ptr %99, align 8, !dbg !4101
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4107
  store ptr %100, ptr %101, align 8, !dbg !4104, !tbaa !950
  %102 = icmp eq ptr %100, null, !dbg !4105
  br i1 %102, label %128, label %103, !dbg !4106

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !4095, metadata !DIExpression()), !dbg !4098
  %104 = load ptr, ptr %7, align 8, !dbg !4101
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4101
  store ptr %105, ptr %7, align 8, !dbg !4101
  %106 = load ptr, ptr %104, align 8, !dbg !4101
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4107
  store ptr %106, ptr %107, align 16, !dbg !4104, !tbaa !950
  %108 = icmp eq ptr %106, null, !dbg !4105
  br i1 %108, label %128, label %109, !dbg !4106

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !4095, metadata !DIExpression()), !dbg !4098
  %110 = load ptr, ptr %7, align 8, !dbg !4101
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4101
  store ptr %111, ptr %7, align 8, !dbg !4101
  %112 = load ptr, ptr %110, align 8, !dbg !4101
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4107
  store ptr %112, ptr %113, align 8, !dbg !4104, !tbaa !950
  %114 = icmp eq ptr %112, null, !dbg !4105
  br i1 %114, label %128, label %115, !dbg !4106

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !4095, metadata !DIExpression()), !dbg !4098
  %116 = load ptr, ptr %7, align 8, !dbg !4101
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4101
  store ptr %117, ptr %7, align 8, !dbg !4101
  %118 = load ptr, ptr %116, align 8, !dbg !4101
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4107
  store ptr %118, ptr %119, align 16, !dbg !4104, !tbaa !950
  %120 = icmp eq ptr %118, null, !dbg !4105
  br i1 %120, label %128, label %121, !dbg !4106

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !4095, metadata !DIExpression()), !dbg !4098
  %122 = load ptr, ptr %7, align 8, !dbg !4101
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4101
  store ptr %123, ptr %7, align 8, !dbg !4101
  %124 = load ptr, ptr %122, align 8, !dbg !4101
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4107
  store ptr %124, ptr %125, align 8, !dbg !4104, !tbaa !950
  %126 = icmp eq ptr %124, null, !dbg !4105
  %127 = select i1 %126, i64 9, i64 10, !dbg !4106
  br label %128, !dbg !4106

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4108
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4109
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !4110
  ret void, !dbg !4110
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4111 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4115, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata ptr %1, metadata !4116, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata ptr %2, metadata !4117, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata ptr %3, metadata !4118, metadata !DIExpression()), !dbg !4124
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #40, !dbg !4125
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4119, metadata !DIExpression()), !dbg !4126
  call void @llvm.va_start(ptr nonnull %5), !dbg !4127
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4128
  call void @llvm.va_end(ptr nonnull %5), !dbg !4129
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #40, !dbg !4130
  ret void, !dbg !4130
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4131 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4132, !tbaa !950
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.110, ptr noundef %1), !dbg !4132
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.17.127, i32 noundef 5) #40, !dbg !4133
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.128) #40, !dbg !4133
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.19.129, i32 noundef 5) #40, !dbg !4134
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.130, ptr noundef nonnull @.str.21.131) #40, !dbg !4134
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.108, ptr noundef nonnull @.str.22.132, i32 noundef 5) #40, !dbg !4135
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.133) #40, !dbg !4135
  ret void, !dbg !4136
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4137 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4142, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i64 %1, metadata !4143, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i64 %2, metadata !4144, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata ptr %0, metadata !4146, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.value(metadata i64 %1, metadata !4149, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.value(metadata i64 %2, metadata !4150, metadata !DIExpression()), !dbg !4151
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4153
  call void @llvm.dbg.value(metadata ptr %4, metadata !4154, metadata !DIExpression()), !dbg !4159
  %5 = icmp eq ptr %4, null, !dbg !4161
  br i1 %5, label %6, label %7, !dbg !4163

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4164
  unreachable, !dbg !4164

7:                                                ; preds = %3
  ret ptr %4, !dbg !4165
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4147 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4146, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i64 %1, metadata !4149, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i64 %2, metadata !4150, metadata !DIExpression()), !dbg !4166
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4167
  call void @llvm.dbg.value(metadata ptr %4, metadata !4154, metadata !DIExpression()), !dbg !4168
  %5 = icmp eq ptr %4, null, !dbg !4170
  br i1 %5, label %6, label %7, !dbg !4171

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4172
  unreachable, !dbg !4172

7:                                                ; preds = %3
  ret ptr %4, !dbg !4173
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4174 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4178, metadata !DIExpression()), !dbg !4179
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4180
  call void @llvm.dbg.value(metadata ptr %2, metadata !4154, metadata !DIExpression()), !dbg !4181
  %3 = icmp eq ptr %2, null, !dbg !4183
  br i1 %3, label %4, label %5, !dbg !4184

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4185
  unreachable, !dbg !4185

5:                                                ; preds = %1
  ret ptr %2, !dbg !4186
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4187 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4188 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4192, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata i64 %0, metadata !4194, metadata !DIExpression()), !dbg !4198
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4200
  call void @llvm.dbg.value(metadata ptr %2, metadata !4154, metadata !DIExpression()), !dbg !4201
  %3 = icmp eq ptr %2, null, !dbg !4203
  br i1 %3, label %4, label %5, !dbg !4204

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4205
  unreachable, !dbg !4205

5:                                                ; preds = %1
  ret ptr %2, !dbg !4206
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4207 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4211, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 %0, metadata !4178, metadata !DIExpression()), !dbg !4213
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4215
  call void @llvm.dbg.value(metadata ptr %2, metadata !4154, metadata !DIExpression()), !dbg !4216
  %3 = icmp eq ptr %2, null, !dbg !4218
  br i1 %3, label %4, label %5, !dbg !4219

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4220
  unreachable, !dbg !4220

5:                                                ; preds = %1
  ret ptr %2, !dbg !4221
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4222 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4226, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.value(metadata i64 %1, metadata !4227, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.value(metadata ptr %0, metadata !4229, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata i64 %1, metadata !4233, metadata !DIExpression()), !dbg !4234
  %3 = icmp eq i64 %1, 0, !dbg !4236
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4236
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !4237
  call void @llvm.dbg.value(metadata ptr %5, metadata !4154, metadata !DIExpression()), !dbg !4238
  %6 = icmp eq ptr %5, null, !dbg !4240
  br i1 %6, label %7, label %8, !dbg !4241

7:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4242
  unreachable, !dbg !4242

8:                                                ; preds = %2
  ret ptr %5, !dbg !4243
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4244 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4245 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4249, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata i64 %1, metadata !4250, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata ptr %0, metadata !4252, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i64 %1, metadata !4255, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata ptr %0, metadata !4229, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i64 %1, metadata !4233, metadata !DIExpression()), !dbg !4258
  %3 = icmp eq i64 %1, 0, !dbg !4260
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4260
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !4261
  call void @llvm.dbg.value(metadata ptr %5, metadata !4154, metadata !DIExpression()), !dbg !4262
  %6 = icmp eq ptr %5, null, !dbg !4264
  br i1 %6, label %7, label %8, !dbg !4265

7:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4266
  unreachable, !dbg !4266

8:                                                ; preds = %2
  ret ptr %5, !dbg !4267
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4268 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4272, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata i64 %1, metadata !4273, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata i64 %2, metadata !4274, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata ptr %0, metadata !4276, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %1, metadata !4279, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %2, metadata !4280, metadata !DIExpression()), !dbg !4281
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4283
  call void @llvm.dbg.value(metadata ptr %4, metadata !4154, metadata !DIExpression()), !dbg !4284
  %5 = icmp eq ptr %4, null, !dbg !4286
  br i1 %5, label %6, label %7, !dbg !4287

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4288
  unreachable, !dbg !4288

7:                                                ; preds = %3
  ret ptr %4, !dbg !4289
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4290 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4294, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata i64 %1, metadata !4295, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata ptr null, metadata !4146, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.value(metadata i64 %0, metadata !4149, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.value(metadata i64 %1, metadata !4150, metadata !DIExpression()), !dbg !4297
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4299
  call void @llvm.dbg.value(metadata ptr %3, metadata !4154, metadata !DIExpression()), !dbg !4300
  %4 = icmp eq ptr %3, null, !dbg !4302
  br i1 %4, label %5, label %6, !dbg !4303

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4304
  unreachable, !dbg !4304

6:                                                ; preds = %2
  ret ptr %3, !dbg !4305
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4306 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4310, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i64 %1, metadata !4311, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata ptr null, metadata !4272, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata i64 %0, metadata !4273, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata i64 %1, metadata !4274, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata ptr null, metadata !4276, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i64 %0, metadata !4279, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i64 %1, metadata !4280, metadata !DIExpression()), !dbg !4315
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4317
  call void @llvm.dbg.value(metadata ptr %3, metadata !4154, metadata !DIExpression()), !dbg !4318
  %4 = icmp eq ptr %3, null, !dbg !4320
  br i1 %4, label %5, label %6, !dbg !4321

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4322
  unreachable, !dbg !4322

6:                                                ; preds = %2
  ret ptr %3, !dbg !4323
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4324 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4328, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata ptr %1, metadata !4329, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata ptr %0, metadata !888, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata ptr %1, metadata !889, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i64 1, metadata !890, metadata !DIExpression()), !dbg !4331
  %3 = load i64, ptr %1, align 8, !dbg !4333, !tbaa !1867
  call void @llvm.dbg.value(metadata i64 %3, metadata !891, metadata !DIExpression()), !dbg !4331
  %4 = icmp eq ptr %0, null, !dbg !4334
  br i1 %4, label %5, label %8, !dbg !4336

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4337
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4340
  br label %15, !dbg !4340

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4341
  %10 = add nuw i64 %9, 1, !dbg !4341
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4341
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4341
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4341
  call void @llvm.dbg.value(metadata i64 %13, metadata !891, metadata !DIExpression()), !dbg !4331
  br i1 %12, label %14, label %15, !dbg !4344

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !4345
  unreachable, !dbg !4345

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4331
  call void @llvm.dbg.value(metadata i64 %16, metadata !891, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata ptr %0, metadata !4146, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i64 %16, metadata !4149, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i64 1, metadata !4150, metadata !DIExpression()), !dbg !4346
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !4348
  call void @llvm.dbg.value(metadata ptr %17, metadata !4154, metadata !DIExpression()), !dbg !4349
  %18 = icmp eq ptr %17, null, !dbg !4351
  br i1 %18, label %19, label %20, !dbg !4352

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !4353
  unreachable, !dbg !4353

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !888, metadata !DIExpression()), !dbg !4331
  store i64 %16, ptr %1, align 8, !dbg !4354, !tbaa !1867
  ret ptr %17, !dbg !4355
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !883 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !888, metadata !DIExpression()), !dbg !4356
  call void @llvm.dbg.value(metadata ptr %1, metadata !889, metadata !DIExpression()), !dbg !4356
  call void @llvm.dbg.value(metadata i64 %2, metadata !890, metadata !DIExpression()), !dbg !4356
  %4 = load i64, ptr %1, align 8, !dbg !4357, !tbaa !1867
  call void @llvm.dbg.value(metadata i64 %4, metadata !891, metadata !DIExpression()), !dbg !4356
  %5 = icmp eq ptr %0, null, !dbg !4358
  br i1 %5, label %6, label %13, !dbg !4359

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4360
  br i1 %7, label %8, label %20, !dbg !4361

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4362
  call void @llvm.dbg.value(metadata i64 %9, metadata !891, metadata !DIExpression()), !dbg !4356
  %10 = icmp ugt i64 %2, 128, !dbg !4364
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4365
  call void @llvm.dbg.value(metadata i64 %12, metadata !891, metadata !DIExpression()), !dbg !4356
  br label %20, !dbg !4366

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4367
  %15 = add nuw i64 %14, 1, !dbg !4367
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4367
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4367
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4367
  call void @llvm.dbg.value(metadata i64 %18, metadata !891, metadata !DIExpression()), !dbg !4356
  br i1 %17, label %19, label %20, !dbg !4368

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !4369
  unreachable, !dbg !4369

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4356
  call void @llvm.dbg.value(metadata i64 %21, metadata !891, metadata !DIExpression()), !dbg !4356
  call void @llvm.dbg.value(metadata ptr %0, metadata !4146, metadata !DIExpression()), !dbg !4370
  call void @llvm.dbg.value(metadata i64 %21, metadata !4149, metadata !DIExpression()), !dbg !4370
  call void @llvm.dbg.value(metadata i64 %2, metadata !4150, metadata !DIExpression()), !dbg !4370
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !4372
  call void @llvm.dbg.value(metadata ptr %22, metadata !4154, metadata !DIExpression()), !dbg !4373
  %23 = icmp eq ptr %22, null, !dbg !4375
  br i1 %23, label %24, label %25, !dbg !4376

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !4377
  unreachable, !dbg !4377

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !888, metadata !DIExpression()), !dbg !4356
  store i64 %21, ptr %1, align 8, !dbg !4378, !tbaa !1867
  ret ptr %22, !dbg !4379
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !895 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !903, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata ptr %1, metadata !904, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i64 %2, metadata !905, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i64 %3, metadata !906, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i64 %4, metadata !907, metadata !DIExpression()), !dbg !4380
  %6 = load i64, ptr %1, align 8, !dbg !4381, !tbaa !1867
  call void @llvm.dbg.value(metadata i64 %6, metadata !908, metadata !DIExpression()), !dbg !4380
  %7 = ashr i64 %6, 1, !dbg !4382
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4382
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4382
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4382
  call void @llvm.dbg.value(metadata i64 %10, metadata !909, metadata !DIExpression()), !dbg !4380
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4384
  call void @llvm.dbg.value(metadata i64 %11, metadata !909, metadata !DIExpression()), !dbg !4380
  %12 = icmp sgt i64 %3, -1, !dbg !4385
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4387
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4387
  call void @llvm.dbg.value(metadata i64 %15, metadata !909, metadata !DIExpression()), !dbg !4380
  %16 = icmp slt i64 %4, 0, !dbg !4388
  br i1 %16, label %17, label %30, !dbg !4388

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4388
  br i1 %18, label %19, label %24, !dbg !4388

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4388
  %21 = udiv i64 9223372036854775807, %20, !dbg !4388
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4388
  br i1 %23, label %46, label %43, !dbg !4388

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4388
  br i1 %25, label %43, label %26, !dbg !4388

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4388
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4388
  %29 = icmp ult i64 %28, %15, !dbg !4388
  br i1 %29, label %46, label %43, !dbg !4388

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4388
  br i1 %31, label %43, label %32, !dbg !4388

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4388
  br i1 %33, label %34, label %40, !dbg !4388

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4388
  br i1 %35, label %43, label %36, !dbg !4388

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4388
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4388
  %39 = icmp ult i64 %38, %4, !dbg !4388
  br i1 %39, label %46, label %43, !dbg !4388

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4388
  br i1 %42, label %46, label %43, !dbg !4388

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !910, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4380
  %44 = mul i64 %15, %4, !dbg !4388
  call void @llvm.dbg.value(metadata i64 %44, metadata !910, metadata !DIExpression()), !dbg !4380
  %45 = icmp slt i64 %44, 128, !dbg !4388
  br i1 %45, label %46, label %51, !dbg !4388

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !911, metadata !DIExpression()), !dbg !4380
  %48 = sdiv i64 %47, %4, !dbg !4389
  call void @llvm.dbg.value(metadata i64 %48, metadata !909, metadata !DIExpression()), !dbg !4380
  %49 = srem i64 %47, %4, !dbg !4392
  %50 = sub nsw i64 %47, %49, !dbg !4393
  call void @llvm.dbg.value(metadata i64 %50, metadata !910, metadata !DIExpression()), !dbg !4380
  br label %51, !dbg !4394

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4380
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4380
  call void @llvm.dbg.value(metadata i64 %53, metadata !910, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i64 %52, metadata !909, metadata !DIExpression()), !dbg !4380
  %54 = icmp eq ptr %0, null, !dbg !4395
  br i1 %54, label %55, label %56, !dbg !4397

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4398, !tbaa !1867
  br label %56, !dbg !4399

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4400
  %58 = icmp slt i64 %57, %2, !dbg !4402
  br i1 %58, label %59, label %96, !dbg !4403

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4404
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4404
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4404
  call void @llvm.dbg.value(metadata i64 %62, metadata !909, metadata !DIExpression()), !dbg !4380
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4405
  br i1 %65, label %95, label %66, !dbg !4405

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4406

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4406
  br i1 %68, label %69, label %74, !dbg !4406

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4406
  %71 = udiv i64 9223372036854775807, %70, !dbg !4406
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4406
  br i1 %73, label %95, label %93, !dbg !4406

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4406
  br i1 %75, label %93, label %76, !dbg !4406

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4406
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4406
  %79 = icmp ult i64 %78, %62, !dbg !4406
  br i1 %79, label %95, label %93, !dbg !4406

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4406
  br i1 %81, label %93, label %82, !dbg !4406

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4406
  br i1 %83, label %84, label %90, !dbg !4406

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4406
  br i1 %85, label %93, label %86, !dbg !4406

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4406
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4406
  %89 = icmp ult i64 %88, %4, !dbg !4406
  br i1 %89, label %95, label %93, !dbg !4406

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4406
  br i1 %92, label %95, label %93, !dbg !4406

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !910, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4380
  %94 = mul i64 %62, %4, !dbg !4406
  call void @llvm.dbg.value(metadata i64 %94, metadata !910, metadata !DIExpression()), !dbg !4380
  br label %96, !dbg !4407

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #42, !dbg !4408
  unreachable, !dbg !4408

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4380
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4380
  call void @llvm.dbg.value(metadata i64 %98, metadata !910, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i64 %97, metadata !909, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata ptr %0, metadata !4226, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata i64 %98, metadata !4227, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata ptr %0, metadata !4229, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata i64 %98, metadata !4233, metadata !DIExpression()), !dbg !4411
  %99 = icmp eq i64 %98, 0, !dbg !4413
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4413
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #46, !dbg !4414
  call void @llvm.dbg.value(metadata ptr %101, metadata !4154, metadata !DIExpression()), !dbg !4415
  %102 = icmp eq ptr %101, null, !dbg !4417
  br i1 %102, label %103, label %104, !dbg !4418

103:                                              ; preds = %96
  tail call void @xalloc_die() #42, !dbg !4419
  unreachable, !dbg !4419

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !903, metadata !DIExpression()), !dbg !4380
  store i64 %97, ptr %1, align 8, !dbg !4420, !tbaa !1867
  ret ptr %101, !dbg !4421
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4422 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4424, metadata !DIExpression()), !dbg !4425
  call void @llvm.dbg.value(metadata i64 %0, metadata !4426, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64 1, metadata !4429, metadata !DIExpression()), !dbg !4430
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4432
  call void @llvm.dbg.value(metadata ptr %2, metadata !4154, metadata !DIExpression()), !dbg !4433
  %3 = icmp eq ptr %2, null, !dbg !4435
  br i1 %3, label %4, label %5, !dbg !4436

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4437
  unreachable, !dbg !4437

5:                                                ; preds = %1
  ret ptr %2, !dbg !4438
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4439 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4427 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4426, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64 %1, metadata !4429, metadata !DIExpression()), !dbg !4440
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4441
  call void @llvm.dbg.value(metadata ptr %3, metadata !4154, metadata !DIExpression()), !dbg !4442
  %4 = icmp eq ptr %3, null, !dbg !4444
  br i1 %4, label %5, label %6, !dbg !4445

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4446
  unreachable, !dbg !4446

6:                                                ; preds = %2
  ret ptr %3, !dbg !4447
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4448 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4450, metadata !DIExpression()), !dbg !4451
  call void @llvm.dbg.value(metadata i64 %0, metadata !4452, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.value(metadata i64 1, metadata !4455, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.value(metadata i64 %0, metadata !4458, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i64 1, metadata !4461, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i64 %0, metadata !4458, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i64 1, metadata !4461, metadata !DIExpression()), !dbg !4462
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4464
  call void @llvm.dbg.value(metadata ptr %2, metadata !4154, metadata !DIExpression()), !dbg !4465
  %3 = icmp eq ptr %2, null, !dbg !4467
  br i1 %3, label %4, label %5, !dbg !4468

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4469
  unreachable, !dbg !4469

5:                                                ; preds = %1
  ret ptr %2, !dbg !4470
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4453 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4452, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata i64 %1, metadata !4455, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata i64 %0, metadata !4458, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i64 %1, metadata !4461, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i64 %0, metadata !4458, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i64 %1, metadata !4461, metadata !DIExpression()), !dbg !4472
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4474
  call void @llvm.dbg.value(metadata ptr %3, metadata !4154, metadata !DIExpression()), !dbg !4475
  %4 = icmp eq ptr %3, null, !dbg !4477
  br i1 %4, label %5, label %6, !dbg !4478

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4479
  unreachable, !dbg !4479

6:                                                ; preds = %2
  ret ptr %3, !dbg !4480
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4481 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4485, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i64 %1, metadata !4486, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i64 %1, metadata !4178, metadata !DIExpression()), !dbg !4488
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4490
  call void @llvm.dbg.value(metadata ptr %3, metadata !4154, metadata !DIExpression()), !dbg !4491
  %4 = icmp eq ptr %3, null, !dbg !4493
  br i1 %4, label %5, label %6, !dbg !4494

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4495
  unreachable, !dbg !4495

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4496, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata ptr %0, metadata !4502, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i64 %1, metadata !4503, metadata !DIExpression()), !dbg !4504
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4506
  ret ptr %3, !dbg !4507
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4508 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4512, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i64 %1, metadata !4513, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i64 %1, metadata !4192, metadata !DIExpression()), !dbg !4515
  call void @llvm.dbg.value(metadata i64 %1, metadata !4194, metadata !DIExpression()), !dbg !4517
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4519
  call void @llvm.dbg.value(metadata ptr %3, metadata !4154, metadata !DIExpression()), !dbg !4520
  %4 = icmp eq ptr %3, null, !dbg !4522
  br i1 %4, label %5, label %6, !dbg !4523

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4524
  unreachable, !dbg !4524

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4496, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata ptr %0, metadata !4502, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i64 %1, metadata !4503, metadata !DIExpression()), !dbg !4525
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4527
  ret ptr %3, !dbg !4528
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4529 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4533, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata i64 %1, metadata !4534, metadata !DIExpression()), !dbg !4536
  %3 = add nsw i64 %1, 1, !dbg !4537
  call void @llvm.dbg.value(metadata i64 %3, metadata !4192, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata i64 %3, metadata !4194, metadata !DIExpression()), !dbg !4540
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4542
  call void @llvm.dbg.value(metadata ptr %4, metadata !4154, metadata !DIExpression()), !dbg !4543
  %5 = icmp eq ptr %4, null, !dbg !4545
  br i1 %5, label %6, label %7, !dbg !4546

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4547
  unreachable, !dbg !4547

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4535, metadata !DIExpression()), !dbg !4536
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4548
  store i8 0, ptr %8, align 1, !dbg !4549, !tbaa !1031
  call void @llvm.dbg.value(metadata ptr %4, metadata !4496, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata ptr %0, metadata !4502, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i64 %1, metadata !4503, metadata !DIExpression()), !dbg !4550
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4552
  ret ptr %4, !dbg !4553
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4554 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4556, metadata !DIExpression()), !dbg !4557
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4558
  %3 = add i64 %2, 1, !dbg !4559
  call void @llvm.dbg.value(metadata ptr %0, metadata !4485, metadata !DIExpression()), !dbg !4560
  call void @llvm.dbg.value(metadata i64 %3, metadata !4486, metadata !DIExpression()), !dbg !4560
  call void @llvm.dbg.value(metadata i64 %3, metadata !4178, metadata !DIExpression()), !dbg !4562
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4564
  call void @llvm.dbg.value(metadata ptr %4, metadata !4154, metadata !DIExpression()), !dbg !4565
  %5 = icmp eq ptr %4, null, !dbg !4567
  br i1 %5, label %6, label %7, !dbg !4568

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4569
  unreachable, !dbg !4569

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4496, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata ptr %0, metadata !4502, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i64 %3, metadata !4503, metadata !DIExpression()), !dbg !4570
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4572
  ret ptr %4, !dbg !4573
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4574 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4578, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %1, metadata !4576, metadata !DIExpression()), !dbg !4579
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.146, ptr noundef nonnull @.str.2.147, i32 noundef 5) #40, !dbg !4578
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.148, ptr noundef %2) #40, !dbg !4578
  %3 = icmp eq i32 %1, 0, !dbg !4578
  tail call void @llvm.assume(i1 %3), !dbg !4578
  tail call void @abort() #42, !dbg !4580
  unreachable, !dbg !4580
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nounwind uwtable
define dso_local double @c_strtod(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4581 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4585, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata ptr %1, metadata !4586, metadata !DIExpression()), !dbg !4589
  %3 = load volatile ptr, ptr @c_locale_cache, align 8, !dbg !4590, !tbaa !950
  %4 = icmp eq ptr %3, null, !dbg !4590
  br i1 %4, label %5, label %7, !dbg !4596

5:                                                ; preds = %2
  %6 = tail call ptr @newlocale(i32 noundef 8127, ptr noundef nonnull @.str.151, ptr noundef null) #40, !dbg !4597
  store volatile ptr %6, ptr @c_locale_cache, align 8, !dbg !4598, !tbaa !950
  br label %7, !dbg !4599

7:                                                ; preds = %2, %5
  %8 = load volatile ptr, ptr @c_locale_cache, align 8, !dbg !4600, !tbaa !950
  call void @llvm.dbg.value(metadata ptr %8, metadata !4588, metadata !DIExpression()), !dbg !4589
  %9 = icmp eq ptr %8, null, !dbg !4601
  br i1 %9, label %10, label %13, !dbg !4603

10:                                               ; preds = %7
  %11 = icmp eq ptr %1, null, !dbg !4604
  br i1 %11, label %15, label %12, !dbg !4607

12:                                               ; preds = %10
  store ptr %0, ptr %1, align 8, !dbg !4608, !tbaa !950
  br label %15, !dbg !4609

13:                                               ; preds = %7
  %14 = tail call double @strtod_l(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8) #40, !dbg !4610
  call void @llvm.dbg.value(metadata double %14, metadata !4587, metadata !DIExpression()), !dbg !4589
  br label %15, !dbg !4611

15:                                               ; preds = %10, %12, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %10 ], !dbg !4589
  ret double %16, !dbg !4612
}

; Function Attrs: nounwind
declare !dbg !4613 ptr @newlocale(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4616 double @strtod_l(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4619 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4657, metadata !DIExpression()), !dbg !4662
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !4663
  call void @llvm.dbg.value(metadata i1 poison, metadata !4658, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4662
  call void @llvm.dbg.value(metadata ptr %0, metadata !4664, metadata !DIExpression()), !dbg !4667
  %3 = load i32, ptr %0, align 8, !dbg !4669, !tbaa !4670
  %4 = and i32 %3, 32, !dbg !4671
  %5 = icmp eq i32 %4, 0, !dbg !4671
  call void @llvm.dbg.value(metadata i1 %5, metadata !4660, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4662
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !4672
  %7 = icmp eq i32 %6, 0, !dbg !4673
  call void @llvm.dbg.value(metadata i1 %7, metadata !4661, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4662
  br i1 %5, label %8, label %18, !dbg !4674

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4676
  call void @llvm.dbg.value(metadata i1 %9, metadata !4658, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4662
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4677
  %11 = xor i1 %7, true, !dbg !4677
  %12 = sext i1 %11 to i32, !dbg !4677
  br i1 %10, label %21, label %13, !dbg !4677

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !4678
  %15 = load i32, ptr %14, align 4, !dbg !4678, !tbaa !1022
  %16 = icmp ne i32 %15, 9, !dbg !4679
  %17 = sext i1 %16 to i32, !dbg !4680
  br label %21, !dbg !4680

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4681

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !4683
  store i32 0, ptr %20, align 4, !dbg !4685, !tbaa !1022
  br label %21, !dbg !4683

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4662
  ret i32 %22, !dbg !4686
}

; Function Attrs: nounwind
declare !dbg !4687 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4691 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4729, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 0, metadata !4730, metadata !DIExpression()), !dbg !4733
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4734
  call void @llvm.dbg.value(metadata i32 %2, metadata !4731, metadata !DIExpression()), !dbg !4733
  %3 = icmp slt i32 %2, 0, !dbg !4735
  br i1 %3, label %4, label %6, !dbg !4737

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4738
  br label %24, !dbg !4739

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4740
  %8 = icmp eq i32 %7, 0, !dbg !4740
  br i1 %8, label %13, label %9, !dbg !4742

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4743
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !4744
  %12 = icmp eq i64 %11, -1, !dbg !4745
  br i1 %12, label %16, label %13, !dbg !4746

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !4747
  %15 = icmp eq i32 %14, 0, !dbg !4747
  br i1 %15, label %16, label %18, !dbg !4748

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4730, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 0, metadata !4732, metadata !DIExpression()), !dbg !4733
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4749
  call void @llvm.dbg.value(metadata i32 %17, metadata !4732, metadata !DIExpression()), !dbg !4733
  br label %24, !dbg !4750

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !4751
  %20 = load i32, ptr %19, align 4, !dbg !4751, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 %20, metadata !4730, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 0, metadata !4732, metadata !DIExpression()), !dbg !4733
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4749
  call void @llvm.dbg.value(metadata i32 %21, metadata !4732, metadata !DIExpression()), !dbg !4733
  %22 = icmp eq i32 %20, 0, !dbg !4752
  br i1 %22, label %24, label %23, !dbg !4750

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4754, !tbaa !1022
  call void @llvm.dbg.value(metadata i32 -1, metadata !4732, metadata !DIExpression()), !dbg !4733
  br label %24, !dbg !4756

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4733
  ret i32 %25, !dbg !4757
}

; Function Attrs: nofree nounwind
declare !dbg !4758 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4759 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4760 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4761 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4764 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4802, metadata !DIExpression()), !dbg !4803
  %2 = icmp eq ptr %0, null, !dbg !4804
  br i1 %2, label %6, label %3, !dbg !4806

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4807
  %5 = icmp eq i32 %4, 0, !dbg !4807
  br i1 %5, label %6, label %8, !dbg !4808

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4809
  br label %16, !dbg !4810

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4811, metadata !DIExpression()), !dbg !4816
  %9 = load i32, ptr %0, align 8, !dbg !4818, !tbaa !4670
  %10 = and i32 %9, 256, !dbg !4820
  %11 = icmp eq i32 %10, 0, !dbg !4820
  br i1 %11, label %14, label %12, !dbg !4821

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !4822
  br label %14, !dbg !4822

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4823
  br label %16, !dbg !4824

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4803
  ret i32 %17, !dbg !4825
}

; Function Attrs: nofree nounwind
declare !dbg !4826 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4827 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4866, metadata !DIExpression()), !dbg !4872
  call void @llvm.dbg.value(metadata i64 %1, metadata !4867, metadata !DIExpression()), !dbg !4872
  call void @llvm.dbg.value(metadata i32 %2, metadata !4868, metadata !DIExpression()), !dbg !4872
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4873
  %5 = load ptr, ptr %4, align 8, !dbg !4873, !tbaa !4874
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4875
  %7 = load ptr, ptr %6, align 8, !dbg !4875, !tbaa !4876
  %8 = icmp eq ptr %5, %7, !dbg !4877
  br i1 %8, label %9, label %27, !dbg !4878

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4879
  %11 = load ptr, ptr %10, align 8, !dbg !4879, !tbaa !2327
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4880
  %13 = load ptr, ptr %12, align 8, !dbg !4880, !tbaa !4881
  %14 = icmp eq ptr %11, %13, !dbg !4882
  br i1 %14, label %15, label %27, !dbg !4883

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4884
  %17 = load ptr, ptr %16, align 8, !dbg !4884, !tbaa !4885
  %18 = icmp eq ptr %17, null, !dbg !4886
  br i1 %18, label %19, label %27, !dbg !4887

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4888
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !4889
  call void @llvm.dbg.value(metadata i64 %21, metadata !4869, metadata !DIExpression()), !dbg !4890
  %22 = icmp eq i64 %21, -1, !dbg !4891
  br i1 %22, label %29, label %23, !dbg !4893

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4894, !tbaa !4670
  %25 = and i32 %24, -17, !dbg !4894
  store i32 %25, ptr %0, align 8, !dbg !4894, !tbaa !4670
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4895
  store i64 %21, ptr %26, align 8, !dbg !4896, !tbaa !4897
  br label %29, !dbg !4898

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4899
  br label %29, !dbg !4900

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4872
  ret i32 %30, !dbg !4901
}

; Function Attrs: nofree nounwind
declare !dbg !4902 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4905 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4910, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata ptr %1, metadata !4911, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata i64 %2, metadata !4912, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata ptr %3, metadata !4913, metadata !DIExpression()), !dbg !4915
  %5 = icmp eq ptr %1, null, !dbg !4916
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4918
  %7 = select i1 %5, ptr @.str.162, ptr %1, !dbg !4918
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4918
  call void @llvm.dbg.value(metadata i64 %8, metadata !4912, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata ptr %7, metadata !4911, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata ptr %6, metadata !4910, metadata !DIExpression()), !dbg !4915
  %9 = icmp eq ptr %3, null, !dbg !4919
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4921
  call void @llvm.dbg.value(metadata ptr %10, metadata !4913, metadata !DIExpression()), !dbg !4915
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #40, !dbg !4922
  call void @llvm.dbg.value(metadata i64 %11, metadata !4914, metadata !DIExpression()), !dbg !4915
  %12 = icmp ult i64 %11, -3, !dbg !4923
  br i1 %12, label %13, label %17, !dbg !4925

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #41, !dbg !4926
  %15 = icmp eq i32 %14, 0, !dbg !4926
  br i1 %15, label %16, label %29, !dbg !4927

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4928, metadata !DIExpression()), !dbg !4933
  call void @llvm.dbg.value(metadata ptr %10, metadata !4935, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata i32 0, metadata !4938, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata i64 8, metadata !4939, metadata !DIExpression()), !dbg !4940
  store i64 0, ptr %10, align 1, !dbg !4942
  br label %29, !dbg !4943

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4944
  br i1 %18, label %19, label %20, !dbg !4946

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !4947
  unreachable, !dbg !4947

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4948

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #40, !dbg !4950
  br i1 %23, label %29, label %24, !dbg !4951

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4952
  br i1 %25, label %29, label %26, !dbg !4955

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4956, !tbaa !1031
  %28 = zext i8 %27 to i32, !dbg !4957
  store i32 %28, ptr %6, align 4, !dbg !4958, !tbaa !1022
  br label %29, !dbg !4959

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4915
  ret i64 %30, !dbg !4960
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4961 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !4967 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4969, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata i64 %1, metadata !4970, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata i64 %2, metadata !4971, metadata !DIExpression()), !dbg !4973
  %4 = icmp eq i64 %2, 0, !dbg !4974
  br i1 %4, label %8, label %5, !dbg !4974

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4974
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4974
  br i1 %7, label %13, label %8, !dbg !4974

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4972, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4973
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4972, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4973
  %9 = mul i64 %2, %1, !dbg !4974
  call void @llvm.dbg.value(metadata i64 %9, metadata !4972, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata ptr %0, metadata !4976, metadata !DIExpression()), !dbg !4980
  call void @llvm.dbg.value(metadata i64 %9, metadata !4979, metadata !DIExpression()), !dbg !4980
  %10 = icmp eq i64 %9, 0, !dbg !4982
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4982
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #46, !dbg !4983
  br label %15, !dbg !4984

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4972, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4973
  %14 = tail call ptr @__errno_location() #43, !dbg !4985
  store i32 12, ptr %14, align 4, !dbg !4987, !tbaa !1022
  br label %15, !dbg !4988

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4973
  ret ptr %16, !dbg !4989
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4990 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4992, metadata !DIExpression()), !dbg !4997
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !4998
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4993, metadata !DIExpression()), !dbg !4999
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !5000
  %4 = icmp eq i32 %3, 0, !dbg !5000
  br i1 %4, label %5, label %12, !dbg !5002

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5003, metadata !DIExpression()), !dbg !5007
  %6 = load i16, ptr %2, align 16, !dbg !5010
  %7 = icmp eq i16 %6, 67, !dbg !5010
  br i1 %7, label %11, label %8, !dbg !5011

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5003, metadata !DIExpression()), !dbg !5012
  call void @llvm.dbg.value(metadata ptr @.str.1.167, metadata !5006, metadata !DIExpression()), !dbg !5012
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.167, i64 6), !dbg !5014
  %10 = icmp eq i32 %9, 0, !dbg !5015
  br i1 %10, label %11, label %12, !dbg !5016

11:                                               ; preds = %8, %5
  br label %12, !dbg !5017

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4997
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !5018
  ret i1 %13, !dbg !5018
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5019 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5023, metadata !DIExpression()), !dbg !5026
  call void @llvm.dbg.value(metadata ptr %1, metadata !5024, metadata !DIExpression()), !dbg !5026
  call void @llvm.dbg.value(metadata i64 %2, metadata !5025, metadata !DIExpression()), !dbg !5026
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !5027
  ret i32 %4, !dbg !5028
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5029 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5033, metadata !DIExpression()), !dbg !5034
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !5035
  ret ptr %2, !dbg !5036
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5037 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5039, metadata !DIExpression()), !dbg !5041
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5042
  call void @llvm.dbg.value(metadata ptr %2, metadata !5040, metadata !DIExpression()), !dbg !5041
  ret ptr %2, !dbg !5043
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5044 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5046, metadata !DIExpression()), !dbg !5053
  call void @llvm.dbg.value(metadata ptr %1, metadata !5047, metadata !DIExpression()), !dbg !5053
  call void @llvm.dbg.value(metadata i64 %2, metadata !5048, metadata !DIExpression()), !dbg !5053
  call void @llvm.dbg.value(metadata i32 %0, metadata !5039, metadata !DIExpression()), !dbg !5054
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5056
  call void @llvm.dbg.value(metadata ptr %4, metadata !5040, metadata !DIExpression()), !dbg !5054
  call void @llvm.dbg.value(metadata ptr %4, metadata !5049, metadata !DIExpression()), !dbg !5053
  %5 = icmp eq ptr %4, null, !dbg !5057
  br i1 %5, label %6, label %9, !dbg !5058

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5059
  br i1 %7, label %19, label %8, !dbg !5062

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5063, !tbaa !1031
  br label %19, !dbg !5064

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !5065
  call void @llvm.dbg.value(metadata i64 %10, metadata !5050, metadata !DIExpression()), !dbg !5066
  %11 = icmp ult i64 %10, %2, !dbg !5067
  br i1 %11, label %12, label %14, !dbg !5069

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5070
  call void @llvm.dbg.value(metadata ptr %1, metadata !5072, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata ptr %4, metadata !5075, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata i64 %13, metadata !5076, metadata !DIExpression()), !dbg !5077
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #40, !dbg !5079
  br label %19, !dbg !5080

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5081
  br i1 %15, label %19, label %16, !dbg !5084

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5085
  call void @llvm.dbg.value(metadata ptr %1, metadata !5072, metadata !DIExpression()), !dbg !5087
  call void @llvm.dbg.value(metadata ptr %4, metadata !5075, metadata !DIExpression()), !dbg !5087
  call void @llvm.dbg.value(metadata i64 %17, metadata !5076, metadata !DIExpression()), !dbg !5087
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !5089
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5090
  store i8 0, ptr %18, align 1, !dbg !5091, !tbaa !1031
  br label %19, !dbg !5092

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5093
  ret i32 %20, !dbg !5094
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
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind willreturn memory(argmem: read) }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
attributes #44 = { noreturn }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { nounwind allocsize(0) }
attributes #48 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!94, !855, !471, !857, !475, !859, !490, !795, !870, !539, !553, !604, !694, !872, !787, !879, !913, !808, !915, !917, !919, !921, !839, !923, !926, !930, !932}
!llvm.ident = !{!934, !934, !934, !934, !934, !934, !934, !934, !934, !934, !934, !934, !934, !934, !934, !934, !934, !934, !934, !934, !934, !934, !934, !934, !934, !934, !934}
!llvm.module.flags = !{!935, !936, !937, !938, !939, !940}

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
!489 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !490, file: !491, line: 66, type: !534, isLocal: false, isDefinition: true)
!490 = distinct !DICompileUnit(language: DW_LANG_C11, file: !491, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !492, globals: !493, splitDebugInlining: false, nameTableKind: None)
!491 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!492 = !{!126, !139}
!493 = !{!494, !496, !516, !518, !520, !522, !488, !524, !526, !528, !530, !532}
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !491, line: 272, type: !284, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(name: "old_file_name", scope: !498, file: !491, line: 304, type: !137, isLocal: true, isDefinition: true)
!498 = distinct !DISubprogram(name: "verror_at_line", scope: !491, file: !491, line: 298, type: !499, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !509)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !105, !105, !137, !98, !137, !501}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !503)
!503 = !{!504, !506, !507, !508}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !502, file: !505, baseType: !98, size: 32)
!505 = !DIFile(filename: "lib/error.c", directory: "/src")
!506 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !502, file: !505, baseType: !98, size: 32, offset: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !502, file: !505, baseType: !126, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !502, file: !505, baseType: !126, size: 64, offset: 128)
!509 = !{!510, !511, !512, !513, !514, !515}
!510 = !DILocalVariable(name: "status", arg: 1, scope: !498, file: !491, line: 298, type: !105)
!511 = !DILocalVariable(name: "errnum", arg: 2, scope: !498, file: !491, line: 298, type: !105)
!512 = !DILocalVariable(name: "file_name", arg: 3, scope: !498, file: !491, line: 298, type: !137)
!513 = !DILocalVariable(name: "line_number", arg: 4, scope: !498, file: !491, line: 298, type: !98)
!514 = !DILocalVariable(name: "message", arg: 5, scope: !498, file: !491, line: 298, type: !137)
!515 = !DILocalVariable(name: "args", arg: 6, scope: !498, file: !491, line: 298, type: !501)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(name: "old_line_number", scope: !498, file: !491, line: 305, type: !98, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !491, line: 338, type: !291, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !491, line: 346, type: !19, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !491, line: 346, type: !301, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(name: "error_message_count", scope: !490, file: !491, line: 69, type: !98, isLocal: false, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !490, file: !491, line: 295, type: !105, isLocal: false, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !491, line: 208, type: !321, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !491, line: 208, type: !429, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !491, line: 214, type: !284, isLocal: true, isDefinition: true)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{null}
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(name: "program_name", scope: !539, file: !540, line: 31, type: !137, isLocal: false, isDefinition: true)
!539 = distinct !DICompileUnit(language: DW_LANG_C11, file: !540, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !541, globals: !542, splitDebugInlining: false, nameTableKind: None)
!540 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!541 = !{!125}
!542 = !{!537, !543, !545}
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !540, line: 46, type: !19, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !540, line: 49, type: !291, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(name: "utf07FF", scope: !549, file: !550, line: 46, type: !577, isLocal: true, isDefinition: true)
!549 = distinct !DISubprogram(name: "proper_name_lite", scope: !550, file: !550, line: 38, type: !551, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !553, retainedNodes: !555)
!550 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!551 = !DISubroutineType(types: !552)
!552 = !{!137, !137, !137}
!553 = distinct !DICompileUnit(language: DW_LANG_C11, file: !550, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !554, splitDebugInlining: false, nameTableKind: None)
!554 = !{!547}
!555 = !{!556, !557, !558, !559, !564}
!556 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !549, file: !550, line: 38, type: !137)
!557 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !549, file: !550, line: 38, type: !137)
!558 = !DILocalVariable(name: "translation", scope: !549, file: !550, line: 40, type: !137)
!559 = !DILocalVariable(name: "w", scope: !549, file: !550, line: 47, type: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !561, line: 37, baseType: !562)
!561 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !184, line: 57, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !184, line: 42, baseType: !98)
!564 = !DILocalVariable(name: "mbs", scope: !549, file: !550, line: 48, type: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !566, line: 6, baseType: !567)
!566 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !568, line: 21, baseType: !569)
!568 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 13, size: 64, elements: !570)
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !569, file: !568, line: 15, baseType: !105, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !569, file: !568, line: 20, baseType: !573, size: 32, offset: 32)
!573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !569, file: !568, line: 16, size: 32, elements: !574)
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !573, file: !568, line: 18, baseType: !98, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !573, file: !568, line: 19, baseType: !291, size: 32)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 16, elements: !302)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !580, line: 78, type: !19, isLocal: true, isDefinition: true)
!580 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !580, line: 79, type: !296, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !580, line: 80, type: !585, isLocal: true, isDefinition: true)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 13)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !580, line: 81, type: !585, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !580, line: 82, type: !273, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !580, line: 83, type: !301, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !580, line: 84, type: !19, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !580, line: 85, type: !321, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !580, line: 86, type: !321, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !580, line: 87, type: !19, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !604, file: !580, line: 76, type: !690, isLocal: false, isDefinition: true)
!604 = distinct !DICompileUnit(language: DW_LANG_C11, file: !580, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !605, retainedTypes: !625, globals: !626, splitDebugInlining: false, nameTableKind: None)
!605 = !{!606, !620, !109}
!606 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !607, line: 42, baseType: !98, size: 32, elements: !608)
!607 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!608 = !{!609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619}
!609 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!610 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!611 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!612 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!613 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!614 = !DIEnumerator(name: "c_quoting_style", value: 5)
!615 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!616 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!617 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!618 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!619 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!620 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !607, line: 254, baseType: !98, size: 32, elements: !621)
!621 = !{!622, !623, !624}
!622 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!623 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!624 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!625 = !{!105, !133, !134}
!626 = !{!578, !581, !583, !588, !590, !592, !594, !596, !598, !600, !602, !627, !631, !641, !643, !648, !650, !652, !654, !656, !679, !686, !688}
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !604, file: !580, line: 92, type: !629, isLocal: false, isDefinition: true)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 320, elements: !80)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !606)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !604, file: !580, line: 1040, type: !633, isLocal: false, isDefinition: true)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !580, line: 56, size: 448, elements: !634)
!634 = !{!635, !636, !637, !639, !640}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !633, file: !580, line: 59, baseType: !606, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !580, line: 62, baseType: !105, size: 32, offset: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !633, file: !580, line: 66, baseType: !638, size: 256, offset: 64)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 256, elements: !20)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !633, file: !580, line: 69, baseType: !137, size: 64, offset: 320)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !633, file: !580, line: 72, baseType: !137, size: 64, offset: 384)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !604, file: !580, line: 107, type: !633, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(name: "slot0", scope: !604, file: !580, line: 831, type: !645, isLocal: true, isDefinition: true)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !646)
!646 = !{!647}
!647 = !DISubrange(count: 256)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !580, line: 321, type: !301, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !580, line: 357, type: !301, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !580, line: 358, type: !301, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !580, line: 199, type: !321, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(name: "quote", scope: !658, file: !580, line: 228, type: !677, isLocal: true, isDefinition: true)
!658 = distinct !DISubprogram(name: "gettext_quote", scope: !580, file: !580, line: 197, type: !659, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !661)
!659 = !DISubroutineType(types: !660)
!660 = !{!137, !137, !606}
!661 = !{!662, !663, !664, !665, !666}
!662 = !DILocalVariable(name: "msgid", arg: 1, scope: !658, file: !580, line: 197, type: !137)
!663 = !DILocalVariable(name: "s", arg: 2, scope: !658, file: !580, line: 197, type: !606)
!664 = !DILocalVariable(name: "translation", scope: !658, file: !580, line: 199, type: !137)
!665 = !DILocalVariable(name: "w", scope: !658, file: !580, line: 229, type: !560)
!666 = !DILocalVariable(name: "mbs", scope: !658, file: !580, line: 230, type: !667)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !566, line: 6, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !568, line: 21, baseType: !669)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 13, size: 64, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !669, file: !568, line: 15, baseType: !105, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !669, file: !568, line: 20, baseType: !673, size: 32, offset: 32)
!673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !669, file: !568, line: 16, size: 32, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !673, file: !568, line: 18, baseType: !98, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !673, file: !568, line: 19, baseType: !291, size: 32)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !678)
!678 = !{!303, !293}
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(name: "slotvec", scope: !604, file: !580, line: 834, type: !681, isLocal: true, isDefinition: true)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !580, line: 823, size: 128, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !682, file: !580, line: 825, baseType: !134, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !682, file: !580, line: 826, baseType: !125, size: 64, offset: 64)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(name: "nslots", scope: !604, file: !580, line: 832, type: !105, isLocal: true, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(name: "slotvec0", scope: !604, file: !580, line: 833, type: !682, isLocal: true, isDefinition: true)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, size: 704, elements: !397)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(name: "numname_table", scope: !694, file: !695, line: 43, type: !704, isLocal: true, isDefinition: true)
!694 = distinct !DICompileUnit(language: DW_LANG_C11, file: !695, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !696, globals: !697, splitDebugInlining: false, nameTableKind: None)
!695 = !DIFile(filename: "lib/sig2str.c", directory: "/src", checksumkind: CSK_MD5, checksum: "828136ef7ede39101f7053cda7cea598")
!696 = !{!98}
!697 = !{!698, !700, !702, !692}
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !695, line: 351, type: !296, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !695, line: 356, type: !296, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !695, line: 362, type: !291, isLocal: true, isDefinition: true)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !705, size: 3360, elements: !710)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numname", file: !695, line: 43, size: 96, elements: !706)
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !705, file: !695, line: 43, baseType: !105, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !705, file: !695, line: 43, baseType: !709, size: 64, offset: 32)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !20)
!710 = !{!711}
!711 = !DISubrange(count: 35)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !714, line: 67, type: !391, isLocal: true, isDefinition: true)
!714 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !714, line: 69, type: !321, isLocal: true, isDefinition: true)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !714, line: 83, type: !321, isLocal: true, isDefinition: true)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(scope: null, file: !714, line: 83, type: !291, isLocal: true, isDefinition: true)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !714, line: 85, type: !301, isLocal: true, isDefinition: true)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(scope: null, file: !714, line: 88, type: !725, isLocal: true, isDefinition: true)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !726)
!726 = !{!727}
!727 = !DISubrange(count: 171)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !714, line: 88, type: !157, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !714, line: 105, type: !362, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !714, line: 109, type: !434, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !714, line: 113, type: !736, isLocal: true, isDefinition: true)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !737)
!737 = !{!738}
!738 = !DISubrange(count: 28)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !714, line: 120, type: !419, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !714, line: 127, type: !743, isLocal: true, isDefinition: true)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 36)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !714, line: 134, type: !345, isLocal: true, isDefinition: true)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !714, line: 142, type: !750, isLocal: true, isDefinition: true)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !751)
!751 = !{!752}
!752 = !DISubrange(count: 44)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(scope: null, file: !714, line: 150, type: !755, isLocal: true, isDefinition: true)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !756)
!756 = !{!757}
!757 = !DISubrange(count: 48)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(scope: null, file: !714, line: 159, type: !760, isLocal: true, isDefinition: true)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 52)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !714, line: 170, type: !765, isLocal: true, isDefinition: true)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 60)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(scope: null, file: !714, line: 248, type: !273, isLocal: true, isDefinition: true)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(scope: null, file: !714, line: 248, type: !367, isLocal: true, isDefinition: true)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(scope: null, file: !714, line: 254, type: !273, isLocal: true, isDefinition: true)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(scope: null, file: !714, line: 254, type: !143, isLocal: true, isDefinition: true)
!776 = !DIGlobalVariableExpression(var: !777, expr: !DIExpression())
!777 = distinct !DIGlobalVariable(scope: null, file: !714, line: 254, type: !345, isLocal: true, isDefinition: true)
!778 = !DIGlobalVariableExpression(var: !779, expr: !DIExpression())
!779 = distinct !DIGlobalVariable(scope: null, file: !714, line: 259, type: !3, isLocal: true, isDefinition: true)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(scope: null, file: !714, line: 259, type: !782, isLocal: true, isDefinition: true)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !783)
!783 = !{!784}
!784 = !DISubrange(count: 29)
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !787, file: !788, line: 26, type: !790, isLocal: false, isDefinition: true)
!787 = distinct !DICompileUnit(language: DW_LANG_C11, file: !788, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !789, splitDebugInlining: false, nameTableKind: None)
!788 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!789 = !{!785}
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 376, elements: !791)
!791 = !{!792}
!792 = !DISubrange(count: 47)
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(name: "exit_failure", scope: !795, file: !796, line: 24, type: !798, isLocal: false, isDefinition: true)
!795 = distinct !DICompileUnit(language: DW_LANG_C11, file: !796, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !797, splitDebugInlining: false, nameTableKind: None)
!796 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!797 = !{!793}
!798 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !105)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(scope: null, file: !801, line: 34, type: !310, isLocal: true, isDefinition: true)
!801 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(scope: null, file: !801, line: 34, type: !321, isLocal: true, isDefinition: true)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !801, line: 34, type: !340, isLocal: true, isDefinition: true)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !808, file: !809, line: 58, type: !833, isLocal: true, isDefinition: true)
!808 = distinct !DICompileUnit(language: DW_LANG_C11, file: !809, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !810, globals: !830, splitDebugInlining: false, nameTableKind: None)
!809 = !DIFile(filename: "lib/c-strtod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5149e55c3d66a821d48006aa16ce6f10")
!810 = !{!125, !811}
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !812, line: 24, baseType: !813)
!812 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h", directory: "", checksumkind: CSK_MD5, checksum: "4752f26e930c42056083e96227ff0057")
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !814, line: 41, baseType: !815)
!814 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h", directory: "", checksumkind: CSK_MD5, checksum: "79eea70c97dfcbc51f94cdf9446ea8a8")
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !814, line: 27, size: 1856, elements: !817)
!817 = !{!818, !822, !825, !827, !828}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !816, file: !814, line: 30, baseType: !819, size: 832)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !820, size: 832, elements: !586)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !814, line: 30, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !816, file: !814, line: 33, baseType: !823, size: 64, offset: 832)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !816, file: !814, line: 34, baseType: !826, size: 64, offset: 896)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !816, file: !814, line: 35, baseType: !826, size: 64, offset: 960)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !816, file: !814, line: 38, baseType: !829, size: 832, offset: 1024)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 832, elements: !586)
!830 = !{!831, !806}
!831 = !DIGlobalVariableExpression(var: !832, expr: !DIExpression())
!832 = distinct !DIGlobalVariable(scope: null, file: !809, line: 66, type: !301, isLocal: true, isDefinition: true)
!833 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !811)
!834 = !DIGlobalVariableExpression(var: !835, expr: !DIExpression())
!835 = distinct !DIGlobalVariable(scope: null, file: !836, line: 108, type: !74, isLocal: true, isDefinition: true)
!836 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(name: "internal_state", scope: !839, file: !836, line: 97, type: !842, isLocal: true, isDefinition: true)
!839 = distinct !DICompileUnit(language: DW_LANG_C11, file: !836, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !840, globals: !841, splitDebugInlining: false, nameTableKind: None)
!840 = !{!126, !134, !139}
!841 = !{!834, !837}
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !566, line: 6, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !568, line: 21, baseType: !844)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 13, size: 64, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !844, file: !568, line: 15, baseType: !105, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !844, file: !568, line: 20, baseType: !848, size: 32, offset: 32)
!848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !568, line: 16, size: 32, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !848, file: !568, line: 18, baseType: !98, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !848, file: !568, line: 19, baseType: !291, size: 32)
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(scope: null, file: !854, line: 35, type: !296, isLocal: true, isDefinition: true)
!854 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!855 = distinct !DICompileUnit(language: DW_LANG_C11, file: !460, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !856, splitDebugInlining: false, nameTableKind: None)
!856 = !{!458, !461}
!857 = distinct !DICompileUnit(language: DW_LANG_C11, file: !858, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!858 = !DIFile(filename: "lib/cl-strtod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a67239aa557b1854772fcd1589240f00")
!859 = distinct !DICompileUnit(language: DW_LANG_C11, file: !860, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !861, retainedTypes: !866, splitDebugInlining: false, nameTableKind: None)
!860 = !DIFile(filename: "lib/dtotimespec.c", directory: "/src", checksumkind: CSK_MD5, checksum: "863541a7a9cbed8b745823733251add6")
!861 = !{!862}
!862 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !863, line: 44, baseType: !98, size: 32, elements: !864)
!863 = !DIFile(filename: "./lib/timespec.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f2321879fdee55a014e00353b7423449")
!864 = !{!865}
!865 = !DIEnumerator(name: "TIMESPEC_HZ", value: 1000000000)
!866 = !{!867}
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !868, line: 10, baseType: !869)
!868 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !184, line: 160, baseType: !253)
!870 = distinct !DICompileUnit(language: DW_LANG_C11, file: !871, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!871 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!872 = distinct !DICompileUnit(language: DW_LANG_C11, file: !714, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !873, retainedTypes: !877, globals: !878, splitDebugInlining: false, nameTableKind: None)
!873 = !{!874}
!874 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !714, line: 40, baseType: !98, size: 32, elements: !875)
!875 = !{!876}
!876 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!877 = !{!126}
!878 = !{!712, !715, !717, !719, !721, !723, !728, !730, !732, !734, !739, !741, !746, !748, !753, !758, !763, !768, !770, !772, !774, !776, !778, !780}
!879 = distinct !DICompileUnit(language: DW_LANG_C11, file: !880, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !881, retainedTypes: !912, splitDebugInlining: false, nameTableKind: None)
!880 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!881 = !{!882, !894}
!882 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !883, file: !880, line: 188, baseType: !98, size: 32, elements: !892)
!883 = distinct !DISubprogram(name: "x2nrealloc", scope: !880, file: !880, line: 176, type: !884, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !887)
!884 = !DISubroutineType(types: !885)
!885 = !{!126, !126, !886, !134}
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!887 = !{!888, !889, !890, !891}
!888 = !DILocalVariable(name: "p", arg: 1, scope: !883, file: !880, line: 176, type: !126)
!889 = !DILocalVariable(name: "pn", arg: 2, scope: !883, file: !880, line: 176, type: !886)
!890 = !DILocalVariable(name: "s", arg: 3, scope: !883, file: !880, line: 176, type: !134)
!891 = !DILocalVariable(name: "n", scope: !883, file: !880, line: 178, type: !134)
!892 = !{!893}
!893 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!894 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !895, file: !880, line: 228, baseType: !98, size: 32, elements: !892)
!895 = distinct !DISubprogram(name: "xpalloc", scope: !880, file: !880, line: 223, type: !896, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !902)
!896 = !DISubroutineType(types: !897)
!897 = !{!126, !126, !898, !899, !901, !899}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !900, line: 130, baseType: !901)
!900 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !135, line: 35, baseType: !253)
!902 = !{!903, !904, !905, !906, !907, !908, !909, !910, !911}
!903 = !DILocalVariable(name: "pa", arg: 1, scope: !895, file: !880, line: 223, type: !126)
!904 = !DILocalVariable(name: "pn", arg: 2, scope: !895, file: !880, line: 223, type: !898)
!905 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !895, file: !880, line: 223, type: !899)
!906 = !DILocalVariable(name: "n_max", arg: 4, scope: !895, file: !880, line: 223, type: !901)
!907 = !DILocalVariable(name: "s", arg: 5, scope: !895, file: !880, line: 223, type: !899)
!908 = !DILocalVariable(name: "n0", scope: !895, file: !880, line: 230, type: !899)
!909 = !DILocalVariable(name: "n", scope: !895, file: !880, line: 237, type: !899)
!910 = !DILocalVariable(name: "nbytes", scope: !895, file: !880, line: 248, type: !899)
!911 = !DILocalVariable(name: "adjusted_nbytes", scope: !895, file: !880, line: 252, type: !899)
!912 = !{!125, !126, !190, !253, !136}
!913 = distinct !DICompileUnit(language: DW_LANG_C11, file: !801, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !914, splitDebugInlining: false, nameTableKind: None)
!914 = !{!799, !802, !804}
!915 = distinct !DICompileUnit(language: DW_LANG_C11, file: !916, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!916 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!917 = distinct !DICompileUnit(language: DW_LANG_C11, file: !918, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!918 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!919 = distinct !DICompileUnit(language: DW_LANG_C11, file: !920, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !877, splitDebugInlining: false, nameTableKind: None)
!920 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!921 = distinct !DICompileUnit(language: DW_LANG_C11, file: !922, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !877, splitDebugInlining: false, nameTableKind: None)
!922 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!923 = distinct !DICompileUnit(language: DW_LANG_C11, file: !924, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !925, splitDebugInlining: false, nameTableKind: None)
!924 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!925 = !{!190, !136, !126}
!926 = distinct !DICompileUnit(language: DW_LANG_C11, file: !854, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !927, splitDebugInlining: false, nameTableKind: None)
!927 = !{!928, !852}
!928 = !DIGlobalVariableExpression(var: !929, expr: !DIExpression())
!929 = distinct !DIGlobalVariable(scope: null, file: !854, line: 35, type: !301, isLocal: true, isDefinition: true)
!930 = distinct !DICompileUnit(language: DW_LANG_C11, file: !931, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!931 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!932 = distinct !DICompileUnit(language: DW_LANG_C11, file: !933, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !877, splitDebugInlining: false, nameTableKind: None)
!933 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!934 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!935 = !{i32 7, !"Dwarf Version", i32 5}
!936 = !{i32 2, !"Debug Info Version", i32 3}
!937 = !{i32 1, !"wchar_size", i32 4}
!938 = !{i32 8, !"PIC Level", i32 2}
!939 = !{i32 7, !"PIE Level", i32 2}
!940 = !{i32 7, !"uwtable", i32 2}
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
!957 = !DILocation(line: 736, column: 3, scope: !958, inlinedAt: !960)
!958 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !97, file: !97, line: 734, type: !535, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !959)
!959 = !{}
!960 = distinct !DILocation(line: 277, column: 7, scope: !955)
!961 = !DILocation(line: 279, column: 7, scope: !955)
!962 = !DILocation(line: 285, column: 7, scope: !955)
!963 = !DILocation(line: 290, column: 7, scope: !955)
!964 = !DILocation(line: 295, column: 7, scope: !955)
!965 = !DILocation(line: 301, column: 7, scope: !955)
!966 = !DILocation(line: 306, column: 7, scope: !955)
!967 = !DILocation(line: 307, column: 7, scope: !955)
!968 = !DILocation(line: 309, column: 7, scope: !955)
!969 = !DILocation(line: 314, column: 7, scope: !955)
!970 = !DILocation(line: 320, column: 7, scope: !955)
!971 = !DILocalVariable(name: "program", arg: 1, scope: !972, file: !97, line: 836, type: !137)
!972 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !97, file: !97, line: 836, type: !973, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !975)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !137}
!975 = !{!971, !976, !983, !984, !986, !987}
!976 = !DILocalVariable(name: "infomap", scope: !972, file: !97, line: 838, type: !977)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !978, size: 896, elements: !322)
!978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !979)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !972, file: !97, line: 838, size: 128, elements: !980)
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !979, file: !97, line: 838, baseType: !137, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !979, file: !97, line: 838, baseType: !137, size: 64, offset: 64)
!983 = !DILocalVariable(name: "node", scope: !972, file: !97, line: 848, type: !137)
!984 = !DILocalVariable(name: "map_prog", scope: !972, file: !97, line: 849, type: !985)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!986 = !DILocalVariable(name: "lc_messages", scope: !972, file: !97, line: 861, type: !137)
!987 = !DILocalVariable(name: "url_program", scope: !972, file: !97, line: 874, type: !137)
!988 = !DILocation(line: 0, scope: !972, inlinedAt: !989)
!989 = distinct !DILocation(line: 330, column: 7, scope: !955)
!990 = !DILocation(line: 857, column: 3, scope: !972, inlinedAt: !989)
!991 = !DILocation(line: 861, column: 29, scope: !972, inlinedAt: !989)
!992 = !DILocation(line: 862, column: 7, scope: !993, inlinedAt: !989)
!993 = distinct !DILexicalBlock(scope: !972, file: !97, line: 862, column: 7)
!994 = !DILocation(line: 862, column: 19, scope: !993, inlinedAt: !989)
!995 = !DILocation(line: 862, column: 22, scope: !993, inlinedAt: !989)
!996 = !DILocation(line: 862, column: 7, scope: !972, inlinedAt: !989)
!997 = !DILocation(line: 868, column: 7, scope: !998, inlinedAt: !989)
!998 = distinct !DILexicalBlock(scope: !993, file: !97, line: 863, column: 5)
!999 = !DILocation(line: 870, column: 5, scope: !998, inlinedAt: !989)
!1000 = !DILocation(line: 875, column: 3, scope: !972, inlinedAt: !989)
!1001 = !DILocation(line: 877, column: 3, scope: !972, inlinedAt: !989)
!1002 = !DILocation(line: 332, column: 3, scope: !941)
!1003 = !DISubprogram(name: "dcgettext", scope: !1004, file: !1004, line: 51, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1004 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!125, !137, !137, !105}
!1007 = !DISubprogram(name: "__fprintf_chk", scope: !1008, file: !1008, line: 93, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1008 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!105, !1011, !105, !1012, null}
!1011 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !226)
!1012 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !137)
!1013 = !DISubprogram(name: "__printf_chk", scope: !1008, file: !1008, line: 95, type: !1014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!105, !105, !1012, null}
!1016 = !DISubprogram(name: "fputs_unlocked", scope: !1017, file: !1017, line: 691, type: !1018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
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
!1073 = !DILocation(line: 618, column: 5, scope: !217)
!1074 = !DILocation(line: 620, column: 23, scope: !204)
!1075 = !DILocation(line: 625, column: 39, scope: !204)
!1076 = !DILocation(line: 626, column: 3, scope: !204)
!1077 = !DILocation(line: 626, column: 10, scope: !204)
!1078 = !DILocation(line: 626, column: 21, scope: !204)
!1079 = !DILocation(line: 628, column: 44, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !97, line: 628, column: 11)
!1081 = distinct !DILexicalBlock(scope: !204, file: !97, line: 627, column: 5)
!1082 = !DILocation(line: 628, column: 32, scope: !1080)
!1083 = !DILocation(line: 628, column: 49, scope: !1080)
!1084 = !DILocation(line: 628, column: 11, scope: !1081)
!1085 = !DILocation(line: 630, column: 11, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1081, file: !97, line: 630, column: 11)
!1087 = !DILocation(line: 630, column: 11, scope: !1081)
!1088 = !DILocation(line: 632, column: 26, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !97, line: 632, column: 15)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !97, line: 631, column: 9)
!1091 = !DILocation(line: 632, column: 34, scope: !1089)
!1092 = !DILocation(line: 632, column: 37, scope: !1089)
!1093 = !DILocation(line: 632, column: 15, scope: !1090)
!1094 = !DILocation(line: 636, column: 16, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1090, file: !97, line: 636, column: 15)
!1096 = !DILocation(line: 636, column: 29, scope: !1095)
!1097 = !DILocation(line: 640, column: 16, scope: !1081)
!1098 = distinct !{!1098, !1076, !1099, !1069}
!1099 = !DILocation(line: 641, column: 5, scope: !204)
!1100 = !DILocation(line: 644, column: 3, scope: !204)
!1101 = !DILocation(line: 0, scope: !1034, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 648, column: 31, scope: !204)
!1103 = !DILocation(line: 0, scope: !1034, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 649, column: 31, scope: !204)
!1105 = !DILocation(line: 0, scope: !1034, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 650, column: 31, scope: !204)
!1107 = !DILocation(line: 0, scope: !1034, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 651, column: 31, scope: !204)
!1109 = !DILocation(line: 0, scope: !1034, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 652, column: 31, scope: !204)
!1111 = !DILocation(line: 0, scope: !1034, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 653, column: 31, scope: !204)
!1113 = !DILocation(line: 0, scope: !1034, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 654, column: 31, scope: !204)
!1115 = !DILocation(line: 0, scope: !1034, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 655, column: 31, scope: !204)
!1117 = !DILocation(line: 0, scope: !1034, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 656, column: 31, scope: !204)
!1119 = !DILocation(line: 0, scope: !1034, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 657, column: 31, scope: !204)
!1121 = !DILocation(line: 663, column: 7, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !204, file: !97, line: 663, column: 7)
!1123 = !DILocation(line: 664, column: 7, scope: !1122)
!1124 = !DILocation(line: 664, column: 10, scope: !1122)
!1125 = !DILocation(line: 663, column: 7, scope: !204)
!1126 = !DILocation(line: 669, column: 7, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1122, file: !97, line: 665, column: 5)
!1128 = !DILocation(line: 671, column: 5, scope: !1127)
!1129 = !DILocation(line: 676, column: 7, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1122, file: !97, line: 673, column: 5)
!1131 = !DILocation(line: 679, column: 3, scope: !204)
!1132 = !DILocation(line: 683, column: 3, scope: !204)
!1133 = !DILocation(line: 686, column: 3, scope: !204)
!1134 = !DILocation(line: 688, column: 3, scope: !204)
!1135 = !DILocation(line: 691, column: 3, scope: !204)
!1136 = !DILocation(line: 695, column: 3, scope: !204)
!1137 = !DILocation(line: 696, column: 1, scope: !204)
!1138 = !DISubprogram(name: "setlocale", scope: !1139, file: !1139, line: 122, type: !1140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1139 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!125, !105, !137}
!1142 = !DISubprogram(name: "strncmp", scope: !1143, file: !1143, line: 159, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1143 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!105, !137, !137, !134}
!1146 = !DISubprogram(name: "exit", scope: !1147, file: !1147, line: 624, type: !130, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1147 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1148 = !DISubprogram(name: "getenv", scope: !1147, file: !1147, line: 641, type: !1149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!125, !137}
!1151 = !DISubprogram(name: "strcmp", scope: !1143, file: !1143, line: 156, type: !1152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!105, !137, !137}
!1154 = !DISubprogram(name: "strspn", scope: !1143, file: !1143, line: 297, type: !1155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!136, !137, !137}
!1157 = !DISubprogram(name: "strchr", scope: !1143, file: !1143, line: 246, type: !1158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!125, !137, !105}
!1160 = !DISubprogram(name: "__ctype_b_loc", scope: !110, file: !110, line: 79, type: !1161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!1163}
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!1164 = !DISubprogram(name: "strcspn", scope: !1143, file: !1143, line: 293, type: !1155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1165 = !DISubprogram(name: "fwrite_unlocked", scope: !1017, file: !1017, line: 704, type: !1166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!134, !1168, !134, !134, !1011}
!1168 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1169)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1171 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 508, type: !1172, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1175)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!105, !105, !1174}
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!1175 = !{!1176, !1177, !1178, !1179, !1180, !1189, !1190, !1194, !1196, !1197}
!1176 = !DILocalVariable(name: "argc", arg: 1, scope: !1171, file: !2, line: 508, type: !105)
!1177 = !DILocalVariable(name: "argv", arg: 2, scope: !1171, file: !2, line: 508, type: !1174)
!1178 = !DILocalVariable(name: "timeout", scope: !1171, file: !2, line: 510, type: !187)
!1179 = !DILocalVariable(name: "c", scope: !1171, file: !2, line: 511, type: !105)
!1180 = !DILocalVariable(name: "orig_set", scope: !1171, file: !2, line: 586, type: !1181)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1182, line: 7, baseType: !1183)
!1182 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "c2b978aaf49d5c0e2b1e9c2e1b7f7848")
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !1184, line: 8, baseType: !1185)
!1184 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "acc6b14c0967857fec362a8d433e1cf2")
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1184, line: 5, size: 1024, elements: !1186)
!1186 = !{!1187}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !1185, file: !1184, line: 7, baseType: !1188, size: 1024)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 1024, elements: !363)
!1189 = !DILocalVariable(name: "timeout_pid", scope: !1171, file: !2, line: 593, type: !181)
!1190 = !DILocalVariable(name: "exit_status", scope: !1191, file: !2, line: 632, type: !105)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 607, column: 5)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 606, column: 12)
!1193 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 601, column: 7)
!1194 = !DILocalVariable(name: "wait_result", scope: !1195, file: !2, line: 638, type: !181)
!1195 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 637, column: 5)
!1196 = !DILocalVariable(name: "status", scope: !1195, file: !2, line: 639, type: !105)
!1197 = !DILocalVariable(name: "sig", scope: !1198, file: !2, line: 662, type: !105)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 661, column: 13)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 660, column: 20)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 658, column: 15)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 657, column: 9)
!1202 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 650, column: 11)
!1203 = !DILocation(line: 0, scope: !1171)
!1204 = !DILocation(line: 514, column: 21, scope: !1171)
!1205 = !DILocation(line: 514, column: 3, scope: !1171)
!1206 = !DILocation(line: 515, column: 3, scope: !1171)
!1207 = !DILocation(line: 516, column: 3, scope: !1171)
!1208 = !DILocation(line: 517, column: 3, scope: !1171)
!1209 = !DILocalVariable(name: "status", arg: 1, scope: !1210, file: !97, line: 102, type: !105)
!1210 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !97, file: !97, line: 102, type: !130, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1211)
!1211 = !{!1209}
!1212 = !DILocation(line: 0, scope: !1210, inlinedAt: !1213)
!1213 = distinct !DILocation(line: 519, column: 3, scope: !1171)
!1214 = !DILocation(line: 105, column: 18, scope: !1215, inlinedAt: !1213)
!1215 = distinct !DILexicalBlock(scope: !1210, file: !97, line: 104, column: 7)
!1216 = !DILocation(line: 520, column: 3, scope: !1171)
!1217 = !DILocation(line: 522, column: 3, scope: !1171)
!1218 = !DILocation(line: 522, column: 15, scope: !1171)
!1219 = !DILocation(line: 528, column: 22, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !2, line: 526, column: 9)
!1221 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 524, column: 5)
!1222 = !DILocation(line: 529, column: 11, scope: !1220)
!1223 = !DILocation(line: 532, column: 40, scope: !1220)
!1224 = !DILocation(line: 532, column: 24, scope: !1220)
!1225 = !DILocation(line: 532, column: 22, scope: !1220)
!1226 = !{!1227, !1227, i64 0}
!1227 = !{!"double", !952, i64 0}
!1228 = !DILocation(line: 533, column: 11, scope: !1220)
!1229 = !DILocation(line: 536, column: 27, scope: !1220)
!1230 = !DILocation(line: 537, column: 11, scope: !1220)
!1231 = !DILocation(line: 540, column: 38, scope: !1220)
!1232 = !DILocation(line: 540, column: 25, scope: !1220)
!1233 = !DILocation(line: 540, column: 23, scope: !1220)
!1234 = !DILocation(line: 541, column: 27, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 541, column: 15)
!1236 = !DILocation(line: 541, column: 15, scope: !1220)
!1237 = distinct !{!1237, !1217, !1238, !1069}
!1238 = !DILocation(line: 557, column: 5, scope: !1171)
!1239 = !DILocation(line: 542, column: 13, scope: !1235)
!1240 = !DILocation(line: 546, column: 19, scope: !1220)
!1241 = !DILocation(line: 547, column: 11, scope: !1220)
!1242 = !DILocation(line: 549, column: 9, scope: !1220)
!1243 = !DILocation(line: 551, column: 9, scope: !1220)
!1244 = !DILocation(line: 554, column: 11, scope: !1220)
!1245 = !DILocation(line: 559, column: 14, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 559, column: 7)
!1247 = !DILocation(line: 559, column: 12, scope: !1246)
!1248 = !DILocation(line: 559, column: 21, scope: !1246)
!1249 = !DILocation(line: 559, column: 7, scope: !1171)
!1250 = !DILocation(line: 560, column: 5, scope: !1246)
!1251 = !DILocation(line: 562, column: 40, scope: !1171)
!1252 = !DILocation(line: 562, column: 29, scope: !1171)
!1253 = !DILocation(line: 562, column: 13, scope: !1171)
!1254 = !DILocation(line: 564, column: 11, scope: !1171)
!1255 = !DILocation(line: 564, column: 8, scope: !1171)
!1256 = !DILocation(line: 565, column: 13, scope: !1171)
!1257 = !DILocation(line: 565, column: 11, scope: !1171)
!1258 = !DILocation(line: 571, column: 8, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 571, column: 7)
!1260 = !DILocation(line: 571, column: 7, scope: !1171)
!1261 = !DILocation(line: 572, column: 5, scope: !1259)
!1262 = !DILocation(line: 576, column: 20, scope: !1171)
!1263 = !DILocalVariable(name: "sigterm", arg: 1, scope: !1264, file: !2, line: 437, type: !105)
!1264 = distinct !DISubprogram(name: "install_cleanup", scope: !2, file: !2, line: 437, type: !130, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1265)
!1265 = !{!1263, !1266, !1354, !1356}
!1266 = !DILocalVariable(name: "sa", scope: !1264, file: !2, line: 439, type: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1268, line: 27, size: 1216, elements: !1269)
!1268 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "", checksumkind: CSK_MD5, checksum: "95401d18e887df415f59d7a2cb411c28")
!1269 = !{!1270, !1351, !1352, !1353}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !1267, file: !1268, line: 38, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1267, file: !1268, line: 31, size: 64, elements: !1272)
!1272 = !{!1273, !1274}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1271, file: !1268, line: 34, baseType: !127, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !1271, file: !1268, line: 36, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null, !105, !1278, !126}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !1280, line: 124, baseType: !1281)
!1280 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h", directory: "", checksumkind: CSK_MD5, checksum: "023cf7b0ef843da262cf07900eda0ac5")
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1280, line: 36, size: 1024, elements: !1282)
!1282 = !{!1283, !1284, !1285, !1286, !1287}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1281, file: !1280, line: 38, baseType: !105, size: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1281, file: !1280, line: 40, baseType: !105, size: 32, offset: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1281, file: !1280, line: 42, baseType: !105, size: 32, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1281, file: !1280, line: 48, baseType: !105, size: 32, offset: 96)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1281, file: !1280, line: 123, baseType: !1288, size: 896, offset: 128)
!1288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1281, file: !1280, line: 51, size: 896, elements: !1289)
!1289 = !{!1290, !1292, !1298, !1310, !1316, !1325, !1340, !1345}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !1288, file: !1280, line: 53, baseType: !1291, size: 896)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 896, elements: !737)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1288, file: !1280, line: 60, baseType: !1293, size: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1288, file: !1280, line: 56, size: 64, elements: !1294)
!1294 = !{!1295, !1296}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1293, file: !1280, line: 58, baseType: !183, size: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1293, file: !1280, line: 59, baseType: !1297, size: 32, offset: 32)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !184, line: 146, baseType: !98)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1288, file: !1280, line: 68, baseType: !1299, size: 128)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1288, file: !1280, line: 63, size: 128, elements: !1300)
!1300 = !{!1301, !1302, !1303}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !1299, file: !1280, line: 65, baseType: !105, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !1299, file: !1280, line: 66, baseType: !105, size: 32, offset: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1299, file: !1280, line: 67, baseType: !1304, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigval_t", file: !1305, line: 30, baseType: !1306)
!1305 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h", directory: "", checksumkind: CSK_MD5, checksum: "bc7605d16e396c16f725f8da13f6eb20")
!1306 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1305, line: 24, size: 64, elements: !1307)
!1307 = !{!1308, !1309}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1306, file: !1305, line: 26, baseType: !105, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1306, file: !1305, line: 27, baseType: !126, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1288, file: !1280, line: 76, baseType: !1311, size: 128)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1288, file: !1280, line: 71, size: 128, elements: !1312)
!1312 = !{!1313, !1314, !1315}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1311, file: !1280, line: 73, baseType: !183, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1311, file: !1280, line: 74, baseType: !1297, size: 32, offset: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1311, file: !1280, line: 75, baseType: !1304, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1288, file: !1280, line: 86, baseType: !1317, size: 256)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1288, file: !1280, line: 79, size: 256, elements: !1318)
!1318 = !{!1319, !1320, !1321, !1322, !1324}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1317, file: !1280, line: 81, baseType: !183, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1317, file: !1280, line: 82, baseType: !1297, size: 32, offset: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !1317, file: !1280, line: 83, baseType: !105, size: 32, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !1317, file: !1280, line: 84, baseType: !1323, size: 64, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !184, line: 156, baseType: !253)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !1317, file: !1280, line: 85, baseType: !1323, size: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1288, file: !1280, line: 105, baseType: !1326, size: 256)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1288, file: !1280, line: 89, size: 256, elements: !1327)
!1327 = !{!1328, !1329, !1331}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !1326, file: !1280, line: 91, baseType: !126, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !1326, file: !1280, line: 93, baseType: !1330, size: 16, offset: 64)
!1330 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_bounds", scope: !1326, file: !1280, line: 104, baseType: !1332, size: 128, offset: 128)
!1332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1326, file: !1280, line: 94, size: 128, elements: !1333)
!1333 = !{!1334, !1339}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1332, file: !1280, line: 101, baseType: !1335, size: 128)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1332, file: !1280, line: 97, size: 128, elements: !1336)
!1336 = !{!1337, !1338}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1335, file: !1280, line: 99, baseType: !126, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1335, file: !1280, line: 100, baseType: !126, size: 64, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1332, file: !1280, line: 103, baseType: !563, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1288, file: !1280, line: 112, baseType: !1341, size: 128)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1288, file: !1280, line: 108, size: 128, elements: !1342)
!1342 = !{!1343, !1344}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !1341, file: !1280, line: 110, baseType: !253, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !1341, file: !1280, line: 111, baseType: !105, size: 32, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1288, file: !1280, line: 121, baseType: !1346, size: 128)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1288, file: !1280, line: 116, size: 128, elements: !1347)
!1347 = !{!1348, !1349, !1350}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1346, file: !1280, line: 118, baseType: !126, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1346, file: !1280, line: 119, baseType: !105, size: 32, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1346, file: !1280, line: 120, baseType: !98, size: 32, offset: 96)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1267, file: !1268, line: 46, baseType: !1183, size: 1024, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1267, file: !1268, line: 49, baseType: !105, size: 32, offset: 1088)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1267, file: !1268, line: 52, baseType: !534, size: 64, offset: 1152)
!1354 = !DILocalVariable(name: "i", scope: !1355, file: !2, line: 445, type: !105)
!1355 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 445, column: 3)
!1356 = !DILocalVariable(name: "s", scope: !1357, file: !2, line: 450, type: !105)
!1357 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 450, column: 3)
!1358 = !DILocation(line: 0, scope: !1264, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 576, column: 3, scope: !1171)
!1360 = !DILocation(line: 439, column: 3, scope: !1264, inlinedAt: !1359)
!1361 = !DILocation(line: 439, column: 20, scope: !1264, inlinedAt: !1359)
!1362 = !DILocation(line: 440, column: 20, scope: !1264, inlinedAt: !1359)
!1363 = !DILocation(line: 440, column: 3, scope: !1264, inlinedAt: !1359)
!1364 = !DILocation(line: 441, column: 17, scope: !1264, inlinedAt: !1359)
!1365 = !DILocation(line: 442, column: 6, scope: !1264, inlinedAt: !1359)
!1366 = !DILocation(line: 442, column: 15, scope: !1264, inlinedAt: !1359)
!1367 = !{!1368, !1023, i64 136}
!1368 = !{!"sigaction", !952, i64 0, !1369, i64 8, !1023, i64 136, !951, i64 144}
!1369 = !{!"", !952, i64 0}
!1370 = !DILocation(line: 0, scope: !1355, inlinedAt: !1359)
!1371 = !DILocation(line: 445, column: 3, scope: !1355, inlinedAt: !1359)
!1372 = !DILocation(line: 450, column: 16, scope: !1357, inlinedAt: !1359)
!1373 = !DILocation(line: 0, scope: !1357, inlinedAt: !1359)
!1374 = !DILocation(line: 450, column: 31, scope: !1375, inlinedAt: !1359)
!1375 = distinct !DILexicalBlock(scope: !1357, file: !2, line: 450, column: 3)
!1376 = !DILocation(line: 450, column: 28, scope: !1375, inlinedAt: !1359)
!1377 = !DILocation(line: 450, column: 3, scope: !1357, inlinedAt: !1359)
!1378 = !DILocation(line: 446, column: 29, scope: !1379, inlinedAt: !1359)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 446, column: 9)
!1380 = distinct !DILexicalBlock(scope: !1355, file: !2, line: 445, column: 3)
!1381 = !DILocalVariable(name: "sig", arg: 1, scope: !1382, file: !2, line: 422, type: !105)
!1382 = distinct !DISubprogram(name: "sig_needs_handling", scope: !2, file: !2, line: 422, type: !1383, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1385)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!190, !105, !105}
!1385 = !{!1381, !1386, !1387, !1388}
!1386 = !DILocalVariable(name: "sigterm", arg: 2, scope: !1382, file: !2, line: 422, type: !105)
!1387 = !DILocalVariable(name: "old_sa", scope: !1382, file: !2, line: 430, type: !1267)
!1388 = !DILocalVariable(name: "ret", scope: !1382, file: !2, line: 432, type: !190)
!1389 = !DILocation(line: 0, scope: !1382, inlinedAt: !1390)
!1390 = distinct !DILocation(line: 446, column: 9, scope: !1379, inlinedAt: !1359)
!1391 = !DILocation(line: 424, column: 11, scope: !1392, inlinedAt: !1390)
!1392 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 424, column: 7)
!1393 = !DILocation(line: 424, column: 22, scope: !1392, inlinedAt: !1390)
!1394 = !DILocation(line: 430, column: 3, scope: !1382, inlinedAt: !1390)
!1395 = !DILocation(line: 430, column: 20, scope: !1382, inlinedAt: !1390)
!1396 = !DILocation(line: 431, column: 3, scope: !1382, inlinedAt: !1390)
!1397 = !DILocation(line: 432, column: 21, scope: !1382, inlinedAt: !1390)
!1398 = !DILocation(line: 432, column: 32, scope: !1382, inlinedAt: !1390)
!1399 = !DILocation(line: 434, column: 1, scope: !1382, inlinedAt: !1390)
!1400 = !DILocation(line: 446, column: 9, scope: !1380, inlinedAt: !1359)
!1401 = !DILocation(line: 447, column: 7, scope: !1379, inlinedAt: !1359)
!1402 = !DILocation(line: 445, column: 44, scope: !1380, inlinedAt: !1359)
!1403 = !DILocation(line: 445, column: 21, scope: !1380, inlinedAt: !1359)
!1404 = distinct !{!1404, !1371, !1405, !1069}
!1405 = !DILocation(line: 447, column: 40, scope: !1355, inlinedAt: !1359)
!1406 = !DILocation(line: 0, scope: !1382, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 451, column: 9, scope: !1408, inlinedAt: !1359)
!1408 = distinct !DILexicalBlock(scope: !1375, file: !2, line: 451, column: 9)
!1409 = !DILocation(line: 424, column: 11, scope: !1392, inlinedAt: !1407)
!1410 = !DILocation(line: 424, column: 22, scope: !1392, inlinedAt: !1407)
!1411 = !DILocation(line: 430, column: 3, scope: !1382, inlinedAt: !1407)
!1412 = !DILocation(line: 430, column: 20, scope: !1382, inlinedAt: !1407)
!1413 = !DILocation(line: 431, column: 3, scope: !1382, inlinedAt: !1407)
!1414 = !DILocation(line: 432, column: 21, scope: !1382, inlinedAt: !1407)
!1415 = !DILocation(line: 432, column: 32, scope: !1382, inlinedAt: !1407)
!1416 = !DILocation(line: 434, column: 1, scope: !1382, inlinedAt: !1407)
!1417 = !DILocation(line: 451, column: 9, scope: !1375, inlinedAt: !1359)
!1418 = !DILocation(line: 452, column: 7, scope: !1408, inlinedAt: !1359)
!1419 = !DILocation(line: 450, column: 42, scope: !1375, inlinedAt: !1359)
!1420 = distinct !{!1420, !1377, !1421, !1069}
!1421 = !DILocation(line: 452, column: 30, scope: !1357, inlinedAt: !1359)
!1422 = !DILocation(line: 454, column: 3, scope: !1264, inlinedAt: !1359)
!1423 = !DILocation(line: 455, column: 1, scope: !1264, inlinedAt: !1359)
!1424 = !DILocation(line: 577, column: 3, scope: !1171)
!1425 = !DILocation(line: 578, column: 3, scope: !1171)
!1426 = !DILocation(line: 406, column: 3, scope: !1427, inlinedAt: !1430)
!1427 = distinct !DISubprogram(name: "install_sigchld", scope: !2, file: !2, line: 404, type: !535, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1428)
!1428 = !{!1429}
!1429 = !DILocalVariable(name: "sa", scope: !1427, file: !2, line: 406, type: !1267)
!1430 = distinct !DILocation(line: 579, column: 3, scope: !1171)
!1431 = !DILocation(line: 406, column: 20, scope: !1427, inlinedAt: !1430)
!1432 = !DILocation(line: 407, column: 20, scope: !1427, inlinedAt: !1430)
!1433 = !DILocation(line: 407, column: 3, scope: !1427, inlinedAt: !1430)
!1434 = !DILocation(line: 408, column: 17, scope: !1427, inlinedAt: !1430)
!1435 = !DILocation(line: 409, column: 6, scope: !1427, inlinedAt: !1430)
!1436 = !DILocation(line: 409, column: 15, scope: !1427, inlinedAt: !1430)
!1437 = !DILocation(line: 412, column: 3, scope: !1427, inlinedAt: !1430)
!1438 = !DILocation(line: 416, column: 3, scope: !1427, inlinedAt: !1430)
!1439 = !DILocation(line: 417, column: 1, scope: !1427, inlinedAt: !1430)
!1440 = !DILocation(line: 583, column: 3, scope: !1171)
!1441 = !DILocation(line: 586, column: 3, scope: !1171)
!1442 = !DILocation(line: 586, column: 12, scope: !1171)
!1443 = !DILocation(line: 587, column: 27, scope: !1171)
!1444 = !DILocalVariable(name: "sigterm", arg: 1, scope: !1445, file: !2, line: 463, type: !105)
!1445 = distinct !DISubprogram(name: "block_cleanup_and_chld", scope: !2, file: !2, line: 463, type: !1446, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1449)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{null, !105, !1448}
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1449 = !{!1444, !1450, !1451, !1452, !1454}
!1450 = !DILocalVariable(name: "old_set", arg: 2, scope: !1445, file: !2, line: 463, type: !1448)
!1451 = !DILocalVariable(name: "block_set", scope: !1445, file: !2, line: 465, type: !1181)
!1452 = !DILocalVariable(name: "i", scope: !1453, file: !2, line: 468, type: !105)
!1453 = distinct !DILexicalBlock(scope: !1445, file: !2, line: 468, column: 3)
!1454 = !DILocalVariable(name: "s", scope: !1455, file: !2, line: 472, type: !105)
!1455 = distinct !DILexicalBlock(scope: !1445, file: !2, line: 472, column: 3)
!1456 = !DILocation(line: 0, scope: !1445, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 587, column: 3, scope: !1171)
!1458 = !DILocation(line: 465, column: 3, scope: !1445, inlinedAt: !1457)
!1459 = !DILocation(line: 465, column: 12, scope: !1445, inlinedAt: !1457)
!1460 = !DILocation(line: 466, column: 3, scope: !1445, inlinedAt: !1457)
!1461 = !DILocation(line: 0, scope: !1453, inlinedAt: !1457)
!1462 = !DILocation(line: 468, column: 3, scope: !1453, inlinedAt: !1457)
!1463 = !DILocation(line: 472, column: 16, scope: !1455, inlinedAt: !1457)
!1464 = !DILocation(line: 0, scope: !1455, inlinedAt: !1457)
!1465 = !DILocation(line: 472, column: 31, scope: !1466, inlinedAt: !1457)
!1466 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 472, column: 3)
!1467 = !DILocation(line: 472, column: 28, scope: !1466, inlinedAt: !1457)
!1468 = !DILocation(line: 472, column: 3, scope: !1455, inlinedAt: !1457)
!1469 = !DILocation(line: 469, column: 29, scope: !1470, inlinedAt: !1457)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 469, column: 9)
!1471 = distinct !DILexicalBlock(scope: !1453, file: !2, line: 468, column: 3)
!1472 = !DILocation(line: 0, scope: !1382, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 469, column: 9, scope: !1470, inlinedAt: !1457)
!1474 = !DILocation(line: 424, column: 11, scope: !1392, inlinedAt: !1473)
!1475 = !DILocation(line: 424, column: 22, scope: !1392, inlinedAt: !1473)
!1476 = !DILocation(line: 430, column: 3, scope: !1382, inlinedAt: !1473)
!1477 = !DILocation(line: 430, column: 20, scope: !1382, inlinedAt: !1473)
!1478 = !DILocation(line: 431, column: 3, scope: !1382, inlinedAt: !1473)
!1479 = !DILocation(line: 432, column: 21, scope: !1382, inlinedAt: !1473)
!1480 = !DILocation(line: 432, column: 32, scope: !1382, inlinedAt: !1473)
!1481 = !DILocation(line: 434, column: 1, scope: !1382, inlinedAt: !1473)
!1482 = !DILocation(line: 469, column: 9, scope: !1471, inlinedAt: !1457)
!1483 = !DILocation(line: 470, column: 7, scope: !1470, inlinedAt: !1457)
!1484 = !DILocation(line: 468, column: 44, scope: !1471, inlinedAt: !1457)
!1485 = !DILocation(line: 468, column: 21, scope: !1471, inlinedAt: !1457)
!1486 = distinct !{!1486, !1462, !1487, !1069}
!1487 = !DILocation(line: 470, column: 41, scope: !1453, inlinedAt: !1457)
!1488 = !DILocation(line: 476, column: 3, scope: !1445, inlinedAt: !1457)
!1489 = !DILocation(line: 478, column: 3, scope: !1445, inlinedAt: !1457)
!1490 = !DILocation(line: 480, column: 7, scope: !1491, inlinedAt: !1457)
!1491 = distinct !DILexicalBlock(scope: !1445, file: !2, line: 480, column: 7)
!1492 = !DILocation(line: 480, column: 52, scope: !1491, inlinedAt: !1457)
!1493 = !DILocation(line: 480, column: 7, scope: !1445, inlinedAt: !1457)
!1494 = !DILocation(line: 0, scope: !1382, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 473, column: 9, scope: !1496, inlinedAt: !1457)
!1496 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 473, column: 9)
!1497 = !DILocation(line: 424, column: 11, scope: !1392, inlinedAt: !1495)
!1498 = !DILocation(line: 424, column: 22, scope: !1392, inlinedAt: !1495)
!1499 = !DILocation(line: 430, column: 3, scope: !1382, inlinedAt: !1495)
!1500 = !DILocation(line: 430, column: 20, scope: !1382, inlinedAt: !1495)
!1501 = !DILocation(line: 431, column: 3, scope: !1382, inlinedAt: !1495)
!1502 = !DILocation(line: 432, column: 21, scope: !1382, inlinedAt: !1495)
!1503 = !DILocation(line: 432, column: 32, scope: !1382, inlinedAt: !1495)
!1504 = !DILocation(line: 434, column: 1, scope: !1382, inlinedAt: !1495)
!1505 = !DILocation(line: 473, column: 9, scope: !1466, inlinedAt: !1457)
!1506 = !DILocation(line: 474, column: 7, scope: !1496, inlinedAt: !1457)
!1507 = !DILocation(line: 472, column: 42, scope: !1466, inlinedAt: !1457)
!1508 = distinct !{!1508, !1468, !1509, !1069}
!1509 = !DILocation(line: 474, column: 31, scope: !1455, inlinedAt: !1457)
!1510 = !DILocation(line: 481, column: 5, scope: !1491, inlinedAt: !1457)
!1511 = !DILocation(line: 482, column: 1, scope: !1445, inlinedAt: !1457)
!1512 = !DILocation(line: 593, column: 23, scope: !1171)
!1513 = !DILocation(line: 600, column: 19, scope: !1171)
!1514 = !DILocation(line: 600, column: 17, scope: !1171)
!1515 = !DILocation(line: 601, column: 7, scope: !1171)
!1516 = !DILocation(line: 603, column: 7, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 602, column: 5)
!1518 = !DILocation(line: 604, column: 7, scope: !1517)
!1519 = !DILocation(line: 610, column: 32, scope: !1191)
!1520 = !DILocation(line: 610, column: 7, scope: !1191)
!1521 = !DILocation(line: 615, column: 11, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 615, column: 11)
!1523 = !DILocation(line: 615, column: 22, scope: !1522)
!1524 = !DILocation(line: 615, column: 11, scope: !1191)
!1525 = !DILocation(line: 619, column: 11, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 619, column: 11)
!1527 = !DILocation(line: 619, column: 54, scope: !1526)
!1528 = !DILocation(line: 619, column: 11, scope: !1191)
!1529 = !DILocation(line: 621, column: 11, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1526, file: !2, line: 620, column: 9)
!1531 = !DILocation(line: 622, column: 11, scope: !1530)
!1532 = !DILocation(line: 626, column: 7, scope: !1191)
!1533 = !DILocation(line: 627, column: 7, scope: !1191)
!1534 = !DILocation(line: 629, column: 15, scope: !1191)
!1535 = !DILocation(line: 629, column: 7, scope: !1191)
!1536 = !DILocation(line: 632, column: 25, scope: !1191)
!1537 = !DILocation(line: 632, column: 31, scope: !1191)
!1538 = !DILocation(line: 0, scope: !1191)
!1539 = !DILocation(line: 633, column: 7, scope: !1191)
!1540 = !DILocation(line: 639, column: 7, scope: !1195)
!1541 = !DILocation(line: 641, column: 7, scope: !1195)
!1542 = !DILocation(line: 647, column: 38, scope: !1195)
!1543 = !DILocation(line: 0, scope: !1195)
!1544 = !DILocation(line: 647, column: 29, scope: !1195)
!1545 = !DILocation(line: 647, column: 72, scope: !1195)
!1546 = !DILocation(line: 647, column: 7, scope: !1195)
!1547 = !DILocation(line: 648, column: 9, scope: !1195)
!1548 = distinct !{!1548, !1546, !1549, !1069}
!1549 = !DILocation(line: 648, column: 30, scope: !1195)
!1550 = !DILocation(line: 650, column: 23, scope: !1202)
!1551 = !DILocation(line: 650, column: 11, scope: !1195)
!1552 = !DILocation(line: 653, column: 11, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 651, column: 9)
!1554 = !DILocation(line: 655, column: 9, scope: !1553)
!1555 = !DILocation(line: 658, column: 15, scope: !1200)
!1556 = !DILocation(line: 658, column: 15, scope: !1201)
!1557 = !DILocation(line: 659, column: 13, scope: !1200)
!1558 = !DILocation(line: 660, column: 20, scope: !1199)
!1559 = !DILocation(line: 660, column: 20, scope: !1200)
!1560 = !DILocation(line: 0, scope: !1198)
!1561 = !DILocation(line: 663, column: 19, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 663, column: 19)
!1563 = !DILocation(line: 663, column: 19, scope: !1198)
!1564 = !DILocation(line: 664, column: 17, scope: !1562)
!1565 = !DILocation(line: 665, column: 20, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 665, column: 19)
!1567 = !DILocation(line: 665, column: 30, scope: !1566)
!1568 = !DILocation(line: 490, column: 7, scope: !1569, inlinedAt: !1573)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !2, line: 490, column: 7)
!1570 = distinct !DISubprogram(name: "disable_core_dumps", scope: !2, file: !2, line: 487, type: !1571, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !959)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!190}
!1573 = distinct !DILocation(line: 665, column: 33, scope: !1566)
!1574 = !DILocation(line: 490, column: 34, scope: !1569, inlinedAt: !1573)
!1575 = !DILocation(line: 490, column: 7, scope: !1570, inlinedAt: !1573)
!1576 = !DILocation(line: 503, column: 3, scope: !1570, inlinedAt: !1573)
!1577 = !DILocation(line: 665, column: 19, scope: !1198)
!1578 = !DILocation(line: 668, column: 19, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1566, file: !2, line: 666, column: 17)
!1580 = !DILocation(line: 669, column: 19, scope: !1579)
!1581 = !DILocation(line: 670, column: 19, scope: !1579)
!1582 = !DILocation(line: 671, column: 17, scope: !1579)
!1583 = !DILocation(line: 675, column: 19, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 675, column: 19)
!1585 = !DILocation(line: 675, column: 29, scope: !1584)
!1586 = !DILocation(line: 676, column: 33, scope: !1584)
!1587 = !DILocation(line: 676, column: 17, scope: !1584)
!1588 = !DILocation(line: 677, column: 28, scope: !1198)
!1589 = !DILocation(line: 678, column: 13, scope: !1198)
!1590 = !DILocation(line: 682, column: 15, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 680, column: 13)
!1592 = !DILocation(line: 687, column: 11, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 687, column: 11)
!1594 = !DILocation(line: 687, column: 21, scope: !1593)
!1595 = !DILocation(line: 690, column: 5, scope: !1192)
!1596 = !DILocation(line: 0, scope: !1193)
!1597 = !DILocation(line: 691, column: 1, scope: !1171)
!1598 = !DISubprogram(name: "bindtextdomain", scope: !1004, file: !1004, line: 86, type: !1599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!125, !137, !137}
!1601 = !DISubprogram(name: "textdomain", scope: !1004, file: !1004, line: 82, type: !1149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1602 = !DISubprogram(name: "atexit", scope: !1147, file: !1147, line: 602, type: !1603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!105, !534}
!1605 = !DISubprogram(name: "getopt_long", scope: !447, file: !447, line: 66, type: !1606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!105, !105, !1608, !137, !1610, !452}
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!1611 = distinct !DISubprogram(name: "parse_duration", scope: !2, file: !2, line: 371, type: !1612, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1614)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!187, !137}
!1614 = !{!1615, !1616, !1617, !1618}
!1615 = !DILocalVariable(name: "str", arg: 1, scope: !1611, file: !2, line: 371, type: !137)
!1616 = !DILocalVariable(name: "ep", scope: !1611, file: !2, line: 373, type: !125)
!1617 = !DILocalVariable(name: "duration", scope: !1611, file: !2, line: 375, type: !187)
!1618 = !DILocalVariable(name: "s", scope: !1611, file: !2, line: 376, type: !187)
!1619 = !DILocation(line: 0, scope: !1611)
!1620 = !DILocation(line: 373, column: 3, scope: !1611)
!1621 = !DILocation(line: 374, column: 3, scope: !1611)
!1622 = !DILocation(line: 374, column: 9, scope: !1611)
!1623 = !DILocation(line: 375, column: 21, scope: !1611)
!1624 = !DILocation(line: 376, column: 41, scope: !1611)
!1625 = !DILocalVariable(name: "c", arg: 1, scope: !1626, file: !1627, line: 54, type: !187)
!1626 = distinct !DISubprogram(name: "dtimespec_bound", scope: !1627, file: !1627, line: 54, type: !1628, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1630)
!1627 = !DIFile(filename: "./lib/dtimespec-bound.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1c1d0447ed5234421679b9baaf454c86")
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!187, !187, !105}
!1630 = !{!1625, !1631, !1632}
!1631 = !DILocalVariable(name: "err", arg: 2, scope: !1626, file: !1627, line: 54, type: !105)
!1632 = !DILocalVariable(name: "phi", scope: !1626, file: !1627, line: 70, type: !187)
!1633 = !DILocation(line: 0, scope: !1626, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 376, column: 14, scope: !1611)
!1635 = !DILocation(line: 60, column: 11, scope: !1636, inlinedAt: !1634)
!1636 = distinct !DILexicalBlock(scope: !1626, file: !1627, line: 60, column: 7)
!1637 = !DILocation(line: 60, column: 21, scope: !1636, inlinedAt: !1634)
!1638 = !DILocation(line: 378, column: 7, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1611, file: !2, line: 378, column: 7)
!1640 = !DILocation(line: 378, column: 10, scope: !1639)
!1641 = !DILocation(line: 380, column: 7, scope: !1639)
!1642 = !DILocation(line: 382, column: 11, scope: !1639)
!1643 = !DILocation(line: 382, column: 15, scope: !1639)
!1644 = !DILocation(line: 382, column: 23, scope: !1639)
!1645 = !DILocation(line: 382, column: 18, scope: !1639)
!1646 = !DILocation(line: 384, column: 7, scope: !1639)
!1647 = !DILocalVariable(name: "x", arg: 1, scope: !1648, file: !2, line: 342, type: !1651)
!1648 = distinct !DISubprogram(name: "apply_time_suffix", scope: !2, file: !2, line: 342, type: !1649, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1652)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!190, !1651, !4}
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!1652 = !{!1647, !1653, !1654}
!1653 = !DILocalVariable(name: "suffix_char", arg: 2, scope: !1648, file: !2, line: 342, type: !4)
!1654 = !DILocalVariable(name: "multiplier", scope: !1648, file: !2, line: 344, type: !105)
!1655 = !DILocation(line: 0, scope: !1648, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 384, column: 11, scope: !1639)
!1657 = !DILocation(line: 346, column: 11, scope: !1648, inlinedAt: !1656)
!1658 = !DILocation(line: 346, column: 3, scope: !1648, inlinedAt: !1656)
!1659 = !DILocation(line: 354, column: 7, scope: !1660, inlinedAt: !1656)
!1660 = distinct !DILexicalBlock(scope: !1648, file: !2, line: 347, column: 5)
!1661 = !DILocation(line: 357, column: 7, scope: !1660, inlinedAt: !1656)
!1662 = !DILocation(line: 360, column: 7, scope: !1660, inlinedAt: !1656)
!1663 = !DILocation(line: 386, column: 7, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1639, file: !2, line: 385, column: 5)
!1665 = !DILocation(line: 387, column: 7, scope: !1664)
!1666 = !DILocation(line: 365, column: 28, scope: !1648, inlinedAt: !1656)
!1667 = !DILocation(line: 0, scope: !1626, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 365, column: 8, scope: !1648, inlinedAt: !1656)
!1669 = !DILocation(line: 60, column: 21, scope: !1636, inlinedAt: !1668)
!1670 = !DILocation(line: 391, column: 1, scope: !1611)
!1671 = !DILocation(line: 390, column: 3, scope: !1611)
!1672 = !DISubprogram(name: "setpgid", scope: !1673, file: !1673, line: 668, type: !1674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1673 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!105, !183, !183}
!1676 = !DISubprogram(name: "sigemptyset", scope: !128, file: !128, line: 199, type: !1677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!105, !1448}
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
!1696 = !DILocation(line: 0, scope: !1210, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 214, column: 7, scope: !1695)
!1698 = !DILocation(line: 105, column: 18, scope: !1215, inlinedAt: !1697)
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
!1771 = !DISubprogram(name: "__libc_current_sigrtmin", scope: !128, file: !128, line: 383, type: !1772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!105}
!1774 = !DISubprogram(name: "__libc_current_sigrtmax", scope: !128, file: !128, line: 385, type: !1772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1775 = !DISubprogram(name: "sigaction", scope: !128, file: !128, line: 243, type: !1776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!105, !105, !1778, !1781}
!1778 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1779)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1267)
!1781 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1782)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1783 = !DISubprogram(name: "signal", scope: !128, file: !128, line: 88, type: !1784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
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
!1794 = !DILocalVariable(name: "unblock_set", scope: !1791, file: !2, line: 396, type: !1181)
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
!1806 = !DISubprogram(name: "sigaddset", scope: !128, file: !128, line: 205, type: !1807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!105, !1448, !105}
!1809 = !DISubprogram(name: "sigprocmask", scope: !128, file: !128, line: 232, type: !1810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!105, !105, !1812, !1815}
!1812 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1813)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1181)
!1815 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1448)
!1816 = !DISubprogram(name: "__errno_location", scope: !1817, file: !1817, line: 37, type: !1818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1817 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!452}
!1820 = !DISubprogram(name: "getpid", scope: !1673, file: !1673, line: 650, type: !1821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!183}
!1823 = !DISubprogram(name: "fork", scope: !1673, file: !1673, line: 778, type: !1821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1824 = !DISubprogram(name: "prctl", scope: !1825, file: !1825, line: 42, type: !1826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1825 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/prctl.h", directory: "", checksumkind: CSK_MD5, checksum: "03df3307493f4e984a818e48f1f1ebd0")
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!105, !105, null}
!1828 = !DISubprogram(name: "getppid", scope: !1673, file: !1673, line: 653, type: !1821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1829 = !DISubprogram(name: "execvp", scope: !1673, file: !1673, line: 599, type: !1830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!105, !137, !1608}
!1832 = distinct !DISubprogram(name: "settimeout", scope: !2, file: !2, line: 115, type: !1833, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1835)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !187, !190}
!1835 = !{!1836, !1837, !1838, !1845, !1851, !1855, !1856}
!1836 = !DILocalVariable(name: "duration", arg: 1, scope: !1832, file: !2, line: 115, type: !187)
!1837 = !DILocalVariable(name: "warn", arg: 2, scope: !1832, file: !2, line: 115, type: !190)
!1838 = !DILocalVariable(name: "ts", scope: !1832, file: !2, line: 121, type: !1839)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1840, line: 11, size: 128, elements: !1841)
!1840 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1841 = !{!1842, !1843}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1839, file: !1840, line: 16, baseType: !869, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1839, file: !1840, line: 21, baseType: !1844, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !184, line: 197, baseType: !253)
!1845 = !DILocalVariable(name: "its", scope: !1832, file: !2, line: 122, type: !1846)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "itimerspec", file: !1847, line: 8, size: 256, elements: !1848)
!1847 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_itimerspec.h", directory: "", checksumkind: CSK_MD5, checksum: "dfcd7ec63e6a27775d5c6dbba8655c7d")
!1848 = !{!1849, !1850}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "it_interval", scope: !1846, file: !1847, line: 10, baseType: !1839, size: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "it_value", scope: !1846, file: !1847, line: 11, baseType: !1839, size: 128, offset: 128)
!1851 = !DILocalVariable(name: "timerid", scope: !1832, file: !2, line: 123, type: !1852)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "timer_t", file: !1853, line: 7, baseType: !1854)
!1853 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/timer_t.h", directory: "", checksumkind: CSK_MD5, checksum: "b257b0db40a7b7cec2ff2d7c51baed44")
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
!1868 = !{!"long", !952, i64 0}
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
!1904 = !DISubprogram(name: "waitpid", scope: !1905, file: !1905, line: 111, type: !1906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1905 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/wait.h", directory: "", checksumkind: CSK_MD5, checksum: "f653fe63e16922d44e1c6e15caa2acb6")
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!183, !183, !452, !105}
!1908 = !DISubprogram(name: "sigsuspend", scope: !128, file: !128, line: 240, type: !1909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!105, !1813}
!1911 = !DISubprogram(name: "raise", scope: !128, file: !128, line: 123, type: !1912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!105, !105}
!1914 = !DISubprogram(name: "timer_create", scope: !1915, file: !1915, line: 331, type: !1916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1915 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!105, !1918, !1921, !1953}
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !1919, line: 7, baseType: !1920)
!1919 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/clockid_t.h", directory: "", checksumkind: CSK_MD5, checksum: "099a80153c2ad48bc7f5f4a188cb6d24")
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clockid_t", file: !184, line: 169, baseType: !105)
!1921 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1922)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigevent", file: !1924, line: 22, size: 512, elements: !1925)
!1924 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/sigevent_t.h", directory: "", checksumkind: CSK_MD5, checksum: "816c6e661f14523d03101a714ce8e208")
!1925 = !{!1926, !1927, !1928, !1929}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_value", scope: !1923, file: !1924, line: 24, baseType: !1304, size: 64)
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
!1941 = !{null, !1304}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_attribute", scope: !1936, file: !1924, line: 39, baseType: !1943, size: 64, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !1945, line: 62, baseType: !1946)
!1945 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !1945, line: 56, size: 448, elements: !1947)
!1947 = !{!1948, !1952}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1946, file: !1945, line: 58, baseType: !1949, size: 448)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1950)
!1950 = !{!1951}
!1951 = !DISubrange(count: 56)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1946, file: !1945, line: 59, baseType: !253, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1954)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1955 = !DISubprogram(name: "timer_settime", scope: !1915, file: !1915, line: 340, type: !1956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!105, !1852, !105, !1958, !1961}
!1958 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1959)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1846)
!1961 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1962)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1963 = !DISubprogram(name: "timer_delete", scope: !1915, file: !1915, line: 336, type: !1964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!105, !1852}
!1966 = !DISubprogram(name: "alarm", scope: !1673, file: !1673, line: 452, type: !1967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!98, !98}
!1969 = !DISubprogram(name: "__builtin___snprintf_chk", scope: !2, file: !2, line: 236, type: !1970, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!105, !125, !136, !105, !136, !137, null}
!1972 = !DISubprogram(name: "kill", scope: !128, file: !128, line: 112, type: !1973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!105, !183, !105}
!1975 = !DISubprogram(name: "_exit", scope: !1673, file: !1673, line: 624, type: !130, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !959)
!1976 = distinct !DISubprogram(name: "operand2sig", scope: !460, file: !460, line: 36, type: !1977, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !855, retainedNodes: !1979)
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
!1995 = distinct !DISubprogram(name: "c_isdigit", scope: !1996, file: !1996, line: 233, type: !1997, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !855, retainedNodes: !1999)
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
!2039 = distinct !{!2039, !2027, !2040, !1069}
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
!2064 = !DISubprogram(name: "strtol", scope: !1147, file: !1147, line: 177, type: !2065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!253, !1012, !2067, !105}
!2067 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1174)
!2068 = !DISubprogram(name: "free", scope: !1147, file: !1147, line: 555, type: !2069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{null, !126}
!2071 = distinct !DISubprogram(name: "cl_strtod", scope: !858, file: !858, line: 59, type: !2072, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !2074)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!187, !137, !2067}
!2074 = !{!2075, !2076, !2077, !2078, !2079, !2082, !2083}
!2075 = !DILocalVariable(name: "nptr", arg: 1, scope: !2071, file: !858, line: 59, type: !137)
!2076 = !DILocalVariable(name: "endptr", arg: 2, scope: !2071, file: !858, line: 59, type: !2067)
!2077 = !DILocalVariable(name: "end", scope: !2071, file: !858, line: 61, type: !125)
!2078 = !DILocalVariable(name: "d", scope: !2071, file: !858, line: 62, type: !187)
!2079 = !DILocalVariable(name: "strtod_errno", scope: !2080, file: !858, line: 65, type: !105)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !858, line: 64, column: 5)
!2081 = distinct !DILexicalBlock(scope: !2071, file: !858, line: 63, column: 7)
!2082 = !DILocalVariable(name: "c_end", scope: !2080, file: !858, line: 66, type: !125)
!2083 = !DILocalVariable(name: "c", scope: !2080, file: !858, line: 67, type: !187)
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
!2095 = distinct !DILexicalBlock(scope: !2080, file: !858, line: 68, column: 11)
!2096 = !DILocation(line: 68, column: 15, scope: !2095)
!2097 = !DILocation(line: 68, column: 11, scope: !2080)
!2098 = !DILocation(line: 71, column: 15, scope: !2095)
!2099 = !DILocation(line: 72, column: 5, scope: !2081)
!2100 = !DILocation(line: 72, column: 5, scope: !2080)
!2101 = !DILocation(line: 73, column: 7, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2071, file: !858, line: 73, column: 7)
!2103 = !DILocation(line: 73, column: 7, scope: !2071)
!2104 = !DILocation(line: 74, column: 13, scope: !2102)
!2105 = !DILocation(line: 74, column: 5, scope: !2102)
!2106 = !DILocation(line: 76, column: 1, scope: !2071)
!2107 = !DILocation(line: 75, column: 3, scope: !2071)
!2108 = !DISubprogram(name: "strtod", scope: !1147, file: !1147, line: 118, type: !2109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!187, !1012, !2067}
!2111 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !476, file: !476, line: 50, type: !973, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2112)
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
!2125 = !{!"_Bool", !952, i64 0}
!2126 = !DILocation(line: 90, column: 1, scope: !2117)
!2127 = distinct !DISubprogram(name: "close_stdout", scope: !476, file: !476, line: 116, type: !535, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2128)
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
!2160 = distinct !DISubprogram(name: "dtotimespec", scope: !860, file: !860, line: 30, type: !2161, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !2167)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!2163, !187}
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1840, line: 11, size: 128, elements: !2164)
!2164 = !{!2165, !2166}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2163, file: !1840, line: 16, baseType: !869, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2163, file: !1840, line: 21, baseType: !1844, size: 64, offset: 64)
!2167 = !{!2168, !2169, !2173, !2174}
!2168 = !DILocalVariable(name: "sec", arg: 1, scope: !2160, file: !860, line: 30, type: !187)
!2169 = !DILocalVariable(name: "s", scope: !2170, file: !860, line: 38, type: !867)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !860, line: 37, column: 5)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !860, line: 34, column: 12)
!2172 = distinct !DILexicalBlock(scope: !2160, file: !860, line: 32, column: 7)
!2173 = !DILocalVariable(name: "frac", scope: !2170, file: !860, line: 39, type: !187)
!2174 = !DILocalVariable(name: "ns", scope: !2170, file: !860, line: 40, type: !253)
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
!2191 = !DILocation(line: 43, column: 10, scope: !2170)
!2192 = !DILocation(line: 45, column: 14, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2170, file: !860, line: 45, column: 11)
!2194 = !DILocation(line: 45, column: 11, scope: !2170)
!2195 = !DILocalVariable(name: "s", arg: 1, scope: !2196, file: !863, line: 56, type: !867)
!2196 = distinct !DISubprogram(name: "make_timespec", scope: !863, file: !863, line: 56, type: !2197, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !2199)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!2163, !867, !253}
!2199 = !{!2195, !2200}
!2200 = !DILocalVariable(name: "ns", arg: 2, scope: !2196, file: !863, line: 56, type: !253)
!2201 = !DILocation(line: 0, scope: !2196, inlinedAt: !2202)
!2202 = distinct !DILocation(line: 51, column: 14, scope: !2170)
!2203 = !DILocation(line: 58, column: 3, scope: !2196, inlinedAt: !2202)
!2204 = !DILocation(line: 53, column: 1, scope: !2160)
!2205 = distinct !DISubprogram(name: "verror", scope: !491, file: !491, line: 251, type: !2206, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2208)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{null, !105, !105, !137, !501}
!2208 = !{!2209, !2210, !2211, !2212}
!2209 = !DILocalVariable(name: "status", arg: 1, scope: !2205, file: !491, line: 251, type: !105)
!2210 = !DILocalVariable(name: "errnum", arg: 2, scope: !2205, file: !491, line: 251, type: !105)
!2211 = !DILocalVariable(name: "message", arg: 3, scope: !2205, file: !491, line: 251, type: !137)
!2212 = !DILocalVariable(name: "args", arg: 4, scope: !2205, file: !491, line: 251, type: !501)
!2213 = !DILocation(line: 0, scope: !2205)
!2214 = !DILocation(line: 261, column: 3, scope: !2205)
!2215 = !DILocation(line: 265, column: 7, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2205, file: !491, line: 265, column: 7)
!2217 = !DILocation(line: 265, column: 7, scope: !2205)
!2218 = !DILocation(line: 266, column: 5, scope: !2216)
!2219 = !DILocation(line: 272, column: 7, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2216, file: !491, line: 268, column: 5)
!2221 = !DILocation(line: 276, column: 3, scope: !2205)
!2222 = !DILocation(line: 282, column: 1, scope: !2205)
!2223 = distinct !DISubprogram(name: "flush_stdout", scope: !491, file: !491, line: 163, type: !535, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2224)
!2224 = !{!2225}
!2225 = !DILocalVariable(name: "stdout_fd", scope: !2223, file: !491, line: 166, type: !105)
!2226 = !DILocation(line: 0, scope: !2223)
!2227 = !DILocalVariable(name: "fd", arg: 1, scope: !2228, file: !491, line: 145, type: !105)
!2228 = distinct !DISubprogram(name: "is_open", scope: !491, file: !491, line: 145, type: !1912, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2229)
!2229 = !{!2227}
!2230 = !DILocation(line: 0, scope: !2228, inlinedAt: !2231)
!2231 = distinct !DILocation(line: 182, column: 25, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2223, file: !491, line: 182, column: 7)
!2233 = !DILocation(line: 157, column: 15, scope: !2228, inlinedAt: !2231)
!2234 = !DILocation(line: 157, column: 12, scope: !2228, inlinedAt: !2231)
!2235 = !DILocation(line: 182, column: 7, scope: !2223)
!2236 = !DILocation(line: 184, column: 5, scope: !2232)
!2237 = !DILocation(line: 185, column: 1, scope: !2223)
!2238 = distinct !DISubprogram(name: "error_tail", scope: !491, file: !491, line: 219, type: !2206, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2239)
!2239 = !{!2240, !2241, !2242, !2243}
!2240 = !DILocalVariable(name: "status", arg: 1, scope: !2238, file: !491, line: 219, type: !105)
!2241 = !DILocalVariable(name: "errnum", arg: 2, scope: !2238, file: !491, line: 219, type: !105)
!2242 = !DILocalVariable(name: "message", arg: 3, scope: !2238, file: !491, line: 219, type: !137)
!2243 = !DILocalVariable(name: "args", arg: 4, scope: !2238, file: !491, line: 219, type: !501)
!2244 = !DILocation(line: 0, scope: !2238)
!2245 = !DILocation(line: 229, column: 13, scope: !2238)
!2246 = !DILocalVariable(name: "__stream", arg: 1, scope: !2247, file: !1008, line: 132, type: !2250)
!2247 = distinct !DISubprogram(name: "vfprintf", scope: !1008, file: !1008, line: 132, type: !2248, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2285)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!105, !2250, !1012, !501}
!2250 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2251)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !2253)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !2254)
!2254 = !{!2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2253, file: !230, line: 51, baseType: !105, size: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2253, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2253, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2253, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2253, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2253, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2253, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2253, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2253, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2253, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2253, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2253, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2253, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2253, file: !230, line: 70, baseType: !2269, size: 64, offset: 832)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2253, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2253, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2253, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2253, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2253, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2253, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2253, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2253, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2253, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2253, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2253, file: !230, line: 93, baseType: !2269, size: 64, offset: 1344)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2253, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2253, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2253, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2253, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!2285 = !{!2246, !2286, !2287}
!2286 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2247, file: !1008, line: 133, type: !1012)
!2287 = !DILocalVariable(name: "__ap", arg: 3, scope: !2247, file: !1008, line: 133, type: !501)
!2288 = !DILocation(line: 0, scope: !2247, inlinedAt: !2289)
!2289 = distinct !DILocation(line: 229, column: 3, scope: !2238)
!2290 = !DILocation(line: 135, column: 10, scope: !2247, inlinedAt: !2289)
!2291 = !DILocation(line: 232, column: 3, scope: !2238)
!2292 = !DILocation(line: 233, column: 7, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2238, file: !491, line: 233, column: 7)
!2294 = !DILocation(line: 233, column: 7, scope: !2238)
!2295 = !DILocalVariable(name: "errnum", arg: 1, scope: !2296, file: !491, line: 188, type: !105)
!2296 = distinct !DISubprogram(name: "print_errno_message", scope: !491, file: !491, line: 188, type: !130, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2297)
!2297 = !{!2295, !2298, !2299}
!2298 = !DILocalVariable(name: "s", scope: !2296, file: !491, line: 190, type: !137)
!2299 = !DILocalVariable(name: "errbuf", scope: !2296, file: !491, line: 193, type: !2300)
!2300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2301)
!2301 = !{!2302}
!2302 = !DISubrange(count: 1024)
!2303 = !DILocation(line: 0, scope: !2296, inlinedAt: !2304)
!2304 = distinct !DILocation(line: 234, column: 5, scope: !2293)
!2305 = !DILocation(line: 193, column: 3, scope: !2296, inlinedAt: !2304)
!2306 = !DILocation(line: 193, column: 8, scope: !2296, inlinedAt: !2304)
!2307 = !DILocation(line: 195, column: 7, scope: !2296, inlinedAt: !2304)
!2308 = !DILocation(line: 207, column: 9, scope: !2309, inlinedAt: !2304)
!2309 = distinct !DILexicalBlock(scope: !2296, file: !491, line: 207, column: 7)
!2310 = !DILocation(line: 207, column: 7, scope: !2296, inlinedAt: !2304)
!2311 = !DILocation(line: 208, column: 9, scope: !2309, inlinedAt: !2304)
!2312 = !DILocation(line: 208, column: 5, scope: !2309, inlinedAt: !2304)
!2313 = !DILocation(line: 214, column: 3, scope: !2296, inlinedAt: !2304)
!2314 = !DILocation(line: 216, column: 1, scope: !2296, inlinedAt: !2304)
!2315 = !DILocation(line: 234, column: 5, scope: !2293)
!2316 = !DILocation(line: 238, column: 3, scope: !2238)
!2317 = !DILocalVariable(name: "__c", arg: 1, scope: !2318, file: !2319, line: 101, type: !105)
!2318 = distinct !DISubprogram(name: "putc_unlocked", scope: !2319, file: !2319, line: 101, type: !2320, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2322)
!2319 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!105, !105, !2251}
!2322 = !{!2317, !2323}
!2323 = !DILocalVariable(name: "__stream", arg: 2, scope: !2318, file: !2319, line: 101, type: !2251)
!2324 = !DILocation(line: 0, scope: !2318, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 238, column: 3, scope: !2238)
!2326 = !DILocation(line: 103, column: 10, scope: !2318, inlinedAt: !2325)
!2327 = !{!2328, !951, i64 40}
!2328 = !{!"_IO_FILE", !1023, i64 0, !951, i64 8, !951, i64 16, !951, i64 24, !951, i64 32, !951, i64 40, !951, i64 48, !951, i64 56, !951, i64 64, !951, i64 72, !951, i64 80, !951, i64 88, !951, i64 96, !951, i64 104, !1023, i64 112, !1023, i64 116, !1868, i64 120, !1064, i64 128, !952, i64 130, !952, i64 131, !951, i64 136, !1868, i64 144, !951, i64 152, !951, i64 160, !951, i64 168, !951, i64 176, !1868, i64 184, !1023, i64 192, !952, i64 196}
!2329 = !{!2328, !951, i64 48}
!2330 = !{!"branch_weights", i32 2000, i32 1}
!2331 = !DILocation(line: 240, column: 3, scope: !2238)
!2332 = !DILocation(line: 241, column: 7, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2238, file: !491, line: 241, column: 7)
!2334 = !DILocation(line: 241, column: 7, scope: !2238)
!2335 = !DILocation(line: 242, column: 5, scope: !2333)
!2336 = !DILocation(line: 243, column: 1, scope: !2238)
!2337 = !DISubprogram(name: "__vfprintf_chk", scope: !1008, file: !1008, line: 96, type: !2338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!105, !2250, !105, !1012, !501}
!2340 = !DISubprogram(name: "strerror_r", scope: !1143, file: !1143, line: 444, type: !2341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!125, !105, !125, !134}
!2343 = !DISubprogram(name: "__overflow", scope: !1017, file: !1017, line: 886, type: !2344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!105, !2251, !105}
!2346 = !DISubprogram(name: "fflush_unlocked", scope: !1017, file: !1017, line: 239, type: !2347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!105, !2251}
!2349 = !DISubprogram(name: "fcntl", scope: !2350, file: !2350, line: 149, type: !2351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!2350 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!105, !105, !105, null}
!2353 = distinct !DISubprogram(name: "error", scope: !491, file: !491, line: 285, type: !2354, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2356)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{null, !105, !105, !137, null}
!2356 = !{!2357, !2358, !2359, !2360}
!2357 = !DILocalVariable(name: "status", arg: 1, scope: !2353, file: !491, line: 285, type: !105)
!2358 = !DILocalVariable(name: "errnum", arg: 2, scope: !2353, file: !491, line: 285, type: !105)
!2359 = !DILocalVariable(name: "message", arg: 3, scope: !2353, file: !491, line: 285, type: !137)
!2360 = !DILocalVariable(name: "ap", scope: !2353, file: !491, line: 287, type: !2361)
!2361 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1017, line: 52, baseType: !2362)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2363, line: 14, baseType: !2364)
!2363 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !505, baseType: !2365)
!2365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 192, elements: !75)
!2366 = !DILocation(line: 0, scope: !2353)
!2367 = !DILocation(line: 287, column: 3, scope: !2353)
!2368 = !DILocation(line: 287, column: 11, scope: !2353)
!2369 = !DILocation(line: 288, column: 3, scope: !2353)
!2370 = !DILocation(line: 289, column: 3, scope: !2353)
!2371 = !DILocation(line: 290, column: 3, scope: !2353)
!2372 = !DILocation(line: 291, column: 1, scope: !2353)
!2373 = !DILocation(line: 0, scope: !498)
!2374 = !DILocation(line: 302, column: 7, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !498, file: !491, line: 302, column: 7)
!2376 = !DILocation(line: 302, column: 7, scope: !498)
!2377 = !DILocation(line: 307, column: 11, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !491, line: 307, column: 11)
!2379 = distinct !DILexicalBlock(scope: !2375, file: !491, line: 303, column: 5)
!2380 = !DILocation(line: 307, column: 27, scope: !2378)
!2381 = !DILocation(line: 308, column: 11, scope: !2378)
!2382 = !DILocation(line: 308, column: 28, scope: !2378)
!2383 = !DILocation(line: 308, column: 25, scope: !2378)
!2384 = !DILocation(line: 309, column: 15, scope: !2378)
!2385 = !DILocation(line: 309, column: 33, scope: !2378)
!2386 = !DILocation(line: 310, column: 19, scope: !2378)
!2387 = !DILocation(line: 311, column: 22, scope: !2378)
!2388 = !DILocation(line: 311, column: 56, scope: !2378)
!2389 = !DILocation(line: 307, column: 11, scope: !2379)
!2390 = !DILocation(line: 316, column: 21, scope: !2379)
!2391 = !DILocation(line: 317, column: 23, scope: !2379)
!2392 = !DILocation(line: 318, column: 5, scope: !2379)
!2393 = !DILocation(line: 327, column: 3, scope: !498)
!2394 = !DILocation(line: 331, column: 7, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !498, file: !491, line: 331, column: 7)
!2396 = !DILocation(line: 331, column: 7, scope: !498)
!2397 = !DILocation(line: 332, column: 5, scope: !2395)
!2398 = !DILocation(line: 338, column: 7, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2395, file: !491, line: 334, column: 5)
!2400 = !DILocation(line: 346, column: 3, scope: !498)
!2401 = !DILocation(line: 350, column: 3, scope: !498)
!2402 = !DILocation(line: 356, column: 1, scope: !498)
!2403 = distinct !DISubprogram(name: "error_at_line", scope: !491, file: !491, line: 359, type: !2404, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2406)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null, !105, !105, !137, !98, !137, null}
!2406 = !{!2407, !2408, !2409, !2410, !2411, !2412}
!2407 = !DILocalVariable(name: "status", arg: 1, scope: !2403, file: !491, line: 359, type: !105)
!2408 = !DILocalVariable(name: "errnum", arg: 2, scope: !2403, file: !491, line: 359, type: !105)
!2409 = !DILocalVariable(name: "file_name", arg: 3, scope: !2403, file: !491, line: 359, type: !137)
!2410 = !DILocalVariable(name: "line_number", arg: 4, scope: !2403, file: !491, line: 360, type: !98)
!2411 = !DILocalVariable(name: "message", arg: 5, scope: !2403, file: !491, line: 360, type: !137)
!2412 = !DILocalVariable(name: "ap", scope: !2403, file: !491, line: 362, type: !2361)
!2413 = !DILocation(line: 0, scope: !2403)
!2414 = !DILocation(line: 362, column: 3, scope: !2403)
!2415 = !DILocation(line: 362, column: 11, scope: !2403)
!2416 = !DILocation(line: 363, column: 3, scope: !2403)
!2417 = !DILocation(line: 364, column: 3, scope: !2403)
!2418 = !DILocation(line: 366, column: 3, scope: !2403)
!2419 = !DILocation(line: 367, column: 1, scope: !2403)
!2420 = distinct !DISubprogram(name: "getprogname", scope: !871, file: !871, line: 54, type: !2421, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !959)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!137}
!2423 = !DILocation(line: 58, column: 10, scope: !2420)
!2424 = !DILocation(line: 58, column: 3, scope: !2420)
!2425 = distinct !DISubprogram(name: "set_program_name", scope: !540, file: !540, line: 37, type: !973, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2426)
!2426 = !{!2427, !2428, !2429}
!2427 = !DILocalVariable(name: "argv0", arg: 1, scope: !2425, file: !540, line: 37, type: !137)
!2428 = !DILocalVariable(name: "slash", scope: !2425, file: !540, line: 44, type: !137)
!2429 = !DILocalVariable(name: "base", scope: !2425, file: !540, line: 45, type: !137)
!2430 = !DILocation(line: 0, scope: !2425)
!2431 = !DILocation(line: 44, column: 23, scope: !2425)
!2432 = !DILocation(line: 45, column: 22, scope: !2425)
!2433 = !DILocation(line: 46, column: 17, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2425, file: !540, line: 46, column: 7)
!2435 = !DILocation(line: 46, column: 9, scope: !2434)
!2436 = !DILocation(line: 46, column: 25, scope: !2434)
!2437 = !DILocation(line: 46, column: 40, scope: !2434)
!2438 = !DILocalVariable(name: "__s1", arg: 1, scope: !2439, file: !1035, line: 974, type: !1169)
!2439 = distinct !DISubprogram(name: "memeq", scope: !1035, file: !1035, line: 974, type: !2440, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2442)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!190, !1169, !1169, !134}
!2442 = !{!2438, !2443, !2444}
!2443 = !DILocalVariable(name: "__s2", arg: 2, scope: !2439, file: !1035, line: 974, type: !1169)
!2444 = !DILocalVariable(name: "__n", arg: 3, scope: !2439, file: !1035, line: 974, type: !134)
!2445 = !DILocation(line: 0, scope: !2439, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 46, column: 28, scope: !2434)
!2447 = !DILocation(line: 976, column: 11, scope: !2439, inlinedAt: !2446)
!2448 = !DILocation(line: 976, column: 10, scope: !2439, inlinedAt: !2446)
!2449 = !DILocation(line: 46, column: 7, scope: !2425)
!2450 = !DILocation(line: 49, column: 11, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !540, line: 49, column: 11)
!2452 = distinct !DILexicalBlock(scope: !2434, file: !540, line: 47, column: 5)
!2453 = !DILocation(line: 49, column: 36, scope: !2451)
!2454 = !DILocation(line: 49, column: 11, scope: !2452)
!2455 = !DILocation(line: 65, column: 16, scope: !2425)
!2456 = !DILocation(line: 71, column: 27, scope: !2425)
!2457 = !DILocation(line: 74, column: 33, scope: !2425)
!2458 = !DILocation(line: 76, column: 1, scope: !2425)
!2459 = !DISubprogram(name: "strrchr", scope: !1143, file: !1143, line: 273, type: !1158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!2460 = !DILocation(line: 0, scope: !549)
!2461 = !DILocation(line: 40, column: 29, scope: !549)
!2462 = !DILocation(line: 41, column: 19, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !549, file: !550, line: 41, column: 7)
!2464 = !DILocation(line: 41, column: 7, scope: !549)
!2465 = !DILocation(line: 47, column: 3, scope: !549)
!2466 = !DILocation(line: 48, column: 3, scope: !549)
!2467 = !DILocation(line: 48, column: 13, scope: !549)
!2468 = !DILocalVariable(name: "ps", arg: 1, scope: !2469, file: !2470, line: 1135, type: !2473)
!2469 = distinct !DISubprogram(name: "mbszero", scope: !2470, file: !2470, line: 1135, type: !2471, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !553, retainedNodes: !2474)
!2470 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2471 = !DISubroutineType(types: !2472)
!2472 = !{null, !2473}
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!2474 = !{!2468}
!2475 = !DILocation(line: 0, scope: !2469, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 48, column: 18, scope: !549)
!2477 = !DILocalVariable(name: "__dest", arg: 1, scope: !2478, file: !2479, line: 57, type: !126)
!2478 = distinct !DISubprogram(name: "memset", scope: !2479, file: !2479, line: 57, type: !2480, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !553, retainedNodes: !2482)
!2479 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!126, !126, !105, !134}
!2482 = !{!2477, !2483, !2484}
!2483 = !DILocalVariable(name: "__ch", arg: 2, scope: !2478, file: !2479, line: 57, type: !105)
!2484 = !DILocalVariable(name: "__len", arg: 3, scope: !2478, file: !2479, line: 57, type: !134)
!2485 = !DILocation(line: 0, scope: !2478, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 1137, column: 3, scope: !2469, inlinedAt: !2476)
!2487 = !DILocation(line: 59, column: 10, scope: !2478, inlinedAt: !2486)
!2488 = !DILocation(line: 49, column: 7, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !549, file: !550, line: 49, column: 7)
!2490 = !DILocation(line: 49, column: 39, scope: !2489)
!2491 = !DILocation(line: 49, column: 44, scope: !2489)
!2492 = !DILocation(line: 54, column: 1, scope: !549)
!2493 = !DISubprogram(name: "mbrtoc32", scope: !561, file: !561, line: 57, type: !2494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!134, !2496, !1012, !134, !2498}
!2496 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2497)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2473)
!2499 = distinct !DISubprogram(name: "clone_quoting_options", scope: !580, file: !580, line: 113, type: !2500, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !2503)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!2502, !2502}
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!2503 = !{!2504, !2505, !2506}
!2504 = !DILocalVariable(name: "o", arg: 1, scope: !2499, file: !580, line: 113, type: !2502)
!2505 = !DILocalVariable(name: "saved_errno", scope: !2499, file: !580, line: 115, type: !105)
!2506 = !DILocalVariable(name: "p", scope: !2499, file: !580, line: 116, type: !2502)
!2507 = !DILocation(line: 0, scope: !2499)
!2508 = !DILocation(line: 115, column: 21, scope: !2499)
!2509 = !DILocation(line: 116, column: 40, scope: !2499)
!2510 = !DILocation(line: 116, column: 31, scope: !2499)
!2511 = !DILocation(line: 118, column: 9, scope: !2499)
!2512 = !DILocation(line: 119, column: 3, scope: !2499)
!2513 = distinct !DISubprogram(name: "get_quoting_style", scope: !580, file: !580, line: 124, type: !2514, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !2518)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!606, !2516}
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!2518 = !{!2519}
!2519 = !DILocalVariable(name: "o", arg: 1, scope: !2513, file: !580, line: 124, type: !2516)
!2520 = !DILocation(line: 0, scope: !2513)
!2521 = !DILocation(line: 126, column: 11, scope: !2513)
!2522 = !DILocation(line: 126, column: 46, scope: !2513)
!2523 = !{!2524, !952, i64 0}
!2524 = !{!"quoting_options", !952, i64 0, !1023, i64 4, !952, i64 8, !951, i64 40, !951, i64 48}
!2525 = !DILocation(line: 126, column: 3, scope: !2513)
!2526 = distinct !DISubprogram(name: "set_quoting_style", scope: !580, file: !580, line: 132, type: !2527, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !2529)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{null, !2502, !606}
!2529 = !{!2530, !2531}
!2530 = !DILocalVariable(name: "o", arg: 1, scope: !2526, file: !580, line: 132, type: !2502)
!2531 = !DILocalVariable(name: "s", arg: 2, scope: !2526, file: !580, line: 132, type: !606)
!2532 = !DILocation(line: 0, scope: !2526)
!2533 = !DILocation(line: 134, column: 4, scope: !2526)
!2534 = !DILocation(line: 134, column: 45, scope: !2526)
!2535 = !DILocation(line: 135, column: 1, scope: !2526)
!2536 = distinct !DISubprogram(name: "set_char_quoting", scope: !580, file: !580, line: 143, type: !2537, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !2539)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!105, !2502, !4, !105}
!2539 = !{!2540, !2541, !2542, !2543, !2544, !2546, !2547}
!2540 = !DILocalVariable(name: "o", arg: 1, scope: !2536, file: !580, line: 143, type: !2502)
!2541 = !DILocalVariable(name: "c", arg: 2, scope: !2536, file: !580, line: 143, type: !4)
!2542 = !DILocalVariable(name: "i", arg: 3, scope: !2536, file: !580, line: 143, type: !105)
!2543 = !DILocalVariable(name: "uc", scope: !2536, file: !580, line: 145, type: !139)
!2544 = !DILocalVariable(name: "p", scope: !2536, file: !580, line: 146, type: !2545)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!2546 = !DILocalVariable(name: "shift", scope: !2536, file: !580, line: 148, type: !105)
!2547 = !DILocalVariable(name: "r", scope: !2536, file: !580, line: 149, type: !98)
!2548 = !DILocation(line: 0, scope: !2536)
!2549 = !DILocation(line: 147, column: 6, scope: !2536)
!2550 = !DILocation(line: 147, column: 41, scope: !2536)
!2551 = !DILocation(line: 147, column: 62, scope: !2536)
!2552 = !DILocation(line: 147, column: 57, scope: !2536)
!2553 = !DILocation(line: 148, column: 15, scope: !2536)
!2554 = !DILocation(line: 149, column: 21, scope: !2536)
!2555 = !DILocation(line: 149, column: 24, scope: !2536)
!2556 = !DILocation(line: 149, column: 34, scope: !2536)
!2557 = !DILocation(line: 150, column: 19, scope: !2536)
!2558 = !DILocation(line: 150, column: 24, scope: !2536)
!2559 = !DILocation(line: 150, column: 6, scope: !2536)
!2560 = !DILocation(line: 151, column: 3, scope: !2536)
!2561 = distinct !DISubprogram(name: "set_quoting_flags", scope: !580, file: !580, line: 159, type: !2562, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !2564)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!105, !2502, !105}
!2564 = !{!2565, !2566, !2567}
!2565 = !DILocalVariable(name: "o", arg: 1, scope: !2561, file: !580, line: 159, type: !2502)
!2566 = !DILocalVariable(name: "i", arg: 2, scope: !2561, file: !580, line: 159, type: !105)
!2567 = !DILocalVariable(name: "r", scope: !2561, file: !580, line: 163, type: !105)
!2568 = !DILocation(line: 0, scope: !2561)
!2569 = !DILocation(line: 161, column: 8, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2561, file: !580, line: 161, column: 7)
!2571 = !DILocation(line: 161, column: 7, scope: !2561)
!2572 = !DILocation(line: 163, column: 14, scope: !2561)
!2573 = !{!2524, !1023, i64 4}
!2574 = !DILocation(line: 164, column: 12, scope: !2561)
!2575 = !DILocation(line: 165, column: 3, scope: !2561)
!2576 = distinct !DISubprogram(name: "set_custom_quoting", scope: !580, file: !580, line: 169, type: !2577, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !2579)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{null, !2502, !137, !137}
!2579 = !{!2580, !2581, !2582}
!2580 = !DILocalVariable(name: "o", arg: 1, scope: !2576, file: !580, line: 169, type: !2502)
!2581 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2576, file: !580, line: 170, type: !137)
!2582 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2576, file: !580, line: 170, type: !137)
!2583 = !DILocation(line: 0, scope: !2576)
!2584 = !DILocation(line: 172, column: 8, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2576, file: !580, line: 172, column: 7)
!2586 = !DILocation(line: 172, column: 7, scope: !2576)
!2587 = !DILocation(line: 174, column: 12, scope: !2576)
!2588 = !DILocation(line: 175, column: 8, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2576, file: !580, line: 175, column: 7)
!2590 = !DILocation(line: 175, column: 19, scope: !2589)
!2591 = !DILocation(line: 176, column: 5, scope: !2589)
!2592 = !DILocation(line: 177, column: 6, scope: !2576)
!2593 = !DILocation(line: 177, column: 17, scope: !2576)
!2594 = !{!2524, !951, i64 40}
!2595 = !DILocation(line: 178, column: 6, scope: !2576)
!2596 = !DILocation(line: 178, column: 18, scope: !2576)
!2597 = !{!2524, !951, i64 48}
!2598 = !DILocation(line: 179, column: 1, scope: !2576)
!2599 = !DISubprogram(name: "abort", scope: !1147, file: !1147, line: 598, type: !535, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !959)
!2600 = distinct !DISubprogram(name: "quotearg_buffer", scope: !580, file: !580, line: 774, type: !2601, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !2603)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!134, !125, !134, !137, !134, !2516}
!2603 = !{!2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611}
!2604 = !DILocalVariable(name: "buffer", arg: 1, scope: !2600, file: !580, line: 774, type: !125)
!2605 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2600, file: !580, line: 774, type: !134)
!2606 = !DILocalVariable(name: "arg", arg: 3, scope: !2600, file: !580, line: 775, type: !137)
!2607 = !DILocalVariable(name: "argsize", arg: 4, scope: !2600, file: !580, line: 775, type: !134)
!2608 = !DILocalVariable(name: "o", arg: 5, scope: !2600, file: !580, line: 776, type: !2516)
!2609 = !DILocalVariable(name: "p", scope: !2600, file: !580, line: 778, type: !2516)
!2610 = !DILocalVariable(name: "saved_errno", scope: !2600, file: !580, line: 779, type: !105)
!2611 = !DILocalVariable(name: "r", scope: !2600, file: !580, line: 780, type: !134)
!2612 = !DILocation(line: 0, scope: !2600)
!2613 = !DILocation(line: 778, column: 37, scope: !2600)
!2614 = !DILocation(line: 779, column: 21, scope: !2600)
!2615 = !DILocation(line: 781, column: 43, scope: !2600)
!2616 = !DILocation(line: 781, column: 53, scope: !2600)
!2617 = !DILocation(line: 781, column: 63, scope: !2600)
!2618 = !DILocation(line: 782, column: 43, scope: !2600)
!2619 = !DILocation(line: 782, column: 58, scope: !2600)
!2620 = !DILocation(line: 780, column: 14, scope: !2600)
!2621 = !DILocation(line: 783, column: 9, scope: !2600)
!2622 = !DILocation(line: 784, column: 3, scope: !2600)
!2623 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !580, file: !580, line: 251, type: !2624, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !2628)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!134, !125, !134, !137, !134, !606, !105, !2626, !137, !137}
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!2628 = !{!2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2653, !2655, !2658, !2659, !2660, !2661, !2664, !2665, !2668, !2672, !2673, !2681, !2684, !2685, !2687, !2688, !2689, !2690}
!2629 = !DILocalVariable(name: "buffer", arg: 1, scope: !2623, file: !580, line: 251, type: !125)
!2630 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2623, file: !580, line: 251, type: !134)
!2631 = !DILocalVariable(name: "arg", arg: 3, scope: !2623, file: !580, line: 252, type: !137)
!2632 = !DILocalVariable(name: "argsize", arg: 4, scope: !2623, file: !580, line: 252, type: !134)
!2633 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2623, file: !580, line: 253, type: !606)
!2634 = !DILocalVariable(name: "flags", arg: 6, scope: !2623, file: !580, line: 253, type: !105)
!2635 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2623, file: !580, line: 254, type: !2626)
!2636 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2623, file: !580, line: 255, type: !137)
!2637 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2623, file: !580, line: 256, type: !137)
!2638 = !DILocalVariable(name: "unibyte_locale", scope: !2623, file: !580, line: 258, type: !190)
!2639 = !DILocalVariable(name: "len", scope: !2623, file: !580, line: 260, type: !134)
!2640 = !DILocalVariable(name: "orig_buffersize", scope: !2623, file: !580, line: 261, type: !134)
!2641 = !DILocalVariable(name: "quote_string", scope: !2623, file: !580, line: 262, type: !137)
!2642 = !DILocalVariable(name: "quote_string_len", scope: !2623, file: !580, line: 263, type: !134)
!2643 = !DILocalVariable(name: "backslash_escapes", scope: !2623, file: !580, line: 264, type: !190)
!2644 = !DILocalVariable(name: "elide_outer_quotes", scope: !2623, file: !580, line: 265, type: !190)
!2645 = !DILocalVariable(name: "encountered_single_quote", scope: !2623, file: !580, line: 266, type: !190)
!2646 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2623, file: !580, line: 267, type: !190)
!2647 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2623, file: !580, line: 309, type: !190)
!2648 = !DILocalVariable(name: "lq", scope: !2649, file: !580, line: 361, type: !137)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !580, line: 361, column: 11)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !580, line: 360, column: 13)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !580, line: 333, column: 7)
!2652 = distinct !DILexicalBlock(scope: !2623, file: !580, line: 312, column: 5)
!2653 = !DILocalVariable(name: "i", scope: !2654, file: !580, line: 395, type: !134)
!2654 = distinct !DILexicalBlock(scope: !2623, file: !580, line: 395, column: 3)
!2655 = !DILocalVariable(name: "is_right_quote", scope: !2656, file: !580, line: 397, type: !190)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !580, line: 396, column: 5)
!2657 = distinct !DILexicalBlock(scope: !2654, file: !580, line: 395, column: 3)
!2658 = !DILocalVariable(name: "escaping", scope: !2656, file: !580, line: 398, type: !190)
!2659 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2656, file: !580, line: 399, type: !190)
!2660 = !DILocalVariable(name: "c", scope: !2656, file: !580, line: 417, type: !139)
!2661 = !DILocalVariable(name: "m", scope: !2662, file: !580, line: 598, type: !134)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !580, line: 596, column: 11)
!2663 = distinct !DILexicalBlock(scope: !2656, file: !580, line: 419, column: 9)
!2664 = !DILocalVariable(name: "printable", scope: !2662, file: !580, line: 600, type: !190)
!2665 = !DILocalVariable(name: "mbs", scope: !2666, file: !580, line: 609, type: !667)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !580, line: 608, column: 15)
!2667 = distinct !DILexicalBlock(scope: !2662, file: !580, line: 602, column: 17)
!2668 = !DILocalVariable(name: "w", scope: !2669, file: !580, line: 618, type: !560)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !580, line: 617, column: 19)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !580, line: 616, column: 17)
!2671 = distinct !DILexicalBlock(scope: !2666, file: !580, line: 616, column: 17)
!2672 = !DILocalVariable(name: "bytes", scope: !2669, file: !580, line: 619, type: !134)
!2673 = !DILocalVariable(name: "j", scope: !2674, file: !580, line: 648, type: !134)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !580, line: 648, column: 29)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !580, line: 647, column: 27)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !580, line: 645, column: 29)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !580, line: 636, column: 23)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !580, line: 628, column: 30)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !580, line: 623, column: 30)
!2680 = distinct !DILexicalBlock(scope: !2669, file: !580, line: 621, column: 25)
!2681 = !DILocalVariable(name: "ilim", scope: !2682, file: !580, line: 674, type: !134)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !580, line: 671, column: 15)
!2683 = distinct !DILexicalBlock(scope: !2662, file: !580, line: 670, column: 17)
!2684 = !DILabel(scope: !2623, name: "process_input", file: !580, line: 308)
!2685 = !DILabel(scope: !2686, name: "c_and_shell_escape", file: !580, line: 502)
!2686 = distinct !DILexicalBlock(scope: !2663, file: !580, line: 478, column: 9)
!2687 = !DILabel(scope: !2686, name: "c_escape", file: !580, line: 507)
!2688 = !DILabel(scope: !2656, name: "store_escape", file: !580, line: 709)
!2689 = !DILabel(scope: !2656, name: "store_c", file: !580, line: 712)
!2690 = !DILabel(scope: !2623, name: "force_outer_quoting_style", file: !580, line: 753)
!2691 = !DILocation(line: 0, scope: !2623)
!2692 = !DILocation(line: 258, column: 25, scope: !2623)
!2693 = !DILocation(line: 258, column: 36, scope: !2623)
!2694 = !DILocation(line: 265, column: 8, scope: !2623)
!2695 = !DILocation(line: 267, column: 3, scope: !2623)
!2696 = !DILocation(line: 261, column: 10, scope: !2623)
!2697 = !DILocation(line: 262, column: 15, scope: !2623)
!2698 = !DILocation(line: 263, column: 10, scope: !2623)
!2699 = !DILocation(line: 264, column: 8, scope: !2623)
!2700 = !DILocation(line: 266, column: 8, scope: !2623)
!2701 = !DILocation(line: 267, column: 8, scope: !2623)
!2702 = !DILocation(line: 308, column: 2, scope: !2623)
!2703 = !DILocation(line: 311, column: 3, scope: !2623)
!2704 = !DILocation(line: 318, column: 11, scope: !2652)
!2705 = !DILocation(line: 318, column: 12, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2652, file: !580, line: 318, column: 11)
!2707 = !DILocation(line: 319, column: 9, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !580, line: 319, column: 9)
!2709 = distinct !DILexicalBlock(scope: !2706, file: !580, line: 319, column: 9)
!2710 = !DILocation(line: 319, column: 9, scope: !2709)
!2711 = !DILocation(line: 0, scope: !658, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 357, column: 26, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !580, line: 335, column: 11)
!2714 = distinct !DILexicalBlock(scope: !2651, file: !580, line: 334, column: 13)
!2715 = !DILocation(line: 199, column: 29, scope: !658, inlinedAt: !2712)
!2716 = !DILocation(line: 201, column: 19, scope: !2717, inlinedAt: !2712)
!2717 = distinct !DILexicalBlock(scope: !658, file: !580, line: 201, column: 7)
!2718 = !DILocation(line: 201, column: 7, scope: !658, inlinedAt: !2712)
!2719 = !DILocation(line: 229, column: 3, scope: !658, inlinedAt: !2712)
!2720 = !DILocation(line: 230, column: 3, scope: !658, inlinedAt: !2712)
!2721 = !DILocation(line: 230, column: 13, scope: !658, inlinedAt: !2712)
!2722 = !DILocalVariable(name: "ps", arg: 1, scope: !2723, file: !2470, line: 1135, type: !2726)
!2723 = distinct !DISubprogram(name: "mbszero", scope: !2470, file: !2470, line: 1135, type: !2724, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !2727)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{null, !2726}
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!2727 = !{!2722}
!2728 = !DILocation(line: 0, scope: !2723, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 230, column: 18, scope: !658, inlinedAt: !2712)
!2730 = !DILocalVariable(name: "__dest", arg: 1, scope: !2731, file: !2479, line: 57, type: !126)
!2731 = distinct !DISubprogram(name: "memset", scope: !2479, file: !2479, line: 57, type: !2480, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !2732)
!2732 = !{!2730, !2733, !2734}
!2733 = !DILocalVariable(name: "__ch", arg: 2, scope: !2731, file: !2479, line: 57, type: !105)
!2734 = !DILocalVariable(name: "__len", arg: 3, scope: !2731, file: !2479, line: 57, type: !134)
!2735 = !DILocation(line: 0, scope: !2731, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 1137, column: 3, scope: !2723, inlinedAt: !2729)
!2737 = !DILocation(line: 59, column: 10, scope: !2731, inlinedAt: !2736)
!2738 = !DILocation(line: 231, column: 7, scope: !2739, inlinedAt: !2712)
!2739 = distinct !DILexicalBlock(scope: !658, file: !580, line: 231, column: 7)
!2740 = !DILocation(line: 231, column: 40, scope: !2739, inlinedAt: !2712)
!2741 = !DILocation(line: 231, column: 45, scope: !2739, inlinedAt: !2712)
!2742 = !DILocation(line: 235, column: 1, scope: !658, inlinedAt: !2712)
!2743 = !DILocation(line: 0, scope: !658, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 358, column: 27, scope: !2713)
!2745 = !DILocation(line: 199, column: 29, scope: !658, inlinedAt: !2744)
!2746 = !DILocation(line: 201, column: 19, scope: !2717, inlinedAt: !2744)
!2747 = !DILocation(line: 201, column: 7, scope: !658, inlinedAt: !2744)
!2748 = !DILocation(line: 229, column: 3, scope: !658, inlinedAt: !2744)
!2749 = !DILocation(line: 230, column: 3, scope: !658, inlinedAt: !2744)
!2750 = !DILocation(line: 230, column: 13, scope: !658, inlinedAt: !2744)
!2751 = !DILocation(line: 0, scope: !2723, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 230, column: 18, scope: !658, inlinedAt: !2744)
!2753 = !DILocation(line: 0, scope: !2731, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 1137, column: 3, scope: !2723, inlinedAt: !2752)
!2755 = !DILocation(line: 59, column: 10, scope: !2731, inlinedAt: !2754)
!2756 = !DILocation(line: 231, column: 7, scope: !2739, inlinedAt: !2744)
!2757 = !DILocation(line: 231, column: 40, scope: !2739, inlinedAt: !2744)
!2758 = !DILocation(line: 231, column: 45, scope: !2739, inlinedAt: !2744)
!2759 = !DILocation(line: 235, column: 1, scope: !658, inlinedAt: !2744)
!2760 = !DILocation(line: 360, column: 14, scope: !2650)
!2761 = !DILocation(line: 360, column: 13, scope: !2651)
!2762 = !DILocation(line: 0, scope: !2649)
!2763 = !DILocation(line: 361, column: 45, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2649, file: !580, line: 361, column: 11)
!2765 = !DILocation(line: 361, column: 11, scope: !2649)
!2766 = !DILocation(line: 362, column: 13, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !580, line: 362, column: 13)
!2768 = distinct !DILexicalBlock(scope: !2764, file: !580, line: 362, column: 13)
!2769 = !DILocation(line: 362, column: 13, scope: !2768)
!2770 = !DILocation(line: 361, column: 52, scope: !2764)
!2771 = distinct !{!2771, !2765, !2772, !1069}
!2772 = !DILocation(line: 362, column: 13, scope: !2649)
!2773 = !DILocation(line: 260, column: 10, scope: !2623)
!2774 = !DILocation(line: 365, column: 28, scope: !2651)
!2775 = !DILocation(line: 367, column: 7, scope: !2652)
!2776 = !DILocation(line: 370, column: 7, scope: !2652)
!2777 = !DILocation(line: 373, column: 7, scope: !2652)
!2778 = !DILocation(line: 376, column: 12, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2652, file: !580, line: 376, column: 11)
!2780 = !DILocation(line: 376, column: 11, scope: !2652)
!2781 = !DILocation(line: 381, column: 12, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2652, file: !580, line: 381, column: 11)
!2783 = !DILocation(line: 381, column: 11, scope: !2652)
!2784 = !DILocation(line: 382, column: 9, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !580, line: 382, column: 9)
!2786 = distinct !DILexicalBlock(scope: !2782, file: !580, line: 382, column: 9)
!2787 = !DILocation(line: 382, column: 9, scope: !2786)
!2788 = !DILocation(line: 389, column: 7, scope: !2652)
!2789 = !DILocation(line: 392, column: 7, scope: !2652)
!2790 = !DILocation(line: 0, scope: !2654)
!2791 = !DILocation(line: 395, column: 8, scope: !2654)
!2792 = !DILocation(line: 309, column: 8, scope: !2623)
!2793 = !DILocation(line: 395, scope: !2654)
!2794 = !DILocation(line: 395, column: 34, scope: !2657)
!2795 = !DILocation(line: 395, column: 26, scope: !2657)
!2796 = !DILocation(line: 395, column: 48, scope: !2657)
!2797 = !DILocation(line: 395, column: 55, scope: !2657)
!2798 = !DILocation(line: 395, column: 3, scope: !2654)
!2799 = !DILocation(line: 395, column: 67, scope: !2657)
!2800 = !DILocation(line: 0, scope: !2656)
!2801 = !DILocation(line: 402, column: 11, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2656, file: !580, line: 401, column: 11)
!2803 = !DILocation(line: 404, column: 17, scope: !2802)
!2804 = !DILocation(line: 405, column: 39, scope: !2802)
!2805 = !DILocation(line: 409, column: 32, scope: !2802)
!2806 = !DILocation(line: 405, column: 19, scope: !2802)
!2807 = !DILocation(line: 405, column: 15, scope: !2802)
!2808 = !DILocation(line: 410, column: 11, scope: !2802)
!2809 = !DILocation(line: 410, column: 25, scope: !2802)
!2810 = !DILocalVariable(name: "__s1", arg: 1, scope: !2811, file: !1035, line: 974, type: !1169)
!2811 = distinct !DISubprogram(name: "memeq", scope: !1035, file: !1035, line: 974, type: !2440, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !2812)
!2812 = !{!2810, !2813, !2814}
!2813 = !DILocalVariable(name: "__s2", arg: 2, scope: !2811, file: !1035, line: 974, type: !1169)
!2814 = !DILocalVariable(name: "__n", arg: 3, scope: !2811, file: !1035, line: 974, type: !134)
!2815 = !DILocation(line: 0, scope: !2811, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 410, column: 14, scope: !2802)
!2817 = !DILocation(line: 976, column: 11, scope: !2811, inlinedAt: !2816)
!2818 = !DILocation(line: 976, column: 10, scope: !2811, inlinedAt: !2816)
!2819 = !DILocation(line: 401, column: 11, scope: !2656)
!2820 = !DILocation(line: 417, column: 25, scope: !2656)
!2821 = !DILocation(line: 418, column: 7, scope: !2656)
!2822 = !DILocation(line: 421, column: 15, scope: !2663)
!2823 = !DILocation(line: 423, column: 15, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !580, line: 423, column: 15)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !580, line: 422, column: 13)
!2826 = distinct !DILexicalBlock(scope: !2663, file: !580, line: 421, column: 15)
!2827 = !DILocation(line: 423, column: 15, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2824, file: !580, line: 423, column: 15)
!2829 = !DILocation(line: 423, column: 15, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !580, line: 423, column: 15)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !580, line: 423, column: 15)
!2832 = distinct !DILexicalBlock(scope: !2828, file: !580, line: 423, column: 15)
!2833 = !DILocation(line: 423, column: 15, scope: !2831)
!2834 = !DILocation(line: 423, column: 15, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !580, line: 423, column: 15)
!2836 = distinct !DILexicalBlock(scope: !2832, file: !580, line: 423, column: 15)
!2837 = !DILocation(line: 423, column: 15, scope: !2836)
!2838 = !DILocation(line: 423, column: 15, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !580, line: 423, column: 15)
!2840 = distinct !DILexicalBlock(scope: !2832, file: !580, line: 423, column: 15)
!2841 = !DILocation(line: 423, column: 15, scope: !2840)
!2842 = !DILocation(line: 423, column: 15, scope: !2832)
!2843 = !DILocation(line: 423, column: 15, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !580, line: 423, column: 15)
!2845 = distinct !DILexicalBlock(scope: !2824, file: !580, line: 423, column: 15)
!2846 = !DILocation(line: 423, column: 15, scope: !2845)
!2847 = !DILocation(line: 431, column: 19, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2825, file: !580, line: 430, column: 19)
!2849 = !DILocation(line: 431, column: 24, scope: !2848)
!2850 = !DILocation(line: 431, column: 28, scope: !2848)
!2851 = !DILocation(line: 431, column: 38, scope: !2848)
!2852 = !DILocation(line: 431, column: 48, scope: !2848)
!2853 = !DILocation(line: 431, column: 59, scope: !2848)
!2854 = !DILocation(line: 433, column: 19, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !580, line: 433, column: 19)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !580, line: 433, column: 19)
!2857 = distinct !DILexicalBlock(scope: !2848, file: !580, line: 432, column: 17)
!2858 = !DILocation(line: 433, column: 19, scope: !2856)
!2859 = !DILocation(line: 434, column: 19, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !580, line: 434, column: 19)
!2861 = distinct !DILexicalBlock(scope: !2857, file: !580, line: 434, column: 19)
!2862 = !DILocation(line: 434, column: 19, scope: !2861)
!2863 = !DILocation(line: 435, column: 17, scope: !2857)
!2864 = !DILocation(line: 442, column: 20, scope: !2826)
!2865 = !DILocation(line: 447, column: 11, scope: !2663)
!2866 = !DILocation(line: 450, column: 19, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2663, file: !580, line: 448, column: 13)
!2868 = !DILocation(line: 456, column: 19, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2867, file: !580, line: 455, column: 19)
!2870 = !DILocation(line: 456, column: 24, scope: !2869)
!2871 = !DILocation(line: 456, column: 28, scope: !2869)
!2872 = !DILocation(line: 456, column: 38, scope: !2869)
!2873 = !DILocation(line: 456, column: 47, scope: !2869)
!2874 = !DILocation(line: 456, column: 41, scope: !2869)
!2875 = !DILocation(line: 456, column: 52, scope: !2869)
!2876 = !DILocation(line: 455, column: 19, scope: !2867)
!2877 = !DILocation(line: 457, column: 25, scope: !2869)
!2878 = !DILocation(line: 457, column: 17, scope: !2869)
!2879 = !DILocation(line: 464, column: 25, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2869, file: !580, line: 458, column: 19)
!2881 = !DILocation(line: 468, column: 21, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !580, line: 468, column: 21)
!2883 = distinct !DILexicalBlock(scope: !2880, file: !580, line: 468, column: 21)
!2884 = !DILocation(line: 468, column: 21, scope: !2883)
!2885 = !DILocation(line: 469, column: 21, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !580, line: 469, column: 21)
!2887 = distinct !DILexicalBlock(scope: !2880, file: !580, line: 469, column: 21)
!2888 = !DILocation(line: 469, column: 21, scope: !2887)
!2889 = !DILocation(line: 470, column: 21, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !580, line: 470, column: 21)
!2891 = distinct !DILexicalBlock(scope: !2880, file: !580, line: 470, column: 21)
!2892 = !DILocation(line: 470, column: 21, scope: !2891)
!2893 = !DILocation(line: 471, column: 21, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !580, line: 471, column: 21)
!2895 = distinct !DILexicalBlock(scope: !2880, file: !580, line: 471, column: 21)
!2896 = !DILocation(line: 471, column: 21, scope: !2895)
!2897 = !DILocation(line: 472, column: 21, scope: !2880)
!2898 = !DILocation(line: 482, column: 33, scope: !2686)
!2899 = !DILocation(line: 483, column: 33, scope: !2686)
!2900 = !DILocation(line: 485, column: 33, scope: !2686)
!2901 = !DILocation(line: 486, column: 33, scope: !2686)
!2902 = !DILocation(line: 487, column: 33, scope: !2686)
!2903 = !DILocation(line: 490, column: 17, scope: !2686)
!2904 = !DILocation(line: 492, column: 21, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !580, line: 491, column: 15)
!2906 = distinct !DILexicalBlock(scope: !2686, file: !580, line: 490, column: 17)
!2907 = !DILocation(line: 499, column: 35, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2686, file: !580, line: 499, column: 17)
!2909 = !DILocation(line: 499, column: 57, scope: !2908)
!2910 = !DILocation(line: 0, scope: !2686)
!2911 = !DILocation(line: 502, column: 11, scope: !2686)
!2912 = !DILocation(line: 504, column: 17, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2686, file: !580, line: 503, column: 17)
!2914 = !DILocation(line: 507, column: 11, scope: !2686)
!2915 = !DILocation(line: 508, column: 17, scope: !2686)
!2916 = !DILocation(line: 517, column: 15, scope: !2663)
!2917 = !DILocation(line: 517, column: 40, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2663, file: !580, line: 517, column: 15)
!2919 = !DILocation(line: 517, column: 47, scope: !2918)
!2920 = !DILocation(line: 517, column: 18, scope: !2918)
!2921 = !DILocation(line: 521, column: 17, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2663, file: !580, line: 521, column: 15)
!2923 = !DILocation(line: 521, column: 15, scope: !2663)
!2924 = !DILocation(line: 525, column: 11, scope: !2663)
!2925 = !DILocation(line: 537, column: 15, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2663, file: !580, line: 536, column: 15)
!2927 = !DILocation(line: 544, column: 15, scope: !2663)
!2928 = !DILocation(line: 546, column: 19, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !580, line: 545, column: 13)
!2930 = distinct !DILexicalBlock(scope: !2663, file: !580, line: 544, column: 15)
!2931 = !DILocation(line: 549, column: 19, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2929, file: !580, line: 549, column: 19)
!2933 = !DILocation(line: 549, column: 30, scope: !2932)
!2934 = !DILocation(line: 558, column: 15, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !580, line: 558, column: 15)
!2936 = distinct !DILexicalBlock(scope: !2929, file: !580, line: 558, column: 15)
!2937 = !DILocation(line: 558, column: 15, scope: !2936)
!2938 = !DILocation(line: 559, column: 15, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !580, line: 559, column: 15)
!2940 = distinct !DILexicalBlock(scope: !2929, file: !580, line: 559, column: 15)
!2941 = !DILocation(line: 559, column: 15, scope: !2940)
!2942 = !DILocation(line: 560, column: 15, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2944, file: !580, line: 560, column: 15)
!2944 = distinct !DILexicalBlock(scope: !2929, file: !580, line: 560, column: 15)
!2945 = !DILocation(line: 560, column: 15, scope: !2944)
!2946 = !DILocation(line: 562, column: 13, scope: !2929)
!2947 = !DILocation(line: 602, column: 17, scope: !2662)
!2948 = !DILocation(line: 0, scope: !2662)
!2949 = !DILocation(line: 605, column: 29, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2667, file: !580, line: 603, column: 15)
!2951 = !DILocation(line: 605, column: 27, scope: !2950)
!2952 = !DILocation(line: 668, column: 40, scope: !2662)
!2953 = !DILocation(line: 670, column: 23, scope: !2683)
!2954 = !DILocation(line: 609, column: 17, scope: !2666)
!2955 = !DILocation(line: 609, column: 27, scope: !2666)
!2956 = !DILocation(line: 0, scope: !2723, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 609, column: 32, scope: !2666)
!2958 = !DILocation(line: 0, scope: !2731, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 1137, column: 3, scope: !2723, inlinedAt: !2957)
!2960 = !DILocation(line: 59, column: 10, scope: !2731, inlinedAt: !2959)
!2961 = !DILocation(line: 613, column: 29, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2666, file: !580, line: 613, column: 21)
!2963 = !DILocation(line: 613, column: 21, scope: !2666)
!2964 = !DILocation(line: 614, column: 29, scope: !2962)
!2965 = !DILocation(line: 614, column: 19, scope: !2962)
!2966 = !DILocation(line: 618, column: 21, scope: !2669)
!2967 = !DILocation(line: 620, column: 54, scope: !2669)
!2968 = !DILocation(line: 0, scope: !2669)
!2969 = !DILocation(line: 619, column: 36, scope: !2669)
!2970 = !DILocation(line: 621, column: 25, scope: !2669)
!2971 = !DILocation(line: 631, column: 38, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2678, file: !580, line: 629, column: 23)
!2973 = !DILocation(line: 631, column: 48, scope: !2972)
!2974 = !DILocation(line: 665, column: 19, scope: !2670)
!2975 = !DILocation(line: 666, column: 15, scope: !2667)
!2976 = !DILocation(line: 626, column: 25, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2679, file: !580, line: 624, column: 23)
!2978 = !DILocation(line: 631, column: 51, scope: !2972)
!2979 = !DILocation(line: 631, column: 25, scope: !2972)
!2980 = !DILocation(line: 632, column: 28, scope: !2972)
!2981 = !DILocation(line: 631, column: 34, scope: !2972)
!2982 = distinct !{!2982, !2979, !2980, !1069}
!2983 = !DILocation(line: 646, column: 29, scope: !2676)
!2984 = !DILocation(line: 0, scope: !2674)
!2985 = !DILocation(line: 649, column: 49, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2674, file: !580, line: 648, column: 29)
!2987 = !DILocation(line: 649, column: 39, scope: !2986)
!2988 = !DILocation(line: 649, column: 31, scope: !2986)
!2989 = !DILocation(line: 648, column: 60, scope: !2986)
!2990 = !DILocation(line: 648, column: 50, scope: !2986)
!2991 = !DILocation(line: 648, column: 29, scope: !2674)
!2992 = distinct !{!2992, !2991, !2993, !1069}
!2993 = !DILocation(line: 654, column: 33, scope: !2674)
!2994 = !DILocation(line: 657, column: 43, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2677, file: !580, line: 657, column: 29)
!2996 = !DILocalVariable(name: "wc", arg: 1, scope: !2997, file: !2998, line: 865, type: !3001)
!2997 = distinct !DISubprogram(name: "c32isprint", scope: !2998, file: !2998, line: 865, type: !2999, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3003)
!2998 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!105, !3001}
!3001 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3002, line: 20, baseType: !98)
!3002 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3003 = !{!2996}
!3004 = !DILocation(line: 0, scope: !2997, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 657, column: 31, scope: !2995)
!3006 = !DILocation(line: 871, column: 10, scope: !2997, inlinedAt: !3005)
!3007 = !DILocation(line: 657, column: 31, scope: !2995)
!3008 = !DILocation(line: 657, column: 29, scope: !2677)
!3009 = !DILocation(line: 664, column: 23, scope: !2669)
!3010 = !DILocation(line: 670, column: 19, scope: !2683)
!3011 = !DILocation(line: 670, column: 45, scope: !2683)
!3012 = !DILocation(line: 674, column: 33, scope: !2682)
!3013 = !DILocation(line: 0, scope: !2682)
!3014 = !DILocation(line: 676, column: 17, scope: !2682)
!3015 = !DILocation(line: 398, column: 12, scope: !2656)
!3016 = !DILocation(line: 678, column: 43, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !580, line: 678, column: 25)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !580, line: 677, column: 19)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !580, line: 676, column: 17)
!3020 = distinct !DILexicalBlock(scope: !2682, file: !580, line: 676, column: 17)
!3021 = !DILocation(line: 680, column: 25, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !580, line: 680, column: 25)
!3023 = distinct !DILexicalBlock(scope: !3017, file: !580, line: 679, column: 23)
!3024 = !DILocation(line: 680, column: 25, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3022, file: !580, line: 680, column: 25)
!3026 = !DILocation(line: 680, column: 25, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !580, line: 680, column: 25)
!3028 = distinct !DILexicalBlock(scope: !3029, file: !580, line: 680, column: 25)
!3029 = distinct !DILexicalBlock(scope: !3025, file: !580, line: 680, column: 25)
!3030 = !DILocation(line: 680, column: 25, scope: !3028)
!3031 = !DILocation(line: 680, column: 25, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !580, line: 680, column: 25)
!3033 = distinct !DILexicalBlock(scope: !3029, file: !580, line: 680, column: 25)
!3034 = !DILocation(line: 680, column: 25, scope: !3033)
!3035 = !DILocation(line: 680, column: 25, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !580, line: 680, column: 25)
!3037 = distinct !DILexicalBlock(scope: !3029, file: !580, line: 680, column: 25)
!3038 = !DILocation(line: 680, column: 25, scope: !3037)
!3039 = !DILocation(line: 680, column: 25, scope: !3029)
!3040 = !DILocation(line: 680, column: 25, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !580, line: 680, column: 25)
!3042 = distinct !DILexicalBlock(scope: !3022, file: !580, line: 680, column: 25)
!3043 = !DILocation(line: 680, column: 25, scope: !3042)
!3044 = !DILocation(line: 681, column: 25, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !580, line: 681, column: 25)
!3046 = distinct !DILexicalBlock(scope: !3023, file: !580, line: 681, column: 25)
!3047 = !DILocation(line: 681, column: 25, scope: !3046)
!3048 = !DILocation(line: 682, column: 25, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !580, line: 682, column: 25)
!3050 = distinct !DILexicalBlock(scope: !3023, file: !580, line: 682, column: 25)
!3051 = !DILocation(line: 682, column: 25, scope: !3050)
!3052 = !DILocation(line: 683, column: 38, scope: !3023)
!3053 = !DILocation(line: 683, column: 33, scope: !3023)
!3054 = !DILocation(line: 684, column: 23, scope: !3023)
!3055 = !DILocation(line: 685, column: 30, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3017, file: !580, line: 685, column: 30)
!3057 = !DILocation(line: 685, column: 30, scope: !3017)
!3058 = !DILocation(line: 687, column: 25, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3060, file: !580, line: 687, column: 25)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !580, line: 687, column: 25)
!3061 = distinct !DILexicalBlock(scope: !3056, file: !580, line: 686, column: 23)
!3062 = !DILocation(line: 687, column: 25, scope: !3060)
!3063 = !DILocation(line: 689, column: 23, scope: !3061)
!3064 = !DILocation(line: 690, column: 35, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3018, file: !580, line: 690, column: 25)
!3066 = !DILocation(line: 690, column: 30, scope: !3065)
!3067 = !DILocation(line: 690, column: 25, scope: !3018)
!3068 = !DILocation(line: 692, column: 21, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !580, line: 692, column: 21)
!3070 = distinct !DILexicalBlock(scope: !3018, file: !580, line: 692, column: 21)
!3071 = !DILocation(line: 692, column: 21, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !580, line: 692, column: 21)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !580, line: 692, column: 21)
!3074 = distinct !DILexicalBlock(scope: !3069, file: !580, line: 692, column: 21)
!3075 = !DILocation(line: 692, column: 21, scope: !3073)
!3076 = !DILocation(line: 692, column: 21, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !580, line: 692, column: 21)
!3078 = distinct !DILexicalBlock(scope: !3074, file: !580, line: 692, column: 21)
!3079 = !DILocation(line: 692, column: 21, scope: !3078)
!3080 = !DILocation(line: 692, column: 21, scope: !3074)
!3081 = !DILocation(line: 0, scope: !3018)
!3082 = !DILocation(line: 693, column: 21, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !580, line: 693, column: 21)
!3084 = distinct !DILexicalBlock(scope: !3018, file: !580, line: 693, column: 21)
!3085 = !DILocation(line: 693, column: 21, scope: !3084)
!3086 = !DILocation(line: 694, column: 25, scope: !3018)
!3087 = !DILocation(line: 676, column: 17, scope: !3019)
!3088 = distinct !{!3088, !3089, !3090}
!3089 = !DILocation(line: 676, column: 17, scope: !3020)
!3090 = !DILocation(line: 695, column: 19, scope: !3020)
!3091 = !DILocation(line: 409, column: 30, scope: !2802)
!3092 = !DILocation(line: 702, column: 34, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !2656, file: !580, line: 702, column: 11)
!3094 = !DILocation(line: 704, column: 14, scope: !3093)
!3095 = !DILocation(line: 705, column: 14, scope: !3093)
!3096 = !DILocation(line: 705, column: 35, scope: !3093)
!3097 = !DILocation(line: 705, column: 17, scope: !3093)
!3098 = !DILocation(line: 705, column: 47, scope: !3093)
!3099 = !DILocation(line: 705, column: 65, scope: !3093)
!3100 = !DILocation(line: 706, column: 11, scope: !3093)
!3101 = !DILocation(line: 702, column: 11, scope: !2656)
!3102 = !DILocation(line: 395, column: 15, scope: !2654)
!3103 = !DILocation(line: 709, column: 5, scope: !2656)
!3104 = !DILocation(line: 710, column: 7, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !2656, file: !580, line: 710, column: 7)
!3106 = !DILocation(line: 710, column: 7, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3105, file: !580, line: 710, column: 7)
!3108 = !DILocation(line: 710, column: 7, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !580, line: 710, column: 7)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !580, line: 710, column: 7)
!3111 = distinct !DILexicalBlock(scope: !3107, file: !580, line: 710, column: 7)
!3112 = !DILocation(line: 710, column: 7, scope: !3110)
!3113 = !DILocation(line: 710, column: 7, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !580, line: 710, column: 7)
!3115 = distinct !DILexicalBlock(scope: !3111, file: !580, line: 710, column: 7)
!3116 = !DILocation(line: 710, column: 7, scope: !3115)
!3117 = !DILocation(line: 710, column: 7, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !580, line: 710, column: 7)
!3119 = distinct !DILexicalBlock(scope: !3111, file: !580, line: 710, column: 7)
!3120 = !DILocation(line: 710, column: 7, scope: !3119)
!3121 = !DILocation(line: 710, column: 7, scope: !3111)
!3122 = !DILocation(line: 710, column: 7, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !580, line: 710, column: 7)
!3124 = distinct !DILexicalBlock(scope: !3105, file: !580, line: 710, column: 7)
!3125 = !DILocation(line: 710, column: 7, scope: !3124)
!3126 = !DILocation(line: 712, column: 5, scope: !2656)
!3127 = !DILocation(line: 713, column: 7, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !580, line: 713, column: 7)
!3129 = distinct !DILexicalBlock(scope: !2656, file: !580, line: 713, column: 7)
!3130 = !DILocation(line: 417, column: 21, scope: !2656)
!3131 = !DILocation(line: 713, column: 7, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !580, line: 713, column: 7)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !580, line: 713, column: 7)
!3134 = distinct !DILexicalBlock(scope: !3128, file: !580, line: 713, column: 7)
!3135 = !DILocation(line: 713, column: 7, scope: !3133)
!3136 = !DILocation(line: 713, column: 7, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !580, line: 713, column: 7)
!3138 = distinct !DILexicalBlock(scope: !3134, file: !580, line: 713, column: 7)
!3139 = !DILocation(line: 713, column: 7, scope: !3138)
!3140 = !DILocation(line: 713, column: 7, scope: !3134)
!3141 = !DILocation(line: 714, column: 7, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !580, line: 714, column: 7)
!3143 = distinct !DILexicalBlock(scope: !2656, file: !580, line: 714, column: 7)
!3144 = !DILocation(line: 714, column: 7, scope: !3143)
!3145 = !DILocation(line: 716, column: 13, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !2656, file: !580, line: 716, column: 11)
!3147 = !DILocation(line: 716, column: 11, scope: !2656)
!3148 = !DILocation(line: 718, column: 5, scope: !2657)
!3149 = !DILocation(line: 395, column: 82, scope: !2657)
!3150 = !DILocation(line: 395, column: 3, scope: !2657)
!3151 = distinct !{!3151, !2798, !3152, !1069}
!3152 = !DILocation(line: 718, column: 5, scope: !2654)
!3153 = !DILocation(line: 720, column: 11, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !2623, file: !580, line: 720, column: 7)
!3155 = !DILocation(line: 720, column: 16, scope: !3154)
!3156 = !DILocation(line: 728, column: 51, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !2623, file: !580, line: 728, column: 7)
!3158 = !DILocation(line: 731, column: 11, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !580, line: 731, column: 11)
!3160 = distinct !DILexicalBlock(scope: !3157, file: !580, line: 730, column: 5)
!3161 = !DILocation(line: 731, column: 11, scope: !3160)
!3162 = !DILocation(line: 732, column: 16, scope: !3159)
!3163 = !DILocation(line: 732, column: 9, scope: !3159)
!3164 = !DILocation(line: 736, column: 18, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3159, file: !580, line: 736, column: 16)
!3166 = !DILocation(line: 736, column: 29, scope: !3165)
!3167 = !DILocation(line: 745, column: 7, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !2623, file: !580, line: 745, column: 7)
!3169 = !DILocation(line: 745, column: 20, scope: !3168)
!3170 = !DILocation(line: 746, column: 12, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3172, file: !580, line: 746, column: 5)
!3172 = distinct !DILexicalBlock(scope: !3168, file: !580, line: 746, column: 5)
!3173 = !DILocation(line: 746, column: 5, scope: !3172)
!3174 = !DILocation(line: 747, column: 7, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !580, line: 747, column: 7)
!3176 = distinct !DILexicalBlock(scope: !3171, file: !580, line: 747, column: 7)
!3177 = !DILocation(line: 747, column: 7, scope: !3176)
!3178 = !DILocation(line: 746, column: 39, scope: !3171)
!3179 = distinct !{!3179, !3173, !3180, !1069}
!3180 = !DILocation(line: 747, column: 7, scope: !3172)
!3181 = !DILocation(line: 749, column: 11, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !2623, file: !580, line: 749, column: 7)
!3183 = !DILocation(line: 749, column: 7, scope: !2623)
!3184 = !DILocation(line: 750, column: 5, scope: !3182)
!3185 = !DILocation(line: 750, column: 17, scope: !3182)
!3186 = !DILocation(line: 753, column: 2, scope: !2623)
!3187 = !DILocation(line: 756, column: 51, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !2623, file: !580, line: 756, column: 7)
!3189 = !DILocation(line: 756, column: 21, scope: !3188)
!3190 = !DILocation(line: 760, column: 42, scope: !2623)
!3191 = !DILocation(line: 758, column: 10, scope: !2623)
!3192 = !DILocation(line: 758, column: 3, scope: !2623)
!3193 = !DILocation(line: 762, column: 1, scope: !2623)
!3194 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1147, file: !1147, line: 98, type: !3195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!134}
!3197 = !DISubprogram(name: "strlen", scope: !1143, file: !1143, line: 407, type: !3198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!136, !137}
!3200 = !DISubprogram(name: "iswprint", scope: !3201, file: !3201, line: 120, type: !2999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!3201 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3202 = distinct !DISubprogram(name: "quotearg_alloc", scope: !580, file: !580, line: 788, type: !3203, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3205)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!125, !137, !134, !2516}
!3205 = !{!3206, !3207, !3208}
!3206 = !DILocalVariable(name: "arg", arg: 1, scope: !3202, file: !580, line: 788, type: !137)
!3207 = !DILocalVariable(name: "argsize", arg: 2, scope: !3202, file: !580, line: 788, type: !134)
!3208 = !DILocalVariable(name: "o", arg: 3, scope: !3202, file: !580, line: 789, type: !2516)
!3209 = !DILocation(line: 0, scope: !3202)
!3210 = !DILocalVariable(name: "arg", arg: 1, scope: !3211, file: !580, line: 801, type: !137)
!3211 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !580, file: !580, line: 801, type: !3212, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3214)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!125, !137, !134, !886, !2516}
!3214 = !{!3210, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222}
!3215 = !DILocalVariable(name: "argsize", arg: 2, scope: !3211, file: !580, line: 801, type: !134)
!3216 = !DILocalVariable(name: "size", arg: 3, scope: !3211, file: !580, line: 801, type: !886)
!3217 = !DILocalVariable(name: "o", arg: 4, scope: !3211, file: !580, line: 802, type: !2516)
!3218 = !DILocalVariable(name: "p", scope: !3211, file: !580, line: 804, type: !2516)
!3219 = !DILocalVariable(name: "saved_errno", scope: !3211, file: !580, line: 805, type: !105)
!3220 = !DILocalVariable(name: "flags", scope: !3211, file: !580, line: 807, type: !105)
!3221 = !DILocalVariable(name: "bufsize", scope: !3211, file: !580, line: 808, type: !134)
!3222 = !DILocalVariable(name: "buf", scope: !3211, file: !580, line: 812, type: !125)
!3223 = !DILocation(line: 0, scope: !3211, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 791, column: 10, scope: !3202)
!3225 = !DILocation(line: 804, column: 37, scope: !3211, inlinedAt: !3224)
!3226 = !DILocation(line: 805, column: 21, scope: !3211, inlinedAt: !3224)
!3227 = !DILocation(line: 807, column: 18, scope: !3211, inlinedAt: !3224)
!3228 = !DILocation(line: 807, column: 24, scope: !3211, inlinedAt: !3224)
!3229 = !DILocation(line: 808, column: 72, scope: !3211, inlinedAt: !3224)
!3230 = !DILocation(line: 809, column: 56, scope: !3211, inlinedAt: !3224)
!3231 = !DILocation(line: 810, column: 49, scope: !3211, inlinedAt: !3224)
!3232 = !DILocation(line: 811, column: 49, scope: !3211, inlinedAt: !3224)
!3233 = !DILocation(line: 808, column: 20, scope: !3211, inlinedAt: !3224)
!3234 = !DILocation(line: 811, column: 62, scope: !3211, inlinedAt: !3224)
!3235 = !DILocation(line: 812, column: 15, scope: !3211, inlinedAt: !3224)
!3236 = !DILocation(line: 813, column: 60, scope: !3211, inlinedAt: !3224)
!3237 = !DILocation(line: 815, column: 32, scope: !3211, inlinedAt: !3224)
!3238 = !DILocation(line: 815, column: 47, scope: !3211, inlinedAt: !3224)
!3239 = !DILocation(line: 813, column: 3, scope: !3211, inlinedAt: !3224)
!3240 = !DILocation(line: 816, column: 9, scope: !3211, inlinedAt: !3224)
!3241 = !DILocation(line: 791, column: 3, scope: !3202)
!3242 = !DILocation(line: 0, scope: !3211)
!3243 = !DILocation(line: 804, column: 37, scope: !3211)
!3244 = !DILocation(line: 805, column: 21, scope: !3211)
!3245 = !DILocation(line: 807, column: 18, scope: !3211)
!3246 = !DILocation(line: 807, column: 27, scope: !3211)
!3247 = !DILocation(line: 807, column: 24, scope: !3211)
!3248 = !DILocation(line: 808, column: 72, scope: !3211)
!3249 = !DILocation(line: 809, column: 56, scope: !3211)
!3250 = !DILocation(line: 810, column: 49, scope: !3211)
!3251 = !DILocation(line: 811, column: 49, scope: !3211)
!3252 = !DILocation(line: 808, column: 20, scope: !3211)
!3253 = !DILocation(line: 811, column: 62, scope: !3211)
!3254 = !DILocation(line: 812, column: 15, scope: !3211)
!3255 = !DILocation(line: 813, column: 60, scope: !3211)
!3256 = !DILocation(line: 815, column: 32, scope: !3211)
!3257 = !DILocation(line: 815, column: 47, scope: !3211)
!3258 = !DILocation(line: 813, column: 3, scope: !3211)
!3259 = !DILocation(line: 816, column: 9, scope: !3211)
!3260 = !DILocation(line: 817, column: 7, scope: !3211)
!3261 = !DILocation(line: 818, column: 11, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3211, file: !580, line: 817, column: 7)
!3263 = !DILocation(line: 818, column: 5, scope: !3262)
!3264 = !DILocation(line: 819, column: 3, scope: !3211)
!3265 = distinct !DISubprogram(name: "quotearg_free", scope: !580, file: !580, line: 837, type: !535, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3266)
!3266 = !{!3267, !3268}
!3267 = !DILocalVariable(name: "sv", scope: !3265, file: !580, line: 839, type: !681)
!3268 = !DILocalVariable(name: "i", scope: !3269, file: !580, line: 840, type: !105)
!3269 = distinct !DILexicalBlock(scope: !3265, file: !580, line: 840, column: 3)
!3270 = !DILocation(line: 839, column: 24, scope: !3265)
!3271 = !DILocation(line: 0, scope: !3265)
!3272 = !DILocation(line: 0, scope: !3269)
!3273 = !DILocation(line: 840, column: 21, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3269, file: !580, line: 840, column: 3)
!3275 = !DILocation(line: 840, column: 3, scope: !3269)
!3276 = !DILocation(line: 842, column: 13, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3265, file: !580, line: 842, column: 7)
!3278 = !{!3279, !951, i64 8}
!3279 = !{!"slotvec", !1868, i64 0, !951, i64 8}
!3280 = !DILocation(line: 842, column: 17, scope: !3277)
!3281 = !DILocation(line: 842, column: 7, scope: !3265)
!3282 = !DILocation(line: 841, column: 17, scope: !3274)
!3283 = !DILocation(line: 841, column: 5, scope: !3274)
!3284 = !DILocation(line: 840, column: 32, scope: !3274)
!3285 = distinct !{!3285, !3275, !3286, !1069}
!3286 = !DILocation(line: 841, column: 20, scope: !3269)
!3287 = !DILocation(line: 844, column: 7, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3277, file: !580, line: 843, column: 5)
!3289 = !DILocation(line: 845, column: 21, scope: !3288)
!3290 = !{!3279, !1868, i64 0}
!3291 = !DILocation(line: 846, column: 20, scope: !3288)
!3292 = !DILocation(line: 847, column: 5, scope: !3288)
!3293 = !DILocation(line: 848, column: 10, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3265, file: !580, line: 848, column: 7)
!3295 = !DILocation(line: 848, column: 7, scope: !3265)
!3296 = !DILocation(line: 850, column: 7, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3294, file: !580, line: 849, column: 5)
!3298 = !DILocation(line: 851, column: 15, scope: !3297)
!3299 = !DILocation(line: 852, column: 5, scope: !3297)
!3300 = !DILocation(line: 853, column: 10, scope: !3265)
!3301 = !DILocation(line: 854, column: 1, scope: !3265)
!3302 = distinct !DISubprogram(name: "quotearg_n", scope: !580, file: !580, line: 919, type: !1140, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3303)
!3303 = !{!3304, !3305}
!3304 = !DILocalVariable(name: "n", arg: 1, scope: !3302, file: !580, line: 919, type: !105)
!3305 = !DILocalVariable(name: "arg", arg: 2, scope: !3302, file: !580, line: 919, type: !137)
!3306 = !DILocation(line: 0, scope: !3302)
!3307 = !DILocation(line: 921, column: 10, scope: !3302)
!3308 = !DILocation(line: 921, column: 3, scope: !3302)
!3309 = distinct !DISubprogram(name: "quotearg_n_options", scope: !580, file: !580, line: 866, type: !3310, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3312)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!125, !105, !137, !134, !2516}
!3312 = !{!3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3323, !3324, !3326, !3327, !3328}
!3313 = !DILocalVariable(name: "n", arg: 1, scope: !3309, file: !580, line: 866, type: !105)
!3314 = !DILocalVariable(name: "arg", arg: 2, scope: !3309, file: !580, line: 866, type: !137)
!3315 = !DILocalVariable(name: "argsize", arg: 3, scope: !3309, file: !580, line: 866, type: !134)
!3316 = !DILocalVariable(name: "options", arg: 4, scope: !3309, file: !580, line: 867, type: !2516)
!3317 = !DILocalVariable(name: "saved_errno", scope: !3309, file: !580, line: 869, type: !105)
!3318 = !DILocalVariable(name: "sv", scope: !3309, file: !580, line: 871, type: !681)
!3319 = !DILocalVariable(name: "nslots_max", scope: !3309, file: !580, line: 873, type: !105)
!3320 = !DILocalVariable(name: "preallocated", scope: !3321, file: !580, line: 879, type: !190)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !580, line: 878, column: 5)
!3322 = distinct !DILexicalBlock(scope: !3309, file: !580, line: 877, column: 7)
!3323 = !DILocalVariable(name: "new_nslots", scope: !3321, file: !580, line: 880, type: !899)
!3324 = !DILocalVariable(name: "size", scope: !3325, file: !580, line: 891, type: !134)
!3325 = distinct !DILexicalBlock(scope: !3309, file: !580, line: 890, column: 3)
!3326 = !DILocalVariable(name: "val", scope: !3325, file: !580, line: 892, type: !125)
!3327 = !DILocalVariable(name: "flags", scope: !3325, file: !580, line: 894, type: !105)
!3328 = !DILocalVariable(name: "qsize", scope: !3325, file: !580, line: 895, type: !134)
!3329 = !DILocation(line: 0, scope: !3309)
!3330 = !DILocation(line: 869, column: 21, scope: !3309)
!3331 = !DILocation(line: 871, column: 24, scope: !3309)
!3332 = !DILocation(line: 874, column: 17, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3309, file: !580, line: 874, column: 7)
!3334 = !DILocation(line: 875, column: 5, scope: !3333)
!3335 = !DILocation(line: 877, column: 7, scope: !3322)
!3336 = !DILocation(line: 877, column: 14, scope: !3322)
!3337 = !DILocation(line: 877, column: 7, scope: !3309)
!3338 = !DILocation(line: 879, column: 31, scope: !3321)
!3339 = !DILocation(line: 0, scope: !3321)
!3340 = !DILocation(line: 880, column: 7, scope: !3321)
!3341 = !DILocation(line: 880, column: 26, scope: !3321)
!3342 = !DILocation(line: 880, column: 13, scope: !3321)
!3343 = !DILocation(line: 882, column: 31, scope: !3321)
!3344 = !DILocation(line: 883, column: 33, scope: !3321)
!3345 = !DILocation(line: 883, column: 42, scope: !3321)
!3346 = !DILocation(line: 883, column: 31, scope: !3321)
!3347 = !DILocation(line: 882, column: 22, scope: !3321)
!3348 = !DILocation(line: 882, column: 15, scope: !3321)
!3349 = !DILocation(line: 884, column: 11, scope: !3321)
!3350 = !DILocation(line: 885, column: 15, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3321, file: !580, line: 884, column: 11)
!3352 = !{i64 0, i64 8, !1867, i64 8, i64 8, !950}
!3353 = !DILocation(line: 885, column: 9, scope: !3351)
!3354 = !DILocation(line: 886, column: 20, scope: !3321)
!3355 = !DILocation(line: 886, column: 18, scope: !3321)
!3356 = !DILocation(line: 886, column: 32, scope: !3321)
!3357 = !DILocation(line: 886, column: 43, scope: !3321)
!3358 = !DILocation(line: 886, column: 53, scope: !3321)
!3359 = !DILocation(line: 0, scope: !2731, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 886, column: 7, scope: !3321)
!3361 = !DILocation(line: 59, column: 10, scope: !2731, inlinedAt: !3360)
!3362 = !DILocation(line: 887, column: 16, scope: !3321)
!3363 = !DILocation(line: 887, column: 14, scope: !3321)
!3364 = !DILocation(line: 888, column: 5, scope: !3322)
!3365 = !DILocation(line: 888, column: 5, scope: !3321)
!3366 = !DILocation(line: 891, column: 19, scope: !3325)
!3367 = !DILocation(line: 891, column: 25, scope: !3325)
!3368 = !DILocation(line: 0, scope: !3325)
!3369 = !DILocation(line: 892, column: 23, scope: !3325)
!3370 = !DILocation(line: 894, column: 26, scope: !3325)
!3371 = !DILocation(line: 894, column: 32, scope: !3325)
!3372 = !DILocation(line: 896, column: 55, scope: !3325)
!3373 = !DILocation(line: 897, column: 55, scope: !3325)
!3374 = !DILocation(line: 898, column: 55, scope: !3325)
!3375 = !DILocation(line: 899, column: 55, scope: !3325)
!3376 = !DILocation(line: 895, column: 20, scope: !3325)
!3377 = !DILocation(line: 901, column: 14, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3325, file: !580, line: 901, column: 9)
!3379 = !DILocation(line: 901, column: 9, scope: !3325)
!3380 = !DILocation(line: 903, column: 35, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3378, file: !580, line: 902, column: 7)
!3382 = !DILocation(line: 903, column: 20, scope: !3381)
!3383 = !DILocation(line: 904, column: 17, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3381, file: !580, line: 904, column: 13)
!3385 = !DILocation(line: 904, column: 13, scope: !3381)
!3386 = !DILocation(line: 905, column: 11, scope: !3384)
!3387 = !DILocation(line: 906, column: 27, scope: !3381)
!3388 = !DILocation(line: 906, column: 19, scope: !3381)
!3389 = !DILocation(line: 907, column: 69, scope: !3381)
!3390 = !DILocation(line: 909, column: 44, scope: !3381)
!3391 = !DILocation(line: 910, column: 44, scope: !3381)
!3392 = !DILocation(line: 907, column: 9, scope: !3381)
!3393 = !DILocation(line: 911, column: 7, scope: !3381)
!3394 = !DILocation(line: 913, column: 11, scope: !3325)
!3395 = !DILocation(line: 914, column: 5, scope: !3325)
!3396 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !580, file: !580, line: 925, type: !3397, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3399)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!125, !105, !137, !134}
!3399 = !{!3400, !3401, !3402}
!3400 = !DILocalVariable(name: "n", arg: 1, scope: !3396, file: !580, line: 925, type: !105)
!3401 = !DILocalVariable(name: "arg", arg: 2, scope: !3396, file: !580, line: 925, type: !137)
!3402 = !DILocalVariable(name: "argsize", arg: 3, scope: !3396, file: !580, line: 925, type: !134)
!3403 = !DILocation(line: 0, scope: !3396)
!3404 = !DILocation(line: 927, column: 10, scope: !3396)
!3405 = !DILocation(line: 927, column: 3, scope: !3396)
!3406 = distinct !DISubprogram(name: "quotearg", scope: !580, file: !580, line: 931, type: !1149, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3407)
!3407 = !{!3408}
!3408 = !DILocalVariable(name: "arg", arg: 1, scope: !3406, file: !580, line: 931, type: !137)
!3409 = !DILocation(line: 0, scope: !3406)
!3410 = !DILocation(line: 0, scope: !3302, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 933, column: 10, scope: !3406)
!3412 = !DILocation(line: 921, column: 10, scope: !3302, inlinedAt: !3411)
!3413 = !DILocation(line: 933, column: 3, scope: !3406)
!3414 = distinct !DISubprogram(name: "quotearg_mem", scope: !580, file: !580, line: 937, type: !3415, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3417)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!125, !137, !134}
!3417 = !{!3418, !3419}
!3418 = !DILocalVariable(name: "arg", arg: 1, scope: !3414, file: !580, line: 937, type: !137)
!3419 = !DILocalVariable(name: "argsize", arg: 2, scope: !3414, file: !580, line: 937, type: !134)
!3420 = !DILocation(line: 0, scope: !3414)
!3421 = !DILocation(line: 0, scope: !3396, inlinedAt: !3422)
!3422 = distinct !DILocation(line: 939, column: 10, scope: !3414)
!3423 = !DILocation(line: 927, column: 10, scope: !3396, inlinedAt: !3422)
!3424 = !DILocation(line: 939, column: 3, scope: !3414)
!3425 = distinct !DISubprogram(name: "quotearg_n_style", scope: !580, file: !580, line: 943, type: !3426, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3428)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!125, !105, !606, !137}
!3428 = !{!3429, !3430, !3431, !3432}
!3429 = !DILocalVariable(name: "n", arg: 1, scope: !3425, file: !580, line: 943, type: !105)
!3430 = !DILocalVariable(name: "s", arg: 2, scope: !3425, file: !580, line: 943, type: !606)
!3431 = !DILocalVariable(name: "arg", arg: 3, scope: !3425, file: !580, line: 943, type: !137)
!3432 = !DILocalVariable(name: "o", scope: !3425, file: !580, line: 945, type: !2517)
!3433 = !DILocation(line: 0, scope: !3425)
!3434 = !DILocation(line: 945, column: 3, scope: !3425)
!3435 = !DILocation(line: 945, column: 32, scope: !3425)
!3436 = !{!3437}
!3437 = distinct !{!3437, !3438, !"quoting_options_from_style: argument 0"}
!3438 = distinct !{!3438, !"quoting_options_from_style"}
!3439 = !DILocation(line: 945, column: 36, scope: !3425)
!3440 = !DILocalVariable(name: "style", arg: 1, scope: !3441, file: !580, line: 183, type: !606)
!3441 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !580, file: !580, line: 183, type: !3442, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3444)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!633, !606}
!3444 = !{!3440, !3445}
!3445 = !DILocalVariable(name: "o", scope: !3441, file: !580, line: 185, type: !633)
!3446 = !DILocation(line: 0, scope: !3441, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 945, column: 36, scope: !3425)
!3448 = !DILocation(line: 185, column: 26, scope: !3441, inlinedAt: !3447)
!3449 = !DILocation(line: 186, column: 13, scope: !3450, inlinedAt: !3447)
!3450 = distinct !DILexicalBlock(scope: !3441, file: !580, line: 186, column: 7)
!3451 = !DILocation(line: 186, column: 7, scope: !3441, inlinedAt: !3447)
!3452 = !DILocation(line: 187, column: 5, scope: !3450, inlinedAt: !3447)
!3453 = !DILocation(line: 188, column: 11, scope: !3441, inlinedAt: !3447)
!3454 = !DILocation(line: 946, column: 10, scope: !3425)
!3455 = !DILocation(line: 947, column: 1, scope: !3425)
!3456 = !DILocation(line: 946, column: 3, scope: !3425)
!3457 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !580, file: !580, line: 950, type: !3458, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3460)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!125, !105, !606, !137, !134}
!3460 = !{!3461, !3462, !3463, !3464, !3465}
!3461 = !DILocalVariable(name: "n", arg: 1, scope: !3457, file: !580, line: 950, type: !105)
!3462 = !DILocalVariable(name: "s", arg: 2, scope: !3457, file: !580, line: 950, type: !606)
!3463 = !DILocalVariable(name: "arg", arg: 3, scope: !3457, file: !580, line: 951, type: !137)
!3464 = !DILocalVariable(name: "argsize", arg: 4, scope: !3457, file: !580, line: 951, type: !134)
!3465 = !DILocalVariable(name: "o", scope: !3457, file: !580, line: 953, type: !2517)
!3466 = !DILocation(line: 0, scope: !3457)
!3467 = !DILocation(line: 953, column: 3, scope: !3457)
!3468 = !DILocation(line: 953, column: 32, scope: !3457)
!3469 = !{!3470}
!3470 = distinct !{!3470, !3471, !"quoting_options_from_style: argument 0"}
!3471 = distinct !{!3471, !"quoting_options_from_style"}
!3472 = !DILocation(line: 953, column: 36, scope: !3457)
!3473 = !DILocation(line: 0, scope: !3441, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 953, column: 36, scope: !3457)
!3475 = !DILocation(line: 185, column: 26, scope: !3441, inlinedAt: !3474)
!3476 = !DILocation(line: 186, column: 13, scope: !3450, inlinedAt: !3474)
!3477 = !DILocation(line: 186, column: 7, scope: !3441, inlinedAt: !3474)
!3478 = !DILocation(line: 187, column: 5, scope: !3450, inlinedAt: !3474)
!3479 = !DILocation(line: 188, column: 11, scope: !3441, inlinedAt: !3474)
!3480 = !DILocation(line: 954, column: 10, scope: !3457)
!3481 = !DILocation(line: 955, column: 1, scope: !3457)
!3482 = !DILocation(line: 954, column: 3, scope: !3457)
!3483 = distinct !DISubprogram(name: "quotearg_style", scope: !580, file: !580, line: 958, type: !3484, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3486)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!125, !606, !137}
!3486 = !{!3487, !3488}
!3487 = !DILocalVariable(name: "s", arg: 1, scope: !3483, file: !580, line: 958, type: !606)
!3488 = !DILocalVariable(name: "arg", arg: 2, scope: !3483, file: !580, line: 958, type: !137)
!3489 = !DILocation(line: 0, scope: !3483)
!3490 = !DILocation(line: 0, scope: !3425, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 960, column: 10, scope: !3483)
!3492 = !DILocation(line: 945, column: 3, scope: !3425, inlinedAt: !3491)
!3493 = !DILocation(line: 945, column: 32, scope: !3425, inlinedAt: !3491)
!3494 = !{!3495}
!3495 = distinct !{!3495, !3496, !"quoting_options_from_style: argument 0"}
!3496 = distinct !{!3496, !"quoting_options_from_style"}
!3497 = !DILocation(line: 945, column: 36, scope: !3425, inlinedAt: !3491)
!3498 = !DILocation(line: 0, scope: !3441, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 945, column: 36, scope: !3425, inlinedAt: !3491)
!3500 = !DILocation(line: 185, column: 26, scope: !3441, inlinedAt: !3499)
!3501 = !DILocation(line: 186, column: 13, scope: !3450, inlinedAt: !3499)
!3502 = !DILocation(line: 186, column: 7, scope: !3441, inlinedAt: !3499)
!3503 = !DILocation(line: 187, column: 5, scope: !3450, inlinedAt: !3499)
!3504 = !DILocation(line: 188, column: 11, scope: !3441, inlinedAt: !3499)
!3505 = !DILocation(line: 946, column: 10, scope: !3425, inlinedAt: !3491)
!3506 = !DILocation(line: 947, column: 1, scope: !3425, inlinedAt: !3491)
!3507 = !DILocation(line: 960, column: 3, scope: !3483)
!3508 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !580, file: !580, line: 964, type: !3509, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3511)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!125, !606, !137, !134}
!3511 = !{!3512, !3513, !3514}
!3512 = !DILocalVariable(name: "s", arg: 1, scope: !3508, file: !580, line: 964, type: !606)
!3513 = !DILocalVariable(name: "arg", arg: 2, scope: !3508, file: !580, line: 964, type: !137)
!3514 = !DILocalVariable(name: "argsize", arg: 3, scope: !3508, file: !580, line: 964, type: !134)
!3515 = !DILocation(line: 0, scope: !3508)
!3516 = !DILocation(line: 0, scope: !3457, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 966, column: 10, scope: !3508)
!3518 = !DILocation(line: 953, column: 3, scope: !3457, inlinedAt: !3517)
!3519 = !DILocation(line: 953, column: 32, scope: !3457, inlinedAt: !3517)
!3520 = !{!3521}
!3521 = distinct !{!3521, !3522, !"quoting_options_from_style: argument 0"}
!3522 = distinct !{!3522, !"quoting_options_from_style"}
!3523 = !DILocation(line: 953, column: 36, scope: !3457, inlinedAt: !3517)
!3524 = !DILocation(line: 0, scope: !3441, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 953, column: 36, scope: !3457, inlinedAt: !3517)
!3526 = !DILocation(line: 185, column: 26, scope: !3441, inlinedAt: !3525)
!3527 = !DILocation(line: 186, column: 13, scope: !3450, inlinedAt: !3525)
!3528 = !DILocation(line: 186, column: 7, scope: !3441, inlinedAt: !3525)
!3529 = !DILocation(line: 187, column: 5, scope: !3450, inlinedAt: !3525)
!3530 = !DILocation(line: 188, column: 11, scope: !3441, inlinedAt: !3525)
!3531 = !DILocation(line: 954, column: 10, scope: !3457, inlinedAt: !3517)
!3532 = !DILocation(line: 955, column: 1, scope: !3457, inlinedAt: !3517)
!3533 = !DILocation(line: 966, column: 3, scope: !3508)
!3534 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !580, file: !580, line: 970, type: !3535, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3537)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!125, !137, !134, !4}
!3537 = !{!3538, !3539, !3540, !3541}
!3538 = !DILocalVariable(name: "arg", arg: 1, scope: !3534, file: !580, line: 970, type: !137)
!3539 = !DILocalVariable(name: "argsize", arg: 2, scope: !3534, file: !580, line: 970, type: !134)
!3540 = !DILocalVariable(name: "ch", arg: 3, scope: !3534, file: !580, line: 970, type: !4)
!3541 = !DILocalVariable(name: "options", scope: !3534, file: !580, line: 972, type: !633)
!3542 = !DILocation(line: 0, scope: !3534)
!3543 = !DILocation(line: 972, column: 3, scope: !3534)
!3544 = !DILocation(line: 972, column: 26, scope: !3534)
!3545 = !DILocation(line: 973, column: 13, scope: !3534)
!3546 = !{i64 0, i64 4, !1031, i64 4, i64 4, !1022, i64 8, i64 32, !1031, i64 40, i64 8, !950, i64 48, i64 8, !950}
!3547 = !DILocation(line: 0, scope: !2536, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 974, column: 3, scope: !3534)
!3549 = !DILocation(line: 147, column: 41, scope: !2536, inlinedAt: !3548)
!3550 = !DILocation(line: 147, column: 62, scope: !2536, inlinedAt: !3548)
!3551 = !DILocation(line: 147, column: 57, scope: !2536, inlinedAt: !3548)
!3552 = !DILocation(line: 148, column: 15, scope: !2536, inlinedAt: !3548)
!3553 = !DILocation(line: 149, column: 21, scope: !2536, inlinedAt: !3548)
!3554 = !DILocation(line: 149, column: 24, scope: !2536, inlinedAt: !3548)
!3555 = !DILocation(line: 150, column: 19, scope: !2536, inlinedAt: !3548)
!3556 = !DILocation(line: 150, column: 24, scope: !2536, inlinedAt: !3548)
!3557 = !DILocation(line: 150, column: 6, scope: !2536, inlinedAt: !3548)
!3558 = !DILocation(line: 975, column: 10, scope: !3534)
!3559 = !DILocation(line: 976, column: 1, scope: !3534)
!3560 = !DILocation(line: 975, column: 3, scope: !3534)
!3561 = distinct !DISubprogram(name: "quotearg_char", scope: !580, file: !580, line: 979, type: !3562, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3564)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!125, !137, !4}
!3564 = !{!3565, !3566}
!3565 = !DILocalVariable(name: "arg", arg: 1, scope: !3561, file: !580, line: 979, type: !137)
!3566 = !DILocalVariable(name: "ch", arg: 2, scope: !3561, file: !580, line: 979, type: !4)
!3567 = !DILocation(line: 0, scope: !3561)
!3568 = !DILocation(line: 0, scope: !3534, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 981, column: 10, scope: !3561)
!3570 = !DILocation(line: 972, column: 3, scope: !3534, inlinedAt: !3569)
!3571 = !DILocation(line: 972, column: 26, scope: !3534, inlinedAt: !3569)
!3572 = !DILocation(line: 973, column: 13, scope: !3534, inlinedAt: !3569)
!3573 = !DILocation(line: 0, scope: !2536, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 974, column: 3, scope: !3534, inlinedAt: !3569)
!3575 = !DILocation(line: 147, column: 41, scope: !2536, inlinedAt: !3574)
!3576 = !DILocation(line: 147, column: 62, scope: !2536, inlinedAt: !3574)
!3577 = !DILocation(line: 147, column: 57, scope: !2536, inlinedAt: !3574)
!3578 = !DILocation(line: 148, column: 15, scope: !2536, inlinedAt: !3574)
!3579 = !DILocation(line: 149, column: 21, scope: !2536, inlinedAt: !3574)
!3580 = !DILocation(line: 149, column: 24, scope: !2536, inlinedAt: !3574)
!3581 = !DILocation(line: 150, column: 19, scope: !2536, inlinedAt: !3574)
!3582 = !DILocation(line: 150, column: 24, scope: !2536, inlinedAt: !3574)
!3583 = !DILocation(line: 150, column: 6, scope: !2536, inlinedAt: !3574)
!3584 = !DILocation(line: 975, column: 10, scope: !3534, inlinedAt: !3569)
!3585 = !DILocation(line: 976, column: 1, scope: !3534, inlinedAt: !3569)
!3586 = !DILocation(line: 981, column: 3, scope: !3561)
!3587 = distinct !DISubprogram(name: "quotearg_colon", scope: !580, file: !580, line: 985, type: !1149, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3588)
!3588 = !{!3589}
!3589 = !DILocalVariable(name: "arg", arg: 1, scope: !3587, file: !580, line: 985, type: !137)
!3590 = !DILocation(line: 0, scope: !3587)
!3591 = !DILocation(line: 0, scope: !3561, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 987, column: 10, scope: !3587)
!3593 = !DILocation(line: 0, scope: !3534, inlinedAt: !3594)
!3594 = distinct !DILocation(line: 981, column: 10, scope: !3561, inlinedAt: !3592)
!3595 = !DILocation(line: 972, column: 3, scope: !3534, inlinedAt: !3594)
!3596 = !DILocation(line: 972, column: 26, scope: !3534, inlinedAt: !3594)
!3597 = !DILocation(line: 973, column: 13, scope: !3534, inlinedAt: !3594)
!3598 = !DILocation(line: 0, scope: !2536, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 974, column: 3, scope: !3534, inlinedAt: !3594)
!3600 = !DILocation(line: 147, column: 57, scope: !2536, inlinedAt: !3599)
!3601 = !DILocation(line: 149, column: 21, scope: !2536, inlinedAt: !3599)
!3602 = !DILocation(line: 150, column: 6, scope: !2536, inlinedAt: !3599)
!3603 = !DILocation(line: 975, column: 10, scope: !3534, inlinedAt: !3594)
!3604 = !DILocation(line: 976, column: 1, scope: !3534, inlinedAt: !3594)
!3605 = !DILocation(line: 987, column: 3, scope: !3587)
!3606 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !580, file: !580, line: 991, type: !3415, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3607)
!3607 = !{!3608, !3609}
!3608 = !DILocalVariable(name: "arg", arg: 1, scope: !3606, file: !580, line: 991, type: !137)
!3609 = !DILocalVariable(name: "argsize", arg: 2, scope: !3606, file: !580, line: 991, type: !134)
!3610 = !DILocation(line: 0, scope: !3606)
!3611 = !DILocation(line: 0, scope: !3534, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 993, column: 10, scope: !3606)
!3613 = !DILocation(line: 972, column: 3, scope: !3534, inlinedAt: !3612)
!3614 = !DILocation(line: 972, column: 26, scope: !3534, inlinedAt: !3612)
!3615 = !DILocation(line: 973, column: 13, scope: !3534, inlinedAt: !3612)
!3616 = !DILocation(line: 0, scope: !2536, inlinedAt: !3617)
!3617 = distinct !DILocation(line: 974, column: 3, scope: !3534, inlinedAt: !3612)
!3618 = !DILocation(line: 147, column: 57, scope: !2536, inlinedAt: !3617)
!3619 = !DILocation(line: 149, column: 21, scope: !2536, inlinedAt: !3617)
!3620 = !DILocation(line: 150, column: 6, scope: !2536, inlinedAt: !3617)
!3621 = !DILocation(line: 975, column: 10, scope: !3534, inlinedAt: !3612)
!3622 = !DILocation(line: 976, column: 1, scope: !3534, inlinedAt: !3612)
!3623 = !DILocation(line: 993, column: 3, scope: !3606)
!3624 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !580, file: !580, line: 997, type: !3426, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3625)
!3625 = !{!3626, !3627, !3628, !3629}
!3626 = !DILocalVariable(name: "n", arg: 1, scope: !3624, file: !580, line: 997, type: !105)
!3627 = !DILocalVariable(name: "s", arg: 2, scope: !3624, file: !580, line: 997, type: !606)
!3628 = !DILocalVariable(name: "arg", arg: 3, scope: !3624, file: !580, line: 997, type: !137)
!3629 = !DILocalVariable(name: "options", scope: !3624, file: !580, line: 999, type: !633)
!3630 = !DILocation(line: 185, column: 26, scope: !3441, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 1000, column: 13, scope: !3624)
!3632 = !DILocation(line: 0, scope: !3624)
!3633 = !DILocation(line: 999, column: 3, scope: !3624)
!3634 = !DILocation(line: 999, column: 26, scope: !3624)
!3635 = !DILocation(line: 0, scope: !3441, inlinedAt: !3631)
!3636 = !DILocation(line: 186, column: 13, scope: !3450, inlinedAt: !3631)
!3637 = !DILocation(line: 186, column: 7, scope: !3441, inlinedAt: !3631)
!3638 = !DILocation(line: 187, column: 5, scope: !3450, inlinedAt: !3631)
!3639 = !{!3640}
!3640 = distinct !{!3640, !3641, !"quoting_options_from_style: argument 0"}
!3641 = distinct !{!3641, !"quoting_options_from_style"}
!3642 = !DILocation(line: 1000, column: 13, scope: !3624)
!3643 = !DILocation(line: 0, scope: !2536, inlinedAt: !3644)
!3644 = distinct !DILocation(line: 1001, column: 3, scope: !3624)
!3645 = !DILocation(line: 147, column: 57, scope: !2536, inlinedAt: !3644)
!3646 = !DILocation(line: 149, column: 21, scope: !2536, inlinedAt: !3644)
!3647 = !DILocation(line: 150, column: 6, scope: !2536, inlinedAt: !3644)
!3648 = !DILocation(line: 1002, column: 10, scope: !3624)
!3649 = !DILocation(line: 1003, column: 1, scope: !3624)
!3650 = !DILocation(line: 1002, column: 3, scope: !3624)
!3651 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !580, file: !580, line: 1006, type: !3652, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3654)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!125, !105, !137, !137, !137}
!3654 = !{!3655, !3656, !3657, !3658}
!3655 = !DILocalVariable(name: "n", arg: 1, scope: !3651, file: !580, line: 1006, type: !105)
!3656 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3651, file: !580, line: 1006, type: !137)
!3657 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3651, file: !580, line: 1007, type: !137)
!3658 = !DILocalVariable(name: "arg", arg: 4, scope: !3651, file: !580, line: 1007, type: !137)
!3659 = !DILocation(line: 0, scope: !3651)
!3660 = !DILocalVariable(name: "n", arg: 1, scope: !3661, file: !580, line: 1014, type: !105)
!3661 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !580, file: !580, line: 1014, type: !3662, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3664)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!125, !105, !137, !137, !137, !134}
!3664 = !{!3660, !3665, !3666, !3667, !3668, !3669}
!3665 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3661, file: !580, line: 1014, type: !137)
!3666 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3661, file: !580, line: 1015, type: !137)
!3667 = !DILocalVariable(name: "arg", arg: 4, scope: !3661, file: !580, line: 1016, type: !137)
!3668 = !DILocalVariable(name: "argsize", arg: 5, scope: !3661, file: !580, line: 1016, type: !134)
!3669 = !DILocalVariable(name: "o", scope: !3661, file: !580, line: 1018, type: !633)
!3670 = !DILocation(line: 0, scope: !3661, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 1009, column: 10, scope: !3651)
!3672 = !DILocation(line: 1018, column: 3, scope: !3661, inlinedAt: !3671)
!3673 = !DILocation(line: 1018, column: 26, scope: !3661, inlinedAt: !3671)
!3674 = !DILocation(line: 1018, column: 30, scope: !3661, inlinedAt: !3671)
!3675 = !DILocation(line: 0, scope: !2576, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 1019, column: 3, scope: !3661, inlinedAt: !3671)
!3677 = !DILocation(line: 174, column: 12, scope: !2576, inlinedAt: !3676)
!3678 = !DILocation(line: 175, column: 8, scope: !2589, inlinedAt: !3676)
!3679 = !DILocation(line: 175, column: 19, scope: !2589, inlinedAt: !3676)
!3680 = !DILocation(line: 176, column: 5, scope: !2589, inlinedAt: !3676)
!3681 = !DILocation(line: 177, column: 6, scope: !2576, inlinedAt: !3676)
!3682 = !DILocation(line: 177, column: 17, scope: !2576, inlinedAt: !3676)
!3683 = !DILocation(line: 178, column: 6, scope: !2576, inlinedAt: !3676)
!3684 = !DILocation(line: 178, column: 18, scope: !2576, inlinedAt: !3676)
!3685 = !DILocation(line: 1020, column: 10, scope: !3661, inlinedAt: !3671)
!3686 = !DILocation(line: 1021, column: 1, scope: !3661, inlinedAt: !3671)
!3687 = !DILocation(line: 1009, column: 3, scope: !3651)
!3688 = !DILocation(line: 0, scope: !3661)
!3689 = !DILocation(line: 1018, column: 3, scope: !3661)
!3690 = !DILocation(line: 1018, column: 26, scope: !3661)
!3691 = !DILocation(line: 1018, column: 30, scope: !3661)
!3692 = !DILocation(line: 0, scope: !2576, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 1019, column: 3, scope: !3661)
!3694 = !DILocation(line: 174, column: 12, scope: !2576, inlinedAt: !3693)
!3695 = !DILocation(line: 175, column: 8, scope: !2589, inlinedAt: !3693)
!3696 = !DILocation(line: 175, column: 19, scope: !2589, inlinedAt: !3693)
!3697 = !DILocation(line: 176, column: 5, scope: !2589, inlinedAt: !3693)
!3698 = !DILocation(line: 177, column: 6, scope: !2576, inlinedAt: !3693)
!3699 = !DILocation(line: 177, column: 17, scope: !2576, inlinedAt: !3693)
!3700 = !DILocation(line: 178, column: 6, scope: !2576, inlinedAt: !3693)
!3701 = !DILocation(line: 178, column: 18, scope: !2576, inlinedAt: !3693)
!3702 = !DILocation(line: 1020, column: 10, scope: !3661)
!3703 = !DILocation(line: 1021, column: 1, scope: !3661)
!3704 = !DILocation(line: 1020, column: 3, scope: !3661)
!3705 = distinct !DISubprogram(name: "quotearg_custom", scope: !580, file: !580, line: 1024, type: !3706, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3708)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!125, !137, !137, !137}
!3708 = !{!3709, !3710, !3711}
!3709 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3705, file: !580, line: 1024, type: !137)
!3710 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3705, file: !580, line: 1024, type: !137)
!3711 = !DILocalVariable(name: "arg", arg: 3, scope: !3705, file: !580, line: 1025, type: !137)
!3712 = !DILocation(line: 0, scope: !3705)
!3713 = !DILocation(line: 0, scope: !3651, inlinedAt: !3714)
!3714 = distinct !DILocation(line: 1027, column: 10, scope: !3705)
!3715 = !DILocation(line: 0, scope: !3661, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 1009, column: 10, scope: !3651, inlinedAt: !3714)
!3717 = !DILocation(line: 1018, column: 3, scope: !3661, inlinedAt: !3716)
!3718 = !DILocation(line: 1018, column: 26, scope: !3661, inlinedAt: !3716)
!3719 = !DILocation(line: 1018, column: 30, scope: !3661, inlinedAt: !3716)
!3720 = !DILocation(line: 0, scope: !2576, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 1019, column: 3, scope: !3661, inlinedAt: !3716)
!3722 = !DILocation(line: 174, column: 12, scope: !2576, inlinedAt: !3721)
!3723 = !DILocation(line: 175, column: 8, scope: !2589, inlinedAt: !3721)
!3724 = !DILocation(line: 175, column: 19, scope: !2589, inlinedAt: !3721)
!3725 = !DILocation(line: 176, column: 5, scope: !2589, inlinedAt: !3721)
!3726 = !DILocation(line: 177, column: 6, scope: !2576, inlinedAt: !3721)
!3727 = !DILocation(line: 177, column: 17, scope: !2576, inlinedAt: !3721)
!3728 = !DILocation(line: 178, column: 6, scope: !2576, inlinedAt: !3721)
!3729 = !DILocation(line: 178, column: 18, scope: !2576, inlinedAt: !3721)
!3730 = !DILocation(line: 1020, column: 10, scope: !3661, inlinedAt: !3716)
!3731 = !DILocation(line: 1021, column: 1, scope: !3661, inlinedAt: !3716)
!3732 = !DILocation(line: 1027, column: 3, scope: !3705)
!3733 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !580, file: !580, line: 1031, type: !3734, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3736)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!125, !137, !137, !137, !134}
!3736 = !{!3737, !3738, !3739, !3740}
!3737 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3733, file: !580, line: 1031, type: !137)
!3738 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3733, file: !580, line: 1031, type: !137)
!3739 = !DILocalVariable(name: "arg", arg: 3, scope: !3733, file: !580, line: 1032, type: !137)
!3740 = !DILocalVariable(name: "argsize", arg: 4, scope: !3733, file: !580, line: 1032, type: !134)
!3741 = !DILocation(line: 0, scope: !3733)
!3742 = !DILocation(line: 0, scope: !3661, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 1034, column: 10, scope: !3733)
!3744 = !DILocation(line: 1018, column: 3, scope: !3661, inlinedAt: !3743)
!3745 = !DILocation(line: 1018, column: 26, scope: !3661, inlinedAt: !3743)
!3746 = !DILocation(line: 1018, column: 30, scope: !3661, inlinedAt: !3743)
!3747 = !DILocation(line: 0, scope: !2576, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 1019, column: 3, scope: !3661, inlinedAt: !3743)
!3749 = !DILocation(line: 174, column: 12, scope: !2576, inlinedAt: !3748)
!3750 = !DILocation(line: 175, column: 8, scope: !2589, inlinedAt: !3748)
!3751 = !DILocation(line: 175, column: 19, scope: !2589, inlinedAt: !3748)
!3752 = !DILocation(line: 176, column: 5, scope: !2589, inlinedAt: !3748)
!3753 = !DILocation(line: 177, column: 6, scope: !2576, inlinedAt: !3748)
!3754 = !DILocation(line: 177, column: 17, scope: !2576, inlinedAt: !3748)
!3755 = !DILocation(line: 178, column: 6, scope: !2576, inlinedAt: !3748)
!3756 = !DILocation(line: 178, column: 18, scope: !2576, inlinedAt: !3748)
!3757 = !DILocation(line: 1020, column: 10, scope: !3661, inlinedAt: !3743)
!3758 = !DILocation(line: 1021, column: 1, scope: !3661, inlinedAt: !3743)
!3759 = !DILocation(line: 1034, column: 3, scope: !3733)
!3760 = distinct !DISubprogram(name: "quote_n_mem", scope: !580, file: !580, line: 1049, type: !3761, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3763)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!137, !105, !137, !134}
!3763 = !{!3764, !3765, !3766}
!3764 = !DILocalVariable(name: "n", arg: 1, scope: !3760, file: !580, line: 1049, type: !105)
!3765 = !DILocalVariable(name: "arg", arg: 2, scope: !3760, file: !580, line: 1049, type: !137)
!3766 = !DILocalVariable(name: "argsize", arg: 3, scope: !3760, file: !580, line: 1049, type: !134)
!3767 = !DILocation(line: 0, scope: !3760)
!3768 = !DILocation(line: 1051, column: 10, scope: !3760)
!3769 = !DILocation(line: 1051, column: 3, scope: !3760)
!3770 = distinct !DISubprogram(name: "quote_mem", scope: !580, file: !580, line: 1055, type: !3771, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3773)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!137, !137, !134}
!3773 = !{!3774, !3775}
!3774 = !DILocalVariable(name: "arg", arg: 1, scope: !3770, file: !580, line: 1055, type: !137)
!3775 = !DILocalVariable(name: "argsize", arg: 2, scope: !3770, file: !580, line: 1055, type: !134)
!3776 = !DILocation(line: 0, scope: !3770)
!3777 = !DILocation(line: 0, scope: !3760, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 1057, column: 10, scope: !3770)
!3779 = !DILocation(line: 1051, column: 10, scope: !3760, inlinedAt: !3778)
!3780 = !DILocation(line: 1057, column: 3, scope: !3770)
!3781 = distinct !DISubprogram(name: "quote_n", scope: !580, file: !580, line: 1061, type: !3782, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3784)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!137, !105, !137}
!3784 = !{!3785, !3786}
!3785 = !DILocalVariable(name: "n", arg: 1, scope: !3781, file: !580, line: 1061, type: !105)
!3786 = !DILocalVariable(name: "arg", arg: 2, scope: !3781, file: !580, line: 1061, type: !137)
!3787 = !DILocation(line: 0, scope: !3781)
!3788 = !DILocation(line: 0, scope: !3760, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 1063, column: 10, scope: !3781)
!3790 = !DILocation(line: 1051, column: 10, scope: !3760, inlinedAt: !3789)
!3791 = !DILocation(line: 1063, column: 3, scope: !3781)
!3792 = distinct !DISubprogram(name: "quote", scope: !580, file: !580, line: 1067, type: !3793, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3795)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!137, !137}
!3795 = !{!3796}
!3796 = !DILocalVariable(name: "arg", arg: 1, scope: !3792, file: !580, line: 1067, type: !137)
!3797 = !DILocation(line: 0, scope: !3792)
!3798 = !DILocation(line: 0, scope: !3781, inlinedAt: !3799)
!3799 = distinct !DILocation(line: 1069, column: 10, scope: !3792)
!3800 = !DILocation(line: 0, scope: !3760, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 1063, column: 10, scope: !3781, inlinedAt: !3799)
!3802 = !DILocation(line: 1051, column: 10, scope: !3760, inlinedAt: !3801)
!3803 = !DILocation(line: 1069, column: 3, scope: !3792)
!3804 = distinct !DISubprogram(name: "str2sig", scope: !695, file: !695, line: 321, type: !3805, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !694, retainedNodes: !3807)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!105, !137, !452}
!3807 = !{!3808, !3809}
!3808 = !DILocalVariable(name: "signame", arg: 1, scope: !3804, file: !695, line: 321, type: !137)
!3809 = !DILocalVariable(name: "signum", arg: 2, scope: !3804, file: !695, line: 321, type: !452)
!3810 = !DILocation(line: 0, scope: !3804)
!3811 = !DILocalVariable(name: "signame", arg: 1, scope: !3812, file: !695, line: 278, type: !137)
!3812 = distinct !DISubprogram(name: "str2signum", scope: !695, file: !695, line: 278, type: !1977, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !694, retainedNodes: !3813)
!3813 = !{!3811, !3814, !3817, !3818, !3821, !3823, !3824, !3827, !3828, !3831}
!3814 = !DILocalVariable(name: "endp", scope: !3815, file: !695, line: 282, type: !125)
!3815 = distinct !DILexicalBlock(scope: !3816, file: !695, line: 281, column: 5)
!3816 = distinct !DILexicalBlock(scope: !3812, file: !695, line: 280, column: 7)
!3817 = !DILocalVariable(name: "n", scope: !3815, file: !695, line: 283, type: !253)
!3818 = !DILocalVariable(name: "i", scope: !3819, file: !695, line: 289, type: !98)
!3819 = distinct !DILexicalBlock(scope: !3820, file: !695, line: 289, column: 7)
!3820 = distinct !DILexicalBlock(scope: !3816, file: !695, line: 288, column: 5)
!3821 = !DILocalVariable(name: "rtmin", scope: !3822, file: !695, line: 294, type: !105)
!3822 = distinct !DILexicalBlock(scope: !3820, file: !695, line: 293, column: 7)
!3823 = !DILocalVariable(name: "rtmax", scope: !3822, file: !695, line: 295, type: !105)
!3824 = !DILocalVariable(name: "endp", scope: !3825, file: !695, line: 299, type: !125)
!3825 = distinct !DILexicalBlock(scope: !3826, file: !695, line: 298, column: 11)
!3826 = distinct !DILexicalBlock(scope: !3822, file: !695, line: 297, column: 13)
!3827 = !DILocalVariable(name: "n", scope: !3825, file: !695, line: 300, type: !253)
!3828 = !DILocalVariable(name: "endp", scope: !3829, file: !695, line: 306, type: !125)
!3829 = distinct !DILexicalBlock(scope: !3830, file: !695, line: 305, column: 11)
!3830 = distinct !DILexicalBlock(scope: !3826, file: !695, line: 304, column: 18)
!3831 = !DILocalVariable(name: "n", scope: !3829, file: !695, line: 307, type: !253)
!3832 = !DILocation(line: 0, scope: !3812, inlinedAt: !3833)
!3833 = distinct !DILocation(line: 323, column: 13, scope: !3804)
!3834 = !DILocation(line: 280, column: 7, scope: !3816, inlinedAt: !3833)
!3835 = !DILocation(line: 280, column: 7, scope: !3812, inlinedAt: !3833)
!3836 = !DILocation(line: 282, column: 7, scope: !3815, inlinedAt: !3833)
!3837 = !DILocation(line: 0, scope: !3815, inlinedAt: !3833)
!3838 = !DILocation(line: 283, column: 20, scope: !3815, inlinedAt: !3833)
!3839 = !DILocation(line: 284, column: 14, scope: !3840, inlinedAt: !3833)
!3840 = distinct !DILexicalBlock(scope: !3815, file: !695, line: 284, column: 11)
!3841 = !DILocation(line: 284, column: 13, scope: !3840, inlinedAt: !3833)
!3842 = !DILocation(line: 284, column: 19, scope: !3840, inlinedAt: !3833)
!3843 = !DILocation(line: 286, column: 5, scope: !3816, inlinedAt: !3833)
!3844 = !DILocation(line: 0, scope: !3819, inlinedAt: !3833)
!3845 = !DILocation(line: 290, column: 37, scope: !3846, inlinedAt: !3833)
!3846 = distinct !DILexicalBlock(scope: !3847, file: !695, line: 290, column: 13)
!3847 = distinct !DILexicalBlock(scope: !3819, file: !695, line: 289, column: 7)
!3848 = !DILocalVariable(name: "__s1", arg: 1, scope: !3849, file: !1035, line: 1359, type: !137)
!3849 = distinct !DISubprogram(name: "streq", scope: !1035, file: !1035, line: 1359, type: !1036, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !694, retainedNodes: !3850)
!3850 = !{!3848, !3851}
!3851 = !DILocalVariable(name: "__s2", arg: 2, scope: !3849, file: !1035, line: 1359, type: !137)
!3852 = !DILocation(line: 0, scope: !3849, inlinedAt: !3853)
!3853 = distinct !DILocation(line: 290, column: 13, scope: !3846, inlinedAt: !3833)
!3854 = !DILocation(line: 1361, column: 11, scope: !3849, inlinedAt: !3853)
!3855 = !DILocation(line: 1361, column: 10, scope: !3849, inlinedAt: !3853)
!3856 = !DILocation(line: 290, column: 13, scope: !3847, inlinedAt: !3833)
!3857 = !DILocation(line: 289, column: 54, scope: !3847, inlinedAt: !3833)
!3858 = !DILocation(line: 289, column: 34, scope: !3847, inlinedAt: !3833)
!3859 = !DILocation(line: 289, column: 7, scope: !3819, inlinedAt: !3833)
!3860 = distinct !{!3860, !3859, !3861, !1069}
!3861 = !DILocation(line: 291, column: 35, scope: !3819, inlinedAt: !3833)
!3862 = !DILocation(line: 289, column: 32, scope: !3847, inlinedAt: !3833)
!3863 = !DILocation(line: 290, column: 20, scope: !3846, inlinedAt: !3833)
!3864 = !DILocation(line: 291, column: 35, scope: !3846, inlinedAt: !3833)
!3865 = !{!3866, !1023, i64 0}
!3866 = !{!"numname", !1023, i64 0, !952, i64 4}
!3867 = !DILocation(line: 294, column: 21, scope: !3822, inlinedAt: !3833)
!3868 = !DILocation(line: 0, scope: !3822, inlinedAt: !3833)
!3869 = !DILocation(line: 295, column: 21, scope: !3822, inlinedAt: !3833)
!3870 = !DILocation(line: 297, column: 15, scope: !3826, inlinedAt: !3833)
!3871 = !DILocation(line: 297, column: 23, scope: !3826, inlinedAt: !3833)
!3872 = !DILocation(line: 297, column: 26, scope: !3826, inlinedAt: !3833)
!3873 = !DILocation(line: 297, column: 56, scope: !3826, inlinedAt: !3833)
!3874 = !DILocation(line: 297, column: 13, scope: !3822, inlinedAt: !3833)
!3875 = !DILocation(line: 299, column: 13, scope: !3825, inlinedAt: !3833)
!3876 = !DILocation(line: 300, column: 42, scope: !3825, inlinedAt: !3833)
!3877 = !DILocation(line: 0, scope: !3825, inlinedAt: !3833)
!3878 = !DILocation(line: 300, column: 26, scope: !3825, inlinedAt: !3833)
!3879 = !DILocation(line: 301, column: 20, scope: !3880, inlinedAt: !3833)
!3880 = distinct !DILexicalBlock(scope: !3825, file: !695, line: 301, column: 17)
!3881 = !DILocation(line: 301, column: 19, scope: !3880, inlinedAt: !3833)
!3882 = !DILocation(line: 301, column: 25, scope: !3880, inlinedAt: !3833)
!3883 = !DILocation(line: 301, column: 49, scope: !3880, inlinedAt: !3833)
!3884 = !DILocation(line: 301, column: 43, scope: !3880, inlinedAt: !3833)
!3885 = !DILocation(line: 301, column: 40, scope: !3880, inlinedAt: !3833)
!3886 = !DILocation(line: 301, column: 17, scope: !3825, inlinedAt: !3833)
!3887 = !DILocation(line: 303, column: 11, scope: !3826, inlinedAt: !3833)
!3888 = !DILocation(line: 302, column: 22, scope: !3880, inlinedAt: !3833)
!3889 = !DILocation(line: 304, column: 20, scope: !3830, inlinedAt: !3833)
!3890 = !DILocation(line: 304, column: 28, scope: !3830, inlinedAt: !3833)
!3891 = !DILocation(line: 304, column: 31, scope: !3830, inlinedAt: !3833)
!3892 = !DILocation(line: 304, column: 61, scope: !3830, inlinedAt: !3833)
!3893 = !DILocation(line: 304, column: 18, scope: !3826, inlinedAt: !3833)
!3894 = !DILocation(line: 306, column: 13, scope: !3829, inlinedAt: !3833)
!3895 = !DILocation(line: 307, column: 42, scope: !3829, inlinedAt: !3833)
!3896 = !DILocation(line: 0, scope: !3829, inlinedAt: !3833)
!3897 = !DILocation(line: 307, column: 26, scope: !3829, inlinedAt: !3833)
!3898 = !DILocation(line: 308, column: 20, scope: !3899, inlinedAt: !3833)
!3899 = distinct !DILexicalBlock(scope: !3829, file: !695, line: 308, column: 17)
!3900 = !DILocation(line: 308, column: 19, scope: !3899, inlinedAt: !3833)
!3901 = !DILocation(line: 308, column: 25, scope: !3899, inlinedAt: !3833)
!3902 = !DILocation(line: 308, column: 34, scope: !3899, inlinedAt: !3833)
!3903 = !DILocation(line: 308, column: 28, scope: !3899, inlinedAt: !3833)
!3904 = !DILocation(line: 308, column: 42, scope: !3899, inlinedAt: !3833)
!3905 = !DILocation(line: 308, column: 47, scope: !3899, inlinedAt: !3833)
!3906 = !DILocation(line: 310, column: 11, scope: !3830, inlinedAt: !3833)
!3907 = !DILocation(line: 309, column: 22, scope: !3899, inlinedAt: !3833)
!3908 = !DILocation(line: 314, column: 3, scope: !3812, inlinedAt: !3833)
!3909 = !DILocation(line: 323, column: 11, scope: !3804)
!3910 = !DILocation(line: 324, column: 10, scope: !3804)
!3911 = !DILocation(line: 324, column: 3, scope: !3804)
!3912 = distinct !DISubprogram(name: "sig2str", scope: !695, file: !695, line: 332, type: !3913, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !694, retainedNodes: !3915)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!105, !105, !125}
!3915 = !{!3916, !3917, !3918, !3920, !3922, !3923, !3924}
!3916 = !DILocalVariable(name: "signum", arg: 1, scope: !3912, file: !695, line: 332, type: !105)
!3917 = !DILocalVariable(name: "signame", arg: 2, scope: !3912, file: !695, line: 332, type: !125)
!3918 = !DILocalVariable(name: "i", scope: !3919, file: !695, line: 334, type: !98)
!3919 = distinct !DILexicalBlock(scope: !3912, file: !695, line: 334, column: 3)
!3920 = !DILocalVariable(name: "rtmin", scope: !3921, file: !695, line: 342, type: !105)
!3921 = distinct !DILexicalBlock(scope: !3912, file: !695, line: 341, column: 3)
!3922 = !DILocalVariable(name: "rtmax", scope: !3921, file: !695, line: 343, type: !105)
!3923 = !DILocalVariable(name: "base", scope: !3921, file: !695, line: 348, type: !105)
!3924 = !DILocalVariable(name: "delta", scope: !3921, file: !695, line: 360, type: !105)
!3925 = !DILocation(line: 0, scope: !3912)
!3926 = !DILocation(line: 0, scope: !3919)
!3927 = !DILocation(line: 334, column: 3, scope: !3919)
!3928 = !DILocation(line: 335, column: 9, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3930, file: !695, line: 335, column: 9)
!3930 = distinct !DILexicalBlock(scope: !3919, file: !695, line: 334, column: 3)
!3931 = !DILocation(line: 335, column: 26, scope: !3929)
!3932 = !DILocation(line: 335, column: 30, scope: !3929)
!3933 = !DILocation(line: 335, column: 9, scope: !3930)
!3934 = !DILocation(line: 334, column: 50, scope: !3930)
!3935 = !DILocation(line: 334, column: 30, scope: !3930)
!3936 = distinct !{!3936, !3927, !3937, !1069}
!3937 = !DILocation(line: 339, column: 7, scope: !3919)
!3938 = !DILocation(line: 334, column: 28, scope: !3930)
!3939 = !DILocation(line: 337, column: 43, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3929, file: !695, line: 336, column: 7)
!3941 = !DILocalVariable(name: "__dest", arg: 1, scope: !3942, file: !2479, line: 77, type: !3945)
!3942 = distinct !DISubprogram(name: "strcpy", scope: !2479, file: !2479, line: 77, type: !3943, scopeLine: 78, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !694, retainedNodes: !3946)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!125, !3945, !1012}
!3945 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !125)
!3946 = !{!3941, !3947}
!3947 = !DILocalVariable(name: "__src", arg: 2, scope: !3942, file: !2479, line: 77, type: !1012)
!3948 = !DILocation(line: 0, scope: !3942, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 337, column: 9, scope: !3940)
!3950 = !DILocation(line: 79, column: 10, scope: !3942, inlinedAt: !3949)
!3951 = !DILocation(line: 342, column: 17, scope: !3921)
!3952 = !DILocation(line: 0, scope: !3921)
!3953 = !DILocation(line: 343, column: 17, scope: !3921)
!3954 = !DILocation(line: 345, column: 18, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3921, file: !695, line: 345, column: 9)
!3956 = !DILocation(line: 345, column: 28, scope: !3955)
!3957 = !DILocation(line: 349, column: 34, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3921, file: !695, line: 349, column: 9)
!3959 = !DILocation(line: 349, column: 43, scope: !3958)
!3960 = !DILocation(line: 349, column: 25, scope: !3958)
!3961 = !DILocation(line: 349, column: 16, scope: !3958)
!3962 = !DILocation(line: 0, scope: !3942, inlinedAt: !3963)
!3963 = distinct !DILocation(line: 356, column: 9, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3958, file: !695, line: 355, column: 7)
!3965 = !DILocation(line: 0, scope: !3942, inlinedAt: !3966)
!3966 = distinct !DILocation(line: 351, column: 9, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3958, file: !695, line: 350, column: 7)
!3968 = !DILocation(line: 0, scope: !3958)
!3969 = !DILocation(line: 361, column: 15, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3921, file: !695, line: 361, column: 9)
!3971 = !DILocation(line: 361, column: 9, scope: !3921)
!3972 = !DILocation(line: 360, column: 24, scope: !3921)
!3973 = !DILocation(line: 362, column: 7, scope: !3970)
!3974 = !DILocation(line: 365, column: 1, scope: !3912)
!3975 = !DISubprogram(name: "__builtin___sprintf_chk", scope: !695, file: !695, line: 362, type: !3976, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!105, !125, !105, !136, !137, null}
!3978 = distinct !DISubprogram(name: "version_etc_arn", scope: !714, file: !714, line: 61, type: !3979, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4016)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{null, !3981, !137, !137, !137, !4015, !134}
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !3983)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !3984)
!3984 = !{!3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3983, file: !230, line: 51, baseType: !105, size: 32)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3983, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3983, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3983, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3983, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3983, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3983, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3983, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3983, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3983, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3983, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3983, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3983, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3983, file: !230, line: 70, baseType: !3999, size: 64, offset: 832)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3983, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3983, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3983, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3983, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3983, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3983, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3983, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3983, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3983, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3983, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3983, file: !230, line: 93, baseType: !3999, size: 64, offset: 1344)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3983, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3983, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3983, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3983, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!4016 = !{!4017, !4018, !4019, !4020, !4021, !4022}
!4017 = !DILocalVariable(name: "stream", arg: 1, scope: !3978, file: !714, line: 61, type: !3981)
!4018 = !DILocalVariable(name: "command_name", arg: 2, scope: !3978, file: !714, line: 62, type: !137)
!4019 = !DILocalVariable(name: "package", arg: 3, scope: !3978, file: !714, line: 62, type: !137)
!4020 = !DILocalVariable(name: "version", arg: 4, scope: !3978, file: !714, line: 63, type: !137)
!4021 = !DILocalVariable(name: "authors", arg: 5, scope: !3978, file: !714, line: 64, type: !4015)
!4022 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3978, file: !714, line: 64, type: !134)
!4023 = !DILocation(line: 0, scope: !3978)
!4024 = !DILocation(line: 66, column: 7, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !3978, file: !714, line: 66, column: 7)
!4026 = !DILocation(line: 66, column: 7, scope: !3978)
!4027 = !DILocation(line: 67, column: 5, scope: !4025)
!4028 = !DILocation(line: 69, column: 5, scope: !4025)
!4029 = !DILocation(line: 83, column: 3, scope: !3978)
!4030 = !DILocation(line: 85, column: 3, scope: !3978)
!4031 = !DILocation(line: 88, column: 3, scope: !3978)
!4032 = !DILocation(line: 95, column: 3, scope: !3978)
!4033 = !DILocation(line: 97, column: 3, scope: !3978)
!4034 = !DILocation(line: 105, column: 7, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !3978, file: !714, line: 98, column: 5)
!4036 = !DILocation(line: 106, column: 7, scope: !4035)
!4037 = !DILocation(line: 109, column: 7, scope: !4035)
!4038 = !DILocation(line: 110, column: 7, scope: !4035)
!4039 = !DILocation(line: 113, column: 7, scope: !4035)
!4040 = !DILocation(line: 115, column: 7, scope: !4035)
!4041 = !DILocation(line: 120, column: 7, scope: !4035)
!4042 = !DILocation(line: 122, column: 7, scope: !4035)
!4043 = !DILocation(line: 127, column: 7, scope: !4035)
!4044 = !DILocation(line: 129, column: 7, scope: !4035)
!4045 = !DILocation(line: 134, column: 7, scope: !4035)
!4046 = !DILocation(line: 137, column: 7, scope: !4035)
!4047 = !DILocation(line: 142, column: 7, scope: !4035)
!4048 = !DILocation(line: 145, column: 7, scope: !4035)
!4049 = !DILocation(line: 150, column: 7, scope: !4035)
!4050 = !DILocation(line: 154, column: 7, scope: !4035)
!4051 = !DILocation(line: 159, column: 7, scope: !4035)
!4052 = !DILocation(line: 163, column: 7, scope: !4035)
!4053 = !DILocation(line: 170, column: 7, scope: !4035)
!4054 = !DILocation(line: 174, column: 7, scope: !4035)
!4055 = !DILocation(line: 176, column: 1, scope: !3978)
!4056 = distinct !DISubprogram(name: "version_etc_ar", scope: !714, file: !714, line: 183, type: !4057, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4059)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{null, !3981, !137, !137, !137, !4015}
!4059 = !{!4060, !4061, !4062, !4063, !4064, !4065}
!4060 = !DILocalVariable(name: "stream", arg: 1, scope: !4056, file: !714, line: 183, type: !3981)
!4061 = !DILocalVariable(name: "command_name", arg: 2, scope: !4056, file: !714, line: 184, type: !137)
!4062 = !DILocalVariable(name: "package", arg: 3, scope: !4056, file: !714, line: 184, type: !137)
!4063 = !DILocalVariable(name: "version", arg: 4, scope: !4056, file: !714, line: 185, type: !137)
!4064 = !DILocalVariable(name: "authors", arg: 5, scope: !4056, file: !714, line: 185, type: !4015)
!4065 = !DILocalVariable(name: "n_authors", scope: !4056, file: !714, line: 187, type: !134)
!4066 = !DILocation(line: 0, scope: !4056)
!4067 = !DILocation(line: 189, column: 8, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4056, file: !714, line: 189, column: 3)
!4069 = !DILocation(line: 189, scope: !4068)
!4070 = !DILocation(line: 189, column: 23, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4068, file: !714, line: 189, column: 3)
!4072 = !DILocation(line: 189, column: 3, scope: !4068)
!4073 = !DILocation(line: 189, column: 52, scope: !4071)
!4074 = distinct !{!4074, !4072, !4075, !1069}
!4075 = !DILocation(line: 190, column: 5, scope: !4068)
!4076 = !DILocation(line: 191, column: 3, scope: !4056)
!4077 = !DILocation(line: 192, column: 1, scope: !4056)
!4078 = distinct !DISubprogram(name: "version_etc_va", scope: !714, file: !714, line: 199, type: !4079, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4089)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{null, !3981, !137, !137, !137, !4081}
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4083)
!4083 = !{!4084, !4086, !4087, !4088}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4082, file: !4085, line: 192, baseType: !98, size: 32)
!4085 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4082, file: !4085, line: 192, baseType: !98, size: 32, offset: 32)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4082, file: !4085, line: 192, baseType: !126, size: 64, offset: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4082, file: !4085, line: 192, baseType: !126, size: 64, offset: 128)
!4089 = !{!4090, !4091, !4092, !4093, !4094, !4095, !4096}
!4090 = !DILocalVariable(name: "stream", arg: 1, scope: !4078, file: !714, line: 199, type: !3981)
!4091 = !DILocalVariable(name: "command_name", arg: 2, scope: !4078, file: !714, line: 200, type: !137)
!4092 = !DILocalVariable(name: "package", arg: 3, scope: !4078, file: !714, line: 200, type: !137)
!4093 = !DILocalVariable(name: "version", arg: 4, scope: !4078, file: !714, line: 201, type: !137)
!4094 = !DILocalVariable(name: "authors", arg: 5, scope: !4078, file: !714, line: 201, type: !4081)
!4095 = !DILocalVariable(name: "n_authors", scope: !4078, file: !714, line: 203, type: !134)
!4096 = !DILocalVariable(name: "authtab", scope: !4078, file: !714, line: 204, type: !4097)
!4097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 640, elements: !80)
!4098 = !DILocation(line: 0, scope: !4078)
!4099 = !DILocation(line: 204, column: 3, scope: !4078)
!4100 = !DILocation(line: 204, column: 15, scope: !4078)
!4101 = !DILocation(line: 208, column: 35, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4103, file: !714, line: 206, column: 3)
!4103 = distinct !DILexicalBlock(scope: !4078, file: !714, line: 206, column: 3)
!4104 = !DILocation(line: 208, column: 33, scope: !4102)
!4105 = !DILocation(line: 208, column: 67, scope: !4102)
!4106 = !DILocation(line: 206, column: 3, scope: !4103)
!4107 = !DILocation(line: 208, column: 14, scope: !4102)
!4108 = !DILocation(line: 0, scope: !4103)
!4109 = !DILocation(line: 211, column: 3, scope: !4078)
!4110 = !DILocation(line: 213, column: 1, scope: !4078)
!4111 = distinct !DISubprogram(name: "version_etc", scope: !714, file: !714, line: 230, type: !4112, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4114)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{null, !3981, !137, !137, !137, null}
!4114 = !{!4115, !4116, !4117, !4118, !4119}
!4115 = !DILocalVariable(name: "stream", arg: 1, scope: !4111, file: !714, line: 230, type: !3981)
!4116 = !DILocalVariable(name: "command_name", arg: 2, scope: !4111, file: !714, line: 231, type: !137)
!4117 = !DILocalVariable(name: "package", arg: 3, scope: !4111, file: !714, line: 231, type: !137)
!4118 = !DILocalVariable(name: "version", arg: 4, scope: !4111, file: !714, line: 232, type: !137)
!4119 = !DILocalVariable(name: "authors", scope: !4111, file: !714, line: 234, type: !4120)
!4120 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1017, line: 52, baseType: !4121)
!4121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2363, line: 14, baseType: !4122)
!4122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4085, baseType: !4123)
!4123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4082, size: 192, elements: !75)
!4124 = !DILocation(line: 0, scope: !4111)
!4125 = !DILocation(line: 234, column: 3, scope: !4111)
!4126 = !DILocation(line: 234, column: 11, scope: !4111)
!4127 = !DILocation(line: 235, column: 3, scope: !4111)
!4128 = !DILocation(line: 236, column: 3, scope: !4111)
!4129 = !DILocation(line: 237, column: 3, scope: !4111)
!4130 = !DILocation(line: 238, column: 1, scope: !4111)
!4131 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !714, file: !714, line: 241, type: !535, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !959)
!4132 = !DILocation(line: 243, column: 3, scope: !4131)
!4133 = !DILocation(line: 248, column: 3, scope: !4131)
!4134 = !DILocation(line: 254, column: 3, scope: !4131)
!4135 = !DILocation(line: 259, column: 3, scope: !4131)
!4136 = !DILocation(line: 261, column: 1, scope: !4131)
!4137 = distinct !DISubprogram(name: "xnrealloc", scope: !4138, file: !4138, line: 147, type: !4139, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4141)
!4138 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!126, !126, !134, !134}
!4141 = !{!4142, !4143, !4144}
!4142 = !DILocalVariable(name: "p", arg: 1, scope: !4137, file: !4138, line: 147, type: !126)
!4143 = !DILocalVariable(name: "n", arg: 2, scope: !4137, file: !4138, line: 147, type: !134)
!4144 = !DILocalVariable(name: "s", arg: 3, scope: !4137, file: !4138, line: 147, type: !134)
!4145 = !DILocation(line: 0, scope: !4137)
!4146 = !DILocalVariable(name: "p", arg: 1, scope: !4147, file: !880, line: 83, type: !126)
!4147 = distinct !DISubprogram(name: "xreallocarray", scope: !880, file: !880, line: 83, type: !4139, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4148)
!4148 = !{!4146, !4149, !4150}
!4149 = !DILocalVariable(name: "n", arg: 2, scope: !4147, file: !880, line: 83, type: !134)
!4150 = !DILocalVariable(name: "s", arg: 3, scope: !4147, file: !880, line: 83, type: !134)
!4151 = !DILocation(line: 0, scope: !4147, inlinedAt: !4152)
!4152 = distinct !DILocation(line: 149, column: 10, scope: !4137)
!4153 = !DILocation(line: 85, column: 25, scope: !4147, inlinedAt: !4152)
!4154 = !DILocalVariable(name: "p", arg: 1, scope: !4155, file: !880, line: 37, type: !126)
!4155 = distinct !DISubprogram(name: "check_nonnull", scope: !880, file: !880, line: 37, type: !4156, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4158)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!126, !126}
!4158 = !{!4154}
!4159 = !DILocation(line: 0, scope: !4155, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 85, column: 10, scope: !4147, inlinedAt: !4152)
!4161 = !DILocation(line: 39, column: 8, scope: !4162, inlinedAt: !4160)
!4162 = distinct !DILexicalBlock(scope: !4155, file: !880, line: 39, column: 7)
!4163 = !DILocation(line: 39, column: 7, scope: !4155, inlinedAt: !4160)
!4164 = !DILocation(line: 40, column: 5, scope: !4162, inlinedAt: !4160)
!4165 = !DILocation(line: 149, column: 3, scope: !4137)
!4166 = !DILocation(line: 0, scope: !4147)
!4167 = !DILocation(line: 85, column: 25, scope: !4147)
!4168 = !DILocation(line: 0, scope: !4155, inlinedAt: !4169)
!4169 = distinct !DILocation(line: 85, column: 10, scope: !4147)
!4170 = !DILocation(line: 39, column: 8, scope: !4162, inlinedAt: !4169)
!4171 = !DILocation(line: 39, column: 7, scope: !4155, inlinedAt: !4169)
!4172 = !DILocation(line: 40, column: 5, scope: !4162, inlinedAt: !4169)
!4173 = !DILocation(line: 85, column: 3, scope: !4147)
!4174 = distinct !DISubprogram(name: "xmalloc", scope: !880, file: !880, line: 47, type: !4175, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4177)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!126, !134}
!4177 = !{!4178}
!4178 = !DILocalVariable(name: "s", arg: 1, scope: !4174, file: !880, line: 47, type: !134)
!4179 = !DILocation(line: 0, scope: !4174)
!4180 = !DILocation(line: 49, column: 25, scope: !4174)
!4181 = !DILocation(line: 0, scope: !4155, inlinedAt: !4182)
!4182 = distinct !DILocation(line: 49, column: 10, scope: !4174)
!4183 = !DILocation(line: 39, column: 8, scope: !4162, inlinedAt: !4182)
!4184 = !DILocation(line: 39, column: 7, scope: !4155, inlinedAt: !4182)
!4185 = !DILocation(line: 40, column: 5, scope: !4162, inlinedAt: !4182)
!4186 = !DILocation(line: 49, column: 3, scope: !4174)
!4187 = !DISubprogram(name: "malloc", scope: !1147, file: !1147, line: 540, type: !4175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!4188 = distinct !DISubprogram(name: "ximalloc", scope: !880, file: !880, line: 53, type: !4189, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4191)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!126, !899}
!4191 = !{!4192}
!4192 = !DILocalVariable(name: "s", arg: 1, scope: !4188, file: !880, line: 53, type: !899)
!4193 = !DILocation(line: 0, scope: !4188)
!4194 = !DILocalVariable(name: "s", arg: 1, scope: !4195, file: !4196, line: 55, type: !899)
!4195 = distinct !DISubprogram(name: "imalloc", scope: !4196, file: !4196, line: 55, type: !4189, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4197)
!4196 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4197 = !{!4194}
!4198 = !DILocation(line: 0, scope: !4195, inlinedAt: !4199)
!4199 = distinct !DILocation(line: 55, column: 25, scope: !4188)
!4200 = !DILocation(line: 57, column: 26, scope: !4195, inlinedAt: !4199)
!4201 = !DILocation(line: 0, scope: !4155, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 55, column: 10, scope: !4188)
!4203 = !DILocation(line: 39, column: 8, scope: !4162, inlinedAt: !4202)
!4204 = !DILocation(line: 39, column: 7, scope: !4155, inlinedAt: !4202)
!4205 = !DILocation(line: 40, column: 5, scope: !4162, inlinedAt: !4202)
!4206 = !DILocation(line: 55, column: 3, scope: !4188)
!4207 = distinct !DISubprogram(name: "xcharalloc", scope: !880, file: !880, line: 59, type: !4208, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4210)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!125, !134}
!4210 = !{!4211}
!4211 = !DILocalVariable(name: "n", arg: 1, scope: !4207, file: !880, line: 59, type: !134)
!4212 = !DILocation(line: 0, scope: !4207)
!4213 = !DILocation(line: 0, scope: !4174, inlinedAt: !4214)
!4214 = distinct !DILocation(line: 61, column: 10, scope: !4207)
!4215 = !DILocation(line: 49, column: 25, scope: !4174, inlinedAt: !4214)
!4216 = !DILocation(line: 0, scope: !4155, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 49, column: 10, scope: !4174, inlinedAt: !4214)
!4218 = !DILocation(line: 39, column: 8, scope: !4162, inlinedAt: !4217)
!4219 = !DILocation(line: 39, column: 7, scope: !4155, inlinedAt: !4217)
!4220 = !DILocation(line: 40, column: 5, scope: !4162, inlinedAt: !4217)
!4221 = !DILocation(line: 61, column: 3, scope: !4207)
!4222 = distinct !DISubprogram(name: "xrealloc", scope: !880, file: !880, line: 68, type: !4223, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4225)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!126, !126, !134}
!4225 = !{!4226, !4227}
!4226 = !DILocalVariable(name: "p", arg: 1, scope: !4222, file: !880, line: 68, type: !126)
!4227 = !DILocalVariable(name: "s", arg: 2, scope: !4222, file: !880, line: 68, type: !134)
!4228 = !DILocation(line: 0, scope: !4222)
!4229 = !DILocalVariable(name: "ptr", arg: 1, scope: !4230, file: !4231, line: 2057, type: !126)
!4230 = distinct !DISubprogram(name: "rpl_realloc", scope: !4231, file: !4231, line: 2057, type: !4223, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4232)
!4231 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4232 = !{!4229, !4233}
!4233 = !DILocalVariable(name: "size", arg: 2, scope: !4230, file: !4231, line: 2057, type: !134)
!4234 = !DILocation(line: 0, scope: !4230, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 70, column: 25, scope: !4222)
!4236 = !DILocation(line: 2059, column: 24, scope: !4230, inlinedAt: !4235)
!4237 = !DILocation(line: 2059, column: 10, scope: !4230, inlinedAt: !4235)
!4238 = !DILocation(line: 0, scope: !4155, inlinedAt: !4239)
!4239 = distinct !DILocation(line: 70, column: 10, scope: !4222)
!4240 = !DILocation(line: 39, column: 8, scope: !4162, inlinedAt: !4239)
!4241 = !DILocation(line: 39, column: 7, scope: !4155, inlinedAt: !4239)
!4242 = !DILocation(line: 40, column: 5, scope: !4162, inlinedAt: !4239)
!4243 = !DILocation(line: 70, column: 3, scope: !4222)
!4244 = !DISubprogram(name: "realloc", scope: !1147, file: !1147, line: 551, type: !4223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!4245 = distinct !DISubprogram(name: "xirealloc", scope: !880, file: !880, line: 74, type: !4246, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4248)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!126, !126, !899}
!4248 = !{!4249, !4250}
!4249 = !DILocalVariable(name: "p", arg: 1, scope: !4245, file: !880, line: 74, type: !126)
!4250 = !DILocalVariable(name: "s", arg: 2, scope: !4245, file: !880, line: 74, type: !899)
!4251 = !DILocation(line: 0, scope: !4245)
!4252 = !DILocalVariable(name: "p", arg: 1, scope: !4253, file: !4196, line: 66, type: !126)
!4253 = distinct !DISubprogram(name: "irealloc", scope: !4196, file: !4196, line: 66, type: !4246, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4254)
!4254 = !{!4252, !4255}
!4255 = !DILocalVariable(name: "s", arg: 2, scope: !4253, file: !4196, line: 66, type: !899)
!4256 = !DILocation(line: 0, scope: !4253, inlinedAt: !4257)
!4257 = distinct !DILocation(line: 76, column: 25, scope: !4245)
!4258 = !DILocation(line: 0, scope: !4230, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 68, column: 26, scope: !4253, inlinedAt: !4257)
!4260 = !DILocation(line: 2059, column: 24, scope: !4230, inlinedAt: !4259)
!4261 = !DILocation(line: 2059, column: 10, scope: !4230, inlinedAt: !4259)
!4262 = !DILocation(line: 0, scope: !4155, inlinedAt: !4263)
!4263 = distinct !DILocation(line: 76, column: 10, scope: !4245)
!4264 = !DILocation(line: 39, column: 8, scope: !4162, inlinedAt: !4263)
!4265 = !DILocation(line: 39, column: 7, scope: !4155, inlinedAt: !4263)
!4266 = !DILocation(line: 40, column: 5, scope: !4162, inlinedAt: !4263)
!4267 = !DILocation(line: 76, column: 3, scope: !4245)
!4268 = distinct !DISubprogram(name: "xireallocarray", scope: !880, file: !880, line: 89, type: !4269, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4271)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!126, !126, !899, !899}
!4271 = !{!4272, !4273, !4274}
!4272 = !DILocalVariable(name: "p", arg: 1, scope: !4268, file: !880, line: 89, type: !126)
!4273 = !DILocalVariable(name: "n", arg: 2, scope: !4268, file: !880, line: 89, type: !899)
!4274 = !DILocalVariable(name: "s", arg: 3, scope: !4268, file: !880, line: 89, type: !899)
!4275 = !DILocation(line: 0, scope: !4268)
!4276 = !DILocalVariable(name: "p", arg: 1, scope: !4277, file: !4196, line: 98, type: !126)
!4277 = distinct !DISubprogram(name: "ireallocarray", scope: !4196, file: !4196, line: 98, type: !4269, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4278)
!4278 = !{!4276, !4279, !4280}
!4279 = !DILocalVariable(name: "n", arg: 2, scope: !4277, file: !4196, line: 98, type: !899)
!4280 = !DILocalVariable(name: "s", arg: 3, scope: !4277, file: !4196, line: 98, type: !899)
!4281 = !DILocation(line: 0, scope: !4277, inlinedAt: !4282)
!4282 = distinct !DILocation(line: 91, column: 25, scope: !4268)
!4283 = !DILocation(line: 101, column: 13, scope: !4277, inlinedAt: !4282)
!4284 = !DILocation(line: 0, scope: !4155, inlinedAt: !4285)
!4285 = distinct !DILocation(line: 91, column: 10, scope: !4268)
!4286 = !DILocation(line: 39, column: 8, scope: !4162, inlinedAt: !4285)
!4287 = !DILocation(line: 39, column: 7, scope: !4155, inlinedAt: !4285)
!4288 = !DILocation(line: 40, column: 5, scope: !4162, inlinedAt: !4285)
!4289 = !DILocation(line: 91, column: 3, scope: !4268)
!4290 = distinct !DISubprogram(name: "xnmalloc", scope: !880, file: !880, line: 98, type: !4291, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4293)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!126, !134, !134}
!4293 = !{!4294, !4295}
!4294 = !DILocalVariable(name: "n", arg: 1, scope: !4290, file: !880, line: 98, type: !134)
!4295 = !DILocalVariable(name: "s", arg: 2, scope: !4290, file: !880, line: 98, type: !134)
!4296 = !DILocation(line: 0, scope: !4290)
!4297 = !DILocation(line: 0, scope: !4147, inlinedAt: !4298)
!4298 = distinct !DILocation(line: 100, column: 10, scope: !4290)
!4299 = !DILocation(line: 85, column: 25, scope: !4147, inlinedAt: !4298)
!4300 = !DILocation(line: 0, scope: !4155, inlinedAt: !4301)
!4301 = distinct !DILocation(line: 85, column: 10, scope: !4147, inlinedAt: !4298)
!4302 = !DILocation(line: 39, column: 8, scope: !4162, inlinedAt: !4301)
!4303 = !DILocation(line: 39, column: 7, scope: !4155, inlinedAt: !4301)
!4304 = !DILocation(line: 40, column: 5, scope: !4162, inlinedAt: !4301)
!4305 = !DILocation(line: 100, column: 3, scope: !4290)
!4306 = distinct !DISubprogram(name: "xinmalloc", scope: !880, file: !880, line: 104, type: !4307, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4309)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!126, !899, !899}
!4309 = !{!4310, !4311}
!4310 = !DILocalVariable(name: "n", arg: 1, scope: !4306, file: !880, line: 104, type: !899)
!4311 = !DILocalVariable(name: "s", arg: 2, scope: !4306, file: !880, line: 104, type: !899)
!4312 = !DILocation(line: 0, scope: !4306)
!4313 = !DILocation(line: 0, scope: !4268, inlinedAt: !4314)
!4314 = distinct !DILocation(line: 106, column: 10, scope: !4306)
!4315 = !DILocation(line: 0, scope: !4277, inlinedAt: !4316)
!4316 = distinct !DILocation(line: 91, column: 25, scope: !4268, inlinedAt: !4314)
!4317 = !DILocation(line: 101, column: 13, scope: !4277, inlinedAt: !4316)
!4318 = !DILocation(line: 0, scope: !4155, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 91, column: 10, scope: !4268, inlinedAt: !4314)
!4320 = !DILocation(line: 39, column: 8, scope: !4162, inlinedAt: !4319)
!4321 = !DILocation(line: 39, column: 7, scope: !4155, inlinedAt: !4319)
!4322 = !DILocation(line: 40, column: 5, scope: !4162, inlinedAt: !4319)
!4323 = !DILocation(line: 106, column: 3, scope: !4306)
!4324 = distinct !DISubprogram(name: "x2realloc", scope: !880, file: !880, line: 116, type: !4325, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4327)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{!126, !126, !886}
!4327 = !{!4328, !4329}
!4328 = !DILocalVariable(name: "p", arg: 1, scope: !4324, file: !880, line: 116, type: !126)
!4329 = !DILocalVariable(name: "ps", arg: 2, scope: !4324, file: !880, line: 116, type: !886)
!4330 = !DILocation(line: 0, scope: !4324)
!4331 = !DILocation(line: 0, scope: !883, inlinedAt: !4332)
!4332 = distinct !DILocation(line: 118, column: 10, scope: !4324)
!4333 = !DILocation(line: 178, column: 14, scope: !883, inlinedAt: !4332)
!4334 = !DILocation(line: 180, column: 9, scope: !4335, inlinedAt: !4332)
!4335 = distinct !DILexicalBlock(scope: !883, file: !880, line: 180, column: 7)
!4336 = !DILocation(line: 180, column: 7, scope: !883, inlinedAt: !4332)
!4337 = !DILocation(line: 182, column: 13, scope: !4338, inlinedAt: !4332)
!4338 = distinct !DILexicalBlock(scope: !4339, file: !880, line: 182, column: 11)
!4339 = distinct !DILexicalBlock(scope: !4335, file: !880, line: 181, column: 5)
!4340 = !DILocation(line: 182, column: 11, scope: !4339, inlinedAt: !4332)
!4341 = !DILocation(line: 197, column: 11, scope: !4342, inlinedAt: !4332)
!4342 = distinct !DILexicalBlock(scope: !4343, file: !880, line: 197, column: 11)
!4343 = distinct !DILexicalBlock(scope: !4335, file: !880, line: 195, column: 5)
!4344 = !DILocation(line: 197, column: 11, scope: !4343, inlinedAt: !4332)
!4345 = !DILocation(line: 198, column: 9, scope: !4342, inlinedAt: !4332)
!4346 = !DILocation(line: 0, scope: !4147, inlinedAt: !4347)
!4347 = distinct !DILocation(line: 201, column: 7, scope: !883, inlinedAt: !4332)
!4348 = !DILocation(line: 85, column: 25, scope: !4147, inlinedAt: !4347)
!4349 = !DILocation(line: 0, scope: !4155, inlinedAt: !4350)
!4350 = distinct !DILocation(line: 85, column: 10, scope: !4147, inlinedAt: !4347)
!4351 = !DILocation(line: 39, column: 8, scope: !4162, inlinedAt: !4350)
!4352 = !DILocation(line: 39, column: 7, scope: !4155, inlinedAt: !4350)
!4353 = !DILocation(line: 40, column: 5, scope: !4162, inlinedAt: !4350)
!4354 = !DILocation(line: 202, column: 7, scope: !883, inlinedAt: !4332)
!4355 = !DILocation(line: 118, column: 3, scope: !4324)
!4356 = !DILocation(line: 0, scope: !883)
!4357 = !DILocation(line: 178, column: 14, scope: !883)
!4358 = !DILocation(line: 180, column: 9, scope: !4335)
!4359 = !DILocation(line: 180, column: 7, scope: !883)
!4360 = !DILocation(line: 182, column: 13, scope: !4338)
!4361 = !DILocation(line: 182, column: 11, scope: !4339)
!4362 = !DILocation(line: 190, column: 30, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4338, file: !880, line: 183, column: 9)
!4364 = !DILocation(line: 191, column: 16, scope: !4363)
!4365 = !DILocation(line: 191, column: 13, scope: !4363)
!4366 = !DILocation(line: 192, column: 9, scope: !4363)
!4367 = !DILocation(line: 197, column: 11, scope: !4342)
!4368 = !DILocation(line: 197, column: 11, scope: !4343)
!4369 = !DILocation(line: 198, column: 9, scope: !4342)
!4370 = !DILocation(line: 0, scope: !4147, inlinedAt: !4371)
!4371 = distinct !DILocation(line: 201, column: 7, scope: !883)
!4372 = !DILocation(line: 85, column: 25, scope: !4147, inlinedAt: !4371)
!4373 = !DILocation(line: 0, scope: !4155, inlinedAt: !4374)
!4374 = distinct !DILocation(line: 85, column: 10, scope: !4147, inlinedAt: !4371)
!4375 = !DILocation(line: 39, column: 8, scope: !4162, inlinedAt: !4374)
!4376 = !DILocation(line: 39, column: 7, scope: !4155, inlinedAt: !4374)
!4377 = !DILocation(line: 40, column: 5, scope: !4162, inlinedAt: !4374)
!4378 = !DILocation(line: 202, column: 7, scope: !883)
!4379 = !DILocation(line: 203, column: 3, scope: !883)
!4380 = !DILocation(line: 0, scope: !895)
!4381 = !DILocation(line: 230, column: 14, scope: !895)
!4382 = !DILocation(line: 238, column: 7, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !895, file: !880, line: 238, column: 7)
!4384 = !DILocation(line: 238, column: 7, scope: !895)
!4385 = !DILocation(line: 240, column: 9, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !895, file: !880, line: 240, column: 7)
!4387 = !DILocation(line: 240, column: 18, scope: !4386)
!4388 = !DILocation(line: 253, column: 8, scope: !895)
!4389 = !DILocation(line: 258, column: 27, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4391, file: !880, line: 257, column: 5)
!4391 = distinct !DILexicalBlock(scope: !895, file: !880, line: 256, column: 7)
!4392 = !DILocation(line: 259, column: 50, scope: !4390)
!4393 = !DILocation(line: 259, column: 32, scope: !4390)
!4394 = !DILocation(line: 260, column: 5, scope: !4390)
!4395 = !DILocation(line: 262, column: 9, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !895, file: !880, line: 262, column: 7)
!4397 = !DILocation(line: 262, column: 7, scope: !895)
!4398 = !DILocation(line: 263, column: 9, scope: !4396)
!4399 = !DILocation(line: 263, column: 5, scope: !4396)
!4400 = !DILocation(line: 264, column: 9, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !895, file: !880, line: 264, column: 7)
!4402 = !DILocation(line: 264, column: 14, scope: !4401)
!4403 = !DILocation(line: 265, column: 7, scope: !4401)
!4404 = !DILocation(line: 265, column: 11, scope: !4401)
!4405 = !DILocation(line: 266, column: 11, scope: !4401)
!4406 = !DILocation(line: 267, column: 14, scope: !4401)
!4407 = !DILocation(line: 264, column: 7, scope: !895)
!4408 = !DILocation(line: 268, column: 5, scope: !4401)
!4409 = !DILocation(line: 0, scope: !4222, inlinedAt: !4410)
!4410 = distinct !DILocation(line: 269, column: 8, scope: !895)
!4411 = !DILocation(line: 0, scope: !4230, inlinedAt: !4412)
!4412 = distinct !DILocation(line: 70, column: 25, scope: !4222, inlinedAt: !4410)
!4413 = !DILocation(line: 2059, column: 24, scope: !4230, inlinedAt: !4412)
!4414 = !DILocation(line: 2059, column: 10, scope: !4230, inlinedAt: !4412)
!4415 = !DILocation(line: 0, scope: !4155, inlinedAt: !4416)
!4416 = distinct !DILocation(line: 70, column: 10, scope: !4222, inlinedAt: !4410)
!4417 = !DILocation(line: 39, column: 8, scope: !4162, inlinedAt: !4416)
!4418 = !DILocation(line: 39, column: 7, scope: !4155, inlinedAt: !4416)
!4419 = !DILocation(line: 40, column: 5, scope: !4162, inlinedAt: !4416)
!4420 = !DILocation(line: 270, column: 7, scope: !895)
!4421 = !DILocation(line: 271, column: 3, scope: !895)
!4422 = distinct !DISubprogram(name: "xzalloc", scope: !880, file: !880, line: 279, type: !4175, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4423)
!4423 = !{!4424}
!4424 = !DILocalVariable(name: "s", arg: 1, scope: !4422, file: !880, line: 279, type: !134)
!4425 = !DILocation(line: 0, scope: !4422)
!4426 = !DILocalVariable(name: "n", arg: 1, scope: !4427, file: !880, line: 294, type: !134)
!4427 = distinct !DISubprogram(name: "xcalloc", scope: !880, file: !880, line: 294, type: !4291, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4428)
!4428 = !{!4426, !4429}
!4429 = !DILocalVariable(name: "s", arg: 2, scope: !4427, file: !880, line: 294, type: !134)
!4430 = !DILocation(line: 0, scope: !4427, inlinedAt: !4431)
!4431 = distinct !DILocation(line: 281, column: 10, scope: !4422)
!4432 = !DILocation(line: 296, column: 25, scope: !4427, inlinedAt: !4431)
!4433 = !DILocation(line: 0, scope: !4155, inlinedAt: !4434)
!4434 = distinct !DILocation(line: 296, column: 10, scope: !4427, inlinedAt: !4431)
!4435 = !DILocation(line: 39, column: 8, scope: !4162, inlinedAt: !4434)
!4436 = !DILocation(line: 39, column: 7, scope: !4155, inlinedAt: !4434)
!4437 = !DILocation(line: 40, column: 5, scope: !4162, inlinedAt: !4434)
!4438 = !DILocation(line: 281, column: 3, scope: !4422)
!4439 = !DISubprogram(name: "calloc", scope: !1147, file: !1147, line: 543, type: !4291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!4440 = !DILocation(line: 0, scope: !4427)
!4441 = !DILocation(line: 296, column: 25, scope: !4427)
!4442 = !DILocation(line: 0, scope: !4155, inlinedAt: !4443)
!4443 = distinct !DILocation(line: 296, column: 10, scope: !4427)
!4444 = !DILocation(line: 39, column: 8, scope: !4162, inlinedAt: !4443)
!4445 = !DILocation(line: 39, column: 7, scope: !4155, inlinedAt: !4443)
!4446 = !DILocation(line: 40, column: 5, scope: !4162, inlinedAt: !4443)
!4447 = !DILocation(line: 296, column: 3, scope: !4427)
!4448 = distinct !DISubprogram(name: "xizalloc", scope: !880, file: !880, line: 285, type: !4189, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4449)
!4449 = !{!4450}
!4450 = !DILocalVariable(name: "s", arg: 1, scope: !4448, file: !880, line: 285, type: !899)
!4451 = !DILocation(line: 0, scope: !4448)
!4452 = !DILocalVariable(name: "n", arg: 1, scope: !4453, file: !880, line: 300, type: !899)
!4453 = distinct !DISubprogram(name: "xicalloc", scope: !880, file: !880, line: 300, type: !4307, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4454)
!4454 = !{!4452, !4455}
!4455 = !DILocalVariable(name: "s", arg: 2, scope: !4453, file: !880, line: 300, type: !899)
!4456 = !DILocation(line: 0, scope: !4453, inlinedAt: !4457)
!4457 = distinct !DILocation(line: 287, column: 10, scope: !4448)
!4458 = !DILocalVariable(name: "n", arg: 1, scope: !4459, file: !4196, line: 77, type: !899)
!4459 = distinct !DISubprogram(name: "icalloc", scope: !4196, file: !4196, line: 77, type: !4307, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4460)
!4460 = !{!4458, !4461}
!4461 = !DILocalVariable(name: "s", arg: 2, scope: !4459, file: !4196, line: 77, type: !899)
!4462 = !DILocation(line: 0, scope: !4459, inlinedAt: !4463)
!4463 = distinct !DILocation(line: 302, column: 25, scope: !4453, inlinedAt: !4457)
!4464 = !DILocation(line: 91, column: 10, scope: !4459, inlinedAt: !4463)
!4465 = !DILocation(line: 0, scope: !4155, inlinedAt: !4466)
!4466 = distinct !DILocation(line: 302, column: 10, scope: !4453, inlinedAt: !4457)
!4467 = !DILocation(line: 39, column: 8, scope: !4162, inlinedAt: !4466)
!4468 = !DILocation(line: 39, column: 7, scope: !4155, inlinedAt: !4466)
!4469 = !DILocation(line: 40, column: 5, scope: !4162, inlinedAt: !4466)
!4470 = !DILocation(line: 287, column: 3, scope: !4448)
!4471 = !DILocation(line: 0, scope: !4453)
!4472 = !DILocation(line: 0, scope: !4459, inlinedAt: !4473)
!4473 = distinct !DILocation(line: 302, column: 25, scope: !4453)
!4474 = !DILocation(line: 91, column: 10, scope: !4459, inlinedAt: !4473)
!4475 = !DILocation(line: 0, scope: !4155, inlinedAt: !4476)
!4476 = distinct !DILocation(line: 302, column: 10, scope: !4453)
!4477 = !DILocation(line: 39, column: 8, scope: !4162, inlinedAt: !4476)
!4478 = !DILocation(line: 39, column: 7, scope: !4155, inlinedAt: !4476)
!4479 = !DILocation(line: 40, column: 5, scope: !4162, inlinedAt: !4476)
!4480 = !DILocation(line: 302, column: 3, scope: !4453)
!4481 = distinct !DISubprogram(name: "xmemdup", scope: !880, file: !880, line: 310, type: !4482, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4484)
!4482 = !DISubroutineType(types: !4483)
!4483 = !{!126, !1169, !134}
!4484 = !{!4485, !4486}
!4485 = !DILocalVariable(name: "p", arg: 1, scope: !4481, file: !880, line: 310, type: !1169)
!4486 = !DILocalVariable(name: "s", arg: 2, scope: !4481, file: !880, line: 310, type: !134)
!4487 = !DILocation(line: 0, scope: !4481)
!4488 = !DILocation(line: 0, scope: !4174, inlinedAt: !4489)
!4489 = distinct !DILocation(line: 312, column: 18, scope: !4481)
!4490 = !DILocation(line: 49, column: 25, scope: !4174, inlinedAt: !4489)
!4491 = !DILocation(line: 0, scope: !4155, inlinedAt: !4492)
!4492 = distinct !DILocation(line: 49, column: 10, scope: !4174, inlinedAt: !4489)
!4493 = !DILocation(line: 39, column: 8, scope: !4162, inlinedAt: !4492)
!4494 = !DILocation(line: 39, column: 7, scope: !4155, inlinedAt: !4492)
!4495 = !DILocation(line: 40, column: 5, scope: !4162, inlinedAt: !4492)
!4496 = !DILocalVariable(name: "__dest", arg: 1, scope: !4497, file: !2479, line: 26, type: !4500)
!4497 = distinct !DISubprogram(name: "memcpy", scope: !2479, file: !2479, line: 26, type: !4498, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4501)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!126, !4500, !1168, !134}
!4500 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !126)
!4501 = !{!4496, !4502, !4503}
!4502 = !DILocalVariable(name: "__src", arg: 2, scope: !4497, file: !2479, line: 26, type: !1168)
!4503 = !DILocalVariable(name: "__len", arg: 3, scope: !4497, file: !2479, line: 26, type: !134)
!4504 = !DILocation(line: 0, scope: !4497, inlinedAt: !4505)
!4505 = distinct !DILocation(line: 312, column: 10, scope: !4481)
!4506 = !DILocation(line: 29, column: 10, scope: !4497, inlinedAt: !4505)
!4507 = !DILocation(line: 312, column: 3, scope: !4481)
!4508 = distinct !DISubprogram(name: "ximemdup", scope: !880, file: !880, line: 316, type: !4509, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4511)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!126, !1169, !899}
!4511 = !{!4512, !4513}
!4512 = !DILocalVariable(name: "p", arg: 1, scope: !4508, file: !880, line: 316, type: !1169)
!4513 = !DILocalVariable(name: "s", arg: 2, scope: !4508, file: !880, line: 316, type: !899)
!4514 = !DILocation(line: 0, scope: !4508)
!4515 = !DILocation(line: 0, scope: !4188, inlinedAt: !4516)
!4516 = distinct !DILocation(line: 318, column: 18, scope: !4508)
!4517 = !DILocation(line: 0, scope: !4195, inlinedAt: !4518)
!4518 = distinct !DILocation(line: 55, column: 25, scope: !4188, inlinedAt: !4516)
!4519 = !DILocation(line: 57, column: 26, scope: !4195, inlinedAt: !4518)
!4520 = !DILocation(line: 0, scope: !4155, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 55, column: 10, scope: !4188, inlinedAt: !4516)
!4522 = !DILocation(line: 39, column: 8, scope: !4162, inlinedAt: !4521)
!4523 = !DILocation(line: 39, column: 7, scope: !4155, inlinedAt: !4521)
!4524 = !DILocation(line: 40, column: 5, scope: !4162, inlinedAt: !4521)
!4525 = !DILocation(line: 0, scope: !4497, inlinedAt: !4526)
!4526 = distinct !DILocation(line: 318, column: 10, scope: !4508)
!4527 = !DILocation(line: 29, column: 10, scope: !4497, inlinedAt: !4526)
!4528 = !DILocation(line: 318, column: 3, scope: !4508)
!4529 = distinct !DISubprogram(name: "ximemdup0", scope: !880, file: !880, line: 325, type: !4530, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4532)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!125, !1169, !899}
!4532 = !{!4533, !4534, !4535}
!4533 = !DILocalVariable(name: "p", arg: 1, scope: !4529, file: !880, line: 325, type: !1169)
!4534 = !DILocalVariable(name: "s", arg: 2, scope: !4529, file: !880, line: 325, type: !899)
!4535 = !DILocalVariable(name: "result", scope: !4529, file: !880, line: 327, type: !125)
!4536 = !DILocation(line: 0, scope: !4529)
!4537 = !DILocation(line: 327, column: 30, scope: !4529)
!4538 = !DILocation(line: 0, scope: !4188, inlinedAt: !4539)
!4539 = distinct !DILocation(line: 327, column: 18, scope: !4529)
!4540 = !DILocation(line: 0, scope: !4195, inlinedAt: !4541)
!4541 = distinct !DILocation(line: 55, column: 25, scope: !4188, inlinedAt: !4539)
!4542 = !DILocation(line: 57, column: 26, scope: !4195, inlinedAt: !4541)
!4543 = !DILocation(line: 0, scope: !4155, inlinedAt: !4544)
!4544 = distinct !DILocation(line: 55, column: 10, scope: !4188, inlinedAt: !4539)
!4545 = !DILocation(line: 39, column: 8, scope: !4162, inlinedAt: !4544)
!4546 = !DILocation(line: 39, column: 7, scope: !4155, inlinedAt: !4544)
!4547 = !DILocation(line: 40, column: 5, scope: !4162, inlinedAt: !4544)
!4548 = !DILocation(line: 328, column: 3, scope: !4529)
!4549 = !DILocation(line: 328, column: 13, scope: !4529)
!4550 = !DILocation(line: 0, scope: !4497, inlinedAt: !4551)
!4551 = distinct !DILocation(line: 329, column: 10, scope: !4529)
!4552 = !DILocation(line: 29, column: 10, scope: !4497, inlinedAt: !4551)
!4553 = !DILocation(line: 329, column: 3, scope: !4529)
!4554 = distinct !DISubprogram(name: "xstrdup", scope: !880, file: !880, line: 335, type: !1149, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4555)
!4555 = !{!4556}
!4556 = !DILocalVariable(name: "string", arg: 1, scope: !4554, file: !880, line: 335, type: !137)
!4557 = !DILocation(line: 0, scope: !4554)
!4558 = !DILocation(line: 337, column: 27, scope: !4554)
!4559 = !DILocation(line: 337, column: 43, scope: !4554)
!4560 = !DILocation(line: 0, scope: !4481, inlinedAt: !4561)
!4561 = distinct !DILocation(line: 337, column: 10, scope: !4554)
!4562 = !DILocation(line: 0, scope: !4174, inlinedAt: !4563)
!4563 = distinct !DILocation(line: 312, column: 18, scope: !4481, inlinedAt: !4561)
!4564 = !DILocation(line: 49, column: 25, scope: !4174, inlinedAt: !4563)
!4565 = !DILocation(line: 0, scope: !4155, inlinedAt: !4566)
!4566 = distinct !DILocation(line: 49, column: 10, scope: !4174, inlinedAt: !4563)
!4567 = !DILocation(line: 39, column: 8, scope: !4162, inlinedAt: !4566)
!4568 = !DILocation(line: 39, column: 7, scope: !4155, inlinedAt: !4566)
!4569 = !DILocation(line: 40, column: 5, scope: !4162, inlinedAt: !4566)
!4570 = !DILocation(line: 0, scope: !4497, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 312, column: 10, scope: !4481, inlinedAt: !4561)
!4572 = !DILocation(line: 29, column: 10, scope: !4497, inlinedAt: !4571)
!4573 = !DILocation(line: 337, column: 3, scope: !4554)
!4574 = distinct !DISubprogram(name: "xalloc_die", scope: !801, file: !801, line: 32, type: !535, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4575)
!4575 = !{!4576}
!4576 = !DILocalVariable(name: "__errstatus", scope: !4577, file: !801, line: 34, type: !426)
!4577 = distinct !DILexicalBlock(scope: !4574, file: !801, line: 34, column: 3)
!4578 = !DILocation(line: 34, column: 3, scope: !4577)
!4579 = !DILocation(line: 0, scope: !4577)
!4580 = !DILocation(line: 40, column: 3, scope: !4574)
!4581 = distinct !DISubprogram(name: "c_strtod", scope: !809, file: !809, line: 102, type: !4582, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !808, retainedNodes: !4584)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!187, !137, !1174}
!4584 = !{!4585, !4586, !4587, !4588}
!4585 = !DILocalVariable(name: "nptr", arg: 1, scope: !4581, file: !809, line: 102, type: !137)
!4586 = !DILocalVariable(name: "endptr", arg: 2, scope: !4581, file: !809, line: 102, type: !1174)
!4587 = !DILocalVariable(name: "r", scope: !4581, file: !809, line: 104, type: !187)
!4588 = !DILocalVariable(name: "locale", scope: !4581, file: !809, line: 108, type: !811)
!4589 = !DILocation(line: 0, scope: !4581)
!4590 = !DILocation(line: 65, column: 8, scope: !4591, inlinedAt: !4595)
!4591 = distinct !DILexicalBlock(scope: !4592, file: !809, line: 65, column: 7)
!4592 = distinct !DISubprogram(name: "c_locale", scope: !809, file: !809, line: 63, type: !4593, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !808, retainedNodes: !959)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!811}
!4595 = distinct !DILocation(line: 108, column: 21, scope: !4581)
!4596 = !DILocation(line: 65, column: 7, scope: !4592, inlinedAt: !4595)
!4597 = !DILocation(line: 66, column: 22, scope: !4591, inlinedAt: !4595)
!4598 = !DILocation(line: 66, column: 20, scope: !4591, inlinedAt: !4595)
!4599 = !DILocation(line: 66, column: 5, scope: !4591, inlinedAt: !4595)
!4600 = !DILocation(line: 67, column: 10, scope: !4592, inlinedAt: !4595)
!4601 = !DILocation(line: 109, column: 8, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4581, file: !809, line: 109, column: 7)
!4603 = !DILocation(line: 109, column: 7, scope: !4581)
!4604 = !DILocation(line: 111, column: 11, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4606, file: !809, line: 111, column: 11)
!4606 = distinct !DILexicalBlock(scope: !4602, file: !809, line: 110, column: 5)
!4607 = !DILocation(line: 111, column: 11, scope: !4606)
!4608 = !DILocation(line: 112, column: 17, scope: !4605)
!4609 = !DILocation(line: 112, column: 9, scope: !4605)
!4610 = !DILocation(line: 118, column: 7, scope: !4581)
!4611 = !DILocation(line: 342, column: 3, scope: !4581)
!4612 = !DILocation(line: 343, column: 1, scope: !4581)
!4613 = !DISubprogram(name: "newlocale", scope: !1139, file: !1139, line: 141, type: !4614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!811, !105, !137, !811}
!4616 = !DISubprogram(name: "strtod_l", scope: !1147, file: !1147, line: 296, type: !4617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!187, !1012, !2067, !811}
!4619 = distinct !DISubprogram(name: "close_stream", scope: !916, file: !916, line: 55, type: !4620, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !915, retainedNodes: !4656)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!105, !4622}
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !4624)
!4624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !4625)
!4625 = !{!4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4624, file: !230, line: 51, baseType: !105, size: 32)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4624, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4624, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4624, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4624, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4624, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4624, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4624, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4624, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4624, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4624, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4624, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4624, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4624, file: !230, line: 70, baseType: !4640, size: 64, offset: 832)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4624, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4624, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4624, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4624, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4624, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4624, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4624, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4624, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4624, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4624, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4624, file: !230, line: 93, baseType: !4640, size: 64, offset: 1344)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4624, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4624, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4624, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4624, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!4656 = !{!4657, !4658, !4660, !4661}
!4657 = !DILocalVariable(name: "stream", arg: 1, scope: !4619, file: !916, line: 55, type: !4622)
!4658 = !DILocalVariable(name: "some_pending", scope: !4619, file: !916, line: 57, type: !4659)
!4659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!4660 = !DILocalVariable(name: "prev_fail", scope: !4619, file: !916, line: 58, type: !4659)
!4661 = !DILocalVariable(name: "fclose_fail", scope: !4619, file: !916, line: 59, type: !4659)
!4662 = !DILocation(line: 0, scope: !4619)
!4663 = !DILocation(line: 57, column: 30, scope: !4619)
!4664 = !DILocalVariable(name: "__stream", arg: 1, scope: !4665, file: !2319, line: 135, type: !4622)
!4665 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2319, file: !2319, line: 135, type: !4620, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !915, retainedNodes: !4666)
!4666 = !{!4664}
!4667 = !DILocation(line: 0, scope: !4665, inlinedAt: !4668)
!4668 = distinct !DILocation(line: 58, column: 27, scope: !4619)
!4669 = !DILocation(line: 137, column: 10, scope: !4665, inlinedAt: !4668)
!4670 = !{!2328, !1023, i64 0}
!4671 = !DILocation(line: 58, column: 43, scope: !4619)
!4672 = !DILocation(line: 59, column: 29, scope: !4619)
!4673 = !DILocation(line: 59, column: 45, scope: !4619)
!4674 = !DILocation(line: 69, column: 17, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4619, file: !916, line: 69, column: 7)
!4676 = !DILocation(line: 57, column: 50, scope: !4619)
!4677 = !DILocation(line: 69, column: 33, scope: !4675)
!4678 = !DILocation(line: 69, column: 53, scope: !4675)
!4679 = !DILocation(line: 69, column: 59, scope: !4675)
!4680 = !DILocation(line: 69, column: 7, scope: !4619)
!4681 = !DILocation(line: 71, column: 11, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4675, file: !916, line: 70, column: 5)
!4683 = !DILocation(line: 72, column: 9, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4682, file: !916, line: 71, column: 11)
!4685 = !DILocation(line: 72, column: 15, scope: !4684)
!4686 = !DILocation(line: 77, column: 1, scope: !4619)
!4687 = !DISubprogram(name: "__fpending", scope: !4688, file: !4688, line: 75, type: !4689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!4688 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!134, !4622}
!4691 = distinct !DISubprogram(name: "rpl_fclose", scope: !918, file: !918, line: 58, type: !4692, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !4728)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!105, !4694}
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !4696)
!4696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !4697)
!4697 = !{!4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4696, file: !230, line: 51, baseType: !105, size: 32)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4696, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4696, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4696, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4696, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4696, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4696, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4696, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4696, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4696, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4696, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4696, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4696, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4696, file: !230, line: 70, baseType: !4712, size: 64, offset: 832)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4696, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4696, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4696, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4696, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4696, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4696, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4696, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4696, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4696, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4696, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4696, file: !230, line: 93, baseType: !4712, size: 64, offset: 1344)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4696, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4696, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4696, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4696, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!4728 = !{!4729, !4730, !4731, !4732}
!4729 = !DILocalVariable(name: "fp", arg: 1, scope: !4691, file: !918, line: 58, type: !4694)
!4730 = !DILocalVariable(name: "saved_errno", scope: !4691, file: !918, line: 60, type: !105)
!4731 = !DILocalVariable(name: "fd", scope: !4691, file: !918, line: 63, type: !105)
!4732 = !DILocalVariable(name: "result", scope: !4691, file: !918, line: 74, type: !105)
!4733 = !DILocation(line: 0, scope: !4691)
!4734 = !DILocation(line: 63, column: 12, scope: !4691)
!4735 = !DILocation(line: 64, column: 10, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4691, file: !918, line: 64, column: 7)
!4737 = !DILocation(line: 64, column: 7, scope: !4691)
!4738 = !DILocation(line: 65, column: 12, scope: !4736)
!4739 = !DILocation(line: 65, column: 5, scope: !4736)
!4740 = !DILocation(line: 70, column: 9, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4691, file: !918, line: 70, column: 7)
!4742 = !DILocation(line: 70, column: 23, scope: !4741)
!4743 = !DILocation(line: 70, column: 33, scope: !4741)
!4744 = !DILocation(line: 70, column: 26, scope: !4741)
!4745 = !DILocation(line: 70, column: 59, scope: !4741)
!4746 = !DILocation(line: 71, column: 7, scope: !4741)
!4747 = !DILocation(line: 71, column: 10, scope: !4741)
!4748 = !DILocation(line: 70, column: 7, scope: !4691)
!4749 = !DILocation(line: 100, column: 12, scope: !4691)
!4750 = !DILocation(line: 105, column: 7, scope: !4691)
!4751 = !DILocation(line: 72, column: 19, scope: !4741)
!4752 = !DILocation(line: 105, column: 19, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4691, file: !918, line: 105, column: 7)
!4754 = !DILocation(line: 107, column: 13, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4753, file: !918, line: 106, column: 5)
!4756 = !DILocation(line: 109, column: 5, scope: !4755)
!4757 = !DILocation(line: 112, column: 1, scope: !4691)
!4758 = !DISubprogram(name: "fileno", scope: !1017, file: !1017, line: 809, type: !4692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!4759 = !DISubprogram(name: "fclose", scope: !1017, file: !1017, line: 178, type: !4692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!4760 = !DISubprogram(name: "__freading", scope: !4688, file: !4688, line: 51, type: !4692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!4761 = !DISubprogram(name: "lseek", scope: !1673, file: !1673, line: 339, type: !4762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!252, !105, !252, !105}
!4764 = distinct !DISubprogram(name: "rpl_fflush", scope: !920, file: !920, line: 130, type: !4765, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4801)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!105, !4767}
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !4769)
!4769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !4770)
!4770 = !{!4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4769, file: !230, line: 51, baseType: !105, size: 32)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4769, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4769, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4769, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4769, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4769, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4769, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4769, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4769, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4769, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4769, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4769, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4769, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4769, file: !230, line: 70, baseType: !4785, size: 64, offset: 832)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4769, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4769, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4769, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4769, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4769, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4769, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4769, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4769, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4769, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4769, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4769, file: !230, line: 93, baseType: !4785, size: 64, offset: 1344)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4769, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4769, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4769, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4769, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!4801 = !{!4802}
!4802 = !DILocalVariable(name: "stream", arg: 1, scope: !4764, file: !920, line: 130, type: !4767)
!4803 = !DILocation(line: 0, scope: !4764)
!4804 = !DILocation(line: 151, column: 14, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4764, file: !920, line: 151, column: 7)
!4806 = !DILocation(line: 151, column: 22, scope: !4805)
!4807 = !DILocation(line: 151, column: 27, scope: !4805)
!4808 = !DILocation(line: 151, column: 7, scope: !4764)
!4809 = !DILocation(line: 152, column: 12, scope: !4805)
!4810 = !DILocation(line: 152, column: 5, scope: !4805)
!4811 = !DILocalVariable(name: "fp", arg: 1, scope: !4812, file: !920, line: 42, type: !4767)
!4812 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !920, file: !920, line: 42, type: !4813, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4815)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{null, !4767}
!4815 = !{!4811}
!4816 = !DILocation(line: 0, scope: !4812, inlinedAt: !4817)
!4817 = distinct !DILocation(line: 157, column: 3, scope: !4764)
!4818 = !DILocation(line: 44, column: 12, scope: !4819, inlinedAt: !4817)
!4819 = distinct !DILexicalBlock(scope: !4812, file: !920, line: 44, column: 7)
!4820 = !DILocation(line: 44, column: 19, scope: !4819, inlinedAt: !4817)
!4821 = !DILocation(line: 44, column: 7, scope: !4812, inlinedAt: !4817)
!4822 = !DILocation(line: 46, column: 5, scope: !4819, inlinedAt: !4817)
!4823 = !DILocation(line: 159, column: 10, scope: !4764)
!4824 = !DILocation(line: 159, column: 3, scope: !4764)
!4825 = !DILocation(line: 236, column: 1, scope: !4764)
!4826 = !DISubprogram(name: "fflush", scope: !1017, file: !1017, line: 230, type: !4765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!4827 = distinct !DISubprogram(name: "rpl_fseeko", scope: !922, file: !922, line: 28, type: !4828, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4865)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!105, !4830, !4864, !105}
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 7, baseType: !4832)
!4832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !230, line: 49, size: 1728, elements: !4833)
!4833 = !{!4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4832, file: !230, line: 51, baseType: !105, size: 32)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4832, file: !230, line: 54, baseType: !125, size: 64, offset: 64)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4832, file: !230, line: 55, baseType: !125, size: 64, offset: 128)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4832, file: !230, line: 56, baseType: !125, size: 64, offset: 192)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4832, file: !230, line: 57, baseType: !125, size: 64, offset: 256)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4832, file: !230, line: 58, baseType: !125, size: 64, offset: 320)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4832, file: !230, line: 59, baseType: !125, size: 64, offset: 384)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4832, file: !230, line: 60, baseType: !125, size: 64, offset: 448)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4832, file: !230, line: 61, baseType: !125, size: 64, offset: 512)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4832, file: !230, line: 64, baseType: !125, size: 64, offset: 576)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4832, file: !230, line: 65, baseType: !125, size: 64, offset: 640)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4832, file: !230, line: 66, baseType: !125, size: 64, offset: 704)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4832, file: !230, line: 68, baseType: !245, size: 64, offset: 768)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4832, file: !230, line: 70, baseType: !4848, size: 64, offset: 832)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4832, file: !230, line: 72, baseType: !105, size: 32, offset: 896)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4832, file: !230, line: 73, baseType: !105, size: 32, offset: 928)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4832, file: !230, line: 74, baseType: !252, size: 64, offset: 960)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4832, file: !230, line: 77, baseType: !133, size: 16, offset: 1024)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4832, file: !230, line: 78, baseType: !132, size: 8, offset: 1040)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4832, file: !230, line: 79, baseType: !74, size: 8, offset: 1048)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4832, file: !230, line: 81, baseType: !258, size: 64, offset: 1088)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4832, file: !230, line: 89, baseType: !261, size: 64, offset: 1152)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4832, file: !230, line: 91, baseType: !263, size: 64, offset: 1216)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4832, file: !230, line: 92, baseType: !266, size: 64, offset: 1280)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4832, file: !230, line: 93, baseType: !4848, size: 64, offset: 1344)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4832, file: !230, line: 94, baseType: !126, size: 64, offset: 1408)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4832, file: !230, line: 95, baseType: !134, size: 64, offset: 1472)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4832, file: !230, line: 96, baseType: !105, size: 32, offset: 1536)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4832, file: !230, line: 98, baseType: !273, size: 160, offset: 1568)
!4864 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1017, line: 63, baseType: !252)
!4865 = !{!4866, !4867, !4868, !4869}
!4866 = !DILocalVariable(name: "fp", arg: 1, scope: !4827, file: !922, line: 28, type: !4830)
!4867 = !DILocalVariable(name: "offset", arg: 2, scope: !4827, file: !922, line: 28, type: !4864)
!4868 = !DILocalVariable(name: "whence", arg: 3, scope: !4827, file: !922, line: 28, type: !105)
!4869 = !DILocalVariable(name: "pos", scope: !4870, file: !922, line: 123, type: !4864)
!4870 = distinct !DILexicalBlock(scope: !4871, file: !922, line: 119, column: 5)
!4871 = distinct !DILexicalBlock(scope: !4827, file: !922, line: 55, column: 7)
!4872 = !DILocation(line: 0, scope: !4827)
!4873 = !DILocation(line: 55, column: 12, scope: !4871)
!4874 = !{!2328, !951, i64 16}
!4875 = !DILocation(line: 55, column: 33, scope: !4871)
!4876 = !{!2328, !951, i64 8}
!4877 = !DILocation(line: 55, column: 25, scope: !4871)
!4878 = !DILocation(line: 56, column: 7, scope: !4871)
!4879 = !DILocation(line: 56, column: 15, scope: !4871)
!4880 = !DILocation(line: 56, column: 37, scope: !4871)
!4881 = !{!2328, !951, i64 32}
!4882 = !DILocation(line: 56, column: 29, scope: !4871)
!4883 = !DILocation(line: 57, column: 7, scope: !4871)
!4884 = !DILocation(line: 57, column: 15, scope: !4871)
!4885 = !{!2328, !951, i64 72}
!4886 = !DILocation(line: 57, column: 29, scope: !4871)
!4887 = !DILocation(line: 55, column: 7, scope: !4827)
!4888 = !DILocation(line: 123, column: 26, scope: !4870)
!4889 = !DILocation(line: 123, column: 19, scope: !4870)
!4890 = !DILocation(line: 0, scope: !4870)
!4891 = !DILocation(line: 124, column: 15, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4870, file: !922, line: 124, column: 11)
!4893 = !DILocation(line: 124, column: 11, scope: !4870)
!4894 = !DILocation(line: 135, column: 19, scope: !4870)
!4895 = !DILocation(line: 136, column: 12, scope: !4870)
!4896 = !DILocation(line: 136, column: 20, scope: !4870)
!4897 = !{!2328, !1868, i64 144}
!4898 = !DILocation(line: 167, column: 7, scope: !4870)
!4899 = !DILocation(line: 169, column: 10, scope: !4827)
!4900 = !DILocation(line: 169, column: 3, scope: !4827)
!4901 = !DILocation(line: 170, column: 1, scope: !4827)
!4902 = !DISubprogram(name: "fseeko", scope: !1017, file: !1017, line: 736, type: !4903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!4903 = !DISubroutineType(types: !4904)
!4904 = !{!105, !4830, !252, !105}
!4905 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !836, file: !836, line: 100, type: !4906, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !4909)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!134, !2497, !137, !134, !4908}
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!4909 = !{!4910, !4911, !4912, !4913, !4914}
!4910 = !DILocalVariable(name: "pwc", arg: 1, scope: !4905, file: !836, line: 100, type: !2497)
!4911 = !DILocalVariable(name: "s", arg: 2, scope: !4905, file: !836, line: 100, type: !137)
!4912 = !DILocalVariable(name: "n", arg: 3, scope: !4905, file: !836, line: 100, type: !134)
!4913 = !DILocalVariable(name: "ps", arg: 4, scope: !4905, file: !836, line: 100, type: !4908)
!4914 = !DILocalVariable(name: "ret", scope: !4905, file: !836, line: 130, type: !134)
!4915 = !DILocation(line: 0, scope: !4905)
!4916 = !DILocation(line: 105, column: 9, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4905, file: !836, line: 105, column: 7)
!4918 = !DILocation(line: 105, column: 7, scope: !4905)
!4919 = !DILocation(line: 117, column: 10, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4905, file: !836, line: 117, column: 7)
!4921 = !DILocation(line: 117, column: 7, scope: !4905)
!4922 = !DILocation(line: 130, column: 16, scope: !4905)
!4923 = !DILocation(line: 135, column: 11, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4905, file: !836, line: 135, column: 7)
!4925 = !DILocation(line: 135, column: 25, scope: !4924)
!4926 = !DILocation(line: 135, column: 30, scope: !4924)
!4927 = !DILocation(line: 135, column: 7, scope: !4905)
!4928 = !DILocalVariable(name: "ps", arg: 1, scope: !4929, file: !2470, line: 1135, type: !4908)
!4929 = distinct !DISubprogram(name: "mbszero", scope: !2470, file: !2470, line: 1135, type: !4930, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !4932)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{null, !4908}
!4932 = !{!4928}
!4933 = !DILocation(line: 0, scope: !4929, inlinedAt: !4934)
!4934 = distinct !DILocation(line: 137, column: 5, scope: !4924)
!4935 = !DILocalVariable(name: "__dest", arg: 1, scope: !4936, file: !2479, line: 57, type: !126)
!4936 = distinct !DISubprogram(name: "memset", scope: !2479, file: !2479, line: 57, type: !2480, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !4937)
!4937 = !{!4935, !4938, !4939}
!4938 = !DILocalVariable(name: "__ch", arg: 2, scope: !4936, file: !2479, line: 57, type: !105)
!4939 = !DILocalVariable(name: "__len", arg: 3, scope: !4936, file: !2479, line: 57, type: !134)
!4940 = !DILocation(line: 0, scope: !4936, inlinedAt: !4941)
!4941 = distinct !DILocation(line: 1137, column: 3, scope: !4929, inlinedAt: !4934)
!4942 = !DILocation(line: 59, column: 10, scope: !4936, inlinedAt: !4941)
!4943 = !DILocation(line: 137, column: 5, scope: !4924)
!4944 = !DILocation(line: 138, column: 11, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4905, file: !836, line: 138, column: 7)
!4946 = !DILocation(line: 138, column: 7, scope: !4905)
!4947 = !DILocation(line: 139, column: 5, scope: !4945)
!4948 = !DILocation(line: 143, column: 26, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4905, file: !836, line: 143, column: 7)
!4950 = !DILocation(line: 143, column: 41, scope: !4949)
!4951 = !DILocation(line: 143, column: 7, scope: !4905)
!4952 = !DILocation(line: 145, column: 15, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4954, file: !836, line: 145, column: 11)
!4954 = distinct !DILexicalBlock(scope: !4949, file: !836, line: 144, column: 5)
!4955 = !DILocation(line: 145, column: 11, scope: !4954)
!4956 = !DILocation(line: 146, column: 32, scope: !4953)
!4957 = !DILocation(line: 146, column: 16, scope: !4953)
!4958 = !DILocation(line: 146, column: 14, scope: !4953)
!4959 = !DILocation(line: 146, column: 9, scope: !4953)
!4960 = !DILocation(line: 286, column: 1, scope: !4905)
!4961 = !DISubprogram(name: "mbsinit", scope: !4962, file: !4962, line: 293, type: !4963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !959)
!4962 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4963 = !DISubroutineType(types: !4964)
!4964 = !{!105, !4965}
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4966, size: 64)
!4966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!4967 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !924, file: !924, line: 27, type: !4139, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !923, retainedNodes: !4968)
!4968 = !{!4969, !4970, !4971, !4972}
!4969 = !DILocalVariable(name: "ptr", arg: 1, scope: !4967, file: !924, line: 27, type: !126)
!4970 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4967, file: !924, line: 27, type: !134)
!4971 = !DILocalVariable(name: "size", arg: 3, scope: !4967, file: !924, line: 27, type: !134)
!4972 = !DILocalVariable(name: "nbytes", scope: !4967, file: !924, line: 29, type: !134)
!4973 = !DILocation(line: 0, scope: !4967)
!4974 = !DILocation(line: 30, column: 7, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4967, file: !924, line: 30, column: 7)
!4976 = !DILocalVariable(name: "ptr", arg: 1, scope: !4977, file: !4231, line: 2057, type: !126)
!4977 = distinct !DISubprogram(name: "rpl_realloc", scope: !4231, file: !4231, line: 2057, type: !4223, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !923, retainedNodes: !4978)
!4978 = !{!4976, !4979}
!4979 = !DILocalVariable(name: "size", arg: 2, scope: !4977, file: !4231, line: 2057, type: !134)
!4980 = !DILocation(line: 0, scope: !4977, inlinedAt: !4981)
!4981 = distinct !DILocation(line: 37, column: 10, scope: !4967)
!4982 = !DILocation(line: 2059, column: 24, scope: !4977, inlinedAt: !4981)
!4983 = !DILocation(line: 2059, column: 10, scope: !4977, inlinedAt: !4981)
!4984 = !DILocation(line: 37, column: 3, scope: !4967)
!4985 = !DILocation(line: 32, column: 7, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4975, file: !924, line: 31, column: 5)
!4987 = !DILocation(line: 32, column: 13, scope: !4986)
!4988 = !DILocation(line: 33, column: 7, scope: !4986)
!4989 = !DILocation(line: 38, column: 1, scope: !4967)
!4990 = distinct !DISubprogram(name: "hard_locale", scope: !854, file: !854, line: 28, type: !1997, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4991)
!4991 = !{!4992, !4993}
!4992 = !DILocalVariable(name: "category", arg: 1, scope: !4990, file: !854, line: 28, type: !105)
!4993 = !DILocalVariable(name: "locale", scope: !4990, file: !854, line: 30, type: !4994)
!4994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4995)
!4995 = !{!4996}
!4996 = !DISubrange(count: 257)
!4997 = !DILocation(line: 0, scope: !4990)
!4998 = !DILocation(line: 30, column: 3, scope: !4990)
!4999 = !DILocation(line: 30, column: 8, scope: !4990)
!5000 = !DILocation(line: 32, column: 7, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4990, file: !854, line: 32, column: 7)
!5002 = !DILocation(line: 32, column: 7, scope: !4990)
!5003 = !DILocalVariable(name: "__s1", arg: 1, scope: !5004, file: !1035, line: 1359, type: !137)
!5004 = distinct !DISubprogram(name: "streq", scope: !1035, file: !1035, line: 1359, type: !1036, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !5005)
!5005 = !{!5003, !5006}
!5006 = !DILocalVariable(name: "__s2", arg: 2, scope: !5004, file: !1035, line: 1359, type: !137)
!5007 = !DILocation(line: 0, scope: !5004, inlinedAt: !5008)
!5008 = distinct !DILocation(line: 35, column: 9, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !4990, file: !854, line: 35, column: 7)
!5010 = !DILocation(line: 1361, column: 11, scope: !5004, inlinedAt: !5008)
!5011 = !DILocation(line: 35, column: 29, scope: !5009)
!5012 = !DILocation(line: 0, scope: !5004, inlinedAt: !5013)
!5013 = distinct !DILocation(line: 35, column: 32, scope: !5009)
!5014 = !DILocation(line: 1361, column: 11, scope: !5004, inlinedAt: !5013)
!5015 = !DILocation(line: 1361, column: 10, scope: !5004, inlinedAt: !5013)
!5016 = !DILocation(line: 35, column: 7, scope: !4990)
!5017 = !DILocation(line: 46, column: 3, scope: !4990)
!5018 = !DILocation(line: 47, column: 1, scope: !4990)
!5019 = distinct !DISubprogram(name: "setlocale_null_r", scope: !931, file: !931, line: 154, type: !5020, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !930, retainedNodes: !5022)
!5020 = !DISubroutineType(types: !5021)
!5021 = !{!105, !105, !125, !134}
!5022 = !{!5023, !5024, !5025}
!5023 = !DILocalVariable(name: "category", arg: 1, scope: !5019, file: !931, line: 154, type: !105)
!5024 = !DILocalVariable(name: "buf", arg: 2, scope: !5019, file: !931, line: 154, type: !125)
!5025 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5019, file: !931, line: 154, type: !134)
!5026 = !DILocation(line: 0, scope: !5019)
!5027 = !DILocation(line: 159, column: 10, scope: !5019)
!5028 = !DILocation(line: 159, column: 3, scope: !5019)
!5029 = distinct !DISubprogram(name: "setlocale_null", scope: !931, file: !931, line: 186, type: !5030, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !930, retainedNodes: !5032)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{!137, !105}
!5032 = !{!5033}
!5033 = !DILocalVariable(name: "category", arg: 1, scope: !5029, file: !931, line: 186, type: !105)
!5034 = !DILocation(line: 0, scope: !5029)
!5035 = !DILocation(line: 189, column: 10, scope: !5029)
!5036 = !DILocation(line: 189, column: 3, scope: !5029)
!5037 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !933, file: !933, line: 35, type: !5030, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !932, retainedNodes: !5038)
!5038 = !{!5039, !5040}
!5039 = !DILocalVariable(name: "category", arg: 1, scope: !5037, file: !933, line: 35, type: !105)
!5040 = !DILocalVariable(name: "result", scope: !5037, file: !933, line: 37, type: !137)
!5041 = !DILocation(line: 0, scope: !5037)
!5042 = !DILocation(line: 37, column: 24, scope: !5037)
!5043 = !DILocation(line: 62, column: 3, scope: !5037)
!5044 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !933, file: !933, line: 66, type: !5020, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !932, retainedNodes: !5045)
!5045 = !{!5046, !5047, !5048, !5049, !5050}
!5046 = !DILocalVariable(name: "category", arg: 1, scope: !5044, file: !933, line: 66, type: !105)
!5047 = !DILocalVariable(name: "buf", arg: 2, scope: !5044, file: !933, line: 66, type: !125)
!5048 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5044, file: !933, line: 66, type: !134)
!5049 = !DILocalVariable(name: "result", scope: !5044, file: !933, line: 111, type: !137)
!5050 = !DILocalVariable(name: "length", scope: !5051, file: !933, line: 125, type: !134)
!5051 = distinct !DILexicalBlock(scope: !5052, file: !933, line: 124, column: 5)
!5052 = distinct !DILexicalBlock(scope: !5044, file: !933, line: 113, column: 7)
!5053 = !DILocation(line: 0, scope: !5044)
!5054 = !DILocation(line: 0, scope: !5037, inlinedAt: !5055)
!5055 = distinct !DILocation(line: 111, column: 24, scope: !5044)
!5056 = !DILocation(line: 37, column: 24, scope: !5037, inlinedAt: !5055)
!5057 = !DILocation(line: 113, column: 14, scope: !5052)
!5058 = !DILocation(line: 113, column: 7, scope: !5044)
!5059 = !DILocation(line: 116, column: 19, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5061, file: !933, line: 116, column: 11)
!5061 = distinct !DILexicalBlock(scope: !5052, file: !933, line: 114, column: 5)
!5062 = !DILocation(line: 116, column: 11, scope: !5061)
!5063 = !DILocation(line: 120, column: 16, scope: !5060)
!5064 = !DILocation(line: 120, column: 9, scope: !5060)
!5065 = !DILocation(line: 125, column: 23, scope: !5051)
!5066 = !DILocation(line: 0, scope: !5051)
!5067 = !DILocation(line: 126, column: 18, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5051, file: !933, line: 126, column: 11)
!5069 = !DILocation(line: 126, column: 11, scope: !5051)
!5070 = !DILocation(line: 128, column: 39, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5068, file: !933, line: 127, column: 9)
!5072 = !DILocalVariable(name: "__dest", arg: 1, scope: !5073, file: !2479, line: 26, type: !4500)
!5073 = distinct !DISubprogram(name: "memcpy", scope: !2479, file: !2479, line: 26, type: !4498, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !932, retainedNodes: !5074)
!5074 = !{!5072, !5075, !5076}
!5075 = !DILocalVariable(name: "__src", arg: 2, scope: !5073, file: !2479, line: 26, type: !1168)
!5076 = !DILocalVariable(name: "__len", arg: 3, scope: !5073, file: !2479, line: 26, type: !134)
!5077 = !DILocation(line: 0, scope: !5073, inlinedAt: !5078)
!5078 = distinct !DILocation(line: 128, column: 11, scope: !5071)
!5079 = !DILocation(line: 29, column: 10, scope: !5073, inlinedAt: !5078)
!5080 = !DILocation(line: 129, column: 11, scope: !5071)
!5081 = !DILocation(line: 133, column: 23, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5083, file: !933, line: 133, column: 15)
!5083 = distinct !DILexicalBlock(scope: !5068, file: !933, line: 132, column: 9)
!5084 = !DILocation(line: 133, column: 15, scope: !5083)
!5085 = !DILocation(line: 138, column: 44, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5082, file: !933, line: 134, column: 13)
!5087 = !DILocation(line: 0, scope: !5073, inlinedAt: !5088)
!5088 = distinct !DILocation(line: 138, column: 15, scope: !5086)
!5089 = !DILocation(line: 29, column: 10, scope: !5073, inlinedAt: !5088)
!5090 = !DILocation(line: 139, column: 15, scope: !5086)
!5091 = !DILocation(line: 139, column: 32, scope: !5086)
!5092 = !DILocation(line: 140, column: 13, scope: !5086)
!5093 = !DILocation(line: 0, scope: !5052)
!5094 = !DILocation(line: 145, column: 1, scope: !5044)
