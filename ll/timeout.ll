; ModuleID = 'src/timeout.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct.infomap = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.numname = type { i32, [8 x i8] }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.__mbstate_t = type { i32, %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%struct.itimerspec = type { %struct.timespec, %struct.timespec }
%struct.timespec = type { i64, i64 }
%struct.sigevent = type { %union.sigval, i32, i32, %union.anon.9 }
%union.sigval = type { i8* }
%union.anon.9 = type { %struct.anon.10, [32 x i8] }
%struct.anon.10 = type { void (i64)*, %union.pthread_attr_t* }
%union.pthread_attr_t = type { i64, [56 x i8] }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Usage: %s [OPTION]... DURATION COMMAND [ARG]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Start COMMAND, and kill it if still running after DURATION.\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.4 = private unnamed_addr constant [214 x i8] c"  -f, --foreground\0A         when not running timeout directly from a shell prompt,\0A         allow COMMAND to read from the TTY and get TTY signals;\0A         in this mode, children of COMMAND will not be timed out\0A\00", align 1
@.str.5 = private unnamed_addr constant [143 x i8] c"  -k, --kill-after=DURATION\0A         also send a KILL signal if COMMAND is still running\0A         this long after the initial signal was sent\0A\00", align 1
@.str.6 = private unnamed_addr constant [113 x i8] c"  -p, --preserve-status\0A         exit with the same status as COMMAND,\0A         even when the command times out\0A\00", align 1
@.str.7 = private unnamed_addr constant [173 x i8] c"  -s, --signal=SIGNAL\0A         specify the signal to be sent on timeout;\0A         SIGNAL may be a name like 'HUP' or a number;\0A         see 'kill -l' for a list of signals\0A\00", align 1
@.str.8 = private unnamed_addr constant [82 x i8] c"  -v, --verbose\0A         diagnose to standard error any signal sent upon timeout\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [191 x i8] c"\0ADURATION is a floating point number with an optional suffix:\0A's' for seconds (the default), 'm' for minutes, 'h' for hours or 'd' for days.\0AA duration of 0 disables the associated timeout.\0A\00", align 1
@.str.12 = private unnamed_addr constant [234 x i8] c"\0AUpon timeout, send the TERM signal to COMMAND, if no other SIGNAL specified.\0AThe TERM signal kills any process that does not block or catch that signal.\0AIt may be necessary to use the KILL signal, since this signal can't be caught.\0A\00", align 1
@.str.13 = private unnamed_addr constant [327 x i8] c"\0AExit status:\0A  124  if COMMAND times out, and --preserve-status is not specified\0A  125  if the timeout command itself fails\0A  126  if COMMAND is found but cannot be invoked\0A  127  if COMMAND cannot be found\0A  137  if COMMAND (or timeout itself) is sent the KILL (9) signal (128+9)\0A  -    the exit status of COMMAND otherwise\0A\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"+fk:ps:v\00", align 1
@long_options = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i32 1, i32* null, i32 107 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@foreground = internal unnamed_addr global i1 false, align 1, !dbg !171
@optarg = external local_unnamed_addr global i8*, align 8
@kill_after = internal unnamed_addr global double 0.000000e+00, align 8, !dbg !55
@preserve_status = internal unnamed_addr global i1 false, align 1, !dbg !172
@term_signal = internal unnamed_addr global i32 15, align 4, !dbg !150
@verbose = internal unnamed_addr global i1 false, align 1, !dbg !173
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"P\C3\A1draig Brady\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@command = internal unnamed_addr global i8* null, align 8, !dbg !65
@monitored_pid = internal unnamed_addr global i32 0, align 4, !dbg !49
@.str.21 = private unnamed_addr constant [24 x i8] c"fork system call failed\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"child failed to reset signal mask\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"error waiting for command\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"the monitored command dumped core\00", align 1
@timed_out = internal unnamed_addr global i1 false, align 4, !dbg !174
@.str.26 = private unnamed_addr constant [33 x i8] c"unknown status from command (%d)\00", align 1
@.str.27 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !67
@.str.28 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.48 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.50 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.58 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.59 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.61 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"foreground\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"kill-after\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"preserve-status\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.70 = private unnamed_addr constant [25 x i8] c"invalid time interval %s\00", align 1
@term_sig = internal unnamed_addr constant [22 x i32] [i32 14, i32 2, i32 3, i32 1, i32 15, i32 13, i32 10, i32 12, i32 4, i32 5, i32 6, i32 7, i32 8, i32 11, i32 24, i32 25, i32 31, i32 26, i32 27, i32 29, i32 30, i32 16], align 4, !dbg !152
@.str.71 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.72 = private unnamed_addr constant [32 x i8] c"sending signal %s to command %s\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"warning: sigprocmask\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"warning: timer_settime\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"warning: timer_create\00", align 1
@.str.76 = private unnamed_addr constant [37 x i8] c"warning: disabling core dumps failed\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.1.34 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), align 8, !dbg !175
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !180
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !185
@.str.77 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.78 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.79 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.80 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !187
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.83 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !223
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !193
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !219
@.str.1.89 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.91 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.90 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !221
@.str.4.84 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.85 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.86 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !228
@.str.100 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.101 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !234
@.str.104 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.105 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.106 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.107 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.108 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.109 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.110 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.111 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.112 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.113 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.105, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.106, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.107, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.108, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.109, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.110, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.111, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.112, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.113, i32 0, i32 0), i8* null], align 8, !dbg !270
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !296
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !312
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !342
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !349
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !314
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !351
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !302
@.str.10.116 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.114 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.117 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.115 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !319
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 4, !dbg !357
@.str.124 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1
@.str.1.125 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1
@.str.2.128 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.130 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.131 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.132 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.133 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.134 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.135 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.136 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.137 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.138 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.139 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.140 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.141 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.142 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.143 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.144 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.145 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.150 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.151 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.152 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.153 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.154 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.155 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.156 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !371
@exit_failure = dso_local global i32 1, align 4, !dbg !379
@.str.171 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.169 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.170 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !385
@.str.174 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.185 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !413
@.str.190 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.191 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !518 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !520, metadata !DIExpression()), !dbg !521
  %3 = icmp eq i32 %0, 0, !dbg !522
  br i1 %3, label %9, label %4, !dbg !524

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !525, !tbaa !527
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #35, !dbg !525
  %7 = load i8*, i8** @program_name, align 8, !dbg !525, !tbaa !527
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #35, !dbg !525
  br label %69, !dbg !525

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #35, !dbg !531
  %11 = load i8*, i8** @program_name, align 8, !dbg !531, !tbaa !527
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #35, !dbg !531
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #35, !dbg !533
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !533, !tbaa !527
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !533
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.27, i64 0, i64 0), i32 noundef 5) #35, !dbg !534
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !534, !tbaa !527
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17) #35, !dbg !534
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([214 x i8], [214 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #35, !dbg !538
  tail call fastcc void @oputs_(i8* noundef %19), !dbg !538
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([143 x i8], [143 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #35, !dbg !539
  tail call fastcc void @oputs_(i8* noundef %20), !dbg !539
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([113 x i8], [113 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #35, !dbg !540
  tail call fastcc void @oputs_(i8* noundef %21), !dbg !540
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([173 x i8], [173 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #35, !dbg !541
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !541
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #35, !dbg !542
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !542
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #35, !dbg !543
  tail call fastcc void @oputs_(i8* noundef %24), !dbg !543
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #35, !dbg !544
  tail call fastcc void @oputs_(i8* noundef %25), !dbg !544
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([191 x i8], [191 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #35, !dbg !545
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !545, !tbaa !527
  %28 = tail call i32 @fputs_unlocked(i8* noundef %26, %struct._IO_FILE* noundef %27), !dbg !545
  %29 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([234 x i8], [234 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #35, !dbg !546
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !546, !tbaa !527
  %31 = tail call i32 @fputs_unlocked(i8* noundef %29, %struct._IO_FILE* noundef %30), !dbg !546
  %32 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([327 x i8], [327 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #35, !dbg !547
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !547, !tbaa !527
  %34 = tail call i32 @fputs_unlocked(i8* noundef %32, %struct._IO_FILE* noundef %33), !dbg !547
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !548, metadata !DIExpression()) #35, !dbg !567
  %35 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !569
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %35) #35, !dbg !569
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !553, metadata !DIExpression()) #35, !dbg !570
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %35, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #35, !dbg !570
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !562, metadata !DIExpression()) #35, !dbg !567
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !563, metadata !DIExpression()) #35, !dbg !567
  %36 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !571
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !563, metadata !DIExpression()) #35, !dbg !567
  br label %37, !dbg !572

37:                                               ; preds = %42, %9
  %38 = phi i8* [ %45, %42 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), %9 ]
  %39 = phi %struct.infomap* [ %43, %42 ], [ %36, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !563, metadata !DIExpression()) #35, !dbg !567
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !573, metadata !DIExpression()) #35, !dbg !580
  call void @llvm.dbg.value(metadata i8* %38, metadata !579, metadata !DIExpression()) #35, !dbg !580
  %40 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %38) #36, !dbg !582
  %41 = icmp eq i32 %40, 0, !dbg !583
  br i1 %41, label %47, label %42, !dbg !572

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 1, !dbg !584
  call void @llvm.dbg.value(metadata %struct.infomap* %43, metadata !563, metadata !DIExpression()) #35, !dbg !567
  %44 = getelementptr inbounds %struct.infomap, %struct.infomap* %43, i64 0, i32 0, !dbg !585
  %45 = load i8*, i8** %44, align 8, !dbg !585, !tbaa !586
  %46 = icmp eq i8* %45, null, !dbg !588
  br i1 %46, label %47, label %37, !dbg !589, !llvm.loop !590

47:                                               ; preds = %42, %37
  %48 = phi %struct.infomap* [ %39, %37 ], [ %43, %42 ]
  %49 = getelementptr inbounds %struct.infomap, %struct.infomap* %48, i64 0, i32 1, !dbg !592
  %50 = load i8*, i8** %49, align 8, !dbg !592, !tbaa !594
  %51 = icmp eq i8* %50, null, !dbg !595
  %52 = select i1 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %50, !dbg !596
  call void @llvm.dbg.value(metadata i8* %52, metadata !562, metadata !DIExpression()) #35, !dbg !567
  tail call void @emit_bug_reporting_address() #35, !dbg !597
  %53 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #35, !dbg !598
  call void @llvm.dbg.value(metadata i8* %53, metadata !565, metadata !DIExpression()) #35, !dbg !567
  %54 = icmp eq i8* %53, null, !dbg !599
  br i1 %54, label %62, label %55, !dbg !601

55:                                               ; preds = %47
  %56 = tail call i32 @strncmp(i8* noundef nonnull %53, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i64 noundef 3) #36, !dbg !602
  %57 = icmp eq i32 %56, 0, !dbg !602
  br i1 %57, label %62, label %58, !dbg !603

58:                                               ; preds = %55
  %59 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.59, i64 0, i64 0), i32 noundef 5) #35, !dbg !604
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !604, !tbaa !527
  %61 = tail call i32 @fputs_unlocked(i8* noundef %59, %struct._IO_FILE* noundef %60) #35, !dbg !604
  br label %62, !dbg !606

62:                                               ; preds = %47, %55, %58
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !573, metadata !DIExpression()) #35, !dbg !607
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), metadata !579, metadata !DIExpression()) #35, !dbg !607
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !566, metadata !DIExpression()) #35, !dbg !567
  %63 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i64 0, i64 0), i32 noundef 5) #35, !dbg !609
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %63, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #35, !dbg !609
  %65 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.61, i64 0, i64 0), i32 noundef 5) #35, !dbg !610
  %66 = icmp eq i8* %52, getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), !dbg !610
  %67 = select i1 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !610
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %65, i8* noundef %52, i8* noundef %67) #35, !dbg !610
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %35) #35, !dbg !611
  br label %69

69:                                               ; preds = %62, %4
  tail call void @exit(i32 noundef %0) #37, !dbg !612
  unreachable, !dbg !612
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !613 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !617 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !69 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !73, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i8* %0, metadata !74, metadata !DIExpression()), !dbg !622
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !623, !tbaa !624
  %3 = icmp eq i32 %2, -1, !dbg !626
  br i1 %3, label %4, label %16, !dbg !627

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #35, !dbg !628
  call void @llvm.dbg.value(metadata i8* %5, metadata !75, metadata !DIExpression()), !dbg !629
  %6 = icmp eq i8* %5, null, !dbg !630
  br i1 %6, label %14, label %7, !dbg !631

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !632, !tbaa !633
  %9 = icmp eq i8 %8, 0, !dbg !632
  br i1 %9, label %14, label %10, !dbg !634

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !573, metadata !DIExpression()) #35, !dbg !635
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), metadata !579, metadata !DIExpression()) #35, !dbg !635
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0)) #36, !dbg !637
  %12 = icmp eq i32 %11, 0, !dbg !638
  %13 = zext i1 %12 to i32, !dbg !634
  br label %14, !dbg !634

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !639, !tbaa !624
  br label %16, !dbg !640

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !641
  %18 = icmp eq i32 %17, 0, !dbg !641
  br i1 %18, label %22, label %19, !dbg !643

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !644, !tbaa !527
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !644
  br label %121, !dbg !646

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !78, metadata !DIExpression()), !dbg !622
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0)) #36, !dbg !647
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !648
  call void @llvm.dbg.value(metadata i8* %24, metadata !79, metadata !DIExpression()), !dbg !622
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #36, !dbg !649
  call void @llvm.dbg.value(metadata i8* %25, metadata !80, metadata !DIExpression()), !dbg !622
  %26 = icmp eq i8* %25, null, !dbg !650
  br i1 %26, label %53, label %27, !dbg !651

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !652
  br i1 %28, label %53, label %29, !dbg !653

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !81, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata i64 0, metadata !85, metadata !DIExpression()), !dbg !654
  %30 = icmp ult i8* %24, %25, !dbg !655
  br i1 %30, label %31, label %53, !dbg !656

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #38, !dbg !622
  %33 = load i16*, i16** %32, align 8, !tbaa !527
  br label %34, !dbg !656

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !81, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata i64 %36, metadata !85, metadata !DIExpression()), !dbg !654
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !657
  call void @llvm.dbg.value(metadata i8* %37, metadata !81, metadata !DIExpression()), !dbg !654
  %38 = load i8, i8* %35, align 1, !dbg !657, !tbaa !633
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !657
  %41 = load i16, i16* %40, align 2, !dbg !657, !tbaa !658
  %42 = lshr i16 %41, 13, !dbg !660
  %43 = and i16 %42, 1, !dbg !660
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !661
  call void @llvm.dbg.value(metadata i64 %45, metadata !85, metadata !DIExpression()), !dbg !654
  %46 = icmp ult i8* %37, %25, !dbg !655
  %47 = icmp ult i64 %45, 2, !dbg !662
  %48 = select i1 %46, i1 %47, i1 false, !dbg !662
  br i1 %48, label %34, label %49, !dbg !656, !llvm.loop !663

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !664
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !666
  %52 = xor i1 %50, true, !dbg !666
  br label %53, !dbg !666

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !622
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !78, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i8* %54, metadata !80, metadata !DIExpression()), !dbg !622
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0)) #36, !dbg !667
  call void @llvm.dbg.value(metadata i64 %56, metadata !86, metadata !DIExpression()), !dbg !622
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !668
  call void @llvm.dbg.value(metadata i8* %57, metadata !87, metadata !DIExpression()), !dbg !622
  br label %58, !dbg !669

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !622
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !78, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i8* %59, metadata !87, metadata !DIExpression()), !dbg !622
  %61 = load i8, i8* %59, align 1, !dbg !670, !tbaa !633
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !671

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !672
  %64 = load i8, i8* %63, align 1, !dbg !675, !tbaa !633
  %65 = icmp ne i8 %64, 45, !dbg !676
  %66 = select i1 %65, i1 %60, i1 false, !dbg !677
  br label %67, !dbg !677

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !78, metadata !DIExpression()), !dbg !622
  %69 = tail call i16** @__ctype_b_loc() #38, !dbg !678
  %70 = load i16*, i16** %69, align 8, !dbg !678, !tbaa !527
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !678
  %73 = load i16, i16* %72, align 2, !dbg !678, !tbaa !658
  %74 = and i16 %73, 8192, !dbg !678
  %75 = icmp eq i16 %74, 0, !dbg !678
  br i1 %75, label %89, label %76, !dbg !680

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !681
  br i1 %77, label %91, label %78, !dbg !684

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !685
  %80 = load i8, i8* %79, align 1, !dbg !685, !tbaa !633
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !685
  %83 = load i16, i16* %82, align 2, !dbg !685, !tbaa !658
  %84 = and i16 %83, 8192, !dbg !685
  %85 = icmp eq i16 %84, 0, !dbg !685
  br i1 %85, label %86, label %91, !dbg !686

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !687
  br i1 %88, label %89, label %91, !dbg !687

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !689
  call void @llvm.dbg.value(metadata i8* %90, metadata !87, metadata !DIExpression()), !dbg !622
  br label %58, !dbg !669, !llvm.loop !690

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !692
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !692, !tbaa !527
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !692
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !573, metadata !DIExpression()) #35, !dbg !693
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), metadata !579, metadata !DIExpression()) #35, !dbg !693
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !573, metadata !DIExpression()) #35, !dbg !695
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !573, metadata !DIExpression()) #35, !dbg !697
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !573, metadata !DIExpression()) #35, !dbg !699
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !573, metadata !DIExpression()) #35, !dbg !701
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !573, metadata !DIExpression()) #35, !dbg !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !573, metadata !DIExpression()) #35, !dbg !705
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !573, metadata !DIExpression()) #35, !dbg !707
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !573, metadata !DIExpression()) #35, !dbg !709
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !573, metadata !DIExpression()) #35, !dbg !711
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !145, metadata !DIExpression()), !dbg !622
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i64 noundef 6) #36, !dbg !713
  %96 = icmp eq i32 %95, 0, !dbg !713
  br i1 %96, label %100, label %97, !dbg !715

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i64 0, i64 0), i64 noundef 9) #36, !dbg !716
  %99 = icmp eq i32 %98, 0, !dbg !716
  br i1 %99, label %100, label %103, !dbg !717

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !718
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #35, !dbg !718
  br label %106, !dbg !720

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !721
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #35, !dbg !721
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !723, !tbaa !527
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !723
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !724, !tbaa !527
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !724
  %111 = ptrtoint i8* %59 to i64, !dbg !725
  %112 = sub i64 %111, %92, !dbg !725
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !725, !tbaa !527
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !725
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !726, !tbaa !527
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !726
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !727, !tbaa !527
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !727
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !728, !tbaa !527
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !728
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !729
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !730 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !734 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !738 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !744 {
  %3 = alloca %struct.sigaction, align 8
  %4 = alloca %struct.sigaction, align 8
  %5 = alloca %struct.__sigset_t, align 8
  %6 = alloca %struct.sigaction, align 8
  %7 = alloca %struct.sigaction, align 8
  %8 = alloca %struct.sigaction, align 8
  %9 = alloca %struct.sigaction, align 8
  %10 = alloca %struct.__sigset_t, align 8
  %11 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !749, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i8** %1, metadata !750, metadata !DIExpression()), !dbg !778
  %12 = load i8*, i8** %1, align 8, !dbg !779, !tbaa !527
  tail call void @set_program_name(i8* noundef %12) #35, !dbg !780
  %13 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #35, !dbg !781
  %14 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)) #35, !dbg !782
  %15 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #35, !dbg !783
  call void @llvm.dbg.value(metadata i32 125, metadata !784, metadata !DIExpression()), !dbg !787
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !789, !tbaa !624
  %16 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #35, !dbg !791
  br label %17, !dbg !792

17:                                               ; preds = %28, %2
  %18 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #35, !dbg !793
  call void @llvm.dbg.value(metadata i32 %18, metadata !752, metadata !DIExpression()), !dbg !778
  switch i32 %18, label %36 [
    i32 -1, label %37
    i32 102, label %19
    i32 107, label %20
    i32 112, label %23
    i32 115, label %24
    i32 118, label %30
    i32 -2, label %31
    i32 -3, label %32
  ], !dbg !792

19:                                               ; preds = %17
  store i1 true, i1* @foreground, align 1, !dbg !794
  br label %28, !dbg !797

20:                                               ; preds = %17
  %21 = load i8*, i8** @optarg, align 8, !dbg !798, !tbaa !527
  %22 = tail call fastcc double @parse_duration(i8* noundef %21), !dbg !799
  store double %22, double* @kill_after, align 8, !dbg !800, !tbaa !801
  br label %28, !dbg !803

23:                                               ; preds = %17
  store i1 true, i1* @preserve_status, align 1, !dbg !804
  br label %28, !dbg !805

24:                                               ; preds = %17
  %25 = load i8*, i8** @optarg, align 8, !dbg !806, !tbaa !527
  %26 = tail call i32 @operand2sig(i8* noundef %25) #35, !dbg !807
  store i32 %26, i32* @term_signal, align 4, !dbg !808, !tbaa !624
  %27 = icmp eq i32 %26, -1, !dbg !809
  br i1 %27, label %29, label %28, !dbg !811

28:                                               ; preds = %24, %30, %23, %20, %19
  br label %17, !dbg !793, !llvm.loop !812

29:                                               ; preds = %24
  tail call void @usage(i32 noundef 125) #39, !dbg !814
  unreachable, !dbg !814

30:                                               ; preds = %17
  store i1 true, i1* @verbose, align 1, !dbg !815
  br label %28, !dbg !816

31:                                               ; preds = %17
  tail call void @usage(i32 noundef 0) #39, !dbg !817
  unreachable, !dbg !817

32:                                               ; preds = %17
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !818, !tbaa !527
  %34 = load i8*, i8** @Version, align 8, !dbg !818, !tbaa !527
  %35 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0)) #35, !dbg !818
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* noundef %34, i8* noundef %35, i8* noundef null) #35, !dbg !818
  tail call void @exit(i32 noundef 0) #37, !dbg !818
  unreachable, !dbg !818

36:                                               ; preds = %17
  tail call void @usage(i32 noundef 125) #39, !dbg !819
  unreachable, !dbg !819

37:                                               ; preds = %17
  %38 = load i32, i32* @optind, align 4, !dbg !820, !tbaa !624
  %39 = sub nsw i32 %0, %38, !dbg !822
  %40 = icmp slt i32 %39, 2, !dbg !823
  br i1 %40, label %41, label %42, !dbg !824

41:                                               ; preds = %37
  tail call void @usage(i32 noundef 125) #39, !dbg !825
  unreachable, !dbg !825

42:                                               ; preds = %37
  %43 = add nsw i32 %38, 1, !dbg !826
  store i32 %43, i32* @optind, align 4, !dbg !826, !tbaa !624
  %44 = sext i32 %38 to i64, !dbg !827
  %45 = getelementptr inbounds i8*, i8** %1, i64 %44, !dbg !827
  %46 = load i8*, i8** %45, align 8, !dbg !827, !tbaa !527
  %47 = tail call fastcc double @parse_duration(i8* noundef %46), !dbg !828
  call void @llvm.dbg.value(metadata double %47, metadata !751, metadata !DIExpression()), !dbg !778
  %48 = load i32, i32* @optind, align 4, !dbg !829, !tbaa !624
  %49 = sext i32 %48 to i64, !dbg !830
  %50 = getelementptr inbounds i8*, i8** %1, i64 %49, !dbg !830
  call void @llvm.dbg.value(metadata i8** %50, metadata !750, metadata !DIExpression()), !dbg !778
  %51 = load i8*, i8** %50, align 8, !dbg !831, !tbaa !527
  store i8* %51, i8** @command, align 8, !dbg !832, !tbaa !527
  %52 = load i1, i1* @foreground, align 1, !dbg !833
  br i1 %52, label %55, label %53, !dbg !835

53:                                               ; preds = %42
  %54 = tail call i32 @setpgid(i32 noundef 0, i32 noundef 0) #35, !dbg !836
  br label %55, !dbg !836

55:                                               ; preds = %53, %42
  %56 = load i32, i32* @term_signal, align 4, !dbg !837, !tbaa !624
  call void @llvm.dbg.value(metadata i32 %56, metadata !838, metadata !DIExpression()) #35, !dbg !935
  %57 = bitcast %struct.sigaction* %9 to i8*, !dbg !937
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %57) #35, !dbg !937
  call void @llvm.dbg.declare(metadata %struct.sigaction* %9, metadata !841, metadata !DIExpression()) #35, !dbg !938
  %58 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i64 0, i32 1, !dbg !939
  %59 = call i32 @sigemptyset(%struct.__sigset_t* noundef nonnull %58) #35, !dbg !940
  %60 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i64 0, i32 0, i32 0, !dbg !941
  store void (i32)* @cleanup, void (i32)** %60, align 8, !dbg !942, !tbaa !633
  %61 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i64 0, i32 2, !dbg !943
  store i32 268435456, i32* %61, align 8, !dbg !944, !tbaa !945
  call void @llvm.dbg.value(metadata i32 0, metadata !931, metadata !DIExpression()) #35, !dbg !948
  %62 = bitcast %struct.sigaction* %8 to i8*
  %63 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %8, i64 0, i32 0, i32 0
  br label %71, !dbg !949

64:                                               ; preds = %84
  %65 = call i32 @__libc_current_sigrtmin() #35, !dbg !950
  call void @llvm.dbg.value(metadata i32 %65, metadata !933, metadata !DIExpression()) #35, !dbg !951
  %66 = call i32 @__libc_current_sigrtmax() #35, !dbg !952
  %67 = icmp sgt i32 %65, %66, !dbg !954
  br i1 %67, label %102, label %68, !dbg !955

68:                                               ; preds = %64
  %69 = bitcast %struct.sigaction* %7 to i8*
  %70 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i64 0, i32 0, i32 0
  br label %87, !dbg !955

71:                                               ; preds = %84, %55
  %72 = phi i64 [ 0, %55 ], [ %85, %84 ]
  call void @llvm.dbg.value(metadata i64 %72, metadata !931, metadata !DIExpression()) #35, !dbg !948
  %73 = getelementptr inbounds [22 x i32], [22 x i32]* @term_sig, i64 0, i64 %72, !dbg !956
  %74 = load i32, i32* %73, align 4, !dbg !956, !tbaa !624
  call void @llvm.dbg.value(metadata i32 %74, metadata !959, metadata !DIExpression()) #35, !dbg !967
  call void @llvm.dbg.value(metadata i32 %56, metadata !964, metadata !DIExpression()) #35, !dbg !967
  %75 = icmp eq i64 %72, 0, !dbg !969
  %76 = icmp eq i32 %74, %56
  %77 = or i1 %75, %76, !dbg !971
  br i1 %77, label %82, label %78, !dbg !971

78:                                               ; preds = %71
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %62) #35, !dbg !972
  call void @llvm.dbg.declare(metadata %struct.sigaction* %8, metadata !965, metadata !DIExpression()) #35, !dbg !973
  %79 = call i32 @sigaction(i32 noundef %74, %struct.sigaction* noundef null, %struct.sigaction* noundef nonnull %8) #35, !dbg !974
  %80 = load void (i32)*, void (i32)** %63, align 8, !dbg !975, !tbaa !633
  %81 = icmp eq void (i32)* %80, inttoptr (i64 1 to void (i32)*), !dbg !976
  call void @llvm.dbg.value(metadata i1 %81, metadata !966, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !967
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %62) #35, !dbg !977
  br i1 %81, label %84, label %82, !dbg !978

82:                                               ; preds = %78, %71
  %83 = call i32 @sigaction(i32 noundef %74, %struct.sigaction* noundef nonnull %9, %struct.sigaction* noundef null) #35, !dbg !979
  br label %84, !dbg !979

84:                                               ; preds = %82, %78
  %85 = add nuw nsw i64 %72, 1, !dbg !980
  call void @llvm.dbg.value(metadata i64 %85, metadata !931, metadata !DIExpression()) #35, !dbg !948
  %86 = icmp eq i64 %85, 22, !dbg !981
  br i1 %86, label %64, label %71, !dbg !949, !llvm.loop !982

87:                                               ; preds = %98, %68
  %88 = phi i32 [ %65, %68 ], [ %99, %98 ]
  call void @llvm.dbg.value(metadata i32 %88, metadata !933, metadata !DIExpression()) #35, !dbg !951
  call void @llvm.dbg.value(metadata i32 %88, metadata !959, metadata !DIExpression()) #35, !dbg !984
  call void @llvm.dbg.value(metadata i32 %56, metadata !964, metadata !DIExpression()) #35, !dbg !984
  %89 = icmp eq i32 %88, 14, !dbg !987
  %90 = icmp eq i32 %88, %56
  %91 = or i1 %89, %90, !dbg !988
  br i1 %91, label %96, label %92, !dbg !988

92:                                               ; preds = %87
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %69) #35, !dbg !989
  call void @llvm.dbg.declare(metadata %struct.sigaction* %7, metadata !965, metadata !DIExpression()) #35, !dbg !990
  %93 = call i32 @sigaction(i32 noundef %88, %struct.sigaction* noundef null, %struct.sigaction* noundef nonnull %7) #35, !dbg !991
  %94 = load void (i32)*, void (i32)** %70, align 8, !dbg !992, !tbaa !633
  %95 = icmp eq void (i32)* %94, inttoptr (i64 1 to void (i32)*), !dbg !993
  call void @llvm.dbg.value(metadata i1 %95, metadata !966, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !984
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %69) #35, !dbg !994
  br i1 %95, label %98, label %96, !dbg !995

96:                                               ; preds = %92, %87
  %97 = call i32 @sigaction(i32 noundef %88, %struct.sigaction* noundef nonnull %9, %struct.sigaction* noundef null) #35, !dbg !996
  br label %98, !dbg !996

98:                                               ; preds = %96, %92
  %99 = add nsw i32 %88, 1, !dbg !997
  call void @llvm.dbg.value(metadata i32 %99, metadata !933, metadata !DIExpression()) #35, !dbg !951
  %100 = call i32 @__libc_current_sigrtmax() #35, !dbg !952
  %101 = icmp slt i32 %88, %100, !dbg !954
  br i1 %101, label %87, label %102, !dbg !955, !llvm.loop !998

102:                                              ; preds = %98, %64
  %103 = call i32 @sigaction(i32 noundef %56, %struct.sigaction* noundef nonnull %9, %struct.sigaction* noundef null) #35, !dbg !1000
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %57) #35, !dbg !1001
  %104 = call void (i32)* @signal(i32 noundef 21, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #35, !dbg !1002
  %105 = call void (i32)* @signal(i32 noundef 22, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #35, !dbg !1003
  %106 = bitcast %struct.sigaction* %6 to i8*, !dbg !1004
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %106) #35, !dbg !1004
  call void @llvm.dbg.declare(metadata %struct.sigaction* %6, metadata !1007, metadata !DIExpression()) #35, !dbg !1009
  %107 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i64 0, i32 1, !dbg !1010
  %108 = call i32 @sigemptyset(%struct.__sigset_t* noundef nonnull %107) #35, !dbg !1011
  %109 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i64 0, i32 0, i32 0, !dbg !1012
  store void (i32)* @chld, void (i32)** %109, align 8, !dbg !1013, !tbaa !633
  %110 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i64 0, i32 2, !dbg !1014
  store i32 268435456, i32* %110, align 8, !dbg !1015, !tbaa !945
  %111 = call i32 @sigaction(i32 noundef 17, %struct.sigaction* noundef nonnull %6, %struct.sigaction* noundef null) #35, !dbg !1016
  call fastcc void @unblock_signal(i32 noundef 17) #35, !dbg !1017
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %106) #35, !dbg !1018
  call fastcc void @unblock_signal(i32 noundef 14), !dbg !1019
  %112 = bitcast %struct.__sigset_t* %10 to i8*, !dbg !1020
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %112) #35, !dbg !1020
  call void @llvm.dbg.declare(metadata %struct.__sigset_t* %10, metadata !753, metadata !DIExpression()), !dbg !1021
  %113 = load i32, i32* @term_signal, align 4, !dbg !1022, !tbaa !624
  call void @llvm.dbg.value(metadata i32 %113, metadata !1023, metadata !DIExpression()) #35, !dbg !1035
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %10, metadata !1029, metadata !DIExpression()) #35, !dbg !1035
  %114 = bitcast %struct.__sigset_t* %5 to i8*, !dbg !1037
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %114) #35, !dbg !1037
  call void @llvm.dbg.declare(metadata %struct.__sigset_t* %5, metadata !1030, metadata !DIExpression()) #35, !dbg !1038
  %115 = call i32 @sigemptyset(%struct.__sigset_t* noundef nonnull %5) #35, !dbg !1039
  call void @llvm.dbg.value(metadata i32 0, metadata !1031, metadata !DIExpression()) #35, !dbg !1040
  %116 = bitcast %struct.sigaction* %4 to i8*
  %117 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i64 0, i32 0, i32 0
  br label %125, !dbg !1041

118:                                              ; preds = %138
  %119 = call i32 @__libc_current_sigrtmin() #35, !dbg !1042
  call void @llvm.dbg.value(metadata i32 %119, metadata !1033, metadata !DIExpression()) #35, !dbg !1043
  %120 = call i32 @__libc_current_sigrtmax() #35, !dbg !1044
  %121 = icmp sgt i32 %119, %120, !dbg !1046
  br i1 %121, label %141, label %122, !dbg !1047

122:                                              ; preds = %118
  %123 = bitcast %struct.sigaction* %3 to i8*
  %124 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i64 0, i32 0, i32 0
  br label %146, !dbg !1047

125:                                              ; preds = %138, %102
  %126 = phi i64 [ 0, %102 ], [ %139, %138 ]
  call void @llvm.dbg.value(metadata i64 %126, metadata !1031, metadata !DIExpression()) #35, !dbg !1040
  %127 = getelementptr inbounds [22 x i32], [22 x i32]* @term_sig, i64 0, i64 %126, !dbg !1048
  %128 = load i32, i32* %127, align 4, !dbg !1048, !tbaa !624
  call void @llvm.dbg.value(metadata i32 %128, metadata !959, metadata !DIExpression()) #35, !dbg !1051
  call void @llvm.dbg.value(metadata i32 %113, metadata !964, metadata !DIExpression()) #35, !dbg !1051
  %129 = icmp eq i64 %126, 0, !dbg !1053
  %130 = icmp eq i32 %128, %113
  %131 = or i1 %129, %130, !dbg !1054
  br i1 %131, label %136, label %132, !dbg !1054

132:                                              ; preds = %125
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %116) #35, !dbg !1055
  call void @llvm.dbg.declare(metadata %struct.sigaction* %4, metadata !965, metadata !DIExpression()) #35, !dbg !1056
  %133 = call i32 @sigaction(i32 noundef %128, %struct.sigaction* noundef null, %struct.sigaction* noundef nonnull %4) #35, !dbg !1057
  %134 = load void (i32)*, void (i32)** %117, align 8, !dbg !1058, !tbaa !633
  %135 = icmp eq void (i32)* %134, inttoptr (i64 1 to void (i32)*), !dbg !1059
  call void @llvm.dbg.value(metadata i1 %135, metadata !966, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1051
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %116) #35, !dbg !1060
  br i1 %135, label %138, label %136, !dbg !1061

136:                                              ; preds = %132, %125
  %137 = call i32 @sigaddset(%struct.__sigset_t* noundef nonnull %5, i32 noundef %128) #35, !dbg !1062
  br label %138, !dbg !1062

138:                                              ; preds = %136, %132
  %139 = add nuw nsw i64 %126, 1, !dbg !1063
  call void @llvm.dbg.value(metadata i64 %139, metadata !1031, metadata !DIExpression()) #35, !dbg !1040
  %140 = icmp eq i64 %139, 22, !dbg !1064
  br i1 %140, label %118, label %125, !dbg !1041, !llvm.loop !1065

141:                                              ; preds = %157, %118
  %142 = call i32 @sigaddset(%struct.__sigset_t* noundef nonnull %5, i32 noundef %113) #35, !dbg !1067
  %143 = call i32 @sigaddset(%struct.__sigset_t* noundef nonnull %5, i32 noundef 17) #35, !dbg !1068
  %144 = call i32 @sigprocmask(i32 noundef 0, %struct.__sigset_t* noundef nonnull %5, %struct.__sigset_t* noundef nonnull %10) #35, !dbg !1069
  %145 = icmp eq i32 %144, 0, !dbg !1071
  br i1 %145, label %165, label %161, !dbg !1072

146:                                              ; preds = %157, %122
  %147 = phi i32 [ %119, %122 ], [ %158, %157 ]
  call void @llvm.dbg.value(metadata i32 %147, metadata !1033, metadata !DIExpression()) #35, !dbg !1043
  call void @llvm.dbg.value(metadata i32 %147, metadata !959, metadata !DIExpression()) #35, !dbg !1073
  call void @llvm.dbg.value(metadata i32 %113, metadata !964, metadata !DIExpression()) #35, !dbg !1073
  %148 = icmp eq i32 %147, 14, !dbg !1076
  %149 = icmp eq i32 %147, %113
  %150 = or i1 %148, %149, !dbg !1077
  br i1 %150, label %155, label %151, !dbg !1077

151:                                              ; preds = %146
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %123) #35, !dbg !1078
  call void @llvm.dbg.declare(metadata %struct.sigaction* %3, metadata !965, metadata !DIExpression()) #35, !dbg !1079
  %152 = call i32 @sigaction(i32 noundef %147, %struct.sigaction* noundef null, %struct.sigaction* noundef nonnull %3) #35, !dbg !1080
  %153 = load void (i32)*, void (i32)** %124, align 8, !dbg !1081, !tbaa !633
  %154 = icmp eq void (i32)* %153, inttoptr (i64 1 to void (i32)*), !dbg !1082
  call void @llvm.dbg.value(metadata i1 %154, metadata !966, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1073
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %123) #35, !dbg !1083
  br i1 %154, label %157, label %155, !dbg !1084

155:                                              ; preds = %151, %146
  %156 = call i32 @sigaddset(%struct.__sigset_t* noundef nonnull %5, i32 noundef %147) #35, !dbg !1085
  br label %157, !dbg !1085

157:                                              ; preds = %155, %151
  %158 = add nsw i32 %147, 1, !dbg !1086
  call void @llvm.dbg.value(metadata i32 %158, metadata !1033, metadata !DIExpression()) #35, !dbg !1043
  %159 = call i32 @__libc_current_sigrtmax() #35, !dbg !1044
  %160 = icmp slt i32 %147, %159, !dbg !1046
  br i1 %160, label %146, label %141, !dbg !1047, !llvm.loop !1087

161:                                              ; preds = %141
  %162 = tail call i32* @__errno_location() #38, !dbg !1089
  %163 = load i32, i32* %162, align 4, !dbg !1089, !tbaa !624
  %164 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i64 0, i64 0), i32 noundef 5) #35, !dbg !1089
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %163, i8* noundef %164) #35, !dbg !1089
  br label %165, !dbg !1089

165:                                              ; preds = %141, %161
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %114) #35, !dbg !1090
  %166 = call i32 @getpid() #35, !dbg !1091
  call void @llvm.dbg.value(metadata i32 %166, metadata !764, metadata !DIExpression()), !dbg !778
  %167 = call i32 @fork() #35, !dbg !1092
  store i32 %167, i32* @monitored_pid, align 4, !dbg !1093, !tbaa !624
  switch i32 %167, label %196 [
    i32 -1, label %168
    i32 0, label %172
  ], !dbg !1094

168:                                              ; preds = %165
  %169 = tail call i32* @__errno_location() #38, !dbg !1095
  %170 = load i32, i32* %169, align 4, !dbg !1095, !tbaa !624
  %171 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), i32 noundef 5) #35, !dbg !1095
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %170, i8* noundef %171) #35, !dbg !1095
  br label %257, !dbg !1097

172:                                              ; preds = %165
  %173 = load i32, i32* @term_signal, align 4, !dbg !1098, !tbaa !624
  %174 = call i32 (i32, ...) @prctl(i32 noundef 1, i32 noundef %173) #35, !dbg !1099
  %175 = call i32 @getppid() #35, !dbg !1100
  %176 = icmp eq i32 %175, %166, !dbg !1102
  br i1 %176, label %177, label %257, !dbg !1103

177:                                              ; preds = %172
  %178 = call i32 @sigprocmask(i32 noundef 2, %struct.__sigset_t* noundef nonnull %10, %struct.__sigset_t* noundef null) #35, !dbg !1104
  %179 = icmp eq i32 %178, 0, !dbg !1106
  br i1 %179, label %184, label %180, !dbg !1107

180:                                              ; preds = %177
  %181 = tail call i32* @__errno_location() #38, !dbg !1108
  %182 = load i32, i32* %181, align 4, !dbg !1108, !tbaa !624
  %183 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #35, !dbg !1108
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %182, i8* noundef %183) #35, !dbg !1108
  br label %257, !dbg !1110

184:                                              ; preds = %177
  %185 = call void (i32)* @signal(i32 noundef 21, void (i32)* noundef null) #35, !dbg !1111
  %186 = call void (i32)* @signal(i32 noundef 22, void (i32)* noundef null) #35, !dbg !1112
  %187 = load i8*, i8** %50, align 8, !dbg !1113, !tbaa !527
  %188 = call i32 @execvp(i8* noundef %187, i8** noundef nonnull %50) #35, !dbg !1114
  %189 = tail call i32* @__errno_location() #38, !dbg !1115
  %190 = load i32, i32* %189, align 4, !dbg !1115, !tbaa !624
  %191 = icmp eq i32 %190, 2, !dbg !1116
  %192 = select i1 %191, i32 127, i32 126, !dbg !1115
  call void @llvm.dbg.value(metadata i32 %192, metadata !765, metadata !DIExpression()), !dbg !1117
  %193 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i32 noundef 5) #35, !dbg !1118
  %194 = load i8*, i8** @command, align 8, !dbg !1118, !tbaa !527
  %195 = call i8* @quote(i8* noundef %194) #35, !dbg !1118
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %190, i8* noundef %193, i8* noundef %195) #35, !dbg !1118
  br label %257

196:                                              ; preds = %165
  %197 = bitcast i32* %11 to i8*, !dbg !1119
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %197) #35, !dbg !1119
  call fastcc void @settimeout(double noundef %47, i1 noundef true), !dbg !1120
  %198 = load i32, i32* @monitored_pid, align 4, !dbg !1121, !tbaa !624
  call void @llvm.dbg.value(metadata i32* %11, metadata !771, metadata !DIExpression(DW_OP_deref)), !dbg !1122
  %199 = call i32 @waitpid(i32 noundef %198, i32* noundef nonnull %11, i32 noundef 1) #35, !dbg !1123
  call void @llvm.dbg.value(metadata i32 %199, metadata !769, metadata !DIExpression()), !dbg !1122
  %200 = icmp eq i32 %199, 0, !dbg !1124
  br i1 %200, label %201, label %206, !dbg !1125

201:                                              ; preds = %196, %201
  %202 = call i32 @sigsuspend(%struct.__sigset_t* noundef nonnull %10) #35, !dbg !1126
  %203 = load i32, i32* @monitored_pid, align 4, !dbg !1121, !tbaa !624
  call void @llvm.dbg.value(metadata i32* %11, metadata !771, metadata !DIExpression(DW_OP_deref)), !dbg !1122
  %204 = call i32 @waitpid(i32 noundef %203, i32* noundef nonnull %11, i32 noundef 1) #35, !dbg !1123
  call void @llvm.dbg.value(metadata i32 %204, metadata !769, metadata !DIExpression()), !dbg !1122
  %205 = icmp eq i32 %204, 0, !dbg !1124
  br i1 %205, label %201, label %206, !dbg !1125, !llvm.loop !1127

206:                                              ; preds = %201, %196
  %207 = phi i32 [ %199, %196 ], [ %204, %201 ], !dbg !1123
  %208 = icmp slt i32 %207, 0, !dbg !1129
  br i1 %208, label %209, label %213, !dbg !1130

209:                                              ; preds = %206
  %210 = tail call i32* @__errno_location() #38, !dbg !1131
  %211 = load i32, i32* %210, align 4, !dbg !1131, !tbaa !624
  %212 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), i32 noundef 5) #35, !dbg !1131
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %211, i8* noundef %212) #35, !dbg !1131
  call void @llvm.dbg.value(metadata i32 125, metadata !771, metadata !DIExpression()), !dbg !1122
  br label %251, !dbg !1133

213:                                              ; preds = %206
  %214 = load i32, i32* %11, align 4, !dbg !1134, !tbaa !624
  call void @llvm.dbg.value(metadata i32 %214, metadata !771, metadata !DIExpression()), !dbg !1122
  %215 = and i32 %214, 127, !dbg !1134
  %216 = icmp eq i32 %215, 0, !dbg !1134
  br i1 %216, label %217, label %220, !dbg !1135

217:                                              ; preds = %213
  %218 = lshr i32 %214, 8, !dbg !1136
  %219 = and i32 %218, 255, !dbg !1136
  call void @llvm.dbg.value(metadata i32 %219, metadata !771, metadata !DIExpression()), !dbg !1122
  br label %251, !dbg !1137

220:                                              ; preds = %213
  %221 = shl nuw nsw i32 %215, 24, !dbg !1138
  %222 = add nuw i32 %221, 16777216, !dbg !1138
  %223 = icmp sgt i32 %222, 33554431, !dbg !1138
  br i1 %223, label %224, label %248, !dbg !1139

224:                                              ; preds = %220
  call void @llvm.dbg.value(metadata i32 %215, metadata !772, metadata !DIExpression()), !dbg !1140
  %225 = and i32 %214, 128, !dbg !1141
  %226 = icmp eq i32 %225, 0, !dbg !1141
  br i1 %226, label %229, label %227, !dbg !1143

227:                                              ; preds = %224
  %228 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0), i32 noundef 5) #35, !dbg !1144
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %228) #35, !dbg !1144
  br label %229, !dbg !1144

229:                                              ; preds = %227, %224
  %230 = load i1, i1* @timed_out, align 4, !dbg !1145
  br i1 %230, label %241, label %231, !dbg !1147

231:                                              ; preds = %229
  %232 = call i32 (i32, ...) @prctl(i32 noundef 4, i32 noundef 0) #35, !dbg !1148
  %233 = icmp eq i32 %232, 0, !dbg !1154
  br i1 %233, label %238, label %234, !dbg !1155

234:                                              ; preds = %231
  %235 = tail call i32* @__errno_location() #38, !dbg !1156
  %236 = load i32, i32* %235, align 4, !dbg !1156, !tbaa !624
  %237 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.76, i64 0, i64 0), i32 noundef 5) #35, !dbg !1156
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %236, i8* noundef %237) #35, !dbg !1156
  br label %241, !dbg !1157

238:                                              ; preds = %231
  %239 = call void (i32)* @signal(i32 noundef %215, void (i32)* noundef null) #35, !dbg !1158
  call fastcc void @unblock_signal(i32 noundef %215), !dbg !1160
  %240 = call i32 @raise(i32 noundef %215) #35, !dbg !1161
  br label %241, !dbg !1162

241:                                              ; preds = %234, %238, %229
  %242 = load i1, i1* @timed_out, align 4, !dbg !1163
  %243 = icmp eq i32 %215, 9
  %244 = select i1 %242, i1 %243, i1 false, !dbg !1165
  br i1 %244, label %245, label %246, !dbg !1165

245:                                              ; preds = %241
  store i1 true, i1* @preserve_status, align 1, !dbg !1166
  br label %246, !dbg !1167

246:                                              ; preds = %245, %241
  %247 = or i32 %215, 128, !dbg !1168
  call void @llvm.dbg.value(metadata i32 %247, metadata !771, metadata !DIExpression()), !dbg !1122
  br label %251, !dbg !1169

248:                                              ; preds = %220
  %249 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0), i32 noundef 5) #35, !dbg !1170
  %250 = load i32, i32* %11, align 4, !dbg !1170, !tbaa !624
  call void @llvm.dbg.value(metadata i32 %250, metadata !771, metadata !DIExpression()), !dbg !1122
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %249, i32 noundef %250) #35, !dbg !1170
  call void @llvm.dbg.value(metadata i32 1, metadata !771, metadata !DIExpression()), !dbg !1122
  br label %251

251:                                              ; preds = %217, %248, %246, %209
  %252 = phi i32 [ %219, %217 ], [ 1, %248 ], [ %247, %246 ], [ 125, %209 ]
  %253 = load i1, i1* @timed_out, align 4, !dbg !1172
  %254 = load i1, i1* @preserve_status, align 1, !dbg !1174
  %255 = select i1 %254, i32 %252, i32 124, !dbg !1174
  %256 = select i1 %253, i32 %255, i32 %252, !dbg !1174
  call void @llvm.dbg.value(metadata i32 %256, metadata !771, metadata !DIExpression()), !dbg !1122
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %197) #35, !dbg !1175
  br label %257

257:                                              ; preds = %172, %251, %184, %180, %168
  %258 = phi i32 [ 125, %168 ], [ 125, %180 ], [ %192, %184 ], [ %256, %251 ], [ 125, %172 ], !dbg !1176
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %112) #35, !dbg !1177
  ret i32 %258, !dbg !1177
}

; Function Attrs: nounwind
declare !dbg !1178 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1181 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1182 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1185 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc double @parse_duration(i8* noundef %0) unnamed_addr #12 !dbg !1191 {
  %2 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1195, metadata !DIExpression()), !dbg !1199
  %3 = bitcast i8** %2 to i8*, !dbg !1200
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #35, !dbg !1200
  %4 = tail call i32* @__errno_location() #38, !dbg !1201
  store i32 0, i32* %4, align 4, !dbg !1202, !tbaa !624
  call void @llvm.dbg.value(metadata i8** %2, metadata !1196, metadata !DIExpression(DW_OP_deref)), !dbg !1199
  %5 = call double @cl_strtod(i8* noundef %0, i8** noundef nonnull %2) #35, !dbg !1203
  call void @llvm.dbg.value(metadata double %5, metadata !1197, metadata !DIExpression()), !dbg !1199
  %6 = load i32, i32* %4, align 4, !dbg !1204, !tbaa !624
  call void @llvm.dbg.value(metadata double %5, metadata !1205, metadata !DIExpression()) #35, !dbg !1213
  call void @llvm.dbg.value(metadata i32 %6, metadata !1211, metadata !DIExpression()) #35, !dbg !1213
  %7 = icmp eq i32 %6, 34, !dbg !1215
  %8 = fcmp oeq double %5, 0.000000e+00
  %9 = and i1 %8, %7, !dbg !1217
  %10 = call double @llvm.copysign.f64(double 4.940660e-324, double %5) #35, !dbg !1217
  %11 = call double @llvm.fmuladd.f64(double %5, double 0x3CA0000000000001, double %5) #35, !dbg !1217
  %12 = select i1 %9, double %10, double %11, !dbg !1217
  call void @llvm.dbg.value(metadata double %12, metadata !1198, metadata !DIExpression()), !dbg !1199
  %13 = load i8*, i8** %2, align 8, !dbg !1218, !tbaa !527
  call void @llvm.dbg.value(metadata i8* %13, metadata !1196, metadata !DIExpression()), !dbg !1199
  %14 = icmp ne i8* %13, %0, !dbg !1220
  %15 = fcmp oge double %12, 0.000000e+00
  %16 = select i1 %14, i1 %15, i1 false, !dbg !1221
  br i1 %16, label %17, label %28, !dbg !1221

17:                                               ; preds = %1
  %18 = load i8, i8* %13, align 1, !dbg !1222, !tbaa !633
  %19 = icmp eq i8 %18, 0, !dbg !1222
  br i1 %19, label %31, label %20, !dbg !1223

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !1224
  %22 = load i8, i8* %21, align 1, !dbg !1225, !tbaa !633
  %23 = icmp eq i8 %22, 0, !dbg !1225
  br i1 %23, label %24, label %28, !dbg !1226

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %13, metadata !1196, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata double* undef, metadata !1227, metadata !DIExpression()) #35, !dbg !1235
  call void @llvm.dbg.value(metadata i8 %18, metadata !1233, metadata !DIExpression()) #35, !dbg !1235
  switch i8 %18, label %28 [
    i8 100, label %27
    i8 115, label %31
    i8 109, label %25
    i8 104, label %26
  ], !dbg !1237

25:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i32 60, metadata !1234, metadata !DIExpression()) #35, !dbg !1235
  br label %31, !dbg !1238

26:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i32 3600, metadata !1234, metadata !DIExpression()) #35, !dbg !1235
  br label %31, !dbg !1240

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i32 86400, metadata !1234, metadata !DIExpression()) #35, !dbg !1235
  br label %31, !dbg !1241

28:                                               ; preds = %24, %20, %1
  %29 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.70, i64 0, i64 0), i32 noundef 5) #35, !dbg !1242
  %30 = call i8* @quote(i8* noundef %0) #35, !dbg !1242
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %29, i8* noundef %30) #35, !dbg !1242
  call void @usage(i32 noundef 125) #39, !dbg !1244
  unreachable, !dbg !1244

31:                                               ; preds = %17, %24, %25, %26, %27
  %32 = phi double [ 8.640000e+04, %27 ], [ 3.600000e+03, %26 ], [ 6.000000e+01, %25 ], [ 1.000000e+00, %24 ], [ 1.000000e+00, %17 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1234, metadata !DIExpression()) #35, !dbg !1235
  %33 = fmul double %12, %32, !dbg !1245
  call void @llvm.dbg.value(metadata double %33, metadata !1205, metadata !DIExpression()) #35, !dbg !1246
  call void @llvm.dbg.value(metadata i32 0, metadata !1211, metadata !DIExpression()) #35, !dbg !1246
  %34 = call double @llvm.fmuladd.f64(double %33, double 0x3CA0000000000001, double %33) #35, !dbg !1248
  call void @llvm.dbg.value(metadata double undef, metadata !1198, metadata !DIExpression()), !dbg !1199
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #35, !dbg !1249
  ret double %34, !dbg !1250
}

; Function Attrs: nounwind
declare !dbg !1251 i32 @setpgid(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1255 i32 @sigemptyset(%struct.__sigset_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @cleanup(i32 noundef %0) #12 !dbg !1258 {
  %2 = alloca [19 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !1260, metadata !DIExpression()), !dbg !1272
  %3 = icmp eq i32 %0, 14, !dbg !1273
  br i1 %3, label %4, label %6, !dbg !1275

4:                                                ; preds = %1
  store i1 true, i1* @timed_out, align 4, !dbg !1276
  call void @llvm.dbg.value(metadata i32 124, metadata !784, metadata !DIExpression()), !dbg !1278
  store volatile i32 124, i32* @exit_failure, align 4, !dbg !1280, !tbaa !624
  %5 = load i32, i32* @term_signal, align 4, !dbg !1281, !tbaa !624
  call void @llvm.dbg.value(metadata i32 %5, metadata !1260, metadata !DIExpression()), !dbg !1272
  br label %6, !dbg !1282

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !1260, metadata !DIExpression()), !dbg !1272
  %8 = load i32, i32* @monitored_pid, align 4, !dbg !1283, !tbaa !624
  %9 = icmp sgt i32 %8, 0, !dbg !1284
  br i1 %9, label %10, label %50, !dbg !1285

10:                                               ; preds = %6
  %11 = load double, double* @kill_after, align 8, !dbg !1286, !tbaa !801
  %12 = fcmp une double %11, 0.000000e+00, !dbg !1286
  br i1 %12, label %13, label %16, !dbg !1287

13:                                               ; preds = %10
  %14 = tail call i32* @__errno_location() #38, !dbg !1288
  %15 = load i32, i32* %14, align 4, !dbg !1288, !tbaa !624
  call void @llvm.dbg.value(metadata i32 %15, metadata !1261, metadata !DIExpression()), !dbg !1289
  store i32 9, i32* @term_signal, align 4, !dbg !1290, !tbaa !624
  tail call fastcc void @settimeout(double noundef %11, i1 noundef false), !dbg !1291
  store double 0.000000e+00, double* @kill_after, align 8, !dbg !1292, !tbaa !801
  store i32 %15, i32* %14, align 4, !dbg !1293, !tbaa !624
  br label %16, !dbg !1294

16:                                               ; preds = %13, %10
  %17 = load i1, i1* @verbose, align 1, !dbg !1295
  br i1 %17, label %18, label %30, !dbg !1296

18:                                               ; preds = %16
  %19 = getelementptr inbounds [19 x i8], [19 x i8]* %2, i64 0, i64 0, !dbg !1297
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %19) #35, !dbg !1297
  call void @llvm.dbg.declare(metadata [19 x i8]* %2, metadata !1266, metadata !DIExpression()), !dbg !1298
  %20 = icmp eq i32 %7, 0, !dbg !1299
  br i1 %20, label %24, label %21, !dbg !1301

21:                                               ; preds = %18
  %22 = call i32 @sig2str(i32 noundef %7, i8* noundef nonnull %19) #35, !dbg !1302
  %23 = icmp eq i32 %22, 0, !dbg !1303
  br i1 %23, label %26, label %24, !dbg !1304

24:                                               ; preds = %21, %18
  %25 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef nonnull %19, i64 noundef 19, i32 noundef 1, i64 noundef 19, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0), i32 noundef %7) #35, !dbg !1305
  br label %26, !dbg !1305

26:                                               ; preds = %24, %21
  %27 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0), i32 noundef 5) #35, !dbg !1306
  %28 = load i8*, i8** @command, align 8, !dbg !1306, !tbaa !527
  %29 = call i8* @quote(i8* noundef %28) #35, !dbg !1306
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %27, i8* noundef nonnull %19, i8* noundef %29) #35, !dbg !1306
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %19) #35, !dbg !1307
  br label %30, !dbg !1308

30:                                               ; preds = %26, %16
  %31 = load i32, i32* @monitored_pid, align 4, !dbg !1309, !tbaa !624
  call void @llvm.dbg.value(metadata i32 %31, metadata !1310, metadata !DIExpression()) #35, !dbg !1316
  call void @llvm.dbg.value(metadata i32 %7, metadata !1315, metadata !DIExpression()) #35, !dbg !1316
  %32 = icmp eq i32 %31, 0, !dbg !1318
  br i1 %32, label %33, label %35, !dbg !1320

33:                                               ; preds = %30
  %34 = call void (i32)* @signal(i32 noundef %7, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #35, !dbg !1321
  br label %35, !dbg !1321

35:                                               ; preds = %30, %33
  %36 = call i32 @kill(i32 noundef %31, i32 noundef %7) #35, !dbg !1322
  %37 = load i1, i1* @foreground, align 1, !dbg !1323
  br i1 %37, label %54, label %38, !dbg !1325

38:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 0, metadata !1310, metadata !DIExpression()) #35, !dbg !1326
  call void @llvm.dbg.value(metadata i32 %7, metadata !1315, metadata !DIExpression()) #35, !dbg !1326
  %39 = call void (i32)* @signal(i32 noundef %7, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #35, !dbg !1329
  %40 = call i32 @kill(i32 noundef 0, i32 noundef %7) #35, !dbg !1330
  switch i32 %7, label %41 [
    i32 18, label %54
    i32 9, label %54
  ], !dbg !1331

41:                                               ; preds = %38
  %42 = load i32, i32* @monitored_pid, align 4, !dbg !1333, !tbaa !624
  call void @llvm.dbg.value(metadata i32 %42, metadata !1310, metadata !DIExpression()) #35, !dbg !1335
  call void @llvm.dbg.value(metadata i32 18, metadata !1315, metadata !DIExpression()) #35, !dbg !1335
  %43 = icmp eq i32 %42, 0, !dbg !1337
  br i1 %43, label %44, label %46, !dbg !1338

44:                                               ; preds = %41
  %45 = call void (i32)* @signal(i32 noundef 18, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #35, !dbg !1339
  br label %46, !dbg !1339

46:                                               ; preds = %41, %44
  %47 = call i32 @kill(i32 noundef %42, i32 noundef 18) #35, !dbg !1340
  call void @llvm.dbg.value(metadata i32 0, metadata !1310, metadata !DIExpression()) #35, !dbg !1341
  call void @llvm.dbg.value(metadata i32 18, metadata !1315, metadata !DIExpression()) #35, !dbg !1341
  %48 = call void (i32)* @signal(i32 noundef 18, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #35, !dbg !1343
  %49 = call i32 @kill(i32 noundef 0, i32 noundef 18) #35, !dbg !1344
  br label %54, !dbg !1345

50:                                               ; preds = %6
  %51 = icmp eq i32 %8, -1, !dbg !1346
  br i1 %51, label %54, label %52, !dbg !1348

52:                                               ; preds = %50
  %53 = add nsw i32 %7, 128, !dbg !1349
  tail call void @_exit(i32 noundef %53) #37, !dbg !1351
  unreachable, !dbg !1351

54:                                               ; preds = %38, %38, %50, %35, %46
  ret void, !dbg !1352
}

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1353 i32 @sigaction(i32 noundef, %struct.sigaction* noundef, %struct.sigaction* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1361 void (i32)* @signal(i32 noundef, void (i32)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define internal void @chld(i32 noundef %0) #13 !dbg !1364 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1366, metadata !DIExpression()), !dbg !1367
  ret void, !dbg !1368
}

; Function Attrs: nounwind uwtable
define internal fastcc void @unblock_signal(i32 noundef %0) unnamed_addr #12 !dbg !1369 {
  %2 = alloca %struct.__sigset_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1371, metadata !DIExpression()), !dbg !1373
  %3 = bitcast %struct.__sigset_t* %2 to i8*, !dbg !1374
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #35, !dbg !1374
  call void @llvm.dbg.declare(metadata %struct.__sigset_t* %2, metadata !1372, metadata !DIExpression()), !dbg !1375
  %4 = call i32 @sigemptyset(%struct.__sigset_t* noundef nonnull %2) #35, !dbg !1376
  %5 = call i32 @sigaddset(%struct.__sigset_t* noundef nonnull %2, i32 noundef %0) #35, !dbg !1377
  %6 = call i32 @sigprocmask(i32 noundef 1, %struct.__sigset_t* noundef nonnull %2, %struct.__sigset_t* noundef null) #35, !dbg !1378
  %7 = icmp eq i32 %6, 0, !dbg !1380
  br i1 %7, label %12, label %8, !dbg !1381

8:                                                ; preds = %1
  %9 = tail call i32* @__errno_location() #38, !dbg !1382
  %10 = load i32, i32* %9, align 4, !dbg !1382, !tbaa !624
  %11 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i64 0, i64 0), i32 noundef 5) #35, !dbg !1382
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %10, i8* noundef %11) #35, !dbg !1382
  br label %12, !dbg !1382

12:                                               ; preds = %8, %1
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #35, !dbg !1383
  ret void, !dbg !1383
}

; Function Attrs: nounwind
declare !dbg !1384 i32 @sigaddset(%struct.__sigset_t* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1387 i32 @sigprocmask(i32 noundef, %struct.__sigset_t* noundef, %struct.__sigset_t* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !1394 i32 @getpid() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1397 i32 @fork() local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1398 i32 @prctl(i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1402 i32 @getppid() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1403 i32 @execvp(i8* noundef, i8** noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @settimeout(double noundef %0, i1 noundef %1) unnamed_addr #12 !dbg !1406 {
  %3 = alloca %struct.itimerspec, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata double %0, metadata !1410, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i1 %1, metadata !1411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1433
  %5 = tail call [2 x i64] @dtotimespec(double noundef %0) #38, !dbg !1434
  %6 = extractvalue [2 x i64] %5, 0, !dbg !1434
  call void @llvm.dbg.value(metadata i64 %6, metadata !1412, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1433
  %7 = extractvalue [2 x i64] %5, 1, !dbg !1434
  call void @llvm.dbg.value(metadata i64 %7, metadata !1412, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1433
  %8 = bitcast %struct.itimerspec* %3 to i8*, !dbg !1435
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1435
  call void @llvm.dbg.declare(metadata %struct.itimerspec* %3, metadata !1419, metadata !DIExpression()), !dbg !1436
  %9 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %3, i64 0, i32 1, i32 0, !dbg !1437
  %10 = bitcast %struct.itimerspec* %3 to i8*, !dbg !1437
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false), !dbg !1438
  store i64 %6, i64* %9, align 8, !dbg !1437, !tbaa.struct !1439
  %11 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %3, i64 0, i32 1, i32 1, !dbg !1437
  store i64 %7, i64* %11, align 8, !dbg !1437, !tbaa.struct !1442
  %12 = bitcast i8** %4 to i8*, !dbg !1443
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #35, !dbg !1443
  call void @llvm.dbg.value(metadata i8** %4, metadata !1425, metadata !DIExpression(DW_OP_deref)), !dbg !1433
  %13 = call i32 @timer_create(i32 noundef 0, %struct.sigevent* noundef null, i8** noundef nonnull %4) #35, !dbg !1444
  %14 = icmp eq i32 %13, 0, !dbg !1446
  br i1 %14, label %15, label %27, !dbg !1447

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8, !dbg !1448, !tbaa !527
  call void @llvm.dbg.value(metadata i8* %16, metadata !1425, metadata !DIExpression()), !dbg !1433
  %17 = call i32 @timer_settime(i8* noundef %16, i32 noundef 0, %struct.itimerspec* noundef nonnull %3, %struct.itimerspec* noundef null) #35, !dbg !1451
  %18 = icmp eq i32 %17, 0, !dbg !1452
  br i1 %18, label %45, label %19, !dbg !1453

19:                                               ; preds = %15
  br i1 %1, label %20, label %24, !dbg !1454

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #38, !dbg !1456
  %22 = load i32, i32* %21, align 4, !dbg !1456, !tbaa !624
  %23 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i64 0, i64 0), i32 noundef 5) #35, !dbg !1456
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %22, i8* noundef %23) #35, !dbg !1456
  br label %24, !dbg !1456

24:                                               ; preds = %20, %19
  %25 = load i8*, i8** %4, align 8, !dbg !1458, !tbaa !527
  call void @llvm.dbg.value(metadata i8* %25, metadata !1425, metadata !DIExpression()), !dbg !1433
  %26 = call i32 @timer_delete(i8* noundef %25) #35, !dbg !1459
  br label %34, !dbg !1460

27:                                               ; preds = %2
  br i1 %1, label %28, label %34, !dbg !1461

28:                                               ; preds = %27
  %29 = tail call i32* @__errno_location() #38, !dbg !1463
  %30 = load i32, i32* %29, align 4, !dbg !1463, !tbaa !624
  %31 = icmp eq i32 %30, 38, !dbg !1464
  br i1 %31, label %34, label %32, !dbg !1465

32:                                               ; preds = %28
  %33 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.75, i64 0, i64 0), i32 noundef 5) #35, !dbg !1466
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %30, i8* noundef %33) #35, !dbg !1466
  br label %34, !dbg !1466

34:                                               ; preds = %27, %28, %32, %24
  %35 = fcmp ult double %0, 0x41EFFFFFFFE00000, !dbg !1467
  br i1 %35, label %36, label %42, !dbg !1468

36:                                               ; preds = %34
  %37 = fptoui double %0 to i32, !dbg !1469
  call void @llvm.dbg.value(metadata i32 %37, metadata !1430, metadata !DIExpression()), !dbg !1470
  %38 = uitofp i32 %37 to double, !dbg !1471
  %39 = fcmp olt double %38, %0, !dbg !1472
  %40 = zext i1 %39 to i32, !dbg !1472
  %41 = add i32 %40, %37, !dbg !1473
  call void @llvm.dbg.value(metadata i32 %41, metadata !1429, metadata !DIExpression()), !dbg !1433
  br label %42

42:                                               ; preds = %34, %36
  %43 = phi i32 [ %41, %36 ], [ -1, %34 ], !dbg !1474
  call void @llvm.dbg.value(metadata i32 %43, metadata !1429, metadata !DIExpression()), !dbg !1433
  %44 = call i32 @alarm(i32 noundef %43) #35, !dbg !1475
  br label %45, !dbg !1476

45:                                               ; preds = %15, %42
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #35, !dbg !1476
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1476
  ret void, !dbg !1476
}

declare !dbg !1477 i32 @waitpid(i32 noundef, i32* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1481 i32 @sigsuspend(%struct.__sigset_t* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1484 i32 @raise(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nounwind
declare !dbg !1487 i32 @timer_create(i32 noundef, %struct.sigevent* noundef, i8** noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1530 i32 @timer_settime(i8* noundef, i32 noundef, %struct.itimerspec* noundef, %struct.itimerspec* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1538 i32 @timer_delete(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1541 i32 @alarm(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare i32 @__snprintf_chk(i8* noundef, i64 noundef, i32 noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #15

; Function Attrs: nounwind
declare !dbg !1544 i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.copysign.f64(double, double) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @operand2sig(i8* noundef nonnull %0) local_unnamed_addr #12 !dbg !1547 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1551, metadata !DIExpression()), !dbg !1562
  %4 = bitcast i32* %2 to i8*, !dbg !1563
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #35, !dbg !1563
  %5 = load i8, i8* %0, align 1, !dbg !1564, !tbaa !633
  %6 = zext i8 %5 to i32, !dbg !1564
  call void @llvm.dbg.value(metadata i32 %6, metadata !1565, metadata !DIExpression()), !dbg !1571
  %7 = add nsw i32 %6, -48, !dbg !1573
  %8 = icmp ult i32 %7, 10, !dbg !1573
  br i1 %8, label %9, label %37, !dbg !1574

9:                                                ; preds = %1
  %10 = bitcast i8** %3 to i8*, !dbg !1575
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #35, !dbg !1575
  %11 = tail call i32* @__errno_location() #38, !dbg !1576
  store i32 0, i32* %11, align 4, !dbg !1577, !tbaa !624
  call void @llvm.dbg.value(metadata i8** %3, metadata !1553, metadata !DIExpression(DW_OP_deref)), !dbg !1578
  %12 = call i64 @strtol(i8* noundef nonnull %0, i8** noundef nonnull %3, i32 noundef 10) #35, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %12, metadata !1556, metadata !DIExpression()), !dbg !1578
  %13 = trunc i64 %12 to i32, !dbg !1580
  call void @llvm.dbg.value(metadata i32 %13, metadata !1557, metadata !DIExpression()), !dbg !1578
  %14 = load i8*, i8** %3, align 8, !dbg !1581, !tbaa !527
  call void @llvm.dbg.value(metadata i8* %14, metadata !1553, metadata !DIExpression()), !dbg !1578
  %15 = icmp eq i8* %14, %0, !dbg !1582
  br i1 %15, label %28, label %16, !dbg !1583

16:                                               ; preds = %9
  %17 = load i8, i8* %14, align 1, !dbg !1584, !tbaa !633
  %18 = icmp eq i8 %17, 0, !dbg !1584
  br i1 %18, label %19, label %28, !dbg !1585

19:                                               ; preds = %16
  %20 = load i32, i32* %11, align 4, !dbg !1586, !tbaa !624
  %21 = icmp eq i32 %20, 0, !dbg !1586
  %22 = add i64 %12, 2147483648
  %23 = icmp ult i64 %22, 4294967296
  %24 = select i1 %21, i1 %23, i1 false, !dbg !1587
  br i1 %24, label %25, label %28, !dbg !1587

25:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %13, metadata !1552, metadata !DIExpression()), !dbg !1562
  %26 = icmp eq i32 %13, -1, !dbg !1588
  %27 = icmp slt i32 %13, 255, !dbg !1590
  br i1 %27, label %28, label %31, !dbg !1590

28:                                               ; preds = %9, %16, %19, %25
  %29 = phi i1 [ %26, %25 ], [ true, %19 ], [ true, %16 ], [ true, %9 ]
  %30 = phi i32 [ %13, %25 ], [ -1, %19 ], [ -1, %16 ], [ -1, %9 ]
  br label %31, !dbg !1590

31:                                               ; preds = %25, %28
  %32 = phi i1 [ %29, %28 ], [ %26, %25 ]
  %33 = phi i32 [ %30, %28 ], [ %13, %25 ]
  %34 = phi i32 [ 127, %28 ], [ 255, %25 ]
  %35 = select i1 %32, i32 -1, i32 %34, !dbg !1590
  %36 = and i32 %35, %33, !dbg !1590
  store i32 %36, i32* %2, align 4, !dbg !1578, !tbaa !624
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #35, !dbg !1591
  br label %74, !dbg !1592

37:                                               ; preds = %1
  %38 = tail call noalias nonnull i8* @xstrdup(i8* noundef nonnull %0) #35, !dbg !1593
  call void @llvm.dbg.value(metadata i8* %38, metadata !1558, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i8* %38, metadata !1560, metadata !DIExpression()), !dbg !1595
  %39 = load i8, i8* %38, align 1, !dbg !1596, !tbaa !633
  %40 = icmp eq i8 %39, 0, !dbg !1598
  br i1 %40, label %41, label %44, !dbg !1598

41:                                               ; preds = %52, %37
  call void @llvm.dbg.value(metadata i32* %2, metadata !1552, metadata !DIExpression(DW_OP_deref)), !dbg !1562
  %42 = call i32 @str2sig(i8* noundef nonnull %38, i32* noundef nonnull %2) #35, !dbg !1599
  %43 = icmp eq i32 %42, 0, !dbg !1601
  br i1 %43, label %72, label %56, !dbg !1602

44:                                               ; preds = %37, %52
  %45 = phi i8 [ %54, %52 ], [ %39, %37 ]
  %46 = phi i8* [ %53, %52 ], [ %38, %37 ]
  call void @llvm.dbg.value(metadata i8* %46, metadata !1560, metadata !DIExpression()), !dbg !1595
  %47 = zext i8 %45 to i32, !dbg !1603
  %48 = tail call i8* @memchr(i8* noundef nonnull dereferenceable(27) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i64 0, i64 0), i32 %47, i64 27), !dbg !1605
  %49 = icmp eq i8* %48, null, !dbg !1605
  br i1 %49, label %52, label %50, !dbg !1606

50:                                               ; preds = %44
  %51 = add i8 %45, -32, !dbg !1607
  store i8 %51, i8* %46, align 1, !dbg !1607, !tbaa !633
  br label %52, !dbg !1608

52:                                               ; preds = %44, %50
  %53 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !1609
  call void @llvm.dbg.value(metadata i8* %53, metadata !1560, metadata !DIExpression()), !dbg !1595
  %54 = load i8, i8* %53, align 1, !dbg !1596, !tbaa !633
  %55 = icmp eq i8 %54, 0, !dbg !1598
  br i1 %55, label %41, label %44, !dbg !1598, !llvm.loop !1610

56:                                               ; preds = %41
  %57 = load i8, i8* %38, align 1, !dbg !1612, !tbaa !633
  %58 = icmp eq i8 %57, 83, !dbg !1613
  br i1 %58, label %59, label %71, !dbg !1614

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1615
  %61 = load i8, i8* %60, align 1, !dbg !1615, !tbaa !633
  %62 = icmp eq i8 %61, 73, !dbg !1616
  br i1 %62, label %63, label %71, !dbg !1617

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, i8* %38, i64 2, !dbg !1618
  %65 = load i8, i8* %64, align 1, !dbg !1618, !tbaa !633
  %66 = icmp eq i8 %65, 71, !dbg !1619
  br i1 %66, label %67, label %71, !dbg !1620

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, i8* %38, i64 3, !dbg !1621
  call void @llvm.dbg.value(metadata i32* %2, metadata !1552, metadata !DIExpression(DW_OP_deref)), !dbg !1562
  %69 = call i32 @str2sig(i8* noundef nonnull %68, i32* noundef nonnull %2) #35, !dbg !1622
  %70 = icmp eq i32 %69, 0, !dbg !1623
  br i1 %70, label %72, label %71, !dbg !1624

71:                                               ; preds = %67, %63, %59, %56
  call void @llvm.dbg.value(metadata i32 -1, metadata !1552, metadata !DIExpression()), !dbg !1562
  store i32 -1, i32* %2, align 4, !dbg !1625, !tbaa !624
  br label %72, !dbg !1626

72:                                               ; preds = %71, %67, %41
  call void @free(i8* noundef nonnull %38) #35, !dbg !1627
  %73 = load i32, i32* %2, align 4, !dbg !1628, !tbaa !624
  br label %74

74:                                               ; preds = %72, %31
  %75 = phi i32 [ %73, %72 ], [ %36, %31 ], !dbg !1628
  call void @llvm.dbg.value(metadata i32 %75, metadata !1552, metadata !DIExpression()), !dbg !1562
  %76 = icmp ugt i32 %75, 64, !dbg !1630
  br i1 %76, label %77, label %80, !dbg !1630

77:                                               ; preds = %74
  %78 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.34, i64 0, i64 0), i32 noundef 5) #35, !dbg !1631
  %79 = call i8* @quote(i8* noundef nonnull %0) #35, !dbg !1631
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %78, i8* noundef %79) #35, !dbg !1631
  br label %80, !dbg !1633

80:                                               ; preds = %74, %77
  %81 = phi i32 [ -1, %77 ], [ %75, %74 ], !dbg !1562
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #35, !dbg !1634
  ret i32 %81, !dbg !1634
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #18

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local double @cl_strtod(i8* noundef nonnull %0, i8** noalias noundef writeonly %1) local_unnamed_addr #12 !dbg !1635 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1640, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8** %1, metadata !1641, metadata !DIExpression()), !dbg !1649
  %5 = bitcast i8** %3 to i8*, !dbg !1650
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #35, !dbg !1650
  call void @llvm.dbg.value(metadata i8** %3, metadata !1642, metadata !DIExpression(DW_OP_deref)), !dbg !1649
  %6 = call double @strtod(i8* noundef nonnull %0, i8** noundef nonnull %3) #35, !dbg !1651
  call void @llvm.dbg.value(metadata double %6, metadata !1643, metadata !DIExpression()), !dbg !1649
  %7 = load i8*, i8** %3, align 8, !dbg !1652, !tbaa !527
  call void @llvm.dbg.value(metadata i8* %7, metadata !1642, metadata !DIExpression()), !dbg !1649
  %8 = load i8, i8* %7, align 1, !dbg !1653, !tbaa !633
  %9 = icmp eq i8 %8, 0, !dbg !1653
  br i1 %9, label %21, label %10, !dbg !1654

10:                                               ; preds = %2
  %11 = tail call i32* @__errno_location() #38, !dbg !1655
  %12 = load i32, i32* %11, align 4, !dbg !1655, !tbaa !624
  call void @llvm.dbg.value(metadata i32 %12, metadata !1644, metadata !DIExpression()), !dbg !1656
  %13 = bitcast i8** %4 to i8*, !dbg !1657
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #35, !dbg !1657
  call void @llvm.dbg.value(metadata i8** %4, metadata !1647, metadata !DIExpression(DW_OP_deref)), !dbg !1656
  %14 = call double @c_strtod(i8* noundef nonnull %0, i8** noundef nonnull %4) #35, !dbg !1658
  call void @llvm.dbg.value(metadata double %14, metadata !1648, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %7, metadata !1642, metadata !DIExpression()), !dbg !1649
  %15 = load i8*, i8** %4, align 8, !dbg !1659, !tbaa !527
  call void @llvm.dbg.value(metadata i8* %15, metadata !1647, metadata !DIExpression()), !dbg !1656
  %16 = icmp ult i8* %7, %15, !dbg !1661
  br i1 %16, label %18, label %17, !dbg !1662

17:                                               ; preds = %10
  store i32 %12, i32* %11, align 4, !dbg !1663, !tbaa !624
  br label %18

18:                                               ; preds = %10, %17
  %19 = phi i8* [ %7, %17 ], [ %15, %10 ]
  %20 = phi double [ %6, %17 ], [ %14, %10 ], !dbg !1649
  call void @llvm.dbg.value(metadata double %20, metadata !1643, metadata !DIExpression()), !dbg !1649
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #35, !dbg !1664
  br label %21, !dbg !1665

21:                                               ; preds = %18, %2
  %22 = phi i8* [ %19, %18 ], [ %7, %2 ]
  %23 = phi double [ %20, %18 ], [ %6, %2 ], !dbg !1649
  call void @llvm.dbg.value(metadata double %23, metadata !1643, metadata !DIExpression()), !dbg !1649
  %24 = icmp eq i8** %1, null, !dbg !1666
  br i1 %24, label %26, label %25, !dbg !1668

25:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i8* %22, metadata !1642, metadata !DIExpression()), !dbg !1649
  store i8* %22, i8** %1, align 8, !dbg !1669, !tbaa !527
  br label %26, !dbg !1670

26:                                               ; preds = %25, %21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #35, !dbg !1671
  ret double %23, !dbg !1672
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(i8* noundef readonly, i8** nocapture noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #20 !dbg !1673 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1675, metadata !DIExpression()), !dbg !1676
  store i8* %0, i8** @file_name, align 8, !dbg !1677, !tbaa !527
  ret void, !dbg !1678
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #20 !dbg !1679 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1683, metadata !DIExpression()), !dbg !1684
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1685, !tbaa !1686
  ret void, !dbg !1688
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1689 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1694, !tbaa !527
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #35, !dbg !1695
  %3 = icmp eq i32 %2, 0, !dbg !1696
  br i1 %3, label %22, label %4, !dbg !1697

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1698, !tbaa !1686, !range !1699
  %6 = icmp eq i8 %5, 0, !dbg !1698
  br i1 %6, label %11, label %7, !dbg !1700

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #38, !dbg !1701
  %9 = load i32, i32* %8, align 4, !dbg !1701, !tbaa !624
  %10 = icmp eq i32 %9, 32, !dbg !1702
  br i1 %10, label %22, label %11, !dbg !1703

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.78, i64 0, i64 0), i32 noundef 5) #35, !dbg !1704
  call void @llvm.dbg.value(metadata i8* %12, metadata !1691, metadata !DIExpression()), !dbg !1705
  %13 = load i8*, i8** @file_name, align 8, !dbg !1706, !tbaa !527
  %14 = icmp eq i8* %13, null, !dbg !1706
  %15 = tail call i32* @__errno_location() #38, !dbg !1708
  %16 = load i32, i32* %15, align 4, !dbg !1708, !tbaa !624
  br i1 %14, label %19, label %17, !dbg !1709

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #35, !dbg !1710
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.79, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #35, !dbg !1710
  br label %20, !dbg !1710

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.80, i64 0, i64 0), i8* noundef %12) #35, !dbg !1711
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1712, !tbaa !624
  tail call void @_exit(i32 noundef %21) #37, !dbg !1713
  unreachable, !dbg !1713

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1714, !tbaa !527
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #35, !dbg !1716
  %25 = icmp eq i32 %24, 0, !dbg !1717
  br i1 %25, label %28, label %26, !dbg !1718

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1719, !tbaa !624
  tail call void @_exit(i32 noundef %27) #37, !dbg !1720
  unreachable, !dbg !1720

28:                                               ; preds = %22
  ret void, !dbg !1721
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local [2 x i64] @dtotimespec(double noundef %0) local_unnamed_addr #13 !dbg !1722 {
  call void @llvm.dbg.value(metadata double %0, metadata !1730, metadata !DIExpression()), !dbg !1737
  %2 = fcmp ogt double %0, 0xC3E0000000000000, !dbg !1738
  br i1 %2, label %3, label %27, !dbg !1739

3:                                                ; preds = %1
  %4 = fcmp olt double %0, 0x43E0000000000000, !dbg !1740
  br i1 %4, label %5, label %27, !dbg !1741

5:                                                ; preds = %3
  %6 = fptosi double %0 to i64, !dbg !1742
  call void @llvm.dbg.value(metadata i64 %6, metadata !1731, metadata !DIExpression()), !dbg !1743
  %7 = sitofp i64 %6 to double, !dbg !1744
  %8 = fsub double %0, %7, !dbg !1745
  %9 = fmul double %8, 1.000000e+09, !dbg !1746
  call void @llvm.dbg.value(metadata double %9, metadata !1735, metadata !DIExpression()), !dbg !1743
  %10 = fptosi double %9 to i64, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %10, metadata !1736, metadata !DIExpression()), !dbg !1743
  %11 = sitofp i64 %10 to double, !dbg !1748
  %12 = fcmp ogt double %9, %11, !dbg !1749
  %13 = zext i1 %12 to i64
  %14 = add nsw i64 %13, %10, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %14, metadata !1736, metadata !DIExpression()), !dbg !1743
  %15 = freeze i64 %14
  %16 = sdiv i64 %15, 1000000000, !dbg !1751
  %17 = add nsw i64 %16, %6, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %17, metadata !1731, metadata !DIExpression()), !dbg !1743
  %18 = mul i64 %16, 1000000000
  %19 = sub i64 %15, %18
  call void @llvm.dbg.value(metadata i64 %19, metadata !1736, metadata !DIExpression()), !dbg !1743
  %20 = icmp slt i64 %19, 0, !dbg !1753
  %21 = add nsw i64 %19, 1000000000, !dbg !1755
  %22 = ashr i64 %19, 63, !dbg !1755
  %23 = add nsw i64 %17, %22, !dbg !1755
  %24 = select i1 %20, i64 %21, i64 %19, !dbg !1755
  call void @llvm.dbg.value(metadata i64 %24, metadata !1736, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i64 %23, metadata !1731, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i64 %23, metadata !1756, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %24, metadata !1761, metadata !DIExpression()), !dbg !1762
  %25 = insertvalue [2 x i64] poison, i64 %23, 0, !dbg !1764
  %26 = insertvalue [2 x i64] %25, i64 %24, 1, !dbg !1764
  br label %27

27:                                               ; preds = %3, %1, %5
  %28 = phi [2 x i64] [ %26, %5 ], [ [i64 -9223372036854775808, i64 0], %1 ], [ [i64 9223372036854775807, i64 999999999], %3 ]
  ret [2 x i64] %28, !dbg !1765
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #21 !dbg !1766 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1770, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %1, metadata !1771, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8* %2, metadata !1772, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1773, metadata !DIExpression()), !dbg !1775
  tail call fastcc void @flush_stdout(), !dbg !1776
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1777, !tbaa !527
  %7 = icmp eq void ()* %6, null, !dbg !1777
  br i1 %7, label %9, label %8, !dbg !1779

8:                                                ; preds = %4
  tail call void %6() #35, !dbg !1780
  br label %13, !dbg !1780

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1781, !tbaa !527
  %11 = tail call i8* @getprogname() #36, !dbg !1781
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), i8* noundef %11) #35, !dbg !1781
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1783
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1783
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1783
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1783, !tbaa.struct !1784
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1783
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1783
  ret void, !dbg !1785
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1786 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1788, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i32 1, metadata !1790, metadata !DIExpression()) #35, !dbg !1793
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #35, !dbg !1796
  %2 = icmp slt i32 %1, 0, !dbg !1797
  br i1 %2, label %6, label %3, !dbg !1798

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1799, !tbaa !527
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #35, !dbg !1799
  br label %6, !dbg !1799

6:                                                ; preds = %3, %0
  ret void, !dbg !1800
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1801 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1803, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i32 %1, metadata !1804, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8* %2, metadata !1805, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1806, metadata !DIExpression()), !dbg !1808
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1809, !tbaa !527
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1810
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1811, metadata !DIExpression()) #35, !dbg !1854
  call void @llvm.dbg.value(metadata i8* %2, metadata !1852, metadata !DIExpression()) #35, !dbg !1854
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1856
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1856, !noalias !1857
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1856
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #35, !dbg !1856
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1856, !noalias !1857
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1861, !tbaa !624
  %12 = add i32 %11, 1, !dbg !1861
  store i32 %12, i32* @error_message_count, align 4, !dbg !1861, !tbaa !624
  %13 = icmp eq i32 %1, 0, !dbg !1862
  br i1 %13, label %24, label %14, !dbg !1864

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1865, metadata !DIExpression()) #35, !dbg !1873
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1875
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !1875
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1869, metadata !DIExpression()) #35, !dbg !1876
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #35, !dbg !1877
  call void @llvm.dbg.value(metadata i8* %16, metadata !1868, metadata !DIExpression()) #35, !dbg !1873
  %17 = icmp eq i8* %16, null, !dbg !1878
  br i1 %17, label %18, label %20, !dbg !1880

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.85, i64 0, i64 0), i32 noundef 5) #35, !dbg !1881
  call void @llvm.dbg.value(metadata i8* %19, metadata !1868, metadata !DIExpression()) #35, !dbg !1873
  br label %20, !dbg !1882

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1873
  call void @llvm.dbg.value(metadata i8* %21, metadata !1868, metadata !DIExpression()) #35, !dbg !1873
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1883, !tbaa !527
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.86, i64 0, i64 0), i8* noundef %21) #35, !dbg !1883
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !1884
  br label %24, !dbg !1885

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1886, !tbaa !527
  call void @llvm.dbg.value(metadata i32 10, metadata !1887, metadata !DIExpression()) #35, !dbg !1894
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1893, metadata !DIExpression()) #35, !dbg !1894
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1896
  %27 = load i8*, i8** %26, align 8, !dbg !1896, !tbaa !1897
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1896
  %29 = load i8*, i8** %28, align 8, !dbg !1896, !tbaa !1899
  %30 = icmp ult i8* %27, %29, !dbg !1896
  br i1 %30, label %33, label %31, !dbg !1896, !prof !1900

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #35, !dbg !1896
  br label %35, !dbg !1896

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1896
  store i8* %34, i8** %26, align 8, !dbg !1896, !tbaa !1897
  store i8 10, i8* %27, align 1, !dbg !1896, !tbaa !633
  br label %35, !dbg !1896

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1901, !tbaa !527
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #35, !dbg !1901
  %38 = icmp eq i32 %0, 0, !dbg !1902
  br i1 %38, label %40, label %39, !dbg !1904

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #37, !dbg !1905
  unreachable, !dbg !1905

40:                                               ; preds = %35
  ret void, !dbg !1906
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1907 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1911 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1914 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1918 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1922, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i32 %1, metadata !1923, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8* %2, metadata !1924, metadata !DIExpression()), !dbg !1926
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1927
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #35, !dbg !1927
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1925, metadata !DIExpression()), !dbg !1928
  call void @llvm.va_start(i8* nonnull %6), !dbg !1929
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1930
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1930
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1930, !tbaa.struct !1784
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #40, !dbg !1930
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1930
  call void @llvm.va_end(i8* nonnull %6), !dbg !1931
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #35, !dbg !1932
  ret void, !dbg !1932
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #22

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #22

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #21 !dbg !195 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !213, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i32 %1, metadata !214, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8* %2, metadata !215, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i32 %3, metadata !216, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8* %4, metadata !217, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !218, metadata !DIExpression()), !dbg !1934
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1935, !tbaa !624
  %9 = icmp eq i32 %8, 0, !dbg !1935
  br i1 %9, label %24, label %10, !dbg !1937

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1938, !tbaa !624
  %12 = icmp eq i32 %11, %3, !dbg !1941
  br i1 %12, label %13, label %23, !dbg !1942

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1943, !tbaa !527
  %15 = icmp eq i8* %14, %2, !dbg !1944
  br i1 %15, label %39, label %16, !dbg !1945

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1946
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1947
  br i1 %19, label %20, label %23, !dbg !1947

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #36, !dbg !1948
  %22 = icmp eq i32 %21, 0, !dbg !1949
  br i1 %22, label %39, label %23, !dbg !1950

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1951, !tbaa !527
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1952, !tbaa !624
  br label %24, !dbg !1953

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1954
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1955, !tbaa !527
  %26 = icmp eq void ()* %25, null, !dbg !1955
  br i1 %26, label %28, label %27, !dbg !1957

27:                                               ; preds = %24
  tail call void %25() #35, !dbg !1958
  br label %32, !dbg !1958

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1959, !tbaa !527
  %30 = tail call i8* @getprogname() #36, !dbg !1959
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.89, i64 0, i64 0), i8* noundef %30) #35, !dbg !1959
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1961, !tbaa !527
  %34 = icmp eq i8* %2, null, !dbg !1961
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.90, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.91, i64 0, i64 0), !dbg !1961
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #35, !dbg !1961
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1962
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #35, !dbg !1962
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1962
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1962, !tbaa.struct !1784
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1962
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #35, !dbg !1962
  br label %39, !dbg !1963

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1963
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1964 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1968, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i32 %1, metadata !1969, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8* %2, metadata !1970, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i32 %3, metadata !1971, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8* %4, metadata !1972, metadata !DIExpression()), !dbg !1974
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1975
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1975
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1973, metadata !DIExpression()), !dbg !1976
  call void @llvm.va_start(i8* nonnull %8), !dbg !1977
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1978
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1978
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1978, !tbaa.struct !1784
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #40, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1978
  call void @llvm.va_end(i8* nonnull %8), !dbg !1979
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1980
  ret void, !dbg !1980
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #23 !dbg !1981 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1984, !tbaa !527
  ret i8* %1, !dbg !1985
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #24 !dbg !1986 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1988, metadata !DIExpression()), !dbg !1991
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #36, !dbg !1992
  call void @llvm.dbg.value(metadata i8* %2, metadata !1989, metadata !DIExpression()), !dbg !1991
  %3 = icmp eq i8* %2, null, !dbg !1993
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1993
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1993
  call void @llvm.dbg.value(metadata i8* %5, metadata !1990, metadata !DIExpression()), !dbg !1991
  %6 = ptrtoint i8* %5 to i64, !dbg !1994
  %7 = ptrtoint i8* %0 to i64, !dbg !1994
  %8 = sub i64 %6, %7, !dbg !1994
  %9 = icmp sgt i64 %8, 6, !dbg !1996
  br i1 %9, label %10, label %19, !dbg !1997

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1998
  call void @llvm.dbg.value(metadata i8* %11, metadata !1999, metadata !DIExpression()) #35, !dbg !2006
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i64 0, i64 0), metadata !2004, metadata !DIExpression()) #35, !dbg !2006
  call void @llvm.dbg.value(metadata i64 7, metadata !2005, metadata !DIExpression()) #35, !dbg !2006
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i64 0, i64 0), i64 7) #35, !dbg !2008
  %13 = icmp eq i32 %12, 0, !dbg !2009
  br i1 %13, label %14, label %19, !dbg !2010

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1988, metadata !DIExpression()), !dbg !1991
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.101, i64 0, i64 0), i64 noundef 3) #36, !dbg !2011
  %16 = icmp eq i32 %15, 0, !dbg !2014
  %17 = select i1 %16, i64 3, i64 0, !dbg !2015
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !2015
  br label %19, !dbg !2015

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1991
  call void @llvm.dbg.value(metadata i8* %21, metadata !1990, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i8* %20, metadata !1988, metadata !DIExpression()), !dbg !1991
  store i8* %20, i8** @program_name, align 8, !dbg !2016, !tbaa !527
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !2017, !tbaa !527
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !2018, !tbaa !527
  ret void, !dbg !2019
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !236 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !243, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8* %1, metadata !244, metadata !DIExpression()), !dbg !2020
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #35, !dbg !2021
  call void @llvm.dbg.value(metadata i8* %5, metadata !245, metadata !DIExpression()), !dbg !2020
  %6 = icmp eq i8* %5, %0, !dbg !2022
  br i1 %6, label %7, label %17, !dbg !2024

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !2025
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #35, !dbg !2025
  %10 = bitcast i64* %4 to i8*, !dbg !2026
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #35, !dbg !2026
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !251, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !2028, metadata !DIExpression()) #35, !dbg !2035
  call void @llvm.dbg.value(metadata i8* %10, metadata !2037, metadata !DIExpression()) #35, !dbg !2045
  call void @llvm.dbg.value(metadata i32 0, metadata !2043, metadata !DIExpression()) #35, !dbg !2045
  call void @llvm.dbg.value(metadata i64 8, metadata !2044, metadata !DIExpression()) #35, !dbg !2045
  store i64 0, i64* %4, align 8, !dbg !2047
  call void @llvm.dbg.value(metadata i32* %3, metadata !246, metadata !DIExpression(DW_OP_deref)), !dbg !2020
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #35, !dbg !2048
  %12 = icmp eq i64 %11, 2, !dbg !2050
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !246, metadata !DIExpression()), !dbg !2020
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !2051
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !2020
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #35, !dbg !2052
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #35, !dbg !2052
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !2020
  ret i8* %18, !dbg !2052
}

; Function Attrs: nounwind
declare !dbg !2053 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !2059 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2064, metadata !DIExpression()), !dbg !2067
  %2 = tail call i32* @__errno_location() #38, !dbg !2068
  %3 = load i32, i32* %2, align 4, !dbg !2068, !tbaa !624
  call void @llvm.dbg.value(metadata i32 %3, metadata !2065, metadata !DIExpression()), !dbg !2067
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2069
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2069
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2069
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #41, !dbg !2070
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2070
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2066, metadata !DIExpression()), !dbg !2067
  store i32 %3, i32* %2, align 4, !dbg !2071, !tbaa !624
  ret %struct.quoting_options* %8, !dbg !2072
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #23 !dbg !2073 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2079, metadata !DIExpression()), !dbg !2080
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2081
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2081
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2082
  %5 = load i32, i32* %4, align 8, !dbg !2082, !tbaa !2083
  ret i32 %5, !dbg !2085
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !2086 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2090, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i32 %1, metadata !2091, metadata !DIExpression()), !dbg !2092
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2093
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2093
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2094
  store i32 %1, i32* %5, align 8, !dbg !2095, !tbaa !2083
  ret void, !dbg !2096
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #25 !dbg !2097 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2101, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i8 %1, metadata !2102, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i32 %2, metadata !2103, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i8 %1, metadata !2104, metadata !DIExpression()), !dbg !2109
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2110
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2110
  %6 = lshr i8 %1, 5, !dbg !2111
  %7 = zext i8 %6 to i64, !dbg !2111
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2112
  call void @llvm.dbg.value(metadata i32* %8, metadata !2105, metadata !DIExpression()), !dbg !2109
  %9 = and i8 %1, 31, !dbg !2113
  %10 = zext i8 %9 to i32, !dbg !2113
  call void @llvm.dbg.value(metadata i32 %10, metadata !2107, metadata !DIExpression()), !dbg !2109
  %11 = load i32, i32* %8, align 4, !dbg !2114, !tbaa !624
  %12 = lshr i32 %11, %10, !dbg !2115
  %13 = and i32 %12, 1, !dbg !2116
  call void @llvm.dbg.value(metadata i32 %13, metadata !2108, metadata !DIExpression()), !dbg !2109
  %14 = and i32 %2, 1, !dbg !2117
  %15 = xor i32 %13, %14, !dbg !2118
  %16 = shl i32 %15, %10, !dbg !2119
  %17 = xor i32 %16, %11, !dbg !2120
  store i32 %17, i32* %8, align 4, !dbg !2120, !tbaa !624
  ret i32 %13, !dbg !2121
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2122 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2126, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i32 %1, metadata !2127, metadata !DIExpression()), !dbg !2129
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2130
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2132
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2126, metadata !DIExpression()), !dbg !2129
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2133
  %6 = load i32, i32* %5, align 4, !dbg !2133, !tbaa !2134
  call void @llvm.dbg.value(metadata i32 %6, metadata !2128, metadata !DIExpression()), !dbg !2129
  store i32 %1, i32* %5, align 4, !dbg !2135, !tbaa !2134
  ret i32 %6, !dbg !2136
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2137 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2141, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8* %1, metadata !2142, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8* %2, metadata !2143, metadata !DIExpression()), !dbg !2144
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2145
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2147
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2141, metadata !DIExpression()), !dbg !2144
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2148
  store i32 10, i32* %6, align 8, !dbg !2149, !tbaa !2083
  %7 = icmp ne i8* %1, null, !dbg !2150
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2152
  br i1 %9, label %11, label %10, !dbg !2152

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !2153
  unreachable, !dbg !2153

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2154
  store i8* %1, i8** %12, align 8, !dbg !2155, !tbaa !2156
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2157
  store i8* %2, i8** %13, align 8, !dbg !2158, !tbaa !2159
  ret void, !dbg !2160
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !2161 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2165, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %1, metadata !2166, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8* %2, metadata !2167, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %3, metadata !2168, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2169, metadata !DIExpression()), !dbg !2173
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2174
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2174
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2170, metadata !DIExpression()), !dbg !2173
  %8 = tail call i32* @__errno_location() #38, !dbg !2175
  %9 = load i32, i32* %8, align 4, !dbg !2175, !tbaa !624
  call void @llvm.dbg.value(metadata i32 %9, metadata !2171, metadata !DIExpression()), !dbg !2173
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2176
  %11 = load i32, i32* %10, align 8, !dbg !2176, !tbaa !2083
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2177
  %13 = load i32, i32* %12, align 4, !dbg !2177, !tbaa !2134
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2178
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2179
  %16 = load i8*, i8** %15, align 8, !dbg !2179, !tbaa !2156
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2180
  %18 = load i8*, i8** %17, align 8, !dbg !2180, !tbaa !2159
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2181
  call void @llvm.dbg.value(metadata i64 %19, metadata !2172, metadata !DIExpression()), !dbg !2173
  store i32 %9, i32* %8, align 4, !dbg !2182, !tbaa !624
  ret i64 %19, !dbg !2183
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !2184 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2190, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %1, metadata !2191, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8* %2, metadata !2192, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %3, metadata !2193, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i32 %4, metadata !2194, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i32 %5, metadata !2195, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i32* %6, metadata !2196, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8* %7, metadata !2197, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8* %8, metadata !2198, metadata !DIExpression()), !dbg !2252
  %17 = tail call i64 @__ctype_get_mb_cur_max() #35, !dbg !2253
  %18 = icmp eq i64 %17, 1, !dbg !2254
  call void @llvm.dbg.value(metadata i1 %18, metadata !2199, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2252
  call void @llvm.dbg.value(metadata i64 0, metadata !2200, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 0, metadata !2201, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8* null, metadata !2202, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 0, metadata !2203, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 0, metadata !2204, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i32 %5, metadata !2205, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2252
  call void @llvm.dbg.value(metadata i8 0, metadata !2206, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 1, metadata !2207, metadata !DIExpression()), !dbg !2252
  %19 = and i32 %5, 2, !dbg !2255
  %20 = icmp ne i32 %19, 0, !dbg !2255
  %21 = bitcast i64* %13 to %struct.__mbstate_t*
  %22 = bitcast i32* %12 to i8*
  %23 = bitcast i64* %13 to i8*
  %24 = bitcast i64* %11 to %struct.__mbstate_t*
  %25 = bitcast i32* %10 to i8*
  %26 = bitcast i64* %11 to i8*
  %27 = getelementptr inbounds i8, i8* %2, i64 1
  %28 = and i32 %5, 4
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %5, 1
  %31 = icmp eq i32 %30, 0
  %32 = bitcast i64* %14 to i8*
  %33 = bitcast i32* %16 to i8*
  %34 = icmp ne i32* %6, null
  %35 = icmp eq i32* %6, null
  br label %36, !dbg !2255

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2256
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2257
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2258
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2191, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 poison, metadata !2207, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 poison, metadata !2206, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 poison, metadata !2205, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 poison, metadata !2204, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %43, metadata !2203, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8* %42, metadata !2202, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %41, metadata !2201, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 0, metadata !2200, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %40, metadata !2193, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8* %39, metadata !2198, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8* %38, metadata !2197, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i32 %37, metadata !2194, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.label(metadata !2245), !dbg !2259
  call void @llvm.dbg.value(metadata i8 0, metadata !2208, metadata !DIExpression()), !dbg !2252
  switch i32 %37, label %110 [
    i32 6, label %49
    i32 5, label %50
    i32 7, label %111
    i32 0, label %109
    i32 2, label %104
    i32 4, label %101
    i32 3, label %100
    i32 1, label %102
    i32 10, label %79
    i32 8, label %54
    i32 9, label %54
  ], !dbg !2260

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2205, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i32 5, metadata !2194, metadata !DIExpression()), !dbg !2252
  br label %111, !dbg !2261

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2205, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i32 5, metadata !2194, metadata !DIExpression()), !dbg !2252
  br i1 %45, label %111, label %51, !dbg !2261

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2262
  br i1 %52, label %111, label %53, !dbg !2266

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2262, !tbaa !633
  br label %111, !dbg !2262

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.114, i64 0, i64 0), metadata !325, metadata !DIExpression()) #35, !dbg !2267
  call void @llvm.dbg.value(metadata i32 %37, metadata !326, metadata !DIExpression()) #35, !dbg !2267
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.115, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.114, i64 0, i64 0), i32 noundef 5) #35, !dbg !2271
  call void @llvm.dbg.value(metadata i8* %55, metadata !327, metadata !DIExpression()) #35, !dbg !2267
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.114, i64 0, i64 0), !dbg !2272
  br i1 %56, label %57, label %66, !dbg !2274

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #35, !dbg !2275
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #35, !dbg !2276
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !329, metadata !DIExpression()) #35, !dbg !2277
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !2278, metadata !DIExpression()) #35, !dbg !2284
  call void @llvm.dbg.value(metadata i8* %23, metadata !2286, metadata !DIExpression()) #35, !dbg !2291
  call void @llvm.dbg.value(metadata i32 0, metadata !2289, metadata !DIExpression()) #35, !dbg !2291
  call void @llvm.dbg.value(metadata i64 8, metadata !2290, metadata !DIExpression()) #35, !dbg !2291
  store i64 0, i64* %13, align 8, !dbg !2293
  call void @llvm.dbg.value(metadata i32* %12, metadata !328, metadata !DIExpression(DW_OP_deref)) #35, !dbg !2267
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #35, !dbg !2294
  %59 = icmp eq i64 %58, 3, !dbg !2296
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !328, metadata !DIExpression()) #35, !dbg !2267
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2297
  %63 = icmp eq i32 %37, 9, !dbg !2297
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.117, i64 0, i64 0), !dbg !2297
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2297
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #35, !dbg !2298
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #35, !dbg !2298
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2267
  call void @llvm.dbg.value(metadata i8* %67, metadata !2197, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.117, i64 0, i64 0), metadata !325, metadata !DIExpression()) #35, !dbg !2299
  call void @llvm.dbg.value(metadata i32 %37, metadata !326, metadata !DIExpression()) #35, !dbg !2299
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.115, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.117, i64 0, i64 0), i32 noundef 5) #35, !dbg !2301
  call void @llvm.dbg.value(metadata i8* %68, metadata !327, metadata !DIExpression()) #35, !dbg !2299
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.117, i64 0, i64 0), !dbg !2302
  br i1 %69, label %70, label %79, !dbg !2303

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #35, !dbg !2304
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #35, !dbg !2305
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !329, metadata !DIExpression()) #35, !dbg !2306
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !2278, metadata !DIExpression()) #35, !dbg !2307
  call void @llvm.dbg.value(metadata i8* %26, metadata !2286, metadata !DIExpression()) #35, !dbg !2309
  call void @llvm.dbg.value(metadata i32 0, metadata !2289, metadata !DIExpression()) #35, !dbg !2309
  call void @llvm.dbg.value(metadata i64 8, metadata !2290, metadata !DIExpression()) #35, !dbg !2309
  store i64 0, i64* %11, align 8, !dbg !2311
  call void @llvm.dbg.value(metadata i32* %10, metadata !328, metadata !DIExpression(DW_OP_deref)) #35, !dbg !2299
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #35, !dbg !2312
  %72 = icmp eq i64 %71, 3, !dbg !2313
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !328, metadata !DIExpression()) #35, !dbg !2299
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2314
  %76 = icmp eq i32 %37, 9, !dbg !2314
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.117, i64 0, i64 0), !dbg !2314
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2314
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #35, !dbg !2315
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #35, !dbg !2315
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2198, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8* %80, metadata !2197, metadata !DIExpression()), !dbg !2252
  br i1 %45, label %97, label %82, !dbg !2316

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2209, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i64 0, metadata !2200, metadata !DIExpression()), !dbg !2252
  %83 = load i8, i8* %80, align 1, !dbg !2318, !tbaa !633
  %84 = icmp eq i8 %83, 0, !dbg !2320
  br i1 %84, label %97, label %85, !dbg !2320

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2209, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i64 %88, metadata !2200, metadata !DIExpression()), !dbg !2252
  %89 = icmp ult i64 %88, %48, !dbg !2321
  br i1 %89, label %90, label %92, !dbg !2324

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2321
  store i8 %86, i8* %91, align 1, !dbg !2321, !tbaa !633
  br label %92, !dbg !2321

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2324
  call void @llvm.dbg.value(metadata i64 %93, metadata !2200, metadata !DIExpression()), !dbg !2252
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2325
  call void @llvm.dbg.value(metadata i8* %94, metadata !2209, metadata !DIExpression()), !dbg !2317
  %95 = load i8, i8* %94, align 1, !dbg !2318, !tbaa !633
  %96 = icmp eq i8 %95, 0, !dbg !2320
  br i1 %96, label %97, label %85, !dbg !2320, !llvm.loop !2326

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2328
  call void @llvm.dbg.value(metadata i64 %98, metadata !2200, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 1, metadata !2204, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8* %81, metadata !2202, metadata !DIExpression()), !dbg !2252
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #36, !dbg !2329
  call void @llvm.dbg.value(metadata i64 %99, metadata !2203, metadata !DIExpression()), !dbg !2252
  br label %111, !dbg !2330

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2204, metadata !DIExpression()), !dbg !2252
  br label %102, !dbg !2331

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2205, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 poison, metadata !2204, metadata !DIExpression()), !dbg !2252
  br i1 %45, label %102, label %105, !dbg !2332

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2205, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 poison, metadata !2204, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i32 2, metadata !2194, metadata !DIExpression()), !dbg !2252
  br label %111, !dbg !2333

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2205, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 poison, metadata !2204, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i32 2, metadata !2194, metadata !DIExpression()), !dbg !2252
  br i1 %45, label %111, label %105, !dbg !2333

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2334
  br i1 %107, label %111, label %108, !dbg !2338

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2334, !tbaa !633
  br label %111, !dbg !2334

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2205, metadata !DIExpression()), !dbg !2252
  br label %111, !dbg !2339

110:                                              ; preds = %36
  call void @abort() #37, !dbg !2340
  unreachable, !dbg !2340

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2328
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.117, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.117, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.117, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.117, i64 0, i64 0), %102 ], !dbg !2252
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2252
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2205, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 poison, metadata !2204, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %117, metadata !2203, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8* %116, metadata !2202, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %115, metadata !2200, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8* %114, metadata !2198, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8* %113, metadata !2197, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i32 %112, metadata !2194, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 0, metadata !2214, metadata !DIExpression()), !dbg !2341
  %120 = icmp ne i32 %112, 2
  %121 = and i1 %120, %118
  %122 = icmp ne i64 %117, 0
  %123 = select i1 %121, i1 %122, i1 false
  %124 = icmp ugt i64 %117, 1
  %125 = xor i1 %119, true
  %126 = icmp eq i32 %112, 2
  %127 = select i1 %119, i1 %122, i1 false
  %128 = or i1 %120, %125
  %129 = and i1 %126, %119
  %130 = xor i1 %118, true
  %131 = and i1 %34, %119
  br label %132, !dbg !2342

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2328
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2256
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2341
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2191, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %139, metadata !2214, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 poison, metadata !2208, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 poison, metadata !2207, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 poison, metadata !2206, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %135, metadata !2201, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %134, metadata !2200, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %133, metadata !2193, metadata !DIExpression()), !dbg !2252
  %141 = icmp eq i64 %133, -1, !dbg !2343
  br i1 %141, label %142, label %146, !dbg !2344

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2345
  %144 = load i8, i8* %143, align 1, !dbg !2345, !tbaa !633
  %145 = icmp eq i8 %144, 0, !dbg !2346
  br i1 %145, label %596, label %148, !dbg !2347

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2348
  br i1 %147, label %596, label %148, !dbg !2347

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2216, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 0, metadata !2219, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 0, metadata !2220, metadata !DIExpression()), !dbg !2349
  br i1 %123, label %149, label %163, !dbg !2350

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2352
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2353
  br i1 %151, label %152, label %154, !dbg !2353

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2354
  call void @llvm.dbg.value(metadata i64 %153, metadata !2193, metadata !DIExpression()), !dbg !2252
  br label %154, !dbg !2355

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2355
  call void @llvm.dbg.value(metadata i64 %155, metadata !2193, metadata !DIExpression()), !dbg !2252
  %156 = icmp ugt i64 %150, %155, !dbg !2356
  br i1 %156, label %163, label %157, !dbg !2357

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2358
  call void @llvm.dbg.value(metadata i8* %158, metadata !2359, metadata !DIExpression()) #35, !dbg !2364
  call void @llvm.dbg.value(metadata i8* %116, metadata !2362, metadata !DIExpression()) #35, !dbg !2364
  call void @llvm.dbg.value(metadata i64 %117, metadata !2363, metadata !DIExpression()) #35, !dbg !2364
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #35, !dbg !2366
  %160 = icmp ne i32 %159, 0, !dbg !2367
  %161 = or i1 %160, %125, !dbg !2368
  %162 = xor i1 %160, true, !dbg !2368
  br i1 %161, label %163, label %647, !dbg !2368

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2216, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %164, metadata !2193, metadata !DIExpression()), !dbg !2252
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2369
  %167 = load i8, i8* %166, align 1, !dbg !2369, !tbaa !633
  call void @llvm.dbg.value(metadata i8 %167, metadata !2221, metadata !DIExpression()), !dbg !2349
  switch i8 %167, label %298 [
    i8 0, label %168
    i8 63, label %216
    i8 7, label %263
    i8 8, label %252
    i8 12, label %253
    i8 10, label %261
    i8 13, label %254
    i8 9, label %255
    i8 11, label %256
    i8 92, label %257
    i8 123, label %265
    i8 125, label %265
    i8 35, label %269
    i8 126, label %269
    i8 32, label %271
    i8 33, label %272
    i8 34, label %272
    i8 36, label %272
    i8 38, label %272
    i8 40, label %272
    i8 41, label %272
    i8 42, label %272
    i8 59, label %272
    i8 60, label %272
    i8 61, label %272
    i8 62, label %272
    i8 91, label %272
    i8 94, label %272
    i8 96, label %272
    i8 124, label %272
    i8 39, label %275
    i8 37, label %456
    i8 43, label %456
    i8 44, label %456
    i8 45, label %456
    i8 46, label %456
    i8 47, label %456
    i8 48, label %456
    i8 49, label %456
    i8 50, label %456
    i8 51, label %456
    i8 52, label %456
    i8 53, label %456
    i8 54, label %456
    i8 55, label %456
    i8 56, label %456
    i8 57, label %456
    i8 58, label %456
    i8 65, label %456
    i8 66, label %456
    i8 67, label %456
    i8 68, label %456
    i8 69, label %456
    i8 70, label %456
    i8 71, label %456
    i8 72, label %456
    i8 73, label %456
    i8 74, label %456
    i8 75, label %456
    i8 76, label %456
    i8 77, label %456
    i8 78, label %456
    i8 79, label %456
    i8 80, label %456
    i8 81, label %456
    i8 82, label %456
    i8 83, label %456
    i8 84, label %456
    i8 85, label %456
    i8 86, label %456
    i8 87, label %456
    i8 88, label %456
    i8 89, label %456
    i8 90, label %456
    i8 93, label %456
    i8 95, label %456
    i8 97, label %456
    i8 98, label %456
    i8 99, label %456
    i8 100, label %456
    i8 101, label %456
    i8 102, label %456
    i8 103, label %456
    i8 104, label %456
    i8 105, label %456
    i8 106, label %456
    i8 107, label %456
    i8 108, label %456
    i8 109, label %456
    i8 110, label %456
    i8 111, label %456
    i8 112, label %456
    i8 113, label %456
    i8 114, label %456
    i8 115, label %456
    i8 116, label %456
    i8 117, label %456
    i8 118, label %456
    i8 119, label %456
    i8 120, label %456
    i8 121, label %456
    i8 122, label %456
  ], !dbg !2370

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2371

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2372

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2219, metadata !DIExpression()), !dbg !2349
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2376
  br i1 %171, label %188, label %172, !dbg !2376

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2378
  br i1 %173, label %174, label %176, !dbg !2382

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2378
  store i8 39, i8* %175, align 1, !dbg !2378, !tbaa !633
  br label %176, !dbg !2378

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2382
  call void @llvm.dbg.value(metadata i64 %177, metadata !2200, metadata !DIExpression()), !dbg !2252
  %178 = icmp ult i64 %177, %140, !dbg !2383
  br i1 %178, label %179, label %181, !dbg !2386

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2383
  store i8 36, i8* %180, align 1, !dbg !2383, !tbaa !633
  br label %181, !dbg !2383

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2386
  call void @llvm.dbg.value(metadata i64 %182, metadata !2200, metadata !DIExpression()), !dbg !2252
  %183 = icmp ult i64 %182, %140, !dbg !2387
  br i1 %183, label %184, label %186, !dbg !2390

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2387
  store i8 39, i8* %185, align 1, !dbg !2387, !tbaa !633
  br label %186, !dbg !2387

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2390
  call void @llvm.dbg.value(metadata i64 %187, metadata !2200, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 1, metadata !2208, metadata !DIExpression()), !dbg !2252
  br label %188, !dbg !2391

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2252
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2208, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %189, metadata !2200, metadata !DIExpression()), !dbg !2252
  %191 = icmp ult i64 %189, %140, !dbg !2392
  br i1 %191, label %192, label %194, !dbg !2395

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2392
  store i8 92, i8* %193, align 1, !dbg !2392, !tbaa !633
  br label %194, !dbg !2392

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2395
  call void @llvm.dbg.value(metadata i64 %195, metadata !2200, metadata !DIExpression()), !dbg !2252
  br i1 %120, label %196, label %499, !dbg !2396

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2398
  %198 = icmp ult i64 %197, %164, !dbg !2399
  br i1 %198, label %199, label %456, !dbg !2400

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2401
  %201 = load i8, i8* %200, align 1, !dbg !2401, !tbaa !633
  %202 = add i8 %201, -48, !dbg !2402
  %203 = icmp ult i8 %202, 10, !dbg !2402
  br i1 %203, label %204, label %456, !dbg !2402

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2403
  br i1 %205, label %206, label %208, !dbg !2407

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2403
  store i8 48, i8* %207, align 1, !dbg !2403, !tbaa !633
  br label %208, !dbg !2403

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2407
  call void @llvm.dbg.value(metadata i64 %209, metadata !2200, metadata !DIExpression()), !dbg !2252
  %210 = icmp ult i64 %209, %140, !dbg !2408
  br i1 %210, label %211, label %213, !dbg !2411

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2408
  store i8 48, i8* %212, align 1, !dbg !2408, !tbaa !633
  br label %213, !dbg !2408

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2411
  call void @llvm.dbg.value(metadata i64 %214, metadata !2200, metadata !DIExpression()), !dbg !2252
  br label %456, !dbg !2412

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2413

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2414

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2415

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2417

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2419
  %221 = icmp ult i64 %220, %164, !dbg !2420
  br i1 %221, label %222, label %456, !dbg !2421

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2422
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2423
  %225 = load i8, i8* %224, align 1, !dbg !2423, !tbaa !633
  %226 = icmp eq i8 %225, 63, !dbg !2424
  br i1 %226, label %227, label %456, !dbg !2425

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2426
  %229 = load i8, i8* %228, align 1, !dbg !2426, !tbaa !633
  switch i8 %229, label %456 [
    i8 33, label %230
    i8 39, label %230
    i8 40, label %230
    i8 41, label %230
    i8 45, label %230
    i8 47, label %230
    i8 60, label %230
    i8 61, label %230
    i8 62, label %230
  ], !dbg !2427

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2428

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2221, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %220, metadata !2214, metadata !DIExpression()), !dbg !2341
  %232 = icmp ult i64 %134, %140, !dbg !2430
  br i1 %232, label %233, label %235, !dbg !2433

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2430
  store i8 63, i8* %234, align 1, !dbg !2430, !tbaa !633
  br label %235, !dbg !2430

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2433
  call void @llvm.dbg.value(metadata i64 %236, metadata !2200, metadata !DIExpression()), !dbg !2252
  %237 = icmp ult i64 %236, %140, !dbg !2434
  br i1 %237, label %238, label %240, !dbg !2437

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2434
  store i8 34, i8* %239, align 1, !dbg !2434, !tbaa !633
  br label %240, !dbg !2434

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2437
  call void @llvm.dbg.value(metadata i64 %241, metadata !2200, metadata !DIExpression()), !dbg !2252
  %242 = icmp ult i64 %241, %140, !dbg !2438
  br i1 %242, label %243, label %245, !dbg !2441

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2438
  store i8 34, i8* %244, align 1, !dbg !2438, !tbaa !633
  br label %245, !dbg !2438

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2441
  call void @llvm.dbg.value(metadata i64 %246, metadata !2200, metadata !DIExpression()), !dbg !2252
  %247 = icmp ult i64 %246, %140, !dbg !2442
  br i1 %247, label %248, label %250, !dbg !2445

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2442
  store i8 63, i8* %249, align 1, !dbg !2442, !tbaa !633
  br label %250, !dbg !2442

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2445
  call void @llvm.dbg.value(metadata i64 %251, metadata !2200, metadata !DIExpression()), !dbg !2252
  br label %456, !dbg !2446

252:                                              ; preds = %163
  br label %263, !dbg !2447

253:                                              ; preds = %163
  br label %263, !dbg !2448

254:                                              ; preds = %163
  br label %261, !dbg !2449

255:                                              ; preds = %163
  br label %261, !dbg !2450

256:                                              ; preds = %163
  br label %263, !dbg !2451

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2452

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2453

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2456

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2458

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2459
  call void @llvm.dbg.label(metadata !2246), !dbg !2460
  br i1 %128, label %263, label %638, !dbg !2461

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2459
  call void @llvm.dbg.label(metadata !2248), !dbg !2463
  br i1 %118, label %510, label %467, !dbg !2464

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2465

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2466, !tbaa !633
  %268 = icmp eq i8 %267, 0, !dbg !2468
  br i1 %268, label %269, label %456, !dbg !2469

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2470
  br i1 %270, label %271, label %456, !dbg !2472

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2220, metadata !DIExpression()), !dbg !2349
  br label %272, !dbg !2473

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2220, metadata !DIExpression()), !dbg !2349
  br i1 %126, label %274, label %456, !dbg !2474

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2476

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2206, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 1, metadata !2220, metadata !DIExpression()), !dbg !2349
  br i1 %126, label %276, label %456, !dbg !2477

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2478

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2481
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2483
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2483
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2483
  call void @llvm.dbg.value(metadata i64 %282, metadata !2191, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %281, metadata !2201, metadata !DIExpression()), !dbg !2252
  %283 = icmp ult i64 %134, %282, !dbg !2484
  br i1 %283, label %284, label %286, !dbg !2487

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2484
  store i8 39, i8* %285, align 1, !dbg !2484, !tbaa !633
  br label %286, !dbg !2484

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %287, metadata !2200, metadata !DIExpression()), !dbg !2252
  %288 = icmp ult i64 %287, %282, !dbg !2488
  br i1 %288, label %289, label %291, !dbg !2491

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2488
  store i8 92, i8* %290, align 1, !dbg !2488, !tbaa !633
  br label %291, !dbg !2488

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2491
  call void @llvm.dbg.value(metadata i64 %292, metadata !2200, metadata !DIExpression()), !dbg !2252
  %293 = icmp ult i64 %292, %282, !dbg !2492
  br i1 %293, label %294, label %296, !dbg !2495

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2492
  store i8 39, i8* %295, align 1, !dbg !2492, !tbaa !633
  br label %296, !dbg !2492

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2495
  call void @llvm.dbg.value(metadata i64 %297, metadata !2200, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 0, metadata !2208, metadata !DIExpression()), !dbg !2252
  br label %456, !dbg !2496

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2497

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2222, metadata !DIExpression()), !dbg !2498
  %300 = tail call i16** @__ctype_b_loc() #38, !dbg !2499
  %301 = load i16*, i16** %300, align 8, !dbg !2499, !tbaa !527
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2499
  %304 = load i16, i16* %303, align 2, !dbg !2499, !tbaa !658
  %305 = and i16 %304, 16384, !dbg !2499
  %306 = icmp ne i16 %305, 0, !dbg !2501
  call void @llvm.dbg.value(metadata i8 poison, metadata !2225, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i64 %349, metadata !2222, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i64 %312, metadata !2193, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i1 %350, metadata !2220, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2349
  br label %352, !dbg !2502

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2503
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !2226, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !2278, metadata !DIExpression()) #35, !dbg !2505
  call void @llvm.dbg.value(metadata i8* %32, metadata !2286, metadata !DIExpression()) #35, !dbg !2507
  call void @llvm.dbg.value(metadata i32 0, metadata !2289, metadata !DIExpression()) #35, !dbg !2507
  call void @llvm.dbg.value(metadata i64 8, metadata !2290, metadata !DIExpression()) #35, !dbg !2507
  store i64 0, i64* %14, align 8, !dbg !2509
  call void @llvm.dbg.value(metadata i64 0, metadata !2222, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8 1, metadata !2225, metadata !DIExpression()), !dbg !2498
  %308 = icmp eq i64 %164, -1, !dbg !2510
  br i1 %308, label %309, label %311, !dbg !2512

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2513
  call void @llvm.dbg.value(metadata i64 %310, metadata !2193, metadata !DIExpression()), !dbg !2252
  br label %311, !dbg !2514

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2349
  call void @llvm.dbg.value(metadata i64 %312, metadata !2193, metadata !DIExpression()), !dbg !2252
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2515
  %313 = sub i64 %312, %139, !dbg !2516
  call void @llvm.dbg.value(metadata i32* %16, metadata !2229, metadata !DIExpression(DW_OP_deref)), !dbg !2517
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #35, !dbg !2518
  call void @llvm.dbg.value(metadata i64 %314, metadata !2233, metadata !DIExpression()), !dbg !2517
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2519

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2222, metadata !DIExpression()), !dbg !2498
  %316 = icmp ugt i64 %312, %139, !dbg !2520
  br i1 %316, label %319, label %317, !dbg !2522

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2225, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i64 0, metadata !2222, metadata !DIExpression()), !dbg !2498
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2523
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2524
  call void @llvm.dbg.value(metadata i64 %349, metadata !2222, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i64 %312, metadata !2193, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i1 %350, metadata !2220, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2349
  br label %352, !dbg !2502

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2225, metadata !DIExpression()), !dbg !2498
  br label %346, !dbg !2525

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2222, metadata !DIExpression()), !dbg !2498
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2527
  %323 = load i8, i8* %322, align 1, !dbg !2527, !tbaa !633
  %324 = icmp eq i8 %323, 0, !dbg !2522
  br i1 %324, label %348, label %325, !dbg !2528

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %326, metadata !2222, metadata !DIExpression()), !dbg !2498
  %327 = add i64 %326, %139, !dbg !2530
  %328 = icmp eq i64 %326, %313, !dbg !2520
  br i1 %328, label %348, label %319, !dbg !2522, !llvm.loop !2531

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2532
  call void @llvm.dbg.value(metadata i64 1, metadata !2234, metadata !DIExpression()), !dbg !2533
  br i1 %331, label %332, label %340, !dbg !2532

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2234, metadata !DIExpression()), !dbg !2533
  %334 = add i64 %333, %139, !dbg !2534
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2536
  %336 = load i8, i8* %335, align 1, !dbg !2536, !tbaa !633
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2537

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2538
  call void @llvm.dbg.value(metadata i64 %338, metadata !2234, metadata !DIExpression()), !dbg !2533
  %339 = icmp eq i64 %338, %314, !dbg !2539
  br i1 %339, label %340, label %332, !dbg !2540, !llvm.loop !2541

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2543, !tbaa !624
  call void @llvm.dbg.value(metadata i32 %341, metadata !2229, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %341, metadata !2545, metadata !DIExpression()) #35, !dbg !2553
  %342 = call i32 @iswprint(i32 noundef %341) #35, !dbg !2555
  %343 = icmp ne i32 %342, 0, !dbg !2556
  call void @llvm.dbg.value(metadata i8 poison, metadata !2225, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i64 %314, metadata !2222, metadata !DIExpression()), !dbg !2498
  br label %348, !dbg !2557

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2225, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i64 0, metadata !2222, metadata !DIExpression()), !dbg !2498
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2523
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2524
  call void @llvm.dbg.label(metadata !2251), !dbg !2558
  %345 = select i1 %118, i32 4, i32 2, !dbg !2559
  br label %643, !dbg !2559

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2225, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i64 0, metadata !2222, metadata !DIExpression()), !dbg !2498
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2523
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2524
  call void @llvm.dbg.value(metadata i64 %349, metadata !2222, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i64 %312, metadata !2193, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i1 %350, metadata !2220, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2349
  br label %352, !dbg !2502

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2225, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i64 0, metadata !2222, metadata !DIExpression()), !dbg !2498
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2523
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2524
  call void @llvm.dbg.value(metadata i64 %349, metadata !2222, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i64 %312, metadata !2193, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i1 %350, metadata !2220, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2349
  %351 = icmp ugt i64 %349, 1, !dbg !2561
  br i1 %351, label %357, label %352, !dbg !2502

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2562
  br i1 %356, label %456, label %357, !dbg !2562

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2563
  call void @llvm.dbg.value(metadata i64 %361, metadata !2242, metadata !DIExpression()), !dbg !2564
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2565

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2252
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2341
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2566
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2349
  call void @llvm.dbg.value(metadata i8 %369, metadata !2221, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %368, metadata !2219, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 poison, metadata !2216, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %366, metadata !2214, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 poison, metadata !2208, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %364, metadata !2200, metadata !DIExpression()), !dbg !2252
  br i1 %362, label %414, label %370, !dbg !2567

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2572

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2219, metadata !DIExpression()), !dbg !2349
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2575
  br i1 %372, label %389, label %373, !dbg !2575

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2577
  br i1 %374, label %375, label %377, !dbg !2581

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2577
  store i8 39, i8* %376, align 1, !dbg !2577, !tbaa !633
  br label %377, !dbg !2577

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2581
  call void @llvm.dbg.value(metadata i64 %378, metadata !2200, metadata !DIExpression()), !dbg !2252
  %379 = icmp ult i64 %378, %140, !dbg !2582
  br i1 %379, label %380, label %382, !dbg !2585

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2582
  store i8 36, i8* %381, align 1, !dbg !2582, !tbaa !633
  br label %382, !dbg !2582

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2585
  call void @llvm.dbg.value(metadata i64 %383, metadata !2200, metadata !DIExpression()), !dbg !2252
  %384 = icmp ult i64 %383, %140, !dbg !2586
  br i1 %384, label %385, label %387, !dbg !2589

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2586
  store i8 39, i8* %386, align 1, !dbg !2586, !tbaa !633
  br label %387, !dbg !2586

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2589
  call void @llvm.dbg.value(metadata i64 %388, metadata !2200, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 1, metadata !2208, metadata !DIExpression()), !dbg !2252
  br label %389, !dbg !2590

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2252
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2208, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %390, metadata !2200, metadata !DIExpression()), !dbg !2252
  %392 = icmp ult i64 %390, %140, !dbg !2591
  br i1 %392, label %393, label %395, !dbg !2594

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2591
  store i8 92, i8* %394, align 1, !dbg !2591, !tbaa !633
  br label %395, !dbg !2591

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2594
  call void @llvm.dbg.value(metadata i64 %396, metadata !2200, metadata !DIExpression()), !dbg !2252
  %397 = icmp ult i64 %396, %140, !dbg !2595
  br i1 %397, label %398, label %402, !dbg !2598

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2595
  %400 = or i8 %399, 48, !dbg !2595
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2595
  store i8 %400, i8* %401, align 1, !dbg !2595, !tbaa !633
  br label %402, !dbg !2595

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2598
  call void @llvm.dbg.value(metadata i64 %403, metadata !2200, metadata !DIExpression()), !dbg !2252
  %404 = icmp ult i64 %403, %140, !dbg !2599
  br i1 %404, label %405, label %410, !dbg !2602

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2599
  %407 = and i8 %406, 7, !dbg !2599
  %408 = or i8 %407, 48, !dbg !2599
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2599
  store i8 %408, i8* %409, align 1, !dbg !2599, !tbaa !633
  br label %410, !dbg !2599

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2602
  call void @llvm.dbg.value(metadata i64 %411, metadata !2200, metadata !DIExpression()), !dbg !2252
  %412 = and i8 %369, 7, !dbg !2603
  %413 = or i8 %412, 48, !dbg !2604
  call void @llvm.dbg.value(metadata i8 %413, metadata !2221, metadata !DIExpression()), !dbg !2349
  br label %421, !dbg !2605

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2606

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2607
  br i1 %416, label %417, label %419, !dbg !2612

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2607
  store i8 92, i8* %418, align 1, !dbg !2607, !tbaa !633
  br label %419, !dbg !2607

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2612
  call void @llvm.dbg.value(metadata i64 %420, metadata !2200, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 0, metadata !2216, metadata !DIExpression()), !dbg !2349
  br label %421, !dbg !2613

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2252
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2349
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2349
  call void @llvm.dbg.value(metadata i8 %426, metadata !2221, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %425, metadata !2219, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 poison, metadata !2216, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 poison, metadata !2208, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %422, metadata !2200, metadata !DIExpression()), !dbg !2252
  %427 = add i64 %366, 1, !dbg !2614
  %428 = icmp ugt i64 %361, %427, !dbg !2616
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2617

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2618
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2618
  br i1 %432, label %433, label %444, !dbg !2618

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2621
  br i1 %434, label %435, label %437, !dbg !2625

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2621
  store i8 39, i8* %436, align 1, !dbg !2621, !tbaa !633
  br label %437, !dbg !2621

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2625
  call void @llvm.dbg.value(metadata i64 %438, metadata !2200, metadata !DIExpression()), !dbg !2252
  %439 = icmp ult i64 %438, %140, !dbg !2626
  br i1 %439, label %440, label %442, !dbg !2629

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2626
  store i8 39, i8* %441, align 1, !dbg !2626, !tbaa !633
  br label %442, !dbg !2626

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2629
  call void @llvm.dbg.value(metadata i64 %443, metadata !2200, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 0, metadata !2208, metadata !DIExpression()), !dbg !2252
  br label %444, !dbg !2630

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2631
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2208, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %445, metadata !2200, metadata !DIExpression()), !dbg !2252
  %447 = icmp ult i64 %445, %140, !dbg !2632
  br i1 %447, label %448, label %450, !dbg !2635

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2632
  store i8 %426, i8* %449, align 1, !dbg !2632, !tbaa !633
  br label %450, !dbg !2632

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2635
  call void @llvm.dbg.value(metadata i64 %451, metadata !2200, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %427, metadata !2214, metadata !DIExpression()), !dbg !2341
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2636
  %453 = load i8, i8* %452, align 1, !dbg !2636, !tbaa !633
  call void @llvm.dbg.value(metadata i8 %453, metadata !2221, metadata !DIExpression()), !dbg !2349
  br label %363, !dbg !2637, !llvm.loop !2638

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2221, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i1 %358, metadata !2220, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2349
  call void @llvm.dbg.value(metadata i8 %425, metadata !2219, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 poison, metadata !2216, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %366, metadata !2214, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 poison, metadata !2208, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %422, metadata !2200, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %360, metadata !2193, metadata !DIExpression()), !dbg !2252
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2641
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2252
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2256
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2341
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2349
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2191, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 %465, metadata !2221, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 poison, metadata !2220, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 poison, metadata !2219, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 poison, metadata !2216, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %462, metadata !2214, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 poison, metadata !2208, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 poison, metadata !2206, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %459, metadata !2201, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %458, metadata !2200, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %457, metadata !2193, metadata !DIExpression()), !dbg !2252
  br i1 %121, label %478, label %467, !dbg !2642

467:                                              ; preds = %259, %215, %263, %456
  %468 = phi i64 [ %466, %456 ], [ %140, %263 ], [ %140, %215 ], [ %140, %259 ]
  %469 = phi i8 [ %465, %456 ], [ %167, %263 ], [ 0, %215 ], [ 92, %259 ]
  %470 = phi i1 [ %464, %456 ], [ false, %263 ], [ false, %215 ], [ false, %259 ]
  %471 = phi i1 [ %463, %456 ], [ false, %263 ], [ false, %215 ], [ false, %259 ]
  %472 = phi i64 [ %462, %456 ], [ %139, %263 ], [ %139, %215 ], [ %139, %259 ]
  %473 = phi i1 [ %461, %456 ], [ %138, %263 ], [ %138, %215 ], [ %138, %259 ]
  %474 = phi i1 [ %460, %456 ], [ %136, %263 ], [ %136, %215 ], [ %136, %259 ]
  %475 = phi i64 [ %459, %456 ], [ %135, %263 ], [ %135, %215 ], [ %135, %259 ]
  %476 = phi i64 [ %458, %456 ], [ %134, %263 ], [ %134, %215 ], [ %134, %259 ]
  %477 = phi i64 [ %457, %456 ], [ %164, %263 ], [ %164, %215 ], [ %164, %259 ]
  br i1 %131, label %479, label %499, !dbg !2644

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2645

479:                                              ; preds = %467, %478
  %480 = phi i64 [ %468, %467 ], [ %466, %478 ]
  %481 = phi i8 [ %469, %467 ], [ %465, %478 ]
  %482 = phi i1 [ %470, %467 ], [ %464, %478 ]
  %483 = phi i1 [ %471, %467 ], [ %463, %478 ]
  %484 = phi i64 [ %472, %467 ], [ %462, %478 ]
  %485 = phi i1 [ %473, %467 ], [ %461, %478 ]
  %486 = phi i1 [ %474, %467 ], [ %460, %478 ]
  %487 = phi i64 [ %475, %467 ], [ %459, %478 ]
  %488 = phi i64 [ %476, %467 ], [ %458, %478 ]
  %489 = phi i64 [ %477, %467 ], [ %457, %478 ]
  %490 = lshr i8 %481, 5, !dbg !2646
  %491 = zext i8 %490 to i64, !dbg !2646
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2647
  %493 = load i32, i32* %492, align 4, !dbg !2647, !tbaa !624
  %494 = and i8 %481, 31, !dbg !2648
  %495 = zext i8 %494 to i32, !dbg !2648
  %496 = shl nuw i32 1, %495, !dbg !2649
  %497 = and i32 %493, %496, !dbg !2649
  %498 = icmp eq i32 %497, 0, !dbg !2649
  br i1 %498, label %499, label %510, !dbg !2650

499:                                              ; preds = %194, %479, %478, %467
  %500 = phi i64 [ %480, %479 ], [ %466, %478 ], [ %468, %467 ], [ %140, %194 ]
  %501 = phi i8 [ %481, %479 ], [ %465, %478 ], [ %469, %467 ], [ 48, %194 ]
  %502 = phi i1 [ %482, %479 ], [ %464, %478 ], [ %470, %467 ], [ false, %194 ]
  %503 = phi i1 [ %483, %479 ], [ %463, %478 ], [ %471, %467 ], [ true, %194 ]
  %504 = phi i64 [ %484, %479 ], [ %462, %478 ], [ %472, %467 ], [ %139, %194 ]
  %505 = phi i1 [ %485, %479 ], [ %461, %478 ], [ %473, %467 ], [ %190, %194 ]
  %506 = phi i1 [ %486, %479 ], [ %460, %478 ], [ %474, %467 ], [ %136, %194 ]
  %507 = phi i64 [ %487, %479 ], [ %459, %478 ], [ %475, %467 ], [ %135, %194 ]
  %508 = phi i64 [ %488, %479 ], [ %458, %478 ], [ %476, %467 ], [ %195, %194 ]
  %509 = phi i64 [ %489, %479 ], [ %457, %478 ], [ %477, %467 ], [ %164, %194 ]
  br i1 %165, label %510, label %546, !dbg !2651

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2641
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2252
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2256
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2652
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2349
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2191, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 %518, metadata !2221, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 poison, metadata !2220, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %516, metadata !2214, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 poison, metadata !2208, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 poison, metadata !2206, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %513, metadata !2201, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %512, metadata !2200, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %511, metadata !2193, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.label(metadata !2249), !dbg !2653
  br i1 %119, label %638, label %520, !dbg !2654

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2219, metadata !DIExpression()), !dbg !2349
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2656
  br i1 %521, label %538, label %522, !dbg !2656

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2658
  br i1 %523, label %524, label %526, !dbg !2662

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2658
  store i8 39, i8* %525, align 1, !dbg !2658, !tbaa !633
  br label %526, !dbg !2658

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2662
  call void @llvm.dbg.value(metadata i64 %527, metadata !2200, metadata !DIExpression()), !dbg !2252
  %528 = icmp ult i64 %527, %519, !dbg !2663
  br i1 %528, label %529, label %531, !dbg !2666

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2663
  store i8 36, i8* %530, align 1, !dbg !2663, !tbaa !633
  br label %531, !dbg !2663

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2666
  call void @llvm.dbg.value(metadata i64 %532, metadata !2200, metadata !DIExpression()), !dbg !2252
  %533 = icmp ult i64 %532, %519, !dbg !2667
  br i1 %533, label %534, label %536, !dbg !2670

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2667
  store i8 39, i8* %535, align 1, !dbg !2667, !tbaa !633
  br label %536, !dbg !2667

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2670
  call void @llvm.dbg.value(metadata i64 %537, metadata !2200, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 1, metadata !2208, metadata !DIExpression()), !dbg !2252
  br label %538, !dbg !2671

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2349
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2208, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %539, metadata !2200, metadata !DIExpression()), !dbg !2252
  %541 = icmp ult i64 %539, %519, !dbg !2672
  br i1 %541, label %542, label %544, !dbg !2675

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2672
  store i8 92, i8* %543, align 1, !dbg !2672, !tbaa !633
  br label %544, !dbg !2672

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2675
  call void @llvm.dbg.value(metadata i64 %556, metadata !2191, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 %555, metadata !2221, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 poison, metadata !2220, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 poison, metadata !2219, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %552, metadata !2214, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 poison, metadata !2208, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 poison, metadata !2206, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %549, metadata !2201, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %548, metadata !2200, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %547, metadata !2193, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.label(metadata !2250), !dbg !2676
  br label %570, !dbg !2677

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2641
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2252
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2256
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2652
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2680
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2191, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 %555, metadata !2221, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 poison, metadata !2220, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 poison, metadata !2219, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %552, metadata !2214, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 poison, metadata !2208, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 poison, metadata !2206, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %549, metadata !2201, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %548, metadata !2200, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %547, metadata !2193, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.label(metadata !2250), !dbg !2676
  %557 = xor i1 %551, true, !dbg !2677
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2677
  br i1 %558, label %570, label %559, !dbg !2677

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2681
  br i1 %560, label %561, label %563, !dbg !2685

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2681
  store i8 39, i8* %562, align 1, !dbg !2681, !tbaa !633
  br label %563, !dbg !2681

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2685
  call void @llvm.dbg.value(metadata i64 %564, metadata !2200, metadata !DIExpression()), !dbg !2252
  %565 = icmp ult i64 %564, %556, !dbg !2686
  br i1 %565, label %566, label %568, !dbg !2689

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2686
  store i8 39, i8* %567, align 1, !dbg !2686, !tbaa !633
  br label %568, !dbg !2686

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2689
  call void @llvm.dbg.value(metadata i64 %569, metadata !2200, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 0, metadata !2208, metadata !DIExpression()), !dbg !2252
  br label %570, !dbg !2690

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2349
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2208, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %578, metadata !2200, metadata !DIExpression()), !dbg !2252
  %580 = icmp ult i64 %578, %571, !dbg !2691
  br i1 %580, label %581, label %583, !dbg !2694

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2691
  store i8 %572, i8* %582, align 1, !dbg !2691, !tbaa !633
  br label %583, !dbg !2691

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2694
  call void @llvm.dbg.value(metadata i64 %584, metadata !2200, metadata !DIExpression()), !dbg !2252
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2695
  call void @llvm.dbg.value(metadata i8 poison, metadata !2207, metadata !DIExpression()), !dbg !2252
  br label %586, !dbg !2696

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2641
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2252
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2256
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2652
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2191, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %593, metadata !2214, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 poison, metadata !2208, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 poison, metadata !2207, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 poison, metadata !2206, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %589, metadata !2201, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %588, metadata !2200, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %587, metadata !2193, metadata !DIExpression()), !dbg !2252
  %595 = add i64 %593, 1, !dbg !2697
  call void @llvm.dbg.value(metadata i64 %595, metadata !2214, metadata !DIExpression()), !dbg !2341
  br label %132, !dbg !2698, !llvm.loop !2699

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2191, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 poison, metadata !2207, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 poison, metadata !2206, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 undef, metadata !2201, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 undef, metadata !2200, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 undef, metadata !2193, metadata !DIExpression()), !dbg !2252
  %597 = icmp eq i64 %134, 0, !dbg !2701
  %598 = and i1 %126, %597, !dbg !2703
  %599 = and i1 %598, %119, !dbg !2703
  br i1 %599, label %638, label %600, !dbg !2703

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2704
  %602 = or i1 %119, %601, !dbg !2704
  %603 = xor i1 %136, true, !dbg !2704
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2704
  br i1 %604, label %612, label %605, !dbg !2704

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2706

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2708
  br label %653, !dbg !2710

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2711
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2713
  br i1 %611, label %36, label %612, !dbg !2713

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2714
  %615 = or i1 %614, %613, !dbg !2716
  br i1 %615, label %631, label %616, !dbg !2716

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2202, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %134, metadata !2200, metadata !DIExpression()), !dbg !2252
  %617 = load i8, i8* %116, align 1, !dbg !2717, !tbaa !633
  %618 = icmp eq i8 %617, 0, !dbg !2720
  br i1 %618, label %631, label %619, !dbg !2720

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2202, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %622, metadata !2200, metadata !DIExpression()), !dbg !2252
  %623 = icmp ult i64 %622, %140, !dbg !2721
  br i1 %623, label %624, label %626, !dbg !2724

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2721
  store i8 %620, i8* %625, align 1, !dbg !2721, !tbaa !633
  br label %626, !dbg !2721

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2724
  call void @llvm.dbg.value(metadata i64 %627, metadata !2200, metadata !DIExpression()), !dbg !2252
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2725
  call void @llvm.dbg.value(metadata i8* %628, metadata !2202, metadata !DIExpression()), !dbg !2252
  %629 = load i8, i8* %628, align 1, !dbg !2717, !tbaa !633
  %630 = icmp eq i8 %629, 0, !dbg !2720
  br i1 %630, label %631, label %619, !dbg !2720, !llvm.loop !2726

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2328
  call void @llvm.dbg.value(metadata i64 %632, metadata !2200, metadata !DIExpression()), !dbg !2252
  %633 = icmp ult i64 %632, %140, !dbg !2728
  br i1 %633, label %634, label %653, !dbg !2730

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2731
  store i8 0, i8* %635, align 1, !dbg !2732, !tbaa !633
  br label %653, !dbg !2731

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2251), !dbg !2558
  %637 = icmp eq i32 %112, 2, !dbg !2733
  br i1 %637, label %643, label %647, !dbg !2559

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2251), !dbg !2558
  %641 = icmp eq i32 %112, 2, !dbg !2733
  %642 = select i1 %118, i32 4, i32 2, !dbg !2559
  br i1 %641, label %643, label %647, !dbg !2559

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2559

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2194, metadata !DIExpression()), !dbg !2252
  %651 = and i32 %5, -3, !dbg !2734
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2735
  br label %653, !dbg !2736

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2737
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !2738 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2740 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2744, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i64 %1, metadata !2745, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2746, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i8* %0, metadata !2748, metadata !DIExpression()) #35, !dbg !2761
  call void @llvm.dbg.value(metadata i64 %1, metadata !2753, metadata !DIExpression()) #35, !dbg !2761
  call void @llvm.dbg.value(metadata i64* null, metadata !2754, metadata !DIExpression()) #35, !dbg !2761
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2755, metadata !DIExpression()) #35, !dbg !2761
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2763
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2763
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2756, metadata !DIExpression()) #35, !dbg !2761
  %6 = tail call i32* @__errno_location() #38, !dbg !2764
  %7 = load i32, i32* %6, align 4, !dbg !2764, !tbaa !624
  call void @llvm.dbg.value(metadata i32 %7, metadata !2757, metadata !DIExpression()) #35, !dbg !2761
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2765
  %9 = load i32, i32* %8, align 4, !dbg !2765, !tbaa !2134
  %10 = or i32 %9, 1, !dbg !2766
  call void @llvm.dbg.value(metadata i32 %10, metadata !2758, metadata !DIExpression()) #35, !dbg !2761
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2767
  %12 = load i32, i32* %11, align 8, !dbg !2767, !tbaa !2083
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2768
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2769
  %15 = load i8*, i8** %14, align 8, !dbg !2769, !tbaa !2156
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2770
  %17 = load i8*, i8** %16, align 8, !dbg !2770, !tbaa !2159
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #35, !dbg !2771
  %19 = add i64 %18, 1, !dbg !2772
  call void @llvm.dbg.value(metadata i64 %19, metadata !2759, metadata !DIExpression()) #35, !dbg !2761
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #42, !dbg !2773
  call void @llvm.dbg.value(metadata i8* %20, metadata !2760, metadata !DIExpression()) #35, !dbg !2761
  %21 = load i32, i32* %11, align 8, !dbg !2774, !tbaa !2083
  %22 = load i8*, i8** %14, align 8, !dbg !2775, !tbaa !2156
  %23 = load i8*, i8** %16, align 8, !dbg !2776, !tbaa !2159
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #35, !dbg !2777
  store i32 %7, i32* %6, align 4, !dbg !2778, !tbaa !624
  ret i8* %20, !dbg !2779
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2749 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2748, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %1, metadata !2753, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i64* %2, metadata !2754, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2755, metadata !DIExpression()), !dbg !2780
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2781
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2781
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2756, metadata !DIExpression()), !dbg !2780
  %7 = tail call i32* @__errno_location() #38, !dbg !2782
  %8 = load i32, i32* %7, align 4, !dbg !2782, !tbaa !624
  call void @llvm.dbg.value(metadata i32 %8, metadata !2757, metadata !DIExpression()), !dbg !2780
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2783
  %10 = load i32, i32* %9, align 4, !dbg !2783, !tbaa !2134
  %11 = icmp eq i64* %2, null, !dbg !2784
  %12 = zext i1 %11 to i32, !dbg !2784
  %13 = or i32 %10, %12, !dbg !2785
  call void @llvm.dbg.value(metadata i32 %13, metadata !2758, metadata !DIExpression()), !dbg !2780
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2786
  %15 = load i32, i32* %14, align 8, !dbg !2786, !tbaa !2083
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2787
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2788
  %18 = load i8*, i8** %17, align 8, !dbg !2788, !tbaa !2156
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2789
  %20 = load i8*, i8** %19, align 8, !dbg !2789, !tbaa !2159
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2790
  %22 = add i64 %21, 1, !dbg !2791
  call void @llvm.dbg.value(metadata i64 %22, metadata !2759, metadata !DIExpression()), !dbg !2780
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #42, !dbg !2792
  call void @llvm.dbg.value(metadata i8* %23, metadata !2760, metadata !DIExpression()), !dbg !2780
  %24 = load i32, i32* %14, align 8, !dbg !2793, !tbaa !2083
  %25 = load i8*, i8** %17, align 8, !dbg !2794, !tbaa !2156
  %26 = load i8*, i8** %19, align 8, !dbg !2795, !tbaa !2159
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2796
  store i32 %8, i32* %7, align 4, !dbg !2797, !tbaa !624
  br i1 %11, label %29, label %28, !dbg !2798

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2799, !tbaa !1440
  br label %29, !dbg !2801

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2802
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2803 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2808, !tbaa !527
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2805, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i32 1, metadata !2806, metadata !DIExpression()), !dbg !2810
  %2 = load i32, i32* @nslots, align 4, !tbaa !624
  call void @llvm.dbg.value(metadata i32 1, metadata !2806, metadata !DIExpression()), !dbg !2810
  %3 = icmp sgt i32 %2, 1, !dbg !2811
  br i1 %3, label %4, label %6, !dbg !2813

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2811
  br label %10, !dbg !2813

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2814
  %8 = load i8*, i8** %7, align 8, !dbg !2814, !tbaa !2816
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2818
  br i1 %9, label %17, label %16, !dbg !2819

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2806, metadata !DIExpression()), !dbg !2810
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2820
  %13 = load i8*, i8** %12, align 8, !dbg !2820, !tbaa !2816
  tail call void @free(i8* noundef %13) #35, !dbg !2821
  %14 = add nuw nsw i64 %11, 1, !dbg !2822
  call void @llvm.dbg.value(metadata i64 %14, metadata !2806, metadata !DIExpression()), !dbg !2810
  %15 = icmp eq i64 %14, %5, !dbg !2811
  br i1 %15, label %6, label %10, !dbg !2813, !llvm.loop !2823

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #35, !dbg !2825
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2827, !tbaa !2828
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2829, !tbaa !2816
  br label %17, !dbg !2830

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2831
  br i1 %18, label %21, label %19, !dbg !2833

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2834
  tail call void @free(i8* noundef %20) #35, !dbg !2836
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2837, !tbaa !527
  br label %21, !dbg !2838

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2839, !tbaa !624
  ret void, !dbg !2840
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2841 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2843, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8* %1, metadata !2844, metadata !DIExpression()), !dbg !2845
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2846
  ret i8* %3, !dbg !2847
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2848 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2852, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8* %1, metadata !2853, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i64 %2, metadata !2854, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2855, metadata !DIExpression()), !dbg !2868
  %6 = tail call i32* @__errno_location() #38, !dbg !2869
  %7 = load i32, i32* %6, align 4, !dbg !2869, !tbaa !624
  call void @llvm.dbg.value(metadata i32 %7, metadata !2856, metadata !DIExpression()), !dbg !2868
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2870, !tbaa !527
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2857, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2858, metadata !DIExpression()), !dbg !2868
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2871
  br i1 %9, label %10, label %11, !dbg !2871

10:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2873
  unreachable, !dbg !2873

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2874, !tbaa !624
  %13 = icmp sgt i32 %12, %0, !dbg !2875
  br i1 %13, label %36, label %14, !dbg !2876

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2877
  call void @llvm.dbg.value(metadata i1 %15, metadata !2859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2878
  %16 = bitcast i64* %5 to i8*, !dbg !2879
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #35, !dbg !2879
  %17 = sext i32 %12 to i64, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %17, metadata !2862, metadata !DIExpression()), !dbg !2878
  store i64 %17, i64* %5, align 8, !dbg !2881, !tbaa !1440
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2882
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2882
  %20 = add nuw nsw i32 %0, 1, !dbg !2883
  %21 = sub i32 %20, %12, !dbg !2884
  %22 = sext i32 %21 to i64, !dbg !2885
  call void @llvm.dbg.value(metadata i64* %5, metadata !2862, metadata !DIExpression(DW_OP_deref)), !dbg !2878
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #35, !dbg !2886
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2886
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2857, metadata !DIExpression()), !dbg !2868
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2887, !tbaa !527
  br i1 %15, label %25, label %26, !dbg !2888

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2889, !tbaa.struct !2891
  br label %26, !dbg !2892

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2893, !tbaa !624
  %28 = sext i32 %27 to i64, !dbg !2894
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2894
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2895
  %31 = load i64, i64* %5, align 8, !dbg !2896, !tbaa !1440
  call void @llvm.dbg.value(metadata i64 %31, metadata !2862, metadata !DIExpression()), !dbg !2878
  %32 = sub nsw i64 %31, %28, !dbg !2897
  %33 = shl i64 %32, 4, !dbg !2898
  call void @llvm.dbg.value(metadata i8* %30, metadata !2286, metadata !DIExpression()) #35, !dbg !2899
  call void @llvm.dbg.value(metadata i32 0, metadata !2289, metadata !DIExpression()) #35, !dbg !2899
  call void @llvm.dbg.value(metadata i64 %33, metadata !2290, metadata !DIExpression()) #35, !dbg !2899
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #35, !dbg !2901
  %34 = load i64, i64* %5, align 8, !dbg !2902, !tbaa !1440
  call void @llvm.dbg.value(metadata i64 %34, metadata !2862, metadata !DIExpression()), !dbg !2878
  %35 = trunc i64 %34 to i32, !dbg !2902
  store i32 %35, i32* @nslots, align 4, !dbg !2903, !tbaa !624
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #35, !dbg !2904
  br label %36, !dbg !2905

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2868
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2857, metadata !DIExpression()), !dbg !2868
  %38 = zext i32 %0 to i64, !dbg !2906
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2907
  %40 = load i64, i64* %39, align 8, !dbg !2907, !tbaa !2828
  call void @llvm.dbg.value(metadata i64 %40, metadata !2863, metadata !DIExpression()), !dbg !2908
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2909
  %42 = load i8*, i8** %41, align 8, !dbg !2909, !tbaa !2816
  call void @llvm.dbg.value(metadata i8* %42, metadata !2865, metadata !DIExpression()), !dbg !2908
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2910
  %44 = load i32, i32* %43, align 4, !dbg !2910, !tbaa !2134
  %45 = or i32 %44, 1, !dbg !2911
  call void @llvm.dbg.value(metadata i32 %45, metadata !2866, metadata !DIExpression()), !dbg !2908
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2912
  %47 = load i32, i32* %46, align 8, !dbg !2912, !tbaa !2083
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2913
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2914
  %50 = load i8*, i8** %49, align 8, !dbg !2914, !tbaa !2156
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2915
  %52 = load i8*, i8** %51, align 8, !dbg !2915, !tbaa !2159
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2916
  call void @llvm.dbg.value(metadata i64 %53, metadata !2867, metadata !DIExpression()), !dbg !2908
  %54 = icmp ugt i64 %40, %53, !dbg !2917
  br i1 %54, label %65, label %55, !dbg !2919

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2920
  call void @llvm.dbg.value(metadata i64 %56, metadata !2863, metadata !DIExpression()), !dbg !2908
  store i64 %56, i64* %39, align 8, !dbg !2922, !tbaa !2828
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2923
  br i1 %57, label %59, label %58, !dbg !2925

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #35, !dbg !2926
  br label %59, !dbg !2926

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #42, !dbg !2927
  call void @llvm.dbg.value(metadata i8* %60, metadata !2865, metadata !DIExpression()), !dbg !2908
  store i8* %60, i8** %41, align 8, !dbg !2928, !tbaa !2816
  %61 = load i32, i32* %46, align 8, !dbg !2929, !tbaa !2083
  %62 = load i8*, i8** %49, align 8, !dbg !2930, !tbaa !2156
  %63 = load i8*, i8** %51, align 8, !dbg !2931, !tbaa !2159
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2932
  br label %65, !dbg !2933

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2908
  call void @llvm.dbg.value(metadata i8* %66, metadata !2865, metadata !DIExpression()), !dbg !2908
  store i32 %7, i32* %6, align 4, !dbg !2934, !tbaa !624
  ret i8* %66, !dbg !2935
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2936 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2940, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i8* %1, metadata !2941, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i64 %2, metadata !2942, metadata !DIExpression()), !dbg !2943
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2944
  ret i8* %4, !dbg !2945
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2946 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2948, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i32 0, metadata !2843, metadata !DIExpression()) #35, !dbg !2950
  call void @llvm.dbg.value(metadata i8* %0, metadata !2844, metadata !DIExpression()) #35, !dbg !2950
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !2952
  ret i8* %2, !dbg !2953
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2954 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2958, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i64 %1, metadata !2959, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i32 0, metadata !2940, metadata !DIExpression()) #35, !dbg !2961
  call void @llvm.dbg.value(metadata i8* %0, metadata !2941, metadata !DIExpression()) #35, !dbg !2961
  call void @llvm.dbg.value(metadata i64 %1, metadata !2942, metadata !DIExpression()) #35, !dbg !2961
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !2963
  ret i8* %3, !dbg !2964
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2965 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2969, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i32 %1, metadata !2970, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %2, metadata !2971, metadata !DIExpression()), !dbg !2973
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2974
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2974
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2972, metadata !DIExpression()), !dbg !2975
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2976), !dbg !2979
  call void @llvm.dbg.value(metadata i32 %1, metadata !2980, metadata !DIExpression()) #35, !dbg !2986
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2985, metadata !DIExpression()) #35, !dbg !2988
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !2988, !alias.scope !2976
  %6 = icmp eq i32 %1, 10, !dbg !2989
  br i1 %6, label %7, label %8, !dbg !2991

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2992, !noalias !2976
  unreachable, !dbg !2992

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2993
  store i32 %1, i32* %9, align 8, !dbg !2994, !tbaa !2083, !alias.scope !2976
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2995
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2996
  ret i8* %10, !dbg !2997
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2998 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3002, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i32 %1, metadata !3003, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i8* %2, metadata !3004, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i64 %3, metadata !3005, metadata !DIExpression()), !dbg !3007
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3008
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3008
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3006, metadata !DIExpression()), !dbg !3009
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3010), !dbg !3013
  call void @llvm.dbg.value(metadata i32 %1, metadata !2980, metadata !DIExpression()) #35, !dbg !3014
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2985, metadata !DIExpression()) #35, !dbg !3016
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #35, !dbg !3016, !alias.scope !3010
  %7 = icmp eq i32 %1, 10, !dbg !3017
  br i1 %7, label %8, label %9, !dbg !3018

8:                                                ; preds = %4
  tail call void @abort() #37, !dbg !3019, !noalias !3010
  unreachable, !dbg !3019

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3020
  store i32 %1, i32* %10, align 8, !dbg !3021, !tbaa !2083, !alias.scope !3010
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !3022
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3023
  ret i8* %11, !dbg !3024
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3025 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3029, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i8* %1, metadata !3030, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i32 0, metadata !2969, metadata !DIExpression()) #35, !dbg !3032
  call void @llvm.dbg.value(metadata i32 %0, metadata !2970, metadata !DIExpression()) #35, !dbg !3032
  call void @llvm.dbg.value(metadata i8* %1, metadata !2971, metadata !DIExpression()) #35, !dbg !3032
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3034
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3034
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2972, metadata !DIExpression()) #35, !dbg !3035
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3036) #35, !dbg !3039
  call void @llvm.dbg.value(metadata i32 %0, metadata !2980, metadata !DIExpression()) #35, !dbg !3040
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2985, metadata !DIExpression()) #35, !dbg !3042
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #35, !dbg !3042, !alias.scope !3036
  %5 = icmp eq i32 %0, 10, !dbg !3043
  br i1 %5, label %6, label %7, !dbg !3044

6:                                                ; preds = %2
  tail call void @abort() #37, !dbg !3045, !noalias !3036
  unreachable, !dbg !3045

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3046
  store i32 %0, i32* %8, align 8, !dbg !3047, !tbaa !2083, !alias.scope !3036
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3048
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3049
  ret i8* %9, !dbg !3050
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3051 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3055, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i8* %1, metadata !3056, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i64 %2, metadata !3057, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i32 0, metadata !3002, metadata !DIExpression()) #35, !dbg !3059
  call void @llvm.dbg.value(metadata i32 %0, metadata !3003, metadata !DIExpression()) #35, !dbg !3059
  call void @llvm.dbg.value(metadata i8* %1, metadata !3004, metadata !DIExpression()) #35, !dbg !3059
  call void @llvm.dbg.value(metadata i64 %2, metadata !3005, metadata !DIExpression()) #35, !dbg !3059
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3061
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3061
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3006, metadata !DIExpression()) #35, !dbg !3062
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3063) #35, !dbg !3066
  call void @llvm.dbg.value(metadata i32 %0, metadata !2980, metadata !DIExpression()) #35, !dbg !3067
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2985, metadata !DIExpression()) #35, !dbg !3069
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !3069, !alias.scope !3063
  %6 = icmp eq i32 %0, 10, !dbg !3070
  br i1 %6, label %7, label %8, !dbg !3071

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3072, !noalias !3063
  unreachable, !dbg !3072

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3073
  store i32 %0, i32* %9, align 8, !dbg !3074, !tbaa !2083, !alias.scope !3063
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #35, !dbg !3075
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3076
  ret i8* %10, !dbg !3077
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !3078 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3082, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i64 %1, metadata !3083, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i8 %2, metadata !3084, metadata !DIExpression()), !dbg !3086
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3087
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3087
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3085, metadata !DIExpression()), !dbg !3088
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3089, !tbaa.struct !3090
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2101, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8 %2, metadata !2102, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i32 1, metadata !2103, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8 %2, metadata !2104, metadata !DIExpression()), !dbg !3091
  %6 = lshr i8 %2, 5, !dbg !3093
  %7 = zext i8 %6 to i64, !dbg !3093
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3094
  call void @llvm.dbg.value(metadata i32* %8, metadata !2105, metadata !DIExpression()), !dbg !3091
  %9 = and i8 %2, 31, !dbg !3095
  %10 = zext i8 %9 to i32, !dbg !3095
  call void @llvm.dbg.value(metadata i32 %10, metadata !2107, metadata !DIExpression()), !dbg !3091
  %11 = load i32, i32* %8, align 4, !dbg !3096, !tbaa !624
  %12 = lshr i32 %11, %10, !dbg !3097
  %13 = and i32 %12, 1, !dbg !3098
  call void @llvm.dbg.value(metadata i32 %13, metadata !2108, metadata !DIExpression()), !dbg !3091
  %14 = xor i32 %13, 1, !dbg !3099
  %15 = shl i32 %14, %10, !dbg !3100
  %16 = xor i32 %15, %11, !dbg !3101
  store i32 %16, i32* %8, align 4, !dbg !3101, !tbaa !624
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3102
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3103
  ret i8* %17, !dbg !3104
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !3105 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3109, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i8 %1, metadata !3110, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i8* %0, metadata !3082, metadata !DIExpression()) #35, !dbg !3112
  call void @llvm.dbg.value(metadata i64 -1, metadata !3083, metadata !DIExpression()) #35, !dbg !3112
  call void @llvm.dbg.value(metadata i8 %1, metadata !3084, metadata !DIExpression()) #35, !dbg !3112
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3114
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3114
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3085, metadata !DIExpression()) #35, !dbg !3115
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3116, !tbaa.struct !3090
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2101, metadata !DIExpression()) #35, !dbg !3117
  call void @llvm.dbg.value(metadata i8 %1, metadata !2102, metadata !DIExpression()) #35, !dbg !3117
  call void @llvm.dbg.value(metadata i32 1, metadata !2103, metadata !DIExpression()) #35, !dbg !3117
  call void @llvm.dbg.value(metadata i8 %1, metadata !2104, metadata !DIExpression()) #35, !dbg !3117
  %5 = lshr i8 %1, 5, !dbg !3119
  %6 = zext i8 %5 to i64, !dbg !3119
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3120
  call void @llvm.dbg.value(metadata i32* %7, metadata !2105, metadata !DIExpression()) #35, !dbg !3117
  %8 = and i8 %1, 31, !dbg !3121
  %9 = zext i8 %8 to i32, !dbg !3121
  call void @llvm.dbg.value(metadata i32 %9, metadata !2107, metadata !DIExpression()) #35, !dbg !3117
  %10 = load i32, i32* %7, align 4, !dbg !3122, !tbaa !624
  %11 = lshr i32 %10, %9, !dbg !3123
  %12 = and i32 %11, 1, !dbg !3124
  call void @llvm.dbg.value(metadata i32 %12, metadata !2108, metadata !DIExpression()) #35, !dbg !3117
  %13 = xor i32 %12, 1, !dbg !3125
  %14 = shl i32 %13, %9, !dbg !3126
  %15 = xor i32 %14, %10, !dbg !3127
  store i32 %15, i32* %7, align 4, !dbg !3127, !tbaa !624
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3128
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3129
  ret i8* %16, !dbg !3130
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !3131 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3133, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i8* %0, metadata !3109, metadata !DIExpression()) #35, !dbg !3135
  call void @llvm.dbg.value(metadata i8 58, metadata !3110, metadata !DIExpression()) #35, !dbg !3135
  call void @llvm.dbg.value(metadata i8* %0, metadata !3082, metadata !DIExpression()) #35, !dbg !3137
  call void @llvm.dbg.value(metadata i64 -1, metadata !3083, metadata !DIExpression()) #35, !dbg !3137
  call void @llvm.dbg.value(metadata i8 58, metadata !3084, metadata !DIExpression()) #35, !dbg !3137
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3139
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #35, !dbg !3139
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3085, metadata !DIExpression()) #35, !dbg !3140
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3141, !tbaa.struct !3090
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2101, metadata !DIExpression()) #35, !dbg !3142
  call void @llvm.dbg.value(metadata i8 58, metadata !2102, metadata !DIExpression()) #35, !dbg !3142
  call void @llvm.dbg.value(metadata i32 1, metadata !2103, metadata !DIExpression()) #35, !dbg !3142
  call void @llvm.dbg.value(metadata i8 58, metadata !2104, metadata !DIExpression()) #35, !dbg !3142
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3144
  call void @llvm.dbg.value(metadata i32* %4, metadata !2105, metadata !DIExpression()) #35, !dbg !3142
  call void @llvm.dbg.value(metadata i32 26, metadata !2107, metadata !DIExpression()) #35, !dbg !3142
  %5 = load i32, i32* %4, align 4, !dbg !3145, !tbaa !624
  call void @llvm.dbg.value(metadata i32 %5, metadata !2108, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !3142
  %6 = or i32 %5, 67108864, !dbg !3146
  store i32 %6, i32* %4, align 4, !dbg !3146, !tbaa !624
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #35, !dbg !3147
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #35, !dbg !3148
  ret i8* %7, !dbg !3149
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3150 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3152, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i64 %1, metadata !3153, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i8* %0, metadata !3082, metadata !DIExpression()) #35, !dbg !3155
  call void @llvm.dbg.value(metadata i64 %1, metadata !3083, metadata !DIExpression()) #35, !dbg !3155
  call void @llvm.dbg.value(metadata i8 58, metadata !3084, metadata !DIExpression()) #35, !dbg !3155
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3157
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3157
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3085, metadata !DIExpression()) #35, !dbg !3158
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3159, !tbaa.struct !3090
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2101, metadata !DIExpression()) #35, !dbg !3160
  call void @llvm.dbg.value(metadata i8 58, metadata !2102, metadata !DIExpression()) #35, !dbg !3160
  call void @llvm.dbg.value(metadata i32 1, metadata !2103, metadata !DIExpression()) #35, !dbg !3160
  call void @llvm.dbg.value(metadata i8 58, metadata !2104, metadata !DIExpression()) #35, !dbg !3160
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3162
  call void @llvm.dbg.value(metadata i32* %5, metadata !2105, metadata !DIExpression()) #35, !dbg !3160
  call void @llvm.dbg.value(metadata i32 26, metadata !2107, metadata !DIExpression()) #35, !dbg !3160
  %6 = load i32, i32* %5, align 4, !dbg !3163, !tbaa !624
  call void @llvm.dbg.value(metadata i32 %6, metadata !2108, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !3160
  %7 = or i32 %6, 67108864, !dbg !3164
  store i32 %7, i32* %5, align 4, !dbg !3164, !tbaa !624
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3165
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3166
  ret i8* %8, !dbg !3167
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3168 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3170, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i32 %1, metadata !3171, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i8* %2, metadata !3172, metadata !DIExpression()), !dbg !3174
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3175
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3175
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3173, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i32 %1, metadata !2980, metadata !DIExpression()) #35, !dbg !3177
  call void @llvm.dbg.value(metadata i32 0, metadata !2985, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3177
  %6 = icmp eq i32 %1, 10, !dbg !3179
  br i1 %6, label %7, label %8, !dbg !3180

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3181, !noalias !3182
  unreachable, !dbg !3181

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2985, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3177
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3185
  store i32 %1, i32* %9, align 8, !dbg !3185, !tbaa.struct !3090
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3185
  %11 = bitcast i32* %10 to i8*, !dbg !3185
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3185
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2101, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i8 58, metadata !2102, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i32 1, metadata !2103, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i8 58, metadata !2104, metadata !DIExpression()), !dbg !3186
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3188
  call void @llvm.dbg.value(metadata i32* %12, metadata !2105, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i32 26, metadata !2107, metadata !DIExpression()), !dbg !3186
  %13 = load i32, i32* %12, align 4, !dbg !3189, !tbaa !624
  call void @llvm.dbg.value(metadata i32 %13, metadata !2108, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3186
  %14 = or i32 %13, 67108864, !dbg !3190
  store i32 %14, i32* %12, align 4, !dbg !3190, !tbaa !624
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3191
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3192
  ret i8* %15, !dbg !3193
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !3194 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3198, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i8* %1, metadata !3199, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i8* %2, metadata !3200, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i8* %3, metadata !3201, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i32 %0, metadata !3203, metadata !DIExpression()) #35, !dbg !3213
  call void @llvm.dbg.value(metadata i8* %1, metadata !3208, metadata !DIExpression()) #35, !dbg !3213
  call void @llvm.dbg.value(metadata i8* %2, metadata !3209, metadata !DIExpression()) #35, !dbg !3213
  call void @llvm.dbg.value(metadata i8* %3, metadata !3210, metadata !DIExpression()) #35, !dbg !3213
  call void @llvm.dbg.value(metadata i64 -1, metadata !3211, metadata !DIExpression()) #35, !dbg !3213
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3215
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3215
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3212, metadata !DIExpression()) #35, !dbg !3216
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3217, !tbaa.struct !3090
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2141, metadata !DIExpression()) #35, !dbg !3218
  call void @llvm.dbg.value(metadata i8* %1, metadata !2142, metadata !DIExpression()) #35, !dbg !3218
  call void @llvm.dbg.value(metadata i8* %2, metadata !2143, metadata !DIExpression()) #35, !dbg !3218
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2141, metadata !DIExpression()) #35, !dbg !3218
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3220
  store i32 10, i32* %7, align 8, !dbg !3221, !tbaa !2083
  %8 = icmp ne i8* %1, null, !dbg !3222
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3223
  br i1 %10, label %12, label %11, !dbg !3223

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3224
  unreachable, !dbg !3224

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3225
  store i8* %1, i8** %13, align 8, !dbg !3226, !tbaa !2156
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3227
  store i8* %2, i8** %14, align 8, !dbg !3228, !tbaa !2159
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #35, !dbg !3229
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3230
  ret i8* %15, !dbg !3231
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3204 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3203, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i8* %1, metadata !3208, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i8* %2, metadata !3209, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i8* %3, metadata !3210, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64 %4, metadata !3211, metadata !DIExpression()), !dbg !3232
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3233
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #35, !dbg !3233
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3212, metadata !DIExpression()), !dbg !3234
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3235, !tbaa.struct !3090
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2141, metadata !DIExpression()) #35, !dbg !3236
  call void @llvm.dbg.value(metadata i8* %1, metadata !2142, metadata !DIExpression()) #35, !dbg !3236
  call void @llvm.dbg.value(metadata i8* %2, metadata !2143, metadata !DIExpression()) #35, !dbg !3236
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2141, metadata !DIExpression()) #35, !dbg !3236
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3238
  store i32 10, i32* %8, align 8, !dbg !3239, !tbaa !2083
  %9 = icmp ne i8* %1, null, !dbg !3240
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3241
  br i1 %11, label %13, label %12, !dbg !3241

12:                                               ; preds = %5
  tail call void @abort() #37, !dbg !3242
  unreachable, !dbg !3242

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3243
  store i8* %1, i8** %14, align 8, !dbg !3244, !tbaa !2156
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3245
  store i8* %2, i8** %15, align 8, !dbg !3246, !tbaa !2159
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3247
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #35, !dbg !3248
  ret i8* %16, !dbg !3249
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3250 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3254, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8* %1, metadata !3255, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8* %2, metadata !3256, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i32 0, metadata !3198, metadata !DIExpression()) #35, !dbg !3258
  call void @llvm.dbg.value(metadata i8* %0, metadata !3199, metadata !DIExpression()) #35, !dbg !3258
  call void @llvm.dbg.value(metadata i8* %1, metadata !3200, metadata !DIExpression()) #35, !dbg !3258
  call void @llvm.dbg.value(metadata i8* %2, metadata !3201, metadata !DIExpression()) #35, !dbg !3258
  call void @llvm.dbg.value(metadata i32 0, metadata !3203, metadata !DIExpression()) #35, !dbg !3260
  call void @llvm.dbg.value(metadata i8* %0, metadata !3208, metadata !DIExpression()) #35, !dbg !3260
  call void @llvm.dbg.value(metadata i8* %1, metadata !3209, metadata !DIExpression()) #35, !dbg !3260
  call void @llvm.dbg.value(metadata i8* %2, metadata !3210, metadata !DIExpression()) #35, !dbg !3260
  call void @llvm.dbg.value(metadata i64 -1, metadata !3211, metadata !DIExpression()) #35, !dbg !3260
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3262
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3262
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3212, metadata !DIExpression()) #35, !dbg !3263
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3264, !tbaa.struct !3090
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2141, metadata !DIExpression()) #35, !dbg !3265
  call void @llvm.dbg.value(metadata i8* %0, metadata !2142, metadata !DIExpression()) #35, !dbg !3265
  call void @llvm.dbg.value(metadata i8* %1, metadata !2143, metadata !DIExpression()) #35, !dbg !3265
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2141, metadata !DIExpression()) #35, !dbg !3265
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3267
  store i32 10, i32* %6, align 8, !dbg !3268, !tbaa !2083
  %7 = icmp ne i8* %0, null, !dbg !3269
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3270
  br i1 %9, label %11, label %10, !dbg !3270

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !3271
  unreachable, !dbg !3271

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3272
  store i8* %0, i8** %12, align 8, !dbg !3273, !tbaa !2156
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3274
  store i8* %1, i8** %13, align 8, !dbg !3275, !tbaa !2159
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #35, !dbg !3276
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3277
  ret i8* %14, !dbg !3278
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3279 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3283, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i8* %1, metadata !3284, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i8* %2, metadata !3285, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i64 %3, metadata !3286, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i32 0, metadata !3203, metadata !DIExpression()) #35, !dbg !3288
  call void @llvm.dbg.value(metadata i8* %0, metadata !3208, metadata !DIExpression()) #35, !dbg !3288
  call void @llvm.dbg.value(metadata i8* %1, metadata !3209, metadata !DIExpression()) #35, !dbg !3288
  call void @llvm.dbg.value(metadata i8* %2, metadata !3210, metadata !DIExpression()) #35, !dbg !3288
  call void @llvm.dbg.value(metadata i64 %3, metadata !3211, metadata !DIExpression()) #35, !dbg !3288
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3290
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3290
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3212, metadata !DIExpression()) #35, !dbg !3291
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3292, !tbaa.struct !3090
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2141, metadata !DIExpression()) #35, !dbg !3293
  call void @llvm.dbg.value(metadata i8* %0, metadata !2142, metadata !DIExpression()) #35, !dbg !3293
  call void @llvm.dbg.value(metadata i8* %1, metadata !2143, metadata !DIExpression()) #35, !dbg !3293
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2141, metadata !DIExpression()) #35, !dbg !3293
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3295
  store i32 10, i32* %7, align 8, !dbg !3296, !tbaa !2083
  %8 = icmp ne i8* %0, null, !dbg !3297
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3298
  br i1 %10, label %12, label %11, !dbg !3298

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3299
  unreachable, !dbg !3299

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3300
  store i8* %0, i8** %13, align 8, !dbg !3301, !tbaa !2156
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3302
  store i8* %1, i8** %14, align 8, !dbg !3303, !tbaa !2159
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #35, !dbg !3304
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3305
  ret i8* %15, !dbg !3306
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3307 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3311, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i8* %1, metadata !3312, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %2, metadata !3313, metadata !DIExpression()), !dbg !3314
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3315
  ret i8* %4, !dbg !3316
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3317 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3321, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 %1, metadata !3322, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()) #35, !dbg !3324
  call void @llvm.dbg.value(metadata i8* %0, metadata !3312, metadata !DIExpression()) #35, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %1, metadata !3313, metadata !DIExpression()) #35, !dbg !3324
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3326
  ret i8* %3, !dbg !3327
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3328 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3332, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i8* %1, metadata !3333, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i32 %0, metadata !3311, metadata !DIExpression()) #35, !dbg !3335
  call void @llvm.dbg.value(metadata i8* %1, metadata !3312, metadata !DIExpression()) #35, !dbg !3335
  call void @llvm.dbg.value(metadata i64 -1, metadata !3313, metadata !DIExpression()) #35, !dbg !3335
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3337
  ret i8* %3, !dbg !3338
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !3339 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3343, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i32 0, metadata !3332, metadata !DIExpression()) #35, !dbg !3345
  call void @llvm.dbg.value(metadata i8* %0, metadata !3333, metadata !DIExpression()) #35, !dbg !3345
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()) #35, !dbg !3347
  call void @llvm.dbg.value(metadata i8* %0, metadata !3312, metadata !DIExpression()) #35, !dbg !3347
  call void @llvm.dbg.value(metadata i64 -1, metadata !3313, metadata !DIExpression()) #35, !dbg !3347
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3349
  ret i8* %2, !dbg !3350
}

; Function Attrs: nounwind uwtable
define dso_local i32 @str2sig(i8* noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #12 !dbg !3351 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3355, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i32* %1, metadata !3356, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i8* %0, metadata !3358, metadata !DIExpression()) #35, !dbg !3379
  %6 = load i8, i8* %0, align 1, !dbg !3381, !tbaa !633
  %7 = zext i8 %6 to i32, !dbg !3381
  %8 = add nsw i32 %7, -48, !dbg !3381
  %9 = icmp ult i32 %8, 10, !dbg !3381
  br i1 %9, label %10, label %19, !dbg !3382

10:                                               ; preds = %2
  %11 = bitcast i8** %3 to i8*, !dbg !3383
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #35, !dbg !3383
  call void @llvm.dbg.value(metadata i8** %3, metadata !3361, metadata !DIExpression(DW_OP_deref)) #35, !dbg !3384
  %12 = call i64 @strtol(i8* noundef nonnull %0, i8** noundef nonnull %3, i32 noundef 10) #35, !dbg !3385
  call void @llvm.dbg.value(metadata i64 %12, metadata !3364, metadata !DIExpression()) #35, !dbg !3384
  %13 = load i8*, i8** %3, align 8, !dbg !3386, !tbaa !527
  call void @llvm.dbg.value(metadata i8* %13, metadata !3361, metadata !DIExpression()) #35, !dbg !3384
  %14 = load i8, i8* %13, align 1, !dbg !3388, !tbaa !633
  %15 = icmp ne i8 %14, 0, !dbg !3388
  %16 = icmp sgt i64 %12, 64
  %17 = select i1 %15, i1 true, i1 %16, !dbg !3389
  %18 = trunc i64 %12 to i32, !dbg !3389
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #35, !dbg !3390
  br i1 %17, label %77, label %78

19:                                               ; preds = %2, %24
  %20 = phi i64 [ %25, %24 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !3365, metadata !DIExpression()) #35, !dbg !3391
  %21 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %20, i32 1, i64 0, !dbg !3392
  call void @llvm.dbg.value(metadata i8* %21, metadata !3395, metadata !DIExpression()) #35, !dbg !3399
  call void @llvm.dbg.value(metadata i8* %0, metadata !3398, metadata !DIExpression()) #35, !dbg !3399
  %22 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %21, i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !3401
  %23 = icmp eq i32 %22, 0, !dbg !3402
  br i1 %23, label %27, label %24, !dbg !3403

24:                                               ; preds = %19
  %25 = add nuw nsw i64 %20, 1, !dbg !3404
  call void @llvm.dbg.value(metadata i64 %25, metadata !3365, metadata !DIExpression()) #35, !dbg !3391
  %26 = icmp eq i64 %25, 35, !dbg !3405
  br i1 %26, label %31, label %19, !dbg !3406, !llvm.loop !3407

27:                                               ; preds = %19
  %28 = and i64 %20, 4294967295, !dbg !3409
  %29 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %28, i32 0, !dbg !3410
  %30 = load i32, i32* %29, align 4, !dbg !3410, !tbaa !3411
  br label %78

31:                                               ; preds = %24
  %32 = tail call i32 @__libc_current_sigrtmin() #35, !dbg !3413
  call void @llvm.dbg.value(metadata i32 %32, metadata !3368, metadata !DIExpression()) #35, !dbg !3414
  %33 = tail call i32 @__libc_current_sigrtmax() #35, !dbg !3415
  call void @llvm.dbg.value(metadata i32 %33, metadata !3370, metadata !DIExpression()) #35, !dbg !3414
  %34 = icmp sgt i32 %32, 0, !dbg !3416
  br i1 %34, label %35, label %55, !dbg !3417

35:                                               ; preds = %31
  %36 = tail call i32 @strncmp(i8* noundef nonnull %0, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.124, i64 0, i64 0), i64 noundef 5) #36, !dbg !3418
  %37 = icmp eq i32 %36, 0, !dbg !3419
  br i1 %37, label %38, label %55, !dbg !3420

38:                                               ; preds = %35
  %39 = bitcast i8** %4 to i8*, !dbg !3421
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %39) #35, !dbg !3421
  %40 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !3422
  call void @llvm.dbg.value(metadata i8** %4, metadata !3371, metadata !DIExpression(DW_OP_deref)) #35, !dbg !3423
  %41 = call i64 @strtol(i8* noundef nonnull %40, i8** noundef nonnull %4, i32 noundef 10) #35, !dbg !3424
  call void @llvm.dbg.value(metadata i64 %41, metadata !3374, metadata !DIExpression()) #35, !dbg !3423
  %42 = load i8*, i8** %4, align 8, !dbg !3425, !tbaa !527
  call void @llvm.dbg.value(metadata i8* %42, metadata !3371, metadata !DIExpression()) #35, !dbg !3423
  %43 = load i8, i8* %42, align 1, !dbg !3427, !tbaa !633
  %44 = icmp eq i8 %43, 0, !dbg !3427
  %45 = icmp sgt i64 %41, -1
  %46 = select i1 %44, i1 %45, i1 false, !dbg !3428
  br i1 %46, label %47, label %51, !dbg !3428

47:                                               ; preds = %38
  %48 = sub nsw i32 %33, %32, !dbg !3429
  %49 = sext i32 %48 to i64, !dbg !3430
  %50 = icmp sgt i64 %41, %49, !dbg !3431
  br i1 %50, label %51, label %52, !dbg !3432

51:                                               ; preds = %47, %38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39) #35, !dbg !3433
  br label %77

52:                                               ; preds = %47
  %53 = trunc i64 %41 to i32, !dbg !3434
  %54 = add i32 %32, %53, !dbg !3434
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39) #35, !dbg !3433
  br label %78

55:                                               ; preds = %35, %31
  %56 = icmp sgt i32 %33, 0, !dbg !3435
  br i1 %56, label %57, label %77, !dbg !3436

57:                                               ; preds = %55
  %58 = tail call i32 @strncmp(i8* noundef nonnull %0, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.125, i64 0, i64 0), i64 noundef 5) #36, !dbg !3437
  %59 = icmp eq i32 %58, 0, !dbg !3438
  br i1 %59, label %60, label %77, !dbg !3439

60:                                               ; preds = %57
  %61 = bitcast i8** %5 to i8*, !dbg !3440
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %61) #35, !dbg !3440
  %62 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !3441
  call void @llvm.dbg.value(metadata i8** %5, metadata !3375, metadata !DIExpression(DW_OP_deref)) #35, !dbg !3442
  %63 = call i64 @strtol(i8* noundef nonnull %62, i8** noundef nonnull %5, i32 noundef 10) #35, !dbg !3443
  call void @llvm.dbg.value(metadata i64 %63, metadata !3378, metadata !DIExpression()) #35, !dbg !3442
  %64 = load i8*, i8** %5, align 8, !dbg !3444, !tbaa !527
  call void @llvm.dbg.value(metadata i8* %64, metadata !3375, metadata !DIExpression()) #35, !dbg !3442
  %65 = load i8, i8* %64, align 1, !dbg !3446, !tbaa !633
  %66 = icmp eq i8 %65, 0, !dbg !3446
  br i1 %66, label %67, label %73, !dbg !3447

67:                                               ; preds = %60
  %68 = sub nsw i32 %32, %33, !dbg !3448
  %69 = sext i32 %68 to i64, !dbg !3449
  %70 = icmp sge i64 %63, %69, !dbg !3450
  %71 = icmp slt i64 %63, 1
  %72 = and i1 %70, %71, !dbg !3451
  br i1 %72, label %74, label %73, !dbg !3451

73:                                               ; preds = %67, %60
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %61) #35, !dbg !3452
  br label %77

74:                                               ; preds = %67
  %75 = trunc i64 %63 to i32, !dbg !3453
  %76 = add i32 %33, %75, !dbg !3453
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %61) #35, !dbg !3452
  br label %78

77:                                               ; preds = %73, %57, %55, %51, %10
  br label %78, !dbg !3454

78:                                               ; preds = %10, %27, %52, %74, %77
  %79 = phi i32 [ %18, %10 ], [ -1, %77 ], [ %30, %27 ], [ %54, %52 ], [ %76, %74 ], !dbg !3379
  store i32 %79, i32* %1, align 4, !dbg !3455, !tbaa !624
  %80 = ashr i32 %79, 31, !dbg !3456
  ret i32 %80, !dbg !3457
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sig2str(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3458 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3462, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i8* %1, metadata !3463, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i32 0, metadata !3464, metadata !DIExpression()), !dbg !3472
  br label %3, !dbg !3473

3:                                                ; preds = %2, %8
  %4 = phi i64 [ 0, %2 ], [ %9, %8 ]
  call void @llvm.dbg.value(metadata i64 %4, metadata !3464, metadata !DIExpression()), !dbg !3472
  %5 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %4, i32 0, !dbg !3474
  %6 = load i32, i32* %5, align 4, !dbg !3474, !tbaa !3411
  %7 = icmp eq i32 %6, %0, !dbg !3477
  br i1 %7, label %11, label %8, !dbg !3478

8:                                                ; preds = %3
  %9 = add nuw nsw i64 %4, 1, !dbg !3479
  call void @llvm.dbg.value(metadata i64 %9, metadata !3464, metadata !DIExpression()), !dbg !3472
  %10 = icmp eq i64 %9, 35, !dbg !3480
  br i1 %10, label %15, label %3, !dbg !3473, !llvm.loop !3481

11:                                               ; preds = %3
  %12 = and i64 %4, 4294967295, !dbg !3483
  %13 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %12, i32 1, i64 0, !dbg !3484
  call void @llvm.dbg.value(metadata i8* %1, metadata !3486, metadata !DIExpression()) #35, !dbg !3493
  call void @llvm.dbg.value(metadata i8* %13, metadata !3492, metadata !DIExpression()) #35, !dbg !3493
  %14 = tail call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(1) %13), !dbg !3495
  br label %33

15:                                               ; preds = %8
  %16 = tail call i32 @__libc_current_sigrtmin() #35, !dbg !3496
  call void @llvm.dbg.value(metadata i32 %16, metadata !3466, metadata !DIExpression()), !dbg !3497
  %17 = tail call i32 @__libc_current_sigrtmax() #35, !dbg !3498
  call void @llvm.dbg.value(metadata i32 %17, metadata !3468, metadata !DIExpression()), !dbg !3497
  %18 = icmp sgt i32 %16, %0, !dbg !3499
  %19 = icmp slt i32 %17, %0
  %20 = select i1 %18, i1 true, i1 %19, !dbg !3501
  br i1 %20, label %33, label %21, !dbg !3501

21:                                               ; preds = %15
  %22 = sub nsw i32 %17, %16, !dbg !3502
  %23 = sdiv i32 %22, 2, !dbg !3504
  %24 = add nsw i32 %23, %16, !dbg !3505
  %25 = icmp slt i32 %24, %0, !dbg !3506
  call void @llvm.dbg.value(metadata i8* %1, metadata !3486, metadata !DIExpression()) #35, !dbg !3507
  call void @llvm.dbg.value(metadata i8* %1, metadata !3486, metadata !DIExpression()) #35, !dbg !3510
  %26 = select i1 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.125, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.124, i64 0, i64 0)
  %27 = select i1 %25, i32 %17, i32 %16
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %1, i8* noundef nonnull align 1 dereferenceable(6) %26, i64 6, i1 false), !dbg !3513
  call void @llvm.dbg.value(metadata i32 %27, metadata !3469, metadata !DIExpression()), !dbg !3497
  %28 = sub nsw i32 %0, %27, !dbg !3514
  call void @llvm.dbg.value(metadata i32 %28, metadata !3470, metadata !DIExpression()), !dbg !3497
  %29 = icmp eq i32 %28, 0, !dbg !3515
  br i1 %29, label %33, label %30, !dbg !3517

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !3518
  %32 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %31, i32 noundef 1, i64 noundef -1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.128, i64 0, i64 0), i32 noundef %28) #35, !dbg !3518
  br label %33, !dbg !3518

33:                                               ; preds = %11, %15, %30, %21
  %34 = phi i32 [ 0, %11 ], [ -1, %15 ], [ 0, %30 ], [ 0, %21 ], !dbg !3471
  ret i32 %34, !dbg !3519
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) #7

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8* noundef, i32 noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3520 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3559, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i8* %1, metadata !3560, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i8* %2, metadata !3561, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i8* %3, metadata !3562, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i8** %4, metadata !3563, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i64 %5, metadata !3564, metadata !DIExpression()), !dbg !3565
  %7 = icmp eq i8* %1, null, !dbg !3566
  br i1 %7, label %10, label %8, !dbg !3568

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.129, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #35, !dbg !3569
  br label %12, !dbg !3569

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.130, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #35, !dbg !3570
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.132, i64 0, i64 0), i32 noundef 5) #35, !dbg !3571
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #35, !dbg !3571
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.133, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3572
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.134, i64 0, i64 0), i32 noundef 5) #35, !dbg !3573
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.135, i64 0, i64 0)) #35, !dbg !3573
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.133, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3574
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
  ], !dbg !3575

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.136, i64 0, i64 0), i32 noundef 5) #35, !dbg !3576
  %21 = load i8*, i8** %4, align 8, !dbg !3576, !tbaa !527
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #35, !dbg !3576
  br label %147, !dbg !3578

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.137, i64 0, i64 0), i32 noundef 5) #35, !dbg !3579
  %25 = load i8*, i8** %4, align 8, !dbg !3579, !tbaa !527
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3579
  %27 = load i8*, i8** %26, align 8, !dbg !3579, !tbaa !527
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #35, !dbg !3579
  br label %147, !dbg !3580

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.138, i64 0, i64 0), i32 noundef 5) #35, !dbg !3581
  %31 = load i8*, i8** %4, align 8, !dbg !3581, !tbaa !527
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3581
  %33 = load i8*, i8** %32, align 8, !dbg !3581, !tbaa !527
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3581
  %35 = load i8*, i8** %34, align 8, !dbg !3581, !tbaa !527
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #35, !dbg !3581
  br label %147, !dbg !3582

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.139, i64 0, i64 0), i32 noundef 5) #35, !dbg !3583
  %39 = load i8*, i8** %4, align 8, !dbg !3583, !tbaa !527
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3583
  %41 = load i8*, i8** %40, align 8, !dbg !3583, !tbaa !527
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3583
  %43 = load i8*, i8** %42, align 8, !dbg !3583, !tbaa !527
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3583
  %45 = load i8*, i8** %44, align 8, !dbg !3583, !tbaa !527
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #35, !dbg !3583
  br label %147, !dbg !3584

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.140, i64 0, i64 0), i32 noundef 5) #35, !dbg !3585
  %49 = load i8*, i8** %4, align 8, !dbg !3585, !tbaa !527
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3585
  %51 = load i8*, i8** %50, align 8, !dbg !3585, !tbaa !527
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3585
  %53 = load i8*, i8** %52, align 8, !dbg !3585, !tbaa !527
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3585
  %55 = load i8*, i8** %54, align 8, !dbg !3585, !tbaa !527
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3585
  %57 = load i8*, i8** %56, align 8, !dbg !3585, !tbaa !527
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #35, !dbg !3585
  br label %147, !dbg !3586

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.141, i64 0, i64 0), i32 noundef 5) #35, !dbg !3587
  %61 = load i8*, i8** %4, align 8, !dbg !3587, !tbaa !527
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3587
  %63 = load i8*, i8** %62, align 8, !dbg !3587, !tbaa !527
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3587
  %65 = load i8*, i8** %64, align 8, !dbg !3587, !tbaa !527
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3587
  %67 = load i8*, i8** %66, align 8, !dbg !3587, !tbaa !527
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3587
  %69 = load i8*, i8** %68, align 8, !dbg !3587, !tbaa !527
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3587
  %71 = load i8*, i8** %70, align 8, !dbg !3587, !tbaa !527
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #35, !dbg !3587
  br label %147, !dbg !3588

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.142, i64 0, i64 0), i32 noundef 5) #35, !dbg !3589
  %75 = load i8*, i8** %4, align 8, !dbg !3589, !tbaa !527
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3589
  %77 = load i8*, i8** %76, align 8, !dbg !3589, !tbaa !527
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3589
  %79 = load i8*, i8** %78, align 8, !dbg !3589, !tbaa !527
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3589
  %81 = load i8*, i8** %80, align 8, !dbg !3589, !tbaa !527
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3589
  %83 = load i8*, i8** %82, align 8, !dbg !3589, !tbaa !527
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3589
  %85 = load i8*, i8** %84, align 8, !dbg !3589, !tbaa !527
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3589
  %87 = load i8*, i8** %86, align 8, !dbg !3589, !tbaa !527
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #35, !dbg !3589
  br label %147, !dbg !3590

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.143, i64 0, i64 0), i32 noundef 5) #35, !dbg !3591
  %91 = load i8*, i8** %4, align 8, !dbg !3591, !tbaa !527
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3591
  %93 = load i8*, i8** %92, align 8, !dbg !3591, !tbaa !527
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3591
  %95 = load i8*, i8** %94, align 8, !dbg !3591, !tbaa !527
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3591
  %97 = load i8*, i8** %96, align 8, !dbg !3591, !tbaa !527
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3591
  %99 = load i8*, i8** %98, align 8, !dbg !3591, !tbaa !527
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3591
  %101 = load i8*, i8** %100, align 8, !dbg !3591, !tbaa !527
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3591
  %103 = load i8*, i8** %102, align 8, !dbg !3591, !tbaa !527
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3591
  %105 = load i8*, i8** %104, align 8, !dbg !3591, !tbaa !527
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #35, !dbg !3591
  br label %147, !dbg !3592

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.144, i64 0, i64 0), i32 noundef 5) #35, !dbg !3593
  %109 = load i8*, i8** %4, align 8, !dbg !3593, !tbaa !527
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3593
  %111 = load i8*, i8** %110, align 8, !dbg !3593, !tbaa !527
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3593
  %113 = load i8*, i8** %112, align 8, !dbg !3593, !tbaa !527
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3593
  %115 = load i8*, i8** %114, align 8, !dbg !3593, !tbaa !527
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3593
  %117 = load i8*, i8** %116, align 8, !dbg !3593, !tbaa !527
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3593
  %119 = load i8*, i8** %118, align 8, !dbg !3593, !tbaa !527
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3593
  %121 = load i8*, i8** %120, align 8, !dbg !3593, !tbaa !527
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3593
  %123 = load i8*, i8** %122, align 8, !dbg !3593, !tbaa !527
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3593
  %125 = load i8*, i8** %124, align 8, !dbg !3593, !tbaa !527
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #35, !dbg !3593
  br label %147, !dbg !3594

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.145, i64 0, i64 0), i32 noundef 5) #35, !dbg !3595
  %129 = load i8*, i8** %4, align 8, !dbg !3595, !tbaa !527
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3595
  %131 = load i8*, i8** %130, align 8, !dbg !3595, !tbaa !527
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3595
  %133 = load i8*, i8** %132, align 8, !dbg !3595, !tbaa !527
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3595
  %135 = load i8*, i8** %134, align 8, !dbg !3595, !tbaa !527
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3595
  %137 = load i8*, i8** %136, align 8, !dbg !3595, !tbaa !527
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3595
  %139 = load i8*, i8** %138, align 8, !dbg !3595, !tbaa !527
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3595
  %141 = load i8*, i8** %140, align 8, !dbg !3595, !tbaa !527
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3595
  %143 = load i8*, i8** %142, align 8, !dbg !3595, !tbaa !527
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3595
  %145 = load i8*, i8** %144, align 8, !dbg !3595, !tbaa !527
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #35, !dbg !3595
  br label %147, !dbg !3596

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3597
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3598 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3602, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i8* %1, metadata !3603, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i8* %2, metadata !3604, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i8* %3, metadata !3605, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i8** %4, metadata !3606, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i64 0, metadata !3607, metadata !DIExpression()), !dbg !3608
  br label %6, !dbg !3609

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3611
  call void @llvm.dbg.value(metadata i64 %7, metadata !3607, metadata !DIExpression()), !dbg !3608
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3612
  %9 = load i8*, i8** %8, align 8, !dbg !3612, !tbaa !527
  %10 = icmp eq i8* %9, null, !dbg !3614
  %11 = add i64 %7, 1, !dbg !3615
  call void @llvm.dbg.value(metadata i64 %11, metadata !3607, metadata !DIExpression()), !dbg !3608
  br i1 %10, label %12, label %6, !dbg !3614, !llvm.loop !3616

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3618
  ret void, !dbg !3619
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3620 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3635, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i8* %1, metadata !3636, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i8* %2, metadata !3637, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i8* %3, metadata !3638, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3639, metadata !DIExpression()), !dbg !3644
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3645
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3645
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3641, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 0, metadata !3640, metadata !DIExpression()), !dbg !3643
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3640, metadata !DIExpression()), !dbg !3643
  %11 = load i32, i32* %8, align 8, !dbg !3647
  %12 = icmp sgt i32 %11, -1, !dbg !3647
  br i1 %12, label %20, label %13, !dbg !3647

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3647
  store i32 %14, i32* %8, align 8, !dbg !3647
  %15 = icmp ult i32 %11, -7, !dbg !3647
  br i1 %15, label %16, label %20, !dbg !3647

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3647
  %18 = sext i32 %11 to i64, !dbg !3647
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3647
  br label %24, !dbg !3647

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3647
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3647
  store i8* %23, i8** %10, align 8, !dbg !3647
  br label %24, !dbg !3647

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3647
  %28 = load i8*, i8** %27, align 8, !dbg !3647
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3650
  store i8* %28, i8** %29, align 8, !dbg !3651, !tbaa !527
  %30 = icmp eq i8* %28, null, !dbg !3652
  br i1 %30, label %210, label %31, !dbg !3653

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3640, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i64 1, metadata !3640, metadata !DIExpression()), !dbg !3643
  %32 = icmp sgt i32 %25, -1, !dbg !3647
  br i1 %32, label %40, label %33, !dbg !3647

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3647
  store i32 %34, i32* %8, align 8, !dbg !3647
  %35 = icmp ult i32 %25, -7, !dbg !3647
  br i1 %35, label %36, label %40, !dbg !3647

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3647
  %38 = sext i32 %25 to i64, !dbg !3647
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3647
  br label %44, !dbg !3647

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3647
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3647
  store i8* %43, i8** %10, align 8, !dbg !3647
  br label %44, !dbg !3647

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3647
  %48 = load i8*, i8** %47, align 8, !dbg !3647
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3650
  store i8* %48, i8** %49, align 8, !dbg !3651, !tbaa !527
  %50 = icmp eq i8* %48, null, !dbg !3652
  br i1 %50, label %210, label %51, !dbg !3653

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3640, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i64 2, metadata !3640, metadata !DIExpression()), !dbg !3643
  %52 = icmp sgt i32 %45, -1, !dbg !3647
  br i1 %52, label %60, label %53, !dbg !3647

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3647
  store i32 %54, i32* %8, align 8, !dbg !3647
  %55 = icmp ult i32 %45, -7, !dbg !3647
  br i1 %55, label %56, label %60, !dbg !3647

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3647
  %58 = sext i32 %45 to i64, !dbg !3647
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3647
  br label %64, !dbg !3647

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3647
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3647
  store i8* %63, i8** %10, align 8, !dbg !3647
  br label %64, !dbg !3647

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3647
  %68 = load i8*, i8** %67, align 8, !dbg !3647
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3650
  store i8* %68, i8** %69, align 8, !dbg !3651, !tbaa !527
  %70 = icmp eq i8* %68, null, !dbg !3652
  br i1 %70, label %210, label %71, !dbg !3653

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3640, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i64 3, metadata !3640, metadata !DIExpression()), !dbg !3643
  %72 = icmp sgt i32 %65, -1, !dbg !3647
  br i1 %72, label %80, label %73, !dbg !3647

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3647
  store i32 %74, i32* %8, align 8, !dbg !3647
  %75 = icmp ult i32 %65, -7, !dbg !3647
  br i1 %75, label %76, label %80, !dbg !3647

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3647
  %78 = sext i32 %65 to i64, !dbg !3647
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3647
  br label %84, !dbg !3647

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3647
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3647
  store i8* %83, i8** %10, align 8, !dbg !3647
  br label %84, !dbg !3647

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3647
  %88 = load i8*, i8** %87, align 8, !dbg !3647
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3650
  store i8* %88, i8** %89, align 8, !dbg !3651, !tbaa !527
  %90 = icmp eq i8* %88, null, !dbg !3652
  br i1 %90, label %210, label %91, !dbg !3653

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3640, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i64 4, metadata !3640, metadata !DIExpression()), !dbg !3643
  %92 = icmp sgt i32 %85, -1, !dbg !3647
  br i1 %92, label %100, label %93, !dbg !3647

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3647
  store i32 %94, i32* %8, align 8, !dbg !3647
  %95 = icmp ult i32 %85, -7, !dbg !3647
  br i1 %95, label %96, label %100, !dbg !3647

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3647
  %98 = sext i32 %85 to i64, !dbg !3647
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3647
  br label %104, !dbg !3647

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3647
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3647
  store i8* %103, i8** %10, align 8, !dbg !3647
  br label %104, !dbg !3647

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3647
  %108 = load i8*, i8** %107, align 8, !dbg !3647
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3650
  store i8* %108, i8** %109, align 8, !dbg !3651, !tbaa !527
  %110 = icmp eq i8* %108, null, !dbg !3652
  br i1 %110, label %210, label %111, !dbg !3653

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3640, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i64 5, metadata !3640, metadata !DIExpression()), !dbg !3643
  %112 = icmp sgt i32 %105, -1, !dbg !3647
  br i1 %112, label %120, label %113, !dbg !3647

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3647
  store i32 %114, i32* %8, align 8, !dbg !3647
  %115 = icmp ult i32 %105, -7, !dbg !3647
  br i1 %115, label %116, label %120, !dbg !3647

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3647
  %118 = sext i32 %105 to i64, !dbg !3647
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3647
  br label %124, !dbg !3647

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3647
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3647
  store i8* %123, i8** %10, align 8, !dbg !3647
  br label %124, !dbg !3647

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3647
  %128 = load i8*, i8** %127, align 8, !dbg !3647
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3650
  store i8* %128, i8** %129, align 8, !dbg !3651, !tbaa !527
  %130 = icmp eq i8* %128, null, !dbg !3652
  br i1 %130, label %210, label %131, !dbg !3653

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3640, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i64 6, metadata !3640, metadata !DIExpression()), !dbg !3643
  %132 = icmp sgt i32 %125, -1, !dbg !3647
  br i1 %132, label %140, label %133, !dbg !3647

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3647
  store i32 %134, i32* %8, align 8, !dbg !3647
  %135 = icmp ult i32 %125, -7, !dbg !3647
  br i1 %135, label %136, label %140, !dbg !3647

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3647
  %138 = sext i32 %125 to i64, !dbg !3647
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3647
  br label %144, !dbg !3647

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3647
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3647
  store i8* %143, i8** %10, align 8, !dbg !3647
  br label %144, !dbg !3647

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3647
  %148 = load i8*, i8** %147, align 8, !dbg !3647
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3650
  store i8* %148, i8** %149, align 8, !dbg !3651, !tbaa !527
  %150 = icmp eq i8* %148, null, !dbg !3652
  br i1 %150, label %210, label %151, !dbg !3653

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3640, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i64 7, metadata !3640, metadata !DIExpression()), !dbg !3643
  %152 = icmp sgt i32 %145, -1, !dbg !3647
  br i1 %152, label %160, label %153, !dbg !3647

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3647
  store i32 %154, i32* %8, align 8, !dbg !3647
  %155 = icmp ult i32 %145, -7, !dbg !3647
  br i1 %155, label %156, label %160, !dbg !3647

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3647
  %158 = sext i32 %145 to i64, !dbg !3647
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3647
  br label %164, !dbg !3647

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3647
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3647
  store i8* %163, i8** %10, align 8, !dbg !3647
  br label %164, !dbg !3647

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3647
  %168 = load i8*, i8** %167, align 8, !dbg !3647
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3650
  store i8* %168, i8** %169, align 8, !dbg !3651, !tbaa !527
  %170 = icmp eq i8* %168, null, !dbg !3652
  br i1 %170, label %210, label %171, !dbg !3653

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3640, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i64 8, metadata !3640, metadata !DIExpression()), !dbg !3643
  %172 = icmp sgt i32 %165, -1, !dbg !3647
  br i1 %172, label %180, label %173, !dbg !3647

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3647
  store i32 %174, i32* %8, align 8, !dbg !3647
  %175 = icmp ult i32 %165, -7, !dbg !3647
  br i1 %175, label %176, label %180, !dbg !3647

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3647
  %178 = sext i32 %165 to i64, !dbg !3647
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3647
  br label %184, !dbg !3647

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3647
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3647
  store i8* %183, i8** %10, align 8, !dbg !3647
  br label %184, !dbg !3647

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3647
  %188 = load i8*, i8** %187, align 8, !dbg !3647
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3650
  store i8* %188, i8** %189, align 8, !dbg !3651, !tbaa !527
  %190 = icmp eq i8* %188, null, !dbg !3652
  br i1 %190, label %210, label %191, !dbg !3653

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3640, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i64 9, metadata !3640, metadata !DIExpression()), !dbg !3643
  %192 = icmp sgt i32 %185, -1, !dbg !3647
  br i1 %192, label %200, label %193, !dbg !3647

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3647
  store i32 %194, i32* %8, align 8, !dbg !3647
  %195 = icmp ult i32 %185, -7, !dbg !3647
  br i1 %195, label %196, label %200, !dbg !3647

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3647
  %198 = sext i32 %185 to i64, !dbg !3647
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3647
  br label %203, !dbg !3647

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3647
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3647
  store i8* %202, i8** %10, align 8, !dbg !3647
  br label %203, !dbg !3647

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3647
  %206 = load i8*, i8** %205, align 8, !dbg !3647
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3650
  store i8* %206, i8** %207, align 8, !dbg !3651, !tbaa !527
  %208 = icmp eq i8* %206, null, !dbg !3652
  %209 = select i1 %208, i64 9, i64 10, !dbg !3653
  br label %210, !dbg !3653

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3654
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3655
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3656
  ret void, !dbg !3656
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3657 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3661, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i8* %1, metadata !3662, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i8* %2, metadata !3663, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i8* %3, metadata !3664, metadata !DIExpression()), !dbg !3666
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3667
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !3667
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3665, metadata !DIExpression()), !dbg !3668
  call void @llvm.va_start(i8* nonnull %7), !dbg !3669
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3670
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !3670
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3670, !tbaa.struct !1784
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3670
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !3670
  call void @llvm.va_end(i8* nonnull %7), !dbg !3671
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !3672
  ret void, !dbg !3672
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3673 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3674, !tbaa !527
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.133, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3674
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.150, i64 0, i64 0), i32 noundef 5) #35, !dbg !3675
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.151, i64 0, i64 0)) #35, !dbg !3675
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.152, i64 0, i64 0), i32 noundef 5) #35, !dbg !3676
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.153, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.154, i64 0, i64 0)) #35, !dbg !3676
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.155, i64 0, i64 0), i32 noundef 5) #35, !dbg !3677
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.156, i64 0, i64 0)) #35, !dbg !3677
  ret void, !dbg !3678
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3679 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3684, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 %1, metadata !3685, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 %2, metadata !3686, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i8* %0, metadata !3688, metadata !DIExpression()) #35, !dbg !3693
  call void @llvm.dbg.value(metadata i64 %1, metadata !3691, metadata !DIExpression()) #35, !dbg !3693
  call void @llvm.dbg.value(metadata i64 %2, metadata !3692, metadata !DIExpression()) #35, !dbg !3693
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3695
  call void @llvm.dbg.value(metadata i8* %4, metadata !3696, metadata !DIExpression()) #35, !dbg !3701
  %5 = icmp eq i8* %4, null, !dbg !3703
  br i1 %5, label %6, label %7, !dbg !3705

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3706
  unreachable, !dbg !3706

7:                                                ; preds = %3
  ret i8* %4, !dbg !3707
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3689 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3688, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i64 %1, metadata !3691, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i64 %2, metadata !3692, metadata !DIExpression()), !dbg !3708
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3709
  call void @llvm.dbg.value(metadata i8* %4, metadata !3696, metadata !DIExpression()) #35, !dbg !3710
  %5 = icmp eq i8* %4, null, !dbg !3712
  br i1 %5, label %6, label %7, !dbg !3713

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3714
  unreachable, !dbg !3714

7:                                                ; preds = %3
  ret i8* %4, !dbg !3715
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3716 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3720, metadata !DIExpression()), !dbg !3721
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3722
  call void @llvm.dbg.value(metadata i8* %2, metadata !3696, metadata !DIExpression()) #35, !dbg !3723
  %3 = icmp eq i8* %2, null, !dbg !3725
  br i1 %3, label %4, label %5, !dbg !3726

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3727
  unreachable, !dbg !3727

5:                                                ; preds = %1
  ret i8* %2, !dbg !3728
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3729 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3733, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i64 %0, metadata !3735, metadata !DIExpression()) #35, !dbg !3739
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3741
  call void @llvm.dbg.value(metadata i8* %2, metadata !3696, metadata !DIExpression()) #35, !dbg !3742
  %3 = icmp eq i8* %2, null, !dbg !3744
  br i1 %3, label %4, label %5, !dbg !3745

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3746
  unreachable, !dbg !3746

5:                                                ; preds = %1
  ret i8* %2, !dbg !3747
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3748 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3752, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i64 %0, metadata !3720, metadata !DIExpression()) #35, !dbg !3754
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3756
  call void @llvm.dbg.value(metadata i8* %2, metadata !3696, metadata !DIExpression()) #35, !dbg !3757
  %3 = icmp eq i8* %2, null, !dbg !3759
  br i1 %3, label %4, label %5, !dbg !3760

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3761
  unreachable, !dbg !3761

5:                                                ; preds = %1
  ret i8* %2, !dbg !3762
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3763 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3767, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i64 %1, metadata !3768, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i8* %0, metadata !3770, metadata !DIExpression()) #35, !dbg !3775
  call void @llvm.dbg.value(metadata i64 %1, metadata !3774, metadata !DIExpression()) #35, !dbg !3775
  %3 = icmp eq i64 %1, 0, !dbg !3777
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3777
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !3778
  call void @llvm.dbg.value(metadata i8* %5, metadata !3696, metadata !DIExpression()) #35, !dbg !3779
  %6 = icmp eq i8* %5, null, !dbg !3781
  br i1 %6, label %7, label %8, !dbg !3782

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3783
  unreachable, !dbg !3783

8:                                                ; preds = %2
  ret i8* %5, !dbg !3784
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3785 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3789, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata i64 %1, metadata !3790, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata i8* %0, metadata !3792, metadata !DIExpression()) #35, !dbg !3796
  call void @llvm.dbg.value(metadata i64 %1, metadata !3795, metadata !DIExpression()) #35, !dbg !3796
  call void @llvm.dbg.value(metadata i8* %0, metadata !3770, metadata !DIExpression()) #35, !dbg !3798
  call void @llvm.dbg.value(metadata i64 %1, metadata !3774, metadata !DIExpression()) #35, !dbg !3798
  %3 = icmp eq i64 %1, 0, !dbg !3800
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3800
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !3801
  call void @llvm.dbg.value(metadata i8* %5, metadata !3696, metadata !DIExpression()) #35, !dbg !3802
  %6 = icmp eq i8* %5, null, !dbg !3804
  br i1 %6, label %7, label %8, !dbg !3805

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3806
  unreachable, !dbg !3806

8:                                                ; preds = %2
  ret i8* %5, !dbg !3807
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3808 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3812, metadata !DIExpression()), !dbg !3815
  call void @llvm.dbg.value(metadata i64 %1, metadata !3813, metadata !DIExpression()), !dbg !3815
  call void @llvm.dbg.value(metadata i64 %2, metadata !3814, metadata !DIExpression()), !dbg !3815
  call void @llvm.dbg.value(metadata i8* %0, metadata !3816, metadata !DIExpression()) #35, !dbg !3821
  call void @llvm.dbg.value(metadata i64 %1, metadata !3819, metadata !DIExpression()) #35, !dbg !3821
  call void @llvm.dbg.value(metadata i64 %2, metadata !3820, metadata !DIExpression()) #35, !dbg !3821
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3823
  call void @llvm.dbg.value(metadata i8* %4, metadata !3696, metadata !DIExpression()) #35, !dbg !3824
  %5 = icmp eq i8* %4, null, !dbg !3826
  br i1 %5, label %6, label %7, !dbg !3827

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3828
  unreachable, !dbg !3828

7:                                                ; preds = %3
  ret i8* %4, !dbg !3829
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3830 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3834, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i64 %1, metadata !3835, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i8* null, metadata !3688, metadata !DIExpression()) #35, !dbg !3837
  call void @llvm.dbg.value(metadata i64 %0, metadata !3691, metadata !DIExpression()) #35, !dbg !3837
  call void @llvm.dbg.value(metadata i64 %1, metadata !3692, metadata !DIExpression()) #35, !dbg !3837
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !3839
  call void @llvm.dbg.value(metadata i8* %3, metadata !3696, metadata !DIExpression()) #35, !dbg !3840
  %4 = icmp eq i8* %3, null, !dbg !3842
  br i1 %4, label %5, label %6, !dbg !3843

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3844
  unreachable, !dbg !3844

6:                                                ; preds = %2
  ret i8* %3, !dbg !3845
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3846 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3850, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i64 %1, metadata !3851, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i8* null, metadata !3812, metadata !DIExpression()) #35, !dbg !3853
  call void @llvm.dbg.value(metadata i64 %0, metadata !3813, metadata !DIExpression()) #35, !dbg !3853
  call void @llvm.dbg.value(metadata i64 %1, metadata !3814, metadata !DIExpression()) #35, !dbg !3853
  call void @llvm.dbg.value(metadata i8* null, metadata !3816, metadata !DIExpression()) #35, !dbg !3855
  call void @llvm.dbg.value(metadata i64 %0, metadata !3819, metadata !DIExpression()) #35, !dbg !3855
  call void @llvm.dbg.value(metadata i64 %1, metadata !3820, metadata !DIExpression()) #35, !dbg !3855
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !3857
  call void @llvm.dbg.value(metadata i8* %3, metadata !3696, metadata !DIExpression()) #35, !dbg !3858
  %4 = icmp eq i8* %3, null, !dbg !3860
  br i1 %4, label %5, label %6, !dbg !3861

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3862
  unreachable, !dbg !3862

6:                                                ; preds = %2
  ret i8* %3, !dbg !3863
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3864 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3868, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i64* %1, metadata !3869, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i8* %0, metadata !462, metadata !DIExpression()) #35, !dbg !3871
  call void @llvm.dbg.value(metadata i64* %1, metadata !463, metadata !DIExpression()) #35, !dbg !3871
  call void @llvm.dbg.value(metadata i64 1, metadata !464, metadata !DIExpression()) #35, !dbg !3871
  %3 = load i64, i64* %1, align 8, !dbg !3873, !tbaa !1440
  call void @llvm.dbg.value(metadata i64 %3, metadata !465, metadata !DIExpression()) #35, !dbg !3871
  %4 = icmp eq i8* %0, null, !dbg !3874
  br i1 %4, label %5, label %8, !dbg !3876

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3877
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3880
  br label %15, !dbg !3880

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3881
  %10 = add nuw i64 %9, 1, !dbg !3881
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #35, !dbg !3881
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3881
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3881
  call void @llvm.dbg.value(metadata i64 %13, metadata !465, metadata !DIExpression()) #35, !dbg !3871
  br i1 %12, label %14, label %15, !dbg !3884

14:                                               ; preds = %8
  tail call void @xalloc_die() #37, !dbg !3885
  unreachable, !dbg !3885

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3871
  call void @llvm.dbg.value(metadata i64 %16, metadata !465, metadata !DIExpression()) #35, !dbg !3871
  call void @llvm.dbg.value(metadata i8* %0, metadata !3688, metadata !DIExpression()) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i64 %16, metadata !3691, metadata !DIExpression()) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i64 1, metadata !3692, metadata !DIExpression()) #35, !dbg !3886
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #35, !dbg !3888
  call void @llvm.dbg.value(metadata i8* %17, metadata !3696, metadata !DIExpression()) #35, !dbg !3889
  %18 = icmp eq i8* %17, null, !dbg !3891
  br i1 %18, label %19, label %20, !dbg !3892

19:                                               ; preds = %15
  tail call void @xalloc_die() #37, !dbg !3893
  unreachable, !dbg !3893

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !462, metadata !DIExpression()) #35, !dbg !3871
  store i64 %16, i64* %1, align 8, !dbg !3894, !tbaa !1440
  ret i8* %17, !dbg !3895
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !457 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !462, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i64* %1, metadata !463, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i64 %2, metadata !464, metadata !DIExpression()), !dbg !3896
  %4 = load i64, i64* %1, align 8, !dbg !3897, !tbaa !1440
  call void @llvm.dbg.value(metadata i64 %4, metadata !465, metadata !DIExpression()), !dbg !3896
  %5 = icmp eq i8* %0, null, !dbg !3898
  br i1 %5, label %6, label %13, !dbg !3899

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3900
  br i1 %7, label %8, label %20, !dbg !3901

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3902
  call void @llvm.dbg.value(metadata i64 %9, metadata !465, metadata !DIExpression()), !dbg !3896
  %10 = icmp ugt i64 %2, 128, !dbg !3904
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3905
  call void @llvm.dbg.value(metadata i64 %12, metadata !465, metadata !DIExpression()), !dbg !3896
  br label %20, !dbg !3906

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3907
  %15 = add nuw i64 %14, 1, !dbg !3907
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3907
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3907
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3907
  call void @llvm.dbg.value(metadata i64 %18, metadata !465, metadata !DIExpression()), !dbg !3896
  br i1 %17, label %19, label %20, !dbg !3908

19:                                               ; preds = %13
  tail call void @xalloc_die() #37, !dbg !3909
  unreachable, !dbg !3909

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3896
  call void @llvm.dbg.value(metadata i64 %21, metadata !465, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i8* %0, metadata !3688, metadata !DIExpression()) #35, !dbg !3910
  call void @llvm.dbg.value(metadata i64 %21, metadata !3691, metadata !DIExpression()) #35, !dbg !3910
  call void @llvm.dbg.value(metadata i64 %2, metadata !3692, metadata !DIExpression()) #35, !dbg !3910
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #35, !dbg !3912
  call void @llvm.dbg.value(metadata i8* %22, metadata !3696, metadata !DIExpression()) #35, !dbg !3913
  %23 = icmp eq i8* %22, null, !dbg !3915
  br i1 %23, label %24, label %25, !dbg !3916

24:                                               ; preds = %20
  tail call void @xalloc_die() #37, !dbg !3917
  unreachable, !dbg !3917

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !462, metadata !DIExpression()), !dbg !3896
  store i64 %21, i64* %1, align 8, !dbg !3918, !tbaa !1440
  ret i8* %22, !dbg !3919
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !469 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !477, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i64* %1, metadata !478, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i64 %2, metadata !479, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i64 %3, metadata !480, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i64 %4, metadata !481, metadata !DIExpression()), !dbg !3920
  %6 = load i64, i64* %1, align 8, !dbg !3921, !tbaa !1440
  call void @llvm.dbg.value(metadata i64 %6, metadata !482, metadata !DIExpression()), !dbg !3920
  %7 = ashr i64 %6, 1, !dbg !3922
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3922
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3922
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3922
  call void @llvm.dbg.value(metadata i64 %10, metadata !483, metadata !DIExpression()), !dbg !3920
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3924
  call void @llvm.dbg.value(metadata i64 %11, metadata !483, metadata !DIExpression()), !dbg !3920
  %12 = icmp sgt i64 %3, -1, !dbg !3925
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3927
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3927
  call void @llvm.dbg.value(metadata i64 %15, metadata !483, metadata !DIExpression()), !dbg !3920
  %16 = icmp slt i64 %4, 0, !dbg !3928
  br i1 %16, label %17, label %30, !dbg !3928

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3928
  br i1 %18, label %19, label %24, !dbg !3928

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3928
  %21 = udiv i64 9223372036854775807, %20, !dbg !3928
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3928
  br i1 %23, label %46, label %43, !dbg !3928

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3928
  br i1 %25, label %43, label %26, !dbg !3928

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3928
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3928
  %29 = icmp ult i64 %28, %15, !dbg !3928
  br i1 %29, label %46, label %43, !dbg !3928

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3928
  br i1 %31, label %43, label %32, !dbg !3928

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3928
  br i1 %33, label %34, label %40, !dbg !3928

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3928
  br i1 %35, label %43, label %36, !dbg !3928

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3928
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3928
  %39 = icmp ult i64 %38, %4, !dbg !3928
  br i1 %39, label %46, label %43, !dbg !3928

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3928
  %42 = icmp ult i64 %41, %15, !dbg !3928
  br i1 %42, label %46, label %43, !dbg !3928

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !484, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3920
  %44 = mul i64 %15, %4, !dbg !3928
  call void @llvm.dbg.value(metadata i64 %44, metadata !484, metadata !DIExpression()), !dbg !3920
  %45 = icmp slt i64 %44, 128, !dbg !3928
  br i1 %45, label %46, label %52, !dbg !3928

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !485, metadata !DIExpression()), !dbg !3920
  %48 = sdiv i64 %47, %4, !dbg !3929
  call void @llvm.dbg.value(metadata i64 %48, metadata !483, metadata !DIExpression()), !dbg !3920
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3932
  call void @llvm.dbg.value(metadata i64 %51, metadata !484, metadata !DIExpression()), !dbg !3920
  br label %52, !dbg !3933

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3920
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3920
  call void @llvm.dbg.value(metadata i64 %54, metadata !484, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i64 %53, metadata !483, metadata !DIExpression()), !dbg !3920
  %55 = icmp eq i8* %0, null, !dbg !3934
  br i1 %55, label %56, label %57, !dbg !3936

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3937, !tbaa !1440
  br label %57, !dbg !3938

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3939
  %59 = icmp slt i64 %58, %2, !dbg !3941
  br i1 %59, label %60, label %97, !dbg !3942

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3943
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3943
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3943
  call void @llvm.dbg.value(metadata i64 %63, metadata !483, metadata !DIExpression()), !dbg !3920
  br i1 %62, label %96, label %64, !dbg !3944

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3945
  br i1 %66, label %96, label %67, !dbg !3945

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3946

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3946
  br i1 %69, label %70, label %75, !dbg !3946

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3946
  %72 = udiv i64 9223372036854775807, %71, !dbg !3946
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3946
  br i1 %74, label %96, label %94, !dbg !3946

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3946
  br i1 %76, label %94, label %77, !dbg !3946

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3946
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3946
  %80 = icmp ult i64 %79, %63, !dbg !3946
  br i1 %80, label %96, label %94, !dbg !3946

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3946
  br i1 %82, label %94, label %83, !dbg !3946

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3946
  br i1 %84, label %85, label %91, !dbg !3946

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3946
  br i1 %86, label %94, label %87, !dbg !3946

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3946
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3946
  %90 = icmp ult i64 %89, %4, !dbg !3946
  br i1 %90, label %96, label %94, !dbg !3946

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3946
  %93 = icmp ult i64 %92, %63, !dbg !3946
  br i1 %93, label %96, label %94, !dbg !3946

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !484, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3920
  %95 = mul i64 %63, %4, !dbg !3946
  call void @llvm.dbg.value(metadata i64 %95, metadata !484, metadata !DIExpression()), !dbg !3920
  br label %97, !dbg !3947

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #37, !dbg !3948
  unreachable, !dbg !3948

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3920
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3920
  call void @llvm.dbg.value(metadata i64 %99, metadata !484, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i64 %98, metadata !483, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i8* %0, metadata !3767, metadata !DIExpression()) #35, !dbg !3949
  call void @llvm.dbg.value(metadata i64 %99, metadata !3768, metadata !DIExpression()) #35, !dbg !3949
  call void @llvm.dbg.value(metadata i8* %0, metadata !3770, metadata !DIExpression()) #35, !dbg !3951
  call void @llvm.dbg.value(metadata i64 %99, metadata !3774, metadata !DIExpression()) #35, !dbg !3951
  %100 = icmp eq i64 %99, 0, !dbg !3953
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3953
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #35, !dbg !3954
  call void @llvm.dbg.value(metadata i8* %102, metadata !3696, metadata !DIExpression()) #35, !dbg !3955
  %103 = icmp eq i8* %102, null, !dbg !3957
  br i1 %103, label %104, label %105, !dbg !3958

104:                                              ; preds = %97
  tail call void @xalloc_die() #37, !dbg !3959
  unreachable, !dbg !3959

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !477, metadata !DIExpression()), !dbg !3920
  store i64 %98, i64* %1, align 8, !dbg !3960, !tbaa !1440
  ret i8* %102, !dbg !3961
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3962 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3964, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata i64 %0, metadata !3966, metadata !DIExpression()) #35, !dbg !3970
  call void @llvm.dbg.value(metadata i64 1, metadata !3969, metadata !DIExpression()) #35, !dbg !3970
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !3972
  call void @llvm.dbg.value(metadata i8* %2, metadata !3696, metadata !DIExpression()) #35, !dbg !3973
  %3 = icmp eq i8* %2, null, !dbg !3975
  br i1 %3, label %4, label %5, !dbg !3976

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3977
  unreachable, !dbg !3977

5:                                                ; preds = %1
  ret i8* %2, !dbg !3978
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3967 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3966, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i64 %1, metadata !3969, metadata !DIExpression()), !dbg !3979
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !3980
  call void @llvm.dbg.value(metadata i8* %3, metadata !3696, metadata !DIExpression()) #35, !dbg !3981
  %4 = icmp eq i8* %3, null, !dbg !3983
  br i1 %4, label %5, label %6, !dbg !3984

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3985
  unreachable, !dbg !3985

6:                                                ; preds = %2
  ret i8* %3, !dbg !3986
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3987 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3989, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata i64 %0, metadata !3991, metadata !DIExpression()) #35, !dbg !3995
  call void @llvm.dbg.value(metadata i64 1, metadata !3994, metadata !DIExpression()) #35, !dbg !3995
  call void @llvm.dbg.value(metadata i64 %0, metadata !3997, metadata !DIExpression()) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i64 1, metadata !4000, metadata !DIExpression()) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i64 %0, metadata !3997, metadata !DIExpression()) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i64 1, metadata !4000, metadata !DIExpression()) #35, !dbg !4001
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !4003
  call void @llvm.dbg.value(metadata i8* %2, metadata !3696, metadata !DIExpression()) #35, !dbg !4004
  %3 = icmp eq i8* %2, null, !dbg !4006
  br i1 %3, label %4, label %5, !dbg !4007

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4008
  unreachable, !dbg !4008

5:                                                ; preds = %1
  ret i8* %2, !dbg !4009
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3992 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3991, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i64 %1, metadata !3994, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i64 %0, metadata !3997, metadata !DIExpression()) #35, !dbg !4011
  call void @llvm.dbg.value(metadata i64 %1, metadata !4000, metadata !DIExpression()) #35, !dbg !4011
  call void @llvm.dbg.value(metadata i64 %0, metadata !3997, metadata !DIExpression()) #35, !dbg !4011
  call void @llvm.dbg.value(metadata i64 %1, metadata !4000, metadata !DIExpression()) #35, !dbg !4011
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i8* %3, metadata !3696, metadata !DIExpression()) #35, !dbg !4014
  %4 = icmp eq i8* %3, null, !dbg !4016
  br i1 %4, label %5, label %6, !dbg !4017

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4018
  unreachable, !dbg !4018

6:                                                ; preds = %2
  ret i8* %3, !dbg !4019
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4020 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4024, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i64 %1, metadata !4025, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i64 %1, metadata !3720, metadata !DIExpression()) #35, !dbg !4027
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !4029
  call void @llvm.dbg.value(metadata i8* %3, metadata !3696, metadata !DIExpression()) #35, !dbg !4030
  %4 = icmp eq i8* %3, null, !dbg !4032
  br i1 %4, label %5, label %6, !dbg !4033

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4034
  unreachable, !dbg !4034

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4035, metadata !DIExpression()) #35, !dbg !4043
  call void @llvm.dbg.value(metadata i8* %0, metadata !4041, metadata !DIExpression()) #35, !dbg !4043
  call void @llvm.dbg.value(metadata i64 %1, metadata !4042, metadata !DIExpression()) #35, !dbg !4043
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4045
  ret i8* %3, !dbg !4046
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4047 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4051, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i64 %1, metadata !4052, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i64 %1, metadata !3733, metadata !DIExpression()) #35, !dbg !4054
  call void @llvm.dbg.value(metadata i64 %1, metadata !3735, metadata !DIExpression()) #35, !dbg !4056
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !4058
  call void @llvm.dbg.value(metadata i8* %3, metadata !3696, metadata !DIExpression()) #35, !dbg !4059
  %4 = icmp eq i8* %3, null, !dbg !4061
  br i1 %4, label %5, label %6, !dbg !4062

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4063
  unreachable, !dbg !4063

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4035, metadata !DIExpression()) #35, !dbg !4064
  call void @llvm.dbg.value(metadata i8* %0, metadata !4041, metadata !DIExpression()) #35, !dbg !4064
  call void @llvm.dbg.value(metadata i64 %1, metadata !4042, metadata !DIExpression()) #35, !dbg !4064
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4066
  ret i8* %3, !dbg !4067
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !4068 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4072, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i64 %1, metadata !4073, metadata !DIExpression()), !dbg !4075
  %3 = add nsw i64 %1, 1, !dbg !4076
  call void @llvm.dbg.value(metadata i64 %3, metadata !3733, metadata !DIExpression()) #35, !dbg !4077
  call void @llvm.dbg.value(metadata i64 %3, metadata !3735, metadata !DIExpression()) #35, !dbg !4079
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !4081
  call void @llvm.dbg.value(metadata i8* %4, metadata !3696, metadata !DIExpression()) #35, !dbg !4082
  %5 = icmp eq i8* %4, null, !dbg !4084
  br i1 %5, label %6, label %7, !dbg !4085

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4086
  unreachable, !dbg !4086

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !4074, metadata !DIExpression()), !dbg !4075
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !4087
  store i8 0, i8* %8, align 1, !dbg !4088, !tbaa !633
  call void @llvm.dbg.value(metadata i8* %4, metadata !4035, metadata !DIExpression()) #35, !dbg !4089
  call void @llvm.dbg.value(metadata i8* %0, metadata !4041, metadata !DIExpression()) #35, !dbg !4089
  call void @llvm.dbg.value(metadata i64 %1, metadata !4042, metadata !DIExpression()) #35, !dbg !4089
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4091
  ret i8* %4, !dbg !4092
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !4093 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4095, metadata !DIExpression()), !dbg !4096
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !4097
  %3 = add i64 %2, 1, !dbg !4098
  call void @llvm.dbg.value(metadata i8* %0, metadata !4024, metadata !DIExpression()) #35, !dbg !4099
  call void @llvm.dbg.value(metadata i64 %3, metadata !4025, metadata !DIExpression()) #35, !dbg !4099
  call void @llvm.dbg.value(metadata i64 %3, metadata !3720, metadata !DIExpression()) #35, !dbg !4101
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !4103
  call void @llvm.dbg.value(metadata i8* %4, metadata !3696, metadata !DIExpression()) #35, !dbg !4104
  %5 = icmp eq i8* %4, null, !dbg !4106
  br i1 %5, label %6, label %7, !dbg !4107

6:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4108
  unreachable, !dbg !4108

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4035, metadata !DIExpression()) #35, !dbg !4109
  call void @llvm.dbg.value(metadata i8* %0, metadata !4041, metadata !DIExpression()) #35, !dbg !4109
  call void @llvm.dbg.value(metadata i64 %3, metadata !4042, metadata !DIExpression()) #35, !dbg !4109
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #35, !dbg !4111
  ret i8* %4, !dbg !4112
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4113 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4117, !tbaa !624
  call void @llvm.dbg.value(metadata i32 %1, metadata !4115, metadata !DIExpression()), !dbg !4118
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.169, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.170, i64 0, i64 0), i32 noundef 5) #35, !dbg !4117
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.171, i64 0, i64 0), i8* noundef %2) #35, !dbg !4117
  %3 = icmp eq i32 %1, 0, !dbg !4117
  tail call void @llvm.assume(i1 %3), !dbg !4117
  tail call void @abort() #37, !dbg !4119
  unreachable, !dbg !4119
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nounwind uwtable
define dso_local double @c_strtod(i8* noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !4120 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4124, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i8** %1, metadata !4125, metadata !DIExpression()), !dbg !4128
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !4129, !tbaa !527
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !4129
  br i1 %4, label %5, label %7, !dbg !4135

5:                                                ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 noundef 8127, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.174, i64 0, i64 0), %struct.__locale_struct* noundef null) #35, !dbg !4136
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !4137, !tbaa !527
  br label %7, !dbg !4138

7:                                                ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !4139, !tbaa !527
  call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, metadata !4127, metadata !DIExpression()), !dbg !4128
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !4140
  br i1 %9, label %10, label %13, !dbg !4142

10:                                               ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !4143
  br i1 %11, label %15, label %12, !dbg !4146

12:                                               ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !4147, !tbaa !527
  br label %15, !dbg !4148

13:                                               ; preds = %7
  %14 = tail call double @strtod_l(i8* noundef %0, i8** noundef %1, %struct.__locale_struct* noundef nonnull %8) #35, !dbg !4149
  call void @llvm.dbg.value(metadata double %14, metadata !4126, metadata !DIExpression()), !dbg !4128
  br label %15, !dbg !4150

15:                                               ; preds = %10, %12, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %10 ], !dbg !4128
  ret double %16, !dbg !4151
}

; Function Attrs: nounwind
declare !dbg !4152 %struct.__locale_struct* @newlocale(i32 noundef, i8* noundef, %struct.__locale_struct* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4155 double @strtod_l(i8* noundef, i8** noundef, %struct.__locale_struct* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4158 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4196, metadata !DIExpression()), !dbg !4201
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #35, !dbg !4202
  call void @llvm.dbg.value(metadata i1 undef, metadata !4197, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4201
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4203, metadata !DIExpression()), !dbg !4206
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4208
  %4 = load i32, i32* %3, align 8, !dbg !4208, !tbaa !4209
  %5 = and i32 %4, 32, !dbg !4210
  %6 = icmp eq i32 %5, 0, !dbg !4210
  call void @llvm.dbg.value(metadata i1 %6, metadata !4199, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4201
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #35, !dbg !4211
  %8 = icmp eq i32 %7, 0, !dbg !4212
  call void @llvm.dbg.value(metadata i1 %8, metadata !4200, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4201
  br i1 %6, label %9, label %19, !dbg !4213

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4215
  call void @llvm.dbg.value(metadata i1 %10, metadata !4197, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4201
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4216
  %12 = xor i1 %8, true, !dbg !4216
  %13 = sext i1 %12 to i32, !dbg !4216
  br i1 %11, label %22, label %14, !dbg !4216

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #38, !dbg !4217
  %16 = load i32, i32* %15, align 4, !dbg !4217, !tbaa !624
  %17 = icmp ne i32 %16, 9, !dbg !4218
  %18 = sext i1 %17 to i32, !dbg !4219
  br label %22, !dbg !4219

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4220

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #38, !dbg !4222
  store i32 0, i32* %21, align 4, !dbg !4224, !tbaa !624
  br label %22, !dbg !4222

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4201
  ret i32 %23, !dbg !4225
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !4226 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4264, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i32 0, metadata !4265, metadata !DIExpression()), !dbg !4268
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4269
  call void @llvm.dbg.value(metadata i32 %2, metadata !4266, metadata !DIExpression()), !dbg !4268
  %3 = icmp slt i32 %2, 0, !dbg !4270
  br i1 %3, label %4, label %6, !dbg !4272

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4273
  br label %24, !dbg !4274

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4275
  %8 = icmp eq i32 %7, 0, !dbg !4275
  br i1 %8, label %13, label %9, !dbg !4277

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4278
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #35, !dbg !4279
  %12 = icmp eq i64 %11, -1, !dbg !4280
  br i1 %12, label %16, label %13, !dbg !4281

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4282
  %15 = icmp eq i32 %14, 0, !dbg !4282
  br i1 %15, label %16, label %18, !dbg !4283

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4265, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i32 0, metadata !4267, metadata !DIExpression()), !dbg !4268
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4284
  call void @llvm.dbg.value(metadata i32 %21, metadata !4267, metadata !DIExpression()), !dbg !4268
  br label %24, !dbg !4285

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #38, !dbg !4286
  %20 = load i32, i32* %19, align 4, !dbg !4286, !tbaa !624
  call void @llvm.dbg.value(metadata i32 %20, metadata !4265, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i32 0, metadata !4267, metadata !DIExpression()), !dbg !4268
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4284
  call void @llvm.dbg.value(metadata i32 %21, metadata !4267, metadata !DIExpression()), !dbg !4268
  %22 = icmp eq i32 %20, 0, !dbg !4287
  br i1 %22, label %24, label %23, !dbg !4285

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4289, !tbaa !624
  call void @llvm.dbg.value(metadata i32 -1, metadata !4267, metadata !DIExpression()), !dbg !4268
  br label %24, !dbg !4291

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4268
  ret i32 %25, !dbg !4292
}

; Function Attrs: nofree nounwind
declare !dbg !4293 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4294 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4295 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4298 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4336, metadata !DIExpression()), !dbg !4337
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4338
  br i1 %2, label %6, label %3, !dbg !4340

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4341
  %5 = icmp eq i32 %4, 0, !dbg !4341
  br i1 %5, label %6, label %8, !dbg !4342

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !4343
  br label %17, !dbg !4344

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4345, metadata !DIExpression()) #35, !dbg !4350
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4352
  %10 = load i32, i32* %9, align 8, !dbg !4352, !tbaa !4209
  %11 = and i32 %10, 256, !dbg !4354
  %12 = icmp eq i32 %11, 0, !dbg !4354
  br i1 %12, label %15, label %13, !dbg !4355

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #35, !dbg !4356
  br label %15, !dbg !4356

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !4357
  br label %17, !dbg !4358

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4337
  ret i32 %18, !dbg !4359
}

; Function Attrs: nofree nounwind
declare !dbg !4360 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !4361 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4400, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i64 %1, metadata !4401, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i32 %2, metadata !4402, metadata !DIExpression()), !dbg !4406
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4407
  %5 = load i8*, i8** %4, align 8, !dbg !4407, !tbaa !4408
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4409
  %7 = load i8*, i8** %6, align 8, !dbg !4409, !tbaa !4410
  %8 = icmp eq i8* %5, %7, !dbg !4411
  br i1 %8, label %9, label %28, !dbg !4412

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4413
  %11 = load i8*, i8** %10, align 8, !dbg !4413, !tbaa !1897
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4414
  %13 = load i8*, i8** %12, align 8, !dbg !4414, !tbaa !4415
  %14 = icmp eq i8* %11, %13, !dbg !4416
  br i1 %14, label %15, label %28, !dbg !4417

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4418
  %17 = load i8*, i8** %16, align 8, !dbg !4418, !tbaa !4419
  %18 = icmp eq i8* %17, null, !dbg !4420
  br i1 %18, label %19, label %28, !dbg !4421

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4422
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #35, !dbg !4423
  call void @llvm.dbg.value(metadata i64 %21, metadata !4403, metadata !DIExpression()), !dbg !4424
  %22 = icmp eq i64 %21, -1, !dbg !4425
  br i1 %22, label %30, label %23, !dbg !4427

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4428
  %25 = load i32, i32* %24, align 8, !dbg !4429, !tbaa !4209
  %26 = and i32 %25, -17, !dbg !4429
  store i32 %26, i32* %24, align 8, !dbg !4429, !tbaa !4209
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4430
  store i64 %21, i64* %27, align 8, !dbg !4431, !tbaa !4432
  br label %30, !dbg !4433

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4434
  br label %30, !dbg !4435

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4406
  ret i32 %31, !dbg !4436
}

; Function Attrs: nofree nounwind
declare !dbg !4437 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !4440 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4445, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i8* %1, metadata !4446, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i64 %2, metadata !4447, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4448, metadata !DIExpression()), !dbg !4450
  %5 = icmp eq i8* %1, null, !dbg !4451
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4453
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.185, i64 0, i64 0), i8* %1, !dbg !4453
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4453
  call void @llvm.dbg.value(metadata i64 %8, metadata !4447, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i8* %7, metadata !4446, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i32* %6, metadata !4445, metadata !DIExpression()), !dbg !4450
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4454
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4456
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4448, metadata !DIExpression()), !dbg !4450
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #35, !dbg !4457
  call void @llvm.dbg.value(metadata i64 %11, metadata !4449, metadata !DIExpression()), !dbg !4450
  %12 = icmp ult i64 %11, -3, !dbg !4458
  br i1 %12, label %13, label %18, !dbg !4460

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #36, !dbg !4461
  %15 = icmp eq i32 %14, 0, !dbg !4461
  br i1 %15, label %16, label %30, !dbg !4462

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4463, metadata !DIExpression()) #35, !dbg !4468
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4470, metadata !DIExpression()) #35, !dbg !4475
  call void @llvm.dbg.value(metadata i32 0, metadata !4473, metadata !DIExpression()) #35, !dbg !4475
  call void @llvm.dbg.value(metadata i64 8, metadata !4474, metadata !DIExpression()) #35, !dbg !4475
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4477
  store i64 0, i64* %17, align 1, !dbg !4477
  br label %30, !dbg !4478

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4479
  br i1 %19, label %20, label %21, !dbg !4481

20:                                               ; preds = %18
  tail call void @abort() #37, !dbg !4482
  unreachable, !dbg !4482

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4483

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #35, !dbg !4485
  br i1 %24, label %30, label %25, !dbg !4486

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4487
  br i1 %26, label %30, label %27, !dbg !4490

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4491, !tbaa !633
  %29 = zext i8 %28 to i32, !dbg !4492
  store i32 %29, i32* %6, align 4, !dbg !4493, !tbaa !624
  br label %30, !dbg !4494

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4450
  ret i64 %31, !dbg !4495
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4496 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #33

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #34 !dbg !4502 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4504, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i64 %1, metadata !4505, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i64 %2, metadata !4506, metadata !DIExpression()), !dbg !4508
  %4 = icmp eq i64 %2, 0, !dbg !4509
  br i1 %4, label %8, label %5, !dbg !4509

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4509
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4509
  br i1 %7, label %13, label %8, !dbg !4509

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4507, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4508
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4507, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4508
  %9 = mul i64 %2, %1, !dbg !4509
  call void @llvm.dbg.value(metadata i64 %9, metadata !4507, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i8* %0, metadata !4511, metadata !DIExpression()) #35, !dbg !4515
  call void @llvm.dbg.value(metadata i64 %9, metadata !4514, metadata !DIExpression()) #35, !dbg !4515
  %10 = icmp eq i64 %9, 0, !dbg !4517
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4517
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #35, !dbg !4518
  br label %15, !dbg !4519

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4507, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4508
  %14 = tail call i32* @__errno_location() #38, !dbg !4520
  store i32 12, i32* %14, align 4, !dbg !4522, !tbaa !624
  br label %15, !dbg !4523

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4508
  ret i8* %16, !dbg !4524
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4525 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4527, metadata !DIExpression()), !dbg !4532
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4533
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #35, !dbg !4533
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4528, metadata !DIExpression()), !dbg !4534
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #35, !dbg !4535
  %5 = icmp eq i32 %4, 0, !dbg !4535
  br i1 %5, label %6, label %13, !dbg !4537

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4538, metadata !DIExpression()) #35, !dbg !4542
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.190, i64 0, i64 0), metadata !4541, metadata !DIExpression()) #35, !dbg !4542
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.190, i64 0, i64 0), i64 2), !dbg !4545
  %8 = icmp eq i32 %7, 0, !dbg !4546
  br i1 %8, label %12, label %9, !dbg !4547

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4538, metadata !DIExpression()) #35, !dbg !4548
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.191, i64 0, i64 0), metadata !4541, metadata !DIExpression()) #35, !dbg !4548
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.191, i64 0, i64 0), i64 6), !dbg !4550
  %11 = icmp eq i32 %10, 0, !dbg !4551
  br i1 %11, label %12, label %13, !dbg !4552

12:                                               ; preds = %9, %6
  br label %13, !dbg !4553

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4532
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #35, !dbg !4554
  ret i1 %14, !dbg !4554
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4555 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4559, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i8* %1, metadata !4560, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i64 %2, metadata !4561, metadata !DIExpression()), !dbg !4562
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #35, !dbg !4563
  ret i32 %4, !dbg !4564
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4565 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4569, metadata !DIExpression()), !dbg !4570
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #35, !dbg !4571
  ret i8* %2, !dbg !4572
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4573 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4575, metadata !DIExpression()), !dbg !4577
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !4578
  call void @llvm.dbg.value(metadata i8* %2, metadata !4576, metadata !DIExpression()), !dbg !4577
  ret i8* %2, !dbg !4579
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4580 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4582, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i8* %1, metadata !4583, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i64 %2, metadata !4584, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i32 %0, metadata !4575, metadata !DIExpression()) #35, !dbg !4590
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !4592
  call void @llvm.dbg.value(metadata i8* %4, metadata !4576, metadata !DIExpression()) #35, !dbg !4590
  call void @llvm.dbg.value(metadata i8* %4, metadata !4585, metadata !DIExpression()), !dbg !4589
  %5 = icmp eq i8* %4, null, !dbg !4593
  br i1 %5, label %6, label %9, !dbg !4594

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4595
  br i1 %7, label %19, label %8, !dbg !4598

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4599, !tbaa !633
  br label %19, !dbg !4600

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #36, !dbg !4601
  call void @llvm.dbg.value(metadata i64 %10, metadata !4586, metadata !DIExpression()), !dbg !4602
  %11 = icmp ult i64 %10, %2, !dbg !4603
  br i1 %11, label %12, label %14, !dbg !4605

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4606
  call void @llvm.dbg.value(metadata i8* %1, metadata !4608, metadata !DIExpression()) #35, !dbg !4613
  call void @llvm.dbg.value(metadata i8* %4, metadata !4611, metadata !DIExpression()) #35, !dbg !4613
  call void @llvm.dbg.value(metadata i64 %13, metadata !4612, metadata !DIExpression()) #35, !dbg !4613
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #35, !dbg !4615
  br label %19, !dbg !4616

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4617
  br i1 %15, label %19, label %16, !dbg !4620

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4621
  call void @llvm.dbg.value(metadata i8* %1, metadata !4608, metadata !DIExpression()) #35, !dbg !4623
  call void @llvm.dbg.value(metadata i8* %4, metadata !4611, metadata !DIExpression()) #35, !dbg !4623
  call void @llvm.dbg.value(metadata i64 %17, metadata !4612, metadata !DIExpression()) #35, !dbg !4623
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #35, !dbg !4625
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4626
  store i8 0, i8* %18, align 1, !dbg !4627, !tbaa !633
  br label %19, !dbg !4628

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4629
  ret i32 %20, !dbg !4630
}

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #4 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #5 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #9 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #10 = { nofree nounwind readonly "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #11 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #12 = { nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { argmemonly nofree nounwind willreturn writeonly }
attributes #15 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { nofree nosync nounwind willreturn }
attributes #23 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #24 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #27 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #35 = { nounwind }
attributes #36 = { nounwind readonly willreturn }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind readnone willreturn }
attributes #39 = { noreturn }
attributes #40 = { cold }
attributes #41 = { nounwind allocsize(1) }
attributes #42 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2, !429, !177, !431, !182, !433, !189, !381, !444, !230, !240, !272, !359, !446, !373, !453, !487, !387, !489, !491, !493, !495, !415, !497, !500, !502, !504}
!llvm.ident = !{!506, !506, !506, !506, !506, !506, !506, !506, !506, !506, !506, !506, !506, !506, !506, !506, !506, !506, !506, !506, !506, !506, !506, !506, !506, !506, !506}
!llvm.module.flags = !{!507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 97, type: !159, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !46, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/timeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afbf26e7b41c5b018c2877c8d9f1f2ff")
!4 = !{!5, !13}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 90, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!10 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!11 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!12 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 46, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!16 = !DIEnumerator(name: "_ISupper", value: 256)
!17 = !DIEnumerator(name: "_ISlower", value: 512)
!18 = !DIEnumerator(name: "_ISalpha", value: 1024)
!19 = !DIEnumerator(name: "_ISdigit", value: 2048)
!20 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!21 = !DIEnumerator(name: "_ISspace", value: 8192)
!22 = !DIEnumerator(name: "_ISprint", value: 16384)
!23 = !DIEnumerator(name: "_ISgraph", value: 32768)
!24 = !DIEnumerator(name: "_ISblank", value: 1)
!25 = !DIEnumerator(name: "_IScntrl", value: 2)
!26 = !DIEnumerator(name: "_ISpunct", value: 4)
!27 = !DIEnumerator(name: "_ISalnum", value: 8)
!28 = !{!29, !31, !32, !38, !37, !39, !40, !43, !45}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !33, line: 72, baseType: !34)
!33 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37}
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !41, line: 46, baseType: !42)
!41 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!42 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!45 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !{!47, !49, !55, !58, !61, !63, !65, !67, !0, !150, !152}
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "timed_out", scope: !2, file: !3, line: 88, type: !37, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "monitored_pid", scope: !2, file: !3, line: 90, type: !51, isLocal: true, isDefinition: true)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !52, line: 97, baseType: !53)
!52 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !54, line: 154, baseType: !37)
!54 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "kill_after", scope: !2, file: !3, line: 91, type: !57, isLocal: true, isDefinition: true)
!57 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "foreground", scope: !2, file: !3, line: 92, type: !60, isLocal: true, isDefinition: true)
!60 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "preserve_status", scope: !2, file: !3, line: 93, type: !60, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "verbose", scope: !2, file: !3, line: 94, type: !60, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "command", scope: !2, file: !3, line: 95, type: !43, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !69, file: !6, line: 575, type: !37, isLocal: true, isDefinition: true)
!69 = distinct !DISubprogram(name: "oputs_", scope: !6, file: !6, line: 573, type: !70, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !72)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !43, !43}
!72 = !{!73, !74, !75, !78, !79, !80, !81, !85, !86, !87, !88, !90, !144, !145, !146, !148, !149}
!73 = !DILocalVariable(name: "program", arg: 1, scope: !69, file: !6, line: 573, type: !43)
!74 = !DILocalVariable(name: "option", arg: 2, scope: !69, file: !6, line: 573, type: !43)
!75 = !DILocalVariable(name: "term", scope: !76, file: !6, line: 585, type: !43)
!76 = distinct !DILexicalBlock(scope: !77, file: !6, line: 582, column: 5)
!77 = distinct !DILexicalBlock(scope: !69, file: !6, line: 581, column: 7)
!78 = !DILocalVariable(name: "double_space", scope: !69, file: !6, line: 594, type: !60)
!79 = !DILocalVariable(name: "first_word", scope: !69, file: !6, line: 595, type: !43)
!80 = !DILocalVariable(name: "option_text", scope: !69, file: !6, line: 596, type: !43)
!81 = !DILocalVariable(name: "s", scope: !82, file: !6, line: 608, type: !43)
!82 = distinct !DILexicalBlock(scope: !83, file: !6, line: 605, column: 5)
!83 = distinct !DILexicalBlock(scope: !84, file: !6, line: 604, column: 12)
!84 = distinct !DILexicalBlock(scope: !69, file: !6, line: 597, column: 7)
!85 = !DILocalVariable(name: "spaces", scope: !82, file: !6, line: 609, type: !40)
!86 = !DILocalVariable(name: "anchor_len", scope: !69, file: !6, line: 620, type: !40)
!87 = !DILocalVariable(name: "desc_text", scope: !69, file: !6, line: 625, type: !43)
!88 = !DILocalVariable(name: "__ptr", scope: !89, file: !6, line: 644, type: !43)
!89 = distinct !DILexicalBlock(scope: !69, file: !6, line: 644, column: 3)
!90 = !DILocalVariable(name: "__stream", scope: !89, file: !6, line: 644, type: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !94)
!93 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !96)
!95 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !112, !114, !115, !116, !119, !120, !121, !125, !128, !130, !133, !136, !137, !138, !139, !140}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !94, file: !95, line: 51, baseType: !37, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !94, file: !95, line: 54, baseType: !29, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !94, file: !95, line: 55, baseType: !29, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !94, file: !95, line: 56, baseType: !29, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !94, file: !95, line: 57, baseType: !29, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !94, file: !95, line: 58, baseType: !29, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !94, file: !95, line: 59, baseType: !29, size: 64, offset: 384)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !94, file: !95, line: 60, baseType: !29, size: 64, offset: 448)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !94, file: !95, line: 61, baseType: !29, size: 64, offset: 512)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !94, file: !95, line: 64, baseType: !29, size: 64, offset: 576)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !94, file: !95, line: 65, baseType: !29, size: 64, offset: 640)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !94, file: !95, line: 66, baseType: !29, size: 64, offset: 704)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !94, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !95, line: 36, flags: DIFlagFwdDecl)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !94, file: !95, line: 70, baseType: !113, size: 64, offset: 832)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !94, file: !95, line: 72, baseType: !37, size: 32, offset: 896)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !94, file: !95, line: 73, baseType: !37, size: 32, offset: 928)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !94, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !54, line: 152, baseType: !118)
!118 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !94, file: !95, line: 77, baseType: !39, size: 16, offset: 1024)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !94, file: !95, line: 78, baseType: !38, size: 8, offset: 1040)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !94, file: !95, line: 79, baseType: !122, size: 8, offset: 1048)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 1)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !94, file: !95, line: 81, baseType: !126, size: 64, offset: 1088)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !95, line: 43, baseType: null)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !94, file: !95, line: 89, baseType: !129, size: 64, offset: 1152)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !54, line: 153, baseType: !118)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !94, file: !95, line: 91, baseType: !131, size: 64, offset: 1216)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !95, line: 37, flags: DIFlagFwdDecl)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !94, file: !95, line: 92, baseType: !134, size: 64, offset: 1280)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !95, line: 38, flags: DIFlagFwdDecl)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !94, file: !95, line: 93, baseType: !113, size: 64, offset: 1344)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !94, file: !95, line: 94, baseType: !31, size: 64, offset: 1408)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !94, file: !95, line: 95, baseType: !40, size: 64, offset: 1472)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !94, file: !95, line: 96, baseType: !37, size: 32, offset: 1536)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !94, file: !95, line: 98, baseType: !141, size: 160, offset: 1568)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 20)
!144 = !DILocalVariable(name: "__cnt", scope: !89, file: !6, line: 644, type: !40)
!145 = !DILocalVariable(name: "url_program", scope: !69, file: !6, line: 648, type: !43)
!146 = !DILocalVariable(name: "__ptr", scope: !147, file: !6, line: 686, type: !43)
!147 = distinct !DILexicalBlock(scope: !69, file: !6, line: 686, column: 3)
!148 = !DILocalVariable(name: "__stream", scope: !147, file: !6, line: 686, type: !91)
!149 = !DILocalVariable(name: "__cnt", scope: !147, file: !6, line: 686, type: !40)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "term_signal", scope: !2, file: !3, line: 89, type: !37, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "term_sig", scope: !2, file: !154, line: 6, type: !155, isLocal: true, isDefinition: true)
!154 = !DIFile(filename: "src/term-sig.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d5de988e1d621d74adbec0ff67a5bdb7")
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 704, elements: !157)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!157 = !{!158}
!158 = !DISubrange(count: 22)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 2048, elements: !169)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !162, line: 50, size: 256, elements: !163)
!162 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!163 = !{!164, !165, !166, !168}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !161, file: !162, line: 52, baseType: !43, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !161, file: !162, line: 55, baseType: !37, size: 32, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !161, file: !162, line: 56, baseType: !167, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !161, file: !162, line: 57, baseType: !37, size: 32, offset: 192)
!169 = !{!170}
!170 = !DISubrange(count: 8)
!171 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!172 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!173 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!174 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "Version", scope: !177, file: !178, line: 3, type: !43, isLocal: false, isDefinition: true)
!177 = distinct !DICompileUnit(language: DW_LANG_C99, file: !178, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !179, splitDebugInlining: false, nameTableKind: None)
!178 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!179 = !{!175}
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "file_name", scope: !182, file: !183, line: 45, type: !43, isLocal: true, isDefinition: true)
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !184, splitDebugInlining: false, nameTableKind: None)
!183 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!184 = !{!180, !185}
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !182, file: !183, line: 55, type: !60, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !189, file: !190, line: 66, type: !225, isLocal: false, isDefinition: true)
!189 = distinct !DICompileUnit(language: DW_LANG_C99, file: !190, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !191, globals: !192, splitDebugInlining: false, nameTableKind: None)
!190 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!191 = !{!31, !45}
!192 = !{!193, !219, !187, !221, !223}
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "old_file_name", scope: !195, file: !190, line: 304, type: !43, isLocal: true, isDefinition: true)
!195 = distinct !DISubprogram(name: "verror_at_line", scope: !190, file: !190, line: 298, type: !196, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !212)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !37, !37, !43, !7, !43, !198}
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !199, line: 52, baseType: !200)
!199 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !201, line: 32, baseType: !202)
!201 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !203, baseType: !204)
!203 = !DIFile(filename: "lib/error.c", directory: "/src")
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !205, size: 256, elements: !206)
!205 = !DINamespace(name: "std", scope: null)
!206 = !{!207, !208, !209, !210, !211}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !204, file: !203, baseType: !31, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !204, file: !203, baseType: !31, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !204, file: !203, baseType: !31, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !204, file: !203, baseType: !37, size: 32, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !204, file: !203, baseType: !37, size: 32, offset: 224)
!212 = !{!213, !214, !215, !216, !217, !218}
!213 = !DILocalVariable(name: "status", arg: 1, scope: !195, file: !190, line: 298, type: !37)
!214 = !DILocalVariable(name: "errnum", arg: 2, scope: !195, file: !190, line: 298, type: !37)
!215 = !DILocalVariable(name: "file_name", arg: 3, scope: !195, file: !190, line: 298, type: !43)
!216 = !DILocalVariable(name: "line_number", arg: 4, scope: !195, file: !190, line: 298, type: !7)
!217 = !DILocalVariable(name: "message", arg: 5, scope: !195, file: !190, line: 298, type: !43)
!218 = !DILocalVariable(name: "args", arg: 6, scope: !195, file: !190, line: 298, type: !198)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "old_line_number", scope: !195, file: !190, line: 305, type: !7, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "error_message_count", scope: !189, file: !190, line: 69, type: !7, isLocal: false, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !189, file: !190, line: 295, type: !37, isLocal: false, isDefinition: true)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{null}
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "program_name", scope: !230, file: !231, line: 31, type: !43, isLocal: false, isDefinition: true)
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !232, globals: !233, splitDebugInlining: false, nameTableKind: None)
!231 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!232 = !{!29}
!233 = !{!228}
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "utf07FF", scope: !236, file: !237, line: 46, type: !267, isLocal: true, isDefinition: true)
!236 = distinct !DISubprogram(name: "proper_name_lite", scope: !237, file: !237, line: 38, type: !238, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !242)
!237 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!238 = !DISubroutineType(types: !239)
!239 = !{!43, !43, !43}
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !241, splitDebugInlining: false, nameTableKind: None)
!241 = !{!234}
!242 = !{!243, !244, !245, !246, !251}
!243 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !236, file: !237, line: 38, type: !43)
!244 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !236, file: !237, line: 38, type: !43)
!245 = !DILocalVariable(name: "translation", scope: !236, file: !237, line: 40, type: !43)
!246 = !DILocalVariable(name: "w", scope: !236, file: !237, line: 47, type: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !248, line: 37, baseType: !249)
!248 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !54, line: 57, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !54, line: 42, baseType: !7)
!251 = !DILocalVariable(name: "mbs", scope: !236, file: !237, line: 48, type: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !253, line: 6, baseType: !254)
!253 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !255, line: 21, baseType: !256)
!255 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !255, line: 13, size: 64, elements: !257)
!257 = !{!258, !259}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !256, file: !255, line: 15, baseType: !37, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !256, file: !255, line: 20, baseType: !260, size: 32, offset: 32)
!260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !256, file: !255, line: 16, size: 32, elements: !261)
!261 = !{!262, !263}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !260, file: !255, line: 18, baseType: !7, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !260, file: !255, line: 19, baseType: !264, size: 32)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 4)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 16, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 2)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !272, file: !273, line: 76, type: !353, isLocal: false, isDefinition: true)
!272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !273, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !274, retainedTypes: !294, globals: !295, splitDebugInlining: false, nameTableKind: None)
!273 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!274 = !{!275, !289, !13}
!275 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !276, line: 42, baseType: !7, size: 32, elements: !277)
!276 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288}
!278 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!279 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!280 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!281 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!282 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!283 = !DIEnumerator(name: "c_quoting_style", value: 5)
!284 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!285 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!286 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!287 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!288 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!289 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !276, line: 254, baseType: !7, size: 32, elements: !290)
!290 = !{!291, !292, !293}
!291 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!292 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!293 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!294 = !{!37, !39, !40}
!295 = !{!270, !296, !302, !312, !314, !319, !342, !349, !351}
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !272, file: !273, line: 92, type: !298, isLocal: false, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 320, elements: !300)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!300 = !{!301}
!301 = !DISubrange(count: 10)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !272, file: !273, line: 1040, type: !304, isLocal: false, isDefinition: true)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !273, line: 56, size: 448, elements: !305)
!305 = !{!306, !307, !308, !310, !311}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !304, file: !273, line: 59, baseType: !275, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !273, line: 62, baseType: !37, size: 32, offset: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !304, file: !273, line: 66, baseType: !309, size: 256, offset: 64)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !169)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !304, file: !273, line: 69, baseType: !43, size: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !304, file: !273, line: 72, baseType: !43, size: 64, offset: 384)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !272, file: !273, line: 107, type: !304, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "slot0", scope: !272, file: !273, line: 831, type: !316, isLocal: true, isDefinition: true)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2048, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 256)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "quote", scope: !321, file: !273, line: 228, type: !340, isLocal: true, isDefinition: true)
!321 = distinct !DISubprogram(name: "gettext_quote", scope: !273, file: !273, line: 197, type: !322, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !324)
!322 = !DISubroutineType(types: !323)
!323 = !{!43, !43, !275}
!324 = !{!325, !326, !327, !328, !329}
!325 = !DILocalVariable(name: "msgid", arg: 1, scope: !321, file: !273, line: 197, type: !43)
!326 = !DILocalVariable(name: "s", arg: 2, scope: !321, file: !273, line: 197, type: !275)
!327 = !DILocalVariable(name: "translation", scope: !321, file: !273, line: 199, type: !43)
!328 = !DILocalVariable(name: "w", scope: !321, file: !273, line: 229, type: !247)
!329 = !DILocalVariable(name: "mbs", scope: !321, file: !273, line: 230, type: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !253, line: 6, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !255, line: 21, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !255, line: 13, size: 64, elements: !333)
!333 = !{!334, !335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !332, file: !255, line: 15, baseType: !37, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !332, file: !255, line: 20, baseType: !336, size: 32, offset: 32)
!336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !332, file: !255, line: 16, size: 32, elements: !337)
!337 = !{!338, !339}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !336, file: !255, line: 18, baseType: !7, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !336, file: !255, line: 19, baseType: !264, size: 32)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, elements: !341)
!341 = !{!269, !266}
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(name: "slotvec", scope: !272, file: !273, line: 834, type: !344, isLocal: true, isDefinition: true)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !273, line: 823, size: 128, elements: !346)
!346 = !{!347, !348}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !345, file: !273, line: 825, baseType: !40, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !345, file: !273, line: 826, baseType: !29, size: 64, offset: 64)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(name: "nslots", scope: !272, file: !273, line: 832, type: !37, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(name: "slotvec0", scope: !272, file: !273, line: 833, type: !345, isLocal: true, isDefinition: true)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 704, elements: !355)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!355 = !{!356}
!356 = !DISubrange(count: 11)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(name: "numname_table", scope: !359, file: !360, line: 43, type: !363, isLocal: true, isDefinition: true)
!359 = distinct !DICompileUnit(language: DW_LANG_C99, file: !360, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !361, globals: !362, splitDebugInlining: false, nameTableKind: None)
!360 = !DIFile(filename: "lib/sig2str.c", directory: "/src", checksumkind: CSK_MD5, checksum: "828136ef7ede39101f7053cda7cea598")
!361 = !{!7}
!362 = !{!357}
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 3360, elements: !369)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numname", file: !360, line: 43, size: 96, elements: !365)
!365 = !{!366, !367}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !364, file: !360, line: 43, baseType: !37, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !364, file: !360, line: 43, baseType: !368, size: 64, offset: 32)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, elements: !169)
!369 = !{!370}
!370 = !DISubrange(count: 35)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !373, file: !374, line: 26, type: !376, isLocal: false, isDefinition: true)
!373 = distinct !DICompileUnit(language: DW_LANG_C99, file: !374, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !375, splitDebugInlining: false, nameTableKind: None)
!374 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!375 = !{!371}
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 376, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 47)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(name: "exit_failure", scope: !381, file: !382, line: 24, type: !384, isLocal: false, isDefinition: true)
!381 = distinct !DICompileUnit(language: DW_LANG_C99, file: !382, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !383, splitDebugInlining: false, nameTableKind: None)
!382 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!383 = !{!379}
!384 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !37)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !387, file: !388, line: 58, type: !412, isLocal: true, isDefinition: true)
!387 = distinct !DICompileUnit(language: DW_LANG_C99, file: !388, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !389, globals: !411, splitDebugInlining: false, nameTableKind: None)
!388 = !DIFile(filename: "lib/c-strtod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5149e55c3d66a821d48006aa16ce6f10")
!389 = !{!29, !390}
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !391, line: 24, baseType: !392)
!391 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/locale_t.h", directory: "", checksumkind: CSK_MD5, checksum: "4752f26e930c42056083e96227ff0057")
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !393, line: 41, baseType: !394)
!393 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__locale_t.h", directory: "", checksumkind: CSK_MD5, checksum: "79eea70c97dfcbc51f94cdf9446ea8a8")
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !393, line: 27, size: 1856, elements: !396)
!396 = !{!397, !403, !406, !408, !409}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !395, file: !393, line: 30, baseType: !398, size: 832)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 832, elements: !401)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !393, line: 30, flags: DIFlagFwdDecl)
!401 = !{!402}
!402 = !DISubrange(count: 13)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !395, file: !393, line: 33, baseType: !404, size: 64, offset: 832)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !395, file: !393, line: 34, baseType: !407, size: 64, offset: 896)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !395, file: !393, line: 35, baseType: !407, size: 64, offset: 960)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !395, file: !393, line: 38, baseType: !410, size: 832, offset: 1024)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 832, elements: !401)
!411 = !{!385}
!412 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !390)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(name: "internal_state", scope: !415, file: !416, line: 97, type: !419, isLocal: true, isDefinition: true)
!415 = distinct !DICompileUnit(language: DW_LANG_C99, file: !416, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !417, globals: !418, splitDebugInlining: false, nameTableKind: None)
!416 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!417 = !{!31, !40, !45}
!418 = !{!413}
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !253, line: 6, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !255, line: 21, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !255, line: 13, size: 64, elements: !422)
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !421, file: !255, line: 15, baseType: !37, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !421, file: !255, line: 20, baseType: !425, size: 32, offset: 32)
!425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !421, file: !255, line: 16, size: 32, elements: !426)
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !425, file: !255, line: 18, baseType: !7, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !425, file: !255, line: 19, baseType: !264, size: 32)
!429 = distinct !DICompileUnit(language: DW_LANG_C99, file: !430, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!430 = !DIFile(filename: "src/operand2sig.c", directory: "/src", checksumkind: CSK_MD5, checksum: "46beb430284fcb3f5c7434dd479a51b3")
!431 = distinct !DICompileUnit(language: DW_LANG_C99, file: !432, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!432 = !DIFile(filename: "lib/cl-strtod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a67239aa557b1854772fcd1589240f00")
!433 = distinct !DICompileUnit(language: DW_LANG_C99, file: !434, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !435, retainedTypes: !440, splitDebugInlining: false, nameTableKind: None)
!434 = !DIFile(filename: "lib/dtotimespec.c", directory: "/src", checksumkind: CSK_MD5, checksum: "863541a7a9cbed8b745823733251add6")
!435 = !{!436}
!436 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !437, line: 44, baseType: !7, size: 32, elements: !438)
!437 = !DIFile(filename: "./lib/timespec.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f2321879fdee55a014e00353b7423449")
!438 = !{!439}
!439 = !DIEnumerator(name: "TIMESPEC_HZ", value: 1000000000)
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !442, line: 10, baseType: !443)
!442 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !54, line: 160, baseType: !118)
!444 = distinct !DICompileUnit(language: DW_LANG_C99, file: !445, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!445 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!446 = distinct !DICompileUnit(language: DW_LANG_C99, file: !447, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !448, retainedTypes: !452, splitDebugInlining: false, nameTableKind: None)
!447 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!448 = !{!449}
!449 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !447, line: 40, baseType: !7, size: 32, elements: !450)
!450 = !{!451}
!451 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!452 = !{!31}
!453 = distinct !DICompileUnit(language: DW_LANG_C99, file: !454, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !455, retainedTypes: !486, splitDebugInlining: false, nameTableKind: None)
!454 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!455 = !{!456, !468}
!456 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !457, file: !454, line: 188, baseType: !7, size: 32, elements: !466)
!457 = distinct !DISubprogram(name: "x2nrealloc", scope: !454, file: !454, line: 176, type: !458, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !461)
!458 = !DISubroutineType(types: !459)
!459 = !{!31, !31, !460, !40}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!461 = !{!462, !463, !464, !465}
!462 = !DILocalVariable(name: "p", arg: 1, scope: !457, file: !454, line: 176, type: !31)
!463 = !DILocalVariable(name: "pn", arg: 2, scope: !457, file: !454, line: 176, type: !460)
!464 = !DILocalVariable(name: "s", arg: 3, scope: !457, file: !454, line: 176, type: !40)
!465 = !DILocalVariable(name: "n", scope: !457, file: !454, line: 178, type: !40)
!466 = !{!467}
!467 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!468 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !469, file: !454, line: 228, baseType: !7, size: 32, elements: !466)
!469 = distinct !DISubprogram(name: "xpalloc", scope: !454, file: !454, line: 223, type: !470, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !476)
!470 = !DISubroutineType(types: !471)
!471 = !{!31, !31, !472, !473, !475, !473}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !474, line: 130, baseType: !475)
!474 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !41, line: 35, baseType: !118)
!476 = !{!477, !478, !479, !480, !481, !482, !483, !484, !485}
!477 = !DILocalVariable(name: "pa", arg: 1, scope: !469, file: !454, line: 223, type: !31)
!478 = !DILocalVariable(name: "pn", arg: 2, scope: !469, file: !454, line: 223, type: !472)
!479 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !469, file: !454, line: 223, type: !473)
!480 = !DILocalVariable(name: "n_max", arg: 4, scope: !469, file: !454, line: 223, type: !475)
!481 = !DILocalVariable(name: "s", arg: 5, scope: !469, file: !454, line: 223, type: !473)
!482 = !DILocalVariable(name: "n0", scope: !469, file: !454, line: 230, type: !473)
!483 = !DILocalVariable(name: "n", scope: !469, file: !454, line: 237, type: !473)
!484 = !DILocalVariable(name: "nbytes", scope: !469, file: !454, line: 248, type: !473)
!485 = !DILocalVariable(name: "adjusted_nbytes", scope: !469, file: !454, line: 252, type: !473)
!486 = !{!29, !31, !60, !118, !42}
!487 = distinct !DICompileUnit(language: DW_LANG_C99, file: !488, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!488 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!489 = distinct !DICompileUnit(language: DW_LANG_C99, file: !490, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!490 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!491 = distinct !DICompileUnit(language: DW_LANG_C99, file: !492, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!492 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!493 = distinct !DICompileUnit(language: DW_LANG_C99, file: !494, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !452, splitDebugInlining: false, nameTableKind: None)
!494 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!495 = distinct !DICompileUnit(language: DW_LANG_C99, file: !496, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !452, splitDebugInlining: false, nameTableKind: None)
!496 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!497 = distinct !DICompileUnit(language: DW_LANG_C99, file: !498, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !499, splitDebugInlining: false, nameTableKind: None)
!498 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!499 = !{!60, !42, !31}
!500 = distinct !DICompileUnit(language: DW_LANG_C99, file: !501, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!501 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!502 = distinct !DICompileUnit(language: DW_LANG_C99, file: !503, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!503 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!504 = distinct !DICompileUnit(language: DW_LANG_C99, file: !505, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !452, splitDebugInlining: false, nameTableKind: None)
!505 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!506 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!507 = !{i32 7, !"Dwarf Version", i32 5}
!508 = !{i32 2, !"Debug Info Version", i32 3}
!509 = !{i32 1, !"wchar_size", i32 4}
!510 = !{i32 1, !"branch-target-enforcement", i32 0}
!511 = !{i32 1, !"sign-return-address", i32 0}
!512 = !{i32 1, !"sign-return-address-all", i32 0}
!513 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!514 = !{i32 7, !"PIC Level", i32 2}
!515 = !{i32 7, !"PIE Level", i32 2}
!516 = !{i32 7, !"uwtable", i32 1}
!517 = !{i32 7, !"frame-pointer", i32 1}
!518 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 264, type: !35, scopeLine: 265, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !519)
!519 = !{!520}
!520 = !DILocalVariable(name: "status", arg: 1, scope: !518, file: !3, line: 264, type: !37)
!521 = !DILocation(line: 0, scope: !518)
!522 = !DILocation(line: 266, column: 14, scope: !523)
!523 = distinct !DILexicalBlock(scope: !518, file: !3, line: 266, column: 7)
!524 = !DILocation(line: 266, column: 7, scope: !518)
!525 = !DILocation(line: 267, column: 5, scope: !526)
!526 = distinct !DILexicalBlock(scope: !523, file: !3, line: 267, column: 5)
!527 = !{!528, !528, i64 0}
!528 = !{!"any pointer", !529, i64 0}
!529 = !{!"omnipotent char", !530, i64 0}
!530 = !{!"Simple C/C++ TBAA"}
!531 = !DILocation(line: 270, column: 7, scope: !532)
!532 = distinct !DILexicalBlock(scope: !523, file: !3, line: 269, column: 5)
!533 = !DILocation(line: 273, column: 7, scope: !532)
!534 = !DILocation(line: 736, column: 3, scope: !535, inlinedAt: !537)
!535 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 734, type: !226, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !536)
!536 = !{}
!537 = distinct !DILocation(line: 277, column: 7, scope: !532)
!538 = !DILocation(line: 279, column: 7, scope: !532)
!539 = !DILocation(line: 285, column: 7, scope: !532)
!540 = !DILocation(line: 290, column: 7, scope: !532)
!541 = !DILocation(line: 295, column: 7, scope: !532)
!542 = !DILocation(line: 301, column: 7, scope: !532)
!543 = !DILocation(line: 306, column: 7, scope: !532)
!544 = !DILocation(line: 307, column: 7, scope: !532)
!545 = !DILocation(line: 309, column: 7, scope: !532)
!546 = !DILocation(line: 314, column: 7, scope: !532)
!547 = !DILocation(line: 320, column: 7, scope: !532)
!548 = !DILocalVariable(name: "program", arg: 1, scope: !549, file: !6, line: 836, type: !43)
!549 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 836, type: !550, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !552)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !43}
!552 = !{!548, !553, !562, !563, !565, !566}
!553 = !DILocalVariable(name: "infomap", scope: !549, file: !6, line: 838, type: !554)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 896, elements: !560)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !549, file: !6, line: 838, size: 128, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !556, file: !6, line: 838, baseType: !43, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !556, file: !6, line: 838, baseType: !43, size: 64, offset: 64)
!560 = !{!561}
!561 = !DISubrange(count: 7)
!562 = !DILocalVariable(name: "node", scope: !549, file: !6, line: 848, type: !43)
!563 = !DILocalVariable(name: "map_prog", scope: !549, file: !6, line: 849, type: !564)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!565 = !DILocalVariable(name: "lc_messages", scope: !549, file: !6, line: 861, type: !43)
!566 = !DILocalVariable(name: "url_program", scope: !549, file: !6, line: 874, type: !43)
!567 = !DILocation(line: 0, scope: !549, inlinedAt: !568)
!568 = distinct !DILocation(line: 330, column: 7, scope: !532)
!569 = !DILocation(line: 838, column: 3, scope: !549, inlinedAt: !568)
!570 = !DILocation(line: 838, column: 67, scope: !549, inlinedAt: !568)
!571 = !DILocation(line: 849, column: 36, scope: !549, inlinedAt: !568)
!572 = !DILocation(line: 851, column: 3, scope: !549, inlinedAt: !568)
!573 = !DILocalVariable(name: "__s1", arg: 1, scope: !574, file: !575, line: 1359, type: !43)
!574 = distinct !DISubprogram(name: "streq", scope: !575, file: !575, line: 1359, type: !576, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !578)
!575 = !DIFile(filename: "./lib/string.h", directory: "/src")
!576 = !DISubroutineType(types: !577)
!577 = !{!60, !43, !43}
!578 = !{!573, !579}
!579 = !DILocalVariable(name: "__s2", arg: 2, scope: !574, file: !575, line: 1359, type: !43)
!580 = !DILocation(line: 0, scope: !574, inlinedAt: !581)
!581 = distinct !DILocation(line: 851, column: 33, scope: !549, inlinedAt: !568)
!582 = !DILocation(line: 1361, column: 11, scope: !574, inlinedAt: !581)
!583 = !DILocation(line: 1361, column: 10, scope: !574, inlinedAt: !581)
!584 = !DILocation(line: 852, column: 13, scope: !549, inlinedAt: !568)
!585 = !DILocation(line: 851, column: 20, scope: !549, inlinedAt: !568)
!586 = !{!587, !528, i64 0}
!587 = !{!"infomap", !528, i64 0, !528, i64 8}
!588 = !DILocation(line: 851, column: 10, scope: !549, inlinedAt: !568)
!589 = !DILocation(line: 851, column: 28, scope: !549, inlinedAt: !568)
!590 = distinct !{!590, !572, !584, !591}
!591 = !{!"llvm.loop.mustprogress"}
!592 = !DILocation(line: 854, column: 17, scope: !593, inlinedAt: !568)
!593 = distinct !DILexicalBlock(scope: !549, file: !6, line: 854, column: 7)
!594 = !{!587, !528, i64 8}
!595 = !DILocation(line: 854, column: 7, scope: !593, inlinedAt: !568)
!596 = !DILocation(line: 854, column: 7, scope: !549, inlinedAt: !568)
!597 = !DILocation(line: 857, column: 3, scope: !549, inlinedAt: !568)
!598 = !DILocation(line: 861, column: 29, scope: !549, inlinedAt: !568)
!599 = !DILocation(line: 862, column: 7, scope: !600, inlinedAt: !568)
!600 = distinct !DILexicalBlock(scope: !549, file: !6, line: 862, column: 7)
!601 = !DILocation(line: 862, column: 19, scope: !600, inlinedAt: !568)
!602 = !DILocation(line: 862, column: 22, scope: !600, inlinedAt: !568)
!603 = !DILocation(line: 862, column: 7, scope: !549, inlinedAt: !568)
!604 = !DILocation(line: 868, column: 7, scope: !605, inlinedAt: !568)
!605 = distinct !DILexicalBlock(scope: !600, file: !6, line: 863, column: 5)
!606 = !DILocation(line: 870, column: 5, scope: !605, inlinedAt: !568)
!607 = !DILocation(line: 0, scope: !574, inlinedAt: !608)
!608 = distinct !DILocation(line: 874, column: 29, scope: !549, inlinedAt: !568)
!609 = !DILocation(line: 875, column: 3, scope: !549, inlinedAt: !568)
!610 = !DILocation(line: 877, column: 3, scope: !549, inlinedAt: !568)
!611 = !DILocation(line: 879, column: 1, scope: !549, inlinedAt: !568)
!612 = !DILocation(line: 332, column: 3, scope: !518)
!613 = !DISubprogram(name: "dcgettext", scope: !614, file: !614, line: 51, type: !615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!614 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!615 = !DISubroutineType(types: !616)
!616 = !{!29, !43, !43, !37}
!617 = !DISubprogram(name: "fputs_unlocked", scope: !199, file: !199, line: 691, type: !618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!618 = !DISubroutineType(types: !619)
!619 = !{!37, !620, !621}
!620 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!621 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!622 = !DILocation(line: 0, scope: !69)
!623 = !DILocation(line: 581, column: 7, scope: !77)
!624 = !{!625, !625, i64 0}
!625 = !{!"int", !529, i64 0}
!626 = !DILocation(line: 581, column: 19, scope: !77)
!627 = !DILocation(line: 581, column: 7, scope: !69)
!628 = !DILocation(line: 585, column: 26, scope: !76)
!629 = !DILocation(line: 0, scope: !76)
!630 = !DILocation(line: 586, column: 23, scope: !76)
!631 = !DILocation(line: 586, column: 28, scope: !76)
!632 = !DILocation(line: 586, column: 32, scope: !76)
!633 = !{!529, !529, i64 0}
!634 = !DILocation(line: 586, column: 38, scope: !76)
!635 = !DILocation(line: 0, scope: !574, inlinedAt: !636)
!636 = distinct !DILocation(line: 586, column: 41, scope: !76)
!637 = !DILocation(line: 1361, column: 11, scope: !574, inlinedAt: !636)
!638 = !DILocation(line: 1361, column: 10, scope: !574, inlinedAt: !636)
!639 = !DILocation(line: 586, column: 19, scope: !76)
!640 = !DILocation(line: 587, column: 5, scope: !76)
!641 = !DILocation(line: 588, column: 7, scope: !642)
!642 = distinct !DILexicalBlock(scope: !69, file: !6, line: 588, column: 7)
!643 = !DILocation(line: 588, column: 7, scope: !69)
!644 = !DILocation(line: 590, column: 7, scope: !645)
!645 = distinct !DILexicalBlock(scope: !642, file: !6, line: 589, column: 5)
!646 = !DILocation(line: 591, column: 7, scope: !645)
!647 = !DILocation(line: 595, column: 37, scope: !69)
!648 = !DILocation(line: 595, column: 35, scope: !69)
!649 = !DILocation(line: 596, column: 29, scope: !69)
!650 = !DILocation(line: 597, column: 8, scope: !84)
!651 = !DILocation(line: 597, column: 7, scope: !69)
!652 = !DILocation(line: 604, column: 24, scope: !83)
!653 = !DILocation(line: 604, column: 12, scope: !84)
!654 = !DILocation(line: 0, scope: !82)
!655 = !DILocation(line: 610, column: 16, scope: !82)
!656 = !DILocation(line: 610, column: 7, scope: !82)
!657 = !DILocation(line: 611, column: 21, scope: !82)
!658 = !{!659, !659, i64 0}
!659 = !{!"short", !529, i64 0}
!660 = !DILocation(line: 611, column: 19, scope: !82)
!661 = !DILocation(line: 611, column: 16, scope: !82)
!662 = !DILocation(line: 610, column: 30, scope: !82)
!663 = distinct !{!663, !656, !657, !591}
!664 = !DILocation(line: 612, column: 18, scope: !665)
!665 = distinct !DILexicalBlock(scope: !82, file: !6, line: 612, column: 11)
!666 = !DILocation(line: 612, column: 11, scope: !82)
!667 = !DILocation(line: 620, column: 23, scope: !69)
!668 = !DILocation(line: 625, column: 39, scope: !69)
!669 = !DILocation(line: 626, column: 3, scope: !69)
!670 = !DILocation(line: 626, column: 10, scope: !69)
!671 = !DILocation(line: 626, column: 21, scope: !69)
!672 = !DILocation(line: 628, column: 44, scope: !673)
!673 = distinct !DILexicalBlock(scope: !674, file: !6, line: 628, column: 11)
!674 = distinct !DILexicalBlock(scope: !69, file: !6, line: 627, column: 5)
!675 = !DILocation(line: 628, column: 32, scope: !673)
!676 = !DILocation(line: 628, column: 49, scope: !673)
!677 = !DILocation(line: 628, column: 11, scope: !674)
!678 = !DILocation(line: 630, column: 11, scope: !679)
!679 = distinct !DILexicalBlock(scope: !674, file: !6, line: 630, column: 11)
!680 = !DILocation(line: 630, column: 11, scope: !674)
!681 = !DILocation(line: 632, column: 26, scope: !682)
!682 = distinct !DILexicalBlock(scope: !683, file: !6, line: 632, column: 15)
!683 = distinct !DILexicalBlock(scope: !679, file: !6, line: 631, column: 9)
!684 = !DILocation(line: 632, column: 34, scope: !682)
!685 = !DILocation(line: 632, column: 37, scope: !682)
!686 = !DILocation(line: 632, column: 15, scope: !683)
!687 = !DILocation(line: 636, column: 29, scope: !688)
!688 = distinct !DILexicalBlock(scope: !683, file: !6, line: 636, column: 15)
!689 = !DILocation(line: 640, column: 16, scope: !674)
!690 = distinct !{!690, !669, !691, !591}
!691 = !DILocation(line: 641, column: 5, scope: !69)
!692 = !DILocation(line: 644, column: 3, scope: !69)
!693 = !DILocation(line: 0, scope: !574, inlinedAt: !694)
!694 = distinct !DILocation(line: 648, column: 31, scope: !69)
!695 = !DILocation(line: 0, scope: !574, inlinedAt: !696)
!696 = distinct !DILocation(line: 649, column: 31, scope: !69)
!697 = !DILocation(line: 0, scope: !574, inlinedAt: !698)
!698 = distinct !DILocation(line: 650, column: 31, scope: !69)
!699 = !DILocation(line: 0, scope: !574, inlinedAt: !700)
!700 = distinct !DILocation(line: 651, column: 31, scope: !69)
!701 = !DILocation(line: 0, scope: !574, inlinedAt: !702)
!702 = distinct !DILocation(line: 652, column: 31, scope: !69)
!703 = !DILocation(line: 0, scope: !574, inlinedAt: !704)
!704 = distinct !DILocation(line: 653, column: 31, scope: !69)
!705 = !DILocation(line: 0, scope: !574, inlinedAt: !706)
!706 = distinct !DILocation(line: 654, column: 31, scope: !69)
!707 = !DILocation(line: 0, scope: !574, inlinedAt: !708)
!708 = distinct !DILocation(line: 655, column: 31, scope: !69)
!709 = !DILocation(line: 0, scope: !574, inlinedAt: !710)
!710 = distinct !DILocation(line: 656, column: 31, scope: !69)
!711 = !DILocation(line: 0, scope: !574, inlinedAt: !712)
!712 = distinct !DILocation(line: 657, column: 31, scope: !69)
!713 = !DILocation(line: 663, column: 7, scope: !714)
!714 = distinct !DILexicalBlock(scope: !69, file: !6, line: 663, column: 7)
!715 = !DILocation(line: 664, column: 7, scope: !714)
!716 = !DILocation(line: 664, column: 10, scope: !714)
!717 = !DILocation(line: 663, column: 7, scope: !69)
!718 = !DILocation(line: 669, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !714, file: !6, line: 665, column: 5)
!720 = !DILocation(line: 671, column: 5, scope: !719)
!721 = !DILocation(line: 676, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !714, file: !6, line: 673, column: 5)
!723 = !DILocation(line: 679, column: 3, scope: !69)
!724 = !DILocation(line: 683, column: 3, scope: !69)
!725 = !DILocation(line: 686, column: 3, scope: !69)
!726 = !DILocation(line: 688, column: 3, scope: !69)
!727 = !DILocation(line: 691, column: 3, scope: !69)
!728 = !DILocation(line: 695, column: 3, scope: !69)
!729 = !DILocation(line: 696, column: 1, scope: !69)
!730 = !DISubprogram(name: "setlocale", scope: !731, file: !731, line: 122, type: !732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!731 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!732 = !DISubroutineType(types: !733)
!733 = !{!29, !37, !43}
!734 = !DISubprogram(name: "getenv", scope: !735, file: !735, line: 641, type: !736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!735 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!736 = !DISubroutineType(types: !737)
!737 = !{!29, !43}
!738 = !DISubprogram(name: "fwrite_unlocked", scope: !199, file: !199, line: 704, type: !739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!739 = !DISubroutineType(types: !740)
!740 = !{!40, !741, !40, !40, !621}
!741 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!744 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 508, type: !745, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !748)
!745 = !DISubroutineType(types: !746)
!746 = !{!37, !37, !747}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!748 = !{!749, !750, !751, !752, !753, !764, !765, !769, !771, !772}
!749 = !DILocalVariable(name: "argc", arg: 1, scope: !744, file: !3, line: 508, type: !37)
!750 = !DILocalVariable(name: "argv", arg: 2, scope: !744, file: !3, line: 508, type: !747)
!751 = !DILocalVariable(name: "timeout", scope: !744, file: !3, line: 510, type: !57)
!752 = !DILocalVariable(name: "c", scope: !744, file: !3, line: 511, type: !37)
!753 = !DILocalVariable(name: "orig_set", scope: !744, file: !3, line: 586, type: !754)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !755, line: 7, baseType: !756)
!755 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "c2b978aaf49d5c0e2b1e9c2e1b7f7848")
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !757, line: 8, baseType: !758)
!757 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "acc6b14c0967857fec362a8d433e1cf2")
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !757, line: 5, size: 1024, elements: !759)
!759 = !{!760}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !758, file: !757, line: 7, baseType: !761, size: 1024)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1024, elements: !762)
!762 = !{!763}
!763 = !DISubrange(count: 16)
!764 = !DILocalVariable(name: "timeout_pid", scope: !744, file: !3, line: 593, type: !51)
!765 = !DILocalVariable(name: "exit_status", scope: !766, file: !3, line: 632, type: !37)
!766 = distinct !DILexicalBlock(scope: !767, file: !3, line: 607, column: 5)
!767 = distinct !DILexicalBlock(scope: !768, file: !3, line: 606, column: 12)
!768 = distinct !DILexicalBlock(scope: !744, file: !3, line: 601, column: 7)
!769 = !DILocalVariable(name: "wait_result", scope: !770, file: !3, line: 638, type: !51)
!770 = distinct !DILexicalBlock(scope: !767, file: !3, line: 637, column: 5)
!771 = !DILocalVariable(name: "status", scope: !770, file: !3, line: 639, type: !37)
!772 = !DILocalVariable(name: "sig", scope: !773, file: !3, line: 662, type: !37)
!773 = distinct !DILexicalBlock(scope: !774, file: !3, line: 661, column: 13)
!774 = distinct !DILexicalBlock(scope: !775, file: !3, line: 660, column: 20)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 658, column: 15)
!776 = distinct !DILexicalBlock(scope: !777, file: !3, line: 657, column: 9)
!777 = distinct !DILexicalBlock(scope: !770, file: !3, line: 650, column: 11)
!778 = !DILocation(line: 0, scope: !744)
!779 = !DILocation(line: 514, column: 21, scope: !744)
!780 = !DILocation(line: 514, column: 3, scope: !744)
!781 = !DILocation(line: 515, column: 3, scope: !744)
!782 = !DILocation(line: 516, column: 3, scope: !744)
!783 = !DILocation(line: 517, column: 3, scope: !744)
!784 = !DILocalVariable(name: "status", arg: 1, scope: !785, file: !6, line: 102, type: !37)
!785 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 102, type: !35, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !786)
!786 = !{!784}
!787 = !DILocation(line: 0, scope: !785, inlinedAt: !788)
!788 = distinct !DILocation(line: 519, column: 3, scope: !744)
!789 = !DILocation(line: 105, column: 18, scope: !790, inlinedAt: !788)
!790 = distinct !DILexicalBlock(scope: !785, file: !6, line: 104, column: 7)
!791 = !DILocation(line: 520, column: 3, scope: !744)
!792 = !DILocation(line: 522, column: 3, scope: !744)
!793 = !DILocation(line: 522, column: 15, scope: !744)
!794 = !DILocation(line: 528, column: 22, scope: !795)
!795 = distinct !DILexicalBlock(scope: !796, file: !3, line: 526, column: 9)
!796 = distinct !DILexicalBlock(scope: !744, file: !3, line: 524, column: 5)
!797 = !DILocation(line: 529, column: 11, scope: !795)
!798 = !DILocation(line: 532, column: 40, scope: !795)
!799 = !DILocation(line: 532, column: 24, scope: !795)
!800 = !DILocation(line: 532, column: 22, scope: !795)
!801 = !{!802, !802, i64 0}
!802 = !{!"double", !529, i64 0}
!803 = !DILocation(line: 533, column: 11, scope: !795)
!804 = !DILocation(line: 536, column: 27, scope: !795)
!805 = !DILocation(line: 537, column: 11, scope: !795)
!806 = !DILocation(line: 540, column: 38, scope: !795)
!807 = !DILocation(line: 540, column: 25, scope: !795)
!808 = !DILocation(line: 540, column: 23, scope: !795)
!809 = !DILocation(line: 541, column: 27, scope: !810)
!810 = distinct !DILexicalBlock(scope: !795, file: !3, line: 541, column: 15)
!811 = !DILocation(line: 541, column: 15, scope: !795)
!812 = distinct !{!812, !792, !813, !591}
!813 = !DILocation(line: 557, column: 5, scope: !744)
!814 = !DILocation(line: 542, column: 13, scope: !810)
!815 = !DILocation(line: 546, column: 19, scope: !795)
!816 = !DILocation(line: 547, column: 11, scope: !795)
!817 = !DILocation(line: 549, column: 9, scope: !795)
!818 = !DILocation(line: 551, column: 9, scope: !795)
!819 = !DILocation(line: 554, column: 11, scope: !795)
!820 = !DILocation(line: 559, column: 14, scope: !821)
!821 = distinct !DILexicalBlock(scope: !744, file: !3, line: 559, column: 7)
!822 = !DILocation(line: 559, column: 12, scope: !821)
!823 = !DILocation(line: 559, column: 21, scope: !821)
!824 = !DILocation(line: 559, column: 7, scope: !744)
!825 = !DILocation(line: 560, column: 5, scope: !821)
!826 = !DILocation(line: 562, column: 40, scope: !744)
!827 = !DILocation(line: 562, column: 29, scope: !744)
!828 = !DILocation(line: 562, column: 13, scope: !744)
!829 = !DILocation(line: 564, column: 11, scope: !744)
!830 = !DILocation(line: 564, column: 8, scope: !744)
!831 = !DILocation(line: 565, column: 13, scope: !744)
!832 = !DILocation(line: 565, column: 11, scope: !744)
!833 = !DILocation(line: 571, column: 8, scope: !834)
!834 = distinct !DILexicalBlock(scope: !744, file: !3, line: 571, column: 7)
!835 = !DILocation(line: 571, column: 7, scope: !744)
!836 = !DILocation(line: 572, column: 5, scope: !834)
!837 = !DILocation(line: 576, column: 20, scope: !744)
!838 = !DILocalVariable(name: "sigterm", arg: 1, scope: !839, file: !3, line: 437, type: !37)
!839 = distinct !DISubprogram(name: "install_cleanup", scope: !3, file: !3, line: 437, type: !35, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !840)
!840 = !{!838, !841, !931, !933}
!841 = !DILocalVariable(name: "sa", scope: !839, file: !3, line: 439, type: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !843, line: 27, size: 1216, elements: !844)
!843 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/sigaction.h", directory: "", checksumkind: CSK_MD5, checksum: "95401d18e887df415f59d7a2cb411c28")
!844 = !{!845, !928, !929, !930}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !842, file: !843, line: 38, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !842, file: !843, line: 31, size: 64, elements: !847)
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !846, file: !843, line: 34, baseType: !32, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !846, file: !843, line: 36, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !37, !853, !31}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !855, line: 124, baseType: !856)
!855 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/siginfo_t.h", directory: "", checksumkind: CSK_MD5, checksum: "023cf7b0ef843da262cf07900eda0ac5")
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !855, line: 36, size: 1024, elements: !857)
!857 = !{!858, !859, !860, !861, !862}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !856, file: !855, line: 38, baseType: !37, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !856, file: !855, line: 40, baseType: !37, size: 32, offset: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !856, file: !855, line: 42, baseType: !37, size: 32, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !856, file: !855, line: 48, baseType: !37, size: 32, offset: 96)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !856, file: !855, line: 123, baseType: !863, size: 896, offset: 128)
!863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !855, line: 51, size: 896, elements: !864)
!864 = !{!865, !869, !875, !887, !893, !902, !917, !922}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !863, file: !855, line: 53, baseType: !866, size: 896)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 896, elements: !867)
!867 = !{!868}
!868 = !DISubrange(count: 28)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !863, file: !855, line: 60, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !863, file: !855, line: 56, size: 64, elements: !871)
!871 = !{!872, !873}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !870, file: !855, line: 58, baseType: !53, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !870, file: !855, line: 59, baseType: !874, size: 32, offset: 32)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !54, line: 146, baseType: !7)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !863, file: !855, line: 68, baseType: !876, size: 128)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !863, file: !855, line: 63, size: 128, elements: !877)
!877 = !{!878, !879, !880}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !876, file: !855, line: 65, baseType: !37, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !876, file: !855, line: 66, baseType: !37, size: 32, offset: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !876, file: !855, line: 67, baseType: !881, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigval_t", file: !882, line: 30, baseType: !883)
!882 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__sigval_t.h", directory: "", checksumkind: CSK_MD5, checksum: "bc7605d16e396c16f725f8da13f6eb20")
!883 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !882, line: 24, size: 64, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !883, file: !882, line: 26, baseType: !37, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !883, file: !882, line: 27, baseType: !31, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !863, file: !855, line: 76, baseType: !888, size: 128)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !863, file: !855, line: 71, size: 128, elements: !889)
!889 = !{!890, !891, !892}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !888, file: !855, line: 73, baseType: !53, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !888, file: !855, line: 74, baseType: !874, size: 32, offset: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !888, file: !855, line: 75, baseType: !881, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !863, file: !855, line: 86, baseType: !894, size: 256)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !863, file: !855, line: 79, size: 256, elements: !895)
!895 = !{!896, !897, !898, !899, !901}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !894, file: !855, line: 81, baseType: !53, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !894, file: !855, line: 82, baseType: !874, size: 32, offset: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !894, file: !855, line: 83, baseType: !37, size: 32, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !894, file: !855, line: 84, baseType: !900, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !54, line: 156, baseType: !118)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !894, file: !855, line: 85, baseType: !900, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !863, file: !855, line: 105, baseType: !903, size: 256)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !863, file: !855, line: 89, size: 256, elements: !904)
!904 = !{!905, !906, !908}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !903, file: !855, line: 91, baseType: !31, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !903, file: !855, line: 93, baseType: !907, size: 16, offset: 64)
!907 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_bounds", scope: !903, file: !855, line: 104, baseType: !909, size: 128, offset: 128)
!909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !903, file: !855, line: 94, size: 128, elements: !910)
!910 = !{!911, !916}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !909, file: !855, line: 101, baseType: !912, size: 128)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !855, line: 97, size: 128, elements: !913)
!913 = !{!914, !915}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !912, file: !855, line: 99, baseType: !31, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !912, file: !855, line: 100, baseType: !31, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !909, file: !855, line: 103, baseType: !250, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !863, file: !855, line: 112, baseType: !918, size: 128)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !863, file: !855, line: 108, size: 128, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !918, file: !855, line: 110, baseType: !118, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !918, file: !855, line: 111, baseType: !37, size: 32, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !863, file: !855, line: 121, baseType: !923, size: 128)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !863, file: !855, line: 116, size: 128, elements: !924)
!924 = !{!925, !926, !927}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !923, file: !855, line: 118, baseType: !31, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !923, file: !855, line: 119, baseType: !37, size: 32, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !923, file: !855, line: 120, baseType: !7, size: 32, offset: 96)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !842, file: !843, line: 46, baseType: !756, size: 1024, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !842, file: !843, line: 49, baseType: !37, size: 32, offset: 1088)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !842, file: !843, line: 52, baseType: !225, size: 64, offset: 1152)
!931 = !DILocalVariable(name: "i", scope: !932, file: !3, line: 445, type: !37)
!932 = distinct !DILexicalBlock(scope: !839, file: !3, line: 445, column: 3)
!933 = !DILocalVariable(name: "s", scope: !934, file: !3, line: 450, type: !37)
!934 = distinct !DILexicalBlock(scope: !839, file: !3, line: 450, column: 3)
!935 = !DILocation(line: 0, scope: !839, inlinedAt: !936)
!936 = distinct !DILocation(line: 576, column: 3, scope: !744)
!937 = !DILocation(line: 439, column: 3, scope: !839, inlinedAt: !936)
!938 = !DILocation(line: 439, column: 20, scope: !839, inlinedAt: !936)
!939 = !DILocation(line: 440, column: 20, scope: !839, inlinedAt: !936)
!940 = !DILocation(line: 440, column: 3, scope: !839, inlinedAt: !936)
!941 = !DILocation(line: 441, column: 6, scope: !839, inlinedAt: !936)
!942 = !DILocation(line: 441, column: 17, scope: !839, inlinedAt: !936)
!943 = !DILocation(line: 442, column: 6, scope: !839, inlinedAt: !936)
!944 = !DILocation(line: 442, column: 15, scope: !839, inlinedAt: !936)
!945 = !{!946, !625, i64 136}
!946 = !{!"sigaction", !529, i64 0, !947, i64 8, !625, i64 136, !528, i64 144}
!947 = !{!"", !529, i64 0}
!948 = !DILocation(line: 0, scope: !932, inlinedAt: !936)
!949 = !DILocation(line: 445, column: 3, scope: !932, inlinedAt: !936)
!950 = !DILocation(line: 450, column: 16, scope: !934, inlinedAt: !936)
!951 = !DILocation(line: 0, scope: !934, inlinedAt: !936)
!952 = !DILocation(line: 450, column: 31, scope: !953, inlinedAt: !936)
!953 = distinct !DILexicalBlock(scope: !934, file: !3, line: 450, column: 3)
!954 = !DILocation(line: 450, column: 28, scope: !953, inlinedAt: !936)
!955 = !DILocation(line: 450, column: 3, scope: !934, inlinedAt: !936)
!956 = !DILocation(line: 446, column: 29, scope: !957, inlinedAt: !936)
!957 = distinct !DILexicalBlock(scope: !958, file: !3, line: 446, column: 9)
!958 = distinct !DILexicalBlock(scope: !932, file: !3, line: 445, column: 3)
!959 = !DILocalVariable(name: "sig", arg: 1, scope: !960, file: !3, line: 422, type: !37)
!960 = distinct !DISubprogram(name: "sig_needs_handling", scope: !3, file: !3, line: 422, type: !961, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !963)
!961 = !DISubroutineType(types: !962)
!962 = !{!60, !37, !37}
!963 = !{!959, !964, !965, !966}
!964 = !DILocalVariable(name: "sigterm", arg: 2, scope: !960, file: !3, line: 422, type: !37)
!965 = !DILocalVariable(name: "old_sa", scope: !960, file: !3, line: 430, type: !842)
!966 = !DILocalVariable(name: "ret", scope: !960, file: !3, line: 432, type: !60)
!967 = !DILocation(line: 0, scope: !960, inlinedAt: !968)
!968 = distinct !DILocation(line: 446, column: 9, scope: !957, inlinedAt: !936)
!969 = !DILocation(line: 424, column: 11, scope: !970, inlinedAt: !968)
!970 = distinct !DILexicalBlock(scope: !960, file: !3, line: 424, column: 7)
!971 = !DILocation(line: 424, column: 22, scope: !970, inlinedAt: !968)
!972 = !DILocation(line: 430, column: 3, scope: !960, inlinedAt: !968)
!973 = !DILocation(line: 430, column: 20, scope: !960, inlinedAt: !968)
!974 = !DILocation(line: 431, column: 3, scope: !960, inlinedAt: !968)
!975 = !DILocation(line: 432, column: 21, scope: !960, inlinedAt: !968)
!976 = !DILocation(line: 432, column: 32, scope: !960, inlinedAt: !968)
!977 = !DILocation(line: 434, column: 1, scope: !960, inlinedAt: !968)
!978 = !DILocation(line: 446, column: 9, scope: !958, inlinedAt: !936)
!979 = !DILocation(line: 447, column: 7, scope: !957, inlinedAt: !936)
!980 = !DILocation(line: 445, column: 44, scope: !958, inlinedAt: !936)
!981 = !DILocation(line: 445, column: 21, scope: !958, inlinedAt: !936)
!982 = distinct !{!982, !949, !983, !591}
!983 = !DILocation(line: 447, column: 40, scope: !932, inlinedAt: !936)
!984 = !DILocation(line: 0, scope: !960, inlinedAt: !985)
!985 = distinct !DILocation(line: 451, column: 9, scope: !986, inlinedAt: !936)
!986 = distinct !DILexicalBlock(scope: !953, file: !3, line: 451, column: 9)
!987 = !DILocation(line: 424, column: 11, scope: !970, inlinedAt: !985)
!988 = !DILocation(line: 424, column: 22, scope: !970, inlinedAt: !985)
!989 = !DILocation(line: 430, column: 3, scope: !960, inlinedAt: !985)
!990 = !DILocation(line: 430, column: 20, scope: !960, inlinedAt: !985)
!991 = !DILocation(line: 431, column: 3, scope: !960, inlinedAt: !985)
!992 = !DILocation(line: 432, column: 21, scope: !960, inlinedAt: !985)
!993 = !DILocation(line: 432, column: 32, scope: !960, inlinedAt: !985)
!994 = !DILocation(line: 434, column: 1, scope: !960, inlinedAt: !985)
!995 = !DILocation(line: 451, column: 9, scope: !953, inlinedAt: !936)
!996 = !DILocation(line: 452, column: 7, scope: !986, inlinedAt: !936)
!997 = !DILocation(line: 450, column: 42, scope: !953, inlinedAt: !936)
!998 = distinct !{!998, !955, !999, !591}
!999 = !DILocation(line: 452, column: 30, scope: !934, inlinedAt: !936)
!1000 = !DILocation(line: 454, column: 3, scope: !839, inlinedAt: !936)
!1001 = !DILocation(line: 455, column: 1, scope: !839, inlinedAt: !936)
!1002 = !DILocation(line: 577, column: 3, scope: !744)
!1003 = !DILocation(line: 578, column: 3, scope: !744)
!1004 = !DILocation(line: 406, column: 3, scope: !1005, inlinedAt: !1008)
!1005 = distinct !DISubprogram(name: "install_sigchld", scope: !3, file: !3, line: 404, type: !226, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1006)
!1006 = !{!1007}
!1007 = !DILocalVariable(name: "sa", scope: !1005, file: !3, line: 406, type: !842)
!1008 = distinct !DILocation(line: 579, column: 3, scope: !744)
!1009 = !DILocation(line: 406, column: 20, scope: !1005, inlinedAt: !1008)
!1010 = !DILocation(line: 407, column: 20, scope: !1005, inlinedAt: !1008)
!1011 = !DILocation(line: 407, column: 3, scope: !1005, inlinedAt: !1008)
!1012 = !DILocation(line: 408, column: 6, scope: !1005, inlinedAt: !1008)
!1013 = !DILocation(line: 408, column: 17, scope: !1005, inlinedAt: !1008)
!1014 = !DILocation(line: 409, column: 6, scope: !1005, inlinedAt: !1008)
!1015 = !DILocation(line: 409, column: 15, scope: !1005, inlinedAt: !1008)
!1016 = !DILocation(line: 412, column: 3, scope: !1005, inlinedAt: !1008)
!1017 = !DILocation(line: 416, column: 3, scope: !1005, inlinedAt: !1008)
!1018 = !DILocation(line: 417, column: 1, scope: !1005, inlinedAt: !1008)
!1019 = !DILocation(line: 583, column: 3, scope: !744)
!1020 = !DILocation(line: 586, column: 3, scope: !744)
!1021 = !DILocation(line: 586, column: 12, scope: !744)
!1022 = !DILocation(line: 587, column: 27, scope: !744)
!1023 = !DILocalVariable(name: "sigterm", arg: 1, scope: !1024, file: !3, line: 463, type: !37)
!1024 = distinct !DISubprogram(name: "block_cleanup_and_chld", scope: !3, file: !3, line: 463, type: !1025, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1028)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !37, !1027}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!1028 = !{!1023, !1029, !1030, !1031, !1033}
!1029 = !DILocalVariable(name: "old_set", arg: 2, scope: !1024, file: !3, line: 463, type: !1027)
!1030 = !DILocalVariable(name: "block_set", scope: !1024, file: !3, line: 465, type: !754)
!1031 = !DILocalVariable(name: "i", scope: !1032, file: !3, line: 468, type: !37)
!1032 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 468, column: 3)
!1033 = !DILocalVariable(name: "s", scope: !1034, file: !3, line: 472, type: !37)
!1034 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 472, column: 3)
!1035 = !DILocation(line: 0, scope: !1024, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 587, column: 3, scope: !744)
!1037 = !DILocation(line: 465, column: 3, scope: !1024, inlinedAt: !1036)
!1038 = !DILocation(line: 465, column: 12, scope: !1024, inlinedAt: !1036)
!1039 = !DILocation(line: 466, column: 3, scope: !1024, inlinedAt: !1036)
!1040 = !DILocation(line: 0, scope: !1032, inlinedAt: !1036)
!1041 = !DILocation(line: 468, column: 3, scope: !1032, inlinedAt: !1036)
!1042 = !DILocation(line: 472, column: 16, scope: !1034, inlinedAt: !1036)
!1043 = !DILocation(line: 0, scope: !1034, inlinedAt: !1036)
!1044 = !DILocation(line: 472, column: 31, scope: !1045, inlinedAt: !1036)
!1045 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 472, column: 3)
!1046 = !DILocation(line: 472, column: 28, scope: !1045, inlinedAt: !1036)
!1047 = !DILocation(line: 472, column: 3, scope: !1034, inlinedAt: !1036)
!1048 = !DILocation(line: 469, column: 29, scope: !1049, inlinedAt: !1036)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 469, column: 9)
!1050 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 468, column: 3)
!1051 = !DILocation(line: 0, scope: !960, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 469, column: 9, scope: !1049, inlinedAt: !1036)
!1053 = !DILocation(line: 424, column: 11, scope: !970, inlinedAt: !1052)
!1054 = !DILocation(line: 424, column: 22, scope: !970, inlinedAt: !1052)
!1055 = !DILocation(line: 430, column: 3, scope: !960, inlinedAt: !1052)
!1056 = !DILocation(line: 430, column: 20, scope: !960, inlinedAt: !1052)
!1057 = !DILocation(line: 431, column: 3, scope: !960, inlinedAt: !1052)
!1058 = !DILocation(line: 432, column: 21, scope: !960, inlinedAt: !1052)
!1059 = !DILocation(line: 432, column: 32, scope: !960, inlinedAt: !1052)
!1060 = !DILocation(line: 434, column: 1, scope: !960, inlinedAt: !1052)
!1061 = !DILocation(line: 469, column: 9, scope: !1050, inlinedAt: !1036)
!1062 = !DILocation(line: 470, column: 7, scope: !1049, inlinedAt: !1036)
!1063 = !DILocation(line: 468, column: 44, scope: !1050, inlinedAt: !1036)
!1064 = !DILocation(line: 468, column: 21, scope: !1050, inlinedAt: !1036)
!1065 = distinct !{!1065, !1041, !1066, !591}
!1066 = !DILocation(line: 470, column: 41, scope: !1032, inlinedAt: !1036)
!1067 = !DILocation(line: 476, column: 3, scope: !1024, inlinedAt: !1036)
!1068 = !DILocation(line: 478, column: 3, scope: !1024, inlinedAt: !1036)
!1069 = !DILocation(line: 480, column: 7, scope: !1070, inlinedAt: !1036)
!1070 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 480, column: 7)
!1071 = !DILocation(line: 480, column: 52, scope: !1070, inlinedAt: !1036)
!1072 = !DILocation(line: 480, column: 7, scope: !1024, inlinedAt: !1036)
!1073 = !DILocation(line: 0, scope: !960, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 473, column: 9, scope: !1075, inlinedAt: !1036)
!1075 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 473, column: 9)
!1076 = !DILocation(line: 424, column: 11, scope: !970, inlinedAt: !1074)
!1077 = !DILocation(line: 424, column: 22, scope: !970, inlinedAt: !1074)
!1078 = !DILocation(line: 430, column: 3, scope: !960, inlinedAt: !1074)
!1079 = !DILocation(line: 430, column: 20, scope: !960, inlinedAt: !1074)
!1080 = !DILocation(line: 431, column: 3, scope: !960, inlinedAt: !1074)
!1081 = !DILocation(line: 432, column: 21, scope: !960, inlinedAt: !1074)
!1082 = !DILocation(line: 432, column: 32, scope: !960, inlinedAt: !1074)
!1083 = !DILocation(line: 434, column: 1, scope: !960, inlinedAt: !1074)
!1084 = !DILocation(line: 473, column: 9, scope: !1045, inlinedAt: !1036)
!1085 = !DILocation(line: 474, column: 7, scope: !1075, inlinedAt: !1036)
!1086 = !DILocation(line: 472, column: 42, scope: !1045, inlinedAt: !1036)
!1087 = distinct !{!1087, !1047, !1088, !591}
!1088 = !DILocation(line: 474, column: 31, scope: !1034, inlinedAt: !1036)
!1089 = !DILocation(line: 481, column: 5, scope: !1070, inlinedAt: !1036)
!1090 = !DILocation(line: 482, column: 1, scope: !1024, inlinedAt: !1036)
!1091 = !DILocation(line: 593, column: 23, scope: !744)
!1092 = !DILocation(line: 600, column: 19, scope: !744)
!1093 = !DILocation(line: 600, column: 17, scope: !744)
!1094 = !DILocation(line: 601, column: 7, scope: !744)
!1095 = !DILocation(line: 603, column: 7, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !768, file: !3, line: 602, column: 5)
!1097 = !DILocation(line: 604, column: 7, scope: !1096)
!1098 = !DILocation(line: 610, column: 32, scope: !766)
!1099 = !DILocation(line: 610, column: 7, scope: !766)
!1100 = !DILocation(line: 615, column: 11, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !766, file: !3, line: 615, column: 11)
!1102 = !DILocation(line: 615, column: 22, scope: !1101)
!1103 = !DILocation(line: 615, column: 11, scope: !766)
!1104 = !DILocation(line: 619, column: 11, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !766, file: !3, line: 619, column: 11)
!1106 = !DILocation(line: 619, column: 54, scope: !1105)
!1107 = !DILocation(line: 619, column: 11, scope: !766)
!1108 = !DILocation(line: 621, column: 11, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 620, column: 9)
!1110 = !DILocation(line: 622, column: 11, scope: !1109)
!1111 = !DILocation(line: 626, column: 7, scope: !766)
!1112 = !DILocation(line: 627, column: 7, scope: !766)
!1113 = !DILocation(line: 629, column: 15, scope: !766)
!1114 = !DILocation(line: 629, column: 7, scope: !766)
!1115 = !DILocation(line: 632, column: 25, scope: !766)
!1116 = !DILocation(line: 632, column: 31, scope: !766)
!1117 = !DILocation(line: 0, scope: !766)
!1118 = !DILocation(line: 633, column: 7, scope: !766)
!1119 = !DILocation(line: 639, column: 7, scope: !770)
!1120 = !DILocation(line: 641, column: 7, scope: !770)
!1121 = !DILocation(line: 647, column: 38, scope: !770)
!1122 = !DILocation(line: 0, scope: !770)
!1123 = !DILocation(line: 647, column: 29, scope: !770)
!1124 = !DILocation(line: 647, column: 72, scope: !770)
!1125 = !DILocation(line: 647, column: 7, scope: !770)
!1126 = !DILocation(line: 648, column: 9, scope: !770)
!1127 = distinct !{!1127, !1125, !1128, !591}
!1128 = !DILocation(line: 648, column: 30, scope: !770)
!1129 = !DILocation(line: 650, column: 23, scope: !777)
!1130 = !DILocation(line: 650, column: 11, scope: !770)
!1131 = !DILocation(line: 653, column: 11, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !777, file: !3, line: 651, column: 9)
!1133 = !DILocation(line: 655, column: 9, scope: !1132)
!1134 = !DILocation(line: 658, column: 15, scope: !775)
!1135 = !DILocation(line: 658, column: 15, scope: !776)
!1136 = !DILocation(line: 659, column: 22, scope: !775)
!1137 = !DILocation(line: 659, column: 13, scope: !775)
!1138 = !DILocation(line: 660, column: 20, scope: !774)
!1139 = !DILocation(line: 660, column: 20, scope: !775)
!1140 = !DILocation(line: 0, scope: !773)
!1141 = !DILocation(line: 663, column: 19, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !773, file: !3, line: 663, column: 19)
!1143 = !DILocation(line: 663, column: 19, scope: !773)
!1144 = !DILocation(line: 664, column: 17, scope: !1142)
!1145 = !DILocation(line: 665, column: 20, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !773, file: !3, line: 665, column: 19)
!1147 = !DILocation(line: 665, column: 30, scope: !1146)
!1148 = !DILocation(line: 490, column: 7, scope: !1149, inlinedAt: !1153)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 490, column: 7)
!1150 = distinct !DISubprogram(name: "disable_core_dumps", scope: !3, file: !3, line: 487, type: !1151, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !536)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!60}
!1153 = distinct !DILocation(line: 665, column: 33, scope: !1146)
!1154 = !DILocation(line: 490, column: 34, scope: !1149, inlinedAt: !1153)
!1155 = !DILocation(line: 490, column: 7, scope: !1150, inlinedAt: !1153)
!1156 = !DILocation(line: 503, column: 3, scope: !1150, inlinedAt: !1153)
!1157 = !DILocation(line: 665, column: 19, scope: !773)
!1158 = !DILocation(line: 668, column: 19, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 666, column: 17)
!1160 = !DILocation(line: 669, column: 19, scope: !1159)
!1161 = !DILocation(line: 670, column: 19, scope: !1159)
!1162 = !DILocation(line: 671, column: 17, scope: !1159)
!1163 = !DILocation(line: 675, column: 19, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !773, file: !3, line: 675, column: 19)
!1165 = !DILocation(line: 675, column: 29, scope: !1164)
!1166 = !DILocation(line: 676, column: 33, scope: !1164)
!1167 = !DILocation(line: 676, column: 17, scope: !1164)
!1168 = !DILocation(line: 677, column: 28, scope: !773)
!1169 = !DILocation(line: 678, column: 13, scope: !773)
!1170 = !DILocation(line: 682, column: 15, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !774, file: !3, line: 680, column: 13)
!1172 = !DILocation(line: 687, column: 11, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !770, file: !3, line: 687, column: 11)
!1174 = !DILocation(line: 687, column: 21, scope: !1173)
!1175 = !DILocation(line: 690, column: 5, scope: !767)
!1176 = !DILocation(line: 0, scope: !768)
!1177 = !DILocation(line: 691, column: 1, scope: !744)
!1178 = !DISubprogram(name: "bindtextdomain", scope: !614, file: !614, line: 86, type: !1179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!29, !43, !43}
!1181 = !DISubprogram(name: "textdomain", scope: !614, file: !614, line: 82, type: !736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1182 = !DISubprogram(name: "atexit", scope: !735, file: !735, line: 602, type: !1183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!37, !225}
!1185 = !DISubprogram(name: "getopt_long", scope: !162, file: !162, line: 66, type: !1186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!37, !37, !1188, !43, !1190, !167}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!1191 = distinct !DISubprogram(name: "parse_duration", scope: !3, file: !3, line: 371, type: !1192, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1194)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!57, !43}
!1194 = !{!1195, !1196, !1197, !1198}
!1195 = !DILocalVariable(name: "str", arg: 1, scope: !1191, file: !3, line: 371, type: !43)
!1196 = !DILocalVariable(name: "ep", scope: !1191, file: !3, line: 373, type: !29)
!1197 = !DILocalVariable(name: "duration", scope: !1191, file: !3, line: 375, type: !57)
!1198 = !DILocalVariable(name: "s", scope: !1191, file: !3, line: 376, type: !57)
!1199 = !DILocation(line: 0, scope: !1191)
!1200 = !DILocation(line: 373, column: 3, scope: !1191)
!1201 = !DILocation(line: 374, column: 3, scope: !1191)
!1202 = !DILocation(line: 374, column: 9, scope: !1191)
!1203 = !DILocation(line: 375, column: 21, scope: !1191)
!1204 = !DILocation(line: 376, column: 41, scope: !1191)
!1205 = !DILocalVariable(name: "c", arg: 1, scope: !1206, file: !1207, line: 54, type: !57)
!1206 = distinct !DISubprogram(name: "dtimespec_bound", scope: !1207, file: !1207, line: 54, type: !1208, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1210)
!1207 = !DIFile(filename: "./lib/dtimespec-bound.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1c1d0447ed5234421679b9baaf454c86")
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!57, !57, !37}
!1210 = !{!1205, !1211, !1212}
!1211 = !DILocalVariable(name: "err", arg: 2, scope: !1206, file: !1207, line: 54, type: !37)
!1212 = !DILocalVariable(name: "phi", scope: !1206, file: !1207, line: 70, type: !57)
!1213 = !DILocation(line: 0, scope: !1206, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 376, column: 14, scope: !1191)
!1215 = !DILocation(line: 60, column: 11, scope: !1216, inlinedAt: !1214)
!1216 = distinct !DILexicalBlock(scope: !1206, file: !1207, line: 60, column: 7)
!1217 = !DILocation(line: 60, column: 21, scope: !1216, inlinedAt: !1214)
!1218 = !DILocation(line: 378, column: 7, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 378, column: 7)
!1220 = !DILocation(line: 378, column: 10, scope: !1219)
!1221 = !DILocation(line: 380, column: 7, scope: !1219)
!1222 = !DILocation(line: 382, column: 11, scope: !1219)
!1223 = !DILocation(line: 382, column: 15, scope: !1219)
!1224 = !DILocation(line: 382, column: 23, scope: !1219)
!1225 = !DILocation(line: 382, column: 18, scope: !1219)
!1226 = !DILocation(line: 384, column: 7, scope: !1219)
!1227 = !DILocalVariable(name: "x", arg: 1, scope: !1228, file: !3, line: 342, type: !1231)
!1228 = distinct !DISubprogram(name: "apply_time_suffix", scope: !3, file: !3, line: 342, type: !1229, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1232)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!60, !1231, !30}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!1232 = !{!1227, !1233, !1234}
!1233 = !DILocalVariable(name: "suffix_char", arg: 2, scope: !1228, file: !3, line: 342, type: !30)
!1234 = !DILocalVariable(name: "multiplier", scope: !1228, file: !3, line: 344, type: !37)
!1235 = !DILocation(line: 0, scope: !1228, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 384, column: 11, scope: !1219)
!1237 = !DILocation(line: 346, column: 3, scope: !1228, inlinedAt: !1236)
!1238 = !DILocation(line: 354, column: 7, scope: !1239, inlinedAt: !1236)
!1239 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 347, column: 5)
!1240 = !DILocation(line: 357, column: 7, scope: !1239, inlinedAt: !1236)
!1241 = !DILocation(line: 360, column: 7, scope: !1239, inlinedAt: !1236)
!1242 = !DILocation(line: 386, column: 7, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 385, column: 5)
!1244 = !DILocation(line: 387, column: 7, scope: !1243)
!1245 = !DILocation(line: 365, column: 28, scope: !1228, inlinedAt: !1236)
!1246 = !DILocation(line: 0, scope: !1206, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 365, column: 8, scope: !1228, inlinedAt: !1236)
!1248 = !DILocation(line: 60, column: 21, scope: !1216, inlinedAt: !1247)
!1249 = !DILocation(line: 391, column: 1, scope: !1191)
!1250 = !DILocation(line: 390, column: 3, scope: !1191)
!1251 = !DISubprogram(name: "setpgid", scope: !1252, file: !1252, line: 668, type: !1253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1252 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!37, !53, !53}
!1255 = !DISubprogram(name: "sigemptyset", scope: !33, file: !33, line: 199, type: !1256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!37, !1027}
!1258 = distinct !DISubprogram(name: "cleanup", scope: !3, file: !3, line: 204, type: !35, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1259)
!1259 = !{!1260, !1261, !1266}
!1260 = !DILocalVariable(name: "sig", arg: 1, scope: !1258, file: !3, line: 204, type: !37)
!1261 = !DILocalVariable(name: "saved_errno", scope: !1262, file: !3, line: 221, type: !37)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 220, column: 9)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 219, column: 11)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 218, column: 5)
!1265 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 217, column: 7)
!1266 = !DILocalVariable(name: "signame", scope: !1267, file: !3, line: 234, type: !1269)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 233, column: 9)
!1268 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 232, column: 11)
!1269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 152, elements: !1270)
!1270 = !{!1271}
!1271 = !DISubrange(count: 19)
!1272 = !DILocation(line: 0, scope: !1258)
!1273 = !DILocation(line: 206, column: 11, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 206, column: 7)
!1275 = !DILocation(line: 206, column: 7, scope: !1258)
!1276 = !DILocation(line: 208, column: 17, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 207, column: 5)
!1278 = !DILocation(line: 0, scope: !785, inlinedAt: !1279)
!1279 = distinct !DILocation(line: 214, column: 7, scope: !1277)
!1280 = !DILocation(line: 105, column: 18, scope: !790, inlinedAt: !1279)
!1281 = !DILocation(line: 215, column: 13, scope: !1277)
!1282 = !DILocation(line: 216, column: 5, scope: !1277)
!1283 = !DILocation(line: 217, column: 11, scope: !1265)
!1284 = !DILocation(line: 217, column: 9, scope: !1265)
!1285 = !DILocation(line: 217, column: 7, scope: !1258)
!1286 = !DILocation(line: 219, column: 11, scope: !1263)
!1287 = !DILocation(line: 219, column: 11, scope: !1264)
!1288 = !DILocation(line: 221, column: 29, scope: !1262)
!1289 = !DILocation(line: 0, scope: !1262)
!1290 = !DILocation(line: 223, column: 23, scope: !1262)
!1291 = !DILocation(line: 224, column: 11, scope: !1262)
!1292 = !DILocation(line: 225, column: 22, scope: !1262)
!1293 = !DILocation(line: 226, column: 17, scope: !1262)
!1294 = !DILocation(line: 227, column: 9, scope: !1262)
!1295 = !DILocation(line: 232, column: 11, scope: !1268)
!1296 = !DILocation(line: 232, column: 11, scope: !1264)
!1297 = !DILocation(line: 234, column: 11, scope: !1267)
!1298 = !DILocation(line: 234, column: 16, scope: !1267)
!1299 = !DILocation(line: 235, column: 19, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 235, column: 15)
!1301 = !DILocation(line: 235, column: 24, scope: !1300)
!1302 = !DILocation(line: 235, column: 27, scope: !1300)
!1303 = !DILocation(line: 235, column: 50, scope: !1300)
!1304 = !DILocation(line: 235, column: 15, scope: !1267)
!1305 = !DILocation(line: 236, column: 13, scope: !1300)
!1306 = !DILocation(line: 237, column: 11, scope: !1267)
!1307 = !DILocation(line: 239, column: 9, scope: !1268)
!1308 = !DILocation(line: 239, column: 9, scope: !1267)
!1309 = !DILocation(line: 240, column: 17, scope: !1264)
!1310 = !DILocalVariable(name: "where", arg: 1, scope: !1311, file: !3, line: 182, type: !51)
!1311 = distinct !DISubprogram(name: "send_sig", scope: !3, file: !3, line: 182, type: !1312, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1314)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!37, !51, !37}
!1314 = !{!1310, !1315}
!1315 = !DILocalVariable(name: "sig", arg: 2, scope: !1311, file: !3, line: 182, type: !37)
!1316 = !DILocation(line: 0, scope: !1311, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 240, column: 7, scope: !1264)
!1318 = !DILocation(line: 191, column: 13, scope: !1319, inlinedAt: !1317)
!1319 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 191, column: 7)
!1320 = !DILocation(line: 191, column: 7, scope: !1311, inlinedAt: !1317)
!1321 = !DILocation(line: 192, column: 5, scope: !1319, inlinedAt: !1317)
!1322 = !DILocation(line: 193, column: 10, scope: !1311, inlinedAt: !1317)
!1323 = !DILocation(line: 244, column: 12, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 244, column: 11)
!1325 = !DILocation(line: 244, column: 11, scope: !1264)
!1326 = !DILocation(line: 0, scope: !1311, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 246, column: 11, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 245, column: 9)
!1329 = !DILocation(line: 192, column: 5, scope: !1319, inlinedAt: !1327)
!1330 = !DILocation(line: 193, column: 10, scope: !1311, inlinedAt: !1327)
!1331 = !DILocation(line: 247, column: 30, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 247, column: 15)
!1333 = !DILocation(line: 249, column: 25, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 248, column: 13)
!1335 = !DILocation(line: 0, scope: !1311, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 249, column: 15, scope: !1334)
!1337 = !DILocation(line: 191, column: 13, scope: !1319, inlinedAt: !1336)
!1338 = !DILocation(line: 191, column: 7, scope: !1311, inlinedAt: !1336)
!1339 = !DILocation(line: 192, column: 5, scope: !1319, inlinedAt: !1336)
!1340 = !DILocation(line: 193, column: 10, scope: !1311, inlinedAt: !1336)
!1341 = !DILocation(line: 0, scope: !1311, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 250, column: 15, scope: !1334)
!1343 = !DILocation(line: 192, column: 5, scope: !1319, inlinedAt: !1342)
!1344 = !DILocation(line: 193, column: 10, scope: !1311, inlinedAt: !1342)
!1345 = !DILocation(line: 251, column: 13, scope: !1334)
!1346 = !DILocation(line: 254, column: 26, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 254, column: 12)
!1348 = !DILocation(line: 254, column: 12, scope: !1265)
!1349 = !DILocation(line: 259, column: 18, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 258, column: 5)
!1351 = !DILocation(line: 259, column: 7, scope: !1350)
!1352 = !DILocation(line: 261, column: 1, scope: !1258)
!1353 = !DISubprogram(name: "sigaction", scope: !33, file: !33, line: 243, type: !1354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!37, !37, !1356, !1359}
!1356 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1357)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!1359 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1360)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!1361 = !DISubprogram(name: "signal", scope: !33, file: !33, line: 88, type: !1362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!32, !37, !32}
!1364 = distinct !DISubprogram(name: "chld", scope: !3, file: !3, line: 199, type: !35, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1365)
!1365 = !{!1366}
!1366 = !DILocalVariable(name: "sig", arg: 1, scope: !1364, file: !3, line: 199, type: !37)
!1367 = !DILocation(line: 0, scope: !1364)
!1368 = !DILocation(line: 201, column: 1, scope: !1364)
!1369 = distinct !DISubprogram(name: "unblock_signal", scope: !3, file: !3, line: 394, type: !35, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1370)
!1370 = !{!1371, !1372}
!1371 = !DILocalVariable(name: "sig", arg: 1, scope: !1369, file: !3, line: 394, type: !37)
!1372 = !DILocalVariable(name: "unblock_set", scope: !1369, file: !3, line: 396, type: !754)
!1373 = !DILocation(line: 0, scope: !1369)
!1374 = !DILocation(line: 396, column: 3, scope: !1369)
!1375 = !DILocation(line: 396, column: 12, scope: !1369)
!1376 = !DILocation(line: 397, column: 3, scope: !1369)
!1377 = !DILocation(line: 398, column: 3, scope: !1369)
!1378 = !DILocation(line: 399, column: 7, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 399, column: 7)
!1380 = !DILocation(line: 399, column: 53, scope: !1379)
!1381 = !DILocation(line: 399, column: 7, scope: !1369)
!1382 = !DILocation(line: 400, column: 5, scope: !1379)
!1383 = !DILocation(line: 401, column: 1, scope: !1369)
!1384 = !DISubprogram(name: "sigaddset", scope: !33, file: !33, line: 205, type: !1385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!37, !1027, !37}
!1387 = !DISubprogram(name: "sigprocmask", scope: !33, file: !33, line: 232, type: !1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!37, !37, !1390, !1393}
!1390 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1391)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!1393 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1027)
!1394 = !DISubprogram(name: "getpid", scope: !1252, file: !1252, line: 650, type: !1395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!53}
!1397 = !DISubprogram(name: "fork", scope: !1252, file: !1252, line: 778, type: !1395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1398 = !DISubprogram(name: "prctl", scope: !1399, file: !1399, line: 42, type: !1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1399 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/prctl.h", directory: "", checksumkind: CSK_MD5, checksum: "03df3307493f4e984a818e48f1f1ebd0")
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!37, !37, null}
!1402 = !DISubprogram(name: "getppid", scope: !1252, file: !1252, line: 653, type: !1395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1403 = !DISubprogram(name: "execvp", scope: !1252, file: !1252, line: 599, type: !1404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!37, !43, !1188}
!1406 = distinct !DISubprogram(name: "settimeout", scope: !3, file: !3, line: 115, type: !1407, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1409)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{null, !57, !60}
!1409 = !{!1410, !1411, !1412, !1419, !1425, !1429, !1430}
!1410 = !DILocalVariable(name: "duration", arg: 1, scope: !1406, file: !3, line: 115, type: !57)
!1411 = !DILocalVariable(name: "warn", arg: 2, scope: !1406, file: !3, line: 115, type: !60)
!1412 = !DILocalVariable(name: "ts", scope: !1406, file: !3, line: 121, type: !1413)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1414, line: 11, size: 128, elements: !1415)
!1414 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1413, file: !1414, line: 16, baseType: !443, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1413, file: !1414, line: 21, baseType: !1418, size: 64, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !54, line: 197, baseType: !118)
!1419 = !DILocalVariable(name: "its", scope: !1406, file: !3, line: 122, type: !1420)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "itimerspec", file: !1421, line: 8, size: 256, elements: !1422)
!1421 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_itimerspec.h", directory: "", checksumkind: CSK_MD5, checksum: "dfcd7ec63e6a27775d5c6dbba8655c7d")
!1422 = !{!1423, !1424}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "it_interval", scope: !1420, file: !1421, line: 10, baseType: !1413, size: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "it_value", scope: !1420, file: !1421, line: 11, baseType: !1413, size: 128, offset: 128)
!1425 = !DILocalVariable(name: "timerid", scope: !1406, file: !3, line: 123, type: !1426)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "timer_t", file: !1427, line: 7, baseType: !1428)
!1427 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/timer_t.h", directory: "", checksumkind: CSK_MD5, checksum: "b257b0db40a7b7cec2ff2d7c51baed44")
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__timer_t", file: !54, line: 172, baseType: !31)
!1429 = !DILocalVariable(name: "timeint", scope: !1406, file: !3, line: 168, type: !7)
!1430 = !DILocalVariable(name: "duration_floor", scope: !1431, file: !3, line: 173, type: !7)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 172, column: 5)
!1432 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 169, column: 7)
!1433 = !DILocation(line: 0, scope: !1406)
!1434 = !DILocation(line: 121, column: 24, scope: !1406)
!1435 = !DILocation(line: 122, column: 3, scope: !1406)
!1436 = !DILocation(line: 122, column: 21, scope: !1406)
!1437 = !DILocation(line: 122, column: 60, scope: !1406)
!1438 = !DILocation(line: 122, column: 43, scope: !1406)
!1439 = !{i64 0, i64 8, !1440, i64 8, i64 8, !1440}
!1440 = !{!1441, !1441, i64 0}
!1441 = !{!"long", !529, i64 0}
!1442 = !{i64 0, i64 8, !1440}
!1443 = !DILocation(line: 123, column: 3, scope: !1406)
!1444 = !DILocation(line: 124, column: 7, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 124, column: 7)
!1446 = !DILocation(line: 124, column: 53, scope: !1445)
!1447 = !DILocation(line: 124, column: 7, scope: !1406)
!1448 = !DILocation(line: 126, column: 26, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 126, column: 11)
!1450 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 125, column: 5)
!1451 = !DILocation(line: 126, column: 11, scope: !1449)
!1452 = !DILocation(line: 126, column: 50, scope: !1449)
!1453 = !DILocation(line: 126, column: 11, scope: !1450)
!1454 = !DILocation(line: 130, column: 15, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 129, column: 9)
!1456 = !DILocation(line: 131, column: 13, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 130, column: 15)
!1458 = !DILocation(line: 132, column: 25, scope: !1455)
!1459 = !DILocation(line: 132, column: 11, scope: !1455)
!1460 = !DILocation(line: 134, column: 5, scope: !1450)
!1461 = !DILocation(line: 135, column: 17, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 135, column: 12)
!1463 = !DILocation(line: 135, column: 20, scope: !1462)
!1464 = !DILocation(line: 135, column: 26, scope: !1462)
!1465 = !DILocation(line: 135, column: 12, scope: !1445)
!1466 = !DILocation(line: 136, column: 5, scope: !1462)
!1467 = !DILocation(line: 169, column: 16, scope: !1432)
!1468 = !DILocation(line: 169, column: 7, scope: !1406)
!1469 = !DILocation(line: 173, column: 37, scope: !1431)
!1470 = !DILocation(line: 0, scope: !1431)
!1471 = !DILocation(line: 174, column: 35, scope: !1431)
!1472 = !DILocation(line: 174, column: 50, scope: !1431)
!1473 = !DILocation(line: 174, column: 32, scope: !1431)
!1474 = !DILocation(line: 0, scope: !1432)
!1475 = !DILocation(line: 176, column: 3, scope: !1406)
!1476 = !DILocation(line: 177, column: 1, scope: !1406)
!1477 = !DISubprogram(name: "waitpid", scope: !1478, file: !1478, line: 111, type: !1479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1478 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/wait.h", directory: "", checksumkind: CSK_MD5, checksum: "f653fe63e16922d44e1c6e15caa2acb6")
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!53, !53, !167, !37}
!1481 = !DISubprogram(name: "sigsuspend", scope: !33, file: !33, line: 240, type: !1482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!37, !1391}
!1484 = !DISubprogram(name: "raise", scope: !33, file: !33, line: 123, type: !1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!37, !37}
!1487 = !DISubprogram(name: "timer_create", scope: !1488, file: !1488, line: 331, type: !1489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1488 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!37, !1491, !1494, !1528}
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !1492, line: 7, baseType: !1493)
!1492 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/clockid_t.h", directory: "", checksumkind: CSK_MD5, checksum: "099a80153c2ad48bc7f5f4a188cb6d24")
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clockid_t", file: !54, line: 169, baseType: !37)
!1494 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1495)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigevent", file: !1497, line: 22, size: 512, elements: !1498)
!1497 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/sigevent_t.h", directory: "", checksumkind: CSK_MD5, checksum: "816c6e661f14523d03101a714ce8e208")
!1498 = !{!1499, !1500, !1501, !1502}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_value", scope: !1496, file: !1497, line: 24, baseType: !881, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_signo", scope: !1496, file: !1497, line: 25, baseType: !37, size: 32, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_notify", scope: !1496, file: !1497, line: 26, baseType: !37, size: 32, offset: 96)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "_sigev_un", scope: !1496, file: !1497, line: 41, baseType: !1503, size: 384, offset: 128)
!1503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1496, file: !1497, line: 28, size: 384, elements: !1504)
!1504 = !{!1505, !1509, !1510}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !1503, file: !1497, line: 30, baseType: !1506, size: 384)
!1506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 384, elements: !1507)
!1507 = !{!1508}
!1508 = !DISubrange(count: 12)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1503, file: !1497, line: 34, baseType: !53, size: 32)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "_sigev_thread", scope: !1503, file: !1497, line: 40, baseType: !1511, size: 128)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1503, file: !1497, line: 36, size: 128, elements: !1512)
!1512 = !{!1513, !1517}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_function", scope: !1511, file: !1497, line: 38, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{null, !881}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "_attribute", scope: !1511, file: !1497, line: 39, baseType: !1518, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !1520, line: 62, baseType: !1521)
!1520 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!1521 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !1520, line: 56, size: 512, elements: !1522)
!1522 = !{!1523, !1527}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1521, file: !1520, line: 58, baseType: !1524, size: 512)
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 512, elements: !1525)
!1525 = !{!1526}
!1526 = !DISubrange(count: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1521, file: !1520, line: 59, baseType: !118, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1529)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1530 = !DISubprogram(name: "timer_settime", scope: !1488, file: !1488, line: 340, type: !1531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!37, !1426, !37, !1533, !1536}
!1533 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1534)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1420)
!1536 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1537)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1538 = !DISubprogram(name: "timer_delete", scope: !1488, file: !1488, line: 336, type: !1539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!37, !1426}
!1541 = !DISubprogram(name: "alarm", scope: !1252, file: !1252, line: 452, type: !1542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!7, !7}
!1544 = !DISubprogram(name: "kill", scope: !33, file: !33, line: 112, type: !1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!37, !53, !37}
!1547 = distinct !DISubprogram(name: "operand2sig", scope: !430, file: !430, line: 36, type: !1548, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !1550)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!37, !43}
!1550 = !{!1551, !1552, !1553, !1556, !1557, !1558, !1560}
!1551 = !DILocalVariable(name: "operand", arg: 1, scope: !1547, file: !430, line: 36, type: !43)
!1552 = !DILocalVariable(name: "signum", scope: !1547, file: !430, line: 38, type: !37)
!1553 = !DILocalVariable(name: "endp", scope: !1554, file: !430, line: 53, type: !29)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !430, line: 41, column: 5)
!1555 = distinct !DILexicalBlock(scope: !1547, file: !430, line: 40, column: 7)
!1556 = !DILocalVariable(name: "l", scope: !1554, file: !430, line: 54, type: !118)
!1557 = !DILocalVariable(name: "i", scope: !1554, file: !430, line: 55, type: !37)
!1558 = !DILocalVariable(name: "upcased", scope: !1559, file: !430, line: 70, type: !29)
!1559 = distinct !DILexicalBlock(scope: !1555, file: !430, line: 67, column: 5)
!1560 = !DILocalVariable(name: "p", scope: !1561, file: !430, line: 71, type: !29)
!1561 = distinct !DILexicalBlock(scope: !1559, file: !430, line: 71, column: 7)
!1562 = !DILocation(line: 0, scope: !1547)
!1563 = !DILocation(line: 38, column: 3, scope: !1547)
!1564 = !DILocation(line: 40, column: 18, scope: !1555)
!1565 = !DILocalVariable(name: "c", arg: 1, scope: !1566, file: !1567, line: 233, type: !37)
!1566 = distinct !DISubprogram(name: "c_isdigit", scope: !1567, file: !1567, line: 233, type: !1568, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !1570)
!1567 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!60, !37}
!1570 = !{!1565}
!1571 = !DILocation(line: 0, scope: !1566, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 40, column: 7, scope: !1555)
!1573 = !DILocation(line: 235, column: 3, scope: !1566, inlinedAt: !1572)
!1574 = !DILocation(line: 40, column: 7, scope: !1547)
!1575 = !DILocation(line: 53, column: 7, scope: !1554)
!1576 = !DILocation(line: 54, column: 21, scope: !1554)
!1577 = !DILocation(line: 54, column: 27, scope: !1554)
!1578 = !DILocation(line: 0, scope: !1554)
!1579 = !DILocation(line: 54, column: 32, scope: !1554)
!1580 = !DILocation(line: 55, column: 15, scope: !1554)
!1581 = !DILocation(line: 56, column: 28, scope: !1554)
!1582 = !DILocation(line: 56, column: 25, scope: !1554)
!1583 = !DILocation(line: 56, column: 33, scope: !1554)
!1584 = !DILocation(line: 56, column: 36, scope: !1554)
!1585 = !DILocation(line: 56, column: 42, scope: !1554)
!1586 = !DILocation(line: 56, column: 45, scope: !1554)
!1587 = !DILocation(line: 56, column: 51, scope: !1554)
!1588 = !DILocation(line: 58, column: 18, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1554, file: !430, line: 58, column: 11)
!1590 = !DILocation(line: 58, column: 11, scope: !1554)
!1591 = !DILocation(line: 65, column: 5, scope: !1555)
!1592 = !DILocation(line: 65, column: 5, scope: !1554)
!1593 = !DILocation(line: 70, column: 23, scope: !1559)
!1594 = !DILocation(line: 0, scope: !1559)
!1595 = !DILocation(line: 0, scope: !1561)
!1596 = !DILocation(line: 71, column: 31, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1561, file: !430, line: 71, column: 7)
!1598 = !DILocation(line: 71, column: 7, scope: !1561)
!1599 = !DILocation(line: 77, column: 13, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1559, file: !430, line: 77, column: 11)
!1601 = !DILocation(line: 77, column: 40, scope: !1600)
!1602 = !DILocation(line: 78, column: 13, scope: !1600)
!1603 = !DILocation(line: 72, column: 51, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1597, file: !430, line: 72, column: 13)
!1605 = !DILocation(line: 72, column: 13, scope: !1604)
!1606 = !DILocation(line: 72, column: 13, scope: !1597)
!1607 = !DILocation(line: 73, column: 14, scope: !1604)
!1608 = !DILocation(line: 73, column: 11, scope: !1604)
!1609 = !DILocation(line: 71, column: 36, scope: !1597)
!1610 = distinct !{!1610, !1598, !1611, !591}
!1611 = !DILocation(line: 73, column: 23, scope: !1561)
!1612 = !DILocation(line: 78, column: 17, scope: !1600)
!1613 = !DILocation(line: 78, column: 28, scope: !1600)
!1614 = !DILocation(line: 78, column: 35, scope: !1600)
!1615 = !DILocation(line: 78, column: 38, scope: !1600)
!1616 = !DILocation(line: 78, column: 49, scope: !1600)
!1617 = !DILocation(line: 78, column: 56, scope: !1600)
!1618 = !DILocation(line: 78, column: 59, scope: !1600)
!1619 = !DILocation(line: 78, column: 70, scope: !1600)
!1620 = !DILocation(line: 79, column: 17, scope: !1600)
!1621 = !DILocation(line: 79, column: 37, scope: !1600)
!1622 = !DILocation(line: 79, column: 20, scope: !1600)
!1623 = !DILocation(line: 79, column: 51, scope: !1600)
!1624 = !DILocation(line: 77, column: 11, scope: !1559)
!1625 = !DILocation(line: 80, column: 16, scope: !1600)
!1626 = !DILocation(line: 80, column: 9, scope: !1600)
!1627 = !DILocation(line: 82, column: 7, scope: !1559)
!1628 = !DILocation(line: 85, column: 11, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1547, file: !430, line: 85, column: 7)
!1630 = !DILocation(line: 85, column: 18, scope: !1629)
!1631 = !DILocation(line: 87, column: 7, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1629, file: !430, line: 86, column: 5)
!1633 = !DILocation(line: 88, column: 7, scope: !1632)
!1634 = !DILocation(line: 92, column: 1, scope: !1547)
!1635 = distinct !DISubprogram(name: "cl_strtod", scope: !432, file: !432, line: 59, type: !1636, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1639)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!57, !43, !1638}
!1638 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !747)
!1639 = !{!1640, !1641, !1642, !1643, !1644, !1647, !1648}
!1640 = !DILocalVariable(name: "nptr", arg: 1, scope: !1635, file: !432, line: 59, type: !43)
!1641 = !DILocalVariable(name: "endptr", arg: 2, scope: !1635, file: !432, line: 59, type: !1638)
!1642 = !DILocalVariable(name: "end", scope: !1635, file: !432, line: 61, type: !29)
!1643 = !DILocalVariable(name: "d", scope: !1635, file: !432, line: 62, type: !57)
!1644 = !DILocalVariable(name: "strtod_errno", scope: !1645, file: !432, line: 65, type: !37)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !432, line: 64, column: 5)
!1646 = distinct !DILexicalBlock(scope: !1635, file: !432, line: 63, column: 7)
!1647 = !DILocalVariable(name: "c_end", scope: !1645, file: !432, line: 66, type: !29)
!1648 = !DILocalVariable(name: "c", scope: !1645, file: !432, line: 67, type: !57)
!1649 = !DILocation(line: 0, scope: !1635)
!1650 = !DILocation(line: 61, column: 3, scope: !1635)
!1651 = !DILocation(line: 62, column: 14, scope: !1635)
!1652 = !DILocation(line: 63, column: 8, scope: !1646)
!1653 = !DILocation(line: 63, column: 7, scope: !1646)
!1654 = !DILocation(line: 63, column: 7, scope: !1635)
!1655 = !DILocation(line: 65, column: 26, scope: !1645)
!1656 = !DILocation(line: 0, scope: !1645)
!1657 = !DILocation(line: 66, column: 7, scope: !1645)
!1658 = !DILocation(line: 67, column: 18, scope: !1645)
!1659 = !DILocation(line: 68, column: 17, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1645, file: !432, line: 68, column: 11)
!1661 = !DILocation(line: 68, column: 15, scope: !1660)
!1662 = !DILocation(line: 68, column: 11, scope: !1645)
!1663 = !DILocation(line: 71, column: 15, scope: !1660)
!1664 = !DILocation(line: 72, column: 5, scope: !1646)
!1665 = !DILocation(line: 72, column: 5, scope: !1645)
!1666 = !DILocation(line: 73, column: 7, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1635, file: !432, line: 73, column: 7)
!1668 = !DILocation(line: 73, column: 7, scope: !1635)
!1669 = !DILocation(line: 74, column: 13, scope: !1667)
!1670 = !DILocation(line: 74, column: 5, scope: !1667)
!1671 = !DILocation(line: 76, column: 1, scope: !1635)
!1672 = !DILocation(line: 75, column: 3, scope: !1635)
!1673 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !183, file: !183, line: 50, type: !550, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1674)
!1674 = !{!1675}
!1675 = !DILocalVariable(name: "file", arg: 1, scope: !1673, file: !183, line: 50, type: !43)
!1676 = !DILocation(line: 0, scope: !1673)
!1677 = !DILocation(line: 52, column: 13, scope: !1673)
!1678 = !DILocation(line: 53, column: 1, scope: !1673)
!1679 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !183, file: !183, line: 87, type: !1680, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1682)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{null, !60}
!1682 = !{!1683}
!1683 = !DILocalVariable(name: "ignore", arg: 1, scope: !1679, file: !183, line: 87, type: !60)
!1684 = !DILocation(line: 0, scope: !1679)
!1685 = !DILocation(line: 89, column: 16, scope: !1679)
!1686 = !{!1687, !1687, i64 0}
!1687 = !{!"_Bool", !529, i64 0}
!1688 = !DILocation(line: 90, column: 1, scope: !1679)
!1689 = distinct !DISubprogram(name: "close_stdout", scope: !183, file: !183, line: 116, type: !226, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1690)
!1690 = !{!1691}
!1691 = !DILocalVariable(name: "write_error", scope: !1692, file: !183, line: 121, type: !43)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !183, line: 120, column: 5)
!1693 = distinct !DILexicalBlock(scope: !1689, file: !183, line: 118, column: 7)
!1694 = !DILocation(line: 118, column: 21, scope: !1693)
!1695 = !DILocation(line: 118, column: 7, scope: !1693)
!1696 = !DILocation(line: 118, column: 29, scope: !1693)
!1697 = !DILocation(line: 119, column: 7, scope: !1693)
!1698 = !DILocation(line: 119, column: 12, scope: !1693)
!1699 = !{i8 0, i8 2}
!1700 = !DILocation(line: 119, column: 25, scope: !1693)
!1701 = !DILocation(line: 119, column: 28, scope: !1693)
!1702 = !DILocation(line: 119, column: 34, scope: !1693)
!1703 = !DILocation(line: 118, column: 7, scope: !1689)
!1704 = !DILocation(line: 121, column: 33, scope: !1692)
!1705 = !DILocation(line: 0, scope: !1692)
!1706 = !DILocation(line: 122, column: 11, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1692, file: !183, line: 122, column: 11)
!1708 = !DILocation(line: 0, scope: !1707)
!1709 = !DILocation(line: 122, column: 11, scope: !1692)
!1710 = !DILocation(line: 123, column: 9, scope: !1707)
!1711 = !DILocation(line: 126, column: 9, scope: !1707)
!1712 = !DILocation(line: 128, column: 14, scope: !1692)
!1713 = !DILocation(line: 128, column: 7, scope: !1692)
!1714 = !DILocation(line: 133, column: 42, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1689, file: !183, line: 133, column: 7)
!1716 = !DILocation(line: 133, column: 28, scope: !1715)
!1717 = !DILocation(line: 133, column: 50, scope: !1715)
!1718 = !DILocation(line: 133, column: 7, scope: !1689)
!1719 = !DILocation(line: 134, column: 12, scope: !1715)
!1720 = !DILocation(line: 134, column: 5, scope: !1715)
!1721 = !DILocation(line: 135, column: 1, scope: !1689)
!1722 = distinct !DISubprogram(name: "dtotimespec", scope: !434, file: !434, line: 30, type: !1723, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !433, retainedNodes: !1729)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!1725, !57}
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1414, line: 11, size: 128, elements: !1726)
!1726 = !{!1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1725, file: !1414, line: 16, baseType: !443, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1725, file: !1414, line: 21, baseType: !1418, size: 64, offset: 64)
!1729 = !{!1730, !1731, !1735, !1736}
!1730 = !DILocalVariable(name: "sec", arg: 1, scope: !1722, file: !434, line: 30, type: !57)
!1731 = !DILocalVariable(name: "s", scope: !1732, file: !434, line: 38, type: !441)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !434, line: 37, column: 5)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !434, line: 34, column: 12)
!1734 = distinct !DILexicalBlock(scope: !1722, file: !434, line: 32, column: 7)
!1735 = !DILocalVariable(name: "frac", scope: !1732, file: !434, line: 39, type: !57)
!1736 = !DILocalVariable(name: "ns", scope: !1732, file: !434, line: 40, type: !118)
!1737 = !DILocation(line: 0, scope: !1722)
!1738 = !DILocation(line: 32, column: 32, scope: !1734)
!1739 = !DILocation(line: 32, column: 7, scope: !1722)
!1740 = !DILocation(line: 34, column: 19, scope: !1733)
!1741 = !DILocation(line: 34, column: 12, scope: !1734)
!1742 = !DILocation(line: 38, column: 18, scope: !1732)
!1743 = !DILocation(line: 0, scope: !1732)
!1744 = !DILocation(line: 39, column: 42, scope: !1732)
!1745 = !DILocation(line: 39, column: 40, scope: !1732)
!1746 = !DILocation(line: 39, column: 33, scope: !1732)
!1747 = !DILocation(line: 40, column: 17, scope: !1732)
!1748 = !DILocation(line: 41, column: 13, scope: !1732)
!1749 = !DILocation(line: 41, column: 16, scope: !1732)
!1750 = !DILocation(line: 41, column: 10, scope: !1732)
!1751 = !DILocation(line: 42, column: 15, scope: !1732)
!1752 = !DILocation(line: 42, column: 9, scope: !1732)
!1753 = !DILocation(line: 45, column: 14, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1732, file: !434, line: 45, column: 11)
!1755 = !DILocation(line: 45, column: 11, scope: !1732)
!1756 = !DILocalVariable(name: "s", arg: 1, scope: !1757, file: !437, line: 56, type: !441)
!1757 = distinct !DISubprogram(name: "make_timespec", scope: !437, file: !437, line: 56, type: !1758, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !433, retainedNodes: !1760)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!1725, !441, !118}
!1760 = !{!1756, !1761}
!1761 = !DILocalVariable(name: "ns", arg: 2, scope: !1757, file: !437, line: 56, type: !118)
!1762 = !DILocation(line: 0, scope: !1757, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 51, column: 14, scope: !1732)
!1764 = !DILocation(line: 58, column: 3, scope: !1757, inlinedAt: !1763)
!1765 = !DILocation(line: 53, column: 1, scope: !1722)
!1766 = distinct !DISubprogram(name: "verror", scope: !190, file: !190, line: 251, type: !1767, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1769)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{null, !37, !37, !43, !198}
!1769 = !{!1770, !1771, !1772, !1773}
!1770 = !DILocalVariable(name: "status", arg: 1, scope: !1766, file: !190, line: 251, type: !37)
!1771 = !DILocalVariable(name: "errnum", arg: 2, scope: !1766, file: !190, line: 251, type: !37)
!1772 = !DILocalVariable(name: "message", arg: 3, scope: !1766, file: !190, line: 251, type: !43)
!1773 = !DILocalVariable(name: "args", arg: 4, scope: !1766, file: !190, line: 251, type: !198)
!1774 = !DILocation(line: 0, scope: !1766)
!1775 = !DILocation(line: 251, column: 1, scope: !1766)
!1776 = !DILocation(line: 261, column: 3, scope: !1766)
!1777 = !DILocation(line: 265, column: 7, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1766, file: !190, line: 265, column: 7)
!1779 = !DILocation(line: 265, column: 7, scope: !1766)
!1780 = !DILocation(line: 266, column: 5, scope: !1778)
!1781 = !DILocation(line: 272, column: 7, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1778, file: !190, line: 268, column: 5)
!1783 = !DILocation(line: 276, column: 3, scope: !1766)
!1784 = !{i64 0, i64 8, !527, i64 8, i64 8, !527, i64 16, i64 8, !527, i64 24, i64 4, !624, i64 28, i64 4, !624}
!1785 = !DILocation(line: 282, column: 1, scope: !1766)
!1786 = distinct !DISubprogram(name: "flush_stdout", scope: !190, file: !190, line: 163, type: !226, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1787)
!1787 = !{!1788}
!1788 = !DILocalVariable(name: "stdout_fd", scope: !1786, file: !190, line: 166, type: !37)
!1789 = !DILocation(line: 0, scope: !1786)
!1790 = !DILocalVariable(name: "fd", arg: 1, scope: !1791, file: !190, line: 145, type: !37)
!1791 = distinct !DISubprogram(name: "is_open", scope: !190, file: !190, line: 145, type: !1485, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1792)
!1792 = !{!1790}
!1793 = !DILocation(line: 0, scope: !1791, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 182, column: 25, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1786, file: !190, line: 182, column: 7)
!1796 = !DILocation(line: 157, column: 15, scope: !1791, inlinedAt: !1794)
!1797 = !DILocation(line: 182, column: 25, scope: !1795)
!1798 = !DILocation(line: 182, column: 7, scope: !1786)
!1799 = !DILocation(line: 184, column: 5, scope: !1795)
!1800 = !DILocation(line: 185, column: 1, scope: !1786)
!1801 = distinct !DISubprogram(name: "error_tail", scope: !190, file: !190, line: 219, type: !1767, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1802)
!1802 = !{!1803, !1804, !1805, !1806}
!1803 = !DILocalVariable(name: "status", arg: 1, scope: !1801, file: !190, line: 219, type: !37)
!1804 = !DILocalVariable(name: "errnum", arg: 2, scope: !1801, file: !190, line: 219, type: !37)
!1805 = !DILocalVariable(name: "message", arg: 3, scope: !1801, file: !190, line: 219, type: !43)
!1806 = !DILocalVariable(name: "args", arg: 4, scope: !1801, file: !190, line: 219, type: !198)
!1807 = !DILocation(line: 0, scope: !1801)
!1808 = !DILocation(line: 219, column: 1, scope: !1801)
!1809 = !DILocation(line: 229, column: 13, scope: !1801)
!1810 = !DILocation(line: 229, column: 3, scope: !1801)
!1811 = !DILocalVariable(name: "__stream", arg: 1, scope: !1812, file: !1813, line: 132, type: !1816)
!1812 = distinct !DISubprogram(name: "vfprintf", scope: !1813, file: !1813, line: 132, type: !1814, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1851)
!1813 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!37, !1816, !620, !200}
!1816 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1817)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !1819)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !1820)
!1820 = !{!1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1819, file: !95, line: 51, baseType: !37, size: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1819, file: !95, line: 54, baseType: !29, size: 64, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1819, file: !95, line: 55, baseType: !29, size: 64, offset: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1819, file: !95, line: 56, baseType: !29, size: 64, offset: 192)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1819, file: !95, line: 57, baseType: !29, size: 64, offset: 256)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1819, file: !95, line: 58, baseType: !29, size: 64, offset: 320)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1819, file: !95, line: 59, baseType: !29, size: 64, offset: 384)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1819, file: !95, line: 60, baseType: !29, size: 64, offset: 448)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1819, file: !95, line: 61, baseType: !29, size: 64, offset: 512)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1819, file: !95, line: 64, baseType: !29, size: 64, offset: 576)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1819, file: !95, line: 65, baseType: !29, size: 64, offset: 640)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1819, file: !95, line: 66, baseType: !29, size: 64, offset: 704)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1819, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1819, file: !95, line: 70, baseType: !1835, size: 64, offset: 832)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1819, file: !95, line: 72, baseType: !37, size: 32, offset: 896)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1819, file: !95, line: 73, baseType: !37, size: 32, offset: 928)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1819, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1819, file: !95, line: 77, baseType: !39, size: 16, offset: 1024)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1819, file: !95, line: 78, baseType: !38, size: 8, offset: 1040)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1819, file: !95, line: 79, baseType: !122, size: 8, offset: 1048)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1819, file: !95, line: 81, baseType: !126, size: 64, offset: 1088)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1819, file: !95, line: 89, baseType: !129, size: 64, offset: 1152)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1819, file: !95, line: 91, baseType: !131, size: 64, offset: 1216)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1819, file: !95, line: 92, baseType: !134, size: 64, offset: 1280)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1819, file: !95, line: 93, baseType: !1835, size: 64, offset: 1344)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1819, file: !95, line: 94, baseType: !31, size: 64, offset: 1408)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1819, file: !95, line: 95, baseType: !40, size: 64, offset: 1472)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1819, file: !95, line: 96, baseType: !37, size: 32, offset: 1536)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1819, file: !95, line: 98, baseType: !141, size: 160, offset: 1568)
!1851 = !{!1811, !1852, !1853}
!1852 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1812, file: !1813, line: 133, type: !620)
!1853 = !DILocalVariable(name: "__ap", arg: 3, scope: !1812, file: !1813, line: 133, type: !200)
!1854 = !DILocation(line: 0, scope: !1812, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 229, column: 3, scope: !1801)
!1856 = !DILocation(line: 135, column: 10, scope: !1812, inlinedAt: !1855)
!1857 = !{!1858, !1860}
!1858 = distinct !{!1858, !1859, !"vfprintf.inline: argument 0"}
!1859 = distinct !{!1859, !"vfprintf.inline"}
!1860 = distinct !{!1860, !1859, !"vfprintf.inline: argument 1"}
!1861 = !DILocation(line: 232, column: 3, scope: !1801)
!1862 = !DILocation(line: 233, column: 7, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1801, file: !190, line: 233, column: 7)
!1864 = !DILocation(line: 233, column: 7, scope: !1801)
!1865 = !DILocalVariable(name: "errnum", arg: 1, scope: !1866, file: !190, line: 188, type: !37)
!1866 = distinct !DISubprogram(name: "print_errno_message", scope: !190, file: !190, line: 188, type: !35, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1867)
!1867 = !{!1865, !1868, !1869}
!1868 = !DILocalVariable(name: "s", scope: !1866, file: !190, line: 190, type: !43)
!1869 = !DILocalVariable(name: "errbuf", scope: !1866, file: !190, line: 193, type: !1870)
!1870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8192, elements: !1871)
!1871 = !{!1872}
!1872 = !DISubrange(count: 1024)
!1873 = !DILocation(line: 0, scope: !1866, inlinedAt: !1874)
!1874 = distinct !DILocation(line: 234, column: 5, scope: !1863)
!1875 = !DILocation(line: 193, column: 3, scope: !1866, inlinedAt: !1874)
!1876 = !DILocation(line: 193, column: 8, scope: !1866, inlinedAt: !1874)
!1877 = !DILocation(line: 195, column: 7, scope: !1866, inlinedAt: !1874)
!1878 = !DILocation(line: 207, column: 9, scope: !1879, inlinedAt: !1874)
!1879 = distinct !DILexicalBlock(scope: !1866, file: !190, line: 207, column: 7)
!1880 = !DILocation(line: 207, column: 7, scope: !1866, inlinedAt: !1874)
!1881 = !DILocation(line: 208, column: 9, scope: !1879, inlinedAt: !1874)
!1882 = !DILocation(line: 208, column: 5, scope: !1879, inlinedAt: !1874)
!1883 = !DILocation(line: 214, column: 3, scope: !1866, inlinedAt: !1874)
!1884 = !DILocation(line: 216, column: 1, scope: !1866, inlinedAt: !1874)
!1885 = !DILocation(line: 234, column: 5, scope: !1863)
!1886 = !DILocation(line: 238, column: 3, scope: !1801)
!1887 = !DILocalVariable(name: "__c", arg: 1, scope: !1888, file: !1889, line: 101, type: !37)
!1888 = distinct !DISubprogram(name: "putc_unlocked", scope: !1889, file: !1889, line: 101, type: !1890, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1892)
!1889 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!37, !37, !1817}
!1892 = !{!1887, !1893}
!1893 = !DILocalVariable(name: "__stream", arg: 2, scope: !1888, file: !1889, line: 101, type: !1817)
!1894 = !DILocation(line: 0, scope: !1888, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 238, column: 3, scope: !1801)
!1896 = !DILocation(line: 103, column: 10, scope: !1888, inlinedAt: !1895)
!1897 = !{!1898, !528, i64 40}
!1898 = !{!"_IO_FILE", !625, i64 0, !528, i64 8, !528, i64 16, !528, i64 24, !528, i64 32, !528, i64 40, !528, i64 48, !528, i64 56, !528, i64 64, !528, i64 72, !528, i64 80, !528, i64 88, !528, i64 96, !528, i64 104, !625, i64 112, !625, i64 116, !1441, i64 120, !659, i64 128, !529, i64 130, !529, i64 131, !528, i64 136, !1441, i64 144, !528, i64 152, !528, i64 160, !528, i64 168, !528, i64 176, !1441, i64 184, !625, i64 192, !529, i64 196}
!1899 = !{!1898, !528, i64 48}
!1900 = !{!"branch_weights", i32 2000, i32 1}
!1901 = !DILocation(line: 240, column: 3, scope: !1801)
!1902 = !DILocation(line: 241, column: 7, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1801, file: !190, line: 241, column: 7)
!1904 = !DILocation(line: 241, column: 7, scope: !1801)
!1905 = !DILocation(line: 242, column: 5, scope: !1903)
!1906 = !DILocation(line: 243, column: 1, scope: !1801)
!1907 = !DISubprogram(name: "strerror_r", scope: !1908, file: !1908, line: 444, type: !1909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1908 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!29, !37, !29, !40}
!1911 = !DISubprogram(name: "fflush_unlocked", scope: !199, file: !199, line: 239, type: !1912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!37, !1817}
!1914 = !DISubprogram(name: "fcntl", scope: !1915, file: !1915, line: 149, type: !1916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1915 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!37, !37, !37, null}
!1918 = distinct !DISubprogram(name: "error", scope: !190, file: !190, line: 285, type: !1919, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1921)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{null, !37, !37, !43, null}
!1921 = !{!1922, !1923, !1924, !1925}
!1922 = !DILocalVariable(name: "status", arg: 1, scope: !1918, file: !190, line: 285, type: !37)
!1923 = !DILocalVariable(name: "errnum", arg: 2, scope: !1918, file: !190, line: 285, type: !37)
!1924 = !DILocalVariable(name: "message", arg: 3, scope: !1918, file: !190, line: 285, type: !43)
!1925 = !DILocalVariable(name: "ap", scope: !1918, file: !190, line: 287, type: !198)
!1926 = !DILocation(line: 0, scope: !1918)
!1927 = !DILocation(line: 287, column: 3, scope: !1918)
!1928 = !DILocation(line: 287, column: 11, scope: !1918)
!1929 = !DILocation(line: 288, column: 3, scope: !1918)
!1930 = !DILocation(line: 289, column: 3, scope: !1918)
!1931 = !DILocation(line: 290, column: 3, scope: !1918)
!1932 = !DILocation(line: 291, column: 1, scope: !1918)
!1933 = !DILocation(line: 0, scope: !195)
!1934 = !DILocation(line: 298, column: 1, scope: !195)
!1935 = !DILocation(line: 302, column: 7, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !195, file: !190, line: 302, column: 7)
!1937 = !DILocation(line: 302, column: 7, scope: !195)
!1938 = !DILocation(line: 307, column: 11, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !190, line: 307, column: 11)
!1940 = distinct !DILexicalBlock(scope: !1936, file: !190, line: 303, column: 5)
!1941 = !DILocation(line: 307, column: 27, scope: !1939)
!1942 = !DILocation(line: 308, column: 11, scope: !1939)
!1943 = !DILocation(line: 308, column: 28, scope: !1939)
!1944 = !DILocation(line: 308, column: 25, scope: !1939)
!1945 = !DILocation(line: 309, column: 15, scope: !1939)
!1946 = !DILocation(line: 309, column: 33, scope: !1939)
!1947 = !DILocation(line: 310, column: 19, scope: !1939)
!1948 = !DILocation(line: 311, column: 22, scope: !1939)
!1949 = !DILocation(line: 311, column: 56, scope: !1939)
!1950 = !DILocation(line: 307, column: 11, scope: !1940)
!1951 = !DILocation(line: 316, column: 21, scope: !1940)
!1952 = !DILocation(line: 317, column: 23, scope: !1940)
!1953 = !DILocation(line: 318, column: 5, scope: !1940)
!1954 = !DILocation(line: 327, column: 3, scope: !195)
!1955 = !DILocation(line: 331, column: 7, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !195, file: !190, line: 331, column: 7)
!1957 = !DILocation(line: 331, column: 7, scope: !195)
!1958 = !DILocation(line: 332, column: 5, scope: !1956)
!1959 = !DILocation(line: 338, column: 7, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !190, line: 334, column: 5)
!1961 = !DILocation(line: 346, column: 3, scope: !195)
!1962 = !DILocation(line: 350, column: 3, scope: !195)
!1963 = !DILocation(line: 356, column: 1, scope: !195)
!1964 = distinct !DISubprogram(name: "error_at_line", scope: !190, file: !190, line: 359, type: !1965, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1967)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{null, !37, !37, !43, !7, !43, null}
!1967 = !{!1968, !1969, !1970, !1971, !1972, !1973}
!1968 = !DILocalVariable(name: "status", arg: 1, scope: !1964, file: !190, line: 359, type: !37)
!1969 = !DILocalVariable(name: "errnum", arg: 2, scope: !1964, file: !190, line: 359, type: !37)
!1970 = !DILocalVariable(name: "file_name", arg: 3, scope: !1964, file: !190, line: 359, type: !43)
!1971 = !DILocalVariable(name: "line_number", arg: 4, scope: !1964, file: !190, line: 360, type: !7)
!1972 = !DILocalVariable(name: "message", arg: 5, scope: !1964, file: !190, line: 360, type: !43)
!1973 = !DILocalVariable(name: "ap", scope: !1964, file: !190, line: 362, type: !198)
!1974 = !DILocation(line: 0, scope: !1964)
!1975 = !DILocation(line: 362, column: 3, scope: !1964)
!1976 = !DILocation(line: 362, column: 11, scope: !1964)
!1977 = !DILocation(line: 363, column: 3, scope: !1964)
!1978 = !DILocation(line: 364, column: 3, scope: !1964)
!1979 = !DILocation(line: 366, column: 3, scope: !1964)
!1980 = !DILocation(line: 367, column: 1, scope: !1964)
!1981 = distinct !DISubprogram(name: "getprogname", scope: !445, file: !445, line: 54, type: !1982, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !536)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!43}
!1984 = !DILocation(line: 58, column: 10, scope: !1981)
!1985 = !DILocation(line: 58, column: 3, scope: !1981)
!1986 = distinct !DISubprogram(name: "set_program_name", scope: !231, file: !231, line: 37, type: !550, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1987)
!1987 = !{!1988, !1989, !1990}
!1988 = !DILocalVariable(name: "argv0", arg: 1, scope: !1986, file: !231, line: 37, type: !43)
!1989 = !DILocalVariable(name: "slash", scope: !1986, file: !231, line: 44, type: !43)
!1990 = !DILocalVariable(name: "base", scope: !1986, file: !231, line: 45, type: !43)
!1991 = !DILocation(line: 0, scope: !1986)
!1992 = !DILocation(line: 44, column: 23, scope: !1986)
!1993 = !DILocation(line: 45, column: 22, scope: !1986)
!1994 = !DILocation(line: 46, column: 17, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1986, file: !231, line: 46, column: 7)
!1996 = !DILocation(line: 46, column: 9, scope: !1995)
!1997 = !DILocation(line: 46, column: 25, scope: !1995)
!1998 = !DILocation(line: 46, column: 40, scope: !1995)
!1999 = !DILocalVariable(name: "__s1", arg: 1, scope: !2000, file: !575, line: 974, type: !742)
!2000 = distinct !DISubprogram(name: "memeq", scope: !575, file: !575, line: 974, type: !2001, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2003)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!60, !742, !742, !40}
!2003 = !{!1999, !2004, !2005}
!2004 = !DILocalVariable(name: "__s2", arg: 2, scope: !2000, file: !575, line: 974, type: !742)
!2005 = !DILocalVariable(name: "__n", arg: 3, scope: !2000, file: !575, line: 974, type: !40)
!2006 = !DILocation(line: 0, scope: !2000, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 46, column: 28, scope: !1995)
!2008 = !DILocation(line: 976, column: 11, scope: !2000, inlinedAt: !2007)
!2009 = !DILocation(line: 976, column: 10, scope: !2000, inlinedAt: !2007)
!2010 = !DILocation(line: 46, column: 7, scope: !1986)
!2011 = !DILocation(line: 49, column: 11, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !231, line: 49, column: 11)
!2013 = distinct !DILexicalBlock(scope: !1995, file: !231, line: 47, column: 5)
!2014 = !DILocation(line: 49, column: 36, scope: !2012)
!2015 = !DILocation(line: 49, column: 11, scope: !2013)
!2016 = !DILocation(line: 65, column: 16, scope: !1986)
!2017 = !DILocation(line: 71, column: 27, scope: !1986)
!2018 = !DILocation(line: 74, column: 33, scope: !1986)
!2019 = !DILocation(line: 76, column: 1, scope: !1986)
!2020 = !DILocation(line: 0, scope: !236)
!2021 = !DILocation(line: 40, column: 29, scope: !236)
!2022 = !DILocation(line: 41, column: 19, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !236, file: !237, line: 41, column: 7)
!2024 = !DILocation(line: 41, column: 7, scope: !236)
!2025 = !DILocation(line: 47, column: 3, scope: !236)
!2026 = !DILocation(line: 48, column: 3, scope: !236)
!2027 = !DILocation(line: 48, column: 13, scope: !236)
!2028 = !DILocalVariable(name: "ps", arg: 1, scope: !2029, file: !2030, line: 1135, type: !2033)
!2029 = distinct !DISubprogram(name: "mbszero", scope: !2030, file: !2030, line: 1135, type: !2031, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !2034)
!2030 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2031 = !DISubroutineType(types: !2032)
!2032 = !{null, !2033}
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!2034 = !{!2028}
!2035 = !DILocation(line: 0, scope: !2029, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 48, column: 18, scope: !236)
!2037 = !DILocalVariable(name: "__dest", arg: 1, scope: !2038, file: !2039, line: 57, type: !31)
!2038 = distinct !DISubprogram(name: "memset", scope: !2039, file: !2039, line: 57, type: !2040, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !2042)
!2039 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!31, !31, !37, !40}
!2042 = !{!2037, !2043, !2044}
!2043 = !DILocalVariable(name: "__ch", arg: 2, scope: !2038, file: !2039, line: 57, type: !37)
!2044 = !DILocalVariable(name: "__len", arg: 3, scope: !2038, file: !2039, line: 57, type: !40)
!2045 = !DILocation(line: 0, scope: !2038, inlinedAt: !2046)
!2046 = distinct !DILocation(line: 1137, column: 3, scope: !2029, inlinedAt: !2036)
!2047 = !DILocation(line: 59, column: 10, scope: !2038, inlinedAt: !2046)
!2048 = !DILocation(line: 49, column: 7, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !236, file: !237, line: 49, column: 7)
!2050 = !DILocation(line: 49, column: 39, scope: !2049)
!2051 = !DILocation(line: 49, column: 44, scope: !2049)
!2052 = !DILocation(line: 54, column: 1, scope: !236)
!2053 = !DISubprogram(name: "mbrtoc32", scope: !248, file: !248, line: 57, type: !2054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!40, !2056, !620, !40, !2058}
!2056 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2057)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2033)
!2059 = distinct !DISubprogram(name: "clone_quoting_options", scope: !273, file: !273, line: 113, type: !2060, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2063)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!2062, !2062}
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!2063 = !{!2064, !2065, !2066}
!2064 = !DILocalVariable(name: "o", arg: 1, scope: !2059, file: !273, line: 113, type: !2062)
!2065 = !DILocalVariable(name: "saved_errno", scope: !2059, file: !273, line: 115, type: !37)
!2066 = !DILocalVariable(name: "p", scope: !2059, file: !273, line: 116, type: !2062)
!2067 = !DILocation(line: 0, scope: !2059)
!2068 = !DILocation(line: 115, column: 21, scope: !2059)
!2069 = !DILocation(line: 116, column: 40, scope: !2059)
!2070 = !DILocation(line: 116, column: 31, scope: !2059)
!2071 = !DILocation(line: 118, column: 9, scope: !2059)
!2072 = !DILocation(line: 119, column: 3, scope: !2059)
!2073 = distinct !DISubprogram(name: "get_quoting_style", scope: !273, file: !273, line: 124, type: !2074, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2078)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!275, !2076}
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!2078 = !{!2079}
!2079 = !DILocalVariable(name: "o", arg: 1, scope: !2073, file: !273, line: 124, type: !2076)
!2080 = !DILocation(line: 0, scope: !2073)
!2081 = !DILocation(line: 126, column: 11, scope: !2073)
!2082 = !DILocation(line: 126, column: 46, scope: !2073)
!2083 = !{!2084, !529, i64 0}
!2084 = !{!"quoting_options", !529, i64 0, !625, i64 4, !529, i64 8, !528, i64 40, !528, i64 48}
!2085 = !DILocation(line: 126, column: 3, scope: !2073)
!2086 = distinct !DISubprogram(name: "set_quoting_style", scope: !273, file: !273, line: 132, type: !2087, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2089)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{null, !2062, !275}
!2089 = !{!2090, !2091}
!2090 = !DILocalVariable(name: "o", arg: 1, scope: !2086, file: !273, line: 132, type: !2062)
!2091 = !DILocalVariable(name: "s", arg: 2, scope: !2086, file: !273, line: 132, type: !275)
!2092 = !DILocation(line: 0, scope: !2086)
!2093 = !DILocation(line: 134, column: 4, scope: !2086)
!2094 = !DILocation(line: 134, column: 39, scope: !2086)
!2095 = !DILocation(line: 134, column: 45, scope: !2086)
!2096 = !DILocation(line: 135, column: 1, scope: !2086)
!2097 = distinct !DISubprogram(name: "set_char_quoting", scope: !273, file: !273, line: 143, type: !2098, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2100)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!37, !2062, !30, !37}
!2100 = !{!2101, !2102, !2103, !2104, !2105, !2107, !2108}
!2101 = !DILocalVariable(name: "o", arg: 1, scope: !2097, file: !273, line: 143, type: !2062)
!2102 = !DILocalVariable(name: "c", arg: 2, scope: !2097, file: !273, line: 143, type: !30)
!2103 = !DILocalVariable(name: "i", arg: 3, scope: !2097, file: !273, line: 143, type: !37)
!2104 = !DILocalVariable(name: "uc", scope: !2097, file: !273, line: 145, type: !45)
!2105 = !DILocalVariable(name: "p", scope: !2097, file: !273, line: 146, type: !2106)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2107 = !DILocalVariable(name: "shift", scope: !2097, file: !273, line: 148, type: !37)
!2108 = !DILocalVariable(name: "r", scope: !2097, file: !273, line: 149, type: !7)
!2109 = !DILocation(line: 0, scope: !2097)
!2110 = !DILocation(line: 147, column: 6, scope: !2097)
!2111 = !DILocation(line: 147, column: 62, scope: !2097)
!2112 = !DILocation(line: 147, column: 57, scope: !2097)
!2113 = !DILocation(line: 148, column: 15, scope: !2097)
!2114 = !DILocation(line: 149, column: 21, scope: !2097)
!2115 = !DILocation(line: 149, column: 24, scope: !2097)
!2116 = !DILocation(line: 149, column: 34, scope: !2097)
!2117 = !DILocation(line: 150, column: 13, scope: !2097)
!2118 = !DILocation(line: 150, column: 19, scope: !2097)
!2119 = !DILocation(line: 150, column: 24, scope: !2097)
!2120 = !DILocation(line: 150, column: 6, scope: !2097)
!2121 = !DILocation(line: 151, column: 3, scope: !2097)
!2122 = distinct !DISubprogram(name: "set_quoting_flags", scope: !273, file: !273, line: 159, type: !2123, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!37, !2062, !37}
!2125 = !{!2126, !2127, !2128}
!2126 = !DILocalVariable(name: "o", arg: 1, scope: !2122, file: !273, line: 159, type: !2062)
!2127 = !DILocalVariable(name: "i", arg: 2, scope: !2122, file: !273, line: 159, type: !37)
!2128 = !DILocalVariable(name: "r", scope: !2122, file: !273, line: 163, type: !37)
!2129 = !DILocation(line: 0, scope: !2122)
!2130 = !DILocation(line: 161, column: 8, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2122, file: !273, line: 161, column: 7)
!2132 = !DILocation(line: 161, column: 7, scope: !2122)
!2133 = !DILocation(line: 163, column: 14, scope: !2122)
!2134 = !{!2084, !625, i64 4}
!2135 = !DILocation(line: 164, column: 12, scope: !2122)
!2136 = !DILocation(line: 165, column: 3, scope: !2122)
!2137 = distinct !DISubprogram(name: "set_custom_quoting", scope: !273, file: !273, line: 169, type: !2138, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2140)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{null, !2062, !43, !43}
!2140 = !{!2141, !2142, !2143}
!2141 = !DILocalVariable(name: "o", arg: 1, scope: !2137, file: !273, line: 169, type: !2062)
!2142 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2137, file: !273, line: 170, type: !43)
!2143 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2137, file: !273, line: 170, type: !43)
!2144 = !DILocation(line: 0, scope: !2137)
!2145 = !DILocation(line: 172, column: 8, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2137, file: !273, line: 172, column: 7)
!2147 = !DILocation(line: 172, column: 7, scope: !2137)
!2148 = !DILocation(line: 174, column: 6, scope: !2137)
!2149 = !DILocation(line: 174, column: 12, scope: !2137)
!2150 = !DILocation(line: 175, column: 8, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2137, file: !273, line: 175, column: 7)
!2152 = !DILocation(line: 175, column: 19, scope: !2151)
!2153 = !DILocation(line: 176, column: 5, scope: !2151)
!2154 = !DILocation(line: 177, column: 6, scope: !2137)
!2155 = !DILocation(line: 177, column: 17, scope: !2137)
!2156 = !{!2084, !528, i64 40}
!2157 = !DILocation(line: 178, column: 6, scope: !2137)
!2158 = !DILocation(line: 178, column: 18, scope: !2137)
!2159 = !{!2084, !528, i64 48}
!2160 = !DILocation(line: 179, column: 1, scope: !2137)
!2161 = distinct !DISubprogram(name: "quotearg_buffer", scope: !273, file: !273, line: 774, type: !2162, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2164)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!40, !29, !40, !43, !40, !2076}
!2164 = !{!2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172}
!2165 = !DILocalVariable(name: "buffer", arg: 1, scope: !2161, file: !273, line: 774, type: !29)
!2166 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2161, file: !273, line: 774, type: !40)
!2167 = !DILocalVariable(name: "arg", arg: 3, scope: !2161, file: !273, line: 775, type: !43)
!2168 = !DILocalVariable(name: "argsize", arg: 4, scope: !2161, file: !273, line: 775, type: !40)
!2169 = !DILocalVariable(name: "o", arg: 5, scope: !2161, file: !273, line: 776, type: !2076)
!2170 = !DILocalVariable(name: "p", scope: !2161, file: !273, line: 778, type: !2076)
!2171 = !DILocalVariable(name: "saved_errno", scope: !2161, file: !273, line: 779, type: !37)
!2172 = !DILocalVariable(name: "r", scope: !2161, file: !273, line: 780, type: !40)
!2173 = !DILocation(line: 0, scope: !2161)
!2174 = !DILocation(line: 778, column: 37, scope: !2161)
!2175 = !DILocation(line: 779, column: 21, scope: !2161)
!2176 = !DILocation(line: 781, column: 43, scope: !2161)
!2177 = !DILocation(line: 781, column: 53, scope: !2161)
!2178 = !DILocation(line: 781, column: 60, scope: !2161)
!2179 = !DILocation(line: 782, column: 43, scope: !2161)
!2180 = !DILocation(line: 782, column: 58, scope: !2161)
!2181 = !DILocation(line: 780, column: 14, scope: !2161)
!2182 = !DILocation(line: 783, column: 9, scope: !2161)
!2183 = !DILocation(line: 784, column: 3, scope: !2161)
!2184 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !273, file: !273, line: 251, type: !2185, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2189)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!40, !29, !40, !43, !40, !275, !37, !2187, !43, !43}
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2189 = !{!2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2214, !2216, !2219, !2220, !2221, !2222, !2225, !2226, !2229, !2233, !2234, !2242, !2245, !2246, !2248, !2249, !2250, !2251}
!2190 = !DILocalVariable(name: "buffer", arg: 1, scope: !2184, file: !273, line: 251, type: !29)
!2191 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2184, file: !273, line: 251, type: !40)
!2192 = !DILocalVariable(name: "arg", arg: 3, scope: !2184, file: !273, line: 252, type: !43)
!2193 = !DILocalVariable(name: "argsize", arg: 4, scope: !2184, file: !273, line: 252, type: !40)
!2194 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2184, file: !273, line: 253, type: !275)
!2195 = !DILocalVariable(name: "flags", arg: 6, scope: !2184, file: !273, line: 253, type: !37)
!2196 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2184, file: !273, line: 254, type: !2187)
!2197 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2184, file: !273, line: 255, type: !43)
!2198 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2184, file: !273, line: 256, type: !43)
!2199 = !DILocalVariable(name: "unibyte_locale", scope: !2184, file: !273, line: 258, type: !60)
!2200 = !DILocalVariable(name: "len", scope: !2184, file: !273, line: 260, type: !40)
!2201 = !DILocalVariable(name: "orig_buffersize", scope: !2184, file: !273, line: 261, type: !40)
!2202 = !DILocalVariable(name: "quote_string", scope: !2184, file: !273, line: 262, type: !43)
!2203 = !DILocalVariable(name: "quote_string_len", scope: !2184, file: !273, line: 263, type: !40)
!2204 = !DILocalVariable(name: "backslash_escapes", scope: !2184, file: !273, line: 264, type: !60)
!2205 = !DILocalVariable(name: "elide_outer_quotes", scope: !2184, file: !273, line: 265, type: !60)
!2206 = !DILocalVariable(name: "encountered_single_quote", scope: !2184, file: !273, line: 266, type: !60)
!2207 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2184, file: !273, line: 267, type: !60)
!2208 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2184, file: !273, line: 309, type: !60)
!2209 = !DILocalVariable(name: "lq", scope: !2210, file: !273, line: 361, type: !43)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !273, line: 361, column: 11)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !273, line: 360, column: 13)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !273, line: 333, column: 7)
!2213 = distinct !DILexicalBlock(scope: !2184, file: !273, line: 312, column: 5)
!2214 = !DILocalVariable(name: "i", scope: !2215, file: !273, line: 395, type: !40)
!2215 = distinct !DILexicalBlock(scope: !2184, file: !273, line: 395, column: 3)
!2216 = !DILocalVariable(name: "is_right_quote", scope: !2217, file: !273, line: 397, type: !60)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !273, line: 396, column: 5)
!2218 = distinct !DILexicalBlock(scope: !2215, file: !273, line: 395, column: 3)
!2219 = !DILocalVariable(name: "escaping", scope: !2217, file: !273, line: 398, type: !60)
!2220 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2217, file: !273, line: 399, type: !60)
!2221 = !DILocalVariable(name: "c", scope: !2217, file: !273, line: 417, type: !45)
!2222 = !DILocalVariable(name: "m", scope: !2223, file: !273, line: 598, type: !40)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !273, line: 596, column: 11)
!2224 = distinct !DILexicalBlock(scope: !2217, file: !273, line: 419, column: 9)
!2225 = !DILocalVariable(name: "printable", scope: !2223, file: !273, line: 600, type: !60)
!2226 = !DILocalVariable(name: "mbs", scope: !2227, file: !273, line: 609, type: !330)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !273, line: 608, column: 15)
!2228 = distinct !DILexicalBlock(scope: !2223, file: !273, line: 602, column: 17)
!2229 = !DILocalVariable(name: "w", scope: !2230, file: !273, line: 618, type: !247)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !273, line: 617, column: 19)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !273, line: 616, column: 17)
!2232 = distinct !DILexicalBlock(scope: !2227, file: !273, line: 616, column: 17)
!2233 = !DILocalVariable(name: "bytes", scope: !2230, file: !273, line: 619, type: !40)
!2234 = !DILocalVariable(name: "j", scope: !2235, file: !273, line: 648, type: !40)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !273, line: 648, column: 29)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !273, line: 647, column: 27)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !273, line: 645, column: 29)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !273, line: 636, column: 23)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !273, line: 628, column: 30)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !273, line: 623, column: 30)
!2241 = distinct !DILexicalBlock(scope: !2230, file: !273, line: 621, column: 25)
!2242 = !DILocalVariable(name: "ilim", scope: !2243, file: !273, line: 674, type: !40)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !273, line: 671, column: 15)
!2244 = distinct !DILexicalBlock(scope: !2223, file: !273, line: 670, column: 17)
!2245 = !DILabel(scope: !2184, name: "process_input", file: !273, line: 308)
!2246 = !DILabel(scope: !2247, name: "c_and_shell_escape", file: !273, line: 502)
!2247 = distinct !DILexicalBlock(scope: !2224, file: !273, line: 478, column: 9)
!2248 = !DILabel(scope: !2247, name: "c_escape", file: !273, line: 507)
!2249 = !DILabel(scope: !2217, name: "store_escape", file: !273, line: 709)
!2250 = !DILabel(scope: !2217, name: "store_c", file: !273, line: 712)
!2251 = !DILabel(scope: !2184, name: "force_outer_quoting_style", file: !273, line: 753)
!2252 = !DILocation(line: 0, scope: !2184)
!2253 = !DILocation(line: 258, column: 25, scope: !2184)
!2254 = !DILocation(line: 258, column: 36, scope: !2184)
!2255 = !DILocation(line: 267, column: 3, scope: !2184)
!2256 = !DILocation(line: 261, column: 10, scope: !2184)
!2257 = !DILocation(line: 262, column: 15, scope: !2184)
!2258 = !DILocation(line: 263, column: 10, scope: !2184)
!2259 = !DILocation(line: 308, column: 2, scope: !2184)
!2260 = !DILocation(line: 311, column: 3, scope: !2184)
!2261 = !DILocation(line: 318, column: 11, scope: !2213)
!2262 = !DILocation(line: 319, column: 9, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !273, line: 319, column: 9)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !273, line: 319, column: 9)
!2265 = distinct !DILexicalBlock(scope: !2213, file: !273, line: 318, column: 11)
!2266 = !DILocation(line: 319, column: 9, scope: !2264)
!2267 = !DILocation(line: 0, scope: !321, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 357, column: 26, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !273, line: 335, column: 11)
!2270 = distinct !DILexicalBlock(scope: !2212, file: !273, line: 334, column: 13)
!2271 = !DILocation(line: 199, column: 29, scope: !321, inlinedAt: !2268)
!2272 = !DILocation(line: 201, column: 19, scope: !2273, inlinedAt: !2268)
!2273 = distinct !DILexicalBlock(scope: !321, file: !273, line: 201, column: 7)
!2274 = !DILocation(line: 201, column: 7, scope: !321, inlinedAt: !2268)
!2275 = !DILocation(line: 229, column: 3, scope: !321, inlinedAt: !2268)
!2276 = !DILocation(line: 230, column: 3, scope: !321, inlinedAt: !2268)
!2277 = !DILocation(line: 230, column: 13, scope: !321, inlinedAt: !2268)
!2278 = !DILocalVariable(name: "ps", arg: 1, scope: !2279, file: !2030, line: 1135, type: !2282)
!2279 = distinct !DISubprogram(name: "mbszero", scope: !2030, file: !2030, line: 1135, type: !2280, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2283)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{null, !2282}
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!2283 = !{!2278}
!2284 = !DILocation(line: 0, scope: !2279, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 230, column: 18, scope: !321, inlinedAt: !2268)
!2286 = !DILocalVariable(name: "__dest", arg: 1, scope: !2287, file: !2039, line: 57, type: !31)
!2287 = distinct !DISubprogram(name: "memset", scope: !2039, file: !2039, line: 57, type: !2040, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2288)
!2288 = !{!2286, !2289, !2290}
!2289 = !DILocalVariable(name: "__ch", arg: 2, scope: !2287, file: !2039, line: 57, type: !37)
!2290 = !DILocalVariable(name: "__len", arg: 3, scope: !2287, file: !2039, line: 57, type: !40)
!2291 = !DILocation(line: 0, scope: !2287, inlinedAt: !2292)
!2292 = distinct !DILocation(line: 1137, column: 3, scope: !2279, inlinedAt: !2285)
!2293 = !DILocation(line: 59, column: 10, scope: !2287, inlinedAt: !2292)
!2294 = !DILocation(line: 231, column: 7, scope: !2295, inlinedAt: !2268)
!2295 = distinct !DILexicalBlock(scope: !321, file: !273, line: 231, column: 7)
!2296 = !DILocation(line: 231, column: 40, scope: !2295, inlinedAt: !2268)
!2297 = !DILocation(line: 231, column: 45, scope: !2295, inlinedAt: !2268)
!2298 = !DILocation(line: 235, column: 1, scope: !321, inlinedAt: !2268)
!2299 = !DILocation(line: 0, scope: !321, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 358, column: 27, scope: !2269)
!2301 = !DILocation(line: 199, column: 29, scope: !321, inlinedAt: !2300)
!2302 = !DILocation(line: 201, column: 19, scope: !2273, inlinedAt: !2300)
!2303 = !DILocation(line: 201, column: 7, scope: !321, inlinedAt: !2300)
!2304 = !DILocation(line: 229, column: 3, scope: !321, inlinedAt: !2300)
!2305 = !DILocation(line: 230, column: 3, scope: !321, inlinedAt: !2300)
!2306 = !DILocation(line: 230, column: 13, scope: !321, inlinedAt: !2300)
!2307 = !DILocation(line: 0, scope: !2279, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 230, column: 18, scope: !321, inlinedAt: !2300)
!2309 = !DILocation(line: 0, scope: !2287, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 1137, column: 3, scope: !2279, inlinedAt: !2308)
!2311 = !DILocation(line: 59, column: 10, scope: !2287, inlinedAt: !2310)
!2312 = !DILocation(line: 231, column: 7, scope: !2295, inlinedAt: !2300)
!2313 = !DILocation(line: 231, column: 40, scope: !2295, inlinedAt: !2300)
!2314 = !DILocation(line: 231, column: 45, scope: !2295, inlinedAt: !2300)
!2315 = !DILocation(line: 235, column: 1, scope: !321, inlinedAt: !2300)
!2316 = !DILocation(line: 360, column: 13, scope: !2212)
!2317 = !DILocation(line: 0, scope: !2210)
!2318 = !DILocation(line: 361, column: 45, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2210, file: !273, line: 361, column: 11)
!2320 = !DILocation(line: 361, column: 11, scope: !2210)
!2321 = !DILocation(line: 362, column: 13, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !273, line: 362, column: 13)
!2323 = distinct !DILexicalBlock(scope: !2319, file: !273, line: 362, column: 13)
!2324 = !DILocation(line: 362, column: 13, scope: !2323)
!2325 = !DILocation(line: 361, column: 52, scope: !2319)
!2326 = distinct !{!2326, !2320, !2327, !591}
!2327 = !DILocation(line: 362, column: 13, scope: !2210)
!2328 = !DILocation(line: 260, column: 10, scope: !2184)
!2329 = !DILocation(line: 365, column: 28, scope: !2212)
!2330 = !DILocation(line: 367, column: 7, scope: !2213)
!2331 = !DILocation(line: 370, column: 7, scope: !2213)
!2332 = !DILocation(line: 376, column: 11, scope: !2213)
!2333 = !DILocation(line: 381, column: 11, scope: !2213)
!2334 = !DILocation(line: 382, column: 9, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !273, line: 382, column: 9)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !273, line: 382, column: 9)
!2337 = distinct !DILexicalBlock(scope: !2213, file: !273, line: 381, column: 11)
!2338 = !DILocation(line: 382, column: 9, scope: !2336)
!2339 = !DILocation(line: 389, column: 7, scope: !2213)
!2340 = !DILocation(line: 392, column: 7, scope: !2213)
!2341 = !DILocation(line: 0, scope: !2215)
!2342 = !DILocation(line: 395, column: 8, scope: !2215)
!2343 = !DILocation(line: 395, column: 34, scope: !2218)
!2344 = !DILocation(line: 395, column: 26, scope: !2218)
!2345 = !DILocation(line: 395, column: 48, scope: !2218)
!2346 = !DILocation(line: 395, column: 55, scope: !2218)
!2347 = !DILocation(line: 395, column: 3, scope: !2215)
!2348 = !DILocation(line: 395, column: 67, scope: !2218)
!2349 = !DILocation(line: 0, scope: !2217)
!2350 = !DILocation(line: 402, column: 11, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2217, file: !273, line: 401, column: 11)
!2352 = !DILocation(line: 404, column: 17, scope: !2351)
!2353 = !DILocation(line: 405, column: 39, scope: !2351)
!2354 = !DILocation(line: 409, column: 32, scope: !2351)
!2355 = !DILocation(line: 405, column: 19, scope: !2351)
!2356 = !DILocation(line: 405, column: 15, scope: !2351)
!2357 = !DILocation(line: 410, column: 11, scope: !2351)
!2358 = !DILocation(line: 410, column: 25, scope: !2351)
!2359 = !DILocalVariable(name: "__s1", arg: 1, scope: !2360, file: !575, line: 974, type: !742)
!2360 = distinct !DISubprogram(name: "memeq", scope: !575, file: !575, line: 974, type: !2001, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2361)
!2361 = !{!2359, !2362, !2363}
!2362 = !DILocalVariable(name: "__s2", arg: 2, scope: !2360, file: !575, line: 974, type: !742)
!2363 = !DILocalVariable(name: "__n", arg: 3, scope: !2360, file: !575, line: 974, type: !40)
!2364 = !DILocation(line: 0, scope: !2360, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 410, column: 14, scope: !2351)
!2366 = !DILocation(line: 976, column: 11, scope: !2360, inlinedAt: !2365)
!2367 = !DILocation(line: 976, column: 10, scope: !2360, inlinedAt: !2365)
!2368 = !DILocation(line: 401, column: 11, scope: !2217)
!2369 = !DILocation(line: 417, column: 25, scope: !2217)
!2370 = !DILocation(line: 418, column: 7, scope: !2217)
!2371 = !DILocation(line: 421, column: 15, scope: !2224)
!2372 = !DILocation(line: 423, column: 15, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !273, line: 423, column: 15)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !273, line: 422, column: 13)
!2375 = distinct !DILexicalBlock(scope: !2224, file: !273, line: 421, column: 15)
!2376 = !DILocation(line: 423, column: 15, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2373, file: !273, line: 423, column: 15)
!2378 = !DILocation(line: 423, column: 15, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !273, line: 423, column: 15)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !273, line: 423, column: 15)
!2381 = distinct !DILexicalBlock(scope: !2377, file: !273, line: 423, column: 15)
!2382 = !DILocation(line: 423, column: 15, scope: !2380)
!2383 = !DILocation(line: 423, column: 15, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !273, line: 423, column: 15)
!2385 = distinct !DILexicalBlock(scope: !2381, file: !273, line: 423, column: 15)
!2386 = !DILocation(line: 423, column: 15, scope: !2385)
!2387 = !DILocation(line: 423, column: 15, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !273, line: 423, column: 15)
!2389 = distinct !DILexicalBlock(scope: !2381, file: !273, line: 423, column: 15)
!2390 = !DILocation(line: 423, column: 15, scope: !2389)
!2391 = !DILocation(line: 423, column: 15, scope: !2381)
!2392 = !DILocation(line: 423, column: 15, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !273, line: 423, column: 15)
!2394 = distinct !DILexicalBlock(scope: !2373, file: !273, line: 423, column: 15)
!2395 = !DILocation(line: 423, column: 15, scope: !2394)
!2396 = !DILocation(line: 431, column: 19, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2374, file: !273, line: 430, column: 19)
!2398 = !DILocation(line: 431, column: 24, scope: !2397)
!2399 = !DILocation(line: 431, column: 28, scope: !2397)
!2400 = !DILocation(line: 431, column: 38, scope: !2397)
!2401 = !DILocation(line: 431, column: 48, scope: !2397)
!2402 = !DILocation(line: 431, column: 59, scope: !2397)
!2403 = !DILocation(line: 433, column: 19, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !273, line: 433, column: 19)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !273, line: 433, column: 19)
!2406 = distinct !DILexicalBlock(scope: !2397, file: !273, line: 432, column: 17)
!2407 = !DILocation(line: 433, column: 19, scope: !2405)
!2408 = !DILocation(line: 434, column: 19, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !273, line: 434, column: 19)
!2410 = distinct !DILexicalBlock(scope: !2406, file: !273, line: 434, column: 19)
!2411 = !DILocation(line: 434, column: 19, scope: !2410)
!2412 = !DILocation(line: 435, column: 17, scope: !2406)
!2413 = !DILocation(line: 442, column: 20, scope: !2375)
!2414 = !DILocation(line: 447, column: 11, scope: !2224)
!2415 = !DILocation(line: 450, column: 19, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2224, file: !273, line: 448, column: 13)
!2417 = !DILocation(line: 456, column: 19, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2416, file: !273, line: 455, column: 19)
!2419 = !DILocation(line: 456, column: 24, scope: !2418)
!2420 = !DILocation(line: 456, column: 28, scope: !2418)
!2421 = !DILocation(line: 456, column: 38, scope: !2418)
!2422 = !DILocation(line: 456, column: 47, scope: !2418)
!2423 = !DILocation(line: 456, column: 41, scope: !2418)
!2424 = !DILocation(line: 456, column: 52, scope: !2418)
!2425 = !DILocation(line: 455, column: 19, scope: !2416)
!2426 = !DILocation(line: 457, column: 25, scope: !2418)
!2427 = !DILocation(line: 457, column: 17, scope: !2418)
!2428 = !DILocation(line: 464, column: 25, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2418, file: !273, line: 458, column: 19)
!2430 = !DILocation(line: 468, column: 21, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !273, line: 468, column: 21)
!2432 = distinct !DILexicalBlock(scope: !2429, file: !273, line: 468, column: 21)
!2433 = !DILocation(line: 468, column: 21, scope: !2432)
!2434 = !DILocation(line: 469, column: 21, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !273, line: 469, column: 21)
!2436 = distinct !DILexicalBlock(scope: !2429, file: !273, line: 469, column: 21)
!2437 = !DILocation(line: 469, column: 21, scope: !2436)
!2438 = !DILocation(line: 470, column: 21, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !273, line: 470, column: 21)
!2440 = distinct !DILexicalBlock(scope: !2429, file: !273, line: 470, column: 21)
!2441 = !DILocation(line: 470, column: 21, scope: !2440)
!2442 = !DILocation(line: 471, column: 21, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !273, line: 471, column: 21)
!2444 = distinct !DILexicalBlock(scope: !2429, file: !273, line: 471, column: 21)
!2445 = !DILocation(line: 471, column: 21, scope: !2444)
!2446 = !DILocation(line: 472, column: 21, scope: !2429)
!2447 = !DILocation(line: 482, column: 33, scope: !2247)
!2448 = !DILocation(line: 483, column: 33, scope: !2247)
!2449 = !DILocation(line: 485, column: 33, scope: !2247)
!2450 = !DILocation(line: 486, column: 33, scope: !2247)
!2451 = !DILocation(line: 487, column: 33, scope: !2247)
!2452 = !DILocation(line: 490, column: 17, scope: !2247)
!2453 = !DILocation(line: 492, column: 21, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !273, line: 491, column: 15)
!2455 = distinct !DILexicalBlock(scope: !2247, file: !273, line: 490, column: 17)
!2456 = !DILocation(line: 499, column: 35, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2247, file: !273, line: 499, column: 17)
!2458 = !DILocation(line: 499, column: 57, scope: !2457)
!2459 = !DILocation(line: 0, scope: !2247)
!2460 = !DILocation(line: 502, column: 11, scope: !2247)
!2461 = !DILocation(line: 504, column: 17, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2247, file: !273, line: 503, column: 17)
!2463 = !DILocation(line: 507, column: 11, scope: !2247)
!2464 = !DILocation(line: 508, column: 17, scope: !2247)
!2465 = !DILocation(line: 517, column: 15, scope: !2224)
!2466 = !DILocation(line: 517, column: 40, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2224, file: !273, line: 517, column: 15)
!2468 = !DILocation(line: 517, column: 47, scope: !2467)
!2469 = !DILocation(line: 517, column: 18, scope: !2467)
!2470 = !DILocation(line: 521, column: 17, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2224, file: !273, line: 521, column: 15)
!2472 = !DILocation(line: 521, column: 15, scope: !2224)
!2473 = !DILocation(line: 525, column: 11, scope: !2224)
!2474 = !DILocation(line: 537, column: 15, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2224, file: !273, line: 536, column: 15)
!2476 = !DILocation(line: 536, column: 15, scope: !2224)
!2477 = !DILocation(line: 544, column: 15, scope: !2224)
!2478 = !DILocation(line: 546, column: 19, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !273, line: 545, column: 13)
!2480 = distinct !DILexicalBlock(scope: !2224, file: !273, line: 544, column: 15)
!2481 = !DILocation(line: 549, column: 19, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2479, file: !273, line: 549, column: 19)
!2483 = !DILocation(line: 549, column: 30, scope: !2482)
!2484 = !DILocation(line: 558, column: 15, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !273, line: 558, column: 15)
!2486 = distinct !DILexicalBlock(scope: !2479, file: !273, line: 558, column: 15)
!2487 = !DILocation(line: 558, column: 15, scope: !2486)
!2488 = !DILocation(line: 559, column: 15, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !273, line: 559, column: 15)
!2490 = distinct !DILexicalBlock(scope: !2479, file: !273, line: 559, column: 15)
!2491 = !DILocation(line: 559, column: 15, scope: !2490)
!2492 = !DILocation(line: 560, column: 15, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !273, line: 560, column: 15)
!2494 = distinct !DILexicalBlock(scope: !2479, file: !273, line: 560, column: 15)
!2495 = !DILocation(line: 560, column: 15, scope: !2494)
!2496 = !DILocation(line: 562, column: 13, scope: !2479)
!2497 = !DILocation(line: 602, column: 17, scope: !2223)
!2498 = !DILocation(line: 0, scope: !2223)
!2499 = !DILocation(line: 605, column: 29, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2228, file: !273, line: 603, column: 15)
!2501 = !DILocation(line: 605, column: 41, scope: !2500)
!2502 = !DILocation(line: 670, column: 23, scope: !2244)
!2503 = !DILocation(line: 609, column: 17, scope: !2227)
!2504 = !DILocation(line: 609, column: 27, scope: !2227)
!2505 = !DILocation(line: 0, scope: !2279, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 609, column: 32, scope: !2227)
!2507 = !DILocation(line: 0, scope: !2287, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 1137, column: 3, scope: !2279, inlinedAt: !2506)
!2509 = !DILocation(line: 59, column: 10, scope: !2287, inlinedAt: !2508)
!2510 = !DILocation(line: 613, column: 29, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2227, file: !273, line: 613, column: 21)
!2512 = !DILocation(line: 613, column: 21, scope: !2227)
!2513 = !DILocation(line: 614, column: 29, scope: !2511)
!2514 = !DILocation(line: 614, column: 19, scope: !2511)
!2515 = !DILocation(line: 618, column: 21, scope: !2230)
!2516 = !DILocation(line: 620, column: 54, scope: !2230)
!2517 = !DILocation(line: 0, scope: !2230)
!2518 = !DILocation(line: 619, column: 36, scope: !2230)
!2519 = !DILocation(line: 621, column: 25, scope: !2230)
!2520 = !DILocation(line: 631, column: 38, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2239, file: !273, line: 629, column: 23)
!2522 = !DILocation(line: 631, column: 48, scope: !2521)
!2523 = !DILocation(line: 665, column: 19, scope: !2231)
!2524 = !DILocation(line: 666, column: 15, scope: !2228)
!2525 = !DILocation(line: 626, column: 25, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2240, file: !273, line: 624, column: 23)
!2527 = !DILocation(line: 631, column: 51, scope: !2521)
!2528 = !DILocation(line: 631, column: 25, scope: !2521)
!2529 = !DILocation(line: 632, column: 28, scope: !2521)
!2530 = !DILocation(line: 631, column: 34, scope: !2521)
!2531 = distinct !{!2531, !2528, !2529, !591}
!2532 = !DILocation(line: 646, column: 29, scope: !2237)
!2533 = !DILocation(line: 0, scope: !2235)
!2534 = !DILocation(line: 649, column: 49, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2235, file: !273, line: 648, column: 29)
!2536 = !DILocation(line: 649, column: 39, scope: !2535)
!2537 = !DILocation(line: 649, column: 31, scope: !2535)
!2538 = !DILocation(line: 648, column: 60, scope: !2535)
!2539 = !DILocation(line: 648, column: 50, scope: !2535)
!2540 = !DILocation(line: 648, column: 29, scope: !2235)
!2541 = distinct !{!2541, !2540, !2542, !591}
!2542 = !DILocation(line: 654, column: 33, scope: !2235)
!2543 = !DILocation(line: 657, column: 43, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2238, file: !273, line: 657, column: 29)
!2545 = !DILocalVariable(name: "wc", arg: 1, scope: !2546, file: !2547, line: 865, type: !2550)
!2546 = distinct !DISubprogram(name: "c32isprint", scope: !2547, file: !2547, line: 865, type: !2548, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2552)
!2547 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!37, !2550}
!2550 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2551, line: 20, baseType: !7)
!2551 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2552 = !{!2545}
!2553 = !DILocation(line: 0, scope: !2546, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 657, column: 31, scope: !2544)
!2555 = !DILocation(line: 871, column: 10, scope: !2546, inlinedAt: !2554)
!2556 = !DILocation(line: 657, column: 31, scope: !2544)
!2557 = !DILocation(line: 664, column: 23, scope: !2230)
!2558 = !DILocation(line: 753, column: 2, scope: !2184)
!2559 = !DILocation(line: 756, column: 51, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2184, file: !273, line: 756, column: 7)
!2561 = !DILocation(line: 670, column: 19, scope: !2244)
!2562 = !DILocation(line: 670, column: 45, scope: !2244)
!2563 = !DILocation(line: 674, column: 33, scope: !2243)
!2564 = !DILocation(line: 0, scope: !2243)
!2565 = !DILocation(line: 676, column: 17, scope: !2243)
!2566 = !DILocation(line: 398, column: 12, scope: !2217)
!2567 = !DILocation(line: 678, column: 43, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !273, line: 678, column: 25)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !273, line: 677, column: 19)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !273, line: 676, column: 17)
!2571 = distinct !DILexicalBlock(scope: !2243, file: !273, line: 676, column: 17)
!2572 = !DILocation(line: 680, column: 25, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !273, line: 680, column: 25)
!2574 = distinct !DILexicalBlock(scope: !2568, file: !273, line: 679, column: 23)
!2575 = !DILocation(line: 680, column: 25, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2573, file: !273, line: 680, column: 25)
!2577 = !DILocation(line: 680, column: 25, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !273, line: 680, column: 25)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !273, line: 680, column: 25)
!2580 = distinct !DILexicalBlock(scope: !2576, file: !273, line: 680, column: 25)
!2581 = !DILocation(line: 680, column: 25, scope: !2579)
!2582 = !DILocation(line: 680, column: 25, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !273, line: 680, column: 25)
!2584 = distinct !DILexicalBlock(scope: !2580, file: !273, line: 680, column: 25)
!2585 = !DILocation(line: 680, column: 25, scope: !2584)
!2586 = !DILocation(line: 680, column: 25, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !273, line: 680, column: 25)
!2588 = distinct !DILexicalBlock(scope: !2580, file: !273, line: 680, column: 25)
!2589 = !DILocation(line: 680, column: 25, scope: !2588)
!2590 = !DILocation(line: 680, column: 25, scope: !2580)
!2591 = !DILocation(line: 680, column: 25, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !273, line: 680, column: 25)
!2593 = distinct !DILexicalBlock(scope: !2573, file: !273, line: 680, column: 25)
!2594 = !DILocation(line: 680, column: 25, scope: !2593)
!2595 = !DILocation(line: 681, column: 25, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !273, line: 681, column: 25)
!2597 = distinct !DILexicalBlock(scope: !2574, file: !273, line: 681, column: 25)
!2598 = !DILocation(line: 681, column: 25, scope: !2597)
!2599 = !DILocation(line: 682, column: 25, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !273, line: 682, column: 25)
!2601 = distinct !DILexicalBlock(scope: !2574, file: !273, line: 682, column: 25)
!2602 = !DILocation(line: 682, column: 25, scope: !2601)
!2603 = !DILocation(line: 683, column: 38, scope: !2574)
!2604 = !DILocation(line: 683, column: 33, scope: !2574)
!2605 = !DILocation(line: 684, column: 23, scope: !2574)
!2606 = !DILocation(line: 685, column: 30, scope: !2568)
!2607 = !DILocation(line: 687, column: 25, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !273, line: 687, column: 25)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !273, line: 687, column: 25)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !273, line: 686, column: 23)
!2611 = distinct !DILexicalBlock(scope: !2568, file: !273, line: 685, column: 30)
!2612 = !DILocation(line: 687, column: 25, scope: !2609)
!2613 = !DILocation(line: 689, column: 23, scope: !2610)
!2614 = !DILocation(line: 690, column: 35, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2569, file: !273, line: 690, column: 25)
!2616 = !DILocation(line: 690, column: 30, scope: !2615)
!2617 = !DILocation(line: 690, column: 25, scope: !2569)
!2618 = !DILocation(line: 692, column: 21, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !273, line: 692, column: 21)
!2620 = distinct !DILexicalBlock(scope: !2569, file: !273, line: 692, column: 21)
!2621 = !DILocation(line: 692, column: 21, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !273, line: 692, column: 21)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !273, line: 692, column: 21)
!2624 = distinct !DILexicalBlock(scope: !2619, file: !273, line: 692, column: 21)
!2625 = !DILocation(line: 692, column: 21, scope: !2623)
!2626 = !DILocation(line: 692, column: 21, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !273, line: 692, column: 21)
!2628 = distinct !DILexicalBlock(scope: !2624, file: !273, line: 692, column: 21)
!2629 = !DILocation(line: 692, column: 21, scope: !2628)
!2630 = !DILocation(line: 692, column: 21, scope: !2624)
!2631 = !DILocation(line: 0, scope: !2569)
!2632 = !DILocation(line: 693, column: 21, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !273, line: 693, column: 21)
!2634 = distinct !DILexicalBlock(scope: !2569, file: !273, line: 693, column: 21)
!2635 = !DILocation(line: 693, column: 21, scope: !2634)
!2636 = !DILocation(line: 694, column: 25, scope: !2569)
!2637 = !DILocation(line: 676, column: 17, scope: !2570)
!2638 = distinct !{!2638, !2639, !2640}
!2639 = !DILocation(line: 676, column: 17, scope: !2571)
!2640 = !DILocation(line: 695, column: 19, scope: !2571)
!2641 = !DILocation(line: 409, column: 30, scope: !2351)
!2642 = !DILocation(line: 702, column: 34, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2217, file: !273, line: 702, column: 11)
!2644 = !DILocation(line: 704, column: 14, scope: !2643)
!2645 = !DILocation(line: 705, column: 14, scope: !2643)
!2646 = !DILocation(line: 705, column: 35, scope: !2643)
!2647 = !DILocation(line: 705, column: 17, scope: !2643)
!2648 = !DILocation(line: 705, column: 47, scope: !2643)
!2649 = !DILocation(line: 705, column: 65, scope: !2643)
!2650 = !DILocation(line: 706, column: 11, scope: !2643)
!2651 = !DILocation(line: 702, column: 11, scope: !2217)
!2652 = !DILocation(line: 395, column: 15, scope: !2215)
!2653 = !DILocation(line: 709, column: 5, scope: !2217)
!2654 = !DILocation(line: 710, column: 7, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2217, file: !273, line: 710, column: 7)
!2656 = !DILocation(line: 710, column: 7, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2655, file: !273, line: 710, column: 7)
!2658 = !DILocation(line: 710, column: 7, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !273, line: 710, column: 7)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !273, line: 710, column: 7)
!2661 = distinct !DILexicalBlock(scope: !2657, file: !273, line: 710, column: 7)
!2662 = !DILocation(line: 710, column: 7, scope: !2660)
!2663 = !DILocation(line: 710, column: 7, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !273, line: 710, column: 7)
!2665 = distinct !DILexicalBlock(scope: !2661, file: !273, line: 710, column: 7)
!2666 = !DILocation(line: 710, column: 7, scope: !2665)
!2667 = !DILocation(line: 710, column: 7, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !273, line: 710, column: 7)
!2669 = distinct !DILexicalBlock(scope: !2661, file: !273, line: 710, column: 7)
!2670 = !DILocation(line: 710, column: 7, scope: !2669)
!2671 = !DILocation(line: 710, column: 7, scope: !2661)
!2672 = !DILocation(line: 710, column: 7, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !273, line: 710, column: 7)
!2674 = distinct !DILexicalBlock(scope: !2655, file: !273, line: 710, column: 7)
!2675 = !DILocation(line: 710, column: 7, scope: !2674)
!2676 = !DILocation(line: 712, column: 5, scope: !2217)
!2677 = !DILocation(line: 713, column: 7, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !273, line: 713, column: 7)
!2679 = distinct !DILexicalBlock(scope: !2217, file: !273, line: 713, column: 7)
!2680 = !DILocation(line: 417, column: 21, scope: !2217)
!2681 = !DILocation(line: 713, column: 7, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !273, line: 713, column: 7)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !273, line: 713, column: 7)
!2684 = distinct !DILexicalBlock(scope: !2678, file: !273, line: 713, column: 7)
!2685 = !DILocation(line: 713, column: 7, scope: !2683)
!2686 = !DILocation(line: 713, column: 7, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !273, line: 713, column: 7)
!2688 = distinct !DILexicalBlock(scope: !2684, file: !273, line: 713, column: 7)
!2689 = !DILocation(line: 713, column: 7, scope: !2688)
!2690 = !DILocation(line: 713, column: 7, scope: !2684)
!2691 = !DILocation(line: 714, column: 7, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !273, line: 714, column: 7)
!2693 = distinct !DILexicalBlock(scope: !2217, file: !273, line: 714, column: 7)
!2694 = !DILocation(line: 714, column: 7, scope: !2693)
!2695 = !DILocation(line: 716, column: 11, scope: !2217)
!2696 = !DILocation(line: 718, column: 5, scope: !2218)
!2697 = !DILocation(line: 395, column: 82, scope: !2218)
!2698 = !DILocation(line: 395, column: 3, scope: !2218)
!2699 = distinct !{!2699, !2347, !2700, !591}
!2700 = !DILocation(line: 718, column: 5, scope: !2215)
!2701 = !DILocation(line: 720, column: 11, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2184, file: !273, line: 720, column: 7)
!2703 = !DILocation(line: 720, column: 16, scope: !2702)
!2704 = !DILocation(line: 728, column: 51, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2184, file: !273, line: 728, column: 7)
!2706 = !DILocation(line: 731, column: 11, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2705, file: !273, line: 730, column: 5)
!2708 = !DILocation(line: 732, column: 16, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2707, file: !273, line: 731, column: 11)
!2710 = !DILocation(line: 732, column: 9, scope: !2709)
!2711 = !DILocation(line: 736, column: 18, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2709, file: !273, line: 736, column: 16)
!2713 = !DILocation(line: 736, column: 29, scope: !2712)
!2714 = !DILocation(line: 745, column: 7, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2184, file: !273, line: 745, column: 7)
!2716 = !DILocation(line: 745, column: 20, scope: !2715)
!2717 = !DILocation(line: 746, column: 12, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !273, line: 746, column: 5)
!2719 = distinct !DILexicalBlock(scope: !2715, file: !273, line: 746, column: 5)
!2720 = !DILocation(line: 746, column: 5, scope: !2719)
!2721 = !DILocation(line: 747, column: 7, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !273, line: 747, column: 7)
!2723 = distinct !DILexicalBlock(scope: !2718, file: !273, line: 747, column: 7)
!2724 = !DILocation(line: 747, column: 7, scope: !2723)
!2725 = !DILocation(line: 746, column: 39, scope: !2718)
!2726 = distinct !{!2726, !2720, !2727, !591}
!2727 = !DILocation(line: 747, column: 7, scope: !2719)
!2728 = !DILocation(line: 749, column: 11, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2184, file: !273, line: 749, column: 7)
!2730 = !DILocation(line: 749, column: 7, scope: !2184)
!2731 = !DILocation(line: 750, column: 5, scope: !2729)
!2732 = !DILocation(line: 750, column: 17, scope: !2729)
!2733 = !DILocation(line: 756, column: 21, scope: !2560)
!2734 = !DILocation(line: 760, column: 42, scope: !2184)
!2735 = !DILocation(line: 758, column: 10, scope: !2184)
!2736 = !DILocation(line: 758, column: 3, scope: !2184)
!2737 = !DILocation(line: 762, column: 1, scope: !2184)
!2738 = !DISubprogram(name: "iswprint", scope: !2739, file: !2739, line: 120, type: !2548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!2739 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2740 = distinct !DISubprogram(name: "quotearg_alloc", scope: !273, file: !273, line: 788, type: !2741, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2743)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!29, !43, !40, !2076}
!2743 = !{!2744, !2745, !2746}
!2744 = !DILocalVariable(name: "arg", arg: 1, scope: !2740, file: !273, line: 788, type: !43)
!2745 = !DILocalVariable(name: "argsize", arg: 2, scope: !2740, file: !273, line: 788, type: !40)
!2746 = !DILocalVariable(name: "o", arg: 3, scope: !2740, file: !273, line: 789, type: !2076)
!2747 = !DILocation(line: 0, scope: !2740)
!2748 = !DILocalVariable(name: "arg", arg: 1, scope: !2749, file: !273, line: 801, type: !43)
!2749 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !273, file: !273, line: 801, type: !2750, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2752)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!29, !43, !40, !460, !2076}
!2752 = !{!2748, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760}
!2753 = !DILocalVariable(name: "argsize", arg: 2, scope: !2749, file: !273, line: 801, type: !40)
!2754 = !DILocalVariable(name: "size", arg: 3, scope: !2749, file: !273, line: 801, type: !460)
!2755 = !DILocalVariable(name: "o", arg: 4, scope: !2749, file: !273, line: 802, type: !2076)
!2756 = !DILocalVariable(name: "p", scope: !2749, file: !273, line: 804, type: !2076)
!2757 = !DILocalVariable(name: "saved_errno", scope: !2749, file: !273, line: 805, type: !37)
!2758 = !DILocalVariable(name: "flags", scope: !2749, file: !273, line: 807, type: !37)
!2759 = !DILocalVariable(name: "bufsize", scope: !2749, file: !273, line: 808, type: !40)
!2760 = !DILocalVariable(name: "buf", scope: !2749, file: !273, line: 812, type: !29)
!2761 = !DILocation(line: 0, scope: !2749, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 791, column: 10, scope: !2740)
!2763 = !DILocation(line: 804, column: 37, scope: !2749, inlinedAt: !2762)
!2764 = !DILocation(line: 805, column: 21, scope: !2749, inlinedAt: !2762)
!2765 = !DILocation(line: 807, column: 18, scope: !2749, inlinedAt: !2762)
!2766 = !DILocation(line: 807, column: 24, scope: !2749, inlinedAt: !2762)
!2767 = !DILocation(line: 808, column: 72, scope: !2749, inlinedAt: !2762)
!2768 = !DILocation(line: 809, column: 53, scope: !2749, inlinedAt: !2762)
!2769 = !DILocation(line: 810, column: 49, scope: !2749, inlinedAt: !2762)
!2770 = !DILocation(line: 811, column: 49, scope: !2749, inlinedAt: !2762)
!2771 = !DILocation(line: 808, column: 20, scope: !2749, inlinedAt: !2762)
!2772 = !DILocation(line: 811, column: 62, scope: !2749, inlinedAt: !2762)
!2773 = !DILocation(line: 812, column: 15, scope: !2749, inlinedAt: !2762)
!2774 = !DILocation(line: 813, column: 60, scope: !2749, inlinedAt: !2762)
!2775 = !DILocation(line: 815, column: 32, scope: !2749, inlinedAt: !2762)
!2776 = !DILocation(line: 815, column: 47, scope: !2749, inlinedAt: !2762)
!2777 = !DILocation(line: 813, column: 3, scope: !2749, inlinedAt: !2762)
!2778 = !DILocation(line: 816, column: 9, scope: !2749, inlinedAt: !2762)
!2779 = !DILocation(line: 791, column: 3, scope: !2740)
!2780 = !DILocation(line: 0, scope: !2749)
!2781 = !DILocation(line: 804, column: 37, scope: !2749)
!2782 = !DILocation(line: 805, column: 21, scope: !2749)
!2783 = !DILocation(line: 807, column: 18, scope: !2749)
!2784 = !DILocation(line: 807, column: 27, scope: !2749)
!2785 = !DILocation(line: 807, column: 24, scope: !2749)
!2786 = !DILocation(line: 808, column: 72, scope: !2749)
!2787 = !DILocation(line: 809, column: 53, scope: !2749)
!2788 = !DILocation(line: 810, column: 49, scope: !2749)
!2789 = !DILocation(line: 811, column: 49, scope: !2749)
!2790 = !DILocation(line: 808, column: 20, scope: !2749)
!2791 = !DILocation(line: 811, column: 62, scope: !2749)
!2792 = !DILocation(line: 812, column: 15, scope: !2749)
!2793 = !DILocation(line: 813, column: 60, scope: !2749)
!2794 = !DILocation(line: 815, column: 32, scope: !2749)
!2795 = !DILocation(line: 815, column: 47, scope: !2749)
!2796 = !DILocation(line: 813, column: 3, scope: !2749)
!2797 = !DILocation(line: 816, column: 9, scope: !2749)
!2798 = !DILocation(line: 817, column: 7, scope: !2749)
!2799 = !DILocation(line: 818, column: 11, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2749, file: !273, line: 817, column: 7)
!2801 = !DILocation(line: 818, column: 5, scope: !2800)
!2802 = !DILocation(line: 819, column: 3, scope: !2749)
!2803 = distinct !DISubprogram(name: "quotearg_free", scope: !273, file: !273, line: 837, type: !226, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2804)
!2804 = !{!2805, !2806}
!2805 = !DILocalVariable(name: "sv", scope: !2803, file: !273, line: 839, type: !344)
!2806 = !DILocalVariable(name: "i", scope: !2807, file: !273, line: 840, type: !37)
!2807 = distinct !DILexicalBlock(scope: !2803, file: !273, line: 840, column: 3)
!2808 = !DILocation(line: 839, column: 24, scope: !2803)
!2809 = !DILocation(line: 0, scope: !2803)
!2810 = !DILocation(line: 0, scope: !2807)
!2811 = !DILocation(line: 840, column: 21, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2807, file: !273, line: 840, column: 3)
!2813 = !DILocation(line: 840, column: 3, scope: !2807)
!2814 = !DILocation(line: 842, column: 13, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2803, file: !273, line: 842, column: 7)
!2816 = !{!2817, !528, i64 8}
!2817 = !{!"slotvec", !1441, i64 0, !528, i64 8}
!2818 = !DILocation(line: 842, column: 17, scope: !2815)
!2819 = !DILocation(line: 842, column: 7, scope: !2803)
!2820 = !DILocation(line: 841, column: 17, scope: !2812)
!2821 = !DILocation(line: 841, column: 5, scope: !2812)
!2822 = !DILocation(line: 840, column: 32, scope: !2812)
!2823 = distinct !{!2823, !2813, !2824, !591}
!2824 = !DILocation(line: 841, column: 20, scope: !2807)
!2825 = !DILocation(line: 844, column: 7, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2815, file: !273, line: 843, column: 5)
!2827 = !DILocation(line: 845, column: 21, scope: !2826)
!2828 = !{!2817, !1441, i64 0}
!2829 = !DILocation(line: 846, column: 20, scope: !2826)
!2830 = !DILocation(line: 847, column: 5, scope: !2826)
!2831 = !DILocation(line: 848, column: 10, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2803, file: !273, line: 848, column: 7)
!2833 = !DILocation(line: 848, column: 7, scope: !2803)
!2834 = !DILocation(line: 850, column: 13, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2832, file: !273, line: 849, column: 5)
!2836 = !DILocation(line: 850, column: 7, scope: !2835)
!2837 = !DILocation(line: 851, column: 15, scope: !2835)
!2838 = !DILocation(line: 852, column: 5, scope: !2835)
!2839 = !DILocation(line: 853, column: 10, scope: !2803)
!2840 = !DILocation(line: 854, column: 1, scope: !2803)
!2841 = distinct !DISubprogram(name: "quotearg_n", scope: !273, file: !273, line: 919, type: !732, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2842)
!2842 = !{!2843, !2844}
!2843 = !DILocalVariable(name: "n", arg: 1, scope: !2841, file: !273, line: 919, type: !37)
!2844 = !DILocalVariable(name: "arg", arg: 2, scope: !2841, file: !273, line: 919, type: !43)
!2845 = !DILocation(line: 0, scope: !2841)
!2846 = !DILocation(line: 921, column: 10, scope: !2841)
!2847 = !DILocation(line: 921, column: 3, scope: !2841)
!2848 = distinct !DISubprogram(name: "quotearg_n_options", scope: !273, file: !273, line: 866, type: !2849, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2851)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!29, !37, !43, !40, !2076}
!2851 = !{!2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2862, !2863, !2865, !2866, !2867}
!2852 = !DILocalVariable(name: "n", arg: 1, scope: !2848, file: !273, line: 866, type: !37)
!2853 = !DILocalVariable(name: "arg", arg: 2, scope: !2848, file: !273, line: 866, type: !43)
!2854 = !DILocalVariable(name: "argsize", arg: 3, scope: !2848, file: !273, line: 866, type: !40)
!2855 = !DILocalVariable(name: "options", arg: 4, scope: !2848, file: !273, line: 867, type: !2076)
!2856 = !DILocalVariable(name: "saved_errno", scope: !2848, file: !273, line: 869, type: !37)
!2857 = !DILocalVariable(name: "sv", scope: !2848, file: !273, line: 871, type: !344)
!2858 = !DILocalVariable(name: "nslots_max", scope: !2848, file: !273, line: 873, type: !37)
!2859 = !DILocalVariable(name: "preallocated", scope: !2860, file: !273, line: 879, type: !60)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !273, line: 878, column: 5)
!2861 = distinct !DILexicalBlock(scope: !2848, file: !273, line: 877, column: 7)
!2862 = !DILocalVariable(name: "new_nslots", scope: !2860, file: !273, line: 880, type: !473)
!2863 = !DILocalVariable(name: "size", scope: !2864, file: !273, line: 891, type: !40)
!2864 = distinct !DILexicalBlock(scope: !2848, file: !273, line: 890, column: 3)
!2865 = !DILocalVariable(name: "val", scope: !2864, file: !273, line: 892, type: !29)
!2866 = !DILocalVariable(name: "flags", scope: !2864, file: !273, line: 894, type: !37)
!2867 = !DILocalVariable(name: "qsize", scope: !2864, file: !273, line: 895, type: !40)
!2868 = !DILocation(line: 0, scope: !2848)
!2869 = !DILocation(line: 869, column: 21, scope: !2848)
!2870 = !DILocation(line: 871, column: 24, scope: !2848)
!2871 = !DILocation(line: 874, column: 17, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2848, file: !273, line: 874, column: 7)
!2873 = !DILocation(line: 875, column: 5, scope: !2872)
!2874 = !DILocation(line: 877, column: 7, scope: !2861)
!2875 = !DILocation(line: 877, column: 14, scope: !2861)
!2876 = !DILocation(line: 877, column: 7, scope: !2848)
!2877 = !DILocation(line: 879, column: 31, scope: !2860)
!2878 = !DILocation(line: 0, scope: !2860)
!2879 = !DILocation(line: 880, column: 7, scope: !2860)
!2880 = !DILocation(line: 880, column: 26, scope: !2860)
!2881 = !DILocation(line: 880, column: 13, scope: !2860)
!2882 = !DILocation(line: 882, column: 31, scope: !2860)
!2883 = !DILocation(line: 883, column: 33, scope: !2860)
!2884 = !DILocation(line: 883, column: 42, scope: !2860)
!2885 = !DILocation(line: 883, column: 31, scope: !2860)
!2886 = !DILocation(line: 882, column: 22, scope: !2860)
!2887 = !DILocation(line: 882, column: 15, scope: !2860)
!2888 = !DILocation(line: 884, column: 11, scope: !2860)
!2889 = !DILocation(line: 885, column: 15, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2860, file: !273, line: 884, column: 11)
!2891 = !{i64 0, i64 8, !1440, i64 8, i64 8, !527}
!2892 = !DILocation(line: 885, column: 9, scope: !2890)
!2893 = !DILocation(line: 886, column: 20, scope: !2860)
!2894 = !DILocation(line: 886, column: 18, scope: !2860)
!2895 = !DILocation(line: 886, column: 15, scope: !2860)
!2896 = !DILocation(line: 886, column: 32, scope: !2860)
!2897 = !DILocation(line: 886, column: 43, scope: !2860)
!2898 = !DILocation(line: 886, column: 53, scope: !2860)
!2899 = !DILocation(line: 0, scope: !2287, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 886, column: 7, scope: !2860)
!2901 = !DILocation(line: 59, column: 10, scope: !2287, inlinedAt: !2900)
!2902 = !DILocation(line: 887, column: 16, scope: !2860)
!2903 = !DILocation(line: 887, column: 14, scope: !2860)
!2904 = !DILocation(line: 888, column: 5, scope: !2861)
!2905 = !DILocation(line: 888, column: 5, scope: !2860)
!2906 = !DILocation(line: 891, column: 19, scope: !2864)
!2907 = !DILocation(line: 891, column: 25, scope: !2864)
!2908 = !DILocation(line: 0, scope: !2864)
!2909 = !DILocation(line: 892, column: 23, scope: !2864)
!2910 = !DILocation(line: 894, column: 26, scope: !2864)
!2911 = !DILocation(line: 894, column: 32, scope: !2864)
!2912 = !DILocation(line: 896, column: 55, scope: !2864)
!2913 = !DILocation(line: 897, column: 46, scope: !2864)
!2914 = !DILocation(line: 898, column: 55, scope: !2864)
!2915 = !DILocation(line: 899, column: 55, scope: !2864)
!2916 = !DILocation(line: 895, column: 20, scope: !2864)
!2917 = !DILocation(line: 901, column: 14, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2864, file: !273, line: 901, column: 9)
!2919 = !DILocation(line: 901, column: 9, scope: !2864)
!2920 = !DILocation(line: 903, column: 35, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2918, file: !273, line: 902, column: 7)
!2922 = !DILocation(line: 903, column: 20, scope: !2921)
!2923 = !DILocation(line: 904, column: 17, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2921, file: !273, line: 904, column: 13)
!2925 = !DILocation(line: 904, column: 13, scope: !2921)
!2926 = !DILocation(line: 905, column: 11, scope: !2924)
!2927 = !DILocation(line: 906, column: 27, scope: !2921)
!2928 = !DILocation(line: 906, column: 19, scope: !2921)
!2929 = !DILocation(line: 907, column: 69, scope: !2921)
!2930 = !DILocation(line: 909, column: 44, scope: !2921)
!2931 = !DILocation(line: 910, column: 44, scope: !2921)
!2932 = !DILocation(line: 907, column: 9, scope: !2921)
!2933 = !DILocation(line: 911, column: 7, scope: !2921)
!2934 = !DILocation(line: 913, column: 11, scope: !2864)
!2935 = !DILocation(line: 914, column: 5, scope: !2864)
!2936 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !273, file: !273, line: 925, type: !2937, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2939)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!29, !37, !43, !40}
!2939 = !{!2940, !2941, !2942}
!2940 = !DILocalVariable(name: "n", arg: 1, scope: !2936, file: !273, line: 925, type: !37)
!2941 = !DILocalVariable(name: "arg", arg: 2, scope: !2936, file: !273, line: 925, type: !43)
!2942 = !DILocalVariable(name: "argsize", arg: 3, scope: !2936, file: !273, line: 925, type: !40)
!2943 = !DILocation(line: 0, scope: !2936)
!2944 = !DILocation(line: 927, column: 10, scope: !2936)
!2945 = !DILocation(line: 927, column: 3, scope: !2936)
!2946 = distinct !DISubprogram(name: "quotearg", scope: !273, file: !273, line: 931, type: !736, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2947)
!2947 = !{!2948}
!2948 = !DILocalVariable(name: "arg", arg: 1, scope: !2946, file: !273, line: 931, type: !43)
!2949 = !DILocation(line: 0, scope: !2946)
!2950 = !DILocation(line: 0, scope: !2841, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 933, column: 10, scope: !2946)
!2952 = !DILocation(line: 921, column: 10, scope: !2841, inlinedAt: !2951)
!2953 = !DILocation(line: 933, column: 3, scope: !2946)
!2954 = distinct !DISubprogram(name: "quotearg_mem", scope: !273, file: !273, line: 937, type: !2955, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2957)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!29, !43, !40}
!2957 = !{!2958, !2959}
!2958 = !DILocalVariable(name: "arg", arg: 1, scope: !2954, file: !273, line: 937, type: !43)
!2959 = !DILocalVariable(name: "argsize", arg: 2, scope: !2954, file: !273, line: 937, type: !40)
!2960 = !DILocation(line: 0, scope: !2954)
!2961 = !DILocation(line: 0, scope: !2936, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 939, column: 10, scope: !2954)
!2963 = !DILocation(line: 927, column: 10, scope: !2936, inlinedAt: !2962)
!2964 = !DILocation(line: 939, column: 3, scope: !2954)
!2965 = distinct !DISubprogram(name: "quotearg_n_style", scope: !273, file: !273, line: 943, type: !2966, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2968)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!29, !37, !275, !43}
!2968 = !{!2969, !2970, !2971, !2972}
!2969 = !DILocalVariable(name: "n", arg: 1, scope: !2965, file: !273, line: 943, type: !37)
!2970 = !DILocalVariable(name: "s", arg: 2, scope: !2965, file: !273, line: 943, type: !275)
!2971 = !DILocalVariable(name: "arg", arg: 3, scope: !2965, file: !273, line: 943, type: !43)
!2972 = !DILocalVariable(name: "o", scope: !2965, file: !273, line: 945, type: !2077)
!2973 = !DILocation(line: 0, scope: !2965)
!2974 = !DILocation(line: 945, column: 3, scope: !2965)
!2975 = !DILocation(line: 945, column: 32, scope: !2965)
!2976 = !{!2977}
!2977 = distinct !{!2977, !2978, !"quoting_options_from_style: argument 0"}
!2978 = distinct !{!2978, !"quoting_options_from_style"}
!2979 = !DILocation(line: 945, column: 36, scope: !2965)
!2980 = !DILocalVariable(name: "style", arg: 1, scope: !2981, file: !273, line: 183, type: !275)
!2981 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !273, file: !273, line: 183, type: !2982, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2984)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!304, !275}
!2984 = !{!2980, !2985}
!2985 = !DILocalVariable(name: "o", scope: !2981, file: !273, line: 185, type: !304)
!2986 = !DILocation(line: 0, scope: !2981, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 945, column: 36, scope: !2965)
!2988 = !DILocation(line: 185, column: 26, scope: !2981, inlinedAt: !2987)
!2989 = !DILocation(line: 186, column: 13, scope: !2990, inlinedAt: !2987)
!2990 = distinct !DILexicalBlock(scope: !2981, file: !273, line: 186, column: 7)
!2991 = !DILocation(line: 186, column: 7, scope: !2981, inlinedAt: !2987)
!2992 = !DILocation(line: 187, column: 5, scope: !2990, inlinedAt: !2987)
!2993 = !DILocation(line: 188, column: 5, scope: !2981, inlinedAt: !2987)
!2994 = !DILocation(line: 188, column: 11, scope: !2981, inlinedAt: !2987)
!2995 = !DILocation(line: 946, column: 10, scope: !2965)
!2996 = !DILocation(line: 947, column: 1, scope: !2965)
!2997 = !DILocation(line: 946, column: 3, scope: !2965)
!2998 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !273, file: !273, line: 950, type: !2999, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3001)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!29, !37, !275, !43, !40}
!3001 = !{!3002, !3003, !3004, !3005, !3006}
!3002 = !DILocalVariable(name: "n", arg: 1, scope: !2998, file: !273, line: 950, type: !37)
!3003 = !DILocalVariable(name: "s", arg: 2, scope: !2998, file: !273, line: 950, type: !275)
!3004 = !DILocalVariable(name: "arg", arg: 3, scope: !2998, file: !273, line: 951, type: !43)
!3005 = !DILocalVariable(name: "argsize", arg: 4, scope: !2998, file: !273, line: 951, type: !40)
!3006 = !DILocalVariable(name: "o", scope: !2998, file: !273, line: 953, type: !2077)
!3007 = !DILocation(line: 0, scope: !2998)
!3008 = !DILocation(line: 953, column: 3, scope: !2998)
!3009 = !DILocation(line: 953, column: 32, scope: !2998)
!3010 = !{!3011}
!3011 = distinct !{!3011, !3012, !"quoting_options_from_style: argument 0"}
!3012 = distinct !{!3012, !"quoting_options_from_style"}
!3013 = !DILocation(line: 953, column: 36, scope: !2998)
!3014 = !DILocation(line: 0, scope: !2981, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 953, column: 36, scope: !2998)
!3016 = !DILocation(line: 185, column: 26, scope: !2981, inlinedAt: !3015)
!3017 = !DILocation(line: 186, column: 13, scope: !2990, inlinedAt: !3015)
!3018 = !DILocation(line: 186, column: 7, scope: !2981, inlinedAt: !3015)
!3019 = !DILocation(line: 187, column: 5, scope: !2990, inlinedAt: !3015)
!3020 = !DILocation(line: 188, column: 5, scope: !2981, inlinedAt: !3015)
!3021 = !DILocation(line: 188, column: 11, scope: !2981, inlinedAt: !3015)
!3022 = !DILocation(line: 954, column: 10, scope: !2998)
!3023 = !DILocation(line: 955, column: 1, scope: !2998)
!3024 = !DILocation(line: 954, column: 3, scope: !2998)
!3025 = distinct !DISubprogram(name: "quotearg_style", scope: !273, file: !273, line: 958, type: !3026, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3028)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!29, !275, !43}
!3028 = !{!3029, !3030}
!3029 = !DILocalVariable(name: "s", arg: 1, scope: !3025, file: !273, line: 958, type: !275)
!3030 = !DILocalVariable(name: "arg", arg: 2, scope: !3025, file: !273, line: 958, type: !43)
!3031 = !DILocation(line: 0, scope: !3025)
!3032 = !DILocation(line: 0, scope: !2965, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 960, column: 10, scope: !3025)
!3034 = !DILocation(line: 945, column: 3, scope: !2965, inlinedAt: !3033)
!3035 = !DILocation(line: 945, column: 32, scope: !2965, inlinedAt: !3033)
!3036 = !{!3037}
!3037 = distinct !{!3037, !3038, !"quoting_options_from_style: argument 0"}
!3038 = distinct !{!3038, !"quoting_options_from_style"}
!3039 = !DILocation(line: 945, column: 36, scope: !2965, inlinedAt: !3033)
!3040 = !DILocation(line: 0, scope: !2981, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 945, column: 36, scope: !2965, inlinedAt: !3033)
!3042 = !DILocation(line: 185, column: 26, scope: !2981, inlinedAt: !3041)
!3043 = !DILocation(line: 186, column: 13, scope: !2990, inlinedAt: !3041)
!3044 = !DILocation(line: 186, column: 7, scope: !2981, inlinedAt: !3041)
!3045 = !DILocation(line: 187, column: 5, scope: !2990, inlinedAt: !3041)
!3046 = !DILocation(line: 188, column: 5, scope: !2981, inlinedAt: !3041)
!3047 = !DILocation(line: 188, column: 11, scope: !2981, inlinedAt: !3041)
!3048 = !DILocation(line: 946, column: 10, scope: !2965, inlinedAt: !3033)
!3049 = !DILocation(line: 947, column: 1, scope: !2965, inlinedAt: !3033)
!3050 = !DILocation(line: 960, column: 3, scope: !3025)
!3051 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !273, file: !273, line: 964, type: !3052, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3054)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!29, !275, !43, !40}
!3054 = !{!3055, !3056, !3057}
!3055 = !DILocalVariable(name: "s", arg: 1, scope: !3051, file: !273, line: 964, type: !275)
!3056 = !DILocalVariable(name: "arg", arg: 2, scope: !3051, file: !273, line: 964, type: !43)
!3057 = !DILocalVariable(name: "argsize", arg: 3, scope: !3051, file: !273, line: 964, type: !40)
!3058 = !DILocation(line: 0, scope: !3051)
!3059 = !DILocation(line: 0, scope: !2998, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 966, column: 10, scope: !3051)
!3061 = !DILocation(line: 953, column: 3, scope: !2998, inlinedAt: !3060)
!3062 = !DILocation(line: 953, column: 32, scope: !2998, inlinedAt: !3060)
!3063 = !{!3064}
!3064 = distinct !{!3064, !3065, !"quoting_options_from_style: argument 0"}
!3065 = distinct !{!3065, !"quoting_options_from_style"}
!3066 = !DILocation(line: 953, column: 36, scope: !2998, inlinedAt: !3060)
!3067 = !DILocation(line: 0, scope: !2981, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 953, column: 36, scope: !2998, inlinedAt: !3060)
!3069 = !DILocation(line: 185, column: 26, scope: !2981, inlinedAt: !3068)
!3070 = !DILocation(line: 186, column: 13, scope: !2990, inlinedAt: !3068)
!3071 = !DILocation(line: 186, column: 7, scope: !2981, inlinedAt: !3068)
!3072 = !DILocation(line: 187, column: 5, scope: !2990, inlinedAt: !3068)
!3073 = !DILocation(line: 188, column: 5, scope: !2981, inlinedAt: !3068)
!3074 = !DILocation(line: 188, column: 11, scope: !2981, inlinedAt: !3068)
!3075 = !DILocation(line: 954, column: 10, scope: !2998, inlinedAt: !3060)
!3076 = !DILocation(line: 955, column: 1, scope: !2998, inlinedAt: !3060)
!3077 = !DILocation(line: 966, column: 3, scope: !3051)
!3078 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !273, file: !273, line: 970, type: !3079, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3081)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!29, !43, !40, !30}
!3081 = !{!3082, !3083, !3084, !3085}
!3082 = !DILocalVariable(name: "arg", arg: 1, scope: !3078, file: !273, line: 970, type: !43)
!3083 = !DILocalVariable(name: "argsize", arg: 2, scope: !3078, file: !273, line: 970, type: !40)
!3084 = !DILocalVariable(name: "ch", arg: 3, scope: !3078, file: !273, line: 970, type: !30)
!3085 = !DILocalVariable(name: "options", scope: !3078, file: !273, line: 972, type: !304)
!3086 = !DILocation(line: 0, scope: !3078)
!3087 = !DILocation(line: 972, column: 3, scope: !3078)
!3088 = !DILocation(line: 972, column: 26, scope: !3078)
!3089 = !DILocation(line: 973, column: 13, scope: !3078)
!3090 = !{i64 0, i64 4, !633, i64 4, i64 4, !624, i64 8, i64 32, !633, i64 40, i64 8, !527, i64 48, i64 8, !527}
!3091 = !DILocation(line: 0, scope: !2097, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 974, column: 3, scope: !3078)
!3093 = !DILocation(line: 147, column: 62, scope: !2097, inlinedAt: !3092)
!3094 = !DILocation(line: 147, column: 57, scope: !2097, inlinedAt: !3092)
!3095 = !DILocation(line: 148, column: 15, scope: !2097, inlinedAt: !3092)
!3096 = !DILocation(line: 149, column: 21, scope: !2097, inlinedAt: !3092)
!3097 = !DILocation(line: 149, column: 24, scope: !2097, inlinedAt: !3092)
!3098 = !DILocation(line: 149, column: 34, scope: !2097, inlinedAt: !3092)
!3099 = !DILocation(line: 150, column: 19, scope: !2097, inlinedAt: !3092)
!3100 = !DILocation(line: 150, column: 24, scope: !2097, inlinedAt: !3092)
!3101 = !DILocation(line: 150, column: 6, scope: !2097, inlinedAt: !3092)
!3102 = !DILocation(line: 975, column: 10, scope: !3078)
!3103 = !DILocation(line: 976, column: 1, scope: !3078)
!3104 = !DILocation(line: 975, column: 3, scope: !3078)
!3105 = distinct !DISubprogram(name: "quotearg_char", scope: !273, file: !273, line: 979, type: !3106, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!29, !43, !30}
!3108 = !{!3109, !3110}
!3109 = !DILocalVariable(name: "arg", arg: 1, scope: !3105, file: !273, line: 979, type: !43)
!3110 = !DILocalVariable(name: "ch", arg: 2, scope: !3105, file: !273, line: 979, type: !30)
!3111 = !DILocation(line: 0, scope: !3105)
!3112 = !DILocation(line: 0, scope: !3078, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 981, column: 10, scope: !3105)
!3114 = !DILocation(line: 972, column: 3, scope: !3078, inlinedAt: !3113)
!3115 = !DILocation(line: 972, column: 26, scope: !3078, inlinedAt: !3113)
!3116 = !DILocation(line: 973, column: 13, scope: !3078, inlinedAt: !3113)
!3117 = !DILocation(line: 0, scope: !2097, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 974, column: 3, scope: !3078, inlinedAt: !3113)
!3119 = !DILocation(line: 147, column: 62, scope: !2097, inlinedAt: !3118)
!3120 = !DILocation(line: 147, column: 57, scope: !2097, inlinedAt: !3118)
!3121 = !DILocation(line: 148, column: 15, scope: !2097, inlinedAt: !3118)
!3122 = !DILocation(line: 149, column: 21, scope: !2097, inlinedAt: !3118)
!3123 = !DILocation(line: 149, column: 24, scope: !2097, inlinedAt: !3118)
!3124 = !DILocation(line: 149, column: 34, scope: !2097, inlinedAt: !3118)
!3125 = !DILocation(line: 150, column: 19, scope: !2097, inlinedAt: !3118)
!3126 = !DILocation(line: 150, column: 24, scope: !2097, inlinedAt: !3118)
!3127 = !DILocation(line: 150, column: 6, scope: !2097, inlinedAt: !3118)
!3128 = !DILocation(line: 975, column: 10, scope: !3078, inlinedAt: !3113)
!3129 = !DILocation(line: 976, column: 1, scope: !3078, inlinedAt: !3113)
!3130 = !DILocation(line: 981, column: 3, scope: !3105)
!3131 = distinct !DISubprogram(name: "quotearg_colon", scope: !273, file: !273, line: 985, type: !736, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3132)
!3132 = !{!3133}
!3133 = !DILocalVariable(name: "arg", arg: 1, scope: !3131, file: !273, line: 985, type: !43)
!3134 = !DILocation(line: 0, scope: !3131)
!3135 = !DILocation(line: 0, scope: !3105, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 987, column: 10, scope: !3131)
!3137 = !DILocation(line: 0, scope: !3078, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 981, column: 10, scope: !3105, inlinedAt: !3136)
!3139 = !DILocation(line: 972, column: 3, scope: !3078, inlinedAt: !3138)
!3140 = !DILocation(line: 972, column: 26, scope: !3078, inlinedAt: !3138)
!3141 = !DILocation(line: 973, column: 13, scope: !3078, inlinedAt: !3138)
!3142 = !DILocation(line: 0, scope: !2097, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 974, column: 3, scope: !3078, inlinedAt: !3138)
!3144 = !DILocation(line: 147, column: 57, scope: !2097, inlinedAt: !3143)
!3145 = !DILocation(line: 149, column: 21, scope: !2097, inlinedAt: !3143)
!3146 = !DILocation(line: 150, column: 6, scope: !2097, inlinedAt: !3143)
!3147 = !DILocation(line: 975, column: 10, scope: !3078, inlinedAt: !3138)
!3148 = !DILocation(line: 976, column: 1, scope: !3078, inlinedAt: !3138)
!3149 = !DILocation(line: 987, column: 3, scope: !3131)
!3150 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !273, file: !273, line: 991, type: !2955, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3151)
!3151 = !{!3152, !3153}
!3152 = !DILocalVariable(name: "arg", arg: 1, scope: !3150, file: !273, line: 991, type: !43)
!3153 = !DILocalVariable(name: "argsize", arg: 2, scope: !3150, file: !273, line: 991, type: !40)
!3154 = !DILocation(line: 0, scope: !3150)
!3155 = !DILocation(line: 0, scope: !3078, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 993, column: 10, scope: !3150)
!3157 = !DILocation(line: 972, column: 3, scope: !3078, inlinedAt: !3156)
!3158 = !DILocation(line: 972, column: 26, scope: !3078, inlinedAt: !3156)
!3159 = !DILocation(line: 973, column: 13, scope: !3078, inlinedAt: !3156)
!3160 = !DILocation(line: 0, scope: !2097, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 974, column: 3, scope: !3078, inlinedAt: !3156)
!3162 = !DILocation(line: 147, column: 57, scope: !2097, inlinedAt: !3161)
!3163 = !DILocation(line: 149, column: 21, scope: !2097, inlinedAt: !3161)
!3164 = !DILocation(line: 150, column: 6, scope: !2097, inlinedAt: !3161)
!3165 = !DILocation(line: 975, column: 10, scope: !3078, inlinedAt: !3156)
!3166 = !DILocation(line: 976, column: 1, scope: !3078, inlinedAt: !3156)
!3167 = !DILocation(line: 993, column: 3, scope: !3150)
!3168 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !273, file: !273, line: 997, type: !2966, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3169)
!3169 = !{!3170, !3171, !3172, !3173}
!3170 = !DILocalVariable(name: "n", arg: 1, scope: !3168, file: !273, line: 997, type: !37)
!3171 = !DILocalVariable(name: "s", arg: 2, scope: !3168, file: !273, line: 997, type: !275)
!3172 = !DILocalVariable(name: "arg", arg: 3, scope: !3168, file: !273, line: 997, type: !43)
!3173 = !DILocalVariable(name: "options", scope: !3168, file: !273, line: 999, type: !304)
!3174 = !DILocation(line: 0, scope: !3168)
!3175 = !DILocation(line: 999, column: 3, scope: !3168)
!3176 = !DILocation(line: 999, column: 26, scope: !3168)
!3177 = !DILocation(line: 0, scope: !2981, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 1000, column: 13, scope: !3168)
!3179 = !DILocation(line: 186, column: 13, scope: !2990, inlinedAt: !3178)
!3180 = !DILocation(line: 186, column: 7, scope: !2981, inlinedAt: !3178)
!3181 = !DILocation(line: 187, column: 5, scope: !2990, inlinedAt: !3178)
!3182 = !{!3183}
!3183 = distinct !{!3183, !3184, !"quoting_options_from_style: argument 0"}
!3184 = distinct !{!3184, !"quoting_options_from_style"}
!3185 = !DILocation(line: 1000, column: 13, scope: !3168)
!3186 = !DILocation(line: 0, scope: !2097, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 1001, column: 3, scope: !3168)
!3188 = !DILocation(line: 147, column: 57, scope: !2097, inlinedAt: !3187)
!3189 = !DILocation(line: 149, column: 21, scope: !2097, inlinedAt: !3187)
!3190 = !DILocation(line: 150, column: 6, scope: !2097, inlinedAt: !3187)
!3191 = !DILocation(line: 1002, column: 10, scope: !3168)
!3192 = !DILocation(line: 1003, column: 1, scope: !3168)
!3193 = !DILocation(line: 1002, column: 3, scope: !3168)
!3194 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !273, file: !273, line: 1006, type: !3195, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3197)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!29, !37, !43, !43, !43}
!3197 = !{!3198, !3199, !3200, !3201}
!3198 = !DILocalVariable(name: "n", arg: 1, scope: !3194, file: !273, line: 1006, type: !37)
!3199 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3194, file: !273, line: 1006, type: !43)
!3200 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3194, file: !273, line: 1007, type: !43)
!3201 = !DILocalVariable(name: "arg", arg: 4, scope: !3194, file: !273, line: 1007, type: !43)
!3202 = !DILocation(line: 0, scope: !3194)
!3203 = !DILocalVariable(name: "n", arg: 1, scope: !3204, file: !273, line: 1014, type: !37)
!3204 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !273, file: !273, line: 1014, type: !3205, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3207)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!29, !37, !43, !43, !43, !40}
!3207 = !{!3203, !3208, !3209, !3210, !3211, !3212}
!3208 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3204, file: !273, line: 1014, type: !43)
!3209 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3204, file: !273, line: 1015, type: !43)
!3210 = !DILocalVariable(name: "arg", arg: 4, scope: !3204, file: !273, line: 1016, type: !43)
!3211 = !DILocalVariable(name: "argsize", arg: 5, scope: !3204, file: !273, line: 1016, type: !40)
!3212 = !DILocalVariable(name: "o", scope: !3204, file: !273, line: 1018, type: !304)
!3213 = !DILocation(line: 0, scope: !3204, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 1009, column: 10, scope: !3194)
!3215 = !DILocation(line: 1018, column: 3, scope: !3204, inlinedAt: !3214)
!3216 = !DILocation(line: 1018, column: 26, scope: !3204, inlinedAt: !3214)
!3217 = !DILocation(line: 1018, column: 30, scope: !3204, inlinedAt: !3214)
!3218 = !DILocation(line: 0, scope: !2137, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 1019, column: 3, scope: !3204, inlinedAt: !3214)
!3220 = !DILocation(line: 174, column: 6, scope: !2137, inlinedAt: !3219)
!3221 = !DILocation(line: 174, column: 12, scope: !2137, inlinedAt: !3219)
!3222 = !DILocation(line: 175, column: 8, scope: !2151, inlinedAt: !3219)
!3223 = !DILocation(line: 175, column: 19, scope: !2151, inlinedAt: !3219)
!3224 = !DILocation(line: 176, column: 5, scope: !2151, inlinedAt: !3219)
!3225 = !DILocation(line: 177, column: 6, scope: !2137, inlinedAt: !3219)
!3226 = !DILocation(line: 177, column: 17, scope: !2137, inlinedAt: !3219)
!3227 = !DILocation(line: 178, column: 6, scope: !2137, inlinedAt: !3219)
!3228 = !DILocation(line: 178, column: 18, scope: !2137, inlinedAt: !3219)
!3229 = !DILocation(line: 1020, column: 10, scope: !3204, inlinedAt: !3214)
!3230 = !DILocation(line: 1021, column: 1, scope: !3204, inlinedAt: !3214)
!3231 = !DILocation(line: 1009, column: 3, scope: !3194)
!3232 = !DILocation(line: 0, scope: !3204)
!3233 = !DILocation(line: 1018, column: 3, scope: !3204)
!3234 = !DILocation(line: 1018, column: 26, scope: !3204)
!3235 = !DILocation(line: 1018, column: 30, scope: !3204)
!3236 = !DILocation(line: 0, scope: !2137, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 1019, column: 3, scope: !3204)
!3238 = !DILocation(line: 174, column: 6, scope: !2137, inlinedAt: !3237)
!3239 = !DILocation(line: 174, column: 12, scope: !2137, inlinedAt: !3237)
!3240 = !DILocation(line: 175, column: 8, scope: !2151, inlinedAt: !3237)
!3241 = !DILocation(line: 175, column: 19, scope: !2151, inlinedAt: !3237)
!3242 = !DILocation(line: 176, column: 5, scope: !2151, inlinedAt: !3237)
!3243 = !DILocation(line: 177, column: 6, scope: !2137, inlinedAt: !3237)
!3244 = !DILocation(line: 177, column: 17, scope: !2137, inlinedAt: !3237)
!3245 = !DILocation(line: 178, column: 6, scope: !2137, inlinedAt: !3237)
!3246 = !DILocation(line: 178, column: 18, scope: !2137, inlinedAt: !3237)
!3247 = !DILocation(line: 1020, column: 10, scope: !3204)
!3248 = !DILocation(line: 1021, column: 1, scope: !3204)
!3249 = !DILocation(line: 1020, column: 3, scope: !3204)
!3250 = distinct !DISubprogram(name: "quotearg_custom", scope: !273, file: !273, line: 1024, type: !3251, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3253)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!29, !43, !43, !43}
!3253 = !{!3254, !3255, !3256}
!3254 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3250, file: !273, line: 1024, type: !43)
!3255 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3250, file: !273, line: 1024, type: !43)
!3256 = !DILocalVariable(name: "arg", arg: 3, scope: !3250, file: !273, line: 1025, type: !43)
!3257 = !DILocation(line: 0, scope: !3250)
!3258 = !DILocation(line: 0, scope: !3194, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 1027, column: 10, scope: !3250)
!3260 = !DILocation(line: 0, scope: !3204, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 1009, column: 10, scope: !3194, inlinedAt: !3259)
!3262 = !DILocation(line: 1018, column: 3, scope: !3204, inlinedAt: !3261)
!3263 = !DILocation(line: 1018, column: 26, scope: !3204, inlinedAt: !3261)
!3264 = !DILocation(line: 1018, column: 30, scope: !3204, inlinedAt: !3261)
!3265 = !DILocation(line: 0, scope: !2137, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 1019, column: 3, scope: !3204, inlinedAt: !3261)
!3267 = !DILocation(line: 174, column: 6, scope: !2137, inlinedAt: !3266)
!3268 = !DILocation(line: 174, column: 12, scope: !2137, inlinedAt: !3266)
!3269 = !DILocation(line: 175, column: 8, scope: !2151, inlinedAt: !3266)
!3270 = !DILocation(line: 175, column: 19, scope: !2151, inlinedAt: !3266)
!3271 = !DILocation(line: 176, column: 5, scope: !2151, inlinedAt: !3266)
!3272 = !DILocation(line: 177, column: 6, scope: !2137, inlinedAt: !3266)
!3273 = !DILocation(line: 177, column: 17, scope: !2137, inlinedAt: !3266)
!3274 = !DILocation(line: 178, column: 6, scope: !2137, inlinedAt: !3266)
!3275 = !DILocation(line: 178, column: 18, scope: !2137, inlinedAt: !3266)
!3276 = !DILocation(line: 1020, column: 10, scope: !3204, inlinedAt: !3261)
!3277 = !DILocation(line: 1021, column: 1, scope: !3204, inlinedAt: !3261)
!3278 = !DILocation(line: 1027, column: 3, scope: !3250)
!3279 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !273, file: !273, line: 1031, type: !3280, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3282)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!29, !43, !43, !43, !40}
!3282 = !{!3283, !3284, !3285, !3286}
!3283 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3279, file: !273, line: 1031, type: !43)
!3284 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3279, file: !273, line: 1031, type: !43)
!3285 = !DILocalVariable(name: "arg", arg: 3, scope: !3279, file: !273, line: 1032, type: !43)
!3286 = !DILocalVariable(name: "argsize", arg: 4, scope: !3279, file: !273, line: 1032, type: !40)
!3287 = !DILocation(line: 0, scope: !3279)
!3288 = !DILocation(line: 0, scope: !3204, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 1034, column: 10, scope: !3279)
!3290 = !DILocation(line: 1018, column: 3, scope: !3204, inlinedAt: !3289)
!3291 = !DILocation(line: 1018, column: 26, scope: !3204, inlinedAt: !3289)
!3292 = !DILocation(line: 1018, column: 30, scope: !3204, inlinedAt: !3289)
!3293 = !DILocation(line: 0, scope: !2137, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 1019, column: 3, scope: !3204, inlinedAt: !3289)
!3295 = !DILocation(line: 174, column: 6, scope: !2137, inlinedAt: !3294)
!3296 = !DILocation(line: 174, column: 12, scope: !2137, inlinedAt: !3294)
!3297 = !DILocation(line: 175, column: 8, scope: !2151, inlinedAt: !3294)
!3298 = !DILocation(line: 175, column: 19, scope: !2151, inlinedAt: !3294)
!3299 = !DILocation(line: 176, column: 5, scope: !2151, inlinedAt: !3294)
!3300 = !DILocation(line: 177, column: 6, scope: !2137, inlinedAt: !3294)
!3301 = !DILocation(line: 177, column: 17, scope: !2137, inlinedAt: !3294)
!3302 = !DILocation(line: 178, column: 6, scope: !2137, inlinedAt: !3294)
!3303 = !DILocation(line: 178, column: 18, scope: !2137, inlinedAt: !3294)
!3304 = !DILocation(line: 1020, column: 10, scope: !3204, inlinedAt: !3289)
!3305 = !DILocation(line: 1021, column: 1, scope: !3204, inlinedAt: !3289)
!3306 = !DILocation(line: 1034, column: 3, scope: !3279)
!3307 = distinct !DISubprogram(name: "quote_n_mem", scope: !273, file: !273, line: 1049, type: !3308, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3310)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!43, !37, !43, !40}
!3310 = !{!3311, !3312, !3313}
!3311 = !DILocalVariable(name: "n", arg: 1, scope: !3307, file: !273, line: 1049, type: !37)
!3312 = !DILocalVariable(name: "arg", arg: 2, scope: !3307, file: !273, line: 1049, type: !43)
!3313 = !DILocalVariable(name: "argsize", arg: 3, scope: !3307, file: !273, line: 1049, type: !40)
!3314 = !DILocation(line: 0, scope: !3307)
!3315 = !DILocation(line: 1051, column: 10, scope: !3307)
!3316 = !DILocation(line: 1051, column: 3, scope: !3307)
!3317 = distinct !DISubprogram(name: "quote_mem", scope: !273, file: !273, line: 1055, type: !3318, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3320)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!43, !43, !40}
!3320 = !{!3321, !3322}
!3321 = !DILocalVariable(name: "arg", arg: 1, scope: !3317, file: !273, line: 1055, type: !43)
!3322 = !DILocalVariable(name: "argsize", arg: 2, scope: !3317, file: !273, line: 1055, type: !40)
!3323 = !DILocation(line: 0, scope: !3317)
!3324 = !DILocation(line: 0, scope: !3307, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 1057, column: 10, scope: !3317)
!3326 = !DILocation(line: 1051, column: 10, scope: !3307, inlinedAt: !3325)
!3327 = !DILocation(line: 1057, column: 3, scope: !3317)
!3328 = distinct !DISubprogram(name: "quote_n", scope: !273, file: !273, line: 1061, type: !3329, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3331)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!43, !37, !43}
!3331 = !{!3332, !3333}
!3332 = !DILocalVariable(name: "n", arg: 1, scope: !3328, file: !273, line: 1061, type: !37)
!3333 = !DILocalVariable(name: "arg", arg: 2, scope: !3328, file: !273, line: 1061, type: !43)
!3334 = !DILocation(line: 0, scope: !3328)
!3335 = !DILocation(line: 0, scope: !3307, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 1063, column: 10, scope: !3328)
!3337 = !DILocation(line: 1051, column: 10, scope: !3307, inlinedAt: !3336)
!3338 = !DILocation(line: 1063, column: 3, scope: !3328)
!3339 = distinct !DISubprogram(name: "quote", scope: !273, file: !273, line: 1067, type: !3340, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3342)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!43, !43}
!3342 = !{!3343}
!3343 = !DILocalVariable(name: "arg", arg: 1, scope: !3339, file: !273, line: 1067, type: !43)
!3344 = !DILocation(line: 0, scope: !3339)
!3345 = !DILocation(line: 0, scope: !3328, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 1069, column: 10, scope: !3339)
!3347 = !DILocation(line: 0, scope: !3307, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 1063, column: 10, scope: !3328, inlinedAt: !3346)
!3349 = !DILocation(line: 1051, column: 10, scope: !3307, inlinedAt: !3348)
!3350 = !DILocation(line: 1069, column: 3, scope: !3339)
!3351 = distinct !DISubprogram(name: "str2sig", scope: !360, file: !360, line: 321, type: !3352, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !3354)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!37, !43, !167}
!3354 = !{!3355, !3356}
!3355 = !DILocalVariable(name: "signame", arg: 1, scope: !3351, file: !360, line: 321, type: !43)
!3356 = !DILocalVariable(name: "signum", arg: 2, scope: !3351, file: !360, line: 321, type: !167)
!3357 = !DILocation(line: 0, scope: !3351)
!3358 = !DILocalVariable(name: "signame", arg: 1, scope: !3359, file: !360, line: 278, type: !43)
!3359 = distinct !DISubprogram(name: "str2signum", scope: !360, file: !360, line: 278, type: !1548, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !3360)
!3360 = !{!3358, !3361, !3364, !3365, !3368, !3370, !3371, !3374, !3375, !3378}
!3361 = !DILocalVariable(name: "endp", scope: !3362, file: !360, line: 282, type: !29)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !360, line: 281, column: 5)
!3363 = distinct !DILexicalBlock(scope: !3359, file: !360, line: 280, column: 7)
!3364 = !DILocalVariable(name: "n", scope: !3362, file: !360, line: 283, type: !118)
!3365 = !DILocalVariable(name: "i", scope: !3366, file: !360, line: 289, type: !7)
!3366 = distinct !DILexicalBlock(scope: !3367, file: !360, line: 289, column: 7)
!3367 = distinct !DILexicalBlock(scope: !3363, file: !360, line: 288, column: 5)
!3368 = !DILocalVariable(name: "rtmin", scope: !3369, file: !360, line: 294, type: !37)
!3369 = distinct !DILexicalBlock(scope: !3367, file: !360, line: 293, column: 7)
!3370 = !DILocalVariable(name: "rtmax", scope: !3369, file: !360, line: 295, type: !37)
!3371 = !DILocalVariable(name: "endp", scope: !3372, file: !360, line: 299, type: !29)
!3372 = distinct !DILexicalBlock(scope: !3373, file: !360, line: 298, column: 11)
!3373 = distinct !DILexicalBlock(scope: !3369, file: !360, line: 297, column: 13)
!3374 = !DILocalVariable(name: "n", scope: !3372, file: !360, line: 300, type: !118)
!3375 = !DILocalVariable(name: "endp", scope: !3376, file: !360, line: 306, type: !29)
!3376 = distinct !DILexicalBlock(scope: !3377, file: !360, line: 305, column: 11)
!3377 = distinct !DILexicalBlock(scope: !3373, file: !360, line: 304, column: 18)
!3378 = !DILocalVariable(name: "n", scope: !3376, file: !360, line: 307, type: !118)
!3379 = !DILocation(line: 0, scope: !3359, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 323, column: 13, scope: !3351)
!3381 = !DILocation(line: 280, column: 7, scope: !3363, inlinedAt: !3380)
!3382 = !DILocation(line: 280, column: 7, scope: !3359, inlinedAt: !3380)
!3383 = !DILocation(line: 282, column: 7, scope: !3362, inlinedAt: !3380)
!3384 = !DILocation(line: 0, scope: !3362, inlinedAt: !3380)
!3385 = !DILocation(line: 283, column: 20, scope: !3362, inlinedAt: !3380)
!3386 = !DILocation(line: 284, column: 14, scope: !3387, inlinedAt: !3380)
!3387 = distinct !DILexicalBlock(scope: !3362, file: !360, line: 284, column: 11)
!3388 = !DILocation(line: 284, column: 13, scope: !3387, inlinedAt: !3380)
!3389 = !DILocation(line: 284, column: 19, scope: !3387, inlinedAt: !3380)
!3390 = !DILocation(line: 286, column: 5, scope: !3363, inlinedAt: !3380)
!3391 = !DILocation(line: 0, scope: !3366, inlinedAt: !3380)
!3392 = !DILocation(line: 290, column: 20, scope: !3393, inlinedAt: !3380)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !360, line: 290, column: 13)
!3394 = distinct !DILexicalBlock(scope: !3366, file: !360, line: 289, column: 7)
!3395 = !DILocalVariable(name: "__s1", arg: 1, scope: !3396, file: !575, line: 1359, type: !43)
!3396 = distinct !DISubprogram(name: "streq", scope: !575, file: !575, line: 1359, type: !576, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !3397)
!3397 = !{!3395, !3398}
!3398 = !DILocalVariable(name: "__s2", arg: 2, scope: !3396, file: !575, line: 1359, type: !43)
!3399 = !DILocation(line: 0, scope: !3396, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 290, column: 13, scope: !3393, inlinedAt: !3380)
!3401 = !DILocation(line: 1361, column: 11, scope: !3396, inlinedAt: !3400)
!3402 = !DILocation(line: 1361, column: 10, scope: !3396, inlinedAt: !3400)
!3403 = !DILocation(line: 290, column: 13, scope: !3394, inlinedAt: !3380)
!3404 = !DILocation(line: 289, column: 54, scope: !3394, inlinedAt: !3380)
!3405 = !DILocation(line: 289, column: 34, scope: !3394, inlinedAt: !3380)
!3406 = !DILocation(line: 289, column: 7, scope: !3366, inlinedAt: !3380)
!3407 = distinct !{!3407, !3406, !3408, !591}
!3408 = !DILocation(line: 291, column: 35, scope: !3366, inlinedAt: !3380)
!3409 = !DILocation(line: 289, column: 32, scope: !3394, inlinedAt: !3380)
!3410 = !DILocation(line: 291, column: 35, scope: !3393, inlinedAt: !3380)
!3411 = !{!3412, !625, i64 0}
!3412 = !{!"numname", !625, i64 0, !529, i64 4}
!3413 = !DILocation(line: 294, column: 21, scope: !3369, inlinedAt: !3380)
!3414 = !DILocation(line: 0, scope: !3369, inlinedAt: !3380)
!3415 = !DILocation(line: 295, column: 21, scope: !3369, inlinedAt: !3380)
!3416 = !DILocation(line: 297, column: 15, scope: !3373, inlinedAt: !3380)
!3417 = !DILocation(line: 297, column: 23, scope: !3373, inlinedAt: !3380)
!3418 = !DILocation(line: 297, column: 26, scope: !3373, inlinedAt: !3380)
!3419 = !DILocation(line: 297, column: 56, scope: !3373, inlinedAt: !3380)
!3420 = !DILocation(line: 297, column: 13, scope: !3369, inlinedAt: !3380)
!3421 = !DILocation(line: 299, column: 13, scope: !3372, inlinedAt: !3380)
!3422 = !DILocation(line: 300, column: 42, scope: !3372, inlinedAt: !3380)
!3423 = !DILocation(line: 0, scope: !3372, inlinedAt: !3380)
!3424 = !DILocation(line: 300, column: 26, scope: !3372, inlinedAt: !3380)
!3425 = !DILocation(line: 301, column: 20, scope: !3426, inlinedAt: !3380)
!3426 = distinct !DILexicalBlock(scope: !3372, file: !360, line: 301, column: 17)
!3427 = !DILocation(line: 301, column: 19, scope: !3426, inlinedAt: !3380)
!3428 = !DILocation(line: 301, column: 25, scope: !3426, inlinedAt: !3380)
!3429 = !DILocation(line: 301, column: 49, scope: !3426, inlinedAt: !3380)
!3430 = !DILocation(line: 301, column: 43, scope: !3426, inlinedAt: !3380)
!3431 = !DILocation(line: 301, column: 40, scope: !3426, inlinedAt: !3380)
!3432 = !DILocation(line: 301, column: 17, scope: !3372, inlinedAt: !3380)
!3433 = !DILocation(line: 303, column: 11, scope: !3373, inlinedAt: !3380)
!3434 = !DILocation(line: 302, column: 22, scope: !3426, inlinedAt: !3380)
!3435 = !DILocation(line: 304, column: 20, scope: !3377, inlinedAt: !3380)
!3436 = !DILocation(line: 304, column: 28, scope: !3377, inlinedAt: !3380)
!3437 = !DILocation(line: 304, column: 31, scope: !3377, inlinedAt: !3380)
!3438 = !DILocation(line: 304, column: 61, scope: !3377, inlinedAt: !3380)
!3439 = !DILocation(line: 304, column: 18, scope: !3373, inlinedAt: !3380)
!3440 = !DILocation(line: 306, column: 13, scope: !3376, inlinedAt: !3380)
!3441 = !DILocation(line: 307, column: 42, scope: !3376, inlinedAt: !3380)
!3442 = !DILocation(line: 0, scope: !3376, inlinedAt: !3380)
!3443 = !DILocation(line: 307, column: 26, scope: !3376, inlinedAt: !3380)
!3444 = !DILocation(line: 308, column: 20, scope: !3445, inlinedAt: !3380)
!3445 = distinct !DILexicalBlock(scope: !3376, file: !360, line: 308, column: 17)
!3446 = !DILocation(line: 308, column: 19, scope: !3445, inlinedAt: !3380)
!3447 = !DILocation(line: 308, column: 25, scope: !3445, inlinedAt: !3380)
!3448 = !DILocation(line: 308, column: 34, scope: !3445, inlinedAt: !3380)
!3449 = !DILocation(line: 308, column: 28, scope: !3445, inlinedAt: !3380)
!3450 = !DILocation(line: 308, column: 42, scope: !3445, inlinedAt: !3380)
!3451 = !DILocation(line: 308, column: 47, scope: !3445, inlinedAt: !3380)
!3452 = !DILocation(line: 310, column: 11, scope: !3377, inlinedAt: !3380)
!3453 = !DILocation(line: 309, column: 22, scope: !3445, inlinedAt: !3380)
!3454 = !DILocation(line: 314, column: 3, scope: !3359, inlinedAt: !3380)
!3455 = !DILocation(line: 323, column: 11, scope: !3351)
!3456 = !DILocation(line: 324, column: 10, scope: !3351)
!3457 = !DILocation(line: 324, column: 3, scope: !3351)
!3458 = distinct !DISubprogram(name: "sig2str", scope: !360, file: !360, line: 332, type: !3459, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !3461)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!37, !37, !29}
!3461 = !{!3462, !3463, !3464, !3466, !3468, !3469, !3470}
!3462 = !DILocalVariable(name: "signum", arg: 1, scope: !3458, file: !360, line: 332, type: !37)
!3463 = !DILocalVariable(name: "signame", arg: 2, scope: !3458, file: !360, line: 332, type: !29)
!3464 = !DILocalVariable(name: "i", scope: !3465, file: !360, line: 334, type: !7)
!3465 = distinct !DILexicalBlock(scope: !3458, file: !360, line: 334, column: 3)
!3466 = !DILocalVariable(name: "rtmin", scope: !3467, file: !360, line: 342, type: !37)
!3467 = distinct !DILexicalBlock(scope: !3458, file: !360, line: 341, column: 3)
!3468 = !DILocalVariable(name: "rtmax", scope: !3467, file: !360, line: 343, type: !37)
!3469 = !DILocalVariable(name: "base", scope: !3467, file: !360, line: 348, type: !37)
!3470 = !DILocalVariable(name: "delta", scope: !3467, file: !360, line: 360, type: !37)
!3471 = !DILocation(line: 0, scope: !3458)
!3472 = !DILocation(line: 0, scope: !3465)
!3473 = !DILocation(line: 334, column: 3, scope: !3465)
!3474 = !DILocation(line: 335, column: 26, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3476, file: !360, line: 335, column: 9)
!3476 = distinct !DILexicalBlock(scope: !3465, file: !360, line: 334, column: 3)
!3477 = !DILocation(line: 335, column: 30, scope: !3475)
!3478 = !DILocation(line: 335, column: 9, scope: !3476)
!3479 = !DILocation(line: 334, column: 50, scope: !3476)
!3480 = !DILocation(line: 334, column: 30, scope: !3476)
!3481 = distinct !{!3481, !3473, !3482, !591}
!3482 = !DILocation(line: 339, column: 7, scope: !3465)
!3483 = !DILocation(line: 334, column: 28, scope: !3476)
!3484 = !DILocation(line: 337, column: 26, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3475, file: !360, line: 336, column: 7)
!3486 = !DILocalVariable(name: "__dest", arg: 1, scope: !3487, file: !2039, line: 77, type: !3490)
!3487 = distinct !DISubprogram(name: "strcpy", scope: !2039, file: !2039, line: 77, type: !3488, scopeLine: 78, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !3491)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!29, !3490, !620}
!3490 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!3491 = !{!3486, !3492}
!3492 = !DILocalVariable(name: "__src", arg: 2, scope: !3487, file: !2039, line: 77, type: !620)
!3493 = !DILocation(line: 0, scope: !3487, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 337, column: 9, scope: !3485)
!3495 = !DILocation(line: 79, column: 10, scope: !3487, inlinedAt: !3494)
!3496 = !DILocation(line: 342, column: 17, scope: !3467)
!3497 = !DILocation(line: 0, scope: !3467)
!3498 = !DILocation(line: 343, column: 17, scope: !3467)
!3499 = !DILocation(line: 345, column: 18, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3467, file: !360, line: 345, column: 9)
!3501 = !DILocation(line: 345, column: 28, scope: !3500)
!3502 = !DILocation(line: 349, column: 34, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3467, file: !360, line: 349, column: 9)
!3504 = !DILocation(line: 349, column: 43, scope: !3503)
!3505 = !DILocation(line: 349, column: 25, scope: !3503)
!3506 = !DILocation(line: 349, column: 16, scope: !3503)
!3507 = !DILocation(line: 0, scope: !3487, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 356, column: 9, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3503, file: !360, line: 355, column: 7)
!3510 = !DILocation(line: 0, scope: !3487, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 351, column: 9, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3503, file: !360, line: 350, column: 7)
!3513 = !DILocation(line: 0, scope: !3503)
!3514 = !DILocation(line: 360, column: 24, scope: !3467)
!3515 = !DILocation(line: 361, column: 15, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3467, file: !360, line: 361, column: 9)
!3517 = !DILocation(line: 361, column: 9, scope: !3467)
!3518 = !DILocation(line: 362, column: 7, scope: !3516)
!3519 = !DILocation(line: 365, column: 1, scope: !3458)
!3520 = distinct !DISubprogram(name: "version_etc_arn", scope: !447, file: !447, line: 61, type: !3521, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !3558)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{null, !3523, !43, !43, !43, !3557, !40}
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !3525)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !3526)
!3526 = !{!3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3525, file: !95, line: 51, baseType: !37, size: 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3525, file: !95, line: 54, baseType: !29, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3525, file: !95, line: 55, baseType: !29, size: 64, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3525, file: !95, line: 56, baseType: !29, size: 64, offset: 192)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3525, file: !95, line: 57, baseType: !29, size: 64, offset: 256)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3525, file: !95, line: 58, baseType: !29, size: 64, offset: 320)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3525, file: !95, line: 59, baseType: !29, size: 64, offset: 384)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3525, file: !95, line: 60, baseType: !29, size: 64, offset: 448)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3525, file: !95, line: 61, baseType: !29, size: 64, offset: 512)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3525, file: !95, line: 64, baseType: !29, size: 64, offset: 576)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3525, file: !95, line: 65, baseType: !29, size: 64, offset: 640)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3525, file: !95, line: 66, baseType: !29, size: 64, offset: 704)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3525, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3525, file: !95, line: 70, baseType: !3541, size: 64, offset: 832)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3525, file: !95, line: 72, baseType: !37, size: 32, offset: 896)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3525, file: !95, line: 73, baseType: !37, size: 32, offset: 928)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3525, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3525, file: !95, line: 77, baseType: !39, size: 16, offset: 1024)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3525, file: !95, line: 78, baseType: !38, size: 8, offset: 1040)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3525, file: !95, line: 79, baseType: !122, size: 8, offset: 1048)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3525, file: !95, line: 81, baseType: !126, size: 64, offset: 1088)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3525, file: !95, line: 89, baseType: !129, size: 64, offset: 1152)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3525, file: !95, line: 91, baseType: !131, size: 64, offset: 1216)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3525, file: !95, line: 92, baseType: !134, size: 64, offset: 1280)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3525, file: !95, line: 93, baseType: !3541, size: 64, offset: 1344)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3525, file: !95, line: 94, baseType: !31, size: 64, offset: 1408)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3525, file: !95, line: 95, baseType: !40, size: 64, offset: 1472)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3525, file: !95, line: 96, baseType: !37, size: 32, offset: 1536)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3525, file: !95, line: 98, baseType: !141, size: 160, offset: 1568)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!3558 = !{!3559, !3560, !3561, !3562, !3563, !3564}
!3559 = !DILocalVariable(name: "stream", arg: 1, scope: !3520, file: !447, line: 61, type: !3523)
!3560 = !DILocalVariable(name: "command_name", arg: 2, scope: !3520, file: !447, line: 62, type: !43)
!3561 = !DILocalVariable(name: "package", arg: 3, scope: !3520, file: !447, line: 62, type: !43)
!3562 = !DILocalVariable(name: "version", arg: 4, scope: !3520, file: !447, line: 63, type: !43)
!3563 = !DILocalVariable(name: "authors", arg: 5, scope: !3520, file: !447, line: 64, type: !3557)
!3564 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3520, file: !447, line: 64, type: !40)
!3565 = !DILocation(line: 0, scope: !3520)
!3566 = !DILocation(line: 66, column: 7, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3520, file: !447, line: 66, column: 7)
!3568 = !DILocation(line: 66, column: 7, scope: !3520)
!3569 = !DILocation(line: 67, column: 5, scope: !3567)
!3570 = !DILocation(line: 69, column: 5, scope: !3567)
!3571 = !DILocation(line: 83, column: 3, scope: !3520)
!3572 = !DILocation(line: 85, column: 3, scope: !3520)
!3573 = !DILocation(line: 88, column: 3, scope: !3520)
!3574 = !DILocation(line: 95, column: 3, scope: !3520)
!3575 = !DILocation(line: 97, column: 3, scope: !3520)
!3576 = !DILocation(line: 105, column: 7, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3520, file: !447, line: 98, column: 5)
!3578 = !DILocation(line: 106, column: 7, scope: !3577)
!3579 = !DILocation(line: 109, column: 7, scope: !3577)
!3580 = !DILocation(line: 110, column: 7, scope: !3577)
!3581 = !DILocation(line: 113, column: 7, scope: !3577)
!3582 = !DILocation(line: 115, column: 7, scope: !3577)
!3583 = !DILocation(line: 120, column: 7, scope: !3577)
!3584 = !DILocation(line: 122, column: 7, scope: !3577)
!3585 = !DILocation(line: 127, column: 7, scope: !3577)
!3586 = !DILocation(line: 129, column: 7, scope: !3577)
!3587 = !DILocation(line: 134, column: 7, scope: !3577)
!3588 = !DILocation(line: 137, column: 7, scope: !3577)
!3589 = !DILocation(line: 142, column: 7, scope: !3577)
!3590 = !DILocation(line: 145, column: 7, scope: !3577)
!3591 = !DILocation(line: 150, column: 7, scope: !3577)
!3592 = !DILocation(line: 154, column: 7, scope: !3577)
!3593 = !DILocation(line: 159, column: 7, scope: !3577)
!3594 = !DILocation(line: 163, column: 7, scope: !3577)
!3595 = !DILocation(line: 170, column: 7, scope: !3577)
!3596 = !DILocation(line: 174, column: 7, scope: !3577)
!3597 = !DILocation(line: 176, column: 1, scope: !3520)
!3598 = distinct !DISubprogram(name: "version_etc_ar", scope: !447, file: !447, line: 183, type: !3599, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !3601)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{null, !3523, !43, !43, !43, !3557}
!3601 = !{!3602, !3603, !3604, !3605, !3606, !3607}
!3602 = !DILocalVariable(name: "stream", arg: 1, scope: !3598, file: !447, line: 183, type: !3523)
!3603 = !DILocalVariable(name: "command_name", arg: 2, scope: !3598, file: !447, line: 184, type: !43)
!3604 = !DILocalVariable(name: "package", arg: 3, scope: !3598, file: !447, line: 184, type: !43)
!3605 = !DILocalVariable(name: "version", arg: 4, scope: !3598, file: !447, line: 185, type: !43)
!3606 = !DILocalVariable(name: "authors", arg: 5, scope: !3598, file: !447, line: 185, type: !3557)
!3607 = !DILocalVariable(name: "n_authors", scope: !3598, file: !447, line: 187, type: !40)
!3608 = !DILocation(line: 0, scope: !3598)
!3609 = !DILocation(line: 189, column: 8, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3598, file: !447, line: 189, column: 3)
!3611 = !DILocation(line: 0, scope: !3610)
!3612 = !DILocation(line: 189, column: 23, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3610, file: !447, line: 189, column: 3)
!3614 = !DILocation(line: 189, column: 3, scope: !3610)
!3615 = !DILocation(line: 189, column: 52, scope: !3613)
!3616 = distinct !{!3616, !3614, !3617, !591}
!3617 = !DILocation(line: 190, column: 5, scope: !3610)
!3618 = !DILocation(line: 191, column: 3, scope: !3598)
!3619 = !DILocation(line: 192, column: 1, scope: !3598)
!3620 = distinct !DISubprogram(name: "version_etc_va", scope: !447, file: !447, line: 199, type: !3621, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !3634)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{null, !3523, !43, !43, !43, !3623}
!3623 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !199, line: 52, baseType: !3624)
!3624 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !201, line: 32, baseType: !3625)
!3625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3626, baseType: !3627)
!3626 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !205, size: 256, elements: !3628)
!3628 = !{!3629, !3630, !3631, !3632, !3633}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3627, file: !3626, line: 192, baseType: !31, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3627, file: !3626, line: 192, baseType: !31, size: 64, offset: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3627, file: !3626, line: 192, baseType: !31, size: 64, offset: 128)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3627, file: !3626, line: 192, baseType: !37, size: 32, offset: 192)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3627, file: !3626, line: 192, baseType: !37, size: 32, offset: 224)
!3634 = !{!3635, !3636, !3637, !3638, !3639, !3640, !3641}
!3635 = !DILocalVariable(name: "stream", arg: 1, scope: !3620, file: !447, line: 199, type: !3523)
!3636 = !DILocalVariable(name: "command_name", arg: 2, scope: !3620, file: !447, line: 200, type: !43)
!3637 = !DILocalVariable(name: "package", arg: 3, scope: !3620, file: !447, line: 200, type: !43)
!3638 = !DILocalVariable(name: "version", arg: 4, scope: !3620, file: !447, line: 201, type: !43)
!3639 = !DILocalVariable(name: "authors", arg: 5, scope: !3620, file: !447, line: 201, type: !3623)
!3640 = !DILocalVariable(name: "n_authors", scope: !3620, file: !447, line: 203, type: !40)
!3641 = !DILocalVariable(name: "authtab", scope: !3620, file: !447, line: 204, type: !3642)
!3642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 640, elements: !300)
!3643 = !DILocation(line: 0, scope: !3620)
!3644 = !DILocation(line: 201, column: 46, scope: !3620)
!3645 = !DILocation(line: 204, column: 3, scope: !3620)
!3646 = !DILocation(line: 204, column: 15, scope: !3620)
!3647 = !DILocation(line: 208, column: 35, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3649, file: !447, line: 206, column: 3)
!3649 = distinct !DILexicalBlock(scope: !3620, file: !447, line: 206, column: 3)
!3650 = !DILocation(line: 208, column: 14, scope: !3648)
!3651 = !DILocation(line: 208, column: 33, scope: !3648)
!3652 = !DILocation(line: 208, column: 67, scope: !3648)
!3653 = !DILocation(line: 206, column: 3, scope: !3649)
!3654 = !DILocation(line: 0, scope: !3649)
!3655 = !DILocation(line: 211, column: 3, scope: !3620)
!3656 = !DILocation(line: 213, column: 1, scope: !3620)
!3657 = distinct !DISubprogram(name: "version_etc", scope: !447, file: !447, line: 230, type: !3658, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !3660)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{null, !3523, !43, !43, !43, null}
!3660 = !{!3661, !3662, !3663, !3664, !3665}
!3661 = !DILocalVariable(name: "stream", arg: 1, scope: !3657, file: !447, line: 230, type: !3523)
!3662 = !DILocalVariable(name: "command_name", arg: 2, scope: !3657, file: !447, line: 231, type: !43)
!3663 = !DILocalVariable(name: "package", arg: 3, scope: !3657, file: !447, line: 231, type: !43)
!3664 = !DILocalVariable(name: "version", arg: 4, scope: !3657, file: !447, line: 232, type: !43)
!3665 = !DILocalVariable(name: "authors", scope: !3657, file: !447, line: 234, type: !3623)
!3666 = !DILocation(line: 0, scope: !3657)
!3667 = !DILocation(line: 234, column: 3, scope: !3657)
!3668 = !DILocation(line: 234, column: 11, scope: !3657)
!3669 = !DILocation(line: 235, column: 3, scope: !3657)
!3670 = !DILocation(line: 236, column: 3, scope: !3657)
!3671 = !DILocation(line: 237, column: 3, scope: !3657)
!3672 = !DILocation(line: 238, column: 1, scope: !3657)
!3673 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !447, file: !447, line: 241, type: !226, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !536)
!3674 = !DILocation(line: 243, column: 3, scope: !3673)
!3675 = !DILocation(line: 248, column: 3, scope: !3673)
!3676 = !DILocation(line: 254, column: 3, scope: !3673)
!3677 = !DILocation(line: 259, column: 3, scope: !3673)
!3678 = !DILocation(line: 261, column: 1, scope: !3673)
!3679 = distinct !DISubprogram(name: "xnrealloc", scope: !3680, file: !3680, line: 147, type: !3681, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3683)
!3680 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!31, !31, !40, !40}
!3683 = !{!3684, !3685, !3686}
!3684 = !DILocalVariable(name: "p", arg: 1, scope: !3679, file: !3680, line: 147, type: !31)
!3685 = !DILocalVariable(name: "n", arg: 2, scope: !3679, file: !3680, line: 147, type: !40)
!3686 = !DILocalVariable(name: "s", arg: 3, scope: !3679, file: !3680, line: 147, type: !40)
!3687 = !DILocation(line: 0, scope: !3679)
!3688 = !DILocalVariable(name: "p", arg: 1, scope: !3689, file: !454, line: 83, type: !31)
!3689 = distinct !DISubprogram(name: "xreallocarray", scope: !454, file: !454, line: 83, type: !3681, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3690)
!3690 = !{!3688, !3691, !3692}
!3691 = !DILocalVariable(name: "n", arg: 2, scope: !3689, file: !454, line: 83, type: !40)
!3692 = !DILocalVariable(name: "s", arg: 3, scope: !3689, file: !454, line: 83, type: !40)
!3693 = !DILocation(line: 0, scope: !3689, inlinedAt: !3694)
!3694 = distinct !DILocation(line: 149, column: 10, scope: !3679)
!3695 = !DILocation(line: 85, column: 25, scope: !3689, inlinedAt: !3694)
!3696 = !DILocalVariable(name: "p", arg: 1, scope: !3697, file: !454, line: 37, type: !31)
!3697 = distinct !DISubprogram(name: "check_nonnull", scope: !454, file: !454, line: 37, type: !3698, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3700)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!31, !31}
!3700 = !{!3696}
!3701 = !DILocation(line: 0, scope: !3697, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 85, column: 10, scope: !3689, inlinedAt: !3694)
!3703 = !DILocation(line: 39, column: 8, scope: !3704, inlinedAt: !3702)
!3704 = distinct !DILexicalBlock(scope: !3697, file: !454, line: 39, column: 7)
!3705 = !DILocation(line: 39, column: 7, scope: !3697, inlinedAt: !3702)
!3706 = !DILocation(line: 40, column: 5, scope: !3704, inlinedAt: !3702)
!3707 = !DILocation(line: 149, column: 3, scope: !3679)
!3708 = !DILocation(line: 0, scope: !3689)
!3709 = !DILocation(line: 85, column: 25, scope: !3689)
!3710 = !DILocation(line: 0, scope: !3697, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 85, column: 10, scope: !3689)
!3712 = !DILocation(line: 39, column: 8, scope: !3704, inlinedAt: !3711)
!3713 = !DILocation(line: 39, column: 7, scope: !3697, inlinedAt: !3711)
!3714 = !DILocation(line: 40, column: 5, scope: !3704, inlinedAt: !3711)
!3715 = !DILocation(line: 85, column: 3, scope: !3689)
!3716 = distinct !DISubprogram(name: "xmalloc", scope: !454, file: !454, line: 47, type: !3717, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3719)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!31, !40}
!3719 = !{!3720}
!3720 = !DILocalVariable(name: "s", arg: 1, scope: !3716, file: !454, line: 47, type: !40)
!3721 = !DILocation(line: 0, scope: !3716)
!3722 = !DILocation(line: 49, column: 25, scope: !3716)
!3723 = !DILocation(line: 0, scope: !3697, inlinedAt: !3724)
!3724 = distinct !DILocation(line: 49, column: 10, scope: !3716)
!3725 = !DILocation(line: 39, column: 8, scope: !3704, inlinedAt: !3724)
!3726 = !DILocation(line: 39, column: 7, scope: !3697, inlinedAt: !3724)
!3727 = !DILocation(line: 40, column: 5, scope: !3704, inlinedAt: !3724)
!3728 = !DILocation(line: 49, column: 3, scope: !3716)
!3729 = distinct !DISubprogram(name: "ximalloc", scope: !454, file: !454, line: 53, type: !3730, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3732)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!31, !473}
!3732 = !{!3733}
!3733 = !DILocalVariable(name: "s", arg: 1, scope: !3729, file: !454, line: 53, type: !473)
!3734 = !DILocation(line: 0, scope: !3729)
!3735 = !DILocalVariable(name: "s", arg: 1, scope: !3736, file: !3737, line: 55, type: !473)
!3736 = distinct !DISubprogram(name: "imalloc", scope: !3737, file: !3737, line: 55, type: !3730, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3738)
!3737 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3738 = !{!3735}
!3739 = !DILocation(line: 0, scope: !3736, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 55, column: 25, scope: !3729)
!3741 = !DILocation(line: 57, column: 26, scope: !3736, inlinedAt: !3740)
!3742 = !DILocation(line: 0, scope: !3697, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 55, column: 10, scope: !3729)
!3744 = !DILocation(line: 39, column: 8, scope: !3704, inlinedAt: !3743)
!3745 = !DILocation(line: 39, column: 7, scope: !3697, inlinedAt: !3743)
!3746 = !DILocation(line: 40, column: 5, scope: !3704, inlinedAt: !3743)
!3747 = !DILocation(line: 55, column: 3, scope: !3729)
!3748 = distinct !DISubprogram(name: "xcharalloc", scope: !454, file: !454, line: 59, type: !3749, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3751)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!29, !40}
!3751 = !{!3752}
!3752 = !DILocalVariable(name: "n", arg: 1, scope: !3748, file: !454, line: 59, type: !40)
!3753 = !DILocation(line: 0, scope: !3748)
!3754 = !DILocation(line: 0, scope: !3716, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 61, column: 10, scope: !3748)
!3756 = !DILocation(line: 49, column: 25, scope: !3716, inlinedAt: !3755)
!3757 = !DILocation(line: 0, scope: !3697, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 49, column: 10, scope: !3716, inlinedAt: !3755)
!3759 = !DILocation(line: 39, column: 8, scope: !3704, inlinedAt: !3758)
!3760 = !DILocation(line: 39, column: 7, scope: !3697, inlinedAt: !3758)
!3761 = !DILocation(line: 40, column: 5, scope: !3704, inlinedAt: !3758)
!3762 = !DILocation(line: 61, column: 3, scope: !3748)
!3763 = distinct !DISubprogram(name: "xrealloc", scope: !454, file: !454, line: 68, type: !3764, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3766)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!31, !31, !40}
!3766 = !{!3767, !3768}
!3767 = !DILocalVariable(name: "p", arg: 1, scope: !3763, file: !454, line: 68, type: !31)
!3768 = !DILocalVariable(name: "s", arg: 2, scope: !3763, file: !454, line: 68, type: !40)
!3769 = !DILocation(line: 0, scope: !3763)
!3770 = !DILocalVariable(name: "ptr", arg: 1, scope: !3771, file: !3772, line: 2057, type: !31)
!3771 = distinct !DISubprogram(name: "rpl_realloc", scope: !3772, file: !3772, line: 2057, type: !3764, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3773)
!3772 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3773 = !{!3770, !3774}
!3774 = !DILocalVariable(name: "size", arg: 2, scope: !3771, file: !3772, line: 2057, type: !40)
!3775 = !DILocation(line: 0, scope: !3771, inlinedAt: !3776)
!3776 = distinct !DILocation(line: 70, column: 25, scope: !3763)
!3777 = !DILocation(line: 2059, column: 24, scope: !3771, inlinedAt: !3776)
!3778 = !DILocation(line: 2059, column: 10, scope: !3771, inlinedAt: !3776)
!3779 = !DILocation(line: 0, scope: !3697, inlinedAt: !3780)
!3780 = distinct !DILocation(line: 70, column: 10, scope: !3763)
!3781 = !DILocation(line: 39, column: 8, scope: !3704, inlinedAt: !3780)
!3782 = !DILocation(line: 39, column: 7, scope: !3697, inlinedAt: !3780)
!3783 = !DILocation(line: 40, column: 5, scope: !3704, inlinedAt: !3780)
!3784 = !DILocation(line: 70, column: 3, scope: !3763)
!3785 = distinct !DISubprogram(name: "xirealloc", scope: !454, file: !454, line: 74, type: !3786, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3788)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!31, !31, !473}
!3788 = !{!3789, !3790}
!3789 = !DILocalVariable(name: "p", arg: 1, scope: !3785, file: !454, line: 74, type: !31)
!3790 = !DILocalVariable(name: "s", arg: 2, scope: !3785, file: !454, line: 74, type: !473)
!3791 = !DILocation(line: 0, scope: !3785)
!3792 = !DILocalVariable(name: "p", arg: 1, scope: !3793, file: !3737, line: 66, type: !31)
!3793 = distinct !DISubprogram(name: "irealloc", scope: !3737, file: !3737, line: 66, type: !3786, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3794)
!3794 = !{!3792, !3795}
!3795 = !DILocalVariable(name: "s", arg: 2, scope: !3793, file: !3737, line: 66, type: !473)
!3796 = !DILocation(line: 0, scope: !3793, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 76, column: 25, scope: !3785)
!3798 = !DILocation(line: 0, scope: !3771, inlinedAt: !3799)
!3799 = distinct !DILocation(line: 68, column: 26, scope: !3793, inlinedAt: !3797)
!3800 = !DILocation(line: 2059, column: 24, scope: !3771, inlinedAt: !3799)
!3801 = !DILocation(line: 2059, column: 10, scope: !3771, inlinedAt: !3799)
!3802 = !DILocation(line: 0, scope: !3697, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 76, column: 10, scope: !3785)
!3804 = !DILocation(line: 39, column: 8, scope: !3704, inlinedAt: !3803)
!3805 = !DILocation(line: 39, column: 7, scope: !3697, inlinedAt: !3803)
!3806 = !DILocation(line: 40, column: 5, scope: !3704, inlinedAt: !3803)
!3807 = !DILocation(line: 76, column: 3, scope: !3785)
!3808 = distinct !DISubprogram(name: "xireallocarray", scope: !454, file: !454, line: 89, type: !3809, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3811)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!31, !31, !473, !473}
!3811 = !{!3812, !3813, !3814}
!3812 = !DILocalVariable(name: "p", arg: 1, scope: !3808, file: !454, line: 89, type: !31)
!3813 = !DILocalVariable(name: "n", arg: 2, scope: !3808, file: !454, line: 89, type: !473)
!3814 = !DILocalVariable(name: "s", arg: 3, scope: !3808, file: !454, line: 89, type: !473)
!3815 = !DILocation(line: 0, scope: !3808)
!3816 = !DILocalVariable(name: "p", arg: 1, scope: !3817, file: !3737, line: 98, type: !31)
!3817 = distinct !DISubprogram(name: "ireallocarray", scope: !3737, file: !3737, line: 98, type: !3809, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3818)
!3818 = !{!3816, !3819, !3820}
!3819 = !DILocalVariable(name: "n", arg: 2, scope: !3817, file: !3737, line: 98, type: !473)
!3820 = !DILocalVariable(name: "s", arg: 3, scope: !3817, file: !3737, line: 98, type: !473)
!3821 = !DILocation(line: 0, scope: !3817, inlinedAt: !3822)
!3822 = distinct !DILocation(line: 91, column: 25, scope: !3808)
!3823 = !DILocation(line: 101, column: 13, scope: !3817, inlinedAt: !3822)
!3824 = !DILocation(line: 0, scope: !3697, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 91, column: 10, scope: !3808)
!3826 = !DILocation(line: 39, column: 8, scope: !3704, inlinedAt: !3825)
!3827 = !DILocation(line: 39, column: 7, scope: !3697, inlinedAt: !3825)
!3828 = !DILocation(line: 40, column: 5, scope: !3704, inlinedAt: !3825)
!3829 = !DILocation(line: 91, column: 3, scope: !3808)
!3830 = distinct !DISubprogram(name: "xnmalloc", scope: !454, file: !454, line: 98, type: !3831, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3833)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!31, !40, !40}
!3833 = !{!3834, !3835}
!3834 = !DILocalVariable(name: "n", arg: 1, scope: !3830, file: !454, line: 98, type: !40)
!3835 = !DILocalVariable(name: "s", arg: 2, scope: !3830, file: !454, line: 98, type: !40)
!3836 = !DILocation(line: 0, scope: !3830)
!3837 = !DILocation(line: 0, scope: !3689, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 100, column: 10, scope: !3830)
!3839 = !DILocation(line: 85, column: 25, scope: !3689, inlinedAt: !3838)
!3840 = !DILocation(line: 0, scope: !3697, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 85, column: 10, scope: !3689, inlinedAt: !3838)
!3842 = !DILocation(line: 39, column: 8, scope: !3704, inlinedAt: !3841)
!3843 = !DILocation(line: 39, column: 7, scope: !3697, inlinedAt: !3841)
!3844 = !DILocation(line: 40, column: 5, scope: !3704, inlinedAt: !3841)
!3845 = !DILocation(line: 100, column: 3, scope: !3830)
!3846 = distinct !DISubprogram(name: "xinmalloc", scope: !454, file: !454, line: 104, type: !3847, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3849)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!31, !473, !473}
!3849 = !{!3850, !3851}
!3850 = !DILocalVariable(name: "n", arg: 1, scope: !3846, file: !454, line: 104, type: !473)
!3851 = !DILocalVariable(name: "s", arg: 2, scope: !3846, file: !454, line: 104, type: !473)
!3852 = !DILocation(line: 0, scope: !3846)
!3853 = !DILocation(line: 0, scope: !3808, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 106, column: 10, scope: !3846)
!3855 = !DILocation(line: 0, scope: !3817, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 91, column: 25, scope: !3808, inlinedAt: !3854)
!3857 = !DILocation(line: 101, column: 13, scope: !3817, inlinedAt: !3856)
!3858 = !DILocation(line: 0, scope: !3697, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 91, column: 10, scope: !3808, inlinedAt: !3854)
!3860 = !DILocation(line: 39, column: 8, scope: !3704, inlinedAt: !3859)
!3861 = !DILocation(line: 39, column: 7, scope: !3697, inlinedAt: !3859)
!3862 = !DILocation(line: 40, column: 5, scope: !3704, inlinedAt: !3859)
!3863 = !DILocation(line: 106, column: 3, scope: !3846)
!3864 = distinct !DISubprogram(name: "x2realloc", scope: !454, file: !454, line: 116, type: !3865, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3867)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!31, !31, !460}
!3867 = !{!3868, !3869}
!3868 = !DILocalVariable(name: "p", arg: 1, scope: !3864, file: !454, line: 116, type: !31)
!3869 = !DILocalVariable(name: "ps", arg: 2, scope: !3864, file: !454, line: 116, type: !460)
!3870 = !DILocation(line: 0, scope: !3864)
!3871 = !DILocation(line: 0, scope: !457, inlinedAt: !3872)
!3872 = distinct !DILocation(line: 118, column: 10, scope: !3864)
!3873 = !DILocation(line: 178, column: 14, scope: !457, inlinedAt: !3872)
!3874 = !DILocation(line: 180, column: 9, scope: !3875, inlinedAt: !3872)
!3875 = distinct !DILexicalBlock(scope: !457, file: !454, line: 180, column: 7)
!3876 = !DILocation(line: 180, column: 7, scope: !457, inlinedAt: !3872)
!3877 = !DILocation(line: 182, column: 13, scope: !3878, inlinedAt: !3872)
!3878 = distinct !DILexicalBlock(scope: !3879, file: !454, line: 182, column: 11)
!3879 = distinct !DILexicalBlock(scope: !3875, file: !454, line: 181, column: 5)
!3880 = !DILocation(line: 182, column: 11, scope: !3879, inlinedAt: !3872)
!3881 = !DILocation(line: 197, column: 11, scope: !3882, inlinedAt: !3872)
!3882 = distinct !DILexicalBlock(scope: !3883, file: !454, line: 197, column: 11)
!3883 = distinct !DILexicalBlock(scope: !3875, file: !454, line: 195, column: 5)
!3884 = !DILocation(line: 197, column: 11, scope: !3883, inlinedAt: !3872)
!3885 = !DILocation(line: 198, column: 9, scope: !3882, inlinedAt: !3872)
!3886 = !DILocation(line: 0, scope: !3689, inlinedAt: !3887)
!3887 = distinct !DILocation(line: 201, column: 7, scope: !457, inlinedAt: !3872)
!3888 = !DILocation(line: 85, column: 25, scope: !3689, inlinedAt: !3887)
!3889 = !DILocation(line: 0, scope: !3697, inlinedAt: !3890)
!3890 = distinct !DILocation(line: 85, column: 10, scope: !3689, inlinedAt: !3887)
!3891 = !DILocation(line: 39, column: 8, scope: !3704, inlinedAt: !3890)
!3892 = !DILocation(line: 39, column: 7, scope: !3697, inlinedAt: !3890)
!3893 = !DILocation(line: 40, column: 5, scope: !3704, inlinedAt: !3890)
!3894 = !DILocation(line: 202, column: 7, scope: !457, inlinedAt: !3872)
!3895 = !DILocation(line: 118, column: 3, scope: !3864)
!3896 = !DILocation(line: 0, scope: !457)
!3897 = !DILocation(line: 178, column: 14, scope: !457)
!3898 = !DILocation(line: 180, column: 9, scope: !3875)
!3899 = !DILocation(line: 180, column: 7, scope: !457)
!3900 = !DILocation(line: 182, column: 13, scope: !3878)
!3901 = !DILocation(line: 182, column: 11, scope: !3879)
!3902 = !DILocation(line: 190, column: 30, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3878, file: !454, line: 183, column: 9)
!3904 = !DILocation(line: 191, column: 16, scope: !3903)
!3905 = !DILocation(line: 191, column: 13, scope: !3903)
!3906 = !DILocation(line: 192, column: 9, scope: !3903)
!3907 = !DILocation(line: 197, column: 11, scope: !3882)
!3908 = !DILocation(line: 197, column: 11, scope: !3883)
!3909 = !DILocation(line: 198, column: 9, scope: !3882)
!3910 = !DILocation(line: 0, scope: !3689, inlinedAt: !3911)
!3911 = distinct !DILocation(line: 201, column: 7, scope: !457)
!3912 = !DILocation(line: 85, column: 25, scope: !3689, inlinedAt: !3911)
!3913 = !DILocation(line: 0, scope: !3697, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 85, column: 10, scope: !3689, inlinedAt: !3911)
!3915 = !DILocation(line: 39, column: 8, scope: !3704, inlinedAt: !3914)
!3916 = !DILocation(line: 39, column: 7, scope: !3697, inlinedAt: !3914)
!3917 = !DILocation(line: 40, column: 5, scope: !3704, inlinedAt: !3914)
!3918 = !DILocation(line: 202, column: 7, scope: !457)
!3919 = !DILocation(line: 203, column: 3, scope: !457)
!3920 = !DILocation(line: 0, scope: !469)
!3921 = !DILocation(line: 230, column: 14, scope: !469)
!3922 = !DILocation(line: 238, column: 7, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !469, file: !454, line: 238, column: 7)
!3924 = !DILocation(line: 238, column: 7, scope: !469)
!3925 = !DILocation(line: 240, column: 9, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !469, file: !454, line: 240, column: 7)
!3927 = !DILocation(line: 240, column: 18, scope: !3926)
!3928 = !DILocation(line: 253, column: 8, scope: !469)
!3929 = !DILocation(line: 258, column: 27, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3931, file: !454, line: 257, column: 5)
!3931 = distinct !DILexicalBlock(scope: !469, file: !454, line: 256, column: 7)
!3932 = !DILocation(line: 259, column: 32, scope: !3930)
!3933 = !DILocation(line: 260, column: 5, scope: !3930)
!3934 = !DILocation(line: 262, column: 9, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !469, file: !454, line: 262, column: 7)
!3936 = !DILocation(line: 262, column: 7, scope: !469)
!3937 = !DILocation(line: 263, column: 9, scope: !3935)
!3938 = !DILocation(line: 263, column: 5, scope: !3935)
!3939 = !DILocation(line: 264, column: 9, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !469, file: !454, line: 264, column: 7)
!3941 = !DILocation(line: 264, column: 14, scope: !3940)
!3942 = !DILocation(line: 265, column: 7, scope: !3940)
!3943 = !DILocation(line: 265, column: 11, scope: !3940)
!3944 = !DILocation(line: 266, column: 11, scope: !3940)
!3945 = !DILocation(line: 266, column: 26, scope: !3940)
!3946 = !DILocation(line: 267, column: 14, scope: !3940)
!3947 = !DILocation(line: 264, column: 7, scope: !469)
!3948 = !DILocation(line: 268, column: 5, scope: !3940)
!3949 = !DILocation(line: 0, scope: !3763, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 269, column: 8, scope: !469)
!3951 = !DILocation(line: 0, scope: !3771, inlinedAt: !3952)
!3952 = distinct !DILocation(line: 70, column: 25, scope: !3763, inlinedAt: !3950)
!3953 = !DILocation(line: 2059, column: 24, scope: !3771, inlinedAt: !3952)
!3954 = !DILocation(line: 2059, column: 10, scope: !3771, inlinedAt: !3952)
!3955 = !DILocation(line: 0, scope: !3697, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 70, column: 10, scope: !3763, inlinedAt: !3950)
!3957 = !DILocation(line: 39, column: 8, scope: !3704, inlinedAt: !3956)
!3958 = !DILocation(line: 39, column: 7, scope: !3697, inlinedAt: !3956)
!3959 = !DILocation(line: 40, column: 5, scope: !3704, inlinedAt: !3956)
!3960 = !DILocation(line: 270, column: 7, scope: !469)
!3961 = !DILocation(line: 271, column: 3, scope: !469)
!3962 = distinct !DISubprogram(name: "xzalloc", scope: !454, file: !454, line: 279, type: !3717, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3963)
!3963 = !{!3964}
!3964 = !DILocalVariable(name: "s", arg: 1, scope: !3962, file: !454, line: 279, type: !40)
!3965 = !DILocation(line: 0, scope: !3962)
!3966 = !DILocalVariable(name: "n", arg: 1, scope: !3967, file: !454, line: 294, type: !40)
!3967 = distinct !DISubprogram(name: "xcalloc", scope: !454, file: !454, line: 294, type: !3831, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3968)
!3968 = !{!3966, !3969}
!3969 = !DILocalVariable(name: "s", arg: 2, scope: !3967, file: !454, line: 294, type: !40)
!3970 = !DILocation(line: 0, scope: !3967, inlinedAt: !3971)
!3971 = distinct !DILocation(line: 281, column: 10, scope: !3962)
!3972 = !DILocation(line: 296, column: 25, scope: !3967, inlinedAt: !3971)
!3973 = !DILocation(line: 0, scope: !3697, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 296, column: 10, scope: !3967, inlinedAt: !3971)
!3975 = !DILocation(line: 39, column: 8, scope: !3704, inlinedAt: !3974)
!3976 = !DILocation(line: 39, column: 7, scope: !3697, inlinedAt: !3974)
!3977 = !DILocation(line: 40, column: 5, scope: !3704, inlinedAt: !3974)
!3978 = !DILocation(line: 281, column: 3, scope: !3962)
!3979 = !DILocation(line: 0, scope: !3967)
!3980 = !DILocation(line: 296, column: 25, scope: !3967)
!3981 = !DILocation(line: 0, scope: !3697, inlinedAt: !3982)
!3982 = distinct !DILocation(line: 296, column: 10, scope: !3967)
!3983 = !DILocation(line: 39, column: 8, scope: !3704, inlinedAt: !3982)
!3984 = !DILocation(line: 39, column: 7, scope: !3697, inlinedAt: !3982)
!3985 = !DILocation(line: 40, column: 5, scope: !3704, inlinedAt: !3982)
!3986 = !DILocation(line: 296, column: 3, scope: !3967)
!3987 = distinct !DISubprogram(name: "xizalloc", scope: !454, file: !454, line: 285, type: !3730, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3988)
!3988 = !{!3989}
!3989 = !DILocalVariable(name: "s", arg: 1, scope: !3987, file: !454, line: 285, type: !473)
!3990 = !DILocation(line: 0, scope: !3987)
!3991 = !DILocalVariable(name: "n", arg: 1, scope: !3992, file: !454, line: 300, type: !473)
!3992 = distinct !DISubprogram(name: "xicalloc", scope: !454, file: !454, line: 300, type: !3847, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3993)
!3993 = !{!3991, !3994}
!3994 = !DILocalVariable(name: "s", arg: 2, scope: !3992, file: !454, line: 300, type: !473)
!3995 = !DILocation(line: 0, scope: !3992, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 287, column: 10, scope: !3987)
!3997 = !DILocalVariable(name: "n", arg: 1, scope: !3998, file: !3737, line: 77, type: !473)
!3998 = distinct !DISubprogram(name: "icalloc", scope: !3737, file: !3737, line: 77, type: !3847, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3999)
!3999 = !{!3997, !4000}
!4000 = !DILocalVariable(name: "s", arg: 2, scope: !3998, file: !3737, line: 77, type: !473)
!4001 = !DILocation(line: 0, scope: !3998, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 302, column: 25, scope: !3992, inlinedAt: !3996)
!4003 = !DILocation(line: 91, column: 10, scope: !3998, inlinedAt: !4002)
!4004 = !DILocation(line: 0, scope: !3697, inlinedAt: !4005)
!4005 = distinct !DILocation(line: 302, column: 10, scope: !3992, inlinedAt: !3996)
!4006 = !DILocation(line: 39, column: 8, scope: !3704, inlinedAt: !4005)
!4007 = !DILocation(line: 39, column: 7, scope: !3697, inlinedAt: !4005)
!4008 = !DILocation(line: 40, column: 5, scope: !3704, inlinedAt: !4005)
!4009 = !DILocation(line: 287, column: 3, scope: !3987)
!4010 = !DILocation(line: 0, scope: !3992)
!4011 = !DILocation(line: 0, scope: !3998, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 302, column: 25, scope: !3992)
!4013 = !DILocation(line: 91, column: 10, scope: !3998, inlinedAt: !4012)
!4014 = !DILocation(line: 0, scope: !3697, inlinedAt: !4015)
!4015 = distinct !DILocation(line: 302, column: 10, scope: !3992)
!4016 = !DILocation(line: 39, column: 8, scope: !3704, inlinedAt: !4015)
!4017 = !DILocation(line: 39, column: 7, scope: !3697, inlinedAt: !4015)
!4018 = !DILocation(line: 40, column: 5, scope: !3704, inlinedAt: !4015)
!4019 = !DILocation(line: 302, column: 3, scope: !3992)
!4020 = distinct !DISubprogram(name: "xmemdup", scope: !454, file: !454, line: 310, type: !4021, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !4023)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!31, !742, !40}
!4023 = !{!4024, !4025}
!4024 = !DILocalVariable(name: "p", arg: 1, scope: !4020, file: !454, line: 310, type: !742)
!4025 = !DILocalVariable(name: "s", arg: 2, scope: !4020, file: !454, line: 310, type: !40)
!4026 = !DILocation(line: 0, scope: !4020)
!4027 = !DILocation(line: 0, scope: !3716, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 312, column: 18, scope: !4020)
!4029 = !DILocation(line: 49, column: 25, scope: !3716, inlinedAt: !4028)
!4030 = !DILocation(line: 0, scope: !3697, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 49, column: 10, scope: !3716, inlinedAt: !4028)
!4032 = !DILocation(line: 39, column: 8, scope: !3704, inlinedAt: !4031)
!4033 = !DILocation(line: 39, column: 7, scope: !3697, inlinedAt: !4031)
!4034 = !DILocation(line: 40, column: 5, scope: !3704, inlinedAt: !4031)
!4035 = !DILocalVariable(name: "__dest", arg: 1, scope: !4036, file: !2039, line: 26, type: !4039)
!4036 = distinct !DISubprogram(name: "memcpy", scope: !2039, file: !2039, line: 26, type: !4037, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !4040)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!31, !4039, !741, !40}
!4039 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!4040 = !{!4035, !4041, !4042}
!4041 = !DILocalVariable(name: "__src", arg: 2, scope: !4036, file: !2039, line: 26, type: !741)
!4042 = !DILocalVariable(name: "__len", arg: 3, scope: !4036, file: !2039, line: 26, type: !40)
!4043 = !DILocation(line: 0, scope: !4036, inlinedAt: !4044)
!4044 = distinct !DILocation(line: 312, column: 10, scope: !4020)
!4045 = !DILocation(line: 29, column: 10, scope: !4036, inlinedAt: !4044)
!4046 = !DILocation(line: 312, column: 3, scope: !4020)
!4047 = distinct !DISubprogram(name: "ximemdup", scope: !454, file: !454, line: 316, type: !4048, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !4050)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!31, !742, !473}
!4050 = !{!4051, !4052}
!4051 = !DILocalVariable(name: "p", arg: 1, scope: !4047, file: !454, line: 316, type: !742)
!4052 = !DILocalVariable(name: "s", arg: 2, scope: !4047, file: !454, line: 316, type: !473)
!4053 = !DILocation(line: 0, scope: !4047)
!4054 = !DILocation(line: 0, scope: !3729, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 318, column: 18, scope: !4047)
!4056 = !DILocation(line: 0, scope: !3736, inlinedAt: !4057)
!4057 = distinct !DILocation(line: 55, column: 25, scope: !3729, inlinedAt: !4055)
!4058 = !DILocation(line: 57, column: 26, scope: !3736, inlinedAt: !4057)
!4059 = !DILocation(line: 0, scope: !3697, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 55, column: 10, scope: !3729, inlinedAt: !4055)
!4061 = !DILocation(line: 39, column: 8, scope: !3704, inlinedAt: !4060)
!4062 = !DILocation(line: 39, column: 7, scope: !3697, inlinedAt: !4060)
!4063 = !DILocation(line: 40, column: 5, scope: !3704, inlinedAt: !4060)
!4064 = !DILocation(line: 0, scope: !4036, inlinedAt: !4065)
!4065 = distinct !DILocation(line: 318, column: 10, scope: !4047)
!4066 = !DILocation(line: 29, column: 10, scope: !4036, inlinedAt: !4065)
!4067 = !DILocation(line: 318, column: 3, scope: !4047)
!4068 = distinct !DISubprogram(name: "ximemdup0", scope: !454, file: !454, line: 325, type: !4069, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !4071)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!29, !742, !473}
!4071 = !{!4072, !4073, !4074}
!4072 = !DILocalVariable(name: "p", arg: 1, scope: !4068, file: !454, line: 325, type: !742)
!4073 = !DILocalVariable(name: "s", arg: 2, scope: !4068, file: !454, line: 325, type: !473)
!4074 = !DILocalVariable(name: "result", scope: !4068, file: !454, line: 327, type: !29)
!4075 = !DILocation(line: 0, scope: !4068)
!4076 = !DILocation(line: 327, column: 30, scope: !4068)
!4077 = !DILocation(line: 0, scope: !3729, inlinedAt: !4078)
!4078 = distinct !DILocation(line: 327, column: 18, scope: !4068)
!4079 = !DILocation(line: 0, scope: !3736, inlinedAt: !4080)
!4080 = distinct !DILocation(line: 55, column: 25, scope: !3729, inlinedAt: !4078)
!4081 = !DILocation(line: 57, column: 26, scope: !3736, inlinedAt: !4080)
!4082 = !DILocation(line: 0, scope: !3697, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 55, column: 10, scope: !3729, inlinedAt: !4078)
!4084 = !DILocation(line: 39, column: 8, scope: !3704, inlinedAt: !4083)
!4085 = !DILocation(line: 39, column: 7, scope: !3697, inlinedAt: !4083)
!4086 = !DILocation(line: 40, column: 5, scope: !3704, inlinedAt: !4083)
!4087 = !DILocation(line: 328, column: 3, scope: !4068)
!4088 = !DILocation(line: 328, column: 13, scope: !4068)
!4089 = !DILocation(line: 0, scope: !4036, inlinedAt: !4090)
!4090 = distinct !DILocation(line: 329, column: 10, scope: !4068)
!4091 = !DILocation(line: 29, column: 10, scope: !4036, inlinedAt: !4090)
!4092 = !DILocation(line: 329, column: 3, scope: !4068)
!4093 = distinct !DISubprogram(name: "xstrdup", scope: !454, file: !454, line: 335, type: !736, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !4094)
!4094 = !{!4095}
!4095 = !DILocalVariable(name: "string", arg: 1, scope: !4093, file: !454, line: 335, type: !43)
!4096 = !DILocation(line: 0, scope: !4093)
!4097 = !DILocation(line: 337, column: 27, scope: !4093)
!4098 = !DILocation(line: 337, column: 43, scope: !4093)
!4099 = !DILocation(line: 0, scope: !4020, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 337, column: 10, scope: !4093)
!4101 = !DILocation(line: 0, scope: !3716, inlinedAt: !4102)
!4102 = distinct !DILocation(line: 312, column: 18, scope: !4020, inlinedAt: !4100)
!4103 = !DILocation(line: 49, column: 25, scope: !3716, inlinedAt: !4102)
!4104 = !DILocation(line: 0, scope: !3697, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 49, column: 10, scope: !3716, inlinedAt: !4102)
!4106 = !DILocation(line: 39, column: 8, scope: !3704, inlinedAt: !4105)
!4107 = !DILocation(line: 39, column: 7, scope: !3697, inlinedAt: !4105)
!4108 = !DILocation(line: 40, column: 5, scope: !3704, inlinedAt: !4105)
!4109 = !DILocation(line: 0, scope: !4036, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 312, column: 10, scope: !4020, inlinedAt: !4100)
!4111 = !DILocation(line: 29, column: 10, scope: !4036, inlinedAt: !4110)
!4112 = !DILocation(line: 337, column: 3, scope: !4093)
!4113 = distinct !DISubprogram(name: "xalloc_die", scope: !488, file: !488, line: 32, type: !226, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4114)
!4114 = !{!4115}
!4115 = !DILocalVariable(name: "__errstatus", scope: !4116, file: !488, line: 34, type: !156)
!4116 = distinct !DILexicalBlock(scope: !4113, file: !488, line: 34, column: 3)
!4117 = !DILocation(line: 34, column: 3, scope: !4116)
!4118 = !DILocation(line: 0, scope: !4116)
!4119 = !DILocation(line: 40, column: 3, scope: !4113)
!4120 = distinct !DISubprogram(name: "c_strtod", scope: !388, file: !388, line: 102, type: !4121, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !4123)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!57, !43, !747}
!4123 = !{!4124, !4125, !4126, !4127}
!4124 = !DILocalVariable(name: "nptr", arg: 1, scope: !4120, file: !388, line: 102, type: !43)
!4125 = !DILocalVariable(name: "endptr", arg: 2, scope: !4120, file: !388, line: 102, type: !747)
!4126 = !DILocalVariable(name: "r", scope: !4120, file: !388, line: 104, type: !57)
!4127 = !DILocalVariable(name: "locale", scope: !4120, file: !388, line: 108, type: !390)
!4128 = !DILocation(line: 0, scope: !4120)
!4129 = !DILocation(line: 65, column: 8, scope: !4130, inlinedAt: !4134)
!4130 = distinct !DILexicalBlock(scope: !4131, file: !388, line: 65, column: 7)
!4131 = distinct !DISubprogram(name: "c_locale", scope: !388, file: !388, line: 63, type: !4132, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !536)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!390}
!4134 = distinct !DILocation(line: 108, column: 21, scope: !4120)
!4135 = !DILocation(line: 65, column: 7, scope: !4131, inlinedAt: !4134)
!4136 = !DILocation(line: 66, column: 22, scope: !4130, inlinedAt: !4134)
!4137 = !DILocation(line: 66, column: 20, scope: !4130, inlinedAt: !4134)
!4138 = !DILocation(line: 66, column: 5, scope: !4130, inlinedAt: !4134)
!4139 = !DILocation(line: 67, column: 10, scope: !4131, inlinedAt: !4134)
!4140 = !DILocation(line: 109, column: 8, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4120, file: !388, line: 109, column: 7)
!4142 = !DILocation(line: 109, column: 7, scope: !4120)
!4143 = !DILocation(line: 111, column: 11, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4145, file: !388, line: 111, column: 11)
!4145 = distinct !DILexicalBlock(scope: !4141, file: !388, line: 110, column: 5)
!4146 = !DILocation(line: 111, column: 11, scope: !4145)
!4147 = !DILocation(line: 112, column: 17, scope: !4144)
!4148 = !DILocation(line: 112, column: 9, scope: !4144)
!4149 = !DILocation(line: 118, column: 7, scope: !4120)
!4150 = !DILocation(line: 342, column: 3, scope: !4120)
!4151 = !DILocation(line: 343, column: 1, scope: !4120)
!4152 = !DISubprogram(name: "newlocale", scope: !731, file: !731, line: 141, type: !4153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!390, !37, !43, !390}
!4155 = !DISubprogram(name: "strtod_l", scope: !735, file: !735, line: 296, type: !4156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!57, !620, !1638, !390}
!4158 = distinct !DISubprogram(name: "close_stream", scope: !490, file: !490, line: 55, type: !4159, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !4195)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!37, !4161}
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !4163)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !4164)
!4164 = !{!4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4163, file: !95, line: 51, baseType: !37, size: 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4163, file: !95, line: 54, baseType: !29, size: 64, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4163, file: !95, line: 55, baseType: !29, size: 64, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4163, file: !95, line: 56, baseType: !29, size: 64, offset: 192)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4163, file: !95, line: 57, baseType: !29, size: 64, offset: 256)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4163, file: !95, line: 58, baseType: !29, size: 64, offset: 320)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4163, file: !95, line: 59, baseType: !29, size: 64, offset: 384)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4163, file: !95, line: 60, baseType: !29, size: 64, offset: 448)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4163, file: !95, line: 61, baseType: !29, size: 64, offset: 512)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4163, file: !95, line: 64, baseType: !29, size: 64, offset: 576)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4163, file: !95, line: 65, baseType: !29, size: 64, offset: 640)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4163, file: !95, line: 66, baseType: !29, size: 64, offset: 704)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4163, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4163, file: !95, line: 70, baseType: !4179, size: 64, offset: 832)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4163, file: !95, line: 72, baseType: !37, size: 32, offset: 896)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4163, file: !95, line: 73, baseType: !37, size: 32, offset: 928)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4163, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4163, file: !95, line: 77, baseType: !39, size: 16, offset: 1024)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4163, file: !95, line: 78, baseType: !38, size: 8, offset: 1040)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4163, file: !95, line: 79, baseType: !122, size: 8, offset: 1048)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4163, file: !95, line: 81, baseType: !126, size: 64, offset: 1088)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4163, file: !95, line: 89, baseType: !129, size: 64, offset: 1152)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4163, file: !95, line: 91, baseType: !131, size: 64, offset: 1216)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4163, file: !95, line: 92, baseType: !134, size: 64, offset: 1280)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4163, file: !95, line: 93, baseType: !4179, size: 64, offset: 1344)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4163, file: !95, line: 94, baseType: !31, size: 64, offset: 1408)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4163, file: !95, line: 95, baseType: !40, size: 64, offset: 1472)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4163, file: !95, line: 96, baseType: !37, size: 32, offset: 1536)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4163, file: !95, line: 98, baseType: !141, size: 160, offset: 1568)
!4195 = !{!4196, !4197, !4199, !4200}
!4196 = !DILocalVariable(name: "stream", arg: 1, scope: !4158, file: !490, line: 55, type: !4161)
!4197 = !DILocalVariable(name: "some_pending", scope: !4158, file: !490, line: 57, type: !4198)
!4198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!4199 = !DILocalVariable(name: "prev_fail", scope: !4158, file: !490, line: 58, type: !4198)
!4200 = !DILocalVariable(name: "fclose_fail", scope: !4158, file: !490, line: 59, type: !4198)
!4201 = !DILocation(line: 0, scope: !4158)
!4202 = !DILocation(line: 57, column: 30, scope: !4158)
!4203 = !DILocalVariable(name: "__stream", arg: 1, scope: !4204, file: !1889, line: 135, type: !4161)
!4204 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1889, file: !1889, line: 135, type: !4159, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !4205)
!4205 = !{!4203}
!4206 = !DILocation(line: 0, scope: !4204, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 58, column: 27, scope: !4158)
!4208 = !DILocation(line: 137, column: 10, scope: !4204, inlinedAt: !4207)
!4209 = !{!1898, !625, i64 0}
!4210 = !DILocation(line: 58, column: 43, scope: !4158)
!4211 = !DILocation(line: 59, column: 29, scope: !4158)
!4212 = !DILocation(line: 59, column: 45, scope: !4158)
!4213 = !DILocation(line: 69, column: 17, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4158, file: !490, line: 69, column: 7)
!4215 = !DILocation(line: 57, column: 50, scope: !4158)
!4216 = !DILocation(line: 69, column: 33, scope: !4214)
!4217 = !DILocation(line: 69, column: 53, scope: !4214)
!4218 = !DILocation(line: 69, column: 59, scope: !4214)
!4219 = !DILocation(line: 69, column: 7, scope: !4158)
!4220 = !DILocation(line: 71, column: 11, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4214, file: !490, line: 70, column: 5)
!4222 = !DILocation(line: 72, column: 9, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4221, file: !490, line: 71, column: 11)
!4224 = !DILocation(line: 72, column: 15, scope: !4223)
!4225 = !DILocation(line: 77, column: 1, scope: !4158)
!4226 = distinct !DISubprogram(name: "rpl_fclose", scope: !492, file: !492, line: 58, type: !4227, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !4263)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!37, !4229}
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !4231)
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !4232)
!4232 = !{!4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4231, file: !95, line: 51, baseType: !37, size: 32)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4231, file: !95, line: 54, baseType: !29, size: 64, offset: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4231, file: !95, line: 55, baseType: !29, size: 64, offset: 128)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4231, file: !95, line: 56, baseType: !29, size: 64, offset: 192)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4231, file: !95, line: 57, baseType: !29, size: 64, offset: 256)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4231, file: !95, line: 58, baseType: !29, size: 64, offset: 320)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4231, file: !95, line: 59, baseType: !29, size: 64, offset: 384)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4231, file: !95, line: 60, baseType: !29, size: 64, offset: 448)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4231, file: !95, line: 61, baseType: !29, size: 64, offset: 512)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4231, file: !95, line: 64, baseType: !29, size: 64, offset: 576)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4231, file: !95, line: 65, baseType: !29, size: 64, offset: 640)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4231, file: !95, line: 66, baseType: !29, size: 64, offset: 704)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4231, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4231, file: !95, line: 70, baseType: !4247, size: 64, offset: 832)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4231, file: !95, line: 72, baseType: !37, size: 32, offset: 896)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4231, file: !95, line: 73, baseType: !37, size: 32, offset: 928)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4231, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4231, file: !95, line: 77, baseType: !39, size: 16, offset: 1024)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4231, file: !95, line: 78, baseType: !38, size: 8, offset: 1040)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4231, file: !95, line: 79, baseType: !122, size: 8, offset: 1048)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4231, file: !95, line: 81, baseType: !126, size: 64, offset: 1088)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4231, file: !95, line: 89, baseType: !129, size: 64, offset: 1152)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4231, file: !95, line: 91, baseType: !131, size: 64, offset: 1216)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4231, file: !95, line: 92, baseType: !134, size: 64, offset: 1280)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4231, file: !95, line: 93, baseType: !4247, size: 64, offset: 1344)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4231, file: !95, line: 94, baseType: !31, size: 64, offset: 1408)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4231, file: !95, line: 95, baseType: !40, size: 64, offset: 1472)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4231, file: !95, line: 96, baseType: !37, size: 32, offset: 1536)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4231, file: !95, line: 98, baseType: !141, size: 160, offset: 1568)
!4263 = !{!4264, !4265, !4266, !4267}
!4264 = !DILocalVariable(name: "fp", arg: 1, scope: !4226, file: !492, line: 58, type: !4229)
!4265 = !DILocalVariable(name: "saved_errno", scope: !4226, file: !492, line: 60, type: !37)
!4266 = !DILocalVariable(name: "fd", scope: !4226, file: !492, line: 63, type: !37)
!4267 = !DILocalVariable(name: "result", scope: !4226, file: !492, line: 74, type: !37)
!4268 = !DILocation(line: 0, scope: !4226)
!4269 = !DILocation(line: 63, column: 12, scope: !4226)
!4270 = !DILocation(line: 64, column: 10, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4226, file: !492, line: 64, column: 7)
!4272 = !DILocation(line: 64, column: 7, scope: !4226)
!4273 = !DILocation(line: 65, column: 12, scope: !4271)
!4274 = !DILocation(line: 65, column: 5, scope: !4271)
!4275 = !DILocation(line: 70, column: 9, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4226, file: !492, line: 70, column: 7)
!4277 = !DILocation(line: 70, column: 23, scope: !4276)
!4278 = !DILocation(line: 70, column: 33, scope: !4276)
!4279 = !DILocation(line: 70, column: 26, scope: !4276)
!4280 = !DILocation(line: 70, column: 59, scope: !4276)
!4281 = !DILocation(line: 71, column: 7, scope: !4276)
!4282 = !DILocation(line: 71, column: 10, scope: !4276)
!4283 = !DILocation(line: 70, column: 7, scope: !4226)
!4284 = !DILocation(line: 100, column: 12, scope: !4226)
!4285 = !DILocation(line: 105, column: 7, scope: !4226)
!4286 = !DILocation(line: 72, column: 19, scope: !4276)
!4287 = !DILocation(line: 105, column: 19, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4226, file: !492, line: 105, column: 7)
!4289 = !DILocation(line: 107, column: 13, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4288, file: !492, line: 106, column: 5)
!4291 = !DILocation(line: 109, column: 5, scope: !4290)
!4292 = !DILocation(line: 112, column: 1, scope: !4226)
!4293 = !DISubprogram(name: "fileno", scope: !199, file: !199, line: 809, type: !4227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!4294 = !DISubprogram(name: "fclose", scope: !199, file: !199, line: 178, type: !4227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!4295 = !DISubprogram(name: "lseek", scope: !1252, file: !1252, line: 339, type: !4296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!117, !37, !117, !37}
!4298 = distinct !DISubprogram(name: "rpl_fflush", scope: !494, file: !494, line: 130, type: !4299, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !493, retainedNodes: !4335)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!37, !4301}
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !4303)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !4304)
!4304 = !{!4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4303, file: !95, line: 51, baseType: !37, size: 32)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4303, file: !95, line: 54, baseType: !29, size: 64, offset: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4303, file: !95, line: 55, baseType: !29, size: 64, offset: 128)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4303, file: !95, line: 56, baseType: !29, size: 64, offset: 192)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4303, file: !95, line: 57, baseType: !29, size: 64, offset: 256)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4303, file: !95, line: 58, baseType: !29, size: 64, offset: 320)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4303, file: !95, line: 59, baseType: !29, size: 64, offset: 384)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4303, file: !95, line: 60, baseType: !29, size: 64, offset: 448)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4303, file: !95, line: 61, baseType: !29, size: 64, offset: 512)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4303, file: !95, line: 64, baseType: !29, size: 64, offset: 576)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4303, file: !95, line: 65, baseType: !29, size: 64, offset: 640)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4303, file: !95, line: 66, baseType: !29, size: 64, offset: 704)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4303, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4303, file: !95, line: 70, baseType: !4319, size: 64, offset: 832)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4303, file: !95, line: 72, baseType: !37, size: 32, offset: 896)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4303, file: !95, line: 73, baseType: !37, size: 32, offset: 928)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4303, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4303, file: !95, line: 77, baseType: !39, size: 16, offset: 1024)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4303, file: !95, line: 78, baseType: !38, size: 8, offset: 1040)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4303, file: !95, line: 79, baseType: !122, size: 8, offset: 1048)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4303, file: !95, line: 81, baseType: !126, size: 64, offset: 1088)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4303, file: !95, line: 89, baseType: !129, size: 64, offset: 1152)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4303, file: !95, line: 91, baseType: !131, size: 64, offset: 1216)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4303, file: !95, line: 92, baseType: !134, size: 64, offset: 1280)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4303, file: !95, line: 93, baseType: !4319, size: 64, offset: 1344)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4303, file: !95, line: 94, baseType: !31, size: 64, offset: 1408)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4303, file: !95, line: 95, baseType: !40, size: 64, offset: 1472)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4303, file: !95, line: 96, baseType: !37, size: 32, offset: 1536)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4303, file: !95, line: 98, baseType: !141, size: 160, offset: 1568)
!4335 = !{!4336}
!4336 = !DILocalVariable(name: "stream", arg: 1, scope: !4298, file: !494, line: 130, type: !4301)
!4337 = !DILocation(line: 0, scope: !4298)
!4338 = !DILocation(line: 151, column: 14, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4298, file: !494, line: 151, column: 7)
!4340 = !DILocation(line: 151, column: 22, scope: !4339)
!4341 = !DILocation(line: 151, column: 27, scope: !4339)
!4342 = !DILocation(line: 151, column: 7, scope: !4298)
!4343 = !DILocation(line: 152, column: 12, scope: !4339)
!4344 = !DILocation(line: 152, column: 5, scope: !4339)
!4345 = !DILocalVariable(name: "fp", arg: 1, scope: !4346, file: !494, line: 42, type: !4301)
!4346 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !494, file: !494, line: 42, type: !4347, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !493, retainedNodes: !4349)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{null, !4301}
!4349 = !{!4345}
!4350 = !DILocation(line: 0, scope: !4346, inlinedAt: !4351)
!4351 = distinct !DILocation(line: 157, column: 3, scope: !4298)
!4352 = !DILocation(line: 44, column: 12, scope: !4353, inlinedAt: !4351)
!4353 = distinct !DILexicalBlock(scope: !4346, file: !494, line: 44, column: 7)
!4354 = !DILocation(line: 44, column: 19, scope: !4353, inlinedAt: !4351)
!4355 = !DILocation(line: 44, column: 7, scope: !4346, inlinedAt: !4351)
!4356 = !DILocation(line: 46, column: 5, scope: !4353, inlinedAt: !4351)
!4357 = !DILocation(line: 159, column: 10, scope: !4298)
!4358 = !DILocation(line: 159, column: 3, scope: !4298)
!4359 = !DILocation(line: 236, column: 1, scope: !4298)
!4360 = !DISubprogram(name: "fflush", scope: !199, file: !199, line: 230, type: !4299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!4361 = distinct !DISubprogram(name: "rpl_fseeko", scope: !496, file: !496, line: 28, type: !4362, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !4399)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!37, !4364, !4398, !37}
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !4366)
!4366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !4367)
!4367 = !{!4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4366, file: !95, line: 51, baseType: !37, size: 32)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4366, file: !95, line: 54, baseType: !29, size: 64, offset: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4366, file: !95, line: 55, baseType: !29, size: 64, offset: 128)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4366, file: !95, line: 56, baseType: !29, size: 64, offset: 192)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4366, file: !95, line: 57, baseType: !29, size: 64, offset: 256)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4366, file: !95, line: 58, baseType: !29, size: 64, offset: 320)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4366, file: !95, line: 59, baseType: !29, size: 64, offset: 384)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4366, file: !95, line: 60, baseType: !29, size: 64, offset: 448)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4366, file: !95, line: 61, baseType: !29, size: 64, offset: 512)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4366, file: !95, line: 64, baseType: !29, size: 64, offset: 576)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4366, file: !95, line: 65, baseType: !29, size: 64, offset: 640)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4366, file: !95, line: 66, baseType: !29, size: 64, offset: 704)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4366, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4366, file: !95, line: 70, baseType: !4382, size: 64, offset: 832)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4366, file: !95, line: 72, baseType: !37, size: 32, offset: 896)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4366, file: !95, line: 73, baseType: !37, size: 32, offset: 928)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4366, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4366, file: !95, line: 77, baseType: !39, size: 16, offset: 1024)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4366, file: !95, line: 78, baseType: !38, size: 8, offset: 1040)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4366, file: !95, line: 79, baseType: !122, size: 8, offset: 1048)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4366, file: !95, line: 81, baseType: !126, size: 64, offset: 1088)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4366, file: !95, line: 89, baseType: !129, size: 64, offset: 1152)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4366, file: !95, line: 91, baseType: !131, size: 64, offset: 1216)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4366, file: !95, line: 92, baseType: !134, size: 64, offset: 1280)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4366, file: !95, line: 93, baseType: !4382, size: 64, offset: 1344)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4366, file: !95, line: 94, baseType: !31, size: 64, offset: 1408)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4366, file: !95, line: 95, baseType: !40, size: 64, offset: 1472)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4366, file: !95, line: 96, baseType: !37, size: 32, offset: 1536)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4366, file: !95, line: 98, baseType: !141, size: 160, offset: 1568)
!4398 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !199, line: 63, baseType: !117)
!4399 = !{!4400, !4401, !4402, !4403}
!4400 = !DILocalVariable(name: "fp", arg: 1, scope: !4361, file: !496, line: 28, type: !4364)
!4401 = !DILocalVariable(name: "offset", arg: 2, scope: !4361, file: !496, line: 28, type: !4398)
!4402 = !DILocalVariable(name: "whence", arg: 3, scope: !4361, file: !496, line: 28, type: !37)
!4403 = !DILocalVariable(name: "pos", scope: !4404, file: !496, line: 123, type: !4398)
!4404 = distinct !DILexicalBlock(scope: !4405, file: !496, line: 119, column: 5)
!4405 = distinct !DILexicalBlock(scope: !4361, file: !496, line: 55, column: 7)
!4406 = !DILocation(line: 0, scope: !4361)
!4407 = !DILocation(line: 55, column: 12, scope: !4405)
!4408 = !{!1898, !528, i64 16}
!4409 = !DILocation(line: 55, column: 33, scope: !4405)
!4410 = !{!1898, !528, i64 8}
!4411 = !DILocation(line: 55, column: 25, scope: !4405)
!4412 = !DILocation(line: 56, column: 7, scope: !4405)
!4413 = !DILocation(line: 56, column: 15, scope: !4405)
!4414 = !DILocation(line: 56, column: 37, scope: !4405)
!4415 = !{!1898, !528, i64 32}
!4416 = !DILocation(line: 56, column: 29, scope: !4405)
!4417 = !DILocation(line: 57, column: 7, scope: !4405)
!4418 = !DILocation(line: 57, column: 15, scope: !4405)
!4419 = !{!1898, !528, i64 72}
!4420 = !DILocation(line: 57, column: 29, scope: !4405)
!4421 = !DILocation(line: 55, column: 7, scope: !4361)
!4422 = !DILocation(line: 123, column: 26, scope: !4404)
!4423 = !DILocation(line: 123, column: 19, scope: !4404)
!4424 = !DILocation(line: 0, scope: !4404)
!4425 = !DILocation(line: 124, column: 15, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4404, file: !496, line: 124, column: 11)
!4427 = !DILocation(line: 124, column: 11, scope: !4404)
!4428 = !DILocation(line: 135, column: 12, scope: !4404)
!4429 = !DILocation(line: 135, column: 19, scope: !4404)
!4430 = !DILocation(line: 136, column: 12, scope: !4404)
!4431 = !DILocation(line: 136, column: 20, scope: !4404)
!4432 = !{!1898, !1441, i64 144}
!4433 = !DILocation(line: 167, column: 7, scope: !4404)
!4434 = !DILocation(line: 169, column: 10, scope: !4361)
!4435 = !DILocation(line: 169, column: 3, scope: !4361)
!4436 = !DILocation(line: 170, column: 1, scope: !4361)
!4437 = !DISubprogram(name: "fseeko", scope: !199, file: !199, line: 736, type: !4438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!37, !4364, !117, !37}
!4440 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !416, file: !416, line: 100, type: !4441, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !4444)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!40, !2057, !43, !40, !4443}
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!4444 = !{!4445, !4446, !4447, !4448, !4449}
!4445 = !DILocalVariable(name: "pwc", arg: 1, scope: !4440, file: !416, line: 100, type: !2057)
!4446 = !DILocalVariable(name: "s", arg: 2, scope: !4440, file: !416, line: 100, type: !43)
!4447 = !DILocalVariable(name: "n", arg: 3, scope: !4440, file: !416, line: 100, type: !40)
!4448 = !DILocalVariable(name: "ps", arg: 4, scope: !4440, file: !416, line: 100, type: !4443)
!4449 = !DILocalVariable(name: "ret", scope: !4440, file: !416, line: 130, type: !40)
!4450 = !DILocation(line: 0, scope: !4440)
!4451 = !DILocation(line: 105, column: 9, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4440, file: !416, line: 105, column: 7)
!4453 = !DILocation(line: 105, column: 7, scope: !4440)
!4454 = !DILocation(line: 117, column: 10, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4440, file: !416, line: 117, column: 7)
!4456 = !DILocation(line: 117, column: 7, scope: !4440)
!4457 = !DILocation(line: 130, column: 16, scope: !4440)
!4458 = !DILocation(line: 135, column: 11, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4440, file: !416, line: 135, column: 7)
!4460 = !DILocation(line: 135, column: 25, scope: !4459)
!4461 = !DILocation(line: 135, column: 30, scope: !4459)
!4462 = !DILocation(line: 135, column: 7, scope: !4440)
!4463 = !DILocalVariable(name: "ps", arg: 1, scope: !4464, file: !2030, line: 1135, type: !4443)
!4464 = distinct !DISubprogram(name: "mbszero", scope: !2030, file: !2030, line: 1135, type: !4465, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !4467)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{null, !4443}
!4467 = !{!4463}
!4468 = !DILocation(line: 0, scope: !4464, inlinedAt: !4469)
!4469 = distinct !DILocation(line: 137, column: 5, scope: !4459)
!4470 = !DILocalVariable(name: "__dest", arg: 1, scope: !4471, file: !2039, line: 57, type: !31)
!4471 = distinct !DISubprogram(name: "memset", scope: !2039, file: !2039, line: 57, type: !2040, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !4472)
!4472 = !{!4470, !4473, !4474}
!4473 = !DILocalVariable(name: "__ch", arg: 2, scope: !4471, file: !2039, line: 57, type: !37)
!4474 = !DILocalVariable(name: "__len", arg: 3, scope: !4471, file: !2039, line: 57, type: !40)
!4475 = !DILocation(line: 0, scope: !4471, inlinedAt: !4476)
!4476 = distinct !DILocation(line: 1137, column: 3, scope: !4464, inlinedAt: !4469)
!4477 = !DILocation(line: 59, column: 10, scope: !4471, inlinedAt: !4476)
!4478 = !DILocation(line: 137, column: 5, scope: !4459)
!4479 = !DILocation(line: 138, column: 11, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4440, file: !416, line: 138, column: 7)
!4481 = !DILocation(line: 138, column: 7, scope: !4440)
!4482 = !DILocation(line: 139, column: 5, scope: !4480)
!4483 = !DILocation(line: 143, column: 26, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4440, file: !416, line: 143, column: 7)
!4485 = !DILocation(line: 143, column: 41, scope: !4484)
!4486 = !DILocation(line: 143, column: 7, scope: !4440)
!4487 = !DILocation(line: 145, column: 15, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4489, file: !416, line: 145, column: 11)
!4489 = distinct !DILexicalBlock(scope: !4484, file: !416, line: 144, column: 5)
!4490 = !DILocation(line: 145, column: 11, scope: !4489)
!4491 = !DILocation(line: 146, column: 32, scope: !4488)
!4492 = !DILocation(line: 146, column: 16, scope: !4488)
!4493 = !DILocation(line: 146, column: 14, scope: !4488)
!4494 = !DILocation(line: 146, column: 9, scope: !4488)
!4495 = !DILocation(line: 286, column: 1, scope: !4440)
!4496 = !DISubprogram(name: "mbsinit", scope: !4497, file: !4497, line: 293, type: !4498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!4497 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!37, !4500}
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!4502 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !498, file: !498, line: 27, type: !3681, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !4503)
!4503 = !{!4504, !4505, !4506, !4507}
!4504 = !DILocalVariable(name: "ptr", arg: 1, scope: !4502, file: !498, line: 27, type: !31)
!4505 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4502, file: !498, line: 27, type: !40)
!4506 = !DILocalVariable(name: "size", arg: 3, scope: !4502, file: !498, line: 27, type: !40)
!4507 = !DILocalVariable(name: "nbytes", scope: !4502, file: !498, line: 29, type: !40)
!4508 = !DILocation(line: 0, scope: !4502)
!4509 = !DILocation(line: 30, column: 7, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4502, file: !498, line: 30, column: 7)
!4511 = !DILocalVariable(name: "ptr", arg: 1, scope: !4512, file: !3772, line: 2057, type: !31)
!4512 = distinct !DISubprogram(name: "rpl_realloc", scope: !3772, file: !3772, line: 2057, type: !3764, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !4513)
!4513 = !{!4511, !4514}
!4514 = !DILocalVariable(name: "size", arg: 2, scope: !4512, file: !3772, line: 2057, type: !40)
!4515 = !DILocation(line: 0, scope: !4512, inlinedAt: !4516)
!4516 = distinct !DILocation(line: 37, column: 10, scope: !4502)
!4517 = !DILocation(line: 2059, column: 24, scope: !4512, inlinedAt: !4516)
!4518 = !DILocation(line: 2059, column: 10, scope: !4512, inlinedAt: !4516)
!4519 = !DILocation(line: 37, column: 3, scope: !4502)
!4520 = !DILocation(line: 32, column: 7, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4510, file: !498, line: 31, column: 5)
!4522 = !DILocation(line: 32, column: 13, scope: !4521)
!4523 = !DILocation(line: 33, column: 7, scope: !4521)
!4524 = !DILocation(line: 38, column: 1, scope: !4502)
!4525 = distinct !DISubprogram(name: "hard_locale", scope: !501, file: !501, line: 28, type: !1568, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !4526)
!4526 = !{!4527, !4528}
!4527 = !DILocalVariable(name: "category", arg: 1, scope: !4525, file: !501, line: 28, type: !37)
!4528 = !DILocalVariable(name: "locale", scope: !4525, file: !501, line: 30, type: !4529)
!4529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2056, elements: !4530)
!4530 = !{!4531}
!4531 = !DISubrange(count: 257)
!4532 = !DILocation(line: 0, scope: !4525)
!4533 = !DILocation(line: 30, column: 3, scope: !4525)
!4534 = !DILocation(line: 30, column: 8, scope: !4525)
!4535 = !DILocation(line: 32, column: 7, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4525, file: !501, line: 32, column: 7)
!4537 = !DILocation(line: 32, column: 7, scope: !4525)
!4538 = !DILocalVariable(name: "__s1", arg: 1, scope: !4539, file: !575, line: 1359, type: !43)
!4539 = distinct !DISubprogram(name: "streq", scope: !575, file: !575, line: 1359, type: !576, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !4540)
!4540 = !{!4538, !4541}
!4541 = !DILocalVariable(name: "__s2", arg: 2, scope: !4539, file: !575, line: 1359, type: !43)
!4542 = !DILocation(line: 0, scope: !4539, inlinedAt: !4543)
!4543 = distinct !DILocation(line: 35, column: 9, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4525, file: !501, line: 35, column: 7)
!4545 = !DILocation(line: 1361, column: 11, scope: !4539, inlinedAt: !4543)
!4546 = !DILocation(line: 1361, column: 10, scope: !4539, inlinedAt: !4543)
!4547 = !DILocation(line: 35, column: 29, scope: !4544)
!4548 = !DILocation(line: 0, scope: !4539, inlinedAt: !4549)
!4549 = distinct !DILocation(line: 35, column: 32, scope: !4544)
!4550 = !DILocation(line: 1361, column: 11, scope: !4539, inlinedAt: !4549)
!4551 = !DILocation(line: 1361, column: 10, scope: !4539, inlinedAt: !4549)
!4552 = !DILocation(line: 35, column: 7, scope: !4525)
!4553 = !DILocation(line: 46, column: 3, scope: !4525)
!4554 = !DILocation(line: 47, column: 1, scope: !4525)
!4555 = distinct !DISubprogram(name: "setlocale_null_r", scope: !503, file: !503, line: 154, type: !4556, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !4558)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!37, !37, !29, !40}
!4558 = !{!4559, !4560, !4561}
!4559 = !DILocalVariable(name: "category", arg: 1, scope: !4555, file: !503, line: 154, type: !37)
!4560 = !DILocalVariable(name: "buf", arg: 2, scope: !4555, file: !503, line: 154, type: !29)
!4561 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4555, file: !503, line: 154, type: !40)
!4562 = !DILocation(line: 0, scope: !4555)
!4563 = !DILocation(line: 159, column: 10, scope: !4555)
!4564 = !DILocation(line: 159, column: 3, scope: !4555)
!4565 = distinct !DISubprogram(name: "setlocale_null", scope: !503, file: !503, line: 186, type: !4566, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !4568)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!43, !37}
!4568 = !{!4569}
!4569 = !DILocalVariable(name: "category", arg: 1, scope: !4565, file: !503, line: 186, type: !37)
!4570 = !DILocation(line: 0, scope: !4565)
!4571 = !DILocation(line: 189, column: 10, scope: !4565)
!4572 = !DILocation(line: 189, column: 3, scope: !4565)
!4573 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !505, file: !505, line: 35, type: !4566, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !504, retainedNodes: !4574)
!4574 = !{!4575, !4576}
!4575 = !DILocalVariable(name: "category", arg: 1, scope: !4573, file: !505, line: 35, type: !37)
!4576 = !DILocalVariable(name: "result", scope: !4573, file: !505, line: 37, type: !43)
!4577 = !DILocation(line: 0, scope: !4573)
!4578 = !DILocation(line: 37, column: 24, scope: !4573)
!4579 = !DILocation(line: 62, column: 3, scope: !4573)
!4580 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !505, file: !505, line: 66, type: !4556, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !504, retainedNodes: !4581)
!4581 = !{!4582, !4583, !4584, !4585, !4586}
!4582 = !DILocalVariable(name: "category", arg: 1, scope: !4580, file: !505, line: 66, type: !37)
!4583 = !DILocalVariable(name: "buf", arg: 2, scope: !4580, file: !505, line: 66, type: !29)
!4584 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4580, file: !505, line: 66, type: !40)
!4585 = !DILocalVariable(name: "result", scope: !4580, file: !505, line: 111, type: !43)
!4586 = !DILocalVariable(name: "length", scope: !4587, file: !505, line: 125, type: !40)
!4587 = distinct !DILexicalBlock(scope: !4588, file: !505, line: 124, column: 5)
!4588 = distinct !DILexicalBlock(scope: !4580, file: !505, line: 113, column: 7)
!4589 = !DILocation(line: 0, scope: !4580)
!4590 = !DILocation(line: 0, scope: !4573, inlinedAt: !4591)
!4591 = distinct !DILocation(line: 111, column: 24, scope: !4580)
!4592 = !DILocation(line: 37, column: 24, scope: !4573, inlinedAt: !4591)
!4593 = !DILocation(line: 113, column: 14, scope: !4588)
!4594 = !DILocation(line: 113, column: 7, scope: !4580)
!4595 = !DILocation(line: 116, column: 19, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4597, file: !505, line: 116, column: 11)
!4597 = distinct !DILexicalBlock(scope: !4588, file: !505, line: 114, column: 5)
!4598 = !DILocation(line: 116, column: 11, scope: !4597)
!4599 = !DILocation(line: 120, column: 16, scope: !4596)
!4600 = !DILocation(line: 120, column: 9, scope: !4596)
!4601 = !DILocation(line: 125, column: 23, scope: !4587)
!4602 = !DILocation(line: 0, scope: !4587)
!4603 = !DILocation(line: 126, column: 18, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4587, file: !505, line: 126, column: 11)
!4605 = !DILocation(line: 126, column: 11, scope: !4587)
!4606 = !DILocation(line: 128, column: 39, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4604, file: !505, line: 127, column: 9)
!4608 = !DILocalVariable(name: "__dest", arg: 1, scope: !4609, file: !2039, line: 26, type: !4039)
!4609 = distinct !DISubprogram(name: "memcpy", scope: !2039, file: !2039, line: 26, type: !4037, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !504, retainedNodes: !4610)
!4610 = !{!4608, !4611, !4612}
!4611 = !DILocalVariable(name: "__src", arg: 2, scope: !4609, file: !2039, line: 26, type: !741)
!4612 = !DILocalVariable(name: "__len", arg: 3, scope: !4609, file: !2039, line: 26, type: !40)
!4613 = !DILocation(line: 0, scope: !4609, inlinedAt: !4614)
!4614 = distinct !DILocation(line: 128, column: 11, scope: !4607)
!4615 = !DILocation(line: 29, column: 10, scope: !4609, inlinedAt: !4614)
!4616 = !DILocation(line: 129, column: 11, scope: !4607)
!4617 = !DILocation(line: 133, column: 23, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4619, file: !505, line: 133, column: 15)
!4619 = distinct !DILexicalBlock(scope: !4604, file: !505, line: 132, column: 9)
!4620 = !DILocation(line: 133, column: 15, scope: !4619)
!4621 = !DILocation(line: 138, column: 44, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4618, file: !505, line: 134, column: 13)
!4623 = !DILocation(line: 0, scope: !4609, inlinedAt: !4624)
!4624 = distinct !DILocation(line: 138, column: 15, scope: !4622)
!4625 = !DILocation(line: 29, column: 10, scope: !4609, inlinedAt: !4624)
!4626 = !DILocation(line: 139, column: 15, scope: !4622)
!4627 = !DILocation(line: 139, column: 32, scope: !4622)
!4628 = !DILocation(line: 140, column: 13, scope: !4622)
!4629 = !DILocation(line: 0, scope: !4588)
!4630 = !DILocation(line: 145, column: 1, scope: !4580)
