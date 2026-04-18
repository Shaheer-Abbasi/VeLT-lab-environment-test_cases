; ModuleID = 'src/env.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct.infomap = type { i8*, i8* }
%struct.__sigset_t = type { [16 x i64] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.numname = type { i32, [8 x i8] }
%struct.__mbstate_t = type { i32, %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.splitbuf = type { i8**, i32, i64, i32, i8 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"Usage: %s [OPTION]... [-] [NAME=VALUE]... [COMMAND [ARG]...]\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Set each NAME to VALUE in the environment and run COMMAND.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"env\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"  -a, --argv0=ARG\0A         pass ARG as the zeroth argument of COMMAND\0A\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"  -i, --ignore-environment\0A         start with an empty environment\0A\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"  -0, --null\0A         end each output line with NUL, not newline\0A\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"  -u, --unset=NAME\0A         remove variable from the environment\0A\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"  -C, --chdir=DIR\0A         change working directory to DIR\0A\00", align 1
@.str.9 = private unnamed_addr constant [136 x i8] c"  -S, --split-string=S\0A         process and split S into separate arguments;\0A         used to pass multiple arguments on shebang lines\0A\00", align 1
@.str.10 = private unnamed_addr constant [80 x i8] c"      --block-signal[=SIG]\0A         block delivery of SIG signal(s) to COMMAND\0A\00", align 1
@.str.11 = private unnamed_addr constant [86 x i8] c"      --default-signal[=SIG]\0A         reset handling of SIG signal(s) to the default\0A\00", align 1
@.str.12 = private unnamed_addr constant [82 x i8] c"      --ignore-signal[=SIG]\0A         set handling of SIG signal(s) to do nothing\0A\00", align 1
@.str.13 = private unnamed_addr constant [90 x i8] c"      --list-signal-handling\0A         list non default signal handling to standard error\0A\00", align 1
@.str.14 = private unnamed_addr constant [75 x i8] c"  -v, --debug\0A         print verbose information for each processing step\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.16 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.17 = private unnamed_addr constant [72 x i8] c"\0AA mere - implies -i.  If no COMMAND, print the resulting environment.\0A\00", align 1
@.str.18 = private unnamed_addr constant [192 x i8] c"\0ASIG may be a signal name like 'PIPE', or a signal number like '13'.\0AWithout SIG, all known signals are included.  Multiple signals can be\0Acomma-separated.  An empty SIG argument is a no-op.\0A\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@shortopts = internal constant [19 x i8] c"+a:C:iS:u:v0 \09\0A\0B\0C\0D\00", align 1, !dbg !0
@longopts = internal constant [14 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i32 1, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.81, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0), i32 0, i32* null, i32 48 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i32 1, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i32 1, i32* null, i32 67 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.85, i32 0, i32 0), i32 2, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.86, i32 0, i32 0), i32 2, i32* null, i32 257 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.87, i32 0, i32 0), i32 2, i32* null, i32 258 }, %struct.option { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.88, i32 0, i32 0), i32 0, i32* null, i32 259 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i32 0, i32 0), i32 1, i32* null, i32 83 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !192
@optarg = external local_unnamed_addr global i8*, align 8
@dev_debug = internal unnamed_addr global i1 false, align 1, !dbg !237
@report_signal_handling = internal unnamed_addr global i1 false, align 1, !dbg !238
@optind = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [23 x i8] c"invalid option -- '%c'\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"use -[v]S to pass options in shebang lines\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"Assaf Gordon\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"cleaning environ\0A\00", align 1
@main.dummy_environ = internal global [1 x i8*] zeroinitializer, align 8, !dbg !70
@environ = external local_unnamed_addr global i8**, align 8
@.str.30 = private unnamed_addr constant [14 x i8] c"setenv:   %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"cannot set %s\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"cannot specify --null (-0) with command\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"must specify command with --chdir (-C)\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"must specify command with --argv0 (-a)\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@sig_mask_changed = internal unnamed_addr global i1 false, align 1, !dbg !239
@.str.36 = private unnamed_addr constant [14 x i8] c"chdir:    %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"cannot change directory to %s\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"argv0:     %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"executing: %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"   arg[%d]= %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c" \09\0A\0B\0C\0D\00", align 1
@.str.43 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !107
@.str.44 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.64 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.66 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.71 = private unnamed_addr constant [180 x i8] c"\0AExit status:\0A  125  if the %s command itself fails\0A  126  if COMMAND is found but cannot be invoked\0A  127  if COMMAND cannot be found\0A  -    the exit status of COMMAND otherwise\0A\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.73, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.75 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.76 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.77 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.78 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@signals = internal unnamed_addr global i32* null, align 8, !dbg !189
@.str.80 = private unnamed_addr constant [6 x i8] c"argv0\00", align 1
@.str.81 = private unnamed_addr constant [19 x i8] c"ignore-environment\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"default-signal\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"ignore-signal\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"block-signal\00", align 1
@.str.88 = private unnamed_addr constant [21 x i8] c"list-signal-handling\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"split-string\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@usvars_used = internal unnamed_addr global i64 0, align 8, !dbg !206
@usvars_alloc = internal global i64 0, align 8, !dbg !211
@usvars = internal unnamed_addr global i8** null, align 8, !dbg !213
@.str.93 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.94 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1
@block_signals = internal global %struct.__sigset_t zeroinitializer, align 8, !dbg !216
@unblock_signals = internal global %struct.__sigset_t zeroinitializer, align 8, !dbg !228
@.str.95 = private unnamed_addr constant [26 x i8] c"failed to block signal %d\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"split -S:  %s\0A\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c" into:    %s\0A\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"     &    %s\0A\00", align 1
@.str.99 = private unnamed_addr constant [48 x i8] c"'\\c' must not appear in double-quoted -S string\00", align 1
@.str.100 = private unnamed_addr constant [41 x i8] c"invalid backslash at end of string in -S\00", align 1
@.str.101 = private unnamed_addr constant [29 x i8] c"invalid sequence '\\%c' in -S\00", align 1
@.str.102 = private unnamed_addr constant [53 x i8] c"only ${VARNAME} expansion is supported, error at: %s\00", align 1
@.str.103 = private unnamed_addr constant [25 x i8] c"expanding ${%s} into %s\0A\00", align 1
@.str.104 = private unnamed_addr constant [34 x i8] c"replacing ${%s} with null string\0A\00", align 1
@.str.105 = private unnamed_addr constant [34 x i8] c"no terminating quote in -S string\00", align 1
@vnlen = internal global i64 0, align 8, !dbg !230
@varname = internal unnamed_addr global i8* null, align 8, !dbg !232
@.str.106 = private unnamed_addr constant [14 x i8] c"unset:    %s\0A\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"cannot unset %s\00", align 1
@.str.108 = private unnamed_addr constant [42 x i8] c"failed to get signal action for signal %d\00", align 1
@.str.109 = private unnamed_addr constant [42 x i8] c"failed to set signal action for signal %d\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"SIG%d\00", align 1
@.str.111 = private unnamed_addr constant [30 x i8] c"Reset signal %s (%d) to %s%s\0A\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"IGNORE\00", align 1
@.str.114 = private unnamed_addr constant [19 x i8] c" (failure ignored)\00", align 1
@.str.115 = private unnamed_addr constant [34 x i8] c"failed to get signal process mask\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"BLOCK\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c"UNBLOCK\00", align 1
@.str.118 = private unnamed_addr constant [31 x i8] c"signal %s (%d) mask set to %s\0A\00", align 1
@.str.119 = private unnamed_addr constant [34 x i8] c"failed to set signal process mask\00", align 1
@.str.120 = private unnamed_addr constant [21 x i8] c"%-10s (%2d): %s%s%s\0A\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.1.50 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i64 0, i64 0), align 8, !dbg !240
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !245
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !250
@.str.121 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.122 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.123 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.124 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !252
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.125 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !288
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !258
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !284
@.str.1.131 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.133 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.132 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !286
@.str.4.126 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.127 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.128 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !293
@.str.142 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.143 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !299
@.str.146 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.147 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.148 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.149 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.150 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.151 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.152 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.153 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.154 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.155 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.147, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.148, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.149, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.150, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.151, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.152, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.153, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.154, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.155, i32 0, i32 0), i8* null], align 8, !dbg !335
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !347
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !365
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !395
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !402
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !367
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !404
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !353
@.str.10.158 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.156 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.159 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.157 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !372
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 4, !dbg !410
@.str.168 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1
@.str.1.169 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1
@.str.2.172 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1
@.str.173 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.174 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.175 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.176 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.177 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.178 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.179 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.180 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.181 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.182 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.183 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.184 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.185 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.186 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.187 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.188 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.189 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.194 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.195 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.196 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.197 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.198 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.199 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.200 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !424
@exit_failure = dso_local global i32 1, align 4, !dbg !432
@.str.219 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.217 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.218 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.230 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !438
@.str.235 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.236 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !529 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !531, metadata !DIExpression()), !dbg !532
  %3 = icmp eq i32 %0, 0, !dbg !533
  br i1 %3, label %9, label %4, !dbg !535

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !536, !tbaa !538
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #35, !dbg !536
  %7 = load i8*, i8** @program_name, align 8, !dbg !536, !tbaa !538
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #35, !dbg !536
  br label %74, !dbg !536

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #35, !dbg !542
  %11 = load i8*, i8** @program_name, align 8, !dbg !542, !tbaa !538
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #35, !dbg !542
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #35, !dbg !544
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !544, !tbaa !538
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !544
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.43, i64 0, i64 0), i32 noundef 5) #35, !dbg !545
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !545, !tbaa !538
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17) #35, !dbg !545
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #35, !dbg !549
  tail call fastcc void @oputs_(i8* noundef %19), !dbg !549
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #35, !dbg !550
  tail call fastcc void @oputs_(i8* noundef %20), !dbg !550
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #35, !dbg !551
  tail call fastcc void @oputs_(i8* noundef %21), !dbg !551
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #35, !dbg !552
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !552
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #35, !dbg !553
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !553
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([136 x i8], [136 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #35, !dbg !554
  tail call fastcc void @oputs_(i8* noundef %24), !dbg !554
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #35, !dbg !555
  tail call fastcc void @oputs_(i8* noundef %25), !dbg !555
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #35, !dbg !556
  tail call fastcc void @oputs_(i8* noundef %26), !dbg !556
  %27 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #35, !dbg !557
  tail call fastcc void @oputs_(i8* noundef %27), !dbg !557
  %28 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #35, !dbg !558
  tail call fastcc void @oputs_(i8* noundef %28), !dbg !558
  %29 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #35, !dbg !559
  tail call fastcc void @oputs_(i8* noundef %29), !dbg !559
  %30 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0), i32 noundef 5) #35, !dbg !560
  tail call fastcc void @oputs_(i8* noundef %30), !dbg !560
  %31 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #35, !dbg !561
  tail call fastcc void @oputs_(i8* noundef %31), !dbg !561
  %32 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.17, i64 0, i64 0), i32 noundef 5) #35, !dbg !562
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !562, !tbaa !538
  %34 = tail call i32 @fputs_unlocked(i8* noundef %32, %struct._IO_FILE* noundef %33), !dbg !562
  %35 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @.str.18, i64 0, i64 0), i32 noundef 5) #35, !dbg !563
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !563, !tbaa !538
  %37 = tail call i32 @fputs_unlocked(i8* noundef %35, %struct._IO_FILE* noundef %36), !dbg !563
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !564, metadata !DIExpression()) #35, !dbg !569
  %38 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([180 x i8], [180 x i8]* @.str.71, i64 0, i64 0), i32 noundef 5) #35, !dbg !571
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %38, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #35, !dbg !571
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !572, metadata !DIExpression()) #35, !dbg !589
  %40 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !591
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %40) #35, !dbg !591
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !575, metadata !DIExpression()) #35, !dbg !592
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %40, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #35, !dbg !592
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !584, metadata !DIExpression()) #35, !dbg !589
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !585, metadata !DIExpression()) #35, !dbg !589
  %41 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !593
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !585, metadata !DIExpression()) #35, !dbg !589
  br label %42, !dbg !594

42:                                               ; preds = %47, %9
  %43 = phi i8* [ %50, %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), %9 ]
  %44 = phi %struct.infomap* [ %48, %47 ], [ %41, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !585, metadata !DIExpression()) #35, !dbg !589
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !595, metadata !DIExpression()) #35, !dbg !602
  call void @llvm.dbg.value(metadata i8* %43, metadata !601, metadata !DIExpression()) #35, !dbg !602
  %45 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %43) #36, !dbg !604
  %46 = icmp eq i32 %45, 0, !dbg !605
  br i1 %46, label %52, label %47, !dbg !594

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 1, !dbg !606
  call void @llvm.dbg.value(metadata %struct.infomap* %48, metadata !585, metadata !DIExpression()) #35, !dbg !589
  %49 = getelementptr inbounds %struct.infomap, %struct.infomap* %48, i64 0, i32 0, !dbg !607
  %50 = load i8*, i8** %49, align 8, !dbg !607, !tbaa !608
  %51 = icmp eq i8* %50, null, !dbg !610
  br i1 %51, label %52, label %42, !dbg !611, !llvm.loop !612

52:                                               ; preds = %47, %42
  %53 = phi %struct.infomap* [ %44, %42 ], [ %48, %47 ]
  %54 = getelementptr inbounds %struct.infomap, %struct.infomap* %53, i64 0, i32 1, !dbg !614
  %55 = load i8*, i8** %54, align 8, !dbg !614, !tbaa !616
  %56 = icmp eq i8* %55, null, !dbg !617
  %57 = select i1 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %55, !dbg !618
  call void @llvm.dbg.value(metadata i8* %57, metadata !584, metadata !DIExpression()) #35, !dbg !589
  tail call void @emit_bug_reporting_address() #35, !dbg !619
  %58 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #35, !dbg !620
  call void @llvm.dbg.value(metadata i8* %58, metadata !587, metadata !DIExpression()) #35, !dbg !589
  %59 = icmp eq i8* %58, null, !dbg !621
  br i1 %59, label %67, label %60, !dbg !623

60:                                               ; preds = %52
  %61 = tail call i32 @strncmp(i8* noundef nonnull %58, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0), i64 noundef 3) #36, !dbg !624
  %62 = icmp eq i32 %61, 0, !dbg !624
  br i1 %62, label %67, label %63, !dbg !625

63:                                               ; preds = %60
  %64 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.76, i64 0, i64 0), i32 noundef 5) #35, !dbg !626
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !626, !tbaa !538
  %66 = tail call i32 @fputs_unlocked(i8* noundef %64, %struct._IO_FILE* noundef %65) #35, !dbg !626
  br label %67, !dbg !628

67:                                               ; preds = %52, %60, %63
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !595, metadata !DIExpression()) #35, !dbg !629
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), metadata !601, metadata !DIExpression()) #35, !dbg !629
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !588, metadata !DIExpression()) #35, !dbg !589
  %68 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.77, i64 0, i64 0), i32 noundef 5) #35, !dbg !631
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %68, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #35, !dbg !631
  %70 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.78, i64 0, i64 0), i32 noundef 5) #35, !dbg !632
  %71 = icmp eq i8* %57, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), !dbg !632
  %72 = select i1 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), !dbg !632
  %73 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %70, i8* noundef %57, i8* noundef %72) #35, !dbg !632
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %40) #35, !dbg !633
  br label %74

74:                                               ; preds = %67, %4
  tail call void @exit(i32 noundef %0) #37, !dbg !634
  unreachable, !dbg !634
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !635 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !639 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !109 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !113, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata i8* %0, metadata !114, metadata !DIExpression()), !dbg !644
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !645, !tbaa !646
  %3 = icmp eq i32 %2, -1, !dbg !648
  br i1 %3, label %4, label %16, !dbg !649

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0)) #35, !dbg !650
  call void @llvm.dbg.value(metadata i8* %5, metadata !115, metadata !DIExpression()), !dbg !651
  %6 = icmp eq i8* %5, null, !dbg !652
  br i1 %6, label %14, label %7, !dbg !653

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !654, !tbaa !655
  %9 = icmp eq i8 %8, 0, !dbg !654
  br i1 %9, label %14, label %10, !dbg !656

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !595, metadata !DIExpression()) #35, !dbg !657
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), metadata !601, metadata !DIExpression()) #35, !dbg !657
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0)) #36, !dbg !659
  %12 = icmp eq i32 %11, 0, !dbg !660
  %13 = zext i1 %12 to i32, !dbg !656
  br label %14, !dbg !656

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !661, !tbaa !646
  br label %16, !dbg !662

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !663
  %18 = icmp eq i32 %17, 0, !dbg !663
  br i1 %18, label %22, label %19, !dbg !665

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !666, !tbaa !538
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !666
  br label %121, !dbg !668

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !118, metadata !DIExpression()), !dbg !644
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0)) #36, !dbg !669
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !670
  call void @llvm.dbg.value(metadata i8* %24, metadata !119, metadata !DIExpression()), !dbg !644
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #36, !dbg !671
  call void @llvm.dbg.value(metadata i8* %25, metadata !120, metadata !DIExpression()), !dbg !644
  %26 = icmp eq i8* %25, null, !dbg !672
  br i1 %26, label %53, label %27, !dbg !673

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !674
  br i1 %28, label %53, label %29, !dbg !675

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !121, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i64 0, metadata !125, metadata !DIExpression()), !dbg !676
  %30 = icmp ult i8* %24, %25, !dbg !677
  br i1 %30, label %31, label %53, !dbg !678

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #38, !dbg !644
  %33 = load i16*, i16** %32, align 8, !tbaa !538
  br label %34, !dbg !678

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !121, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i64 %36, metadata !125, metadata !DIExpression()), !dbg !676
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !679
  call void @llvm.dbg.value(metadata i8* %37, metadata !121, metadata !DIExpression()), !dbg !676
  %38 = load i8, i8* %35, align 1, !dbg !679, !tbaa !655
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !679
  %41 = load i16, i16* %40, align 2, !dbg !679, !tbaa !680
  %42 = lshr i16 %41, 13, !dbg !682
  %43 = and i16 %42, 1, !dbg !682
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !683
  call void @llvm.dbg.value(metadata i64 %45, metadata !125, metadata !DIExpression()), !dbg !676
  %46 = icmp ult i8* %37, %25, !dbg !677
  %47 = icmp ult i64 %45, 2, !dbg !684
  %48 = select i1 %46, i1 %47, i1 false, !dbg !684
  br i1 %48, label %34, label %49, !dbg !678, !llvm.loop !685

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !686
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !688
  %52 = xor i1 %50, true, !dbg !688
  br label %53, !dbg !688

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !644
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !118, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata i8* %54, metadata !120, metadata !DIExpression()), !dbg !644
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0)) #36, !dbg !689
  call void @llvm.dbg.value(metadata i64 %56, metadata !126, metadata !DIExpression()), !dbg !644
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !690
  call void @llvm.dbg.value(metadata i8* %57, metadata !127, metadata !DIExpression()), !dbg !644
  br label %58, !dbg !691

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !644
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !118, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata i8* %59, metadata !127, metadata !DIExpression()), !dbg !644
  %61 = load i8, i8* %59, align 1, !dbg !692, !tbaa !655
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !693

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !694
  %64 = load i8, i8* %63, align 1, !dbg !697, !tbaa !655
  %65 = icmp ne i8 %64, 45, !dbg !698
  %66 = select i1 %65, i1 %60, i1 false, !dbg !699
  br label %67, !dbg !699

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !118, metadata !DIExpression()), !dbg !644
  %69 = tail call i16** @__ctype_b_loc() #38, !dbg !700
  %70 = load i16*, i16** %69, align 8, !dbg !700, !tbaa !538
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !700
  %73 = load i16, i16* %72, align 2, !dbg !700, !tbaa !680
  %74 = and i16 %73, 8192, !dbg !700
  %75 = icmp eq i16 %74, 0, !dbg !700
  br i1 %75, label %89, label %76, !dbg !702

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !703
  br i1 %77, label %91, label %78, !dbg !706

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !707
  %80 = load i8, i8* %79, align 1, !dbg !707, !tbaa !655
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !707
  %83 = load i16, i16* %82, align 2, !dbg !707, !tbaa !680
  %84 = and i16 %83, 8192, !dbg !707
  %85 = icmp eq i16 %84, 0, !dbg !707
  br i1 %85, label %86, label %91, !dbg !708

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !709
  br i1 %88, label %89, label %91, !dbg !709

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !711
  call void @llvm.dbg.value(metadata i8* %90, metadata !127, metadata !DIExpression()), !dbg !644
  br label %58, !dbg !691, !llvm.loop !712

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !714
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !714, !tbaa !538
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !714
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !595, metadata !DIExpression()) #35, !dbg !715
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), metadata !601, metadata !DIExpression()) #35, !dbg !715
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !595, metadata !DIExpression()) #35, !dbg !717
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !595, metadata !DIExpression()) #35, !dbg !719
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !595, metadata !DIExpression()) #35, !dbg !721
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !595, metadata !DIExpression()) #35, !dbg !723
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !595, metadata !DIExpression()) #35, !dbg !725
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !595, metadata !DIExpression()) #35, !dbg !727
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !595, metadata !DIExpression()) #35, !dbg !729
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !595, metadata !DIExpression()) #35, !dbg !731
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !595, metadata !DIExpression()) #35, !dbg !733
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !184, metadata !DIExpression()), !dbg !644
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i64 0, i64 0), i64 noundef 6) #36, !dbg !735
  %96 = icmp eq i32 %95, 0, !dbg !735
  br i1 %96, label %100, label %97, !dbg !737

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i64 noundef 9) #36, !dbg !738
  %99 = icmp eq i32 %98, 0, !dbg !738
  br i1 %99, label %100, label %103, !dbg !739

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !740
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #35, !dbg !740
  br label %106, !dbg !742

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !743
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.66, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #35, !dbg !743
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !745, !tbaa !538
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !745
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !746, !tbaa !538
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !746
  %111 = ptrtoint i8* %59 to i64, !dbg !747
  %112 = sub i64 %111, %92, !dbg !747
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !747, !tbaa !538
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !747
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !748, !tbaa !538
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !748
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !749, !tbaa !538
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !749
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !750, !tbaa !538
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !750
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !751
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
declare !dbg !752 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !756 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !760 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !72 {
  %3 = alloca %struct.__sigset_t, align 8
  %4 = alloca %struct.sigaction, align 8
  %5 = alloca [19 x i8], align 1
  %6 = alloca %struct.__sigset_t, align 8
  %7 = alloca [19 x i8], align 1
  %8 = alloca %struct.sigaction, align 8
  %9 = alloca [19 x i8], align 1
  %10 = alloca %struct.splitbuf, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !77, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i8** %1, metadata !78, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i8 0, metadata !79, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i8 0, metadata !81, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i8* null, metadata !82, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i8* null, metadata !83, metadata !DIExpression()), !dbg !766
  %11 = load i8*, i8** %1, align 8, !dbg !767, !tbaa !538
  tail call void @set_program_name(i8* noundef %11) #35, !dbg !768
  %12 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0)) #35, !dbg !769
  %13 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0)) #35, !dbg !770
  %14 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0)) #35, !dbg !771
  call void @llvm.dbg.value(metadata i32 125, metadata !772, metadata !DIExpression()), !dbg !775
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !777, !tbaa !646
  %15 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #35, !dbg !779
  %16 = tail call noalias nonnull i8* @xmalloc(i64 noundef 260) #39, !dbg !780
  store i8* %16, i8** bitcast (i32** @signals to i8**), align 8, !dbg !786, !tbaa !538
  call void @llvm.dbg.value(metadata i32 0, metadata !783, metadata !DIExpression()) #35, !dbg !787
  call void @llvm.dbg.value(metadata i32 0, metadata !783, metadata !DIExpression()) #35, !dbg !787
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(260) %16, i8 0, i64 260, i1 false) #35, !dbg !788, !tbaa !655
  call void @llvm.dbg.value(metadata i32 undef, metadata !783, metadata !DIExpression()) #35, !dbg !787
  call void @llvm.dbg.value(metadata i32 undef, metadata !783, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #35, !dbg !787
  %17 = bitcast %struct.splitbuf* %10 to i8*
  %18 = getelementptr inbounds %struct.splitbuf, %struct.splitbuf* %10, i64 0, i32 0
  %19 = bitcast %struct.splitbuf* %10 to i8**
  %20 = getelementptr inbounds %struct.splitbuf, %struct.splitbuf* %10, i64 0, i32 1
  %21 = getelementptr inbounds %struct.splitbuf, %struct.splitbuf* %10, i64 0, i32 2
  %22 = getelementptr inbounds %struct.splitbuf, %struct.splitbuf* %10, i64 0, i32 3
  %23 = getelementptr inbounds %struct.splitbuf, %struct.splitbuf* %10, i64 0, i32 4
  br label %24, !dbg !790

24:                                               ; preds = %32, %2
  %25 = phi i32 [ %0, %2 ], [ %33, %32 ]
  %26 = phi i8** [ %1, %2 ], [ %34, %32 ]
  %27 = phi i8* [ null, %2 ], [ %35, %32 ], !dbg !791
  %28 = phi i8* [ null, %2 ], [ %36, %32 ], !dbg !792
  %29 = phi i1 [ false, %2 ], [ %37, %32 ]
  %30 = phi i1 [ false, %2 ], [ %38, %32 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !79, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i8 poison, metadata !81, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i8* %28, metadata !82, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i8* %27, metadata !83, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i32 %25, metadata !77, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i8** %26, metadata !78, metadata !DIExpression()), !dbg !766
  %31 = call i32 @getopt_long(i32 noundef %25, i8** noundef %26, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @shortopts, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([14 x %struct.option], [14 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #35, !dbg !793
  call void @llvm.dbg.value(metadata i32 %31, metadata !84, metadata !DIExpression()), !dbg !766
  switch i32 %31, label %395 [
    i32 -1, label %396
    i32 97, label %39
    i32 105, label %32
    i32 117, label %41
    i32 118, label %58
    i32 48, label %59
    i32 256, label %60
    i32 257, label %63
    i32 258, label %65
    i32 259, label %67
    i32 67, label %68
    i32 83, label %70
    i32 32, label %385
    i32 9, label %385
    i32 10, label %385
    i32 11, label %385
    i32 12, label %385
    i32 13, label %385
    i32 -2, label %388
    i32 -3, label %389
  ], !dbg !790

32:                                               ; preds = %24, %374, %68, %67, %65, %63, %60, %59, %58, %53, %39
  %33 = phi i32 [ %384, %374 ], [ %25, %68 ], [ %25, %67 ], [ %25, %65 ], [ %25, %63 ], [ %25, %60 ], [ %25, %59 ], [ %25, %58 ], [ %25, %53 ], [ %25, %24 ], [ %25, %39 ]
  %34 = phi i8** [ %299, %374 ], [ %26, %68 ], [ %26, %67 ], [ %26, %65 ], [ %26, %63 ], [ %26, %60 ], [ %26, %59 ], [ %26, %58 ], [ %26, %53 ], [ %26, %24 ], [ %26, %39 ]
  %35 = phi i8* [ %27, %374 ], [ %27, %68 ], [ %27, %67 ], [ %27, %65 ], [ %27, %63 ], [ %27, %60 ], [ %27, %59 ], [ %27, %58 ], [ %27, %53 ], [ %27, %24 ], [ %40, %39 ]
  %36 = phi i8* [ %28, %374 ], [ %69, %68 ], [ %28, %67 ], [ %28, %65 ], [ %28, %63 ], [ %28, %60 ], [ %28, %59 ], [ %28, %58 ], [ %28, %53 ], [ %28, %24 ], [ %28, %39 ]
  %37 = phi i1 [ %29, %374 ], [ %29, %68 ], [ %29, %67 ], [ %29, %65 ], [ %29, %63 ], [ %29, %60 ], [ true, %59 ], [ %29, %58 ], [ %29, %53 ], [ %29, %24 ], [ %29, %39 ]
  %38 = phi i1 [ %30, %374 ], [ %30, %68 ], [ %30, %67 ], [ %30, %65 ], [ %30, %63 ], [ %30, %60 ], [ %30, %59 ], [ %30, %58 ], [ %30, %53 ], [ true, %24 ], [ %30, %39 ]
  br label %24, !dbg !766, !llvm.loop !794

39:                                               ; preds = %24
  %40 = load i8*, i8** @optarg, align 8, !dbg !796, !tbaa !538
  call void @llvm.dbg.value(metadata i8* %40, metadata !83, metadata !DIExpression()), !dbg !766
  br label %32, !dbg !799

41:                                               ; preds = %24
  %42 = load i8*, i8** @optarg, align 8, !dbg !800, !tbaa !538
  call void @llvm.dbg.value(metadata i8* %42, metadata !801, metadata !DIExpression()) #35, !dbg !804
  %43 = load i64, i64* @usvars_used, align 8, !dbg !806, !tbaa !808
  %44 = load i64, i64* @usvars_alloc, align 8, !dbg !810, !tbaa !808
  %45 = icmp eq i64 %43, %44, !dbg !811
  br i1 %45, label %48, label %46, !dbg !812

46:                                               ; preds = %41
  %47 = load i8**, i8*** @usvars, align 8, !dbg !813, !tbaa !538
  br label %53, !dbg !812

48:                                               ; preds = %41
  %49 = load i8*, i8** bitcast (i8*** @usvars to i8**), align 8, !dbg !814, !tbaa !538
  %50 = call nonnull i8* @xpalloc(i8* noundef %49, i64* noundef nonnull @usvars_alloc, i64 noundef 1, i64 noundef -1, i64 noundef 8) #35, !dbg !815
  store i8* %50, i8** bitcast (i8*** @usvars to i8**), align 8, !dbg !816, !tbaa !538
  %51 = bitcast i8* %50 to i8**, !dbg !817
  %52 = load i64, i64* @usvars_used, align 8, !dbg !818, !tbaa !808
  br label %53, !dbg !817

53:                                               ; preds = %46, %48
  %54 = phi i64 [ %43, %46 ], [ %52, %48 ], !dbg !818
  %55 = phi i8** [ %47, %46 ], [ %51, %48 ], !dbg !813
  %56 = add nsw i64 %54, 1, !dbg !818
  store i64 %56, i64* @usvars_used, align 8, !dbg !818, !tbaa !808
  %57 = getelementptr inbounds i8*, i8** %55, i64 %54, !dbg !813
  store i8* %42, i8** %57, align 8, !dbg !819, !tbaa !538
  br label %32, !dbg !820

58:                                               ; preds = %24
  store i1 true, i1* @dev_debug, align 1, !dbg !821
  br label %32, !dbg !822

59:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8 1, metadata !81, metadata !DIExpression()), !dbg !766
  br label %32, !dbg !823

60:                                               ; preds = %24
  %61 = load i8*, i8** @optarg, align 8, !dbg !824, !tbaa !538
  call fastcc void @parse_signal_action_params(i8* noundef %61, i1 noundef true), !dbg !825
  %62 = load i8*, i8** @optarg, align 8, !dbg !826, !tbaa !538
  call fastcc void @parse_block_signal_params(i8* noundef %62, i1 noundef false), !dbg !827
  br label %32, !dbg !828

63:                                               ; preds = %24
  %64 = load i8*, i8** @optarg, align 8, !dbg !829, !tbaa !538
  call fastcc void @parse_signal_action_params(i8* noundef %64, i1 noundef false), !dbg !830
  br label %32, !dbg !831

65:                                               ; preds = %24
  %66 = load i8*, i8** @optarg, align 8, !dbg !832, !tbaa !538
  call fastcc void @parse_block_signal_params(i8* noundef %66, i1 noundef true), !dbg !833
  br label %32, !dbg !834

67:                                               ; preds = %24
  store i1 true, i1* @report_signal_handling, align 1, !dbg !835
  br label %32, !dbg !836

68:                                               ; preds = %24
  %69 = load i8*, i8** @optarg, align 8, !dbg !837, !tbaa !538
  call void @llvm.dbg.value(metadata i8* %69, metadata !82, metadata !DIExpression()), !dbg !766
  br label %32, !dbg !838

70:                                               ; preds = %24
  %71 = load i8*, i8** @optarg, align 8, !dbg !839, !tbaa !538
  call void @llvm.dbg.value(metadata i8* %71, metadata !840, metadata !DIExpression()) #35, !dbg !856
  call void @llvm.dbg.value(metadata i32* @optind, metadata !846, metadata !DIExpression()) #35, !dbg !856
  call void @llvm.dbg.value(metadata i32* undef, metadata !847, metadata !DIExpression()) #35, !dbg !856
  call void @llvm.dbg.value(metadata i8*** undef, metadata !848, metadata !DIExpression()) #35, !dbg !856
  %72 = load i32, i32* @optind, align 4, !dbg !858, !tbaa !646
  %73 = sub nsw i32 %25, %72, !dbg !859
  call void @llvm.dbg.value(metadata i32 %73, metadata !849, metadata !DIExpression()) #35, !dbg !856
  call void @llvm.dbg.value(metadata i8* %71, metadata !860, metadata !DIExpression()) #35, !dbg !884
  call void @llvm.dbg.value(metadata i32 %73, metadata !865, metadata !DIExpression()) #35, !dbg !884
  call void @llvm.dbg.value(metadata i32* undef, metadata !866, metadata !DIExpression()) #35, !dbg !884
  call void @llvm.dbg.value(metadata i8 0, metadata !867, metadata !DIExpression()) #35, !dbg !884
  call void @llvm.dbg.value(metadata i8 0, metadata !868, metadata !DIExpression()) #35, !dbg !884
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #35, !dbg !886
  call void @llvm.dbg.declare(metadata %struct.splitbuf* %10, metadata !869, metadata !DIExpression()) #35, !dbg !887
  %74 = add nsw i32 %73, 2, !dbg !888
  %75 = sext i32 %74 to i64, !dbg !889
  %76 = call noalias nonnull i8* @xnmalloc(i64 noundef %75, i64 noundef 16) #40, !dbg !890
  store i8* %76, i8** %19, align 8, !dbg !891, !tbaa !892
  store i32 1, i32* %20, align 8, !dbg !895, !tbaa !896
  store i64 %75, i64* %21, align 8, !dbg !897, !tbaa !898
  store i32 %73, i32* %22, align 8, !dbg !899, !tbaa !900
  store i8 1, i8* %23, align 4, !dbg !901, !tbaa !902
  %77 = getelementptr inbounds i8, i8* %76, i64 8, !dbg !903
  %78 = bitcast i8* %77 to i8**, !dbg !903
  store i8* null, i8** %78, align 8, !dbg !904, !tbaa !538
  br label %79, !dbg !905

79:                                               ; preds = %113, %70
  %80 = phi i8* [ %71, %70 ], [ %114, %113 ]
  %81 = phi i1 [ false, %70 ], [ %115, %113 ]
  %82 = phi i1 [ false, %70 ], [ %116, %113 ]
  br label %83, !dbg !905

83:                                               ; preds = %79, %222
  %84 = phi i8* [ %80, %79 ], [ %224, %222 ]
  %85 = phi i1 [ %82, %79 ], [ false, %222 ]
  %86 = select i1 %85, i1 true, i1 %81
  br label %87, !dbg !905

87:                                               ; preds = %83, %249
  %88 = phi i8* [ %261, %249 ], [ %84, %83 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !868, metadata !DIExpression()) #35, !dbg !884
  call void @llvm.dbg.value(metadata i8 poison, metadata !867, metadata !DIExpression()) #35, !dbg !884
  call void @llvm.dbg.value(metadata i8* %88, metadata !860, metadata !DIExpression()) #35, !dbg !884
  %89 = load i8, i8* %88, align 1, !dbg !906, !tbaa !655
  switch i8 %89, label %226 [
    i8 0, label %262
    i8 39, label %90
    i8 34, label %94
    i8 32, label %98
    i8 9, label %98
    i8 10, label %98
    i8 11, label %98
    i8 12, label %98
    i8 13, label %98
    i8 35, label %102
    i8 92, label %105
    i8 36, label %129
  ], !dbg !905

90:                                               ; preds = %87
  br i1 %81, label %226, label %91, !dbg !907

91:                                               ; preds = %90
  %92 = xor i1 %85, true, !dbg !908
  call void @llvm.dbg.value(metadata i1 %92, metadata !868, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !884
  call fastcc void @check_start_new_arg(%struct.splitbuf* noundef nonnull %10) #35, !dbg !909
  %93 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !910
  call void @llvm.dbg.value(metadata i8* %93, metadata !860, metadata !DIExpression()) #35, !dbg !884
  br label %113, !dbg !911

94:                                               ; preds = %87
  br i1 %85, label %226, label %95, !dbg !912

95:                                               ; preds = %94
  %96 = xor i1 %81, true, !dbg !913
  call void @llvm.dbg.value(metadata i1 %96, metadata !867, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !884
  call fastcc void @check_start_new_arg(%struct.splitbuf* noundef nonnull %10) #35, !dbg !914
  %97 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !915
  call void @llvm.dbg.value(metadata i8* %97, metadata !860, metadata !DIExpression()) #35, !dbg !884
  br label %113, !dbg !916

98:                                               ; preds = %87, %87, %87, %87, %87, %87
  br i1 %86, label %226, label %99, !dbg !917

99:                                               ; preds = %98
  store i8 1, i8* %23, align 4, !dbg !919, !tbaa !902
  %100 = call i64 @strspn(i8* noundef nonnull %88, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0)) #36, !dbg !920
  %101 = getelementptr inbounds i8, i8* %88, i64 %100, !dbg !921
  call void @llvm.dbg.value(metadata i8* %101, metadata !860, metadata !DIExpression()) #35, !dbg !884
  br label %113, !dbg !922

102:                                              ; preds = %87
  %103 = load i8, i8* %23, align 4, !dbg !923, !tbaa !902, !range !925
  %104 = icmp eq i8 %103, 0, !dbg !923
  br i1 %104, label %226, label %266, !dbg !926

105:                                              ; preds = %87
  %106 = getelementptr inbounds i8, i8* %88, i64 1
  %107 = load i8, i8* %106, align 1, !dbg !927, !tbaa !655
  br i1 %85, label %108, label %109, !dbg !928

108:                                              ; preds = %105
  switch i8 %107, label %226 [
    i8 39, label %225
    i8 92, label %225
  ], !dbg !930

109:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i8* %106, metadata !860, metadata !DIExpression()) #35, !dbg !884
  call void @llvm.dbg.value(metadata i8 %107, metadata !877, metadata !DIExpression()) #35, !dbg !931
  switch i8 %107, label %126 [
    i8 34, label %225
    i8 35, label %225
    i8 36, label %225
    i8 39, label %225
    i8 92, label %225
    i8 95, label %110
    i8 99, label %117
    i8 102, label %226
    i8 110, label %120
    i8 114, label %121
    i8 116, label %122
    i8 118, label %123
    i8 0, label %124
  ], !dbg !932

110:                                              ; preds = %109
  br i1 %81, label %226, label %111, !dbg !933

111:                                              ; preds = %110
  %112 = getelementptr inbounds i8, i8* %88, i64 2, !dbg !935
  call void @llvm.dbg.value(metadata i8* %112, metadata !860, metadata !DIExpression()) #35, !dbg !884
  store i8 1, i8* %23, align 4, !dbg !938, !tbaa !902
  br label %113, !dbg !939

113:                                              ; preds = %111, %99, %95, %91
  %114 = phi i8* [ %93, %91 ], [ %97, %95 ], [ %101, %99 ], [ %112, %111 ]
  %115 = phi i1 [ false, %91 ], [ %96, %95 ], [ false, %99 ], [ false, %111 ]
  %116 = phi i1 [ %92, %91 ], [ false, %95 ], [ false, %99 ], [ false, %111 ]
  br label %79, !dbg !905, !llvm.loop !940

117:                                              ; preds = %109
  br i1 %81, label %118, label %266, !dbg !942

118:                                              ; preds = %117
  %119 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.99, i64 0, i64 0), i32 noundef 5) #35, !dbg !943
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef 0, i8* noundef %119) #35, !dbg !943
  unreachable, !dbg !943

120:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i8 10, metadata !877, metadata !DIExpression()) #35, !dbg !931
  br label %226, !dbg !945

121:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i8 13, metadata !877, metadata !DIExpression()) #35, !dbg !931
  br label %226, !dbg !946

122:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i8 9, metadata !877, metadata !DIExpression()) #35, !dbg !931
  br label %226, !dbg !947

123:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i8 11, metadata !877, metadata !DIExpression()) #35, !dbg !931
  br label %226, !dbg !948

124:                                              ; preds = %109
  %125 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.100, i64 0, i64 0), i32 noundef 5) #35, !dbg !949
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef 0, i8* noundef %125) #35, !dbg !949
  unreachable, !dbg !949

126:                                              ; preds = %109
  %127 = zext i8 %107 to i32, !dbg !950
  %128 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.101, i64 0, i64 0), i32 noundef 5) #35, !dbg !951
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef 0, i8* noundef %128, i32 noundef %127) #35, !dbg !951
  unreachable, !dbg !951

129:                                              ; preds = %87
  br i1 %85, label %226, label %130, !dbg !952

130:                                              ; preds = %129
  call void @llvm.dbg.value(metadata i8* %88, metadata !953, metadata !DIExpression()) #35, !dbg !958
  call void @llvm.dbg.value(metadata i8* %88, metadata !960, metadata !DIExpression()) #35, !dbg !968
  %131 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !970
  %132 = load i8, i8* %131, align 1, !dbg !970, !tbaa !655
  %133 = icmp eq i8 %132, 123, !dbg !971
  br i1 %133, label %134, label %161, !dbg !972

134:                                              ; preds = %130
  %135 = getelementptr inbounds i8, i8* %88, i64 2, !dbg !973
  %136 = load i8, i8* %135, align 1, !dbg !973, !tbaa !655
  call void @llvm.dbg.value(metadata i8 %136, metadata !974, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #35, !dbg !980
  switch i8 %136, label %161 [
    i8 97, label %137
    i8 98, label %137
    i8 99, label %137
    i8 100, label %137
    i8 101, label %137
    i8 102, label %137
    i8 103, label %137
    i8 104, label %137
    i8 105, label %137
    i8 106, label %137
    i8 107, label %137
    i8 108, label %137
    i8 109, label %137
    i8 110, label %137
    i8 111, label %137
    i8 112, label %137
    i8 113, label %137
    i8 114, label %137
    i8 115, label %137
    i8 116, label %137
    i8 117, label %137
    i8 118, label %137
    i8 119, label %137
    i8 120, label %137
    i8 121, label %137
    i8 122, label %137
    i8 65, label %137
    i8 66, label %137
    i8 67, label %137
    i8 68, label %137
    i8 69, label %137
    i8 70, label %137
    i8 71, label %137
    i8 72, label %137
    i8 73, label %137
    i8 74, label %137
    i8 75, label %137
    i8 76, label %137
    i8 77, label %137
    i8 78, label %137
    i8 79, label %137
    i8 80, label %137
    i8 81, label %137
    i8 82, label %137
    i8 83, label %137
    i8 84, label %137
    i8 85, label %137
    i8 86, label %137
    i8 87, label %137
    i8 88, label %137
    i8 89, label %137
    i8 90, label %137
    i8 95, label %137
  ], !dbg !982

137:                                              ; preds = %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134
  %138 = getelementptr inbounds i8, i8* %88, i64 3, !dbg !983
  call void @llvm.dbg.value(metadata i8* %138, metadata !965, metadata !DIExpression()) #35, !dbg !984
  br label %139, !dbg !985

139:                                              ; preds = %146, %137
  %140 = phi i8* [ %138, %137 ], [ %147, %146 ], !dbg !984
  call void @llvm.dbg.value(metadata i8* %140, metadata !965, metadata !DIExpression()) #35, !dbg !984
  %141 = load i8, i8* %140, align 1, !dbg !986, !tbaa !655
  %142 = zext i8 %141 to i32, !dbg !986
  %143 = call i1 @c_isalnum(i32 noundef %142) #35, !dbg !987
  br i1 %143, label %146, label %144, !dbg !988

144:                                              ; preds = %139
  %145 = load i8, i8* %140, align 1, !dbg !989, !tbaa !655
  switch i8 %145, label %161 [
    i8 95, label %146
    i8 125, label %148
  ], !dbg !985

146:                                              ; preds = %144, %139
  %147 = getelementptr inbounds i8, i8* %140, i64 1, !dbg !990
  call void @llvm.dbg.value(metadata i8* %147, metadata !965, metadata !DIExpression()) #35, !dbg !984
  br label %139, !dbg !985, !llvm.loop !991

148:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i8* %140, metadata !956, metadata !DIExpression()) #35, !dbg !958
  %149 = ptrtoint i8* %140 to i64, !dbg !993
  %150 = ptrtoint i8* %88 to i64, !dbg !993
  %151 = sub i64 %149, %150, !dbg !993
  %152 = add nsw i64 %151, -2, !dbg !994
  call void @llvm.dbg.value(metadata i64 %152, metadata !957, metadata !DIExpression()) #35, !dbg !958
  %153 = load i64, i64* @vnlen, align 8, !dbg !995, !tbaa !808
  %154 = icmp slt i64 %152, %153, !dbg !997
  %155 = load i8*, i8** @varname, align 8, !dbg !958, !tbaa !538
  br i1 %154, label %163, label %156, !dbg !998

156:                                              ; preds = %148
  call void @free(i8* noundef %155) #35, !dbg !999
  %157 = load i64, i64* @vnlen, align 8, !dbg !1001, !tbaa !808
  %158 = xor i64 %157, -1, !dbg !1002
  %159 = add i64 %151, %158, !dbg !1002
  %160 = call nonnull i8* @xpalloc(i8* noundef null, i64* noundef nonnull @vnlen, i64 noundef %159, i64 noundef -1, i64 noundef 1) #35, !dbg !1003
  store i8* %160, i8** @varname, align 8, !dbg !1004, !tbaa !538
  br label %163, !dbg !1005

161:                                              ; preds = %134, %130, %144
  %162 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.102, i64 0, i64 0), i32 noundef 5) #35, !dbg !1006
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef 0, i8* noundef %162, i8* noundef nonnull %88) #35, !dbg !1006
  unreachable, !dbg !1006

163:                                              ; preds = %156, %148
  %164 = phi i8* [ %160, %156 ], [ %155, %148 ], !dbg !1008
  call void @llvm.dbg.value(metadata i8* %164, metadata !1009, metadata !DIExpression()) #35, !dbg !1018
  call void @llvm.dbg.value(metadata i8* %135, metadata !1016, metadata !DIExpression()) #35, !dbg !1018
  call void @llvm.dbg.value(metadata i64 %152, metadata !1017, metadata !DIExpression()) #35, !dbg !1018
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %164, i8* noundef nonnull align 1 %135, i64 noundef %152, i1 noundef false) #35, !dbg !1020
  %165 = getelementptr inbounds i8, i8* %164, i64 %152, !dbg !1021
  store i8 0, i8* %165, align 1, !dbg !1022, !tbaa !655
  call void @llvm.dbg.value(metadata i8* %164, metadata !879, metadata !DIExpression()) #35, !dbg !1023
  %166 = call i8* @getenv(i8* noundef nonnull %164) #35, !dbg !1024
  call void @llvm.dbg.value(metadata i8* %166, metadata !882, metadata !DIExpression()) #35, !dbg !1023
  %167 = icmp eq i8* %166, null, !dbg !1025
  br i1 %167, label %217, label %168, !dbg !1027

168:                                              ; preds = %163
  call fastcc void @check_start_new_arg(%struct.splitbuf* noundef nonnull %10) #35, !dbg !1028
  %169 = load i1, i1* @dev_debug, align 1, !dbg !1030
  br i1 %169, label %170, label %174, !dbg !1033

170:                                              ; preds = %168
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1030, !tbaa !538
  %172 = call i8* @quote(i8* noundef nonnull %166) #35, !dbg !1030
  %173 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %171, i32 noundef 1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.103, i64 0, i64 0), i8* noundef nonnull %164, i8* noundef %172) #35, !dbg !1030
  br label %174, !dbg !1030

174:                                              ; preds = %170, %168
  call void @llvm.dbg.value(metadata i8* %166, metadata !882, metadata !DIExpression()) #35, !dbg !1023
  %175 = load i8, i8* %166, align 1, !dbg !1034, !tbaa !655
  %176 = icmp eq i8 %175, 0, !dbg !1037
  br i1 %176, label %222, label %177, !dbg !1037

177:                                              ; preds = %174
  %178 = load i32, i32* %20, align 8, !dbg !1038, !tbaa !896
  br label %179, !dbg !1037

179:                                              ; preds = %202, %177
  %180 = phi i32 [ %211, %202 ], [ %178, %177 ], !dbg !1038
  %181 = phi i8 [ %215, %202 ], [ %175, %177 ]
  %182 = phi i8* [ %214, %202 ], [ %166, %177 ]
  call void @llvm.dbg.value(metadata i8* %182, metadata !882, metadata !DIExpression()) #35, !dbg !1023
  call void @llvm.dbg.value(metadata %struct.splitbuf* %10, metadata !1044, metadata !DIExpression()) #35, !dbg !1048
  call void @llvm.dbg.value(metadata i8 %181, metadata !1045, metadata !DIExpression()) #35, !dbg !1048
  %183 = load i8**, i8*** %18, align 8, !dbg !1049, !tbaa !892
  %184 = sext i32 %180 to i64, !dbg !1050
  %185 = getelementptr inbounds i8*, i8** %183, i64 %184, !dbg !1050
  %186 = load i8*, i8** %185, align 8, !dbg !1050, !tbaa !538
  %187 = ptrtoint i8* %186 to i64, !dbg !1051
  call void @llvm.dbg.value(metadata i64 %187, metadata !1046, metadata !DIExpression()) #35, !dbg !1048
  %188 = load i64, i64* %21, align 8, !dbg !1052, !tbaa !898
  %189 = shl i64 %188, 3, !dbg !1054
  %190 = icmp ugt i64 %189, %187, !dbg !1055
  br i1 %190, label %202, label %191, !dbg !1056

191:                                              ; preds = %179
  call void @llvm.dbg.value(metadata %struct.splitbuf* %10, metadata !1057, metadata !DIExpression()) #35, !dbg !1064
  call void @llvm.dbg.value(metadata i64 %188, metadata !1062, metadata !DIExpression()) #35, !dbg !1064
  call void @llvm.dbg.value(metadata i64 %187, metadata !1063, metadata !DIExpression()) #35, !dbg !1064
  %192 = bitcast i8** %183 to i8*, !dbg !1066
  %193 = call nonnull i8* @xpalloc(i8* noundef %192, i64* noundef nonnull %21, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #35, !dbg !1067
  %194 = bitcast i8* %193 to i8**, !dbg !1067
  store i8* %193, i8** %19, align 8, !dbg !1068, !tbaa !892
  %195 = load i64, i64* %21, align 8, !dbg !1069, !tbaa !898
  %196 = getelementptr inbounds i8*, i8** %194, i64 %195, !dbg !1070
  %197 = bitcast i8** %196 to i8*, !dbg !1071
  %198 = getelementptr inbounds i8*, i8** %194, i64 %188, !dbg !1072
  %199 = bitcast i8** %198 to i8*, !dbg !1073
  call void @llvm.dbg.value(metadata i8* %197, metadata !1074, metadata !DIExpression()) #35, !dbg !1081
  call void @llvm.dbg.value(metadata i8* %199, metadata !1079, metadata !DIExpression()) #35, !dbg !1081
  call void @llvm.dbg.value(metadata i64 %187, metadata !1080, metadata !DIExpression()) #35, !dbg !1081
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %197, i8* noundef nonnull align 1 %199, i64 noundef %187, i1 noundef false) #35, !dbg !1083
  %200 = load i8**, i8*** %18, align 8, !dbg !1084, !tbaa !892
  %201 = load i64, i64* %21, align 8, !dbg !1085, !tbaa !898
  br label %202, !dbg !1086

202:                                              ; preds = %191, %179
  %203 = phi i64 [ %201, %191 ], [ %188, %179 ], !dbg !1085
  %204 = phi i8** [ %200, %191 ], [ %183, %179 ], !dbg !1084
  %205 = getelementptr inbounds i8*, i8** %204, i64 %203, !dbg !1087
  %206 = bitcast i8** %205 to i8*, !dbg !1088
  %207 = getelementptr inbounds i8, i8* %206, i64 %187, !dbg !1088
  store i8 %181, i8* %207, align 1, !dbg !1089, !tbaa !655
  %208 = add nsw i64 %187, 1, !dbg !1090
  %209 = inttoptr i64 %208 to i8*, !dbg !1091
  %210 = load i8**, i8*** %18, align 8, !dbg !1092, !tbaa !892
  %211 = load i32, i32* %20, align 8, !dbg !1093, !tbaa !896
  %212 = sext i32 %211 to i64, !dbg !1094
  %213 = getelementptr inbounds i8*, i8** %210, i64 %212, !dbg !1094
  store i8* %209, i8** %213, align 8, !dbg !1095, !tbaa !538
  %214 = getelementptr inbounds i8, i8* %182, i64 1, !dbg !1096
  call void @llvm.dbg.value(metadata i8* %214, metadata !882, metadata !DIExpression()) #35, !dbg !1023
  %215 = load i8, i8* %214, align 1, !dbg !1034, !tbaa !655
  %216 = icmp eq i8 %215, 0, !dbg !1037
  br i1 %216, label %222, label %179, !dbg !1037, !llvm.loop !1097

217:                                              ; preds = %163
  %218 = load i1, i1* @dev_debug, align 1, !dbg !1099
  br i1 %218, label %219, label %222, !dbg !1102

219:                                              ; preds = %217
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1099, !tbaa !538
  %221 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %220, i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.104, i64 0, i64 0), i8* noundef nonnull %164) #35, !dbg !1099
  br label %222, !dbg !1099

222:                                              ; preds = %202, %219, %217, %174
  %223 = call i8* @strchr(i8* noundef nonnull %88, i32 noundef 125) #36, !dbg !1103
  %224 = getelementptr inbounds i8, i8* %223, i64 1, !dbg !1104
  call void @llvm.dbg.value(metadata i8* %224, metadata !860, metadata !DIExpression()) #35, !dbg !884
  br label %83

225:                                              ; preds = %109, %109, %109, %109, %109, %108, %108
  br label %226, !dbg !1105

226:                                              ; preds = %225, %129, %123, %122, %121, %120, %110, %109, %108, %102, %98, %94, %90, %87
  %227 = phi i8* [ %88, %129 ], [ %106, %123 ], [ %106, %122 ], [ %106, %121 ], [ %106, %120 ], [ %88, %102 ], [ %88, %98 ], [ %88, %94 ], [ %88, %90 ], [ %88, %87 ], [ %88, %108 ], [ %106, %110 ], [ %106, %225 ], [ %106, %109 ]
  %228 = phi i8 [ 36, %129 ], [ 11, %123 ], [ 9, %122 ], [ 13, %121 ], [ 10, %120 ], [ 35, %102 ], [ %89, %98 ], [ 34, %94 ], [ 39, %90 ], [ %89, %87 ], [ 92, %108 ], [ 32, %110 ], [ %107, %225 ], [ 12, %109 ], !dbg !931
  call void @llvm.dbg.value(metadata i8 %228, metadata !877, metadata !DIExpression()) #35, !dbg !931
  call void @llvm.dbg.value(metadata i8* %227, metadata !860, metadata !DIExpression()) #35, !dbg !884
  call fastcc void @check_start_new_arg(%struct.splitbuf* noundef nonnull %10) #35, !dbg !1105
  call void @llvm.dbg.value(metadata %struct.splitbuf* %10, metadata !1044, metadata !DIExpression()) #35, !dbg !1106
  call void @llvm.dbg.value(metadata i8 %228, metadata !1045, metadata !DIExpression()) #35, !dbg !1106
  %229 = load i8**, i8*** %18, align 8, !dbg !1108, !tbaa !892
  %230 = load i32, i32* %20, align 8, !dbg !1109, !tbaa !896
  %231 = sext i32 %230 to i64, !dbg !1110
  %232 = getelementptr inbounds i8*, i8** %229, i64 %231, !dbg !1110
  %233 = load i8*, i8** %232, align 8, !dbg !1110, !tbaa !538
  %234 = ptrtoint i8* %233 to i64, !dbg !1111
  call void @llvm.dbg.value(metadata i64 %234, metadata !1046, metadata !DIExpression()) #35, !dbg !1106
  %235 = load i64, i64* %21, align 8, !dbg !1112, !tbaa !898
  %236 = shl i64 %235, 3, !dbg !1113
  %237 = icmp ugt i64 %236, %234, !dbg !1114
  br i1 %237, label %249, label %238, !dbg !1115

238:                                              ; preds = %226
  call void @llvm.dbg.value(metadata %struct.splitbuf* %10, metadata !1057, metadata !DIExpression()) #35, !dbg !1116
  call void @llvm.dbg.value(metadata i64 %235, metadata !1062, metadata !DIExpression()) #35, !dbg !1116
  call void @llvm.dbg.value(metadata i64 %234, metadata !1063, metadata !DIExpression()) #35, !dbg !1116
  %239 = bitcast i8** %229 to i8*, !dbg !1118
  %240 = call nonnull i8* @xpalloc(i8* noundef %239, i64* noundef nonnull %21, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #35, !dbg !1119
  %241 = bitcast i8* %240 to i8**, !dbg !1119
  store i8* %240, i8** %19, align 8, !dbg !1120, !tbaa !892
  %242 = load i64, i64* %21, align 8, !dbg !1121, !tbaa !898
  %243 = getelementptr inbounds i8*, i8** %241, i64 %242, !dbg !1122
  %244 = bitcast i8** %243 to i8*, !dbg !1123
  %245 = getelementptr inbounds i8*, i8** %241, i64 %235, !dbg !1124
  %246 = bitcast i8** %245 to i8*, !dbg !1125
  call void @llvm.dbg.value(metadata i8* %244, metadata !1074, metadata !DIExpression()) #35, !dbg !1126
  call void @llvm.dbg.value(metadata i8* %246, metadata !1079, metadata !DIExpression()) #35, !dbg !1126
  call void @llvm.dbg.value(metadata i64 %234, metadata !1080, metadata !DIExpression()) #35, !dbg !1126
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %244, i8* noundef nonnull align 1 %246, i64 noundef %234, i1 noundef false) #35, !dbg !1128
  %247 = load i8**, i8*** %18, align 8, !dbg !1129, !tbaa !892
  %248 = load i64, i64* %21, align 8, !dbg !1130, !tbaa !898
  br label %249, !dbg !1131

249:                                              ; preds = %238, %226
  %250 = phi i64 [ %248, %238 ], [ %235, %226 ], !dbg !1130
  %251 = phi i8** [ %247, %238 ], [ %229, %226 ], !dbg !1129
  %252 = getelementptr inbounds i8*, i8** %251, i64 %250, !dbg !1132
  %253 = bitcast i8** %252 to i8*, !dbg !1133
  %254 = getelementptr inbounds i8, i8* %253, i64 %234, !dbg !1133
  store i8 %228, i8* %254, align 1, !dbg !1134, !tbaa !655
  %255 = add nsw i64 %234, 1, !dbg !1135
  %256 = inttoptr i64 %255 to i8*, !dbg !1136
  %257 = load i8**, i8*** %18, align 8, !dbg !1137, !tbaa !892
  %258 = load i32, i32* %20, align 8, !dbg !1138, !tbaa !896
  %259 = sext i32 %258 to i64, !dbg !1139
  %260 = getelementptr inbounds i8*, i8** %257, i64 %259, !dbg !1139
  store i8* %256, i8** %260, align 8, !dbg !1140, !tbaa !538
  %261 = getelementptr inbounds i8, i8* %227, i64 1, !dbg !1141
  call void @llvm.dbg.value(metadata i8* %261, metadata !860, metadata !DIExpression()) #35, !dbg !884
  br label %87, !dbg !941

262:                                              ; preds = %87
  %263 = select i1 %81, i1 true, i1 %85, !dbg !1142
  br i1 %263, label %264, label %266, !dbg !1142

264:                                              ; preds = %262
  %265 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.105, i64 0, i64 0), i32 noundef 5) #35, !dbg !1144
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef 0, i8* noundef %265) #35, !dbg !1144
  unreachable, !dbg !1144

266:                                              ; preds = %102, %262, %117
  call void @llvm.dbg.label(metadata !883) #35, !dbg !1145
  call void @llvm.dbg.value(metadata %struct.splitbuf* %10, metadata !1044, metadata !DIExpression()) #35, !dbg !1146
  call void @llvm.dbg.value(metadata i8 0, metadata !1045, metadata !DIExpression()) #35, !dbg !1146
  %267 = load i8**, i8*** %18, align 8, !dbg !1148, !tbaa !892
  %268 = load i32, i32* %20, align 8, !dbg !1149, !tbaa !896
  %269 = sext i32 %268 to i64, !dbg !1150
  %270 = getelementptr inbounds i8*, i8** %267, i64 %269, !dbg !1150
  %271 = load i8*, i8** %270, align 8, !dbg !1150, !tbaa !538
  %272 = ptrtoint i8* %271 to i64, !dbg !1151
  call void @llvm.dbg.value(metadata i64 %272, metadata !1046, metadata !DIExpression()) #35, !dbg !1146
  %273 = load i64, i64* %21, align 8, !dbg !1152, !tbaa !898
  %274 = shl i64 %273, 3, !dbg !1153
  %275 = icmp ugt i64 %274, %272, !dbg !1154
  br i1 %275, label %287, label %276, !dbg !1155

276:                                              ; preds = %266
  call void @llvm.dbg.value(metadata %struct.splitbuf* %10, metadata !1057, metadata !DIExpression()) #35, !dbg !1156
  call void @llvm.dbg.value(metadata i64 %273, metadata !1062, metadata !DIExpression()) #35, !dbg !1156
  call void @llvm.dbg.value(metadata i64 %272, metadata !1063, metadata !DIExpression()) #35, !dbg !1156
  %277 = bitcast i8** %267 to i8*, !dbg !1158
  %278 = call nonnull i8* @xpalloc(i8* noundef %277, i64* noundef nonnull %21, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #35, !dbg !1159
  %279 = bitcast i8* %278 to i8**, !dbg !1159
  store i8* %278, i8** %19, align 8, !dbg !1160, !tbaa !892
  %280 = load i64, i64* %21, align 8, !dbg !1161, !tbaa !898
  %281 = getelementptr inbounds i8*, i8** %279, i64 %280, !dbg !1162
  %282 = bitcast i8** %281 to i8*, !dbg !1163
  %283 = getelementptr inbounds i8*, i8** %279, i64 %273, !dbg !1164
  %284 = bitcast i8** %283 to i8*, !dbg !1165
  call void @llvm.dbg.value(metadata i8* %282, metadata !1074, metadata !DIExpression()) #35, !dbg !1166
  call void @llvm.dbg.value(metadata i8* %284, metadata !1079, metadata !DIExpression()) #35, !dbg !1166
  call void @llvm.dbg.value(metadata i64 %272, metadata !1080, metadata !DIExpression()) #35, !dbg !1166
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %282, i8* noundef nonnull align 1 %284, i64 noundef %272, i1 noundef false) #35, !dbg !1168
  %285 = load i8**, i8*** %18, align 8, !dbg !1169, !tbaa !892
  %286 = load i64, i64* %21, align 8, !dbg !1170, !tbaa !898
  br label %287, !dbg !1171

287:                                              ; preds = %276, %266
  %288 = phi i64 [ %286, %276 ], [ %273, %266 ], !dbg !1170
  %289 = phi i8** [ %285, %276 ], [ %267, %266 ], !dbg !1169
  %290 = getelementptr inbounds i8*, i8** %289, i64 %288, !dbg !1172
  %291 = bitcast i8** %290 to i8*, !dbg !1173
  %292 = getelementptr inbounds i8, i8* %291, i64 %272, !dbg !1173
  store i8 0, i8* %292, align 1, !dbg !1174, !tbaa !655
  %293 = add nsw i64 %272, 1, !dbg !1175
  %294 = inttoptr i64 %293 to i8*, !dbg !1176
  %295 = load i8**, i8*** %18, align 8, !dbg !1177, !tbaa !892
  %296 = load i32, i32* %20, align 8, !dbg !1178, !tbaa !896
  %297 = sext i32 %296 to i64, !dbg !1179
  %298 = getelementptr inbounds i8*, i8** %295, i64 %297, !dbg !1179
  store i8* %294, i8** %298, align 8, !dbg !1180, !tbaa !538
  call void @llvm.dbg.value(metadata %struct.splitbuf* %10, metadata !1181, metadata !DIExpression()) #35, !dbg !1191
  call void @llvm.dbg.value(metadata i32 %296, metadata !1186, metadata !DIExpression()) #35, !dbg !1191
  %299 = load i8**, i8*** %18, align 8, !dbg !1193, !tbaa !892
  call void @llvm.dbg.value(metadata i8** %299, metadata !1187, metadata !DIExpression()) #35, !dbg !1191
  %300 = load i64, i64* %21, align 8, !dbg !1194, !tbaa !898
  %301 = getelementptr inbounds i8*, i8** %299, i64 %300, !dbg !1195
  %302 = bitcast i8** %301 to i8*, !dbg !1196
  call void @llvm.dbg.value(metadata i8* %302, metadata !1188, metadata !DIExpression()) #35, !dbg !1191
  call void @llvm.dbg.value(metadata i32 1, metadata !1189, metadata !DIExpression()) #35, !dbg !1197
  %303 = icmp sgt i32 %296, 1, !dbg !1198
  br i1 %303, label %306, label %304, !dbg !1200

304:                                              ; preds = %287
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #35, !dbg !1201
  call void @llvm.dbg.value(metadata i8** %299, metadata !851, metadata !DIExpression()) #35, !dbg !856
  %305 = load i8*, i8** %26, align 8, !dbg !1202, !tbaa !538
  store i8* %305, i8** %299, align 8, !dbg !1203, !tbaa !538
  call void @llvm.dbg.value(metadata i32 %296, metadata !850, metadata !DIExpression()) #35, !dbg !856
  br label %374, !dbg !1204

306:                                              ; preds = %287
  %307 = zext i32 %296 to i64, !dbg !1198
  %308 = add nsw i64 %307, -1, !dbg !1200
  %309 = icmp ult i64 %308, 4, !dbg !1200
  br i1 %309, label %332, label %310, !dbg !1200

310:                                              ; preds = %306
  %311 = and i64 %308, -4, !dbg !1200
  %312 = or i64 %311, 1, !dbg !1200
  br label %313, !dbg !1200

313:                                              ; preds = %313, %310
  %314 = phi i64 [ 0, %310 ], [ %328, %313 ]
  %315 = or i64 %314, 1
  %316 = getelementptr inbounds i8*, i8** %299, i64 %315, !dbg !1205
  %317 = bitcast i8** %316 to <2 x i8*>*, !dbg !1205
  %318 = load <2 x i8*>, <2 x i8*>* %317, align 8, !dbg !1205, !tbaa !538
  %319 = getelementptr inbounds i8*, i8** %316, i64 2, !dbg !1205
  %320 = bitcast i8** %319 to <2 x i8*>*, !dbg !1205
  %321 = load <2 x i8*>, <2 x i8*>* %320, align 8, !dbg !1205, !tbaa !538
  %322 = ptrtoint <2 x i8*> %318 to <2 x i64>, !dbg !1206
  %323 = ptrtoint <2 x i8*> %321 to <2 x i64>, !dbg !1206
  %324 = getelementptr inbounds i8, i8* %302, <2 x i64> %322, !dbg !1206
  %325 = getelementptr inbounds i8, i8* %302, <2 x i64> %323, !dbg !1206
  %326 = bitcast i8** %316 to <2 x i8*>*, !dbg !1207
  store <2 x i8*> %324, <2 x i8*>* %326, align 8, !dbg !1207, !tbaa !538
  %327 = bitcast i8** %319 to <2 x i8*>*, !dbg !1207
  store <2 x i8*> %325, <2 x i8*>* %327, align 8, !dbg !1207, !tbaa !538
  %328 = add nuw i64 %314, 4
  %329 = icmp eq i64 %328, %311
  br i1 %329, label %330, label %313, !llvm.loop !1208

330:                                              ; preds = %313
  %331 = icmp eq i64 %308, %311, !dbg !1200
  br i1 %331, label %342, label %332, !dbg !1200

332:                                              ; preds = %306, %330
  %333 = phi i64 [ 1, %306 ], [ %312, %330 ]
  br label %334, !dbg !1200

334:                                              ; preds = %332, %334
  %335 = phi i64 [ %340, %334 ], [ %333, %332 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1189, metadata !DIExpression()) #35, !dbg !1197
  %336 = getelementptr inbounds i8*, i8** %299, i64 %335, !dbg !1205
  %337 = load i8*, i8** %336, align 8, !dbg !1205, !tbaa !538
  %338 = ptrtoint i8* %337 to i64, !dbg !1206
  %339 = getelementptr inbounds i8, i8* %302, i64 %338, !dbg !1211
  store i8* %339, i8** %336, align 8, !dbg !1207, !tbaa !538
  %340 = add nuw nsw i64 %335, 1, !dbg !1212
  call void @llvm.dbg.value(metadata i64 %340, metadata !1189, metadata !DIExpression()) #35, !dbg !1197
  %341 = icmp eq i64 %340, %307, !dbg !1198
  br i1 %341, label %342, label %334, !dbg !1200, !llvm.loop !1213

342:                                              ; preds = %334, %330
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #35, !dbg !1201
  call void @llvm.dbg.value(metadata i8** %299, metadata !851, metadata !DIExpression()) #35, !dbg !856
  %343 = load i8*, i8** %26, align 8, !dbg !1202, !tbaa !538
  store i8* %343, i8** %299, align 8, !dbg !1203, !tbaa !538
  %344 = load i1, i1* @dev_debug, align 1, !dbg !1215
  call void @llvm.dbg.value(metadata i32 %296, metadata !850, metadata !DIExpression()) #35, !dbg !856
  br i1 %344, label %345, label %374, !dbg !1204

345:                                              ; preds = %342
  %346 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1216, !tbaa !538
  %347 = call i8* @quote(i8* noundef %71) #35, !dbg !1216
  %348 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %346, i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.96, i64 0, i64 0), i8* noundef %347) #35, !dbg !1216
  %349 = load i1, i1* @dev_debug, align 1, !dbg !1219
  br i1 %349, label %350, label %356, !dbg !1222

350:                                              ; preds = %345
  %351 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1219, !tbaa !538
  %352 = getelementptr inbounds i8*, i8** %299, i64 1, !dbg !1219
  %353 = load i8*, i8** %352, align 8, !dbg !1219, !tbaa !538
  %354 = call i8* @quote(i8* noundef %353) #35, !dbg !1219
  %355 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %351, i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.97, i64 0, i64 0), i8* noundef %354) #35, !dbg !1219
  br label %356, !dbg !1219

356:                                              ; preds = %350, %345
  call void @llvm.dbg.value(metadata i32 2, metadata !852, metadata !DIExpression()) #35, !dbg !1223
  call void @llvm.dbg.value(metadata i32 %296, metadata !850, metadata !DIExpression()) #35, !dbg !856
  %357 = icmp sgt i32 %296, 2, !dbg !1224
  br i1 %357, label %358, label %374, !dbg !1226

358:                                              ; preds = %356
  %359 = load i1, i1* @dev_debug, align 1, !dbg !1227
  br label %360, !dbg !1226

360:                                              ; preds = %370, %358
  %361 = phi i1 [ %359, %358 ], [ %371, %370 ], !dbg !1227
  %362 = phi i64 [ 2, %358 ], [ %372, %370 ]
  call void @llvm.dbg.value(metadata i64 %362, metadata !852, metadata !DIExpression()) #35, !dbg !1223
  br i1 %361, label %363, label %370, !dbg !1230

363:                                              ; preds = %360
  %364 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1227, !tbaa !538
  %365 = getelementptr inbounds i8*, i8** %299, i64 %362, !dbg !1227
  %366 = load i8*, i8** %365, align 8, !dbg !1227, !tbaa !538
  %367 = call i8* @quote(i8* noundef %366) #35, !dbg !1227
  %368 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %364, i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.98, i64 0, i64 0), i8* noundef %367) #35, !dbg !1227
  %369 = load i1, i1* @dev_debug, align 1, !dbg !1227
  br label %370, !dbg !1227

370:                                              ; preds = %363, %360
  %371 = phi i1 [ false, %360 ], [ %369, %363 ]
  %372 = add nuw nsw i64 %362, 1, !dbg !1231
  call void @llvm.dbg.value(metadata i64 %372, metadata !852, metadata !DIExpression()) #35, !dbg !1223
  call void @llvm.dbg.value(metadata i32 %296, metadata !850, metadata !DIExpression()) #35, !dbg !856
  %373 = icmp eq i64 %372, %307, !dbg !1224
  br i1 %373, label %374, label %360, !dbg !1226, !llvm.loop !1232

374:                                              ; preds = %370, %304, %342, %356
  call void @llvm.dbg.value(metadata i32 %296, metadata !850, metadata !DIExpression()) #35, !dbg !856
  %375 = getelementptr inbounds i8*, i8** %299, i64 %297, !dbg !1234
  %376 = bitcast i8** %375 to i8*, !dbg !1235
  %377 = load i32, i32* @optind, align 4, !dbg !1236, !tbaa !646
  %378 = sext i32 %377 to i64, !dbg !1237
  %379 = getelementptr inbounds i8*, i8** %26, i64 %378, !dbg !1237
  %380 = bitcast i8** %379 to i8*, !dbg !1238
  %381 = add nsw i32 %73, 1, !dbg !1239
  %382 = sext i32 %381 to i64, !dbg !1240
  %383 = shl nsw i64 %382, 3, !dbg !1241
  call void @llvm.dbg.value(metadata i8* %376, metadata !1009, metadata !DIExpression()) #35, !dbg !1242
  call void @llvm.dbg.value(metadata i8* %380, metadata !1016, metadata !DIExpression()) #35, !dbg !1242
  call void @llvm.dbg.value(metadata i64 %383, metadata !1017, metadata !DIExpression()) #35, !dbg !1242
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %376, i8* noundef nonnull align 1 %380, i64 noundef %383, i1 noundef false) #35, !dbg !1244
  %384 = add nsw i32 %296, %73, !dbg !1245
  store i32 0, i32* @optind, align 4, !dbg !1246, !tbaa !646
  br label %32, !dbg !1247

385:                                              ; preds = %24, %24, %24, %24, %24, %24
  %386 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #35, !dbg !1248
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %386, i32 noundef %31) #35, !dbg !1248
  %387 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i64 0, i64 0), i32 noundef 5) #35, !dbg !1249
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %387) #35, !dbg !1249
  call void @usage(i32 noundef 125) #41, !dbg !1250
  unreachable, !dbg !1250

388:                                              ; preds = %24
  call void @usage(i32 noundef 0) #41, !dbg !1251
  unreachable, !dbg !1251

389:                                              ; preds = %24
  %390 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1252, !tbaa !538
  %391 = load i8*, i8** @Version, align 8, !dbg !1252, !tbaa !538
  %392 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0)) #35, !dbg !1252
  %393 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0)) #35, !dbg !1252
  %394 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0)) #35, !dbg !1252
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %390, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8* noundef %391, i8* noundef %392, i8* noundef %393, i8* noundef %394, i8* noundef null) #35, !dbg !1252
  call void @exit(i32 noundef 0) #37, !dbg !1252
  unreachable, !dbg !1252

395:                                              ; preds = %24
  call void @usage(i32 noundef 125) #41, !dbg !1253
  unreachable, !dbg !1253

396:                                              ; preds = %24
  %397 = load i32, i32* @optind, align 4, !dbg !1254, !tbaa !646
  call void @llvm.dbg.value(metadata i32 %25, metadata !77, metadata !DIExpression()), !dbg !766
  %398 = icmp slt i32 %397, %25, !dbg !1256
  br i1 %398, label %399, label %407, !dbg !1257

399:                                              ; preds = %396
  call void @llvm.dbg.value(metadata i8** %26, metadata !78, metadata !DIExpression()), !dbg !766
  %400 = sext i32 %397 to i64, !dbg !1258
  %401 = getelementptr inbounds i8*, i8** %26, i64 %400, !dbg !1258
  %402 = load i8*, i8** %401, align 8, !dbg !1258, !tbaa !538
  call void @llvm.dbg.value(metadata i8* %402, metadata !595, metadata !DIExpression()) #35, !dbg !1259
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), metadata !601, metadata !DIExpression()) #35, !dbg !1259
  %403 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %402, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #36, !dbg !1261
  %404 = icmp eq i32 %403, 0, !dbg !1262
  br i1 %404, label %405, label %407, !dbg !1263

405:                                              ; preds = %399
  call void @llvm.dbg.value(metadata i8 1, metadata !79, metadata !DIExpression()), !dbg !766
  %406 = add nsw i32 %397, 1, !dbg !1264
  store i32 %406, i32* @optind, align 4, !dbg !1264, !tbaa !646
  call void @llvm.dbg.value(metadata i8 poison, metadata !79, metadata !DIExpression()), !dbg !766
  br label %408, !dbg !1266

407:                                              ; preds = %399, %396
  call void @llvm.dbg.value(metadata i8 poison, metadata !79, metadata !DIExpression()), !dbg !766
  br i1 %30, label %408, label %414, !dbg !1266

408:                                              ; preds = %405, %407
  %409 = load i1, i1* @dev_debug, align 1, !dbg !1267
  br i1 %409, label %410, label %413, !dbg !1272

410:                                              ; preds = %408
  %411 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1267, !tbaa !538
  %412 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %411, i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0)) #35, !dbg !1267
  br label %413, !dbg !1267

413:                                              ; preds = %410, %408
  store i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @main.dummy_environ, i64 0, i64 0), i8*** @environ, align 8, !dbg !1273, !tbaa !538
  br label %444, !dbg !1274

414:                                              ; preds = %407
  call void @llvm.dbg.value(metadata i64 0, metadata !1275, metadata !DIExpression()) #35, !dbg !1279
  %415 = load i64, i64* @usvars_used, align 8, !dbg !1281, !tbaa !808
  %416 = icmp sgt i64 %415, 0, !dbg !1283
  br i1 %416, label %417, label %444, !dbg !1284

417:                                              ; preds = %414, %440
  %418 = phi i64 [ %441, %440 ], [ 0, %414 ]
  call void @llvm.dbg.value(metadata i64 %418, metadata !1275, metadata !DIExpression()) #35, !dbg !1279
  %419 = load i1, i1* @dev_debug, align 1, !dbg !1285
  br i1 %419, label %420, label %426, !dbg !1289

420:                                              ; preds = %417
  %421 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1285, !tbaa !538
  %422 = load i8**, i8*** @usvars, align 8, !dbg !1285, !tbaa !538
  %423 = getelementptr inbounds i8*, i8** %422, i64 %418, !dbg !1285
  %424 = load i8*, i8** %423, align 8, !dbg !1285, !tbaa !538
  %425 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %421, i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.106, i64 0, i64 0), i8* noundef %424) #35, !dbg !1285
  br label %426, !dbg !1285

426:                                              ; preds = %420, %417
  %427 = load i8**, i8*** @usvars, align 8, !dbg !1290, !tbaa !538
  %428 = getelementptr inbounds i8*, i8** %427, i64 %418, !dbg !1290
  %429 = load i8*, i8** %428, align 8, !dbg !1290, !tbaa !538
  %430 = call i32 @unsetenv(i8* noundef %429) #35, !dbg !1292
  %431 = icmp eq i32 %430, 0, !dbg !1292
  br i1 %431, label %440, label %432, !dbg !1293

432:                                              ; preds = %426
  %433 = tail call i32* @__errno_location() #38, !dbg !1294
  %434 = load i32, i32* %433, align 4, !dbg !1294, !tbaa !646
  %435 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.107, i64 0, i64 0), i32 noundef 5) #35, !dbg !1294
  %436 = load i8**, i8*** @usvars, align 8, !dbg !1294, !tbaa !538
  %437 = getelementptr inbounds i8*, i8** %436, i64 %418, !dbg !1294
  %438 = load i8*, i8** %437, align 8, !dbg !1294, !tbaa !538
  %439 = call i8* @quote(i8* noundef %438) #35, !dbg !1294
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef %434, i8* noundef %435, i8* noundef %439) #35, !dbg !1294
  unreachable, !dbg !1294

440:                                              ; preds = %426
  %441 = add nuw nsw i64 %418, 1, !dbg !1295
  call void @llvm.dbg.value(metadata i64 %441, metadata !1275, metadata !DIExpression()) #35, !dbg !1279
  %442 = load i64, i64* @usvars_used, align 8, !dbg !1281, !tbaa !808
  %443 = icmp slt i64 %441, %442, !dbg !1283
  br i1 %443, label %417, label %444, !dbg !1284, !llvm.loop !1296

444:                                              ; preds = %440, %414, %413
  %445 = load i32, i32* @optind, align 4, !dbg !1298, !tbaa !646
  call void @llvm.dbg.value(metadata i32 %25, metadata !77, metadata !DIExpression()), !dbg !766
  %446 = icmp slt i32 %445, %25, !dbg !1299
  br i1 %446, label %447, label %483, !dbg !1300

447:                                              ; preds = %444, %476
  %448 = phi i32 [ %478, %476 ], [ %445, %444 ]
  call void @llvm.dbg.value(metadata i8** %26, metadata !78, metadata !DIExpression()), !dbg !766
  %449 = sext i32 %448 to i64, !dbg !1301
  %450 = getelementptr inbounds i8*, i8** %26, i64 %449, !dbg !1301
  %451 = load i8*, i8** %450, align 8, !dbg !1301, !tbaa !538
  %452 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %451, i32 noundef 61) #36, !dbg !1302
  call void @llvm.dbg.value(metadata i8* %452, metadata !85, metadata !DIExpression()), !dbg !766
  %453 = icmp eq i8* %452, null, !dbg !1300
  br i1 %453, label %480, label %454, !dbg !1303

454:                                              ; preds = %447
  %455 = load i1, i1* @dev_debug, align 1, !dbg !1304
  br i1 %455, label %456, label %463, !dbg !1308

456:                                              ; preds = %454
  %457 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1304, !tbaa !538
  %458 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %457, i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8* noundef %451) #35, !dbg !1304
  %459 = load i32, i32* @optind, align 4, !dbg !1309, !tbaa !646
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i8*, i8** %26, i64 %460
  %462 = load i8*, i8** %461, align 8, !dbg !1311, !tbaa !538
  br label %463, !dbg !1304

463:                                              ; preds = %456, %454
  %464 = phi i8* [ %462, %456 ], [ %451, %454 ], !dbg !1311
  call void @llvm.dbg.value(metadata i8** %26, metadata !78, metadata !DIExpression()), !dbg !766
  %465 = call i32 @putenv(i8* noundef %464) #35, !dbg !1312
  %466 = icmp eq i32 %465, 0, !dbg !1312
  br i1 %466, label %476, label %467, !dbg !1313

467:                                              ; preds = %463
  store i8 0, i8* %452, align 1, !dbg !1314, !tbaa !655
  %468 = tail call i32* @__errno_location() #38, !dbg !1316
  %469 = load i32, i32* %468, align 4, !dbg !1316, !tbaa !646
  %470 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i32 noundef 5) #35, !dbg !1316
  call void @llvm.dbg.value(metadata i8** %26, metadata !78, metadata !DIExpression()), !dbg !766
  %471 = load i32, i32* @optind, align 4, !dbg !1316, !tbaa !646
  %472 = sext i32 %471 to i64, !dbg !1316
  %473 = getelementptr inbounds i8*, i8** %26, i64 %472, !dbg !1316
  %474 = load i8*, i8** %473, align 8, !dbg !1316, !tbaa !538
  %475 = call i8* @quote(i8* noundef %474) #35, !dbg !1316
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef %469, i8* noundef %470, i8* noundef %475) #35, !dbg !1316
  unreachable, !dbg !1316

476:                                              ; preds = %463
  %477 = load i32, i32* @optind, align 4, !dbg !1317, !tbaa !646
  %478 = add nsw i32 %477, 1, !dbg !1317
  store i32 %478, i32* @optind, align 4, !dbg !1317, !tbaa !646
  call void @llvm.dbg.value(metadata i32 %25, metadata !77, metadata !DIExpression()), !dbg !766
  %479 = icmp slt i32 %478, %25, !dbg !1299
  br i1 %479, label %447, label %483, !dbg !1300, !llvm.loop !1318

480:                                              ; preds = %447
  call void @llvm.dbg.value(metadata i32 %25, metadata !77, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i1 true, metadata !86, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !766
  br i1 %29, label %481, label %504, !dbg !1320

481:                                              ; preds = %480
  %482 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0), i32 noundef 5) #35, !dbg !1322
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %482) #35, !dbg !1322
  call void @usage(i32 noundef 125) #41, !dbg !1324
  unreachable, !dbg !1324

483:                                              ; preds = %476, %444
  call void @llvm.dbg.value(metadata i32 %25, metadata !77, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i1 false, metadata !86, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !766
  %484 = icmp eq i8* %28, null, !dbg !1325
  br i1 %484, label %487, label %485, !dbg !1327

485:                                              ; preds = %483
  %486 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i64 0, i64 0), i32 noundef 5) #35, !dbg !1328
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %486) #35, !dbg !1328
  call void @usage(i32 noundef 125) #41, !dbg !1330
  unreachable, !dbg !1330

487:                                              ; preds = %483
  %488 = icmp eq i8* %27, null, !dbg !1331
  br i1 %488, label %491, label %489, !dbg !1333

489:                                              ; preds = %487
  %490 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i64 0, i64 0), i32 noundef 5) #35, !dbg !1334
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %490) #35, !dbg !1334
  call void @usage(i32 noundef 125) #41, !dbg !1336
  unreachable, !dbg !1336

491:                                              ; preds = %487
  %492 = load i8**, i8*** @environ, align 8, !dbg !1337, !tbaa !538
  call void @llvm.dbg.value(metadata i8** %492, metadata !87, metadata !DIExpression()), !dbg !1338
  %493 = load i8*, i8** %492, align 8, !dbg !1339, !tbaa !538
  %494 = icmp eq i8* %493, null, !dbg !1340
  br i1 %494, label %735, label %495, !dbg !1340

495:                                              ; preds = %491
  %496 = select i1 %29, i32 0, i32 10
  br label %497, !dbg !1340

497:                                              ; preds = %495, %497
  %498 = phi i8* [ %493, %495 ], [ %502, %497 ]
  %499 = phi i8** [ %492, %495 ], [ %500, %497 ]
  call void @llvm.dbg.value(metadata i8** %499, metadata !87, metadata !DIExpression()), !dbg !1338
  %500 = getelementptr inbounds i8*, i8** %499, i64 1, !dbg !1341
  call void @llvm.dbg.value(metadata i8** %500, metadata !87, metadata !DIExpression()), !dbg !1338
  %501 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8* noundef nonnull %498, i32 noundef %496) #35, !dbg !1341
  %502 = load i8*, i8** %500, align 8, !dbg !1339, !tbaa !538
  %503 = icmp eq i8* %502, null, !dbg !1340
  br i1 %503, label %735, label %497, !dbg !1340, !llvm.loop !1342

504:                                              ; preds = %480
  %505 = icmp eq i8* %28, null, !dbg !1325
  %506 = icmp eq i8* %27, null, !dbg !1331
  call void @llvm.dbg.value(metadata i32 1, metadata !1343, metadata !DIExpression()) #35, !dbg !1447
  %507 = bitcast %struct.sigaction* %8 to i8*
  %508 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %8, i64 0, i32 0, i32 0
  %509 = getelementptr inbounds [19 x i8], [19 x i8]* %9, i64 0, i64 0
  br label %510, !dbg !1449

510:                                              ; preds = %559, %504
  %511 = phi i64 [ 1, %504 ], [ %560, %559 ]
  call void @llvm.dbg.value(metadata i64 %511, metadata !1343, metadata !DIExpression()) #35, !dbg !1447
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %507) #35, !dbg !1450
  call void @llvm.dbg.declare(metadata %struct.sigaction* %8, metadata !1347, metadata !DIExpression()) #35, !dbg !1451
  %512 = load i32*, i32** @signals, align 8, !dbg !1452, !tbaa !538
  %513 = getelementptr inbounds i32, i32* %512, i64 %511, !dbg !1452
  %514 = load i32, i32* %513, align 4, !dbg !1452, !tbaa !655
  switch i32 %514, label %515 [
    i32 0, label %559
    i32 2, label %516
    i32 4, label %516
  ], !dbg !1454

515:                                              ; preds = %510
  br label %516, !dbg !1455

516:                                              ; preds = %515, %510, %510
  %517 = phi i1 [ false, %515 ], [ true, %510 ], [ true, %510 ]
  call void @llvm.dbg.value(metadata i1 %517, metadata !1440, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1456
  %518 = add i32 %514, -1, !dbg !1457
  %519 = icmp ult i32 %518, 2, !dbg !1457
  call void @llvm.dbg.value(metadata i1 %519, metadata !1441, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1456
  %520 = trunc i64 %511 to i32, !dbg !1458
  %521 = call i32 @sigaction(i32 noundef %520, %struct.sigaction* noundef null, %struct.sigaction* noundef nonnull %8) #35, !dbg !1458
  call void @llvm.dbg.value(metadata i32 %521, metadata !1442, metadata !DIExpression()) #35, !dbg !1456
  %522 = icmp eq i32 %521, 0, !dbg !1459
  %523 = or i1 %517, %522, !dbg !1461
  br i1 %523, label %529, label %524, !dbg !1461

524:                                              ; preds = %516
  %525 = trunc i64 %511 to i32, !dbg !1458
  %526 = tail call i32* @__errno_location() #38, !dbg !1462
  %527 = load i32, i32* %526, align 4, !dbg !1462, !tbaa !646
  %528 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.108, i64 0, i64 0), i32 noundef 5) #35, !dbg !1462
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef %527, i8* noundef %528, i32 noundef %525) #35, !dbg !1462
  unreachable, !dbg !1462

529:                                              ; preds = %516
  br i1 %522, label %530, label %542, !dbg !1463

530:                                              ; preds = %529
  %531 = select i1 %519, void (i32)* null, void (i32)* inttoptr (i64 1 to void (i32)*), !dbg !1464
  store void (i32)* %531, void (i32)** %508, align 8, !dbg !1467, !tbaa !655
  %532 = call i32 @sigaction(i32 noundef %520, %struct.sigaction* noundef nonnull %8, %struct.sigaction* noundef null) #35, !dbg !1468
  call void @llvm.dbg.value(metadata i32 %532, metadata !1442, metadata !DIExpression()) #35, !dbg !1456
  %533 = icmp eq i32 %532, 0, !dbg !1469
  %534 = or i1 %517, %533, !dbg !1471
  %535 = xor i1 %533, true, !dbg !1471
  %536 = zext i1 %535 to i32, !dbg !1471
  br i1 %534, label %542, label %537, !dbg !1471

537:                                              ; preds = %530
  %538 = trunc i64 %511 to i32, !dbg !1458
  %539 = tail call i32* @__errno_location() #38, !dbg !1472
  %540 = load i32, i32* %539, align 4, !dbg !1472, !tbaa !646
  %541 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.109, i64 0, i64 0), i32 noundef 5) #35, !dbg !1472
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef %540, i8* noundef %541, i32 noundef %538) #35, !dbg !1472
  unreachable, !dbg !1472

542:                                              ; preds = %530, %529
  %543 = phi i32 [ %521, %529 ], [ %536, %530 ], !dbg !1456
  call void @llvm.dbg.value(metadata i32 %543, metadata !1442, metadata !DIExpression()) #35, !dbg !1456
  %544 = load i1, i1* @dev_debug, align 1, !dbg !1473
  br i1 %544, label %545, label %559, !dbg !1474

545:                                              ; preds = %542
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %509) #35, !dbg !1475
  call void @llvm.dbg.declare(metadata [19 x i8]* %9, metadata !1443, metadata !DIExpression()) #35, !dbg !1476
  %546 = call i32 @sig2str(i32 noundef %520, i8* noundef nonnull %509) #35, !dbg !1477
  %547 = icmp eq i32 %546, 0, !dbg !1479
  br i1 %547, label %550, label %548, !dbg !1480

548:                                              ; preds = %545
  %549 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef nonnull %509, i64 noundef 19, i32 noundef 1, i64 noundef 19, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i64 0, i64 0), i32 noundef %520) #35, !dbg !1481
  br label %550, !dbg !1481

550:                                              ; preds = %548, %545
  %551 = load i1, i1* @dev_debug, align 1, !dbg !1482
  br i1 %551, label %552, label %558, !dbg !1485

552:                                              ; preds = %550
  %553 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1482, !tbaa !538
  %554 = select i1 %519, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i64 0, i64 0), !dbg !1482
  %555 = icmp eq i32 %543, 0, !dbg !1482
  %556 = select i1 %555, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.114, i64 0, i64 0), !dbg !1482
  %557 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %553, i32 noundef 1, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.111, i64 0, i64 0), i8* noundef nonnull %509, i32 noundef %520, i8* noundef %554, i8* noundef %556) #35, !dbg !1482
  br label %558, !dbg !1482

558:                                              ; preds = %552, %550
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %509) #35, !dbg !1486
  br label %559, !dbg !1487

559:                                              ; preds = %558, %542, %510
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %507) #35, !dbg !1488
  %560 = add nuw nsw i64 %511, 1, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %560, metadata !1343, metadata !DIExpression()) #35, !dbg !1447
  %561 = icmp eq i64 %560, 65, !dbg !1490
  br i1 %561, label %562, label %510, !dbg !1449, !llvm.loop !1491

562:                                              ; preds = %559
  %563 = load i1, i1* @sig_mask_changed, align 1, !dbg !1493
  br i1 %563, label %564, label %611, !dbg !1495

564:                                              ; preds = %562
  %565 = bitcast %struct.__sigset_t* %6 to i8*, !dbg !1496
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %565) #35, !dbg !1496
  call void @llvm.dbg.declare(metadata %struct.__sigset_t* %6, metadata !1499, metadata !DIExpression()) #35, !dbg !1509
  %566 = call i32 @sigemptyset(%struct.__sigset_t* noundef nonnull %6) #35, !dbg !1510
  %567 = call i32 @sigprocmask(i32 noundef 0, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef nonnull %6) #35, !dbg !1511
  %568 = icmp eq i32 %567, 0, !dbg !1511
  br i1 %568, label %569, label %571, !dbg !1513

569:                                              ; preds = %564
  call void @llvm.dbg.value(metadata i32 1, metadata !1500, metadata !DIExpression()) #35, !dbg !1514
  %570 = getelementptr inbounds [19 x i8], [19 x i8]* %7, i64 0, i64 0
  br label %578, !dbg !1515

571:                                              ; preds = %564
  %572 = tail call i32* @__errno_location() #38, !dbg !1516
  %573 = load i32, i32* %572, align 4, !dbg !1516, !tbaa !646
  %574 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.115, i64 0, i64 0), i32 noundef 5) #35, !dbg !1516
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef %573, i8* noundef %574) #35, !dbg !1516
  unreachable, !dbg !1516

575:                                              ; preds = %603
  %576 = call i32 @sigprocmask(i32 noundef 2, %struct.__sigset_t* noundef nonnull %6, %struct.__sigset_t* noundef null) #35, !dbg !1517
  %577 = icmp eq i32 %576, 0, !dbg !1517
  br i1 %577, label %610, label %606, !dbg !1519

578:                                              ; preds = %603, %569
  %579 = phi i32 [ 1, %569 ], [ %604, %603 ]
  call void @llvm.dbg.value(metadata i32 %579, metadata !1500, metadata !DIExpression()) #35, !dbg !1514
  call void @llvm.dbg.value(metadata i8* null, metadata !1502, metadata !DIExpression()) #35, !dbg !1520
  %580 = call i32 @sigismember(%struct.__sigset_t* noundef nonnull @block_signals, i32 noundef %579) #35, !dbg !1521
  %581 = icmp eq i32 %580, 0, !dbg !1521
  br i1 %581, label %584, label %582, !dbg !1523

582:                                              ; preds = %578
  %583 = call i32 @sigaddset(%struct.__sigset_t* noundef nonnull %6, i32 noundef %579) #35, !dbg !1524
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i64 0, i64 0), metadata !1502, metadata !DIExpression()) #35, !dbg !1520
  br label %589, !dbg !1526

584:                                              ; preds = %578
  %585 = call i32 @sigismember(%struct.__sigset_t* noundef nonnull @unblock_signals, i32 noundef %579) #35, !dbg !1527
  %586 = icmp eq i32 %585, 0, !dbg !1527
  br i1 %586, label %603, label %587, !dbg !1529

587:                                              ; preds = %584
  %588 = call i32 @sigdelset(%struct.__sigset_t* noundef nonnull %6, i32 noundef %579) #35, !dbg !1530
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.117, i64 0, i64 0), metadata !1502, metadata !DIExpression()) #35, !dbg !1520
  br label %589, !dbg !1532

589:                                              ; preds = %587, %582
  %590 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.117, i64 0, i64 0), %587 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i64 0, i64 0), %582 ], !dbg !1520
  call void @llvm.dbg.value(metadata i8* %590, metadata !1502, metadata !DIExpression()) #35, !dbg !1520
  %591 = load i1, i1* @dev_debug, align 1, !dbg !1533
  br i1 %591, label %592, label %603, !dbg !1534

592:                                              ; preds = %589
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %570) #35, !dbg !1535
  call void @llvm.dbg.declare(metadata [19 x i8]* %7, metadata !1505, metadata !DIExpression()) #35, !dbg !1536
  %593 = call i32 @sig2str(i32 noundef %579, i8* noundef nonnull %570) #35, !dbg !1537
  %594 = icmp eq i32 %593, 0, !dbg !1539
  br i1 %594, label %597, label %595, !dbg !1540

595:                                              ; preds = %592
  %596 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef nonnull %570, i64 noundef 19, i32 noundef 1, i64 noundef 19, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i64 0, i64 0), i32 noundef %579) #35, !dbg !1541
  br label %597, !dbg !1541

597:                                              ; preds = %595, %592
  %598 = load i1, i1* @dev_debug, align 1, !dbg !1542
  br i1 %598, label %599, label %602, !dbg !1545

599:                                              ; preds = %597
  %600 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1542, !tbaa !538
  %601 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %600, i32 noundef 1, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.118, i64 0, i64 0), i8* noundef nonnull %570, i32 noundef %579, i8* noundef %590) #35, !dbg !1542
  br label %602, !dbg !1542

602:                                              ; preds = %599, %597
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %570) #35, !dbg !1546
  br label %603, !dbg !1547

603:                                              ; preds = %602, %589, %584
  %604 = add nuw nsw i32 %579, 1, !dbg !1548
  call void @llvm.dbg.value(metadata i32 %604, metadata !1500, metadata !DIExpression()) #35, !dbg !1514
  %605 = icmp eq i32 %604, 65, !dbg !1549
  br i1 %605, label %575, label %578, !dbg !1515, !llvm.loop !1550

606:                                              ; preds = %575
  %607 = tail call i32* @__errno_location() #38, !dbg !1552
  %608 = load i32, i32* %607, align 4, !dbg !1552, !tbaa !646
  %609 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.119, i64 0, i64 0), i32 noundef 5) #35, !dbg !1552
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef %608, i8* noundef %609) #35, !dbg !1552
  unreachable, !dbg !1552

610:                                              ; preds = %575
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %565) #35, !dbg !1553
  br label %611, !dbg !1554

611:                                              ; preds = %610, %562
  %612 = load i1, i1* @report_signal_handling, align 1, !dbg !1555
  br i1 %612, label %613, label %658, !dbg !1557

613:                                              ; preds = %611
  %614 = bitcast %struct.__sigset_t* %3 to i8*, !dbg !1558
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %614) #35, !dbg !1558
  call void @llvm.dbg.declare(metadata %struct.__sigset_t* %3, metadata !1561, metadata !DIExpression()) #35, !dbg !1572
  %615 = call i32 @sigemptyset(%struct.__sigset_t* noundef nonnull %3) #35, !dbg !1573
  %616 = call i32 @sigprocmask(i32 noundef 0, %struct.__sigset_t* noundef null, %struct.__sigset_t* noundef nonnull %3) #35, !dbg !1574
  %617 = icmp eq i32 %616, 0, !dbg !1574
  br i1 %617, label %618, label %622, !dbg !1576

618:                                              ; preds = %613
  %619 = bitcast %struct.sigaction* %4 to i8*
  call void @llvm.dbg.value(metadata i32 1, metadata !1562, metadata !DIExpression()) #35, !dbg !1577
  %620 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i64 0, i32 0, i32 0
  %621 = getelementptr inbounds [19 x i8], [19 x i8]* %5, i64 0, i64 0
  br label %626, !dbg !1578

622:                                              ; preds = %613
  %623 = tail call i32* @__errno_location() #38, !dbg !1579
  %624 = load i32, i32* %623, align 4, !dbg !1579, !tbaa !646
  %625 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.115, i64 0, i64 0), i32 noundef 5) #35, !dbg !1579
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef %624, i8* noundef %625) #35, !dbg !1579
  unreachable, !dbg !1579

626:                                              ; preds = %654, %618
  %627 = phi i32 [ 1, %618 ], [ %655, %654 ]
  call void @llvm.dbg.value(metadata i32 %627, metadata !1562, metadata !DIExpression()) #35, !dbg !1577
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %619) #35, !dbg !1580
  call void @llvm.dbg.declare(metadata %struct.sigaction* %4, metadata !1564, metadata !DIExpression()) #35, !dbg !1581
  %628 = call i32 @sigaction(i32 noundef %627, %struct.sigaction* noundef null, %struct.sigaction* noundef nonnull %4) #35, !dbg !1582
  %629 = icmp eq i32 %628, 0, !dbg !1582
  br i1 %629, label %630, label %654, !dbg !1584

630:                                              ; preds = %626
  %631 = load void (i32)*, void (i32)** %620, align 8, !dbg !1585, !tbaa !655
  %632 = icmp eq void (i32)* %631, inttoptr (i64 1 to void (i32)*), !dbg !1586
  %633 = select i1 %632, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %633, metadata !1567, metadata !DIExpression()) #35, !dbg !1588
  %634 = call i32 @sigismember(%struct.__sigset_t* noundef nonnull %3, i32 noundef %627) #35, !dbg !1589
  %635 = icmp eq i32 %634, 0, !dbg !1589
  %636 = select i1 %635, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i64 0, i64 0), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %636, metadata !1568, metadata !DIExpression()) #35, !dbg !1588
  %637 = load i8, i8* %633, align 1, !dbg !1590, !tbaa !655
  %638 = icmp eq i8 %637, 0, !dbg !1590
  %639 = load i8, i8* %636, align 1, !dbg !1591
  %640 = icmp ne i8 %639, 0, !dbg !1591
  %641 = xor i1 %638, true, !dbg !1591
  %642 = select i1 %641, i1 %640, i1 false, !dbg !1591
  %643 = select i1 %642, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), !dbg !1590
  call void @llvm.dbg.value(metadata i8* %643, metadata !1569, metadata !DIExpression()) #35, !dbg !1588
  %644 = icmp eq i8 %639, 0
  %645 = select i1 %638, i1 %644, i1 false, !dbg !1592
  br i1 %645, label %654, label %646, !dbg !1592

646:                                              ; preds = %630
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %621) #35, !dbg !1594
  call void @llvm.dbg.declare(metadata [19 x i8]* %5, metadata !1570, metadata !DIExpression()) #35, !dbg !1595
  %647 = call i32 @sig2str(i32 noundef %627, i8* noundef nonnull %621) #35, !dbg !1596
  %648 = icmp eq i32 %647, 0, !dbg !1598
  br i1 %648, label %651, label %649, !dbg !1599

649:                                              ; preds = %646
  %650 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef nonnull %621, i64 noundef 19, i32 noundef 1, i64 noundef 19, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i64 0, i64 0), i32 noundef %627) #35, !dbg !1600
  br label %651, !dbg !1600

651:                                              ; preds = %649, %646
  %652 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1601, !tbaa !538
  %653 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %652, i32 noundef 1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.120, i64 0, i64 0), i8* noundef nonnull %621, i32 noundef %627, i8* noundef nonnull %636, i8* noundef %643, i8* noundef nonnull %633) #35, !dbg !1601
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %621) #35, !dbg !1602
  br label %654, !dbg !1602

654:                                              ; preds = %651, %630, %626
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %619) #35, !dbg !1602
  %655 = add nuw nsw i32 %627, 1, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %655, metadata !1562, metadata !DIExpression()) #35, !dbg !1577
  %656 = icmp eq i32 %655, 65, !dbg !1604
  br i1 %656, label %657, label %626, !dbg !1578, !llvm.loop !1605

657:                                              ; preds = %654
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %614) #35, !dbg !1607
  br label %658, !dbg !1608

658:                                              ; preds = %657, %611
  br i1 %505, label %673, label %659, !dbg !1609

659:                                              ; preds = %658
  %660 = load i1, i1* @dev_debug, align 1, !dbg !1610
  br i1 %660, label %661, label %665, !dbg !1615

661:                                              ; preds = %659
  %662 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1610, !tbaa !538
  %663 = call i8* @quotearg_style(i32 noundef 4, i8* noundef nonnull %28) #35, !dbg !1610
  %664 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %662, i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8* noundef %663) #35, !dbg !1610
  br label %665, !dbg !1610

665:                                              ; preds = %661, %659
  %666 = call i32 @chdir(i8* noundef nonnull %28) #35, !dbg !1616
  %667 = icmp eq i32 %666, 0, !dbg !1618
  br i1 %667, label %673, label %668, !dbg !1619

668:                                              ; preds = %665
  %669 = tail call i32* @__errno_location() #38, !dbg !1620
  %670 = load i32, i32* %669, align 4, !dbg !1620, !tbaa !646
  %671 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i32 noundef 5) #35, !dbg !1620
  %672 = call i8* @quotearg_style(i32 noundef 4, i8* noundef nonnull %28) #35, !dbg !1620
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef %670, i8* noundef %671, i8* noundef %672) #35, !dbg !1620
  unreachable, !dbg !1620

673:                                              ; preds = %665, %658
  call void @llvm.dbg.value(metadata i8** %26, metadata !78, metadata !DIExpression()), !dbg !766
  %674 = load i32, i32* @optind, align 4, !dbg !1621, !tbaa !646
  %675 = sext i32 %674 to i64, !dbg !1622
  %676 = getelementptr inbounds i8*, i8** %26, i64 %675, !dbg !1622
  %677 = load i8*, i8** %676, align 8, !dbg !1622, !tbaa !538
  call void @llvm.dbg.value(metadata i8* %677, metadata !92, metadata !DIExpression()), !dbg !766
  br i1 %506, label %690, label %678, !dbg !1623

678:                                              ; preds = %673
  %679 = load i1, i1* @dev_debug, align 1, !dbg !1624
  br i1 %679, label %680, label %686, !dbg !1629

680:                                              ; preds = %678
  %681 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1624, !tbaa !538
  %682 = call i8* @quotearg_style(i32 noundef 4, i8* noundef nonnull %27) #35, !dbg !1624
  %683 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %681, i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i8* noundef %682) #35, !dbg !1624
  %684 = load i32, i32* @optind, align 4, !dbg !1630, !tbaa !646
  %685 = sext i32 %684 to i64, !dbg !1631
  br label %686, !dbg !1624

686:                                              ; preds = %680, %678
  %687 = phi i64 [ %685, %680 ], [ %675, %678 ], !dbg !1631
  %688 = phi i32 [ %684, %680 ], [ %674, %678 ], !dbg !1630
  call void @llvm.dbg.value(metadata i8** %26, metadata !78, metadata !DIExpression()), !dbg !766
  %689 = getelementptr inbounds i8*, i8** %26, i64 %687, !dbg !1631
  store i8* %27, i8** %689, align 8, !dbg !1632, !tbaa !538
  br label %690, !dbg !1633

690:                                              ; preds = %686, %673
  %691 = phi i32 [ %688, %686 ], [ %674, %673 ]
  %692 = load i1, i1* @dev_debug, align 1, !dbg !1634
  br i1 %692, label %693, label %721, !dbg !1635

693:                                              ; preds = %690
  %694 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1636, !tbaa !538
  %695 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %694, i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* noundef %677) #35, !dbg !1636
  %696 = load i32, i32* @optind, align 4, !dbg !1639, !tbaa !646
  call void @llvm.dbg.value(metadata i32 %696, metadata !93, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i32 %25, metadata !77, metadata !DIExpression()), !dbg !766
  %697 = icmp slt i32 %696, %25, !dbg !1641
  br i1 %697, label %698, label %721, !dbg !1643

698:                                              ; preds = %693
  %699 = sext i32 %696 to i64, !dbg !1643
  %700 = load i1, i1* @dev_debug, align 1, !dbg !1644
  br label %701, !dbg !1643

701:                                              ; preds = %698, %714
  %702 = phi i1 [ %700, %698 ], [ %715, %714 ], !dbg !1644
  %703 = phi i64 [ %699, %698 ], [ %716, %714 ]
  call void @llvm.dbg.value(metadata i64 %703, metadata !93, metadata !DIExpression()), !dbg !1640
  br i1 %702, label %704, label %714, !dbg !1647

704:                                              ; preds = %701
  %705 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1644, !tbaa !538
  %706 = load i32, i32* @optind, align 4, !dbg !1644, !tbaa !646
  %707 = trunc i64 %703 to i32, !dbg !1644
  %708 = sub nsw i32 %707, %706, !dbg !1644
  call void @llvm.dbg.value(metadata i8** %26, metadata !78, metadata !DIExpression()), !dbg !766
  %709 = getelementptr inbounds i8*, i8** %26, i64 %703, !dbg !1644
  %710 = load i8*, i8** %709, align 8, !dbg !1644, !tbaa !538
  %711 = call i8* @quote(i8* noundef %710) #35, !dbg !1644
  %712 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %705, i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0), i32 noundef %708, i8* noundef %711) #35, !dbg !1644
  %713 = load i1, i1* @dev_debug, align 1, !dbg !1644
  br label %714, !dbg !1644

714:                                              ; preds = %701, %704
  %715 = phi i1 [ false, %701 ], [ %713, %704 ]
  %716 = add nsw i64 %703, 1, !dbg !1648
  call void @llvm.dbg.value(metadata i64 %716, metadata !93, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i32 %25, metadata !77, metadata !DIExpression()), !dbg !766
  %717 = trunc i64 %716 to i32, !dbg !1641
  %718 = icmp eq i32 %25, %717, !dbg !1641
  br i1 %718, label %719, label %701, !dbg !1643, !llvm.loop !1649

719:                                              ; preds = %714
  %720 = load i32, i32* @optind, align 4, !dbg !1651, !tbaa !646
  br label %721, !dbg !1651

721:                                              ; preds = %719, %693, %690
  %722 = phi i32 [ %720, %719 ], [ %696, %693 ], [ %691, %690 ], !dbg !1651
  call void @llvm.dbg.value(metadata i8** %26, metadata !78, metadata !DIExpression()), !dbg !766
  %723 = sext i32 %722 to i64, !dbg !1652
  %724 = getelementptr inbounds i8*, i8** %26, i64 %723, !dbg !1652
  %725 = call i32 @execvp(i8* noundef %677, i8** noundef %724) #35, !dbg !1653
  %726 = tail call i32* @__errno_location() #38, !dbg !1654
  %727 = load i32, i32* %726, align 4, !dbg !1654, !tbaa !646
  %728 = icmp eq i32 %727, 2, !dbg !1655
  call void @llvm.dbg.value(metadata i32 undef, metadata !97, metadata !DIExpression()), !dbg !766
  %729 = call i8* @quote(i8* noundef %677) #35, !dbg !1656
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %727, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i8* noundef %729) #35, !dbg !1656
  br i1 %728, label %730, label %735, !dbg !1657

730:                                              ; preds = %721
  %731 = call i8* @strpbrk(i8* noundef %677, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0)) #36, !dbg !1659
  %732 = icmp eq i8* %731, null, !dbg !1659
  br i1 %732, label %735, label %733, !dbg !1660

733:                                              ; preds = %730
  %734 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i64 0, i64 0), i32 noundef 5) #35, !dbg !1661
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %734) #35, !dbg !1661
  br label %735, !dbg !1661

735:                                              ; preds = %497, %491, %721, %730, %733
  %736 = phi i32 [ 127, %733 ], [ 127, %730 ], [ 126, %721 ], [ 0, %491 ], [ 0, %497 ], !dbg !766
  ret i32 %736, !dbg !1662
}

; Function Attrs: nounwind
declare !dbg !1663 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1666 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1667 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nounwind
declare !dbg !1670 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @parse_signal_action_params(i8* noundef %0, i1 noundef %1) unnamed_addr #12 !dbg !1674 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1678, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i1 %1, metadata !1679, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1688
  %3 = icmp eq i8* %0, null, !dbg !1689
  br i1 %3, label %4, label %41, !dbg !1690

4:                                                ; preds = %2
  %5 = select i1 %1, i32 2, i32 4
  %6 = load i32*, i32** @signals, align 8, !tbaa !538
  call void @llvm.dbg.value(metadata i32 1, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 1, metadata !1680, metadata !DIExpression()), !dbg !1691
  %7 = getelementptr inbounds i32, i32* %6, i64 1, !dbg !1692
  call void @llvm.dbg.value(metadata i64 2, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 2, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 3, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 3, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 4, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 4, metadata !1680, metadata !DIExpression()), !dbg !1691
  %8 = insertelement <4 x i32> poison, i32 %5, i64 0, !dbg !1694
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !1694
  %10 = bitcast i32* %7 to <4 x i32>*, !dbg !1694
  store <4 x i32> %9, <4 x i32>* %10, align 4, !dbg !1694, !tbaa !655
  call void @llvm.dbg.value(metadata i64 5, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 5, metadata !1680, metadata !DIExpression()), !dbg !1691
  %11 = getelementptr inbounds i32, i32* %6, i64 5, !dbg !1692
  call void @llvm.dbg.value(metadata i64 6, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 6, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 7, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 7, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 8, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 8, metadata !1680, metadata !DIExpression()), !dbg !1691
  %12 = bitcast i32* %11 to <4 x i32>*, !dbg !1694
  store <4 x i32> %9, <4 x i32>* %12, align 4, !dbg !1694, !tbaa !655
  call void @llvm.dbg.value(metadata i64 9, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 9, metadata !1680, metadata !DIExpression()), !dbg !1691
  %13 = getelementptr inbounds i32, i32* %6, i64 9, !dbg !1692
  call void @llvm.dbg.value(metadata i64 10, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 10, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 11, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 11, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 12, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 12, metadata !1680, metadata !DIExpression()), !dbg !1691
  %14 = bitcast i32* %13 to <4 x i32>*, !dbg !1694
  store <4 x i32> %9, <4 x i32>* %14, align 4, !dbg !1694, !tbaa !655
  call void @llvm.dbg.value(metadata i64 13, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 13, metadata !1680, metadata !DIExpression()), !dbg !1691
  %15 = getelementptr inbounds i32, i32* %6, i64 13, !dbg !1692
  call void @llvm.dbg.value(metadata i64 14, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 14, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 15, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 15, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 16, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 16, metadata !1680, metadata !DIExpression()), !dbg !1691
  %16 = bitcast i32* %15 to <4 x i32>*, !dbg !1694
  store <4 x i32> %9, <4 x i32>* %16, align 4, !dbg !1694, !tbaa !655
  call void @llvm.dbg.value(metadata i64 17, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 17, metadata !1680, metadata !DIExpression()), !dbg !1691
  %17 = getelementptr inbounds i32, i32* %6, i64 17, !dbg !1692
  call void @llvm.dbg.value(metadata i64 18, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 18, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 19, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 19, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 20, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 20, metadata !1680, metadata !DIExpression()), !dbg !1691
  %18 = bitcast i32* %17 to <4 x i32>*, !dbg !1694
  store <4 x i32> %9, <4 x i32>* %18, align 4, !dbg !1694, !tbaa !655
  call void @llvm.dbg.value(metadata i64 21, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 21, metadata !1680, metadata !DIExpression()), !dbg !1691
  %19 = getelementptr inbounds i32, i32* %6, i64 21, !dbg !1692
  call void @llvm.dbg.value(metadata i64 22, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 22, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 23, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 23, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 24, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 24, metadata !1680, metadata !DIExpression()), !dbg !1691
  %20 = bitcast i32* %19 to <4 x i32>*, !dbg !1694
  store <4 x i32> %9, <4 x i32>* %20, align 4, !dbg !1694, !tbaa !655
  call void @llvm.dbg.value(metadata i64 25, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 25, metadata !1680, metadata !DIExpression()), !dbg !1691
  %21 = getelementptr inbounds i32, i32* %6, i64 25, !dbg !1692
  call void @llvm.dbg.value(metadata i64 26, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 26, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 27, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 27, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 28, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 28, metadata !1680, metadata !DIExpression()), !dbg !1691
  %22 = bitcast i32* %21 to <4 x i32>*, !dbg !1694
  store <4 x i32> %9, <4 x i32>* %22, align 4, !dbg !1694, !tbaa !655
  call void @llvm.dbg.value(metadata i64 29, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 29, metadata !1680, metadata !DIExpression()), !dbg !1691
  %23 = getelementptr inbounds i32, i32* %6, i64 29, !dbg !1692
  call void @llvm.dbg.value(metadata i64 30, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 30, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 31, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 31, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 32, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 32, metadata !1680, metadata !DIExpression()), !dbg !1691
  %24 = bitcast i32* %23 to <4 x i32>*, !dbg !1694
  store <4 x i32> %9, <4 x i32>* %24, align 4, !dbg !1694, !tbaa !655
  call void @llvm.dbg.value(metadata i64 33, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 33, metadata !1680, metadata !DIExpression()), !dbg !1691
  %25 = getelementptr inbounds i32, i32* %6, i64 33, !dbg !1692
  call void @llvm.dbg.value(metadata i64 34, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 34, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 35, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 35, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 36, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 36, metadata !1680, metadata !DIExpression()), !dbg !1691
  %26 = bitcast i32* %25 to <4 x i32>*, !dbg !1694
  store <4 x i32> %9, <4 x i32>* %26, align 4, !dbg !1694, !tbaa !655
  call void @llvm.dbg.value(metadata i64 37, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 37, metadata !1680, metadata !DIExpression()), !dbg !1691
  %27 = getelementptr inbounds i32, i32* %6, i64 37, !dbg !1692
  call void @llvm.dbg.value(metadata i64 38, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 38, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 39, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 39, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 40, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 40, metadata !1680, metadata !DIExpression()), !dbg !1691
  %28 = bitcast i32* %27 to <4 x i32>*, !dbg !1694
  store <4 x i32> %9, <4 x i32>* %28, align 4, !dbg !1694, !tbaa !655
  call void @llvm.dbg.value(metadata i64 41, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 41, metadata !1680, metadata !DIExpression()), !dbg !1691
  %29 = getelementptr inbounds i32, i32* %6, i64 41, !dbg !1692
  call void @llvm.dbg.value(metadata i64 42, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 42, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 43, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 43, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 44, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 44, metadata !1680, metadata !DIExpression()), !dbg !1691
  %30 = bitcast i32* %29 to <4 x i32>*, !dbg !1694
  store <4 x i32> %9, <4 x i32>* %30, align 4, !dbg !1694, !tbaa !655
  call void @llvm.dbg.value(metadata i64 45, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 45, metadata !1680, metadata !DIExpression()), !dbg !1691
  %31 = getelementptr inbounds i32, i32* %6, i64 45, !dbg !1692
  call void @llvm.dbg.value(metadata i64 46, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 46, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 47, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 47, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 48, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 48, metadata !1680, metadata !DIExpression()), !dbg !1691
  %32 = bitcast i32* %31 to <4 x i32>*, !dbg !1694
  store <4 x i32> %9, <4 x i32>* %32, align 4, !dbg !1694, !tbaa !655
  call void @llvm.dbg.value(metadata i64 49, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 49, metadata !1680, metadata !DIExpression()), !dbg !1691
  %33 = getelementptr inbounds i32, i32* %6, i64 49, !dbg !1692
  call void @llvm.dbg.value(metadata i64 50, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 50, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 51, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 51, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 52, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 52, metadata !1680, metadata !DIExpression()), !dbg !1691
  %34 = bitcast i32* %33 to <4 x i32>*, !dbg !1694
  store <4 x i32> %9, <4 x i32>* %34, align 4, !dbg !1694, !tbaa !655
  call void @llvm.dbg.value(metadata i64 53, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 53, metadata !1680, metadata !DIExpression()), !dbg !1691
  %35 = getelementptr inbounds i32, i32* %6, i64 53, !dbg !1692
  call void @llvm.dbg.value(metadata i64 54, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 54, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 55, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 55, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 56, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 56, metadata !1680, metadata !DIExpression()), !dbg !1691
  %36 = bitcast i32* %35 to <4 x i32>*, !dbg !1694
  store <4 x i32> %9, <4 x i32>* %36, align 4, !dbg !1694, !tbaa !655
  call void @llvm.dbg.value(metadata i64 57, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 57, metadata !1680, metadata !DIExpression()), !dbg !1691
  %37 = getelementptr inbounds i32, i32* %6, i64 57, !dbg !1692
  call void @llvm.dbg.value(metadata i64 58, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 58, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 59, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 59, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 60, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 60, metadata !1680, metadata !DIExpression()), !dbg !1691
  %38 = bitcast i32* %37 to <4 x i32>*, !dbg !1694
  store <4 x i32> %9, <4 x i32>* %38, align 4, !dbg !1694, !tbaa !655
  call void @llvm.dbg.value(metadata i64 61, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 61, metadata !1680, metadata !DIExpression()), !dbg !1691
  %39 = getelementptr inbounds i32, i32* %6, i64 61, !dbg !1692
  call void @llvm.dbg.value(metadata i64 62, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 62, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 63, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 63, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 64, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 64, metadata !1680, metadata !DIExpression()), !dbg !1691
  %40 = bitcast i32* %39 to <4 x i32>*, !dbg !1694
  store <4 x i32> %9, <4 x i32>* %40, align 4, !dbg !1694, !tbaa !655
  call void @llvm.dbg.value(metadata i64 65, metadata !1680, metadata !DIExpression()), !dbg !1691
  br label %65, !dbg !1695

41:                                               ; preds = %2
  %42 = tail call noalias nonnull i8* @xstrdup(i8* noundef nonnull %0) #35, !dbg !1696
  call void @llvm.dbg.value(metadata i8* %42, metadata !1684, metadata !DIExpression()), !dbg !1688
  %43 = tail call i8* @strtok(i8* noundef nonnull %42, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93, i64 0, i64 0)) #35, !dbg !1697
  call void @llvm.dbg.value(metadata i8* %43, metadata !1685, metadata !DIExpression()), !dbg !1688
  %44 = icmp eq i8* %43, null, !dbg !1698
  br i1 %44, label %64, label %45, !dbg !1698

45:                                               ; preds = %41
  %46 = select i1 %1, i32 1, i32 3
  br label %47, !dbg !1698

47:                                               ; preds = %45, %58
  %48 = phi i8* [ %43, %45 ], [ %62, %58 ]
  call void @llvm.dbg.value(metadata i8* %48, metadata !1685, metadata !DIExpression()), !dbg !1688
  %49 = tail call i32 @operand2sig(i8* noundef nonnull %48) #35, !dbg !1699
  call void @llvm.dbg.value(metadata i32 %49, metadata !1686, metadata !DIExpression()), !dbg !1700
  %50 = icmp eq i32 %49, 0, !dbg !1701
  br i1 %50, label %51, label %54, !dbg !1703

51:                                               ; preds = %47
  %52 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.94, i64 0, i64 0), i32 noundef 5) #35, !dbg !1704
  %53 = tail call i8* @quote(i8* noundef nonnull %48) #35, !dbg !1704
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %52, i8* noundef %53) #35, !dbg !1704
  br label %56, !dbg !1705

54:                                               ; preds = %47
  %55 = icmp slt i32 %49, 1, !dbg !1706
  br i1 %55, label %56, label %58, !dbg !1705

56:                                               ; preds = %54, %51
  %57 = load volatile i32, i32* @exit_failure, align 4, !dbg !1708, !tbaa !646
  tail call void @usage(i32 noundef %57) #41, !dbg !1709
  unreachable, !dbg !1709

58:                                               ; preds = %54
  %59 = load i32*, i32** @signals, align 8, !dbg !1710, !tbaa !538
  %60 = zext i32 %49 to i64, !dbg !1710
  %61 = getelementptr inbounds i32, i32* %59, i64 %60, !dbg !1710
  store i32 %46, i32* %61, align 4, !dbg !1711, !tbaa !655
  %62 = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93, i64 0, i64 0)) #35, !dbg !1712
  call void @llvm.dbg.value(metadata i8* %62, metadata !1685, metadata !DIExpression()), !dbg !1688
  %63 = icmp eq i8* %62, null, !dbg !1698
  br i1 %63, label %64, label %47, !dbg !1698, !llvm.loop !1713

64:                                               ; preds = %58, %41
  tail call void @free(i8* noundef nonnull %42) #35, !dbg !1715
  br label %65

65:                                               ; preds = %4, %64
  ret void, !dbg !1695
}

; Function Attrs: nounwind uwtable
define internal fastcc void @parse_block_signal_params(i8* noundef %0, i1 noundef %1) unnamed_addr #12 !dbg !1716 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1718, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i1 %1, metadata !1719, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1724
  %3 = icmp eq i8* %0, null, !dbg !1725
  br i1 %3, label %9, label %4, !dbg !1727

4:                                                ; preds = %2
  %5 = load i1, i1* @sig_mask_changed, align 1, !dbg !1728
  br i1 %5, label %14, label %6, !dbg !1730

6:                                                ; preds = %4
  %7 = tail call i32 @sigemptyset(%struct.__sigset_t* noundef nonnull @block_signals) #35, !dbg !1731
  %8 = tail call i32 @sigemptyset(%struct.__sigset_t* noundef nonnull @unblock_signals) #35, !dbg !1733
  br label %14, !dbg !1734

9:                                                ; preds = %2
  %10 = select i1 %1, %struct.__sigset_t* @block_signals, %struct.__sigset_t* @unblock_signals, !dbg !1735
  %11 = tail call i32 @sigfillset(%struct.__sigset_t* noundef nonnull %10) #35, !dbg !1737
  %12 = select i1 %1, %struct.__sigset_t* @unblock_signals, %struct.__sigset_t* @block_signals, !dbg !1738
  %13 = tail call i32 @sigemptyset(%struct.__sigset_t* noundef nonnull %12) #35, !dbg !1739
  store i1 true, i1* @sig_mask_changed, align 1, !dbg !1740
  br label %46, !dbg !1741

14:                                               ; preds = %4, %6
  store i1 true, i1* @sig_mask_changed, align 1, !dbg !1740
  %15 = tail call noalias nonnull i8* @xstrdup(i8* noundef nonnull %0) #35, !dbg !1742
  call void @llvm.dbg.value(metadata i8* %15, metadata !1720, metadata !DIExpression()), !dbg !1724
  %16 = tail call i8* @strtok(i8* noundef nonnull %15, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93, i64 0, i64 0)) #35, !dbg !1743
  call void @llvm.dbg.value(metadata i8* %16, metadata !1721, metadata !DIExpression()), !dbg !1724
  %17 = icmp eq i8* %16, null, !dbg !1744
  br i1 %17, label %45, label %18, !dbg !1744

18:                                               ; preds = %14
  %19 = select i1 %1, %struct.__sigset_t* @block_signals, %struct.__sigset_t* @unblock_signals
  %20 = select i1 %1, %struct.__sigset_t* @unblock_signals, %struct.__sigset_t* @block_signals
  br label %21, !dbg !1744

21:                                               ; preds = %18, %42
  %22 = phi i8* [ %16, %18 ], [ %43, %42 ]
  call void @llvm.dbg.value(metadata i8* %22, metadata !1721, metadata !DIExpression()), !dbg !1724
  %23 = tail call i32 @operand2sig(i8* noundef nonnull %22) #35, !dbg !1745
  call void @llvm.dbg.value(metadata i32 %23, metadata !1722, metadata !DIExpression()), !dbg !1746
  %24 = icmp eq i32 %23, 0, !dbg !1747
  br i1 %24, label %25, label %28, !dbg !1749

25:                                               ; preds = %21
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.94, i64 0, i64 0), i32 noundef 5) #35, !dbg !1750
  %27 = tail call i8* @quote(i8* noundef nonnull %22) #35, !dbg !1750
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %26, i8* noundef %27) #35, !dbg !1750
  br label %30, !dbg !1751

28:                                               ; preds = %21
  %29 = icmp slt i32 %23, 1, !dbg !1752
  br i1 %29, label %30, label %32, !dbg !1751

30:                                               ; preds = %28, %25
  %31 = load volatile i32, i32* @exit_failure, align 4, !dbg !1754, !tbaa !646
  tail call void @usage(i32 noundef %31) #41, !dbg !1755
  unreachable, !dbg !1755

32:                                               ; preds = %28
  %33 = tail call i32 @sigaddset(%struct.__sigset_t* noundef nonnull %19, i32 noundef %23) #35, !dbg !1756
  %34 = icmp eq i32 %33, -1, !dbg !1758
  br i1 %34, label %35, label %40, !dbg !1759

35:                                               ; preds = %32
  br i1 %1, label %36, label %42, !dbg !1760

36:                                               ; preds = %35
  %37 = tail call i32* @__errno_location() #38, !dbg !1762
  %38 = load i32, i32* %37, align 4, !dbg !1762, !tbaa !646
  %39 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.95, i64 0, i64 0), i32 noundef 5) #35, !dbg !1762
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef %38, i8* noundef %39, i32 noundef %23) #35, !dbg !1762
  unreachable, !dbg !1762

40:                                               ; preds = %32
  %41 = tail call i32 @sigdelset(%struct.__sigset_t* noundef nonnull %20, i32 noundef %23) #35, !dbg !1764
  br label %42

42:                                               ; preds = %35, %40
  %43 = tail call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93, i64 0, i64 0)) #35, !dbg !1765
  call void @llvm.dbg.value(metadata i8* %43, metadata !1721, metadata !DIExpression()), !dbg !1724
  %44 = icmp eq i8* %43, null, !dbg !1744
  br i1 %44, label %45, label %21, !dbg !1744, !llvm.loop !1766

45:                                               ; preds = %42, %14
  tail call void @free(i8* noundef nonnull %15) #35, !dbg !1768
  br label %46

46:                                               ; preds = %9, %45
  ret void, !dbg !1769
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_start_new_arg(%struct.splitbuf* noundef %0) unnamed_addr #12 !dbg !1770 {
  call void @llvm.dbg.value(metadata %struct.splitbuf* %0, metadata !1772, metadata !DIExpression()), !dbg !1776
  %2 = getelementptr inbounds %struct.splitbuf, %struct.splitbuf* %0, i64 0, i32 4, !dbg !1777
  %3 = load i8, i8* %2, align 4, !dbg !1777, !tbaa !902, !range !925
  %4 = icmp eq i8 %3, 0, !dbg !1777
  br i1 %4, label %69, label %5, !dbg !1778

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.splitbuf* %0, metadata !1044, metadata !DIExpression()) #35, !dbg !1779
  call void @llvm.dbg.value(metadata i8 0, metadata !1045, metadata !DIExpression()) #35, !dbg !1779
  %6 = getelementptr inbounds %struct.splitbuf, %struct.splitbuf* %0, i64 0, i32 0, !dbg !1781
  %7 = load i8**, i8*** %6, align 8, !dbg !1781, !tbaa !892
  %8 = getelementptr inbounds %struct.splitbuf, %struct.splitbuf* %0, i64 0, i32 1, !dbg !1782
  %9 = load i32, i32* %8, align 8, !dbg !1782, !tbaa !896
  %10 = sext i32 %9 to i64, !dbg !1783
  %11 = getelementptr inbounds i8*, i8** %7, i64 %10, !dbg !1783
  %12 = load i8*, i8** %11, align 8, !dbg !1783, !tbaa !538
  %13 = ptrtoint i8* %12 to i64, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %13, metadata !1046, metadata !DIExpression()) #35, !dbg !1779
  %14 = getelementptr inbounds %struct.splitbuf, %struct.splitbuf* %0, i64 0, i32 2, !dbg !1785
  %15 = load i64, i64* %14, align 8, !dbg !1785, !tbaa !898
  %16 = shl i64 %15, 3, !dbg !1786
  %17 = icmp ugt i64 %16, %13, !dbg !1787
  br i1 %17, label %30, label %18, !dbg !1788

18:                                               ; preds = %5
  call void @llvm.dbg.value(metadata %struct.splitbuf* %0, metadata !1057, metadata !DIExpression()) #35, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %15, metadata !1062, metadata !DIExpression()) #35, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %13, metadata !1063, metadata !DIExpression()) #35, !dbg !1789
  %19 = bitcast i8** %7 to i8*, !dbg !1791
  %20 = tail call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %14, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #35, !dbg !1792
  %21 = bitcast i8* %20 to i8**, !dbg !1792
  %22 = bitcast %struct.splitbuf* %0 to i8**, !dbg !1793
  store i8* %20, i8** %22, align 8, !dbg !1793, !tbaa !892
  %23 = load i64, i64* %14, align 8, !dbg !1794, !tbaa !898
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23, !dbg !1795
  %25 = bitcast i8** %24 to i8*, !dbg !1796
  %26 = getelementptr inbounds i8*, i8** %21, i64 %15, !dbg !1797
  %27 = bitcast i8** %26 to i8*, !dbg !1798
  call void @llvm.dbg.value(metadata i8* %25, metadata !1074, metadata !DIExpression()) #35, !dbg !1799
  call void @llvm.dbg.value(metadata i8* %27, metadata !1079, metadata !DIExpression()) #35, !dbg !1799
  call void @llvm.dbg.value(metadata i64 %13, metadata !1080, metadata !DIExpression()) #35, !dbg !1799
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %25, i8* noundef nonnull align 1 %27, i64 noundef %13, i1 noundef false) #35, !dbg !1801
  %28 = load i8**, i8*** %6, align 8, !dbg !1802, !tbaa !892
  %29 = load i64, i64* %14, align 8, !dbg !1803, !tbaa !898
  br label %30, !dbg !1804

30:                                               ; preds = %5, %18
  %31 = phi i64 [ %29, %18 ], [ %15, %5 ], !dbg !1803
  %32 = phi i8** [ %28, %18 ], [ %7, %5 ], !dbg !1802
  %33 = getelementptr inbounds i8*, i8** %32, i64 %31, !dbg !1805
  %34 = bitcast i8** %33 to i8*, !dbg !1806
  %35 = getelementptr inbounds i8, i8* %34, i64 %13, !dbg !1806
  store i8 0, i8* %35, align 1, !dbg !1807, !tbaa !655
  %36 = add nsw i64 %13, 1, !dbg !1808
  %37 = inttoptr i64 %36 to i8*, !dbg !1809
  %38 = load i8**, i8*** %6, align 8, !dbg !1810, !tbaa !892
  %39 = load i32, i32* %8, align 8, !dbg !1811, !tbaa !896
  %40 = sext i32 %39 to i64, !dbg !1812
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40, !dbg !1812
  store i8* %37, i8** %41, align 8, !dbg !1813, !tbaa !538
  call void @llvm.dbg.value(metadata i32 %39, metadata !1773, metadata !DIExpression()), !dbg !1814
  %42 = load i64, i64* %14, align 8, !dbg !1815, !tbaa !898
  %43 = getelementptr inbounds %struct.splitbuf, %struct.splitbuf* %0, i64 0, i32 3, !dbg !1817
  %44 = load i32, i32* %43, align 8, !dbg !1817, !tbaa !900
  %45 = add i32 %39, 1, !dbg !1818
  %46 = add i32 %45, %44, !dbg !1819
  %47 = sext i32 %46 to i64, !dbg !1820
  %48 = icmp sgt i64 %42, %47, !dbg !1821
  br i1 %48, label %63, label %49, !dbg !1822

49:                                               ; preds = %30
  call void @llvm.dbg.value(metadata %struct.splitbuf* %0, metadata !1057, metadata !DIExpression()) #35, !dbg !1823
  call void @llvm.dbg.value(metadata i64 %42, metadata !1062, metadata !DIExpression()) #35, !dbg !1823
  %50 = load i8**, i8*** %6, align 8, !dbg !1825, !tbaa !892
  %51 = getelementptr inbounds i8*, i8** %50, i64 %40, !dbg !1826
  %52 = load i8*, i8** %51, align 8, !dbg !1826, !tbaa !538
  %53 = ptrtoint i8* %52 to i64, !dbg !1827
  call void @llvm.dbg.value(metadata i64 %53, metadata !1063, metadata !DIExpression()) #35, !dbg !1823
  %54 = bitcast i8** %50 to i8*, !dbg !1828
  %55 = tail call nonnull i8* @xpalloc(i8* noundef %54, i64* noundef nonnull %14, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #35, !dbg !1829
  %56 = bitcast i8* %55 to i8**, !dbg !1829
  %57 = bitcast %struct.splitbuf* %0 to i8**, !dbg !1830
  store i8* %55, i8** %57, align 8, !dbg !1830, !tbaa !892
  %58 = load i64, i64* %14, align 8, !dbg !1831, !tbaa !898
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58, !dbg !1832
  %60 = bitcast i8** %59 to i8*, !dbg !1833
  %61 = getelementptr inbounds i8*, i8** %56, i64 %42, !dbg !1834
  %62 = bitcast i8** %61 to i8*, !dbg !1835
  call void @llvm.dbg.value(metadata i8* %60, metadata !1074, metadata !DIExpression()) #35, !dbg !1836
  call void @llvm.dbg.value(metadata i8* %62, metadata !1079, metadata !DIExpression()) #35, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %53, metadata !1080, metadata !DIExpression()) #35, !dbg !1836
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %60, i8* noundef nonnull align 1 %62, i64 noundef %53, i1 noundef false) #35, !dbg !1838
  br label %63, !dbg !1839

63:                                               ; preds = %49, %30
  %64 = load i8**, i8*** %6, align 8, !dbg !1840, !tbaa !892
  %65 = getelementptr inbounds i8*, i8** %64, i64 %40, !dbg !1841
  %66 = load i8*, i8** %65, align 8, !dbg !1841, !tbaa !538
  %67 = sext i32 %45 to i64, !dbg !1842
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67, !dbg !1842
  store i8* %66, i8** %68, align 8, !dbg !1843, !tbaa !538
  store i32 %45, i32* %8, align 8, !dbg !1844, !tbaa !896
  store i8 0, i8* %2, align 4, !dbg !1845, !tbaa !902
  br label %69, !dbg !1846

69:                                               ; preds = %63, %1
  ret void, !dbg !1847
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #14

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nofree nounwind
declare !dbg !1848 noundef i32 @unsetenv(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !1851 i32 @putenv(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1854 i32 @sigaction(i32 noundef, %struct.sigaction* noundef, %struct.sigaction* noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare i32 @__snprintf_chk(i8* noundef, i64 noundef, i32 noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #15

; Function Attrs: nounwind
declare !dbg !1862 i32 @sigemptyset(%struct.__sigset_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1866 i32 @sigprocmask(i32 noundef, %struct.__sigset_t* noundef, %struct.__sigset_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1873 i32 @sigismember(%struct.__sigset_t* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1876 i32 @sigaddset(%struct.__sigset_t* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1879 i32 @sigdelset(%struct.__sigset_t* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1880 i32 @chdir(i8* noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1882 i32 @execvp(i8* noundef, i8** noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strpbrk(i8* noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !1885 i32 @sigfillset(%struct.__sigset_t* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i8* @strtok(i8* noundef, i8* nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local i32 @operand2sig(i8* noundef nonnull %0) local_unnamed_addr #12 !dbg !1886 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1888, metadata !DIExpression()), !dbg !1899
  %4 = bitcast i32* %2 to i8*, !dbg !1900
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #35, !dbg !1900
  %5 = load i8, i8* %0, align 1, !dbg !1901, !tbaa !655
  %6 = zext i8 %5 to i32, !dbg !1901
  call void @llvm.dbg.value(metadata i32 %6, metadata !1902, metadata !DIExpression()), !dbg !1905
  %7 = add nsw i32 %6, -48, !dbg !1907
  %8 = icmp ult i32 %7, 10, !dbg !1907
  br i1 %8, label %9, label %37, !dbg !1908

9:                                                ; preds = %1
  %10 = bitcast i8** %3 to i8*, !dbg !1909
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #35, !dbg !1909
  %11 = tail call i32* @__errno_location() #38, !dbg !1910
  store i32 0, i32* %11, align 4, !dbg !1911, !tbaa !646
  call void @llvm.dbg.value(metadata i8** %3, metadata !1890, metadata !DIExpression(DW_OP_deref)), !dbg !1912
  %12 = call i64 @strtol(i8* noundef nonnull %0, i8** noundef nonnull %3, i32 noundef 10) #35, !dbg !1913
  call void @llvm.dbg.value(metadata i64 %12, metadata !1893, metadata !DIExpression()), !dbg !1912
  %13 = trunc i64 %12 to i32, !dbg !1914
  call void @llvm.dbg.value(metadata i32 %13, metadata !1894, metadata !DIExpression()), !dbg !1912
  %14 = load i8*, i8** %3, align 8, !dbg !1915, !tbaa !538
  call void @llvm.dbg.value(metadata i8* %14, metadata !1890, metadata !DIExpression()), !dbg !1912
  %15 = icmp eq i8* %14, %0, !dbg !1916
  br i1 %15, label %28, label %16, !dbg !1917

16:                                               ; preds = %9
  %17 = load i8, i8* %14, align 1, !dbg !1918, !tbaa !655
  %18 = icmp eq i8 %17, 0, !dbg !1918
  br i1 %18, label %19, label %28, !dbg !1919

19:                                               ; preds = %16
  %20 = load i32, i32* %11, align 4, !dbg !1920, !tbaa !646
  %21 = icmp eq i32 %20, 0, !dbg !1920
  %22 = add i64 %12, 2147483648
  %23 = icmp ult i64 %22, 4294967296
  %24 = select i1 %21, i1 %23, i1 false, !dbg !1921
  br i1 %24, label %25, label %28, !dbg !1921

25:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %13, metadata !1889, metadata !DIExpression()), !dbg !1899
  %26 = icmp eq i32 %13, -1, !dbg !1922
  %27 = icmp slt i32 %13, 255, !dbg !1924
  br i1 %27, label %28, label %31, !dbg !1924

28:                                               ; preds = %9, %16, %19, %25
  %29 = phi i1 [ %26, %25 ], [ true, %19 ], [ true, %16 ], [ true, %9 ]
  %30 = phi i32 [ %13, %25 ], [ -1, %19 ], [ -1, %16 ], [ -1, %9 ]
  br label %31, !dbg !1924

31:                                               ; preds = %25, %28
  %32 = phi i1 [ %29, %28 ], [ %26, %25 ]
  %33 = phi i32 [ %30, %28 ], [ %13, %25 ]
  %34 = phi i32 [ 127, %28 ], [ 255, %25 ]
  %35 = select i1 %32, i32 -1, i32 %34, !dbg !1924
  %36 = and i32 %35, %33, !dbg !1924
  store i32 %36, i32* %2, align 4, !dbg !1912, !tbaa !646
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #35, !dbg !1925
  br label %74, !dbg !1926

37:                                               ; preds = %1
  %38 = tail call noalias nonnull i8* @xstrdup(i8* noundef nonnull %0) #35, !dbg !1927
  call void @llvm.dbg.value(metadata i8* %38, metadata !1895, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i8* %38, metadata !1897, metadata !DIExpression()), !dbg !1929
  %39 = load i8, i8* %38, align 1, !dbg !1930, !tbaa !655
  %40 = icmp eq i8 %39, 0, !dbg !1932
  br i1 %40, label %41, label %44, !dbg !1932

41:                                               ; preds = %52, %37
  call void @llvm.dbg.value(metadata i32* %2, metadata !1889, metadata !DIExpression(DW_OP_deref)), !dbg !1899
  %42 = call i32 @str2sig(i8* noundef nonnull %38, i32* noundef nonnull %2) #35, !dbg !1933
  %43 = icmp eq i32 %42, 0, !dbg !1935
  br i1 %43, label %72, label %56, !dbg !1936

44:                                               ; preds = %37, %52
  %45 = phi i8 [ %54, %52 ], [ %39, %37 ]
  %46 = phi i8* [ %53, %52 ], [ %38, %37 ]
  call void @llvm.dbg.value(metadata i8* %46, metadata !1897, metadata !DIExpression()), !dbg !1929
  %47 = zext i8 %45 to i32, !dbg !1937
  %48 = tail call i8* @memchr(i8* noundef nonnull dereferenceable(27) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i64 0, i64 0), i32 %47, i64 27), !dbg !1939
  %49 = icmp eq i8* %48, null, !dbg !1939
  br i1 %49, label %52, label %50, !dbg !1940

50:                                               ; preds = %44
  %51 = add i8 %45, -32, !dbg !1941
  store i8 %51, i8* %46, align 1, !dbg !1941, !tbaa !655
  br label %52, !dbg !1942

52:                                               ; preds = %44, %50
  %53 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !1943
  call void @llvm.dbg.value(metadata i8* %53, metadata !1897, metadata !DIExpression()), !dbg !1929
  %54 = load i8, i8* %53, align 1, !dbg !1930, !tbaa !655
  %55 = icmp eq i8 %54, 0, !dbg !1932
  br i1 %55, label %41, label %44, !dbg !1932, !llvm.loop !1944

56:                                               ; preds = %41
  %57 = load i8, i8* %38, align 1, !dbg !1946, !tbaa !655
  %58 = icmp eq i8 %57, 83, !dbg !1947
  br i1 %58, label %59, label %71, !dbg !1948

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1949
  %61 = load i8, i8* %60, align 1, !dbg !1949, !tbaa !655
  %62 = icmp eq i8 %61, 73, !dbg !1950
  br i1 %62, label %63, label %71, !dbg !1951

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, i8* %38, i64 2, !dbg !1952
  %65 = load i8, i8* %64, align 1, !dbg !1952, !tbaa !655
  %66 = icmp eq i8 %65, 71, !dbg !1953
  br i1 %66, label %67, label %71, !dbg !1954

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, i8* %38, i64 3, !dbg !1955
  call void @llvm.dbg.value(metadata i32* %2, metadata !1889, metadata !DIExpression(DW_OP_deref)), !dbg !1899
  %69 = call i32 @str2sig(i8* noundef nonnull %68, i32* noundef nonnull %2) #35, !dbg !1956
  %70 = icmp eq i32 %69, 0, !dbg !1957
  br i1 %70, label %72, label %71, !dbg !1958

71:                                               ; preds = %67, %63, %59, %56
  call void @llvm.dbg.value(metadata i32 -1, metadata !1889, metadata !DIExpression()), !dbg !1899
  store i32 -1, i32* %2, align 4, !dbg !1959, !tbaa !646
  br label %72, !dbg !1960

72:                                               ; preds = %71, %67, %41
  call void @free(i8* noundef nonnull %38) #35, !dbg !1961
  %73 = load i32, i32* %2, align 4, !dbg !1962, !tbaa !646
  br label %74

74:                                               ; preds = %72, %31
  %75 = phi i32 [ %73, %72 ], [ %36, %31 ], !dbg !1962
  call void @llvm.dbg.value(metadata i32 %75, metadata !1889, metadata !DIExpression()), !dbg !1899
  %76 = icmp ugt i32 %75, 64, !dbg !1964
  br i1 %76, label %77, label %80, !dbg !1964

77:                                               ; preds = %74
  %78 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.50, i64 0, i64 0), i32 noundef 5) #35, !dbg !1965
  %79 = call i8* @quote(i8* noundef nonnull %0) #35, !dbg !1965
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %78, i8* noundef %79) #35, !dbg !1965
  br label %80, !dbg !1967

80:                                               ; preds = %74, %77
  %81 = phi i32 [ -1, %77 ], [ %75, %74 ], !dbg !1899
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #35, !dbg !1968
  ret i32 %81, !dbg !1968
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i1 @c_isalnum(i32 noundef %0) local_unnamed_addr #18 !dbg !1969 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1971, metadata !DIExpression()), !dbg !1972
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
  ], !dbg !1973

2:                                                ; preds = %1
  br label %3, !dbg !1974

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !1976
  ret i1 %4, !dbg !1977
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i1 @c_isalpha(i32 noundef %0) local_unnamed_addr #18 !dbg !1978 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1980, metadata !DIExpression()), !dbg !1981
  %2 = add i32 %0, -65, !dbg !1982
  %3 = icmp ult i32 %2, 58, !dbg !1982
  %4 = zext i32 %2 to i58, !dbg !1982
  %5 = lshr i58 -4227858433, %4, !dbg !1982
  %6 = and i58 %5, 1, !dbg !1982
  %7 = icmp ne i58 %6, 0, !dbg !1982
  %8 = select i1 %3, i1 %7, i1 false, !dbg !1982
  ret i1 %8, !dbg !1983
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i1 @c_isascii(i32 noundef %0) local_unnamed_addr #18 !dbg !1984 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1986, metadata !DIExpression()), !dbg !1987
  %2 = icmp ult i32 %0, 128, !dbg !1988
  ret i1 %2, !dbg !1989
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i1 @c_isblank(i32 noundef %0) local_unnamed_addr #18 !dbg !1990 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1992, metadata !DIExpression()), !dbg !1993
  %2 = icmp eq i32 %0, 32, !dbg !1994
  %3 = icmp eq i32 %0, 9, !dbg !1995
  %4 = or i1 %2, %3, !dbg !1995
  ret i1 %4, !dbg !1996
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i1 @c_iscntrl(i32 noundef %0) local_unnamed_addr #18 !dbg !1997 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1999, metadata !DIExpression()), !dbg !2000
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
  ], !dbg !2001

2:                                                ; preds = %1
  br label %3, !dbg !2002

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !2004
  ret i1 %4, !dbg !2005
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i1 @c_isdigit(i32 noundef %0) local_unnamed_addr #18 !dbg !2006 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2008, metadata !DIExpression()), !dbg !2009
  %2 = add i32 %0, -48, !dbg !2010
  %3 = icmp ult i32 %2, 10, !dbg !2010
  ret i1 %3, !dbg !2011
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i1 @c_isgraph(i32 noundef %0) local_unnamed_addr #18 !dbg !2012 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2014, metadata !DIExpression()), !dbg !2015
  %2 = add i32 %0, -33, !dbg !2016
  %3 = icmp ult i32 %2, 94, !dbg !2016
  ret i1 %3, !dbg !2017
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i1 @c_islower(i32 noundef %0) local_unnamed_addr #18 !dbg !2018 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2020, metadata !DIExpression()), !dbg !2021
  %2 = add i32 %0, -97, !dbg !2022
  %3 = icmp ult i32 %2, 26, !dbg !2022
  ret i1 %3, !dbg !2023
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i1 @c_isprint(i32 noundef %0) local_unnamed_addr #18 !dbg !2024 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2026, metadata !DIExpression()), !dbg !2027
  %2 = add i32 %0, -32, !dbg !2028
  %3 = icmp ult i32 %2, 95, !dbg !2028
  ret i1 %3, !dbg !2029
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i1 @c_ispunct(i32 noundef %0) local_unnamed_addr #18 !dbg !2030 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2032, metadata !DIExpression()), !dbg !2033
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
  ], !dbg !2034

2:                                                ; preds = %1
  br label %3, !dbg !2035

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !2037
  ret i1 %4, !dbg !2038
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i1 @c_isspace(i32 noundef %0) local_unnamed_addr #18 !dbg !2039 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2041, metadata !DIExpression()), !dbg !2042
  %2 = add i32 %0, -9, !dbg !2043
  %3 = icmp ult i32 %2, 24, !dbg !2043
  %4 = trunc i32 %2 to i24, !dbg !2043
  %5 = lshr i24 -8388577, %4, !dbg !2043
  %6 = and i24 %5, 1, !dbg !2043
  %7 = icmp ne i24 %6, 0, !dbg !2043
  %8 = select i1 %3, i1 %7, i1 false, !dbg !2043
  ret i1 %8, !dbg !2044
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i1 @c_isupper(i32 noundef %0) local_unnamed_addr #18 !dbg !2045 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2047, metadata !DIExpression()), !dbg !2048
  %2 = add i32 %0, -65, !dbg !2049
  %3 = icmp ult i32 %2, 26, !dbg !2049
  ret i1 %3, !dbg !2050
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i1 @c_isxdigit(i32 noundef %0) local_unnamed_addr #18 !dbg !2051 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2053, metadata !DIExpression()), !dbg !2054
  %2 = add i32 %0, -48, !dbg !2055
  %3 = icmp ult i32 %2, 55, !dbg !2055
  %4 = zext i32 %2 to i55, !dbg !2055
  %5 = lshr i55 -562949945162753, %4, !dbg !2055
  %6 = and i55 %5, 1, !dbg !2055
  %7 = icmp ne i55 %6, 0, !dbg !2055
  %8 = select i1 %3, i1 %7, i1 false, !dbg !2055
  ret i1 %8, !dbg !2056
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @c_tolower(i32 noundef %0) local_unnamed_addr #18 !dbg !2057 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2061, metadata !DIExpression()), !dbg !2062
  %2 = add i32 %0, -65, !dbg !2063
  %3 = icmp ult i32 %2, 26, !dbg !2063
  %4 = add nsw i32 %0, 32, !dbg !2063
  %5 = select i1 %3, i32 %4, i32 %0, !dbg !2063
  ret i32 %5, !dbg !2064
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @c_toupper(i32 noundef %0) local_unnamed_addr #18 !dbg !2065 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2067, metadata !DIExpression()), !dbg !2068
  %2 = add i32 %0, -97, !dbg !2069
  %3 = icmp ult i32 %2, 26, !dbg !2069
  %4 = add nsw i32 %0, -32, !dbg !2069
  %5 = select i1 %3, i32 %4, i32 %0, !dbg !2069
  ret i32 %5, !dbg !2070
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #19 !dbg !2071 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2073, metadata !DIExpression()), !dbg !2074
  store i8* %0, i8** @file_name, align 8, !dbg !2075, !tbaa !538
  ret void, !dbg !2076
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #19 !dbg !2077 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2081, metadata !DIExpression()), !dbg !2082
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !2083, !tbaa !2084
  ret void, !dbg !2085
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !2086 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2091, !tbaa !538
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #35, !dbg !2092
  %3 = icmp eq i32 %2, 0, !dbg !2093
  br i1 %3, label %22, label %4, !dbg !2094

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !2095, !tbaa !2084, !range !925
  %6 = icmp eq i8 %5, 0, !dbg !2095
  br i1 %6, label %11, label %7, !dbg !2096

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #38, !dbg !2097
  %9 = load i32, i32* %8, align 4, !dbg !2097, !tbaa !646
  %10 = icmp eq i32 %9, 32, !dbg !2098
  br i1 %10, label %22, label %11, !dbg !2099

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.122, i64 0, i64 0), i32 noundef 5) #35, !dbg !2100
  call void @llvm.dbg.value(metadata i8* %12, metadata !2088, metadata !DIExpression()), !dbg !2101
  %13 = load i8*, i8** @file_name, align 8, !dbg !2102, !tbaa !538
  %14 = icmp eq i8* %13, null, !dbg !2102
  %15 = tail call i32* @__errno_location() #38, !dbg !2104
  %16 = load i32, i32* %15, align 4, !dbg !2104, !tbaa !646
  br i1 %14, label %19, label %17, !dbg !2105

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #35, !dbg !2106
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.123, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #35, !dbg !2106
  br label %20, !dbg !2106

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.124, i64 0, i64 0), i8* noundef %12) #35, !dbg !2107
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2108, !tbaa !646
  tail call void @_exit(i32 noundef %21) #37, !dbg !2109
  unreachable, !dbg !2109

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2110, !tbaa !538
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #35, !dbg !2112
  %25 = icmp eq i32 %24, 0, !dbg !2113
  br i1 %25, label %28, label %26, !dbg !2114

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2115, !tbaa !646
  tail call void @_exit(i32 noundef %27) #37, !dbg !2116
  unreachable, !dbg !2116

28:                                               ; preds = %22
  ret void, !dbg !2117
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #20

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #21 !dbg !2118 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2122, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32 %1, metadata !2123, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i8* %2, metadata !2124, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !2125, metadata !DIExpression()), !dbg !2127
  tail call fastcc void @flush_stdout(), !dbg !2128
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !2129, !tbaa !538
  %7 = icmp eq void ()* %6, null, !dbg !2129
  br i1 %7, label %9, label %8, !dbg !2131

8:                                                ; preds = %4
  tail call void %6() #35, !dbg !2132
  br label %13, !dbg !2132

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2133, !tbaa !538
  %11 = tail call i8* @getprogname() #36, !dbg !2133
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i64 0, i64 0), i8* noundef %11) #35, !dbg !2133
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2135
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #35, !dbg !2135
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !2135
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !2135, !tbaa.struct !2136
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !2135
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #35, !dbg !2135
  ret void, !dbg !2137
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !2138 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2140, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i32 1, metadata !2142, metadata !DIExpression()) #35, !dbg !2145
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #35, !dbg !2148
  %2 = icmp slt i32 %1, 0, !dbg !2149
  br i1 %2, label %6, label %3, !dbg !2150

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2151, !tbaa !538
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #35, !dbg !2151
  br label %6, !dbg !2151

6:                                                ; preds = %3, %0
  ret void, !dbg !2152
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !2153 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2155, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i32 %1, metadata !2156, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i8* %2, metadata !2157, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !2158, metadata !DIExpression()), !dbg !2160
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2161, !tbaa !538
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !2162
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !2163, metadata !DIExpression()) #35, !dbg !2206
  call void @llvm.dbg.value(metadata i8* %2, metadata !2204, metadata !DIExpression()) #35, !dbg !2206
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2208
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !2208, !noalias !2209
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !2208
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #35, !dbg !2208
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !2208, !noalias !2209
  %11 = load i32, i32* @error_message_count, align 4, !dbg !2213, !tbaa !646
  %12 = add i32 %11, 1, !dbg !2213
  store i32 %12, i32* @error_message_count, align 4, !dbg !2213, !tbaa !646
  %13 = icmp eq i32 %1, 0, !dbg !2214
  br i1 %13, label %24, label %14, !dbg !2216

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2217, metadata !DIExpression()) #35, !dbg !2225
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !2227
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !2227
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !2221, metadata !DIExpression()) #35, !dbg !2228
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #35, !dbg !2229
  call void @llvm.dbg.value(metadata i8* %16, metadata !2220, metadata !DIExpression()) #35, !dbg !2225
  %17 = icmp eq i8* %16, null, !dbg !2230
  br i1 %17, label %18, label %20, !dbg !2232

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.127, i64 0, i64 0), i32 noundef 5) #35, !dbg !2233
  call void @llvm.dbg.value(metadata i8* %19, metadata !2220, metadata !DIExpression()) #35, !dbg !2225
  br label %20, !dbg !2234

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !2225
  call void @llvm.dbg.value(metadata i8* %21, metadata !2220, metadata !DIExpression()) #35, !dbg !2225
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2235, !tbaa !538
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.128, i64 0, i64 0), i8* noundef %21) #35, !dbg !2235
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !2236
  br label %24, !dbg !2237

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2238, !tbaa !538
  call void @llvm.dbg.value(metadata i32 10, metadata !2239, metadata !DIExpression()) #35, !dbg !2246
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !2245, metadata !DIExpression()) #35, !dbg !2246
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !2248
  %27 = load i8*, i8** %26, align 8, !dbg !2248, !tbaa !2249
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !2248
  %29 = load i8*, i8** %28, align 8, !dbg !2248, !tbaa !2251
  %30 = icmp ult i8* %27, %29, !dbg !2248
  br i1 %30, label %33, label %31, !dbg !2248, !prof !2252

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #35, !dbg !2248
  br label %35, !dbg !2248

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !2248
  store i8* %34, i8** %26, align 8, !dbg !2248, !tbaa !2249
  store i8 10, i8* %27, align 1, !dbg !2248, !tbaa !655
  br label %35, !dbg !2248

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2253, !tbaa !538
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #35, !dbg !2253
  %38 = icmp eq i32 %0, 0, !dbg !2254
  br i1 %38, label %40, label %39, !dbg !2256

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #37, !dbg !2257
  unreachable, !dbg !2257

40:                                               ; preds = %35
  ret void, !dbg !2258
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2259 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2263 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !2266 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !2270 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2274, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i32 %1, metadata !2275, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i8* %2, metadata !2276, metadata !DIExpression()), !dbg !2278
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !2279
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #35, !dbg !2279
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2277, metadata !DIExpression()), !dbg !2280
  call void @llvm.va_start(i8* nonnull %6), !dbg !2281
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2282
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !2282
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2282, !tbaa.struct !2136
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #42, !dbg !2282
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !2282
  call void @llvm.va_end(i8* nonnull %6), !dbg !2283
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #35, !dbg !2284
  ret void, !dbg !2284
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #22

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #22

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #21 !dbg !260 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !278, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i32 %1, metadata !279, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8* %2, metadata !280, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i32 %3, metadata !281, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8* %4, metadata !282, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !283, metadata !DIExpression()), !dbg !2286
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !2287, !tbaa !646
  %9 = icmp eq i32 %8, 0, !dbg !2287
  br i1 %9, label %24, label %10, !dbg !2289

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !2290, !tbaa !646
  %12 = icmp eq i32 %11, %3, !dbg !2293
  br i1 %12, label %13, label %23, !dbg !2294

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !2295, !tbaa !538
  %15 = icmp eq i8* %14, %2, !dbg !2296
  br i1 %15, label %39, label %16, !dbg !2297

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !2298
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !2299
  br i1 %19, label %20, label %23, !dbg !2299

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #36, !dbg !2300
  %22 = icmp eq i32 %21, 0, !dbg !2301
  br i1 %22, label %39, label %23, !dbg !2302

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !2303, !tbaa !538
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !2304, !tbaa !646
  br label %24, !dbg !2305

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2306
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !2307, !tbaa !538
  %26 = icmp eq void ()* %25, null, !dbg !2307
  br i1 %26, label %28, label %27, !dbg !2309

27:                                               ; preds = %24
  tail call void %25() #35, !dbg !2310
  br label %32, !dbg !2310

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2311, !tbaa !538
  %30 = tail call i8* @getprogname() #36, !dbg !2311
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.131, i64 0, i64 0), i8* noundef %30) #35, !dbg !2311
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2313, !tbaa !538
  %34 = icmp eq i8* %2, null, !dbg !2313
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.132, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.133, i64 0, i64 0), !dbg !2313
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #35, !dbg !2313
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2314
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #35, !dbg !2314
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2314
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !2314, !tbaa.struct !2136
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !2314
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #35, !dbg !2314
  br label %39, !dbg !2315

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !2315
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !2316 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2320, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i32 %1, metadata !2321, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8* %2, metadata !2322, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i32 %3, metadata !2323, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8* %4, metadata !2324, metadata !DIExpression()), !dbg !2326
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2327
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !2327
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !2325, metadata !DIExpression()), !dbg !2328
  call void @llvm.va_start(i8* nonnull %8), !dbg !2329
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2330
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !2330
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !2330, !tbaa.struct !2136
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #42, !dbg !2330
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !2330
  call void @llvm.va_end(i8* nonnull %8), !dbg !2331
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !2332
  ret void, !dbg !2332
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #23 !dbg !2333 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !2336, !tbaa !538
  ret i8* %1, !dbg !2337
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #24 !dbg !2338 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2340, metadata !DIExpression()), !dbg !2343
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #36, !dbg !2344
  call void @llvm.dbg.value(metadata i8* %2, metadata !2341, metadata !DIExpression()), !dbg !2343
  %3 = icmp eq i8* %2, null, !dbg !2345
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2345
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !2345
  call void @llvm.dbg.value(metadata i8* %5, metadata !2342, metadata !DIExpression()), !dbg !2343
  %6 = ptrtoint i8* %5 to i64, !dbg !2346
  %7 = ptrtoint i8* %0 to i64, !dbg !2346
  %8 = sub i64 %6, %7, !dbg !2346
  %9 = icmp sgt i64 %8, 6, !dbg !2348
  br i1 %9, label %10, label %19, !dbg !2349

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !2350
  call void @llvm.dbg.value(metadata i8* %11, metadata !2351, metadata !DIExpression()) #35, !dbg !2358
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.142, i64 0, i64 0), metadata !2356, metadata !DIExpression()) #35, !dbg !2358
  call void @llvm.dbg.value(metadata i64 7, metadata !2357, metadata !DIExpression()) #35, !dbg !2358
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.142, i64 0, i64 0), i64 7) #35, !dbg !2360
  %13 = icmp eq i32 %12, 0, !dbg !2361
  br i1 %13, label %14, label %19, !dbg !2362

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !2340, metadata !DIExpression()), !dbg !2343
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.143, i64 0, i64 0), i64 noundef 3) #36, !dbg !2363
  %16 = icmp eq i32 %15, 0, !dbg !2366
  %17 = select i1 %16, i64 3, i64 0, !dbg !2367
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !2367
  br label %19, !dbg !2367

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2343
  call void @llvm.dbg.value(metadata i8* %21, metadata !2342, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8* %20, metadata !2340, metadata !DIExpression()), !dbg !2343
  store i8* %20, i8** @program_name, align 8, !dbg !2368, !tbaa !538
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !2369, !tbaa !538
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !2370, !tbaa !538
  ret void, !dbg !2371
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !301 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !308, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8* %1, metadata !309, metadata !DIExpression()), !dbg !2372
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #35, !dbg !2373
  call void @llvm.dbg.value(metadata i8* %5, metadata !310, metadata !DIExpression()), !dbg !2372
  %6 = icmp eq i8* %5, %0, !dbg !2374
  br i1 %6, label %7, label %17, !dbg !2376

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !2377
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #35, !dbg !2377
  %10 = bitcast i64* %4 to i8*, !dbg !2378
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #35, !dbg !2378
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !316, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !2380, metadata !DIExpression()) #35, !dbg !2387
  call void @llvm.dbg.value(metadata i8* %10, metadata !2389, metadata !DIExpression()) #35, !dbg !2396
  call void @llvm.dbg.value(metadata i32 0, metadata !2394, metadata !DIExpression()) #35, !dbg !2396
  call void @llvm.dbg.value(metadata i64 8, metadata !2395, metadata !DIExpression()) #35, !dbg !2396
  store i64 0, i64* %4, align 8, !dbg !2398
  call void @llvm.dbg.value(metadata i32* %3, metadata !311, metadata !DIExpression(DW_OP_deref)), !dbg !2372
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #35, !dbg !2399
  %12 = icmp eq i64 %11, 2, !dbg !2401
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !311, metadata !DIExpression()), !dbg !2372
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !2402
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !2372
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #35, !dbg !2403
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #35, !dbg !2403
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !2372
  ret i8* %18, !dbg !2403
}

; Function Attrs: nounwind
declare !dbg !2404 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !2410 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2415, metadata !DIExpression()), !dbg !2418
  %2 = tail call i32* @__errno_location() #38, !dbg !2419
  %3 = load i32, i32* %2, align 4, !dbg !2419, !tbaa !646
  call void @llvm.dbg.value(metadata i32 %3, metadata !2416, metadata !DIExpression()), !dbg !2418
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2420
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2420
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2420
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #43, !dbg !2421
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2421
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2417, metadata !DIExpression()), !dbg !2418
  store i32 %3, i32* %2, align 4, !dbg !2422, !tbaa !646
  ret %struct.quoting_options* %8, !dbg !2423
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #23 !dbg !2424 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2430, metadata !DIExpression()), !dbg !2431
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2432
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2432
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2433
  %5 = load i32, i32* %4, align 8, !dbg !2433, !tbaa !2434
  ret i32 %5, !dbg !2436
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #19 !dbg !2437 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2441, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i32 %1, metadata !2442, metadata !DIExpression()), !dbg !2443
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2444
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2444
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2445
  store i32 %1, i32* %5, align 8, !dbg !2446, !tbaa !2434
  ret void, !dbg !2447
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #25 !dbg !2448 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2452, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8 %1, metadata !2453, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i32 %2, metadata !2454, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8 %1, metadata !2455, metadata !DIExpression()), !dbg !2460
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2461
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2461
  %6 = lshr i8 %1, 5, !dbg !2462
  %7 = zext i8 %6 to i64, !dbg !2462
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2463
  call void @llvm.dbg.value(metadata i32* %8, metadata !2456, metadata !DIExpression()), !dbg !2460
  %9 = and i8 %1, 31, !dbg !2464
  %10 = zext i8 %9 to i32, !dbg !2464
  call void @llvm.dbg.value(metadata i32 %10, metadata !2458, metadata !DIExpression()), !dbg !2460
  %11 = load i32, i32* %8, align 4, !dbg !2465, !tbaa !646
  %12 = lshr i32 %11, %10, !dbg !2466
  %13 = and i32 %12, 1, !dbg !2467
  call void @llvm.dbg.value(metadata i32 %13, metadata !2459, metadata !DIExpression()), !dbg !2460
  %14 = and i32 %2, 1, !dbg !2468
  %15 = xor i32 %13, %14, !dbg !2469
  %16 = shl i32 %15, %10, !dbg !2470
  %17 = xor i32 %16, %11, !dbg !2471
  store i32 %17, i32* %8, align 4, !dbg !2471, !tbaa !646
  ret i32 %13, !dbg !2472
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2473 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2477, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i32 %1, metadata !2478, metadata !DIExpression()), !dbg !2480
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2481
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2483
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2477, metadata !DIExpression()), !dbg !2480
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2484
  %6 = load i32, i32* %5, align 4, !dbg !2484, !tbaa !2485
  call void @llvm.dbg.value(metadata i32 %6, metadata !2479, metadata !DIExpression()), !dbg !2480
  store i32 %1, i32* %5, align 4, !dbg !2486, !tbaa !2485
  ret i32 %6, !dbg !2487
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2488 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2492, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i8* %1, metadata !2493, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i8* %2, metadata !2494, metadata !DIExpression()), !dbg !2495
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2496
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2498
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2492, metadata !DIExpression()), !dbg !2495
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2499
  store i32 10, i32* %6, align 8, !dbg !2500, !tbaa !2434
  %7 = icmp ne i8* %1, null, !dbg !2501
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2503
  br i1 %9, label %11, label %10, !dbg !2503

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !2504
  unreachable, !dbg !2504

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2505
  store i8* %1, i8** %12, align 8, !dbg !2506, !tbaa !2507
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2508
  store i8* %2, i8** %13, align 8, !dbg !2509, !tbaa !2510
  ret void, !dbg !2511
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !2512 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2516, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i64 %1, metadata !2517, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8* %2, metadata !2518, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i64 %3, metadata !2519, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2520, metadata !DIExpression()), !dbg !2524
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2525
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2525
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2521, metadata !DIExpression()), !dbg !2524
  %8 = tail call i32* @__errno_location() #38, !dbg !2526
  %9 = load i32, i32* %8, align 4, !dbg !2526, !tbaa !646
  call void @llvm.dbg.value(metadata i32 %9, metadata !2522, metadata !DIExpression()), !dbg !2524
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2527
  %11 = load i32, i32* %10, align 8, !dbg !2527, !tbaa !2434
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2528
  %13 = load i32, i32* %12, align 4, !dbg !2528, !tbaa !2485
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2529
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2530
  %16 = load i8*, i8** %15, align 8, !dbg !2530, !tbaa !2507
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2531
  %18 = load i8*, i8** %17, align 8, !dbg !2531, !tbaa !2510
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2532
  call void @llvm.dbg.value(metadata i64 %19, metadata !2523, metadata !DIExpression()), !dbg !2524
  store i32 %9, i32* %8, align 4, !dbg !2533, !tbaa !646
  ret i64 %19, !dbg !2534
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !2535 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2541, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %1, metadata !2542, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8* %2, metadata !2543, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %3, metadata !2544, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 %4, metadata !2545, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 %5, metadata !2546, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32* %6, metadata !2547, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8* %7, metadata !2548, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8* %8, metadata !2549, metadata !DIExpression()), !dbg !2603
  %17 = tail call i64 @__ctype_get_mb_cur_max() #35, !dbg !2604
  %18 = icmp eq i64 %17, 1, !dbg !2605
  call void @llvm.dbg.value(metadata i1 %18, metadata !2550, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i64 0, metadata !2551, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 0, metadata !2552, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8* null, metadata !2553, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 0, metadata !2554, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 0, metadata !2555, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 %5, metadata !2556, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i8 0, metadata !2557, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 1, metadata !2558, metadata !DIExpression()), !dbg !2603
  %19 = and i32 %5, 2, !dbg !2606
  %20 = icmp ne i32 %19, 0, !dbg !2606
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
  br label %36, !dbg !2606

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2607
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2608
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2609
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2542, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 poison, metadata !2558, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 poison, metadata !2557, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 poison, metadata !2556, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 poison, metadata !2555, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %43, metadata !2554, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8* %42, metadata !2553, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %41, metadata !2552, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 0, metadata !2551, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %40, metadata !2544, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8* %39, metadata !2549, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8* %38, metadata !2548, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 %37, metadata !2545, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.label(metadata !2596), !dbg !2610
  call void @llvm.dbg.value(metadata i8 0, metadata !2559, metadata !DIExpression()), !dbg !2603
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
  ], !dbg !2611

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2556, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 5, metadata !2545, metadata !DIExpression()), !dbg !2603
  br label %111, !dbg !2612

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2556, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 5, metadata !2545, metadata !DIExpression()), !dbg !2603
  br i1 %45, label %111, label %51, !dbg !2612

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2613
  br i1 %52, label %111, label %53, !dbg !2617

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2613, !tbaa !655
  br label %111, !dbg !2613

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.156, i64 0, i64 0), metadata !378, metadata !DIExpression()) #35, !dbg !2618
  call void @llvm.dbg.value(metadata i32 %37, metadata !379, metadata !DIExpression()) #35, !dbg !2618
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.157, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.156, i64 0, i64 0), i32 noundef 5) #35, !dbg !2622
  call void @llvm.dbg.value(metadata i8* %55, metadata !380, metadata !DIExpression()) #35, !dbg !2618
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.156, i64 0, i64 0), !dbg !2623
  br i1 %56, label %57, label %66, !dbg !2625

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #35, !dbg !2626
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #35, !dbg !2627
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !382, metadata !DIExpression()) #35, !dbg !2628
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !2629, metadata !DIExpression()) #35, !dbg !2635
  call void @llvm.dbg.value(metadata i8* %23, metadata !2637, metadata !DIExpression()) #35, !dbg !2642
  call void @llvm.dbg.value(metadata i32 0, metadata !2640, metadata !DIExpression()) #35, !dbg !2642
  call void @llvm.dbg.value(metadata i64 8, metadata !2641, metadata !DIExpression()) #35, !dbg !2642
  store i64 0, i64* %13, align 8, !dbg !2644
  call void @llvm.dbg.value(metadata i32* %12, metadata !381, metadata !DIExpression(DW_OP_deref)) #35, !dbg !2618
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #35, !dbg !2645
  %59 = icmp eq i64 %58, 3, !dbg !2647
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !381, metadata !DIExpression()) #35, !dbg !2618
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2648
  %63 = icmp eq i32 %37, 9, !dbg !2648
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.158, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.159, i64 0, i64 0), !dbg !2648
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2648
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #35, !dbg !2649
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #35, !dbg !2649
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2618
  call void @llvm.dbg.value(metadata i8* %67, metadata !2548, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.159, i64 0, i64 0), metadata !378, metadata !DIExpression()) #35, !dbg !2650
  call void @llvm.dbg.value(metadata i32 %37, metadata !379, metadata !DIExpression()) #35, !dbg !2650
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.157, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.159, i64 0, i64 0), i32 noundef 5) #35, !dbg !2652
  call void @llvm.dbg.value(metadata i8* %68, metadata !380, metadata !DIExpression()) #35, !dbg !2650
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.159, i64 0, i64 0), !dbg !2653
  br i1 %69, label %70, label %79, !dbg !2654

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #35, !dbg !2655
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #35, !dbg !2656
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !382, metadata !DIExpression()) #35, !dbg !2657
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !2629, metadata !DIExpression()) #35, !dbg !2658
  call void @llvm.dbg.value(metadata i8* %26, metadata !2637, metadata !DIExpression()) #35, !dbg !2660
  call void @llvm.dbg.value(metadata i32 0, metadata !2640, metadata !DIExpression()) #35, !dbg !2660
  call void @llvm.dbg.value(metadata i64 8, metadata !2641, metadata !DIExpression()) #35, !dbg !2660
  store i64 0, i64* %11, align 8, !dbg !2662
  call void @llvm.dbg.value(metadata i32* %10, metadata !381, metadata !DIExpression(DW_OP_deref)) #35, !dbg !2650
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #35, !dbg !2663
  %72 = icmp eq i64 %71, 3, !dbg !2664
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !381, metadata !DIExpression()) #35, !dbg !2650
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2665
  %76 = icmp eq i32 %37, 9, !dbg !2665
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.158, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.159, i64 0, i64 0), !dbg !2665
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2665
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #35, !dbg !2666
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #35, !dbg !2666
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2549, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8* %80, metadata !2548, metadata !DIExpression()), !dbg !2603
  br i1 %45, label %97, label %82, !dbg !2667

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2560, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i64 0, metadata !2551, metadata !DIExpression()), !dbg !2603
  %83 = load i8, i8* %80, align 1, !dbg !2669, !tbaa !655
  %84 = icmp eq i8 %83, 0, !dbg !2671
  br i1 %84, label %97, label %85, !dbg !2671

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2560, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i64 %88, metadata !2551, metadata !DIExpression()), !dbg !2603
  %89 = icmp ult i64 %88, %48, !dbg !2672
  br i1 %89, label %90, label %92, !dbg !2675

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2672
  store i8 %86, i8* %91, align 1, !dbg !2672, !tbaa !655
  br label %92, !dbg !2672

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2675
  call void @llvm.dbg.value(metadata i64 %93, metadata !2551, metadata !DIExpression()), !dbg !2603
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2676
  call void @llvm.dbg.value(metadata i8* %94, metadata !2560, metadata !DIExpression()), !dbg !2668
  %95 = load i8, i8* %94, align 1, !dbg !2669, !tbaa !655
  %96 = icmp eq i8 %95, 0, !dbg !2671
  br i1 %96, label %97, label %85, !dbg !2671, !llvm.loop !2677

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2679
  call void @llvm.dbg.value(metadata i64 %98, metadata !2551, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 1, metadata !2555, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8* %81, metadata !2553, metadata !DIExpression()), !dbg !2603
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #36, !dbg !2680
  call void @llvm.dbg.value(metadata i64 %99, metadata !2554, metadata !DIExpression()), !dbg !2603
  br label %111, !dbg !2681

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2555, metadata !DIExpression()), !dbg !2603
  br label %102, !dbg !2682

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2556, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 poison, metadata !2555, metadata !DIExpression()), !dbg !2603
  br i1 %45, label %102, label %105, !dbg !2683

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2556, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 poison, metadata !2555, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 2, metadata !2545, metadata !DIExpression()), !dbg !2603
  br label %111, !dbg !2684

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2556, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 poison, metadata !2555, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 2, metadata !2545, metadata !DIExpression()), !dbg !2603
  br i1 %45, label %111, label %105, !dbg !2684

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2685
  br i1 %107, label %111, label %108, !dbg !2689

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2685, !tbaa !655
  br label %111, !dbg !2685

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2556, metadata !DIExpression()), !dbg !2603
  br label %111, !dbg !2690

110:                                              ; preds = %36
  call void @abort() #37, !dbg !2691
  unreachable, !dbg !2691

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2679
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.158, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.158, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.158, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.159, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.159, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.159, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.158, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.159, i64 0, i64 0), %102 ], !dbg !2603
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2603
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2556, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 poison, metadata !2555, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %117, metadata !2554, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8* %116, metadata !2553, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %115, metadata !2551, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8* %114, metadata !2549, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8* %113, metadata !2548, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 %112, metadata !2545, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 0, metadata !2565, metadata !DIExpression()), !dbg !2692
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
  br label %132, !dbg !2693

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2679
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2607
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2692
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2542, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %139, metadata !2565, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8 poison, metadata !2559, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 poison, metadata !2558, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 poison, metadata !2557, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %135, metadata !2552, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %134, metadata !2551, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %133, metadata !2544, metadata !DIExpression()), !dbg !2603
  %141 = icmp eq i64 %133, -1, !dbg !2694
  br i1 %141, label %142, label %146, !dbg !2695

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2696
  %144 = load i8, i8* %143, align 1, !dbg !2696, !tbaa !655
  %145 = icmp eq i8 %144, 0, !dbg !2697
  br i1 %145, label %596, label %148, !dbg !2698

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2699
  br i1 %147, label %596, label %148, !dbg !2698

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2567, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 0, metadata !2570, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 0, metadata !2571, metadata !DIExpression()), !dbg !2700
  br i1 %123, label %149, label %163, !dbg !2701

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2703
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2704
  br i1 %151, label %152, label %154, !dbg !2704

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2705
  call void @llvm.dbg.value(metadata i64 %153, metadata !2544, metadata !DIExpression()), !dbg !2603
  br label %154, !dbg !2706

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2706
  call void @llvm.dbg.value(metadata i64 %155, metadata !2544, metadata !DIExpression()), !dbg !2603
  %156 = icmp ugt i64 %150, %155, !dbg !2707
  br i1 %156, label %163, label %157, !dbg !2708

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2709
  call void @llvm.dbg.value(metadata i8* %158, metadata !2710, metadata !DIExpression()) #35, !dbg !2715
  call void @llvm.dbg.value(metadata i8* %116, metadata !2713, metadata !DIExpression()) #35, !dbg !2715
  call void @llvm.dbg.value(metadata i64 %117, metadata !2714, metadata !DIExpression()) #35, !dbg !2715
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #35, !dbg !2717
  %160 = icmp ne i32 %159, 0, !dbg !2718
  %161 = or i1 %160, %125, !dbg !2719
  %162 = xor i1 %160, true, !dbg !2719
  br i1 %161, label %163, label %647, !dbg !2719

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2567, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i64 %164, metadata !2544, metadata !DIExpression()), !dbg !2603
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2720
  %167 = load i8, i8* %166, align 1, !dbg !2720, !tbaa !655
  call void @llvm.dbg.value(metadata i8 %167, metadata !2572, metadata !DIExpression()), !dbg !2700
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
  ], !dbg !2721

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2722

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2723

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2570, metadata !DIExpression()), !dbg !2700
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2727
  br i1 %171, label %188, label %172, !dbg !2727

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2729
  br i1 %173, label %174, label %176, !dbg !2733

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2729
  store i8 39, i8* %175, align 1, !dbg !2729, !tbaa !655
  br label %176, !dbg !2729

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2733
  call void @llvm.dbg.value(metadata i64 %177, metadata !2551, metadata !DIExpression()), !dbg !2603
  %178 = icmp ult i64 %177, %140, !dbg !2734
  br i1 %178, label %179, label %181, !dbg !2737

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2734
  store i8 36, i8* %180, align 1, !dbg !2734, !tbaa !655
  br label %181, !dbg !2734

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2737
  call void @llvm.dbg.value(metadata i64 %182, metadata !2551, metadata !DIExpression()), !dbg !2603
  %183 = icmp ult i64 %182, %140, !dbg !2738
  br i1 %183, label %184, label %186, !dbg !2741

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2738
  store i8 39, i8* %185, align 1, !dbg !2738, !tbaa !655
  br label %186, !dbg !2738

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2741
  call void @llvm.dbg.value(metadata i64 %187, metadata !2551, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 1, metadata !2559, metadata !DIExpression()), !dbg !2603
  br label %188, !dbg !2742

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2603
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2559, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %189, metadata !2551, metadata !DIExpression()), !dbg !2603
  %191 = icmp ult i64 %189, %140, !dbg !2743
  br i1 %191, label %192, label %194, !dbg !2746

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2743
  store i8 92, i8* %193, align 1, !dbg !2743, !tbaa !655
  br label %194, !dbg !2743

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2746
  call void @llvm.dbg.value(metadata i64 %195, metadata !2551, metadata !DIExpression()), !dbg !2603
  br i1 %120, label %196, label %499, !dbg !2747

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2749
  %198 = icmp ult i64 %197, %164, !dbg !2750
  br i1 %198, label %199, label %456, !dbg !2751

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2752
  %201 = load i8, i8* %200, align 1, !dbg !2752, !tbaa !655
  %202 = add i8 %201, -48, !dbg !2753
  %203 = icmp ult i8 %202, 10, !dbg !2753
  br i1 %203, label %204, label %456, !dbg !2753

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2754
  br i1 %205, label %206, label %208, !dbg !2758

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2754
  store i8 48, i8* %207, align 1, !dbg !2754, !tbaa !655
  br label %208, !dbg !2754

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2758
  call void @llvm.dbg.value(metadata i64 %209, metadata !2551, metadata !DIExpression()), !dbg !2603
  %210 = icmp ult i64 %209, %140, !dbg !2759
  br i1 %210, label %211, label %213, !dbg !2762

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2759
  store i8 48, i8* %212, align 1, !dbg !2759, !tbaa !655
  br label %213, !dbg !2759

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2762
  call void @llvm.dbg.value(metadata i64 %214, metadata !2551, metadata !DIExpression()), !dbg !2603
  br label %456, !dbg !2763

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2764

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2765

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2766

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2768

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2770
  %221 = icmp ult i64 %220, %164, !dbg !2771
  br i1 %221, label %222, label %456, !dbg !2772

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2773
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2774
  %225 = load i8, i8* %224, align 1, !dbg !2774, !tbaa !655
  %226 = icmp eq i8 %225, 63, !dbg !2775
  br i1 %226, label %227, label %456, !dbg !2776

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2777
  %229 = load i8, i8* %228, align 1, !dbg !2777, !tbaa !655
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
  ], !dbg !2778

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2779

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2572, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i64 %220, metadata !2565, metadata !DIExpression()), !dbg !2692
  %232 = icmp ult i64 %134, %140, !dbg !2781
  br i1 %232, label %233, label %235, !dbg !2784

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2781
  store i8 63, i8* %234, align 1, !dbg !2781, !tbaa !655
  br label %235, !dbg !2781

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2784
  call void @llvm.dbg.value(metadata i64 %236, metadata !2551, metadata !DIExpression()), !dbg !2603
  %237 = icmp ult i64 %236, %140, !dbg !2785
  br i1 %237, label %238, label %240, !dbg !2788

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2785
  store i8 34, i8* %239, align 1, !dbg !2785, !tbaa !655
  br label %240, !dbg !2785

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2788
  call void @llvm.dbg.value(metadata i64 %241, metadata !2551, metadata !DIExpression()), !dbg !2603
  %242 = icmp ult i64 %241, %140, !dbg !2789
  br i1 %242, label %243, label %245, !dbg !2792

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2789
  store i8 34, i8* %244, align 1, !dbg !2789, !tbaa !655
  br label %245, !dbg !2789

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2792
  call void @llvm.dbg.value(metadata i64 %246, metadata !2551, metadata !DIExpression()), !dbg !2603
  %247 = icmp ult i64 %246, %140, !dbg !2793
  br i1 %247, label %248, label %250, !dbg !2796

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2793
  store i8 63, i8* %249, align 1, !dbg !2793, !tbaa !655
  br label %250, !dbg !2793

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2796
  call void @llvm.dbg.value(metadata i64 %251, metadata !2551, metadata !DIExpression()), !dbg !2603
  br label %456, !dbg !2797

252:                                              ; preds = %163
  br label %263, !dbg !2798

253:                                              ; preds = %163
  br label %263, !dbg !2799

254:                                              ; preds = %163
  br label %261, !dbg !2800

255:                                              ; preds = %163
  br label %261, !dbg !2801

256:                                              ; preds = %163
  br label %263, !dbg !2802

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2803

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2804

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2807

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2809

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2810
  call void @llvm.dbg.label(metadata !2597), !dbg !2811
  br i1 %128, label %263, label %638, !dbg !2812

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2810
  call void @llvm.dbg.label(metadata !2599), !dbg !2814
  br i1 %118, label %510, label %467, !dbg !2815

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2816

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2817, !tbaa !655
  %268 = icmp eq i8 %267, 0, !dbg !2819
  br i1 %268, label %269, label %456, !dbg !2820

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2821
  br i1 %270, label %271, label %456, !dbg !2823

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2571, metadata !DIExpression()), !dbg !2700
  br label %272, !dbg !2824

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2571, metadata !DIExpression()), !dbg !2700
  br i1 %126, label %274, label %456, !dbg !2825

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2827

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2557, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 1, metadata !2571, metadata !DIExpression()), !dbg !2700
  br i1 %126, label %276, label %456, !dbg !2828

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2829

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2832
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2834
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2834
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2834
  call void @llvm.dbg.value(metadata i64 %282, metadata !2542, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %281, metadata !2552, metadata !DIExpression()), !dbg !2603
  %283 = icmp ult i64 %134, %282, !dbg !2835
  br i1 %283, label %284, label %286, !dbg !2838

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2835
  store i8 39, i8* %285, align 1, !dbg !2835, !tbaa !655
  br label %286, !dbg !2835

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2838
  call void @llvm.dbg.value(metadata i64 %287, metadata !2551, metadata !DIExpression()), !dbg !2603
  %288 = icmp ult i64 %287, %282, !dbg !2839
  br i1 %288, label %289, label %291, !dbg !2842

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2839
  store i8 92, i8* %290, align 1, !dbg !2839, !tbaa !655
  br label %291, !dbg !2839

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2842
  call void @llvm.dbg.value(metadata i64 %292, metadata !2551, metadata !DIExpression()), !dbg !2603
  %293 = icmp ult i64 %292, %282, !dbg !2843
  br i1 %293, label %294, label %296, !dbg !2846

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2843
  store i8 39, i8* %295, align 1, !dbg !2843, !tbaa !655
  br label %296, !dbg !2843

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2846
  call void @llvm.dbg.value(metadata i64 %297, metadata !2551, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 0, metadata !2559, metadata !DIExpression()), !dbg !2603
  br label %456, !dbg !2847

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2848

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2573, metadata !DIExpression()), !dbg !2849
  %300 = tail call i16** @__ctype_b_loc() #38, !dbg !2850
  %301 = load i16*, i16** %300, align 8, !dbg !2850, !tbaa !538
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2850
  %304 = load i16, i16* %303, align 2, !dbg !2850, !tbaa !680
  %305 = and i16 %304, 16384, !dbg !2850
  %306 = icmp ne i16 %305, 0, !dbg !2852
  call void @llvm.dbg.value(metadata i8 poison, metadata !2576, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 %349, metadata !2573, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 %312, metadata !2544, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i1 %350, metadata !2571, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  br label %352, !dbg !2853

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2854
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !2577, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !2629, metadata !DIExpression()) #35, !dbg !2856
  call void @llvm.dbg.value(metadata i8* %32, metadata !2637, metadata !DIExpression()) #35, !dbg !2858
  call void @llvm.dbg.value(metadata i32 0, metadata !2640, metadata !DIExpression()) #35, !dbg !2858
  call void @llvm.dbg.value(metadata i64 8, metadata !2641, metadata !DIExpression()) #35, !dbg !2858
  store i64 0, i64* %14, align 8, !dbg !2860
  call void @llvm.dbg.value(metadata i64 0, metadata !2573, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i8 1, metadata !2576, metadata !DIExpression()), !dbg !2849
  %308 = icmp eq i64 %164, -1, !dbg !2861
  br i1 %308, label %309, label %311, !dbg !2863

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2864
  call void @llvm.dbg.value(metadata i64 %310, metadata !2544, metadata !DIExpression()), !dbg !2603
  br label %311, !dbg !2865

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2700
  call void @llvm.dbg.value(metadata i64 %312, metadata !2544, metadata !DIExpression()), !dbg !2603
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2866
  %313 = sub i64 %312, %139, !dbg !2867
  call void @llvm.dbg.value(metadata i32* %16, metadata !2580, metadata !DIExpression(DW_OP_deref)), !dbg !2868
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #35, !dbg !2869
  call void @llvm.dbg.value(metadata i64 %314, metadata !2584, metadata !DIExpression()), !dbg !2868
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2870

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2573, metadata !DIExpression()), !dbg !2849
  %316 = icmp ugt i64 %312, %139, !dbg !2871
  br i1 %316, label %319, label %317, !dbg !2873

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2576, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 0, metadata !2573, metadata !DIExpression()), !dbg !2849
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2874
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2875
  call void @llvm.dbg.value(metadata i64 %349, metadata !2573, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 %312, metadata !2544, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i1 %350, metadata !2571, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  br label %352, !dbg !2853

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2576, metadata !DIExpression()), !dbg !2849
  br label %346, !dbg !2876

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2573, metadata !DIExpression()), !dbg !2849
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2878
  %323 = load i8, i8* %322, align 1, !dbg !2878, !tbaa !655
  %324 = icmp eq i8 %323, 0, !dbg !2873
  br i1 %324, label %348, label %325, !dbg !2879

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %326, metadata !2573, metadata !DIExpression()), !dbg !2849
  %327 = add i64 %326, %139, !dbg !2881
  %328 = icmp eq i64 %326, %313, !dbg !2871
  br i1 %328, label %348, label %319, !dbg !2873, !llvm.loop !2882

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2883
  call void @llvm.dbg.value(metadata i64 1, metadata !2585, metadata !DIExpression()), !dbg !2884
  br i1 %331, label %332, label %340, !dbg !2883

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2585, metadata !DIExpression()), !dbg !2884
  %334 = add i64 %333, %139, !dbg !2885
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2887
  %336 = load i8, i8* %335, align 1, !dbg !2887, !tbaa !655
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2888

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2889
  call void @llvm.dbg.value(metadata i64 %338, metadata !2585, metadata !DIExpression()), !dbg !2884
  %339 = icmp eq i64 %338, %314, !dbg !2890
  br i1 %339, label %340, label %332, !dbg !2891, !llvm.loop !2892

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2894, !tbaa !646
  call void @llvm.dbg.value(metadata i32 %341, metadata !2580, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i32 %341, metadata !2896, metadata !DIExpression()) #35, !dbg !2904
  %342 = call i32 @iswprint(i32 noundef %341) #35, !dbg !2906
  %343 = icmp ne i32 %342, 0, !dbg !2907
  call void @llvm.dbg.value(metadata i8 poison, metadata !2576, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 %314, metadata !2573, metadata !DIExpression()), !dbg !2849
  br label %348, !dbg !2908

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2576, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 0, metadata !2573, metadata !DIExpression()), !dbg !2849
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2874
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2875
  call void @llvm.dbg.label(metadata !2602), !dbg !2909
  %345 = select i1 %118, i32 4, i32 2, !dbg !2910
  br label %643, !dbg !2910

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2576, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 0, metadata !2573, metadata !DIExpression()), !dbg !2849
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2874
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2875
  call void @llvm.dbg.value(metadata i64 %349, metadata !2573, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 %312, metadata !2544, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i1 %350, metadata !2571, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  br label %352, !dbg !2853

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2576, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 0, metadata !2573, metadata !DIExpression()), !dbg !2849
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2874
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2875
  call void @llvm.dbg.value(metadata i64 %349, metadata !2573, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 %312, metadata !2544, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i1 %350, metadata !2571, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  %351 = icmp ugt i64 %349, 1, !dbg !2912
  br i1 %351, label %357, label %352, !dbg !2853

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2913
  br i1 %356, label %456, label %357, !dbg !2913

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2914
  call void @llvm.dbg.value(metadata i64 %361, metadata !2593, metadata !DIExpression()), !dbg !2915
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2916

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2603
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2692
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2917
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2700
  call void @llvm.dbg.value(metadata i8 %369, metadata !2572, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 %368, metadata !2570, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 poison, metadata !2567, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i64 %366, metadata !2565, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8 poison, metadata !2559, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %364, metadata !2551, metadata !DIExpression()), !dbg !2603
  br i1 %362, label %414, label %370, !dbg !2918

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2923

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2570, metadata !DIExpression()), !dbg !2700
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2926
  br i1 %372, label %389, label %373, !dbg !2926

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2928
  br i1 %374, label %375, label %377, !dbg !2932

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2928
  store i8 39, i8* %376, align 1, !dbg !2928, !tbaa !655
  br label %377, !dbg !2928

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2932
  call void @llvm.dbg.value(metadata i64 %378, metadata !2551, metadata !DIExpression()), !dbg !2603
  %379 = icmp ult i64 %378, %140, !dbg !2933
  br i1 %379, label %380, label %382, !dbg !2936

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2933
  store i8 36, i8* %381, align 1, !dbg !2933, !tbaa !655
  br label %382, !dbg !2933

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2936
  call void @llvm.dbg.value(metadata i64 %383, metadata !2551, metadata !DIExpression()), !dbg !2603
  %384 = icmp ult i64 %383, %140, !dbg !2937
  br i1 %384, label %385, label %387, !dbg !2940

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2937
  store i8 39, i8* %386, align 1, !dbg !2937, !tbaa !655
  br label %387, !dbg !2937

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2940
  call void @llvm.dbg.value(metadata i64 %388, metadata !2551, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 1, metadata !2559, metadata !DIExpression()), !dbg !2603
  br label %389, !dbg !2941

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2603
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2559, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %390, metadata !2551, metadata !DIExpression()), !dbg !2603
  %392 = icmp ult i64 %390, %140, !dbg !2942
  br i1 %392, label %393, label %395, !dbg !2945

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2942
  store i8 92, i8* %394, align 1, !dbg !2942, !tbaa !655
  br label %395, !dbg !2942

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2945
  call void @llvm.dbg.value(metadata i64 %396, metadata !2551, metadata !DIExpression()), !dbg !2603
  %397 = icmp ult i64 %396, %140, !dbg !2946
  br i1 %397, label %398, label %402, !dbg !2949

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2946
  %400 = or i8 %399, 48, !dbg !2946
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2946
  store i8 %400, i8* %401, align 1, !dbg !2946, !tbaa !655
  br label %402, !dbg !2946

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2949
  call void @llvm.dbg.value(metadata i64 %403, metadata !2551, metadata !DIExpression()), !dbg !2603
  %404 = icmp ult i64 %403, %140, !dbg !2950
  br i1 %404, label %405, label %410, !dbg !2953

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2950
  %407 = and i8 %406, 7, !dbg !2950
  %408 = or i8 %407, 48, !dbg !2950
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2950
  store i8 %408, i8* %409, align 1, !dbg !2950, !tbaa !655
  br label %410, !dbg !2950

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2953
  call void @llvm.dbg.value(metadata i64 %411, metadata !2551, metadata !DIExpression()), !dbg !2603
  %412 = and i8 %369, 7, !dbg !2954
  %413 = or i8 %412, 48, !dbg !2955
  call void @llvm.dbg.value(metadata i8 %413, metadata !2572, metadata !DIExpression()), !dbg !2700
  br label %421, !dbg !2956

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2957

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2958
  br i1 %416, label %417, label %419, !dbg !2963

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2958
  store i8 92, i8* %418, align 1, !dbg !2958, !tbaa !655
  br label %419, !dbg !2958

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2963
  call void @llvm.dbg.value(metadata i64 %420, metadata !2551, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 0, metadata !2567, metadata !DIExpression()), !dbg !2700
  br label %421, !dbg !2964

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2603
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2700
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2700
  call void @llvm.dbg.value(metadata i8 %426, metadata !2572, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 %425, metadata !2570, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 poison, metadata !2567, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 poison, metadata !2559, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %422, metadata !2551, metadata !DIExpression()), !dbg !2603
  %427 = add i64 %366, 1, !dbg !2965
  %428 = icmp ugt i64 %361, %427, !dbg !2967
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2968

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2969
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2969
  br i1 %432, label %433, label %444, !dbg !2969

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2972
  br i1 %434, label %435, label %437, !dbg !2976

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2972
  store i8 39, i8* %436, align 1, !dbg !2972, !tbaa !655
  br label %437, !dbg !2972

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2976
  call void @llvm.dbg.value(metadata i64 %438, metadata !2551, metadata !DIExpression()), !dbg !2603
  %439 = icmp ult i64 %438, %140, !dbg !2977
  br i1 %439, label %440, label %442, !dbg !2980

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2977
  store i8 39, i8* %441, align 1, !dbg !2977, !tbaa !655
  br label %442, !dbg !2977

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2980
  call void @llvm.dbg.value(metadata i64 %443, metadata !2551, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 0, metadata !2559, metadata !DIExpression()), !dbg !2603
  br label %444, !dbg !2981

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2982
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2559, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %445, metadata !2551, metadata !DIExpression()), !dbg !2603
  %447 = icmp ult i64 %445, %140, !dbg !2983
  br i1 %447, label %448, label %450, !dbg !2986

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2983
  store i8 %426, i8* %449, align 1, !dbg !2983, !tbaa !655
  br label %450, !dbg !2983

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2986
  call void @llvm.dbg.value(metadata i64 %451, metadata !2551, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %427, metadata !2565, metadata !DIExpression()), !dbg !2692
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2987
  %453 = load i8, i8* %452, align 1, !dbg !2987, !tbaa !655
  call void @llvm.dbg.value(metadata i8 %453, metadata !2572, metadata !DIExpression()), !dbg !2700
  br label %363, !dbg !2988, !llvm.loop !2989

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2572, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i1 %358, metadata !2571, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  call void @llvm.dbg.value(metadata i8 %425, metadata !2570, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 poison, metadata !2567, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i64 %366, metadata !2565, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8 poison, metadata !2559, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %422, metadata !2551, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %360, metadata !2544, metadata !DIExpression()), !dbg !2603
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2992
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2603
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2607
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2692
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2700
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2542, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 %465, metadata !2572, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 poison, metadata !2571, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 poison, metadata !2570, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 poison, metadata !2567, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i64 %462, metadata !2565, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8 poison, metadata !2559, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 poison, metadata !2557, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %459, metadata !2552, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %458, metadata !2551, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %457, metadata !2544, metadata !DIExpression()), !dbg !2603
  br i1 %121, label %478, label %467, !dbg !2993

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
  br i1 %131, label %479, label %499, !dbg !2995

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2996

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
  %490 = lshr i8 %481, 5, !dbg !2997
  %491 = zext i8 %490 to i64, !dbg !2997
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2998
  %493 = load i32, i32* %492, align 4, !dbg !2998, !tbaa !646
  %494 = and i8 %481, 31, !dbg !2999
  %495 = zext i8 %494 to i32, !dbg !2999
  %496 = shl nuw i32 1, %495, !dbg !3000
  %497 = and i32 %493, %496, !dbg !3000
  %498 = icmp eq i32 %497, 0, !dbg !3000
  br i1 %498, label %499, label %510, !dbg !3001

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
  br i1 %165, label %510, label %546, !dbg !3002

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2992
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2603
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2607
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !3003
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2700
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2542, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 %518, metadata !2572, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 poison, metadata !2571, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i64 %516, metadata !2565, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8 poison, metadata !2559, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 poison, metadata !2557, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %513, metadata !2552, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %512, metadata !2551, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %511, metadata !2544, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.label(metadata !2600), !dbg !3004
  br i1 %119, label %638, label %520, !dbg !3005

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2570, metadata !DIExpression()), !dbg !2700
  %521 = select i1 %120, i1 true, i1 %515, !dbg !3007
  br i1 %521, label %538, label %522, !dbg !3007

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !3009
  br i1 %523, label %524, label %526, !dbg !3013

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !3009
  store i8 39, i8* %525, align 1, !dbg !3009, !tbaa !655
  br label %526, !dbg !3009

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !3013
  call void @llvm.dbg.value(metadata i64 %527, metadata !2551, metadata !DIExpression()), !dbg !2603
  %528 = icmp ult i64 %527, %519, !dbg !3014
  br i1 %528, label %529, label %531, !dbg !3017

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !3014
  store i8 36, i8* %530, align 1, !dbg !3014, !tbaa !655
  br label %531, !dbg !3014

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !3017
  call void @llvm.dbg.value(metadata i64 %532, metadata !2551, metadata !DIExpression()), !dbg !2603
  %533 = icmp ult i64 %532, %519, !dbg !3018
  br i1 %533, label %534, label %536, !dbg !3021

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !3018
  store i8 39, i8* %535, align 1, !dbg !3018, !tbaa !655
  br label %536, !dbg !3018

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !3021
  call void @llvm.dbg.value(metadata i64 %537, metadata !2551, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 1, metadata !2559, metadata !DIExpression()), !dbg !2603
  br label %538, !dbg !3022

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2700
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2559, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %539, metadata !2551, metadata !DIExpression()), !dbg !2603
  %541 = icmp ult i64 %539, %519, !dbg !3023
  br i1 %541, label %542, label %544, !dbg !3026

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !3023
  store i8 92, i8* %543, align 1, !dbg !3023, !tbaa !655
  br label %544, !dbg !3023

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !3026
  call void @llvm.dbg.value(metadata i64 %556, metadata !2542, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 %555, metadata !2572, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 poison, metadata !2571, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 poison, metadata !2570, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i64 %552, metadata !2565, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8 poison, metadata !2559, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 poison, metadata !2557, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %549, metadata !2552, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %548, metadata !2551, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %547, metadata !2544, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.label(metadata !2601), !dbg !3027
  br label %570, !dbg !3028

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2992
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2603
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2607
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !3003
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !3031
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2542, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 %555, metadata !2572, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 poison, metadata !2571, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 poison, metadata !2570, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i64 %552, metadata !2565, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8 poison, metadata !2559, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 poison, metadata !2557, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %549, metadata !2552, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %548, metadata !2551, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %547, metadata !2544, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.label(metadata !2601), !dbg !3027
  %557 = xor i1 %551, true, !dbg !3028
  %558 = select i1 %557, i1 true, i1 %553, !dbg !3028
  br i1 %558, label %570, label %559, !dbg !3028

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !3032
  br i1 %560, label %561, label %563, !dbg !3036

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !3032
  store i8 39, i8* %562, align 1, !dbg !3032, !tbaa !655
  br label %563, !dbg !3032

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !3036
  call void @llvm.dbg.value(metadata i64 %564, metadata !2551, metadata !DIExpression()), !dbg !2603
  %565 = icmp ult i64 %564, %556, !dbg !3037
  br i1 %565, label %566, label %568, !dbg !3040

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !3037
  store i8 39, i8* %567, align 1, !dbg !3037, !tbaa !655
  br label %568, !dbg !3037

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !3040
  call void @llvm.dbg.value(metadata i64 %569, metadata !2551, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 0, metadata !2559, metadata !DIExpression()), !dbg !2603
  br label %570, !dbg !3041

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2700
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2559, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %578, metadata !2551, metadata !DIExpression()), !dbg !2603
  %580 = icmp ult i64 %578, %571, !dbg !3042
  br i1 %580, label %581, label %583, !dbg !3045

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !3042
  store i8 %572, i8* %582, align 1, !dbg !3042, !tbaa !655
  br label %583, !dbg !3042

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !3045
  call void @llvm.dbg.value(metadata i64 %584, metadata !2551, metadata !DIExpression()), !dbg !2603
  %585 = select i1 %573, i1 %137, i1 false, !dbg !3046
  call void @llvm.dbg.value(metadata i8 poison, metadata !2558, metadata !DIExpression()), !dbg !2603
  br label %586, !dbg !3047

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2992
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2603
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2607
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !3003
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2542, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %593, metadata !2565, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8 poison, metadata !2559, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 poison, metadata !2558, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 poison, metadata !2557, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %589, metadata !2552, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %588, metadata !2551, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %587, metadata !2544, metadata !DIExpression()), !dbg !2603
  %595 = add i64 %593, 1, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %595, metadata !2565, metadata !DIExpression()), !dbg !2692
  br label %132, !dbg !3049, !llvm.loop !3050

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2542, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 poison, metadata !2558, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 poison, metadata !2557, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 undef, metadata !2552, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 undef, metadata !2551, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 undef, metadata !2544, metadata !DIExpression()), !dbg !2603
  %597 = icmp eq i64 %134, 0, !dbg !3052
  %598 = and i1 %126, %597, !dbg !3054
  %599 = and i1 %598, %119, !dbg !3054
  br i1 %599, label %638, label %600, !dbg !3054

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !3055
  %602 = or i1 %119, %601, !dbg !3055
  %603 = xor i1 %136, true, !dbg !3055
  %604 = select i1 %602, i1 true, i1 %603, !dbg !3055
  br i1 %604, label %612, label %605, !dbg !3055

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !3057

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !3059
  br label %653, !dbg !3061

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !3062
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !3064
  br i1 %611, label %36, label %612, !dbg !3064

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !3065
  %615 = or i1 %614, %613, !dbg !3067
  br i1 %615, label %631, label %616, !dbg !3067

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2553, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %134, metadata !2551, metadata !DIExpression()), !dbg !2603
  %617 = load i8, i8* %116, align 1, !dbg !3068, !tbaa !655
  %618 = icmp eq i8 %617, 0, !dbg !3071
  br i1 %618, label %631, label %619, !dbg !3071

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2553, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %622, metadata !2551, metadata !DIExpression()), !dbg !2603
  %623 = icmp ult i64 %622, %140, !dbg !3072
  br i1 %623, label %624, label %626, !dbg !3075

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !3072
  store i8 %620, i8* %625, align 1, !dbg !3072, !tbaa !655
  br label %626, !dbg !3072

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !3075
  call void @llvm.dbg.value(metadata i64 %627, metadata !2551, metadata !DIExpression()), !dbg !2603
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !3076
  call void @llvm.dbg.value(metadata i8* %628, metadata !2553, metadata !DIExpression()), !dbg !2603
  %629 = load i8, i8* %628, align 1, !dbg !3068, !tbaa !655
  %630 = icmp eq i8 %629, 0, !dbg !3071
  br i1 %630, label %631, label %619, !dbg !3071, !llvm.loop !3077

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2679
  call void @llvm.dbg.value(metadata i64 %632, metadata !2551, metadata !DIExpression()), !dbg !2603
  %633 = icmp ult i64 %632, %140, !dbg !3079
  br i1 %633, label %634, label %653, !dbg !3081

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !3082
  store i8 0, i8* %635, align 1, !dbg !3083, !tbaa !655
  br label %653, !dbg !3082

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2602), !dbg !2909
  %637 = icmp eq i32 %112, 2, !dbg !3084
  br i1 %637, label %643, label %647, !dbg !2910

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2602), !dbg !2909
  %641 = icmp eq i32 %112, 2, !dbg !3084
  %642 = select i1 %118, i32 4, i32 2, !dbg !2910
  br i1 %641, label %643, label %647, !dbg !2910

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2910

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2545, metadata !DIExpression()), !dbg !2603
  %651 = and i32 %5, -3, !dbg !3085
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !3086
  br label %653, !dbg !3087

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !3088
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !3089 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !3091 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3095, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %1, metadata !3096, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3097, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i8* %0, metadata !3099, metadata !DIExpression()) #35, !dbg !3112
  call void @llvm.dbg.value(metadata i64 %1, metadata !3104, metadata !DIExpression()) #35, !dbg !3112
  call void @llvm.dbg.value(metadata i64* null, metadata !3105, metadata !DIExpression()) #35, !dbg !3112
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3106, metadata !DIExpression()) #35, !dbg !3112
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3114
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3114
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3107, metadata !DIExpression()) #35, !dbg !3112
  %6 = tail call i32* @__errno_location() #38, !dbg !3115
  %7 = load i32, i32* %6, align 4, !dbg !3115, !tbaa !646
  call void @llvm.dbg.value(metadata i32 %7, metadata !3108, metadata !DIExpression()) #35, !dbg !3112
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3116
  %9 = load i32, i32* %8, align 4, !dbg !3116, !tbaa !2485
  %10 = or i32 %9, 1, !dbg !3117
  call void @llvm.dbg.value(metadata i32 %10, metadata !3109, metadata !DIExpression()) #35, !dbg !3112
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3118
  %12 = load i32, i32* %11, align 8, !dbg !3118, !tbaa !2434
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3119
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3120
  %15 = load i8*, i8** %14, align 8, !dbg !3120, !tbaa !2507
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3121
  %17 = load i8*, i8** %16, align 8, !dbg !3121, !tbaa !2510
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #35, !dbg !3122
  %19 = add i64 %18, 1, !dbg !3123
  call void @llvm.dbg.value(metadata i64 %19, metadata !3110, metadata !DIExpression()) #35, !dbg !3112
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #39, !dbg !3124
  call void @llvm.dbg.value(metadata i8* %20, metadata !3111, metadata !DIExpression()) #35, !dbg !3112
  %21 = load i32, i32* %11, align 8, !dbg !3125, !tbaa !2434
  %22 = load i8*, i8** %14, align 8, !dbg !3126, !tbaa !2507
  %23 = load i8*, i8** %16, align 8, !dbg !3127, !tbaa !2510
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #35, !dbg !3128
  store i32 %7, i32* %6, align 4, !dbg !3129, !tbaa !646
  ret i8* %20, !dbg !3130
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !3100 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3099, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %1, metadata !3104, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64* %2, metadata !3105, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3106, metadata !DIExpression()), !dbg !3131
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3132
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3132
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3107, metadata !DIExpression()), !dbg !3131
  %7 = tail call i32* @__errno_location() #38, !dbg !3133
  %8 = load i32, i32* %7, align 4, !dbg !3133, !tbaa !646
  call void @llvm.dbg.value(metadata i32 %8, metadata !3108, metadata !DIExpression()), !dbg !3131
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3134
  %10 = load i32, i32* %9, align 4, !dbg !3134, !tbaa !2485
  %11 = icmp eq i64* %2, null, !dbg !3135
  %12 = zext i1 %11 to i32, !dbg !3135
  %13 = or i32 %10, %12, !dbg !3136
  call void @llvm.dbg.value(metadata i32 %13, metadata !3109, metadata !DIExpression()), !dbg !3131
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3137
  %15 = load i32, i32* %14, align 8, !dbg !3137, !tbaa !2434
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3138
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3139
  %18 = load i8*, i8** %17, align 8, !dbg !3139, !tbaa !2507
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3140
  %20 = load i8*, i8** %19, align 8, !dbg !3140, !tbaa !2510
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !3141
  %22 = add i64 %21, 1, !dbg !3142
  call void @llvm.dbg.value(metadata i64 %22, metadata !3110, metadata !DIExpression()), !dbg !3131
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #39, !dbg !3143
  call void @llvm.dbg.value(metadata i8* %23, metadata !3111, metadata !DIExpression()), !dbg !3131
  %24 = load i32, i32* %14, align 8, !dbg !3144, !tbaa !2434
  %25 = load i8*, i8** %17, align 8, !dbg !3145, !tbaa !2507
  %26 = load i8*, i8** %19, align 8, !dbg !3146, !tbaa !2510
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !3147
  store i32 %8, i32* %7, align 4, !dbg !3148, !tbaa !646
  br i1 %11, label %29, label %28, !dbg !3149

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !3150, !tbaa !808
  br label %29, !dbg !3152

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3153
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !3154 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3159, !tbaa !538
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3156, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i32 1, metadata !3157, metadata !DIExpression()), !dbg !3161
  %2 = load i32, i32* @nslots, align 4, !tbaa !646
  call void @llvm.dbg.value(metadata i32 1, metadata !3157, metadata !DIExpression()), !dbg !3161
  %3 = icmp sgt i32 %2, 1, !dbg !3162
  br i1 %3, label %4, label %6, !dbg !3164

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3162
  br label %10, !dbg !3164

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3165
  %8 = load i8*, i8** %7, align 8, !dbg !3165, !tbaa !3167
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3169
  br i1 %9, label %17, label %16, !dbg !3170

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3157, metadata !DIExpression()), !dbg !3161
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !3171
  %13 = load i8*, i8** %12, align 8, !dbg !3171, !tbaa !3167
  tail call void @free(i8* noundef %13) #35, !dbg !3172
  %14 = add nuw nsw i64 %11, 1, !dbg !3173
  call void @llvm.dbg.value(metadata i64 %14, metadata !3157, metadata !DIExpression()), !dbg !3161
  %15 = icmp eq i64 %14, %5, !dbg !3162
  br i1 %15, label %6, label %10, !dbg !3164, !llvm.loop !3174

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #35, !dbg !3176
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3178, !tbaa !3179
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3180, !tbaa !3167
  br label %17, !dbg !3181

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3182
  br i1 %18, label %21, label %19, !dbg !3184

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3185
  tail call void @free(i8* noundef %20) #35, !dbg !3187
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3188, !tbaa !538
  br label %21, !dbg !3189

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3190, !tbaa !646
  ret void, !dbg !3191
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3192 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3194, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i8* %1, metadata !3195, metadata !DIExpression()), !dbg !3196
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3197
  ret i8* %3, !dbg !3198
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !3199 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3203, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8* %1, metadata !3204, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %2, metadata !3205, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3206, metadata !DIExpression()), !dbg !3219
  %6 = tail call i32* @__errno_location() #38, !dbg !3220
  %7 = load i32, i32* %6, align 4, !dbg !3220, !tbaa !646
  call void @llvm.dbg.value(metadata i32 %7, metadata !3207, metadata !DIExpression()), !dbg !3219
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3221, !tbaa !538
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !3208, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3209, metadata !DIExpression()), !dbg !3219
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3222
  br i1 %9, label %10, label %11, !dbg !3222

10:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3224
  unreachable, !dbg !3224

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !3225, !tbaa !646
  %13 = icmp sgt i32 %12, %0, !dbg !3226
  br i1 %13, label %36, label %14, !dbg !3227

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !3228
  call void @llvm.dbg.value(metadata i1 %15, metadata !3210, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3229
  %16 = bitcast i64* %5 to i8*, !dbg !3230
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #35, !dbg !3230
  %17 = sext i32 %12 to i64, !dbg !3231
  call void @llvm.dbg.value(metadata i64 %17, metadata !3213, metadata !DIExpression()), !dbg !3229
  store i64 %17, i64* %5, align 8, !dbg !3232, !tbaa !808
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !3233
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3233
  %20 = add nuw nsw i32 %0, 1, !dbg !3234
  %21 = sub i32 %20, %12, !dbg !3235
  %22 = sext i32 %21 to i64, !dbg !3236
  call void @llvm.dbg.value(metadata i64* %5, metadata !3213, metadata !DIExpression(DW_OP_deref)), !dbg !3229
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #35, !dbg !3237
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3237
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3208, metadata !DIExpression()), !dbg !3219
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3238, !tbaa !538
  br i1 %15, label %25, label %26, !dbg !3239

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3240, !tbaa.struct !3242
  br label %26, !dbg !3243

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !3244, !tbaa !646
  %28 = sext i32 %27 to i64, !dbg !3245
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3245
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3246
  %31 = load i64, i64* %5, align 8, !dbg !3247, !tbaa !808
  call void @llvm.dbg.value(metadata i64 %31, metadata !3213, metadata !DIExpression()), !dbg !3229
  %32 = sub nsw i64 %31, %28, !dbg !3248
  %33 = shl i64 %32, 4, !dbg !3249
  call void @llvm.dbg.value(metadata i8* %30, metadata !2637, metadata !DIExpression()) #35, !dbg !3250
  call void @llvm.dbg.value(metadata i32 0, metadata !2640, metadata !DIExpression()) #35, !dbg !3250
  call void @llvm.dbg.value(metadata i64 %33, metadata !2641, metadata !DIExpression()) #35, !dbg !3250
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #35, !dbg !3252
  %34 = load i64, i64* %5, align 8, !dbg !3253, !tbaa !808
  call void @llvm.dbg.value(metadata i64 %34, metadata !3213, metadata !DIExpression()), !dbg !3229
  %35 = trunc i64 %34 to i32, !dbg !3253
  store i32 %35, i32* @nslots, align 4, !dbg !3254, !tbaa !646
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #35, !dbg !3255
  br label %36, !dbg !3256

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !3219
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !3208, metadata !DIExpression()), !dbg !3219
  %38 = zext i32 %0 to i64, !dbg !3257
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !3258
  %40 = load i64, i64* %39, align 8, !dbg !3258, !tbaa !3179
  call void @llvm.dbg.value(metadata i64 %40, metadata !3214, metadata !DIExpression()), !dbg !3259
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !3260
  %42 = load i8*, i8** %41, align 8, !dbg !3260, !tbaa !3167
  call void @llvm.dbg.value(metadata i8* %42, metadata !3216, metadata !DIExpression()), !dbg !3259
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3261
  %44 = load i32, i32* %43, align 4, !dbg !3261, !tbaa !2485
  %45 = or i32 %44, 1, !dbg !3262
  call void @llvm.dbg.value(metadata i32 %45, metadata !3217, metadata !DIExpression()), !dbg !3259
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3263
  %47 = load i32, i32* %46, align 8, !dbg !3263, !tbaa !2434
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3264
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3265
  %50 = load i8*, i8** %49, align 8, !dbg !3265, !tbaa !2507
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3266
  %52 = load i8*, i8** %51, align 8, !dbg !3266, !tbaa !2510
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !3267
  call void @llvm.dbg.value(metadata i64 %53, metadata !3218, metadata !DIExpression()), !dbg !3259
  %54 = icmp ugt i64 %40, %53, !dbg !3268
  br i1 %54, label %65, label %55, !dbg !3270

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !3271
  call void @llvm.dbg.value(metadata i64 %56, metadata !3214, metadata !DIExpression()), !dbg !3259
  store i64 %56, i64* %39, align 8, !dbg !3273, !tbaa !3179
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3274
  br i1 %57, label %59, label %58, !dbg !3276

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #35, !dbg !3277
  br label %59, !dbg !3277

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #39, !dbg !3278
  call void @llvm.dbg.value(metadata i8* %60, metadata !3216, metadata !DIExpression()), !dbg !3259
  store i8* %60, i8** %41, align 8, !dbg !3279, !tbaa !3167
  %61 = load i32, i32* %46, align 8, !dbg !3280, !tbaa !2434
  %62 = load i8*, i8** %49, align 8, !dbg !3281, !tbaa !2507
  %63 = load i8*, i8** %51, align 8, !dbg !3282, !tbaa !2510
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !3283
  br label %65, !dbg !3284

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !3259
  call void @llvm.dbg.value(metadata i8* %66, metadata !3216, metadata !DIExpression()), !dbg !3259
  store i32 %7, i32* %6, align 4, !dbg !3285, !tbaa !646
  ret i8* %66, !dbg !3286
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3287 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3291, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8* %1, metadata !3292, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %2, metadata !3293, metadata !DIExpression()), !dbg !3294
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3295
  ret i8* %4, !dbg !3296
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !3297 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3299, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i32 0, metadata !3194, metadata !DIExpression()) #35, !dbg !3301
  call void @llvm.dbg.value(metadata i8* %0, metadata !3195, metadata !DIExpression()) #35, !dbg !3301
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !3303
  ret i8* %2, !dbg !3304
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3305 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3309, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i64 %1, metadata !3310, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i32 0, metadata !3291, metadata !DIExpression()) #35, !dbg !3312
  call void @llvm.dbg.value(metadata i8* %0, metadata !3292, metadata !DIExpression()) #35, !dbg !3312
  call void @llvm.dbg.value(metadata i64 %1, metadata !3293, metadata !DIExpression()) #35, !dbg !3312
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !3314
  ret i8* %3, !dbg !3315
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3316 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3320, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i32 %1, metadata !3321, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i8* %2, metadata !3322, metadata !DIExpression()), !dbg !3324
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3325
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3325
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3323, metadata !DIExpression()), !dbg !3326
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3327), !dbg !3330
  call void @llvm.dbg.value(metadata i32 %1, metadata !3331, metadata !DIExpression()) #35, !dbg !3337
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3336, metadata !DIExpression()) #35, !dbg !3339
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !3339, !alias.scope !3327
  %6 = icmp eq i32 %1, 10, !dbg !3340
  br i1 %6, label %7, label %8, !dbg !3342

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3343, !noalias !3327
  unreachable, !dbg !3343

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3344
  store i32 %1, i32* %9, align 8, !dbg !3345, !tbaa !2434, !alias.scope !3327
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3346
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3347
  ret i8* %10, !dbg !3348
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3349 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3353, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i32 %1, metadata !3354, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8* %2, metadata !3355, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i64 %3, metadata !3356, metadata !DIExpression()), !dbg !3358
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3359
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3359
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3357, metadata !DIExpression()), !dbg !3360
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3361), !dbg !3364
  call void @llvm.dbg.value(metadata i32 %1, metadata !3331, metadata !DIExpression()) #35, !dbg !3365
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3336, metadata !DIExpression()) #35, !dbg !3367
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #35, !dbg !3367, !alias.scope !3361
  %7 = icmp eq i32 %1, 10, !dbg !3368
  br i1 %7, label %8, label %9, !dbg !3369

8:                                                ; preds = %4
  tail call void @abort() #37, !dbg !3370, !noalias !3361
  unreachable, !dbg !3370

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3371
  store i32 %1, i32* %10, align 8, !dbg !3372, !tbaa !2434, !alias.scope !3361
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !3373
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3374
  ret i8* %11, !dbg !3375
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3376 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3380, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i8* %1, metadata !3381, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i32 0, metadata !3320, metadata !DIExpression()) #35, !dbg !3383
  call void @llvm.dbg.value(metadata i32 %0, metadata !3321, metadata !DIExpression()) #35, !dbg !3383
  call void @llvm.dbg.value(metadata i8* %1, metadata !3322, metadata !DIExpression()) #35, !dbg !3383
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3385
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3385
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3323, metadata !DIExpression()) #35, !dbg !3386
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3387) #35, !dbg !3390
  call void @llvm.dbg.value(metadata i32 %0, metadata !3331, metadata !DIExpression()) #35, !dbg !3391
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3336, metadata !DIExpression()) #35, !dbg !3393
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #35, !dbg !3393, !alias.scope !3387
  %5 = icmp eq i32 %0, 10, !dbg !3394
  br i1 %5, label %6, label %7, !dbg !3395

6:                                                ; preds = %2
  tail call void @abort() #37, !dbg !3396, !noalias !3387
  unreachable, !dbg !3396

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3397
  store i32 %0, i32* %8, align 8, !dbg !3398, !tbaa !2434, !alias.scope !3387
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3399
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3400
  ret i8* %9, !dbg !3401
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3402 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3406, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i8* %1, metadata !3407, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i64 %2, metadata !3408, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i32 0, metadata !3353, metadata !DIExpression()) #35, !dbg !3410
  call void @llvm.dbg.value(metadata i32 %0, metadata !3354, metadata !DIExpression()) #35, !dbg !3410
  call void @llvm.dbg.value(metadata i8* %1, metadata !3355, metadata !DIExpression()) #35, !dbg !3410
  call void @llvm.dbg.value(metadata i64 %2, metadata !3356, metadata !DIExpression()) #35, !dbg !3410
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3412
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3412
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3357, metadata !DIExpression()) #35, !dbg !3413
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3414) #35, !dbg !3417
  call void @llvm.dbg.value(metadata i32 %0, metadata !3331, metadata !DIExpression()) #35, !dbg !3418
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3336, metadata !DIExpression()) #35, !dbg !3420
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !3420, !alias.scope !3414
  %6 = icmp eq i32 %0, 10, !dbg !3421
  br i1 %6, label %7, label %8, !dbg !3422

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3423, !noalias !3414
  unreachable, !dbg !3423

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3424
  store i32 %0, i32* %9, align 8, !dbg !3425, !tbaa !2434, !alias.scope !3414
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #35, !dbg !3426
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3427
  ret i8* %10, !dbg !3428
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !3429 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3433, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %1, metadata !3434, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i8 %2, metadata !3435, metadata !DIExpression()), !dbg !3437
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3438
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3438
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3436, metadata !DIExpression()), !dbg !3439
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3440, !tbaa.struct !3441
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2452, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i8 %2, metadata !2453, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i32 1, metadata !2454, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i8 %2, metadata !2455, metadata !DIExpression()), !dbg !3442
  %6 = lshr i8 %2, 5, !dbg !3444
  %7 = zext i8 %6 to i64, !dbg !3444
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3445
  call void @llvm.dbg.value(metadata i32* %8, metadata !2456, metadata !DIExpression()), !dbg !3442
  %9 = and i8 %2, 31, !dbg !3446
  %10 = zext i8 %9 to i32, !dbg !3446
  call void @llvm.dbg.value(metadata i32 %10, metadata !2458, metadata !DIExpression()), !dbg !3442
  %11 = load i32, i32* %8, align 4, !dbg !3447, !tbaa !646
  %12 = lshr i32 %11, %10, !dbg !3448
  %13 = and i32 %12, 1, !dbg !3449
  call void @llvm.dbg.value(metadata i32 %13, metadata !2459, metadata !DIExpression()), !dbg !3442
  %14 = xor i32 %13, 1, !dbg !3450
  %15 = shl i32 %14, %10, !dbg !3451
  %16 = xor i32 %15, %11, !dbg !3452
  store i32 %16, i32* %8, align 4, !dbg !3452, !tbaa !646
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3453
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3454
  ret i8* %17, !dbg !3455
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !3456 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3460, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i8 %1, metadata !3461, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i8* %0, metadata !3433, metadata !DIExpression()) #35, !dbg !3463
  call void @llvm.dbg.value(metadata i64 -1, metadata !3434, metadata !DIExpression()) #35, !dbg !3463
  call void @llvm.dbg.value(metadata i8 %1, metadata !3435, metadata !DIExpression()) #35, !dbg !3463
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3465
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3465
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3436, metadata !DIExpression()) #35, !dbg !3466
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3467, !tbaa.struct !3441
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2452, metadata !DIExpression()) #35, !dbg !3468
  call void @llvm.dbg.value(metadata i8 %1, metadata !2453, metadata !DIExpression()) #35, !dbg !3468
  call void @llvm.dbg.value(metadata i32 1, metadata !2454, metadata !DIExpression()) #35, !dbg !3468
  call void @llvm.dbg.value(metadata i8 %1, metadata !2455, metadata !DIExpression()) #35, !dbg !3468
  %5 = lshr i8 %1, 5, !dbg !3470
  %6 = zext i8 %5 to i64, !dbg !3470
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3471
  call void @llvm.dbg.value(metadata i32* %7, metadata !2456, metadata !DIExpression()) #35, !dbg !3468
  %8 = and i8 %1, 31, !dbg !3472
  %9 = zext i8 %8 to i32, !dbg !3472
  call void @llvm.dbg.value(metadata i32 %9, metadata !2458, metadata !DIExpression()) #35, !dbg !3468
  %10 = load i32, i32* %7, align 4, !dbg !3473, !tbaa !646
  %11 = lshr i32 %10, %9, !dbg !3474
  %12 = and i32 %11, 1, !dbg !3475
  call void @llvm.dbg.value(metadata i32 %12, metadata !2459, metadata !DIExpression()) #35, !dbg !3468
  %13 = xor i32 %12, 1, !dbg !3476
  %14 = shl i32 %13, %9, !dbg !3477
  %15 = xor i32 %14, %10, !dbg !3478
  store i32 %15, i32* %7, align 4, !dbg !3478, !tbaa !646
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3479
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3480
  ret i8* %16, !dbg !3481
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !3482 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3484, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i8* %0, metadata !3460, metadata !DIExpression()) #35, !dbg !3486
  call void @llvm.dbg.value(metadata i8 58, metadata !3461, metadata !DIExpression()) #35, !dbg !3486
  call void @llvm.dbg.value(metadata i8* %0, metadata !3433, metadata !DIExpression()) #35, !dbg !3488
  call void @llvm.dbg.value(metadata i64 -1, metadata !3434, metadata !DIExpression()) #35, !dbg !3488
  call void @llvm.dbg.value(metadata i8 58, metadata !3435, metadata !DIExpression()) #35, !dbg !3488
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3490
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #35, !dbg !3490
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3436, metadata !DIExpression()) #35, !dbg !3491
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3492, !tbaa.struct !3441
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2452, metadata !DIExpression()) #35, !dbg !3493
  call void @llvm.dbg.value(metadata i8 58, metadata !2453, metadata !DIExpression()) #35, !dbg !3493
  call void @llvm.dbg.value(metadata i32 1, metadata !2454, metadata !DIExpression()) #35, !dbg !3493
  call void @llvm.dbg.value(metadata i8 58, metadata !2455, metadata !DIExpression()) #35, !dbg !3493
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3495
  call void @llvm.dbg.value(metadata i32* %4, metadata !2456, metadata !DIExpression()) #35, !dbg !3493
  call void @llvm.dbg.value(metadata i32 26, metadata !2458, metadata !DIExpression()) #35, !dbg !3493
  %5 = load i32, i32* %4, align 4, !dbg !3496, !tbaa !646
  call void @llvm.dbg.value(metadata i32 %5, metadata !2459, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !3493
  %6 = or i32 %5, 67108864, !dbg !3497
  store i32 %6, i32* %4, align 4, !dbg !3497, !tbaa !646
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #35, !dbg !3498
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #35, !dbg !3499
  ret i8* %7, !dbg !3500
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3501 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3503, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i64 %1, metadata !3504, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8* %0, metadata !3433, metadata !DIExpression()) #35, !dbg !3506
  call void @llvm.dbg.value(metadata i64 %1, metadata !3434, metadata !DIExpression()) #35, !dbg !3506
  call void @llvm.dbg.value(metadata i8 58, metadata !3435, metadata !DIExpression()) #35, !dbg !3506
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3508
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3508
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3436, metadata !DIExpression()) #35, !dbg !3509
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3510, !tbaa.struct !3441
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2452, metadata !DIExpression()) #35, !dbg !3511
  call void @llvm.dbg.value(metadata i8 58, metadata !2453, metadata !DIExpression()) #35, !dbg !3511
  call void @llvm.dbg.value(metadata i32 1, metadata !2454, metadata !DIExpression()) #35, !dbg !3511
  call void @llvm.dbg.value(metadata i8 58, metadata !2455, metadata !DIExpression()) #35, !dbg !3511
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3513
  call void @llvm.dbg.value(metadata i32* %5, metadata !2456, metadata !DIExpression()) #35, !dbg !3511
  call void @llvm.dbg.value(metadata i32 26, metadata !2458, metadata !DIExpression()) #35, !dbg !3511
  %6 = load i32, i32* %5, align 4, !dbg !3514, !tbaa !646
  call void @llvm.dbg.value(metadata i32 %6, metadata !2459, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !3511
  %7 = or i32 %6, 67108864, !dbg !3515
  store i32 %7, i32* %5, align 4, !dbg !3515, !tbaa !646
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3516
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3517
  ret i8* %8, !dbg !3518
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3519 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3521, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i32 %1, metadata !3522, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i8* %2, metadata !3523, metadata !DIExpression()), !dbg !3525
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3526
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3526
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3524, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i32 %1, metadata !3331, metadata !DIExpression()) #35, !dbg !3528
  call void @llvm.dbg.value(metadata i32 0, metadata !3336, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3528
  %6 = icmp eq i32 %1, 10, !dbg !3530
  br i1 %6, label %7, label %8, !dbg !3531

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3532, !noalias !3533
  unreachable, !dbg !3532

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3336, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3528
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3536
  store i32 %1, i32* %9, align 8, !dbg !3536, !tbaa.struct !3441
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3536
  %11 = bitcast i32* %10 to i8*, !dbg !3536
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3536
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2452, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i8 58, metadata !2453, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i32 1, metadata !2454, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i8 58, metadata !2455, metadata !DIExpression()), !dbg !3537
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3539
  call void @llvm.dbg.value(metadata i32* %12, metadata !2456, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i32 26, metadata !2458, metadata !DIExpression()), !dbg !3537
  %13 = load i32, i32* %12, align 4, !dbg !3540, !tbaa !646
  call void @llvm.dbg.value(metadata i32 %13, metadata !2459, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3537
  %14 = or i32 %13, 67108864, !dbg !3541
  store i32 %14, i32* %12, align 4, !dbg !3541, !tbaa !646
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3542
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3543
  ret i8* %15, !dbg !3544
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !3545 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3549, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i8* %1, metadata !3550, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i8* %2, metadata !3551, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i8* %3, metadata !3552, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i32 %0, metadata !3554, metadata !DIExpression()) #35, !dbg !3564
  call void @llvm.dbg.value(metadata i8* %1, metadata !3559, metadata !DIExpression()) #35, !dbg !3564
  call void @llvm.dbg.value(metadata i8* %2, metadata !3560, metadata !DIExpression()) #35, !dbg !3564
  call void @llvm.dbg.value(metadata i8* %3, metadata !3561, metadata !DIExpression()) #35, !dbg !3564
  call void @llvm.dbg.value(metadata i64 -1, metadata !3562, metadata !DIExpression()) #35, !dbg !3564
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3566
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3566
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3563, metadata !DIExpression()) #35, !dbg !3567
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3568, !tbaa.struct !3441
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2492, metadata !DIExpression()) #35, !dbg !3569
  call void @llvm.dbg.value(metadata i8* %1, metadata !2493, metadata !DIExpression()) #35, !dbg !3569
  call void @llvm.dbg.value(metadata i8* %2, metadata !2494, metadata !DIExpression()) #35, !dbg !3569
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2492, metadata !DIExpression()) #35, !dbg !3569
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3571
  store i32 10, i32* %7, align 8, !dbg !3572, !tbaa !2434
  %8 = icmp ne i8* %1, null, !dbg !3573
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3574
  br i1 %10, label %12, label %11, !dbg !3574

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3575
  unreachable, !dbg !3575

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3576
  store i8* %1, i8** %13, align 8, !dbg !3577, !tbaa !2507
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3578
  store i8* %2, i8** %14, align 8, !dbg !3579, !tbaa !2510
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #35, !dbg !3580
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3581
  ret i8* %15, !dbg !3582
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3555 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3554, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i8* %1, metadata !3559, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i8* %2, metadata !3560, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i8* %3, metadata !3561, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i64 %4, metadata !3562, metadata !DIExpression()), !dbg !3583
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3584
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #35, !dbg !3584
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3563, metadata !DIExpression()), !dbg !3585
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3586, !tbaa.struct !3441
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2492, metadata !DIExpression()) #35, !dbg !3587
  call void @llvm.dbg.value(metadata i8* %1, metadata !2493, metadata !DIExpression()) #35, !dbg !3587
  call void @llvm.dbg.value(metadata i8* %2, metadata !2494, metadata !DIExpression()) #35, !dbg !3587
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2492, metadata !DIExpression()) #35, !dbg !3587
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3589
  store i32 10, i32* %8, align 8, !dbg !3590, !tbaa !2434
  %9 = icmp ne i8* %1, null, !dbg !3591
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3592
  br i1 %11, label %13, label %12, !dbg !3592

12:                                               ; preds = %5
  tail call void @abort() #37, !dbg !3593
  unreachable, !dbg !3593

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3594
  store i8* %1, i8** %14, align 8, !dbg !3595, !tbaa !2507
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3596
  store i8* %2, i8** %15, align 8, !dbg !3597, !tbaa !2510
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3598
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #35, !dbg !3599
  ret i8* %16, !dbg !3600
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3601 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3605, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i8* %1, metadata !3606, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i8* %2, metadata !3607, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 0, metadata !3549, metadata !DIExpression()) #35, !dbg !3609
  call void @llvm.dbg.value(metadata i8* %0, metadata !3550, metadata !DIExpression()) #35, !dbg !3609
  call void @llvm.dbg.value(metadata i8* %1, metadata !3551, metadata !DIExpression()) #35, !dbg !3609
  call void @llvm.dbg.value(metadata i8* %2, metadata !3552, metadata !DIExpression()) #35, !dbg !3609
  call void @llvm.dbg.value(metadata i32 0, metadata !3554, metadata !DIExpression()) #35, !dbg !3611
  call void @llvm.dbg.value(metadata i8* %0, metadata !3559, metadata !DIExpression()) #35, !dbg !3611
  call void @llvm.dbg.value(metadata i8* %1, metadata !3560, metadata !DIExpression()) #35, !dbg !3611
  call void @llvm.dbg.value(metadata i8* %2, metadata !3561, metadata !DIExpression()) #35, !dbg !3611
  call void @llvm.dbg.value(metadata i64 -1, metadata !3562, metadata !DIExpression()) #35, !dbg !3611
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3613
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3613
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3563, metadata !DIExpression()) #35, !dbg !3614
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3615, !tbaa.struct !3441
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2492, metadata !DIExpression()) #35, !dbg !3616
  call void @llvm.dbg.value(metadata i8* %0, metadata !2493, metadata !DIExpression()) #35, !dbg !3616
  call void @llvm.dbg.value(metadata i8* %1, metadata !2494, metadata !DIExpression()) #35, !dbg !3616
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2492, metadata !DIExpression()) #35, !dbg !3616
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3618
  store i32 10, i32* %6, align 8, !dbg !3619, !tbaa !2434
  %7 = icmp ne i8* %0, null, !dbg !3620
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3621
  br i1 %9, label %11, label %10, !dbg !3621

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !3622
  unreachable, !dbg !3622

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3623
  store i8* %0, i8** %12, align 8, !dbg !3624, !tbaa !2507
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3625
  store i8* %1, i8** %13, align 8, !dbg !3626, !tbaa !2510
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #35, !dbg !3627
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3628
  ret i8* %14, !dbg !3629
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3630 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3634, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i8* %1, metadata !3635, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i8* %2, metadata !3636, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i64 %3, metadata !3637, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i32 0, metadata !3554, metadata !DIExpression()) #35, !dbg !3639
  call void @llvm.dbg.value(metadata i8* %0, metadata !3559, metadata !DIExpression()) #35, !dbg !3639
  call void @llvm.dbg.value(metadata i8* %1, metadata !3560, metadata !DIExpression()) #35, !dbg !3639
  call void @llvm.dbg.value(metadata i8* %2, metadata !3561, metadata !DIExpression()) #35, !dbg !3639
  call void @llvm.dbg.value(metadata i64 %3, metadata !3562, metadata !DIExpression()) #35, !dbg !3639
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3641
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3641
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3563, metadata !DIExpression()) #35, !dbg !3642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3643, !tbaa.struct !3441
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2492, metadata !DIExpression()) #35, !dbg !3644
  call void @llvm.dbg.value(metadata i8* %0, metadata !2493, metadata !DIExpression()) #35, !dbg !3644
  call void @llvm.dbg.value(metadata i8* %1, metadata !2494, metadata !DIExpression()) #35, !dbg !3644
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2492, metadata !DIExpression()) #35, !dbg !3644
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3646
  store i32 10, i32* %7, align 8, !dbg !3647, !tbaa !2434
  %8 = icmp ne i8* %0, null, !dbg !3648
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3649
  br i1 %10, label %12, label %11, !dbg !3649

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3650
  unreachable, !dbg !3650

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3651
  store i8* %0, i8** %13, align 8, !dbg !3652, !tbaa !2507
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3653
  store i8* %1, i8** %14, align 8, !dbg !3654, !tbaa !2510
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #35, !dbg !3655
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3656
  ret i8* %15, !dbg !3657
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3658 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3662, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i8* %1, metadata !3663, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i64 %2, metadata !3664, metadata !DIExpression()), !dbg !3665
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3666
  ret i8* %4, !dbg !3667
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3668 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3672, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %1, metadata !3673, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i32 0, metadata !3662, metadata !DIExpression()) #35, !dbg !3675
  call void @llvm.dbg.value(metadata i8* %0, metadata !3663, metadata !DIExpression()) #35, !dbg !3675
  call void @llvm.dbg.value(metadata i64 %1, metadata !3664, metadata !DIExpression()) #35, !dbg !3675
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3677
  ret i8* %3, !dbg !3678
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3679 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3683, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata i8* %1, metadata !3684, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata i32 %0, metadata !3662, metadata !DIExpression()) #35, !dbg !3686
  call void @llvm.dbg.value(metadata i8* %1, metadata !3663, metadata !DIExpression()) #35, !dbg !3686
  call void @llvm.dbg.value(metadata i64 -1, metadata !3664, metadata !DIExpression()) #35, !dbg !3686
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3688
  ret i8* %3, !dbg !3689
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !3690 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3692, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i32 0, metadata !3683, metadata !DIExpression()) #35, !dbg !3694
  call void @llvm.dbg.value(metadata i8* %0, metadata !3684, metadata !DIExpression()) #35, !dbg !3694
  call void @llvm.dbg.value(metadata i32 0, metadata !3662, metadata !DIExpression()) #35, !dbg !3696
  call void @llvm.dbg.value(metadata i8* %0, metadata !3663, metadata !DIExpression()) #35, !dbg !3696
  call void @llvm.dbg.value(metadata i64 -1, metadata !3664, metadata !DIExpression()) #35, !dbg !3696
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3698
  ret i8* %2, !dbg !3699
}

; Function Attrs: nounwind uwtable
define dso_local i32 @str2sig(i8* noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #12 !dbg !3700 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3704, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32* %1, metadata !3705, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i8* %0, metadata !3707, metadata !DIExpression()) #35, !dbg !3728
  %6 = load i8, i8* %0, align 1, !dbg !3730, !tbaa !655
  %7 = zext i8 %6 to i32, !dbg !3730
  %8 = add nsw i32 %7, -48, !dbg !3730
  %9 = icmp ult i32 %8, 10, !dbg !3730
  br i1 %9, label %10, label %19, !dbg !3731

10:                                               ; preds = %2
  %11 = bitcast i8** %3 to i8*, !dbg !3732
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #35, !dbg !3732
  call void @llvm.dbg.value(metadata i8** %3, metadata !3710, metadata !DIExpression(DW_OP_deref)) #35, !dbg !3733
  %12 = call i64 @strtol(i8* noundef nonnull %0, i8** noundef nonnull %3, i32 noundef 10) #35, !dbg !3734
  call void @llvm.dbg.value(metadata i64 %12, metadata !3713, metadata !DIExpression()) #35, !dbg !3733
  %13 = load i8*, i8** %3, align 8, !dbg !3735, !tbaa !538
  call void @llvm.dbg.value(metadata i8* %13, metadata !3710, metadata !DIExpression()) #35, !dbg !3733
  %14 = load i8, i8* %13, align 1, !dbg !3737, !tbaa !655
  %15 = icmp ne i8 %14, 0, !dbg !3737
  %16 = icmp sgt i64 %12, 64
  %17 = select i1 %15, i1 true, i1 %16, !dbg !3738
  %18 = trunc i64 %12 to i32, !dbg !3738
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #35, !dbg !3739
  br i1 %17, label %77, label %78

19:                                               ; preds = %2, %24
  %20 = phi i64 [ %25, %24 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !3714, metadata !DIExpression()) #35, !dbg !3740
  %21 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %20, i32 1, i64 0, !dbg !3741
  call void @llvm.dbg.value(metadata i8* %21, metadata !3744, metadata !DIExpression()) #35, !dbg !3748
  call void @llvm.dbg.value(metadata i8* %0, metadata !3747, metadata !DIExpression()) #35, !dbg !3748
  %22 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %21, i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !3750
  %23 = icmp eq i32 %22, 0, !dbg !3751
  br i1 %23, label %27, label %24, !dbg !3752

24:                                               ; preds = %19
  %25 = add nuw nsw i64 %20, 1, !dbg !3753
  call void @llvm.dbg.value(metadata i64 %25, metadata !3714, metadata !DIExpression()) #35, !dbg !3740
  %26 = icmp eq i64 %25, 35, !dbg !3754
  br i1 %26, label %31, label %19, !dbg !3755, !llvm.loop !3756

27:                                               ; preds = %19
  %28 = and i64 %20, 4294967295, !dbg !3758
  %29 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %28, i32 0, !dbg !3759
  %30 = load i32, i32* %29, align 4, !dbg !3759, !tbaa !3760
  br label %78

31:                                               ; preds = %24
  %32 = tail call i32 @__libc_current_sigrtmin() #35, !dbg !3762
  call void @llvm.dbg.value(metadata i32 %32, metadata !3717, metadata !DIExpression()) #35, !dbg !3763
  %33 = tail call i32 @__libc_current_sigrtmax() #35, !dbg !3764
  call void @llvm.dbg.value(metadata i32 %33, metadata !3719, metadata !DIExpression()) #35, !dbg !3763
  %34 = icmp sgt i32 %32, 0, !dbg !3765
  br i1 %34, label %35, label %55, !dbg !3766

35:                                               ; preds = %31
  %36 = tail call i32 @strncmp(i8* noundef nonnull %0, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.168, i64 0, i64 0), i64 noundef 5) #36, !dbg !3767
  %37 = icmp eq i32 %36, 0, !dbg !3768
  br i1 %37, label %38, label %55, !dbg !3769

38:                                               ; preds = %35
  %39 = bitcast i8** %4 to i8*, !dbg !3770
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %39) #35, !dbg !3770
  %40 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !3771
  call void @llvm.dbg.value(metadata i8** %4, metadata !3720, metadata !DIExpression(DW_OP_deref)) #35, !dbg !3772
  %41 = call i64 @strtol(i8* noundef nonnull %40, i8** noundef nonnull %4, i32 noundef 10) #35, !dbg !3773
  call void @llvm.dbg.value(metadata i64 %41, metadata !3723, metadata !DIExpression()) #35, !dbg !3772
  %42 = load i8*, i8** %4, align 8, !dbg !3774, !tbaa !538
  call void @llvm.dbg.value(metadata i8* %42, metadata !3720, metadata !DIExpression()) #35, !dbg !3772
  %43 = load i8, i8* %42, align 1, !dbg !3776, !tbaa !655
  %44 = icmp eq i8 %43, 0, !dbg !3776
  %45 = icmp sgt i64 %41, -1
  %46 = select i1 %44, i1 %45, i1 false, !dbg !3777
  br i1 %46, label %47, label %51, !dbg !3777

47:                                               ; preds = %38
  %48 = sub nsw i32 %33, %32, !dbg !3778
  %49 = sext i32 %48 to i64, !dbg !3779
  %50 = icmp sgt i64 %41, %49, !dbg !3780
  br i1 %50, label %51, label %52, !dbg !3781

51:                                               ; preds = %47, %38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39) #35, !dbg !3782
  br label %77

52:                                               ; preds = %47
  %53 = trunc i64 %41 to i32, !dbg !3783
  %54 = add i32 %32, %53, !dbg !3783
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39) #35, !dbg !3782
  br label %78

55:                                               ; preds = %35, %31
  %56 = icmp sgt i32 %33, 0, !dbg !3784
  br i1 %56, label %57, label %77, !dbg !3785

57:                                               ; preds = %55
  %58 = tail call i32 @strncmp(i8* noundef nonnull %0, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.169, i64 0, i64 0), i64 noundef 5) #36, !dbg !3786
  %59 = icmp eq i32 %58, 0, !dbg !3787
  br i1 %59, label %60, label %77, !dbg !3788

60:                                               ; preds = %57
  %61 = bitcast i8** %5 to i8*, !dbg !3789
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %61) #35, !dbg !3789
  %62 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !3790
  call void @llvm.dbg.value(metadata i8** %5, metadata !3724, metadata !DIExpression(DW_OP_deref)) #35, !dbg !3791
  %63 = call i64 @strtol(i8* noundef nonnull %62, i8** noundef nonnull %5, i32 noundef 10) #35, !dbg !3792
  call void @llvm.dbg.value(metadata i64 %63, metadata !3727, metadata !DIExpression()) #35, !dbg !3791
  %64 = load i8*, i8** %5, align 8, !dbg !3793, !tbaa !538
  call void @llvm.dbg.value(metadata i8* %64, metadata !3724, metadata !DIExpression()) #35, !dbg !3791
  %65 = load i8, i8* %64, align 1, !dbg !3795, !tbaa !655
  %66 = icmp eq i8 %65, 0, !dbg !3795
  br i1 %66, label %67, label %73, !dbg !3796

67:                                               ; preds = %60
  %68 = sub nsw i32 %32, %33, !dbg !3797
  %69 = sext i32 %68 to i64, !dbg !3798
  %70 = icmp sge i64 %63, %69, !dbg !3799
  %71 = icmp slt i64 %63, 1
  %72 = and i1 %70, %71, !dbg !3800
  br i1 %72, label %74, label %73, !dbg !3800

73:                                               ; preds = %67, %60
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %61) #35, !dbg !3801
  br label %77

74:                                               ; preds = %67
  %75 = trunc i64 %63 to i32, !dbg !3802
  %76 = add i32 %33, %75, !dbg !3802
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %61) #35, !dbg !3801
  br label %78

77:                                               ; preds = %73, %57, %55, %51, %10
  br label %78, !dbg !3803

78:                                               ; preds = %10, %27, %52, %74, %77
  %79 = phi i32 [ %18, %10 ], [ -1, %77 ], [ %30, %27 ], [ %54, %52 ], [ %76, %74 ], !dbg !3728
  store i32 %79, i32* %1, align 4, !dbg !3804, !tbaa !646
  %80 = ashr i32 %79, 31, !dbg !3805
  ret i32 %80, !dbg !3806
}

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @sig2str(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3807 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3811, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i8* %1, metadata !3812, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i32 0, metadata !3813, metadata !DIExpression()), !dbg !3821
  br label %3, !dbg !3822

3:                                                ; preds = %2, %8
  %4 = phi i64 [ 0, %2 ], [ %9, %8 ]
  call void @llvm.dbg.value(metadata i64 %4, metadata !3813, metadata !DIExpression()), !dbg !3821
  %5 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %4, i32 0, !dbg !3823
  %6 = load i32, i32* %5, align 4, !dbg !3823, !tbaa !3760
  %7 = icmp eq i32 %6, %0, !dbg !3826
  br i1 %7, label %11, label %8, !dbg !3827

8:                                                ; preds = %3
  %9 = add nuw nsw i64 %4, 1, !dbg !3828
  call void @llvm.dbg.value(metadata i64 %9, metadata !3813, metadata !DIExpression()), !dbg !3821
  %10 = icmp eq i64 %9, 35, !dbg !3829
  br i1 %10, label %15, label %3, !dbg !3822, !llvm.loop !3830

11:                                               ; preds = %3
  %12 = and i64 %4, 4294967295, !dbg !3832
  %13 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %12, i32 1, i64 0, !dbg !3833
  call void @llvm.dbg.value(metadata i8* %1, metadata !3835, metadata !DIExpression()) #35, !dbg !3842
  call void @llvm.dbg.value(metadata i8* %13, metadata !3841, metadata !DIExpression()) #35, !dbg !3842
  %14 = tail call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(1) %13), !dbg !3844
  br label %33

15:                                               ; preds = %8
  %16 = tail call i32 @__libc_current_sigrtmin() #35, !dbg !3845
  call void @llvm.dbg.value(metadata i32 %16, metadata !3815, metadata !DIExpression()), !dbg !3846
  %17 = tail call i32 @__libc_current_sigrtmax() #35, !dbg !3847
  call void @llvm.dbg.value(metadata i32 %17, metadata !3817, metadata !DIExpression()), !dbg !3846
  %18 = icmp sgt i32 %16, %0, !dbg !3848
  %19 = icmp slt i32 %17, %0
  %20 = select i1 %18, i1 true, i1 %19, !dbg !3850
  br i1 %20, label %33, label %21, !dbg !3850

21:                                               ; preds = %15
  %22 = sub nsw i32 %17, %16, !dbg !3851
  %23 = sdiv i32 %22, 2, !dbg !3853
  %24 = add nsw i32 %23, %16, !dbg !3854
  %25 = icmp slt i32 %24, %0, !dbg !3855
  call void @llvm.dbg.value(metadata i8* %1, metadata !3835, metadata !DIExpression()) #35, !dbg !3856
  call void @llvm.dbg.value(metadata i8* %1, metadata !3835, metadata !DIExpression()) #35, !dbg !3859
  %26 = select i1 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.169, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.168, i64 0, i64 0)
  %27 = select i1 %25, i32 %17, i32 %16
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %1, i8* noundef nonnull align 1 dereferenceable(6) %26, i64 6, i1 false), !dbg !3862
  call void @llvm.dbg.value(metadata i32 %27, metadata !3818, metadata !DIExpression()), !dbg !3846
  %28 = sub nsw i32 %0, %27, !dbg !3863
  call void @llvm.dbg.value(metadata i32 %28, metadata !3819, metadata !DIExpression()), !dbg !3846
  %29 = icmp eq i32 %28, 0, !dbg !3864
  br i1 %29, label %33, label %30, !dbg !3866

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !3867
  %32 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %31, i32 noundef 1, i64 noundef -1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.172, i64 0, i64 0), i32 noundef %28) #35, !dbg !3867
  br label %33, !dbg !3867

33:                                               ; preds = %11, %15, %30, %21
  %34 = phi i32 [ 0, %11 ], [ -1, %15 ], [ 0, %30 ], [ 0, %21 ], !dbg !3820
  ret i32 %34, !dbg !3868
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) #7

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8* noundef, i32 noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3869 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3908, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i8* %1, metadata !3909, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i8* %2, metadata !3910, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i8* %3, metadata !3911, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i8** %4, metadata !3912, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64 %5, metadata !3913, metadata !DIExpression()), !dbg !3914
  %7 = icmp eq i8* %1, null, !dbg !3915
  br i1 %7, label %10, label %8, !dbg !3917

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.173, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #35, !dbg !3918
  br label %12, !dbg !3918

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.174, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #35, !dbg !3919
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.175, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.176, i64 0, i64 0), i32 noundef 5) #35, !dbg !3920
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #35, !dbg !3920
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.177, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3921
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.175, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.178, i64 0, i64 0), i32 noundef 5) #35, !dbg !3922
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.179, i64 0, i64 0)) #35, !dbg !3922
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.177, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3923
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
  ], !dbg !3924

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.175, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.180, i64 0, i64 0), i32 noundef 5) #35, !dbg !3925
  %21 = load i8*, i8** %4, align 8, !dbg !3925, !tbaa !538
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #35, !dbg !3925
  br label %147, !dbg !3927

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.175, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.181, i64 0, i64 0), i32 noundef 5) #35, !dbg !3928
  %25 = load i8*, i8** %4, align 8, !dbg !3928, !tbaa !538
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3928
  %27 = load i8*, i8** %26, align 8, !dbg !3928, !tbaa !538
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #35, !dbg !3928
  br label %147, !dbg !3929

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.175, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.182, i64 0, i64 0), i32 noundef 5) #35, !dbg !3930
  %31 = load i8*, i8** %4, align 8, !dbg !3930, !tbaa !538
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3930
  %33 = load i8*, i8** %32, align 8, !dbg !3930, !tbaa !538
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3930
  %35 = load i8*, i8** %34, align 8, !dbg !3930, !tbaa !538
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #35, !dbg !3930
  br label %147, !dbg !3931

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.175, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.183, i64 0, i64 0), i32 noundef 5) #35, !dbg !3932
  %39 = load i8*, i8** %4, align 8, !dbg !3932, !tbaa !538
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3932
  %41 = load i8*, i8** %40, align 8, !dbg !3932, !tbaa !538
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3932
  %43 = load i8*, i8** %42, align 8, !dbg !3932, !tbaa !538
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3932
  %45 = load i8*, i8** %44, align 8, !dbg !3932, !tbaa !538
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #35, !dbg !3932
  br label %147, !dbg !3933

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.175, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.184, i64 0, i64 0), i32 noundef 5) #35, !dbg !3934
  %49 = load i8*, i8** %4, align 8, !dbg !3934, !tbaa !538
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3934
  %51 = load i8*, i8** %50, align 8, !dbg !3934, !tbaa !538
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3934
  %53 = load i8*, i8** %52, align 8, !dbg !3934, !tbaa !538
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3934
  %55 = load i8*, i8** %54, align 8, !dbg !3934, !tbaa !538
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3934
  %57 = load i8*, i8** %56, align 8, !dbg !3934, !tbaa !538
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #35, !dbg !3934
  br label %147, !dbg !3935

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.175, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.185, i64 0, i64 0), i32 noundef 5) #35, !dbg !3936
  %61 = load i8*, i8** %4, align 8, !dbg !3936, !tbaa !538
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3936
  %63 = load i8*, i8** %62, align 8, !dbg !3936, !tbaa !538
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3936
  %65 = load i8*, i8** %64, align 8, !dbg !3936, !tbaa !538
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3936
  %67 = load i8*, i8** %66, align 8, !dbg !3936, !tbaa !538
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3936
  %69 = load i8*, i8** %68, align 8, !dbg !3936, !tbaa !538
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3936
  %71 = load i8*, i8** %70, align 8, !dbg !3936, !tbaa !538
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #35, !dbg !3936
  br label %147, !dbg !3937

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.175, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.186, i64 0, i64 0), i32 noundef 5) #35, !dbg !3938
  %75 = load i8*, i8** %4, align 8, !dbg !3938, !tbaa !538
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3938
  %77 = load i8*, i8** %76, align 8, !dbg !3938, !tbaa !538
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3938
  %79 = load i8*, i8** %78, align 8, !dbg !3938, !tbaa !538
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3938
  %81 = load i8*, i8** %80, align 8, !dbg !3938, !tbaa !538
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3938
  %83 = load i8*, i8** %82, align 8, !dbg !3938, !tbaa !538
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3938
  %85 = load i8*, i8** %84, align 8, !dbg !3938, !tbaa !538
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3938
  %87 = load i8*, i8** %86, align 8, !dbg !3938, !tbaa !538
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #35, !dbg !3938
  br label %147, !dbg !3939

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.175, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.187, i64 0, i64 0), i32 noundef 5) #35, !dbg !3940
  %91 = load i8*, i8** %4, align 8, !dbg !3940, !tbaa !538
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3940
  %93 = load i8*, i8** %92, align 8, !dbg !3940, !tbaa !538
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3940
  %95 = load i8*, i8** %94, align 8, !dbg !3940, !tbaa !538
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3940
  %97 = load i8*, i8** %96, align 8, !dbg !3940, !tbaa !538
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3940
  %99 = load i8*, i8** %98, align 8, !dbg !3940, !tbaa !538
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3940
  %101 = load i8*, i8** %100, align 8, !dbg !3940, !tbaa !538
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3940
  %103 = load i8*, i8** %102, align 8, !dbg !3940, !tbaa !538
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3940
  %105 = load i8*, i8** %104, align 8, !dbg !3940, !tbaa !538
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #35, !dbg !3940
  br label %147, !dbg !3941

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.175, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.188, i64 0, i64 0), i32 noundef 5) #35, !dbg !3942
  %109 = load i8*, i8** %4, align 8, !dbg !3942, !tbaa !538
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3942
  %111 = load i8*, i8** %110, align 8, !dbg !3942, !tbaa !538
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3942
  %113 = load i8*, i8** %112, align 8, !dbg !3942, !tbaa !538
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3942
  %115 = load i8*, i8** %114, align 8, !dbg !3942, !tbaa !538
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3942
  %117 = load i8*, i8** %116, align 8, !dbg !3942, !tbaa !538
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3942
  %119 = load i8*, i8** %118, align 8, !dbg !3942, !tbaa !538
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3942
  %121 = load i8*, i8** %120, align 8, !dbg !3942, !tbaa !538
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3942
  %123 = load i8*, i8** %122, align 8, !dbg !3942, !tbaa !538
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3942
  %125 = load i8*, i8** %124, align 8, !dbg !3942, !tbaa !538
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #35, !dbg !3942
  br label %147, !dbg !3943

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.175, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.189, i64 0, i64 0), i32 noundef 5) #35, !dbg !3944
  %129 = load i8*, i8** %4, align 8, !dbg !3944, !tbaa !538
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3944
  %131 = load i8*, i8** %130, align 8, !dbg !3944, !tbaa !538
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3944
  %133 = load i8*, i8** %132, align 8, !dbg !3944, !tbaa !538
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3944
  %135 = load i8*, i8** %134, align 8, !dbg !3944, !tbaa !538
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3944
  %137 = load i8*, i8** %136, align 8, !dbg !3944, !tbaa !538
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3944
  %139 = load i8*, i8** %138, align 8, !dbg !3944, !tbaa !538
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3944
  %141 = load i8*, i8** %140, align 8, !dbg !3944, !tbaa !538
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3944
  %143 = load i8*, i8** %142, align 8, !dbg !3944, !tbaa !538
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3944
  %145 = load i8*, i8** %144, align 8, !dbg !3944, !tbaa !538
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #35, !dbg !3944
  br label %147, !dbg !3945

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3946
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3947 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3951, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i8* %1, metadata !3952, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i8* %2, metadata !3953, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i8* %3, metadata !3954, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i8** %4, metadata !3955, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i64 0, metadata !3956, metadata !DIExpression()), !dbg !3957
  br label %6, !dbg !3958

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3960
  call void @llvm.dbg.value(metadata i64 %7, metadata !3956, metadata !DIExpression()), !dbg !3957
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3961
  %9 = load i8*, i8** %8, align 8, !dbg !3961, !tbaa !538
  %10 = icmp eq i8* %9, null, !dbg !3963
  %11 = add i64 %7, 1, !dbg !3964
  call void @llvm.dbg.value(metadata i64 %11, metadata !3956, metadata !DIExpression()), !dbg !3957
  br i1 %10, label %12, label %6, !dbg !3963, !llvm.loop !3965

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3967
  ret void, !dbg !3968
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3969 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3984, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i8* %1, metadata !3985, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i8* %2, metadata !3986, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i8* %3, metadata !3987, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3988, metadata !DIExpression()), !dbg !3993
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3994
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3994
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3990, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i64 0, metadata !3989, metadata !DIExpression()), !dbg !3992
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3989, metadata !DIExpression()), !dbg !3992
  %11 = load i32, i32* %8, align 8, !dbg !3996
  %12 = icmp sgt i32 %11, -1, !dbg !3996
  br i1 %12, label %20, label %13, !dbg !3996

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3996
  store i32 %14, i32* %8, align 8, !dbg !3996
  %15 = icmp ult i32 %11, -7, !dbg !3996
  br i1 %15, label %16, label %20, !dbg !3996

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3996
  %18 = sext i32 %11 to i64, !dbg !3996
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3996
  br label %24, !dbg !3996

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3996
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3996
  store i8* %23, i8** %10, align 8, !dbg !3996
  br label %24, !dbg !3996

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3996
  %28 = load i8*, i8** %27, align 8, !dbg !3996
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3999
  store i8* %28, i8** %29, align 8, !dbg !4000, !tbaa !538
  %30 = icmp eq i8* %28, null, !dbg !4001
  br i1 %30, label %210, label %31, !dbg !4002

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3989, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i64 1, metadata !3989, metadata !DIExpression()), !dbg !3992
  %32 = icmp sgt i32 %25, -1, !dbg !3996
  br i1 %32, label %40, label %33, !dbg !3996

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3996
  store i32 %34, i32* %8, align 8, !dbg !3996
  %35 = icmp ult i32 %25, -7, !dbg !3996
  br i1 %35, label %36, label %40, !dbg !3996

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3996
  %38 = sext i32 %25 to i64, !dbg !3996
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3996
  br label %44, !dbg !3996

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3996
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3996
  store i8* %43, i8** %10, align 8, !dbg !3996
  br label %44, !dbg !3996

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3996
  %48 = load i8*, i8** %47, align 8, !dbg !3996
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3999
  store i8* %48, i8** %49, align 8, !dbg !4000, !tbaa !538
  %50 = icmp eq i8* %48, null, !dbg !4001
  br i1 %50, label %210, label %51, !dbg !4002

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3989, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i64 2, metadata !3989, metadata !DIExpression()), !dbg !3992
  %52 = icmp sgt i32 %45, -1, !dbg !3996
  br i1 %52, label %60, label %53, !dbg !3996

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3996
  store i32 %54, i32* %8, align 8, !dbg !3996
  %55 = icmp ult i32 %45, -7, !dbg !3996
  br i1 %55, label %56, label %60, !dbg !3996

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3996
  %58 = sext i32 %45 to i64, !dbg !3996
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3996
  br label %64, !dbg !3996

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3996
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3996
  store i8* %63, i8** %10, align 8, !dbg !3996
  br label %64, !dbg !3996

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3996
  %68 = load i8*, i8** %67, align 8, !dbg !3996
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3999
  store i8* %68, i8** %69, align 8, !dbg !4000, !tbaa !538
  %70 = icmp eq i8* %68, null, !dbg !4001
  br i1 %70, label %210, label %71, !dbg !4002

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3989, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i64 3, metadata !3989, metadata !DIExpression()), !dbg !3992
  %72 = icmp sgt i32 %65, -1, !dbg !3996
  br i1 %72, label %80, label %73, !dbg !3996

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3996
  store i32 %74, i32* %8, align 8, !dbg !3996
  %75 = icmp ult i32 %65, -7, !dbg !3996
  br i1 %75, label %76, label %80, !dbg !3996

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3996
  %78 = sext i32 %65 to i64, !dbg !3996
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3996
  br label %84, !dbg !3996

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3996
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3996
  store i8* %83, i8** %10, align 8, !dbg !3996
  br label %84, !dbg !3996

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3996
  %88 = load i8*, i8** %87, align 8, !dbg !3996
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3999
  store i8* %88, i8** %89, align 8, !dbg !4000, !tbaa !538
  %90 = icmp eq i8* %88, null, !dbg !4001
  br i1 %90, label %210, label %91, !dbg !4002

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3989, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i64 4, metadata !3989, metadata !DIExpression()), !dbg !3992
  %92 = icmp sgt i32 %85, -1, !dbg !3996
  br i1 %92, label %100, label %93, !dbg !3996

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3996
  store i32 %94, i32* %8, align 8, !dbg !3996
  %95 = icmp ult i32 %85, -7, !dbg !3996
  br i1 %95, label %96, label %100, !dbg !3996

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3996
  %98 = sext i32 %85 to i64, !dbg !3996
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3996
  br label %104, !dbg !3996

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3996
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3996
  store i8* %103, i8** %10, align 8, !dbg !3996
  br label %104, !dbg !3996

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3996
  %108 = load i8*, i8** %107, align 8, !dbg !3996
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3999
  store i8* %108, i8** %109, align 8, !dbg !4000, !tbaa !538
  %110 = icmp eq i8* %108, null, !dbg !4001
  br i1 %110, label %210, label %111, !dbg !4002

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3989, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i64 5, metadata !3989, metadata !DIExpression()), !dbg !3992
  %112 = icmp sgt i32 %105, -1, !dbg !3996
  br i1 %112, label %120, label %113, !dbg !3996

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3996
  store i32 %114, i32* %8, align 8, !dbg !3996
  %115 = icmp ult i32 %105, -7, !dbg !3996
  br i1 %115, label %116, label %120, !dbg !3996

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3996
  %118 = sext i32 %105 to i64, !dbg !3996
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3996
  br label %124, !dbg !3996

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3996
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3996
  store i8* %123, i8** %10, align 8, !dbg !3996
  br label %124, !dbg !3996

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3996
  %128 = load i8*, i8** %127, align 8, !dbg !3996
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3999
  store i8* %128, i8** %129, align 8, !dbg !4000, !tbaa !538
  %130 = icmp eq i8* %128, null, !dbg !4001
  br i1 %130, label %210, label %131, !dbg !4002

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3989, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i64 6, metadata !3989, metadata !DIExpression()), !dbg !3992
  %132 = icmp sgt i32 %125, -1, !dbg !3996
  br i1 %132, label %140, label %133, !dbg !3996

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3996
  store i32 %134, i32* %8, align 8, !dbg !3996
  %135 = icmp ult i32 %125, -7, !dbg !3996
  br i1 %135, label %136, label %140, !dbg !3996

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3996
  %138 = sext i32 %125 to i64, !dbg !3996
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3996
  br label %144, !dbg !3996

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3996
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3996
  store i8* %143, i8** %10, align 8, !dbg !3996
  br label %144, !dbg !3996

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3996
  %148 = load i8*, i8** %147, align 8, !dbg !3996
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3999
  store i8* %148, i8** %149, align 8, !dbg !4000, !tbaa !538
  %150 = icmp eq i8* %148, null, !dbg !4001
  br i1 %150, label %210, label %151, !dbg !4002

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3989, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i64 7, metadata !3989, metadata !DIExpression()), !dbg !3992
  %152 = icmp sgt i32 %145, -1, !dbg !3996
  br i1 %152, label %160, label %153, !dbg !3996

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3996
  store i32 %154, i32* %8, align 8, !dbg !3996
  %155 = icmp ult i32 %145, -7, !dbg !3996
  br i1 %155, label %156, label %160, !dbg !3996

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3996
  %158 = sext i32 %145 to i64, !dbg !3996
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3996
  br label %164, !dbg !3996

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3996
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3996
  store i8* %163, i8** %10, align 8, !dbg !3996
  br label %164, !dbg !3996

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3996
  %168 = load i8*, i8** %167, align 8, !dbg !3996
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3999
  store i8* %168, i8** %169, align 8, !dbg !4000, !tbaa !538
  %170 = icmp eq i8* %168, null, !dbg !4001
  br i1 %170, label %210, label %171, !dbg !4002

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3989, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i64 8, metadata !3989, metadata !DIExpression()), !dbg !3992
  %172 = icmp sgt i32 %165, -1, !dbg !3996
  br i1 %172, label %180, label %173, !dbg !3996

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3996
  store i32 %174, i32* %8, align 8, !dbg !3996
  %175 = icmp ult i32 %165, -7, !dbg !3996
  br i1 %175, label %176, label %180, !dbg !3996

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3996
  %178 = sext i32 %165 to i64, !dbg !3996
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3996
  br label %184, !dbg !3996

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3996
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3996
  store i8* %183, i8** %10, align 8, !dbg !3996
  br label %184, !dbg !3996

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3996
  %188 = load i8*, i8** %187, align 8, !dbg !3996
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3999
  store i8* %188, i8** %189, align 8, !dbg !4000, !tbaa !538
  %190 = icmp eq i8* %188, null, !dbg !4001
  br i1 %190, label %210, label %191, !dbg !4002

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3989, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i64 9, metadata !3989, metadata !DIExpression()), !dbg !3992
  %192 = icmp sgt i32 %185, -1, !dbg !3996
  br i1 %192, label %200, label %193, !dbg !3996

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3996
  store i32 %194, i32* %8, align 8, !dbg !3996
  %195 = icmp ult i32 %185, -7, !dbg !3996
  br i1 %195, label %196, label %200, !dbg !3996

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3996
  %198 = sext i32 %185 to i64, !dbg !3996
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3996
  br label %203, !dbg !3996

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3996
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3996
  store i8* %202, i8** %10, align 8, !dbg !3996
  br label %203, !dbg !3996

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3996
  %206 = load i8*, i8** %205, align 8, !dbg !3996
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3999
  store i8* %206, i8** %207, align 8, !dbg !4000, !tbaa !538
  %208 = icmp eq i8* %206, null, !dbg !4001
  %209 = select i1 %208, i64 9, i64 10, !dbg !4002
  br label %210, !dbg !4002

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !4003
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !4004
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #35, !dbg !4005
  ret void, !dbg !4005
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !4006 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4010, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i8* %1, metadata !4011, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i8* %2, metadata !4012, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i8* %3, metadata !4013, metadata !DIExpression()), !dbg !4015
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !4016
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !4016
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !4014, metadata !DIExpression()), !dbg !4017
  call void @llvm.va_start(i8* nonnull %7), !dbg !4018
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !4019
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !4019
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !4019, !tbaa.struct !2136
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !4019
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !4019
  call void @llvm.va_end(i8* nonnull %7), !dbg !4020
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !4021
  ret void, !dbg !4021
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !4022 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4023, !tbaa !538
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.177, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !4023
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.175, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.194, i64 0, i64 0), i32 noundef 5) #35, !dbg !4024
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.195, i64 0, i64 0)) #35, !dbg !4024
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.175, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.196, i64 0, i64 0), i32 noundef 5) #35, !dbg !4025
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.197, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.198, i64 0, i64 0)) #35, !dbg !4025
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.175, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.199, i64 0, i64 0), i32 noundef 5) #35, !dbg !4026
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.200, i64 0, i64 0)) #35, !dbg !4026
  ret void, !dbg !4027
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4028 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4033, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i64 %1, metadata !4034, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i64 %2, metadata !4035, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i8* %0, metadata !4037, metadata !DIExpression()) #35, !dbg !4042
  call void @llvm.dbg.value(metadata i64 %1, metadata !4040, metadata !DIExpression()) #35, !dbg !4042
  call void @llvm.dbg.value(metadata i64 %2, metadata !4041, metadata !DIExpression()) #35, !dbg !4042
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !4044
  call void @llvm.dbg.value(metadata i8* %4, metadata !4045, metadata !DIExpression()) #35, !dbg !4050
  %5 = icmp eq i8* %4, null, !dbg !4052
  br i1 %5, label %6, label %7, !dbg !4054

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !4055
  unreachable, !dbg !4055

7:                                                ; preds = %3
  ret i8* %4, !dbg !4056
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !4038 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4037, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata i64 %1, metadata !4040, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata i64 %2, metadata !4041, metadata !DIExpression()), !dbg !4057
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !4058
  call void @llvm.dbg.value(metadata i8* %4, metadata !4045, metadata !DIExpression()) #35, !dbg !4059
  %5 = icmp eq i8* %4, null, !dbg !4061
  br i1 %5, label %6, label %7, !dbg !4062

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !4063
  unreachable, !dbg !4063

7:                                                ; preds = %3
  ret i8* %4, !dbg !4064
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4065 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4069, metadata !DIExpression()), !dbg !4070
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !4071
  call void @llvm.dbg.value(metadata i8* %2, metadata !4045, metadata !DIExpression()) #35, !dbg !4072
  %3 = icmp eq i8* %2, null, !dbg !4074
  br i1 %3, label %4, label %5, !dbg !4075

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4076
  unreachable, !dbg !4076

5:                                                ; preds = %1
  ret i8* %2, !dbg !4077
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4078 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4082, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i64 %0, metadata !4084, metadata !DIExpression()) #35, !dbg !4088
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !4090
  call void @llvm.dbg.value(metadata i8* %2, metadata !4045, metadata !DIExpression()) #35, !dbg !4091
  %3 = icmp eq i8* %2, null, !dbg !4093
  br i1 %3, label %4, label %5, !dbg !4094

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4095
  unreachable, !dbg !4095

5:                                                ; preds = %1
  ret i8* %2, !dbg !4096
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4097 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4101, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i64 %0, metadata !4069, metadata !DIExpression()) #35, !dbg !4103
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !4105
  call void @llvm.dbg.value(metadata i8* %2, metadata !4045, metadata !DIExpression()) #35, !dbg !4106
  %3 = icmp eq i8* %2, null, !dbg !4108
  br i1 %3, label %4, label %5, !dbg !4109

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4110
  unreachable, !dbg !4110

5:                                                ; preds = %1
  ret i8* %2, !dbg !4111
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4112 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4116, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i64 %1, metadata !4117, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i8* %0, metadata !4119, metadata !DIExpression()) #35, !dbg !4124
  call void @llvm.dbg.value(metadata i64 %1, metadata !4123, metadata !DIExpression()) #35, !dbg !4124
  %3 = icmp eq i64 %1, 0, !dbg !4126
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4126
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !4127
  call void @llvm.dbg.value(metadata i8* %5, metadata !4045, metadata !DIExpression()) #35, !dbg !4128
  %6 = icmp eq i8* %5, null, !dbg !4130
  br i1 %6, label %7, label %8, !dbg !4131

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4132
  unreachable, !dbg !4132

8:                                                ; preds = %2
  ret i8* %5, !dbg !4133
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4134 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4138, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i64 %1, metadata !4139, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i8* %0, metadata !4141, metadata !DIExpression()) #35, !dbg !4145
  call void @llvm.dbg.value(metadata i64 %1, metadata !4144, metadata !DIExpression()) #35, !dbg !4145
  call void @llvm.dbg.value(metadata i8* %0, metadata !4119, metadata !DIExpression()) #35, !dbg !4147
  call void @llvm.dbg.value(metadata i64 %1, metadata !4123, metadata !DIExpression()) #35, !dbg !4147
  %3 = icmp eq i64 %1, 0, !dbg !4149
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4149
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !4150
  call void @llvm.dbg.value(metadata i8* %5, metadata !4045, metadata !DIExpression()) #35, !dbg !4151
  %6 = icmp eq i8* %5, null, !dbg !4153
  br i1 %6, label %7, label %8, !dbg !4154

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4155
  unreachable, !dbg !4155

8:                                                ; preds = %2
  ret i8* %5, !dbg !4156
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !4157 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4161, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i64 %1, metadata !4162, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i64 %2, metadata !4163, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i8* %0, metadata !4165, metadata !DIExpression()) #35, !dbg !4170
  call void @llvm.dbg.value(metadata i64 %1, metadata !4168, metadata !DIExpression()) #35, !dbg !4170
  call void @llvm.dbg.value(metadata i64 %2, metadata !4169, metadata !DIExpression()) #35, !dbg !4170
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !4172
  call void @llvm.dbg.value(metadata i8* %4, metadata !4045, metadata !DIExpression()) #35, !dbg !4173
  %5 = icmp eq i8* %4, null, !dbg !4175
  br i1 %5, label %6, label %7, !dbg !4176

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !4177
  unreachable, !dbg !4177

7:                                                ; preds = %3
  ret i8* %4, !dbg !4178
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4179 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4183, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i64 %1, metadata !4184, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i8* null, metadata !4037, metadata !DIExpression()) #35, !dbg !4186
  call void @llvm.dbg.value(metadata i64 %0, metadata !4040, metadata !DIExpression()) #35, !dbg !4186
  call void @llvm.dbg.value(metadata i64 %1, metadata !4041, metadata !DIExpression()) #35, !dbg !4186
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !4188
  call void @llvm.dbg.value(metadata i8* %3, metadata !4045, metadata !DIExpression()) #35, !dbg !4189
  %4 = icmp eq i8* %3, null, !dbg !4191
  br i1 %4, label %5, label %6, !dbg !4192

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4193
  unreachable, !dbg !4193

6:                                                ; preds = %2
  ret i8* %3, !dbg !4194
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4195 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4199, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 %1, metadata !4200, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i8* null, metadata !4161, metadata !DIExpression()) #35, !dbg !4202
  call void @llvm.dbg.value(metadata i64 %0, metadata !4162, metadata !DIExpression()) #35, !dbg !4202
  call void @llvm.dbg.value(metadata i64 %1, metadata !4163, metadata !DIExpression()) #35, !dbg !4202
  call void @llvm.dbg.value(metadata i8* null, metadata !4165, metadata !DIExpression()) #35, !dbg !4204
  call void @llvm.dbg.value(metadata i64 %0, metadata !4168, metadata !DIExpression()) #35, !dbg !4204
  call void @llvm.dbg.value(metadata i64 %1, metadata !4169, metadata !DIExpression()) #35, !dbg !4204
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !4206
  call void @llvm.dbg.value(metadata i8* %3, metadata !4045, metadata !DIExpression()) #35, !dbg !4207
  %4 = icmp eq i8* %3, null, !dbg !4209
  br i1 %4, label %5, label %6, !dbg !4210

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4211
  unreachable, !dbg !4211

6:                                                ; preds = %2
  ret i8* %3, !dbg !4212
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !4213 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4217, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i64* %1, metadata !4218, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i8* %0, metadata !476, metadata !DIExpression()) #35, !dbg !4220
  call void @llvm.dbg.value(metadata i64* %1, metadata !477, metadata !DIExpression()) #35, !dbg !4220
  call void @llvm.dbg.value(metadata i64 1, metadata !478, metadata !DIExpression()) #35, !dbg !4220
  %3 = load i64, i64* %1, align 8, !dbg !4222, !tbaa !808
  call void @llvm.dbg.value(metadata i64 %3, metadata !479, metadata !DIExpression()) #35, !dbg !4220
  %4 = icmp eq i8* %0, null, !dbg !4223
  br i1 %4, label %5, label %8, !dbg !4225

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4226
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4229
  br label %15, !dbg !4229

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4230
  %10 = add nuw i64 %9, 1, !dbg !4230
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #35, !dbg !4230
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4230
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4230
  call void @llvm.dbg.value(metadata i64 %13, metadata !479, metadata !DIExpression()) #35, !dbg !4220
  br i1 %12, label %14, label %15, !dbg !4233

14:                                               ; preds = %8
  tail call void @xalloc_die() #37, !dbg !4234
  unreachable, !dbg !4234

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4220
  call void @llvm.dbg.value(metadata i64 %16, metadata !479, metadata !DIExpression()) #35, !dbg !4220
  call void @llvm.dbg.value(metadata i8* %0, metadata !4037, metadata !DIExpression()) #35, !dbg !4235
  call void @llvm.dbg.value(metadata i64 %16, metadata !4040, metadata !DIExpression()) #35, !dbg !4235
  call void @llvm.dbg.value(metadata i64 1, metadata !4041, metadata !DIExpression()) #35, !dbg !4235
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #35, !dbg !4237
  call void @llvm.dbg.value(metadata i8* %17, metadata !4045, metadata !DIExpression()) #35, !dbg !4238
  %18 = icmp eq i8* %17, null, !dbg !4240
  br i1 %18, label %19, label %20, !dbg !4241

19:                                               ; preds = %15
  tail call void @xalloc_die() #37, !dbg !4242
  unreachable, !dbg !4242

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !476, metadata !DIExpression()) #35, !dbg !4220
  store i64 %16, i64* %1, align 8, !dbg !4243, !tbaa !808
  ret i8* %17, !dbg !4244
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !471 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !476, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata i64* %1, metadata !477, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata i64 %2, metadata !478, metadata !DIExpression()), !dbg !4245
  %4 = load i64, i64* %1, align 8, !dbg !4246, !tbaa !808
  call void @llvm.dbg.value(metadata i64 %4, metadata !479, metadata !DIExpression()), !dbg !4245
  %5 = icmp eq i8* %0, null, !dbg !4247
  br i1 %5, label %6, label %13, !dbg !4248

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4249
  br i1 %7, label %8, label %20, !dbg !4250

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4251
  call void @llvm.dbg.value(metadata i64 %9, metadata !479, metadata !DIExpression()), !dbg !4245
  %10 = icmp ugt i64 %2, 128, !dbg !4253
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4254
  call void @llvm.dbg.value(metadata i64 %12, metadata !479, metadata !DIExpression()), !dbg !4245
  br label %20, !dbg !4255

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4256
  %15 = add nuw i64 %14, 1, !dbg !4256
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4256
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4256
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4256
  call void @llvm.dbg.value(metadata i64 %18, metadata !479, metadata !DIExpression()), !dbg !4245
  br i1 %17, label %19, label %20, !dbg !4257

19:                                               ; preds = %13
  tail call void @xalloc_die() #37, !dbg !4258
  unreachable, !dbg !4258

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4245
  call void @llvm.dbg.value(metadata i64 %21, metadata !479, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata i8* %0, metadata !4037, metadata !DIExpression()) #35, !dbg !4259
  call void @llvm.dbg.value(metadata i64 %21, metadata !4040, metadata !DIExpression()) #35, !dbg !4259
  call void @llvm.dbg.value(metadata i64 %2, metadata !4041, metadata !DIExpression()) #35, !dbg !4259
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #35, !dbg !4261
  call void @llvm.dbg.value(metadata i8* %22, metadata !4045, metadata !DIExpression()) #35, !dbg !4262
  %23 = icmp eq i8* %22, null, !dbg !4264
  br i1 %23, label %24, label %25, !dbg !4265

24:                                               ; preds = %20
  tail call void @xalloc_die() #37, !dbg !4266
  unreachable, !dbg !4266

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !476, metadata !DIExpression()), !dbg !4245
  store i64 %21, i64* %1, align 8, !dbg !4267, !tbaa !808
  ret i8* %22, !dbg !4268
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !483 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !488, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i64* %1, metadata !489, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i64 %2, metadata !490, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i64 %3, metadata !491, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i64 %4, metadata !492, metadata !DIExpression()), !dbg !4269
  %6 = load i64, i64* %1, align 8, !dbg !4270, !tbaa !808
  call void @llvm.dbg.value(metadata i64 %6, metadata !493, metadata !DIExpression()), !dbg !4269
  %7 = ashr i64 %6, 1, !dbg !4271
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4271
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4271
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4271
  call void @llvm.dbg.value(metadata i64 %10, metadata !494, metadata !DIExpression()), !dbg !4269
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4273
  call void @llvm.dbg.value(metadata i64 %11, metadata !494, metadata !DIExpression()), !dbg !4269
  %12 = icmp sgt i64 %3, -1, !dbg !4274
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4276
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4276
  call void @llvm.dbg.value(metadata i64 %15, metadata !494, metadata !DIExpression()), !dbg !4269
  %16 = icmp slt i64 %4, 0, !dbg !4277
  br i1 %16, label %17, label %30, !dbg !4277

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4277
  br i1 %18, label %19, label %24, !dbg !4277

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4277
  %21 = udiv i64 9223372036854775807, %20, !dbg !4277
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4277
  br i1 %23, label %46, label %43, !dbg !4277

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4277
  br i1 %25, label %43, label %26, !dbg !4277

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4277
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4277
  %29 = icmp ult i64 %28, %15, !dbg !4277
  br i1 %29, label %46, label %43, !dbg !4277

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4277
  br i1 %31, label %43, label %32, !dbg !4277

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4277
  br i1 %33, label %34, label %40, !dbg !4277

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4277
  br i1 %35, label %43, label %36, !dbg !4277

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4277
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4277
  %39 = icmp ult i64 %38, %4, !dbg !4277
  br i1 %39, label %46, label %43, !dbg !4277

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !4277
  %42 = icmp ult i64 %41, %15, !dbg !4277
  br i1 %42, label %46, label %43, !dbg !4277

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !495, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4269
  %44 = mul i64 %15, %4, !dbg !4277
  call void @llvm.dbg.value(metadata i64 %44, metadata !495, metadata !DIExpression()), !dbg !4269
  %45 = icmp slt i64 %44, 128, !dbg !4277
  br i1 %45, label %46, label %52, !dbg !4277

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !496, metadata !DIExpression()), !dbg !4269
  %48 = sdiv i64 %47, %4, !dbg !4278
  call void @llvm.dbg.value(metadata i64 %48, metadata !494, metadata !DIExpression()), !dbg !4269
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4281
  call void @llvm.dbg.value(metadata i64 %51, metadata !495, metadata !DIExpression()), !dbg !4269
  br label %52, !dbg !4282

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4269
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4269
  call void @llvm.dbg.value(metadata i64 %54, metadata !495, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i64 %53, metadata !494, metadata !DIExpression()), !dbg !4269
  %55 = icmp eq i8* %0, null, !dbg !4283
  br i1 %55, label %56, label %57, !dbg !4285

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !4286, !tbaa !808
  br label %57, !dbg !4287

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4288
  %59 = icmp slt i64 %58, %2, !dbg !4290
  br i1 %59, label %60, label %97, !dbg !4291

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4292
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4292
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4292
  call void @llvm.dbg.value(metadata i64 %63, metadata !494, metadata !DIExpression()), !dbg !4269
  br i1 %62, label %96, label %64, !dbg !4293

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !4294
  br i1 %66, label %96, label %67, !dbg !4294

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !4295

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4295
  br i1 %69, label %70, label %75, !dbg !4295

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4295
  %72 = udiv i64 9223372036854775807, %71, !dbg !4295
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4295
  br i1 %74, label %96, label %94, !dbg !4295

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4295
  br i1 %76, label %94, label %77, !dbg !4295

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4295
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4295
  %80 = icmp ult i64 %79, %63, !dbg !4295
  br i1 %80, label %96, label %94, !dbg !4295

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4295
  br i1 %82, label %94, label %83, !dbg !4295

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4295
  br i1 %84, label %85, label %91, !dbg !4295

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4295
  br i1 %86, label %94, label %87, !dbg !4295

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4295
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4295
  %90 = icmp ult i64 %89, %4, !dbg !4295
  br i1 %90, label %96, label %94, !dbg !4295

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !4295
  %93 = icmp ult i64 %92, %63, !dbg !4295
  br i1 %93, label %96, label %94, !dbg !4295

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !495, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4269
  %95 = mul i64 %63, %4, !dbg !4295
  call void @llvm.dbg.value(metadata i64 %95, metadata !495, metadata !DIExpression()), !dbg !4269
  br label %97, !dbg !4296

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #37, !dbg !4297
  unreachable, !dbg !4297

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4269
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4269
  call void @llvm.dbg.value(metadata i64 %99, metadata !495, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i64 %98, metadata !494, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i8* %0, metadata !4116, metadata !DIExpression()) #35, !dbg !4298
  call void @llvm.dbg.value(metadata i64 %99, metadata !4117, metadata !DIExpression()) #35, !dbg !4298
  call void @llvm.dbg.value(metadata i8* %0, metadata !4119, metadata !DIExpression()) #35, !dbg !4300
  call void @llvm.dbg.value(metadata i64 %99, metadata !4123, metadata !DIExpression()) #35, !dbg !4300
  %100 = icmp eq i64 %99, 0, !dbg !4302
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4302
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #35, !dbg !4303
  call void @llvm.dbg.value(metadata i8* %102, metadata !4045, metadata !DIExpression()) #35, !dbg !4304
  %103 = icmp eq i8* %102, null, !dbg !4306
  br i1 %103, label %104, label %105, !dbg !4307

104:                                              ; preds = %97
  tail call void @xalloc_die() #37, !dbg !4308
  unreachable, !dbg !4308

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !488, metadata !DIExpression()), !dbg !4269
  store i64 %98, i64* %1, align 8, !dbg !4309, !tbaa !808
  ret i8* %102, !dbg !4310
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4311 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64 %0, metadata !4315, metadata !DIExpression()) #35, !dbg !4319
  call void @llvm.dbg.value(metadata i64 1, metadata !4318, metadata !DIExpression()) #35, !dbg !4319
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !4321
  call void @llvm.dbg.value(metadata i8* %2, metadata !4045, metadata !DIExpression()) #35, !dbg !4322
  %3 = icmp eq i8* %2, null, !dbg !4324
  br i1 %3, label %4, label %5, !dbg !4325

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4326
  unreachable, !dbg !4326

5:                                                ; preds = %1
  ret i8* %2, !dbg !4327
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4316 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4315, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64 %1, metadata !4318, metadata !DIExpression()), !dbg !4328
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !4329
  call void @llvm.dbg.value(metadata i8* %3, metadata !4045, metadata !DIExpression()) #35, !dbg !4330
  %4 = icmp eq i8* %3, null, !dbg !4332
  br i1 %4, label %5, label %6, !dbg !4333

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4334
  unreachable, !dbg !4334

6:                                                ; preds = %2
  ret i8* %3, !dbg !4335
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4336 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4338, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i64 %0, metadata !4340, metadata !DIExpression()) #35, !dbg !4344
  call void @llvm.dbg.value(metadata i64 1, metadata !4343, metadata !DIExpression()) #35, !dbg !4344
  call void @llvm.dbg.value(metadata i64 %0, metadata !4346, metadata !DIExpression()) #35, !dbg !4350
  call void @llvm.dbg.value(metadata i64 1, metadata !4349, metadata !DIExpression()) #35, !dbg !4350
  call void @llvm.dbg.value(metadata i64 %0, metadata !4346, metadata !DIExpression()) #35, !dbg !4350
  call void @llvm.dbg.value(metadata i64 1, metadata !4349, metadata !DIExpression()) #35, !dbg !4350
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !4352
  call void @llvm.dbg.value(metadata i8* %2, metadata !4045, metadata !DIExpression()) #35, !dbg !4353
  %3 = icmp eq i8* %2, null, !dbg !4355
  br i1 %3, label %4, label %5, !dbg !4356

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4357
  unreachable, !dbg !4357

5:                                                ; preds = %1
  ret i8* %2, !dbg !4358
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4341 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4340, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata i64 %1, metadata !4343, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata i64 %0, metadata !4346, metadata !DIExpression()) #35, !dbg !4360
  call void @llvm.dbg.value(metadata i64 %1, metadata !4349, metadata !DIExpression()) #35, !dbg !4360
  call void @llvm.dbg.value(metadata i64 %0, metadata !4346, metadata !DIExpression()) #35, !dbg !4360
  call void @llvm.dbg.value(metadata i64 %1, metadata !4349, metadata !DIExpression()) #35, !dbg !4360
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !4362
  call void @llvm.dbg.value(metadata i8* %3, metadata !4045, metadata !DIExpression()) #35, !dbg !4363
  %4 = icmp eq i8* %3, null, !dbg !4365
  br i1 %4, label %5, label %6, !dbg !4366

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4367
  unreachable, !dbg !4367

6:                                                ; preds = %2
  ret i8* %3, !dbg !4368
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4369 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4373, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata i64 %1, metadata !4374, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata i64 %1, metadata !4069, metadata !DIExpression()) #35, !dbg !4376
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !4378
  call void @llvm.dbg.value(metadata i8* %3, metadata !4045, metadata !DIExpression()) #35, !dbg !4379
  %4 = icmp eq i8* %3, null, !dbg !4381
  br i1 %4, label %5, label %6, !dbg !4382

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4383
  unreachable, !dbg !4383

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4384, metadata !DIExpression()) #35, !dbg !4389
  call void @llvm.dbg.value(metadata i8* %0, metadata !4387, metadata !DIExpression()) #35, !dbg !4389
  call void @llvm.dbg.value(metadata i64 %1, metadata !4388, metadata !DIExpression()) #35, !dbg !4389
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4391
  ret i8* %3, !dbg !4392
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4393 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4397, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata i64 %1, metadata !4398, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata i64 %1, metadata !4082, metadata !DIExpression()) #35, !dbg !4400
  call void @llvm.dbg.value(metadata i64 %1, metadata !4084, metadata !DIExpression()) #35, !dbg !4402
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !4404
  call void @llvm.dbg.value(metadata i8* %3, metadata !4045, metadata !DIExpression()) #35, !dbg !4405
  %4 = icmp eq i8* %3, null, !dbg !4407
  br i1 %4, label %5, label %6, !dbg !4408

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4409
  unreachable, !dbg !4409

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4384, metadata !DIExpression()) #35, !dbg !4410
  call void @llvm.dbg.value(metadata i8* %0, metadata !4387, metadata !DIExpression()) #35, !dbg !4410
  call void @llvm.dbg.value(metadata i64 %1, metadata !4388, metadata !DIExpression()) #35, !dbg !4410
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4412
  ret i8* %3, !dbg !4413
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !4414 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4418, metadata !DIExpression()), !dbg !4421
  call void @llvm.dbg.value(metadata i64 %1, metadata !4419, metadata !DIExpression()), !dbg !4421
  %3 = add nsw i64 %1, 1, !dbg !4422
  call void @llvm.dbg.value(metadata i64 %3, metadata !4082, metadata !DIExpression()) #35, !dbg !4423
  call void @llvm.dbg.value(metadata i64 %3, metadata !4084, metadata !DIExpression()) #35, !dbg !4425
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !4427
  call void @llvm.dbg.value(metadata i8* %4, metadata !4045, metadata !DIExpression()) #35, !dbg !4428
  %5 = icmp eq i8* %4, null, !dbg !4430
  br i1 %5, label %6, label %7, !dbg !4431

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4432
  unreachable, !dbg !4432

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !4420, metadata !DIExpression()), !dbg !4421
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !4433
  store i8 0, i8* %8, align 1, !dbg !4434, !tbaa !655
  call void @llvm.dbg.value(metadata i8* %4, metadata !4384, metadata !DIExpression()) #35, !dbg !4435
  call void @llvm.dbg.value(metadata i8* %0, metadata !4387, metadata !DIExpression()) #35, !dbg !4435
  call void @llvm.dbg.value(metadata i64 %1, metadata !4388, metadata !DIExpression()) #35, !dbg !4435
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4437
  ret i8* %4, !dbg !4438
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !4439 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4441, metadata !DIExpression()), !dbg !4442
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !4443
  %3 = add i64 %2, 1, !dbg !4444
  call void @llvm.dbg.value(metadata i8* %0, metadata !4373, metadata !DIExpression()) #35, !dbg !4445
  call void @llvm.dbg.value(metadata i64 %3, metadata !4374, metadata !DIExpression()) #35, !dbg !4445
  call void @llvm.dbg.value(metadata i64 %3, metadata !4069, metadata !DIExpression()) #35, !dbg !4447
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !4449
  call void @llvm.dbg.value(metadata i8* %4, metadata !4045, metadata !DIExpression()) #35, !dbg !4450
  %5 = icmp eq i8* %4, null, !dbg !4452
  br i1 %5, label %6, label %7, !dbg !4453

6:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4454
  unreachable, !dbg !4454

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4384, metadata !DIExpression()) #35, !dbg !4455
  call void @llvm.dbg.value(metadata i8* %0, metadata !4387, metadata !DIExpression()) #35, !dbg !4455
  call void @llvm.dbg.value(metadata i64 %3, metadata !4388, metadata !DIExpression()) #35, !dbg !4455
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #35, !dbg !4457
  ret i8* %4, !dbg !4458
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4459 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4464, !tbaa !646
  call void @llvm.dbg.value(metadata i32 %1, metadata !4461, metadata !DIExpression()), !dbg !4465
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.217, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.218, i64 0, i64 0), i32 noundef 5) #35, !dbg !4464
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.219, i64 0, i64 0), i8* noundef %2) #35, !dbg !4464
  %3 = icmp eq i32 %1, 0, !dbg !4464
  tail call void @llvm.assume(i1 %3), !dbg !4464
  tail call void @abort() #37, !dbg !4466
  unreachable, !dbg !4466
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4467 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4505, metadata !DIExpression()), !dbg !4510
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #35, !dbg !4511
  call void @llvm.dbg.value(metadata i1 undef, metadata !4506, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4512, metadata !DIExpression()), !dbg !4515
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4517
  %4 = load i32, i32* %3, align 8, !dbg !4517, !tbaa !4518
  %5 = and i32 %4, 32, !dbg !4519
  %6 = icmp eq i32 %5, 0, !dbg !4519
  call void @llvm.dbg.value(metadata i1 %6, metadata !4508, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #35, !dbg !4520
  %8 = icmp eq i32 %7, 0, !dbg !4521
  call void @llvm.dbg.value(metadata i1 %8, metadata !4509, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  br i1 %6, label %9, label %19, !dbg !4522

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4524
  call void @llvm.dbg.value(metadata i1 %10, metadata !4506, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4525
  %12 = xor i1 %8, true, !dbg !4525
  %13 = sext i1 %12 to i32, !dbg !4525
  br i1 %11, label %22, label %14, !dbg !4525

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #38, !dbg !4526
  %16 = load i32, i32* %15, align 4, !dbg !4526, !tbaa !646
  %17 = icmp ne i32 %16, 9, !dbg !4527
  %18 = sext i1 %17 to i32, !dbg !4528
  br label %22, !dbg !4528

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4529

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #38, !dbg !4531
  store i32 0, i32* %21, align 4, !dbg !4533, !tbaa !646
  br label %22, !dbg !4531

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4510
  ret i32 %23, !dbg !4534
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !4535 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4573, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i32 0, metadata !4574, metadata !DIExpression()), !dbg !4577
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4578
  call void @llvm.dbg.value(metadata i32 %2, metadata !4575, metadata !DIExpression()), !dbg !4577
  %3 = icmp slt i32 %2, 0, !dbg !4579
  br i1 %3, label %4, label %6, !dbg !4581

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4582
  br label %24, !dbg !4583

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4584
  %8 = icmp eq i32 %7, 0, !dbg !4584
  br i1 %8, label %13, label %9, !dbg !4586

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4587
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #35, !dbg !4588
  %12 = icmp eq i64 %11, -1, !dbg !4589
  br i1 %12, label %16, label %13, !dbg !4590

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4591
  %15 = icmp eq i32 %14, 0, !dbg !4591
  br i1 %15, label %16, label %18, !dbg !4592

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4574, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i32 0, metadata !4576, metadata !DIExpression()), !dbg !4577
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4593
  call void @llvm.dbg.value(metadata i32 %21, metadata !4576, metadata !DIExpression()), !dbg !4577
  br label %24, !dbg !4594

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #38, !dbg !4595
  %20 = load i32, i32* %19, align 4, !dbg !4595, !tbaa !646
  call void @llvm.dbg.value(metadata i32 %20, metadata !4574, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i32 0, metadata !4576, metadata !DIExpression()), !dbg !4577
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4593
  call void @llvm.dbg.value(metadata i32 %21, metadata !4576, metadata !DIExpression()), !dbg !4577
  %22 = icmp eq i32 %20, 0, !dbg !4596
  br i1 %22, label %24, label %23, !dbg !4594

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4598, !tbaa !646
  call void @llvm.dbg.value(metadata i32 -1, metadata !4576, metadata !DIExpression()), !dbg !4577
  br label %24, !dbg !4600

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4577
  ret i32 %25, !dbg !4601
}

; Function Attrs: nofree nounwind
declare !dbg !4602 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4603 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4604 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4607 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4645, metadata !DIExpression()), !dbg !4646
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4647
  br i1 %2, label %6, label %3, !dbg !4649

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4650
  %5 = icmp eq i32 %4, 0, !dbg !4650
  br i1 %5, label %6, label %8, !dbg !4651

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !4652
  br label %17, !dbg !4653

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4654, metadata !DIExpression()) #35, !dbg !4659
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4661
  %10 = load i32, i32* %9, align 8, !dbg !4661, !tbaa !4518
  %11 = and i32 %10, 256, !dbg !4663
  %12 = icmp eq i32 %11, 0, !dbg !4663
  br i1 %12, label %15, label %13, !dbg !4664

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #35, !dbg !4665
  br label %15, !dbg !4665

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !4666
  br label %17, !dbg !4667

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4646
  ret i32 %18, !dbg !4668
}

; Function Attrs: nofree nounwind
declare !dbg !4669 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !4670 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4709, metadata !DIExpression()), !dbg !4715
  call void @llvm.dbg.value(metadata i64 %1, metadata !4710, metadata !DIExpression()), !dbg !4715
  call void @llvm.dbg.value(metadata i32 %2, metadata !4711, metadata !DIExpression()), !dbg !4715
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4716
  %5 = load i8*, i8** %4, align 8, !dbg !4716, !tbaa !4717
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4718
  %7 = load i8*, i8** %6, align 8, !dbg !4718, !tbaa !4719
  %8 = icmp eq i8* %5, %7, !dbg !4720
  br i1 %8, label %9, label %28, !dbg !4721

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4722
  %11 = load i8*, i8** %10, align 8, !dbg !4722, !tbaa !2249
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4723
  %13 = load i8*, i8** %12, align 8, !dbg !4723, !tbaa !4724
  %14 = icmp eq i8* %11, %13, !dbg !4725
  br i1 %14, label %15, label %28, !dbg !4726

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4727
  %17 = load i8*, i8** %16, align 8, !dbg !4727, !tbaa !4728
  %18 = icmp eq i8* %17, null, !dbg !4729
  br i1 %18, label %19, label %28, !dbg !4730

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4731
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #35, !dbg !4732
  call void @llvm.dbg.value(metadata i64 %21, metadata !4712, metadata !DIExpression()), !dbg !4733
  %22 = icmp eq i64 %21, -1, !dbg !4734
  br i1 %22, label %30, label %23, !dbg !4736

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4737
  %25 = load i32, i32* %24, align 8, !dbg !4738, !tbaa !4518
  %26 = and i32 %25, -17, !dbg !4738
  store i32 %26, i32* %24, align 8, !dbg !4738, !tbaa !4518
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4739
  store i64 %21, i64* %27, align 8, !dbg !4740, !tbaa !4741
  br label %30, !dbg !4742

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4743
  br label %30, !dbg !4744

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4715
  ret i32 %31, !dbg !4745
}

; Function Attrs: nofree nounwind
declare !dbg !4746 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !4749 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4754, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i8* %1, metadata !4755, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i64 %2, metadata !4756, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4757, metadata !DIExpression()), !dbg !4759
  %5 = icmp eq i8* %1, null, !dbg !4760
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4762
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.230, i64 0, i64 0), i8* %1, !dbg !4762
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4762
  call void @llvm.dbg.value(metadata i64 %8, metadata !4756, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i8* %7, metadata !4755, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i32* %6, metadata !4754, metadata !DIExpression()), !dbg !4759
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4763
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4765
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4757, metadata !DIExpression()), !dbg !4759
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #35, !dbg !4766
  call void @llvm.dbg.value(metadata i64 %11, metadata !4758, metadata !DIExpression()), !dbg !4759
  %12 = icmp ult i64 %11, -3, !dbg !4767
  br i1 %12, label %13, label %18, !dbg !4769

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #36, !dbg !4770
  %15 = icmp eq i32 %14, 0, !dbg !4770
  br i1 %15, label %16, label %30, !dbg !4771

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4772, metadata !DIExpression()) #35, !dbg !4777
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4779, metadata !DIExpression()) #35, !dbg !4784
  call void @llvm.dbg.value(metadata i32 0, metadata !4782, metadata !DIExpression()) #35, !dbg !4784
  call void @llvm.dbg.value(metadata i64 8, metadata !4783, metadata !DIExpression()) #35, !dbg !4784
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4786
  store i64 0, i64* %17, align 1, !dbg !4786
  br label %30, !dbg !4787

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4788
  br i1 %19, label %20, label %21, !dbg !4790

20:                                               ; preds = %18
  tail call void @abort() #37, !dbg !4791
  unreachable, !dbg !4791

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4792

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #35, !dbg !4794
  br i1 %24, label %30, label %25, !dbg !4795

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4796
  br i1 %26, label %30, label %27, !dbg !4799

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4800, !tbaa !655
  %29 = zext i8 %28 to i32, !dbg !4801
  store i32 %29, i32* %6, align 4, !dbg !4802, !tbaa !646
  br label %30, !dbg !4803

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4759
  ret i64 %31, !dbg !4804
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4805 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #33

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #34 !dbg !4811 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4813, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.value(metadata i64 %1, metadata !4814, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.value(metadata i64 %2, metadata !4815, metadata !DIExpression()), !dbg !4817
  %4 = icmp eq i64 %2, 0, !dbg !4818
  br i1 %4, label %8, label %5, !dbg !4818

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4818
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4818
  br i1 %7, label %13, label %8, !dbg !4818

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4816, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4817
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4816, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4817
  %9 = mul i64 %2, %1, !dbg !4818
  call void @llvm.dbg.value(metadata i64 %9, metadata !4816, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.value(metadata i8* %0, metadata !4820, metadata !DIExpression()) #35, !dbg !4824
  call void @llvm.dbg.value(metadata i64 %9, metadata !4823, metadata !DIExpression()) #35, !dbg !4824
  %10 = icmp eq i64 %9, 0, !dbg !4826
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4826
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #35, !dbg !4827
  br label %15, !dbg !4828

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4816, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4817
  %14 = tail call i32* @__errno_location() #38, !dbg !4829
  store i32 12, i32* %14, align 4, !dbg !4831, !tbaa !646
  br label %15, !dbg !4832

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4817
  ret i8* %16, !dbg !4833
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4834 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4836, metadata !DIExpression()), !dbg !4841
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4842
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #35, !dbg !4842
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4837, metadata !DIExpression()), !dbg !4843
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #35, !dbg !4844
  %5 = icmp eq i32 %4, 0, !dbg !4844
  br i1 %5, label %6, label %13, !dbg !4846

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4847, metadata !DIExpression()) #35, !dbg !4851
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.235, i64 0, i64 0), metadata !4850, metadata !DIExpression()) #35, !dbg !4851
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.235, i64 0, i64 0), i64 2), !dbg !4854
  %8 = icmp eq i32 %7, 0, !dbg !4855
  br i1 %8, label %12, label %9, !dbg !4856

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4847, metadata !DIExpression()) #35, !dbg !4857
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.236, i64 0, i64 0), metadata !4850, metadata !DIExpression()) #35, !dbg !4857
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.236, i64 0, i64 0), i64 6), !dbg !4859
  %11 = icmp eq i32 %10, 0, !dbg !4860
  br i1 %11, label %12, label %13, !dbg !4861

12:                                               ; preds = %9, %6
  br label %13, !dbg !4862

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4841
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #35, !dbg !4863
  ret i1 %14, !dbg !4863
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4864 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4868, metadata !DIExpression()), !dbg !4871
  call void @llvm.dbg.value(metadata i8* %1, metadata !4869, metadata !DIExpression()), !dbg !4871
  call void @llvm.dbg.value(metadata i64 %2, metadata !4870, metadata !DIExpression()), !dbg !4871
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #35, !dbg !4872
  ret i32 %4, !dbg !4873
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4874 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4878, metadata !DIExpression()), !dbg !4879
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #35, !dbg !4880
  ret i8* %2, !dbg !4881
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4882 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4884, metadata !DIExpression()), !dbg !4886
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !4887
  call void @llvm.dbg.value(metadata i8* %2, metadata !4885, metadata !DIExpression()), !dbg !4886
  ret i8* %2, !dbg !4888
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4889 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4891, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i8* %1, metadata !4892, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i64 %2, metadata !4893, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i32 %0, metadata !4884, metadata !DIExpression()) #35, !dbg !4899
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !4901
  call void @llvm.dbg.value(metadata i8* %4, metadata !4885, metadata !DIExpression()) #35, !dbg !4899
  call void @llvm.dbg.value(metadata i8* %4, metadata !4894, metadata !DIExpression()), !dbg !4898
  %5 = icmp eq i8* %4, null, !dbg !4902
  br i1 %5, label %6, label %9, !dbg !4903

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4904
  br i1 %7, label %19, label %8, !dbg !4907

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4908, !tbaa !655
  br label %19, !dbg !4909

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #36, !dbg !4910
  call void @llvm.dbg.value(metadata i64 %10, metadata !4895, metadata !DIExpression()), !dbg !4911
  %11 = icmp ult i64 %10, %2, !dbg !4912
  br i1 %11, label %12, label %14, !dbg !4914

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4915
  call void @llvm.dbg.value(metadata i8* %1, metadata !4917, metadata !DIExpression()) #35, !dbg !4922
  call void @llvm.dbg.value(metadata i8* %4, metadata !4920, metadata !DIExpression()) #35, !dbg !4922
  call void @llvm.dbg.value(metadata i64 %13, metadata !4921, metadata !DIExpression()) #35, !dbg !4922
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #35, !dbg !4924
  br label %19, !dbg !4925

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4926
  br i1 %15, label %19, label %16, !dbg !4929

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4930
  call void @llvm.dbg.value(metadata i8* %1, metadata !4917, metadata !DIExpression()) #35, !dbg !4932
  call void @llvm.dbg.value(metadata i8* %4, metadata !4920, metadata !DIExpression()) #35, !dbg !4932
  call void @llvm.dbg.value(metadata i64 %17, metadata !4921, metadata !DIExpression()) #35, !dbg !4932
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #35, !dbg !4934
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4935
  store i8 0, i8* %18, align 1, !dbg !4936, !tbaa !655
  br label %19, !dbg !4937

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4938
  ret i32 %20, !dbg !4939
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
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
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
attributes #39 = { nounwind allocsize(0) }
attributes #40 = { nounwind allocsize(0,1) }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!2, !454, !242, !456, !247, !254, !434, !458, !295, !305, !337, !412, !460, !426, !467, !498, !500, !502, !504, !506, !440, !508, !511, !513, !515}
!llvm.ident = !{!517, !517, !517, !517, !517, !517, !517, !517, !517, !517, !517, !517, !517, !517, !517, !517, !517, !517, !517, !517, !517, !517, !517, !517, !517}
!llvm.module.flags = !{!518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "shortopts", scope: !2, file: !3, line: 76, type: !234, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !49, globals: !69, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/env.c", directory: "/src", checksumkind: CSK_MD5, checksum: "55d1f1c6ffacbefe85ee74f1d7b2c27b")
!4 = !{!5, !13, !27, !42}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 90, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!10 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!11 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!12 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !14, line: 42, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!16 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!17 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!18 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!19 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!20 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!21 = !DIEnumerator(name: "c_quoting_style", value: 5)
!22 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!23 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!24 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!25 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!26 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 46, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!30 = !DIEnumerator(name: "_ISupper", value: 256)
!31 = !DIEnumerator(name: "_ISlower", value: 512)
!32 = !DIEnumerator(name: "_ISalpha", value: 1024)
!33 = !DIEnumerator(name: "_ISdigit", value: 2048)
!34 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!35 = !DIEnumerator(name: "_ISspace", value: 8192)
!36 = !DIEnumerator(name: "_ISprint", value: 16384)
!37 = !DIEnumerator(name: "_ISgraph", value: 32768)
!38 = !DIEnumerator(name: "_ISblank", value: 1)
!39 = !DIEnumerator(name: "_IScntrl", value: 2)
!40 = !DIEnumerator(name: "_ISpunct", value: 4)
!41 = !DIEnumerator(name: "_ISalnum", value: 8)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "SIGNAL_MODE", file: !3, line: 52, baseType: !7, size: 32, elements: !43)
!43 = !{!44, !45, !46, !47, !48}
!44 = !DIEnumerator(name: "UNCHANGED", value: 0)
!45 = !DIEnumerator(name: "DEFAULT", value: 1)
!46 = !DIEnumerator(name: "DEFAULT_NOERR", value: 2)
!47 = !DIEnumerator(name: "IGNORE", value: 3)
!48 = !DIEnumerator(name: "IGNORE_NOERR", value: 4)
!49 = !{!50, !52, !53, !54, !55, !58, !60, !61, !64}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !56, line: 46, baseType: !57)
!56 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!57 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!60 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !62, line: 87, baseType: !63)
!62 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!63 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !65, line: 72, baseType: !66)
!65 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !53}
!69 = !{!70, !101, !103, !105, !107, !189, !0, !192, !206, !211, !213, !216, !228, !230, !232}
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "dummy_environ", scope: !72, file: !3, line: 846, type: !98, isLocal: true, isDefinition: true)
!72 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 764, type: !73, scopeLine: 765, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !76)
!73 = !DISubroutineType(types: !74)
!74 = !{!53, !53, !75}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!76 = !{!77, !78, !79, !81, !82, !83, !84, !85, !86, !87, !92, !93, !97}
!77 = !DILocalVariable(name: "argc", arg: 1, scope: !72, file: !3, line: 764, type: !53)
!78 = !DILocalVariable(name: "argv", arg: 2, scope: !72, file: !3, line: 764, type: !75)
!79 = !DILocalVariable(name: "ignore_environment", scope: !72, file: !3, line: 766, type: !80)
!80 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!81 = !DILocalVariable(name: "opt_nul_terminate_output", scope: !72, file: !3, line: 767, type: !80)
!82 = !DILocalVariable(name: "newdir", scope: !72, file: !3, line: 768, type: !58)
!83 = !DILocalVariable(name: "argv0", scope: !72, file: !3, line: 769, type: !50)
!84 = !DILocalVariable(name: "optc", scope: !72, file: !3, line: 782, type: !53)
!85 = !DILocalVariable(name: "eq", scope: !72, file: !3, line: 852, type: !50)
!86 = !DILocalVariable(name: "program_specified", scope: !72, file: !3, line: 866, type: !80)
!87 = !DILocalVariable(name: "e", scope: !88, file: !3, line: 889, type: !90)
!88 = distinct !DILexicalBlock(scope: !89, file: !3, line: 887, column: 5)
!89 = distinct !DILexicalBlock(scope: !72, file: !3, line: 886, column: 7)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!92 = !DILocalVariable(name: "program", scope: !72, file: !3, line: 911, type: !50)
!93 = !DILocalVariable(name: "i", scope: !94, file: !3, line: 921, type: !53)
!94 = distinct !DILexicalBlock(scope: !95, file: !3, line: 921, column: 7)
!95 = distinct !DILexicalBlock(scope: !96, file: !3, line: 919, column: 5)
!96 = distinct !DILexicalBlock(scope: !72, file: !3, line: 918, column: 7)
!97 = !DILocalVariable(name: "exit_status", scope: !72, file: !3, line: 927, type: !53)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 64, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 1)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "dev_debug", scope: !2, file: !3, line: 45, type: !80, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "sig_mask_changed", scope: !2, file: !3, line: 68, type: !80, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "report_signal_handling", scope: !2, file: !3, line: 71, type: !80, isLocal: true, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !109, file: !6, line: 575, type: !53, isLocal: true, isDefinition: true)
!109 = distinct !DISubprogram(name: "oputs_", scope: !6, file: !6, line: 573, type: !110, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !112)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !58, !58}
!112 = !{!113, !114, !115, !118, !119, !120, !121, !125, !126, !127, !128, !130, !183, !184, !185, !187, !188}
!113 = !DILocalVariable(name: "program", arg: 1, scope: !109, file: !6, line: 573, type: !58)
!114 = !DILocalVariable(name: "option", arg: 2, scope: !109, file: !6, line: 573, type: !58)
!115 = !DILocalVariable(name: "term", scope: !116, file: !6, line: 585, type: !58)
!116 = distinct !DILexicalBlock(scope: !117, file: !6, line: 582, column: 5)
!117 = distinct !DILexicalBlock(scope: !109, file: !6, line: 581, column: 7)
!118 = !DILocalVariable(name: "double_space", scope: !109, file: !6, line: 594, type: !80)
!119 = !DILocalVariable(name: "first_word", scope: !109, file: !6, line: 595, type: !58)
!120 = !DILocalVariable(name: "option_text", scope: !109, file: !6, line: 596, type: !58)
!121 = !DILocalVariable(name: "s", scope: !122, file: !6, line: 608, type: !58)
!122 = distinct !DILexicalBlock(scope: !123, file: !6, line: 605, column: 5)
!123 = distinct !DILexicalBlock(scope: !124, file: !6, line: 604, column: 12)
!124 = distinct !DILexicalBlock(scope: !109, file: !6, line: 597, column: 7)
!125 = !DILocalVariable(name: "spaces", scope: !122, file: !6, line: 609, type: !55)
!126 = !DILocalVariable(name: "anchor_len", scope: !109, file: !6, line: 620, type: !55)
!127 = !DILocalVariable(name: "desc_text", scope: !109, file: !6, line: 625, type: !58)
!128 = !DILocalVariable(name: "__ptr", scope: !129, file: !6, line: 644, type: !58)
!129 = distinct !DILexicalBlock(scope: !109, file: !6, line: 644, column: 3)
!130 = !DILocalVariable(name: "__stream", scope: !129, file: !6, line: 644, type: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !133, line: 7, baseType: !134)
!133 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !135, line: 49, size: 1728, elements: !136)
!135 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !152, !154, !155, !156, !159, !160, !162, !164, !167, !169, !172, !175, !176, !177, !178, !179}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !134, file: !135, line: 51, baseType: !53, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !134, file: !135, line: 54, baseType: !50, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !134, file: !135, line: 55, baseType: !50, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !134, file: !135, line: 56, baseType: !50, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !134, file: !135, line: 57, baseType: !50, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !134, file: !135, line: 58, baseType: !50, size: 64, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !134, file: !135, line: 59, baseType: !50, size: 64, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !134, file: !135, line: 60, baseType: !50, size: 64, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !134, file: !135, line: 61, baseType: !50, size: 64, offset: 512)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !134, file: !135, line: 64, baseType: !50, size: 64, offset: 576)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !134, file: !135, line: 65, baseType: !50, size: 64, offset: 640)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !134, file: !135, line: 66, baseType: !50, size: 64, offset: 704)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !134, file: !135, line: 68, baseType: !150, size: 64, offset: 768)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !135, line: 36, flags: DIFlagFwdDecl)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !134, file: !135, line: 70, baseType: !153, size: 64, offset: 832)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !134, file: !135, line: 72, baseType: !53, size: 32, offset: 896)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !134, file: !135, line: 73, baseType: !53, size: 32, offset: 928)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !134, file: !135, line: 74, baseType: !157, size: 64, offset: 960)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !158, line: 152, baseType: !63)
!158 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !134, file: !135, line: 77, baseType: !54, size: 16, offset: 1024)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !134, file: !135, line: 78, baseType: !161, size: 8, offset: 1040)
!161 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !134, file: !135, line: 79, baseType: !163, size: 8, offset: 1048)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 8, elements: !99)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !134, file: !135, line: 81, baseType: !165, size: 64, offset: 1088)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !135, line: 43, baseType: null)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !134, file: !135, line: 89, baseType: !168, size: 64, offset: 1152)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !158, line: 153, baseType: !63)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !134, file: !135, line: 91, baseType: !170, size: 64, offset: 1216)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !135, line: 37, flags: DIFlagFwdDecl)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !134, file: !135, line: 92, baseType: !173, size: 64, offset: 1280)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !135, line: 38, flags: DIFlagFwdDecl)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !134, file: !135, line: 93, baseType: !153, size: 64, offset: 1344)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !134, file: !135, line: 94, baseType: !52, size: 64, offset: 1408)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !134, file: !135, line: 95, baseType: !55, size: 64, offset: 1472)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !134, file: !135, line: 96, baseType: !53, size: 32, offset: 1536)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !134, file: !135, line: 98, baseType: !180, size: 160, offset: 1568)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 160, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 20)
!183 = !DILocalVariable(name: "__cnt", scope: !129, file: !6, line: 644, type: !55)
!184 = !DILocalVariable(name: "url_program", scope: !109, file: !6, line: 648, type: !58)
!185 = !DILocalVariable(name: "__ptr", scope: !186, file: !6, line: 686, type: !58)
!186 = distinct !DILexicalBlock(scope: !109, file: !6, line: 686, column: 3)
!187 = !DILocalVariable(name: "__stream", scope: !186, file: !6, line: 686, type: !131)
!188 = !DILocalVariable(name: "__cnt", scope: !186, file: !6, line: 686, type: !55)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "signals", scope: !2, file: !3, line: 59, type: !191, isLocal: true, isDefinition: true)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 88, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 3584, elements: !204)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !197, line: 50, size: 256, elements: !198)
!197 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!198 = !{!199, !200, !201, !203}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !197, line: 52, baseType: !58, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !196, file: !197, line: 55, baseType: !53, size: 32, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !196, file: !197, line: 56, baseType: !202, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !196, file: !197, line: 57, baseType: !53, size: 32, offset: 192)
!204 = !{!205}
!205 = !DISubrange(count: 14)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "usvars_used", scope: !2, file: !3, line: 42, type: !208, isLocal: true, isDefinition: true)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !209, line: 130, baseType: !210)
!209 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !56, line: 35, baseType: !63)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "usvars_alloc", scope: !2, file: !3, line: 41, type: !208, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "usvars", scope: !2, file: !3, line: 40, type: !215, isLocal: true, isDefinition: true)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "block_signals", scope: !2, file: !3, line: 62, type: !218, isLocal: true, isDefinition: true)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !219, line: 7, baseType: !220)
!219 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "c2b978aaf49d5c0e2b1e9c2e1b7f7848")
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !221, line: 8, baseType: !222)
!221 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "acc6b14c0967857fec362a8d433e1cf2")
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 5, size: 1024, elements: !223)
!223 = !{!224}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !222, file: !221, line: 7, baseType: !225, size: 1024)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 1024, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 16)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "unblock_signals", scope: !2, file: !3, line: 65, type: !218, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "vnlen", scope: !2, file: !3, line: 49, type: !208, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "varname", scope: !2, file: !3, line: 48, type: !50, isLocal: true, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 152, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 19)
!237 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!238 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!239 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "Version", scope: !242, file: !243, line: 3, type: !58, isLocal: false, isDefinition: true)
!242 = distinct !DICompileUnit(language: DW_LANG_C99, file: !243, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !244, splitDebugInlining: false, nameTableKind: None)
!243 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!244 = !{!240}
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "file_name", scope: !247, file: !248, line: 45, type: !58, isLocal: true, isDefinition: true)
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !249, splitDebugInlining: false, nameTableKind: None)
!248 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!249 = !{!245, !250}
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !247, file: !248, line: 55, type: !80, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !254, file: !255, line: 66, type: !290, isLocal: false, isDefinition: true)
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !256, globals: !257, splitDebugInlining: false, nameTableKind: None)
!255 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!256 = !{!52, !60}
!257 = !{!258, !284, !252, !286, !288}
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(name: "old_file_name", scope: !260, file: !255, line: 304, type: !58, isLocal: true, isDefinition: true)
!260 = distinct !DISubprogram(name: "verror_at_line", scope: !255, file: !255, line: 298, type: !261, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !277)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !53, !53, !58, !7, !58, !263}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !264, line: 52, baseType: !265)
!264 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !266, line: 32, baseType: !267)
!266 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !268, baseType: !269)
!268 = !DIFile(filename: "lib/error.c", directory: "/src")
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !270, size: 256, elements: !271)
!270 = !DINamespace(name: "std", scope: null)
!271 = !{!272, !273, !274, !275, !276}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !269, file: !268, baseType: !52, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !269, file: !268, baseType: !52, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !269, file: !268, baseType: !52, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !269, file: !268, baseType: !53, size: 32, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !269, file: !268, baseType: !53, size: 32, offset: 224)
!277 = !{!278, !279, !280, !281, !282, !283}
!278 = !DILocalVariable(name: "status", arg: 1, scope: !260, file: !255, line: 298, type: !53)
!279 = !DILocalVariable(name: "errnum", arg: 2, scope: !260, file: !255, line: 298, type: !53)
!280 = !DILocalVariable(name: "file_name", arg: 3, scope: !260, file: !255, line: 298, type: !58)
!281 = !DILocalVariable(name: "line_number", arg: 4, scope: !260, file: !255, line: 298, type: !7)
!282 = !DILocalVariable(name: "message", arg: 5, scope: !260, file: !255, line: 298, type: !58)
!283 = !DILocalVariable(name: "args", arg: 6, scope: !260, file: !255, line: 298, type: !263)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(name: "old_line_number", scope: !260, file: !255, line: 305, type: !7, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(name: "error_message_count", scope: !254, file: !255, line: 69, type: !7, isLocal: false, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !254, file: !255, line: 295, type: !53, isLocal: false, isDefinition: true)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{null}
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(name: "program_name", scope: !295, file: !296, line: 31, type: !58, isLocal: false, isDefinition: true)
!295 = distinct !DICompileUnit(language: DW_LANG_C99, file: !296, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !297, globals: !298, splitDebugInlining: false, nameTableKind: None)
!296 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!297 = !{!50}
!298 = !{!293}
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(name: "utf07FF", scope: !301, file: !302, line: 46, type: !332, isLocal: true, isDefinition: true)
!301 = distinct !DISubprogram(name: "proper_name_lite", scope: !302, file: !302, line: 38, type: !303, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !307)
!302 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!303 = !DISubroutineType(types: !304)
!304 = !{!58, !58, !58}
!305 = distinct !DICompileUnit(language: DW_LANG_C99, file: !302, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !306, splitDebugInlining: false, nameTableKind: None)
!306 = !{!299}
!307 = !{!308, !309, !310, !311, !316}
!308 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !301, file: !302, line: 38, type: !58)
!309 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !301, file: !302, line: 38, type: !58)
!310 = !DILocalVariable(name: "translation", scope: !301, file: !302, line: 40, type: !58)
!311 = !DILocalVariable(name: "w", scope: !301, file: !302, line: 47, type: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !313, line: 37, baseType: !314)
!313 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !158, line: 57, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !158, line: 42, baseType: !7)
!316 = !DILocalVariable(name: "mbs", scope: !301, file: !302, line: 48, type: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !318, line: 6, baseType: !319)
!318 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !320, line: 21, baseType: !321)
!320 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 13, size: 64, elements: !322)
!322 = !{!323, !324}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !321, file: !320, line: 15, baseType: !53, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !321, file: !320, line: 20, baseType: !325, size: 32, offset: 32)
!325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !321, file: !320, line: 16, size: 32, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !325, file: !320, line: 18, baseType: !7, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !325, file: !320, line: 19, baseType: !329, size: 32)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 32, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 4)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 16, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 2)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !337, file: !338, line: 76, type: !406, isLocal: false, isDefinition: true)
!337 = distinct !DICompileUnit(language: DW_LANG_C99, file: !338, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !339, retainedTypes: !345, globals: !346, splitDebugInlining: false, nameTableKind: None)
!338 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!339 = !{!13, !340, !27}
!340 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !14, line: 254, baseType: !7, size: 32, elements: !341)
!341 = !{!342, !343, !344}
!342 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!343 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!344 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!345 = !{!53, !54, !55}
!346 = !{!335, !347, !353, !365, !367, !372, !395, !402, !404}
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !337, file: !338, line: 92, type: !349, isLocal: false, isDefinition: true)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 320, elements: !351)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!351 = !{!352}
!352 = !DISubrange(count: 10)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !337, file: !338, line: 1040, type: !355, isLocal: false, isDefinition: true)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !338, line: 56, size: 448, elements: !356)
!356 = !{!357, !358, !359, !363, !364}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !355, file: !338, line: 59, baseType: !13, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !355, file: !338, line: 62, baseType: !53, size: 32, offset: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !355, file: !338, line: 66, baseType: !360, size: 256, offset: 64)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 8)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !355, file: !338, line: 69, baseType: !58, size: 64, offset: 320)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !355, file: !338, line: 72, baseType: !58, size: 64, offset: 384)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !337, file: !338, line: 107, type: !355, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "slot0", scope: !337, file: !338, line: 831, type: !369, isLocal: true, isDefinition: true)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 2048, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 256)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "quote", scope: !374, file: !338, line: 228, type: !393, isLocal: true, isDefinition: true)
!374 = distinct !DISubprogram(name: "gettext_quote", scope: !338, file: !338, line: 197, type: !375, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !377)
!375 = !DISubroutineType(types: !376)
!376 = !{!58, !58, !13}
!377 = !{!378, !379, !380, !381, !382}
!378 = !DILocalVariable(name: "msgid", arg: 1, scope: !374, file: !338, line: 197, type: !58)
!379 = !DILocalVariable(name: "s", arg: 2, scope: !374, file: !338, line: 197, type: !13)
!380 = !DILocalVariable(name: "translation", scope: !374, file: !338, line: 199, type: !58)
!381 = !DILocalVariable(name: "w", scope: !374, file: !338, line: 229, type: !312)
!382 = !DILocalVariable(name: "mbs", scope: !374, file: !338, line: 230, type: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !318, line: 6, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !320, line: 21, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 13, size: 64, elements: !386)
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !385, file: !320, line: 15, baseType: !53, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !385, file: !320, line: 20, baseType: !389, size: 32, offset: 32)
!389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !320, line: 16, size: 32, elements: !390)
!390 = !{!391, !392}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !389, file: !320, line: 18, baseType: !7, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !389, file: !320, line: 19, baseType: !329, size: 32)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, elements: !394)
!394 = !{!334, !331}
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(name: "slotvec", scope: !337, file: !338, line: 834, type: !397, isLocal: true, isDefinition: true)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !338, line: 823, size: 128, elements: !399)
!399 = !{!400, !401}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !398, file: !338, line: 825, baseType: !55, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !398, file: !338, line: 826, baseType: !50, size: 64, offset: 64)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(name: "nslots", scope: !337, file: !338, line: 832, type: !53, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(name: "slotvec0", scope: !337, file: !338, line: 833, type: !398, isLocal: true, isDefinition: true)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 704, elements: !408)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!408 = !{!409}
!409 = !DISubrange(count: 11)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "numname_table", scope: !412, file: !413, line: 43, type: !416, isLocal: true, isDefinition: true)
!412 = distinct !DICompileUnit(language: DW_LANG_C99, file: !413, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !414, globals: !415, splitDebugInlining: false, nameTableKind: None)
!413 = !DIFile(filename: "lib/sig2str.c", directory: "/src", checksumkind: CSK_MD5, checksum: "828136ef7ede39101f7053cda7cea598")
!414 = !{!7}
!415 = !{!410}
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 3360, elements: !422)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numname", file: !413, line: 43, size: 96, elements: !418)
!418 = !{!419, !420}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !417, file: !413, line: 43, baseType: !53, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !417, file: !413, line: 43, baseType: !421, size: 64, offset: 32)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, elements: !361)
!422 = !{!423}
!423 = !DISubrange(count: 35)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !426, file: !427, line: 26, type: !429, isLocal: false, isDefinition: true)
!426 = distinct !DICompileUnit(language: DW_LANG_C99, file: !427, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !428, splitDebugInlining: false, nameTableKind: None)
!427 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!428 = !{!424}
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 376, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 47)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(name: "exit_failure", scope: !434, file: !435, line: 24, type: !437, isLocal: false, isDefinition: true)
!434 = distinct !DICompileUnit(language: DW_LANG_C99, file: !435, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !436, splitDebugInlining: false, nameTableKind: None)
!435 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!436 = !{!432}
!437 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(name: "internal_state", scope: !440, file: !441, line: 97, type: !444, isLocal: true, isDefinition: true)
!440 = distinct !DICompileUnit(language: DW_LANG_C99, file: !441, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !442, globals: !443, splitDebugInlining: false, nameTableKind: None)
!441 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!442 = !{!52, !55, !60}
!443 = !{!438}
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !318, line: 6, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !320, line: 21, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 13, size: 64, elements: !447)
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !446, file: !320, line: 15, baseType: !53, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !446, file: !320, line: 20, baseType: !450, size: 32, offset: 32)
!450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !446, file: !320, line: 16, size: 32, elements: !451)
!451 = !{!452, !453}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !450, file: !320, line: 18, baseType: !7, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !450, file: !320, line: 19, baseType: !329, size: 32)
!454 = distinct !DICompileUnit(language: DW_LANG_C99, file: !455, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!455 = !DIFile(filename: "src/operand2sig.c", directory: "/src", checksumkind: CSK_MD5, checksum: "46beb430284fcb3f5c7434dd479a51b3")
!456 = distinct !DICompileUnit(language: DW_LANG_C99, file: !457, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!457 = !DIFile(filename: "lib/c-ctype.c", directory: "/src", checksumkind: CSK_MD5, checksum: "245df19f202f37bba31cfa46647ceb93")
!458 = distinct !DICompileUnit(language: DW_LANG_C99, file: !459, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!459 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!460 = distinct !DICompileUnit(language: DW_LANG_C99, file: !461, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !462, retainedTypes: !466, splitDebugInlining: false, nameTableKind: None)
!461 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!462 = !{!463}
!463 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !461, line: 40, baseType: !7, size: 32, elements: !464)
!464 = !{!465}
!465 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!466 = !{!52}
!467 = distinct !DICompileUnit(language: DW_LANG_C99, file: !468, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !469, retainedTypes: !497, splitDebugInlining: false, nameTableKind: None)
!468 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!469 = !{!470, !482}
!470 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !471, file: !468, line: 188, baseType: !7, size: 32, elements: !480)
!471 = distinct !DISubprogram(name: "x2nrealloc", scope: !468, file: !468, line: 176, type: !472, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !475)
!472 = !DISubroutineType(types: !473)
!473 = !{!52, !52, !474, !55}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!475 = !{!476, !477, !478, !479}
!476 = !DILocalVariable(name: "p", arg: 1, scope: !471, file: !468, line: 176, type: !52)
!477 = !DILocalVariable(name: "pn", arg: 2, scope: !471, file: !468, line: 176, type: !474)
!478 = !DILocalVariable(name: "s", arg: 3, scope: !471, file: !468, line: 176, type: !55)
!479 = !DILocalVariable(name: "n", scope: !471, file: !468, line: 178, type: !55)
!480 = !{!481}
!481 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!482 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !483, file: !468, line: 228, baseType: !7, size: 32, elements: !480)
!483 = distinct !DISubprogram(name: "xpalloc", scope: !468, file: !468, line: 223, type: !484, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !487)
!484 = !DISubroutineType(types: !485)
!485 = !{!52, !52, !486, !208, !210, !208}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !496}
!488 = !DILocalVariable(name: "pa", arg: 1, scope: !483, file: !468, line: 223, type: !52)
!489 = !DILocalVariable(name: "pn", arg: 2, scope: !483, file: !468, line: 223, type: !486)
!490 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !483, file: !468, line: 223, type: !208)
!491 = !DILocalVariable(name: "n_max", arg: 4, scope: !483, file: !468, line: 223, type: !210)
!492 = !DILocalVariable(name: "s", arg: 5, scope: !483, file: !468, line: 223, type: !208)
!493 = !DILocalVariable(name: "n0", scope: !483, file: !468, line: 230, type: !208)
!494 = !DILocalVariable(name: "n", scope: !483, file: !468, line: 237, type: !208)
!495 = !DILocalVariable(name: "nbytes", scope: !483, file: !468, line: 248, type: !208)
!496 = !DILocalVariable(name: "adjusted_nbytes", scope: !483, file: !468, line: 252, type: !208)
!497 = !{!50, !52, !80, !63, !57}
!498 = distinct !DICompileUnit(language: DW_LANG_C99, file: !499, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!499 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!500 = distinct !DICompileUnit(language: DW_LANG_C99, file: !501, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!501 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!502 = distinct !DICompileUnit(language: DW_LANG_C99, file: !503, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!503 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!504 = distinct !DICompileUnit(language: DW_LANG_C99, file: !505, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !466, splitDebugInlining: false, nameTableKind: None)
!505 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!506 = distinct !DICompileUnit(language: DW_LANG_C99, file: !507, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !466, splitDebugInlining: false, nameTableKind: None)
!507 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!508 = distinct !DICompileUnit(language: DW_LANG_C99, file: !509, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !510, splitDebugInlining: false, nameTableKind: None)
!509 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!510 = !{!80, !57, !52}
!511 = distinct !DICompileUnit(language: DW_LANG_C99, file: !512, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!512 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!513 = distinct !DICompileUnit(language: DW_LANG_C99, file: !514, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!514 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!515 = distinct !DICompileUnit(language: DW_LANG_C99, file: !516, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !466, splitDebugInlining: false, nameTableKind: None)
!516 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!517 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!518 = !{i32 7, !"Dwarf Version", i32 5}
!519 = !{i32 2, !"Debug Info Version", i32 3}
!520 = !{i32 1, !"wchar_size", i32 4}
!521 = !{i32 1, !"branch-target-enforcement", i32 0}
!522 = !{i32 1, !"sign-return-address", i32 0}
!523 = !{i32 1, !"sign-return-address-all", i32 0}
!524 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!525 = !{i32 7, !"PIC Level", i32 2}
!526 = !{i32 7, !"PIE Level", i32 2}
!527 = !{i32 7, !"uwtable", i32 1}
!528 = !{i32 7, !"frame-pointer", i32 1}
!529 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 107, type: !67, scopeLine: 108, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !530)
!530 = !{!531}
!531 = !DILocalVariable(name: "status", arg: 1, scope: !529, file: !3, line: 107, type: !53)
!532 = !DILocation(line: 0, scope: !529)
!533 = !DILocation(line: 109, column: 14, scope: !534)
!534 = distinct !DILexicalBlock(scope: !529, file: !3, line: 109, column: 7)
!535 = !DILocation(line: 109, column: 7, scope: !529)
!536 = !DILocation(line: 110, column: 5, scope: !537)
!537 = distinct !DILexicalBlock(scope: !534, file: !3, line: 110, column: 5)
!538 = !{!539, !539, i64 0}
!539 = !{!"any pointer", !540, i64 0}
!540 = !{!"omnipotent char", !541, i64 0}
!541 = !{!"Simple C/C++ TBAA"}
!542 = !DILocation(line: 113, column: 7, scope: !543)
!543 = distinct !DILexicalBlock(scope: !534, file: !3, line: 112, column: 5)
!544 = !DILocation(line: 116, column: 7, scope: !543)
!545 = !DILocation(line: 736, column: 3, scope: !546, inlinedAt: !548)
!546 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 734, type: !291, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !547)
!547 = !{}
!548 = distinct !DILocation(line: 120, column: 7, scope: !543)
!549 = !DILocation(line: 122, column: 7, scope: !543)
!550 = !DILocation(line: 126, column: 7, scope: !543)
!551 = !DILocation(line: 130, column: 7, scope: !543)
!552 = !DILocation(line: 134, column: 7, scope: !543)
!553 = !DILocation(line: 138, column: 7, scope: !543)
!554 = !DILocation(line: 142, column: 7, scope: !543)
!555 = !DILocation(line: 147, column: 7, scope: !543)
!556 = !DILocation(line: 151, column: 7, scope: !543)
!557 = !DILocation(line: 155, column: 7, scope: !543)
!558 = !DILocation(line: 159, column: 7, scope: !543)
!559 = !DILocation(line: 163, column: 7, scope: !543)
!560 = !DILocation(line: 167, column: 7, scope: !543)
!561 = !DILocation(line: 168, column: 7, scope: !543)
!562 = !DILocation(line: 169, column: 7, scope: !543)
!563 = !DILocation(line: 173, column: 7, scope: !543)
!564 = !DILocalVariable(name: "program", arg: 1, scope: !565, file: !6, line: 824, type: !58)
!565 = distinct !DISubprogram(name: "emit_exec_status", scope: !6, file: !6, line: 824, type: !566, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !568)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !58}
!568 = !{!564}
!569 = !DILocation(line: 0, scope: !565, inlinedAt: !570)
!570 = distinct !DILocation(line: 179, column: 7, scope: !543)
!571 = !DILocation(line: 826, column: 7, scope: !565, inlinedAt: !570)
!572 = !DILocalVariable(name: "program", arg: 1, scope: !573, file: !6, line: 836, type: !58)
!573 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 836, type: !566, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !574)
!574 = !{!572, !575, !584, !585, !587, !588}
!575 = !DILocalVariable(name: "infomap", scope: !573, file: !6, line: 838, type: !576)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 896, elements: !582)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !578)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !573, file: !6, line: 838, size: 128, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !578, file: !6, line: 838, baseType: !58, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !578, file: !6, line: 838, baseType: !58, size: 64, offset: 64)
!582 = !{!583}
!583 = !DISubrange(count: 7)
!584 = !DILocalVariable(name: "node", scope: !573, file: !6, line: 848, type: !58)
!585 = !DILocalVariable(name: "map_prog", scope: !573, file: !6, line: 849, type: !586)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!587 = !DILocalVariable(name: "lc_messages", scope: !573, file: !6, line: 861, type: !58)
!588 = !DILocalVariable(name: "url_program", scope: !573, file: !6, line: 874, type: !58)
!589 = !DILocation(line: 0, scope: !573, inlinedAt: !590)
!590 = distinct !DILocation(line: 180, column: 7, scope: !543)
!591 = !DILocation(line: 838, column: 3, scope: !573, inlinedAt: !590)
!592 = !DILocation(line: 838, column: 67, scope: !573, inlinedAt: !590)
!593 = !DILocation(line: 849, column: 36, scope: !573, inlinedAt: !590)
!594 = !DILocation(line: 851, column: 3, scope: !573, inlinedAt: !590)
!595 = !DILocalVariable(name: "__s1", arg: 1, scope: !596, file: !597, line: 1359, type: !58)
!596 = distinct !DISubprogram(name: "streq", scope: !597, file: !597, line: 1359, type: !598, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !600)
!597 = !DIFile(filename: "./lib/string.h", directory: "/src")
!598 = !DISubroutineType(types: !599)
!599 = !{!80, !58, !58}
!600 = !{!595, !601}
!601 = !DILocalVariable(name: "__s2", arg: 2, scope: !596, file: !597, line: 1359, type: !58)
!602 = !DILocation(line: 0, scope: !596, inlinedAt: !603)
!603 = distinct !DILocation(line: 851, column: 33, scope: !573, inlinedAt: !590)
!604 = !DILocation(line: 1361, column: 11, scope: !596, inlinedAt: !603)
!605 = !DILocation(line: 1361, column: 10, scope: !596, inlinedAt: !603)
!606 = !DILocation(line: 852, column: 13, scope: !573, inlinedAt: !590)
!607 = !DILocation(line: 851, column: 20, scope: !573, inlinedAt: !590)
!608 = !{!609, !539, i64 0}
!609 = !{!"infomap", !539, i64 0, !539, i64 8}
!610 = !DILocation(line: 851, column: 10, scope: !573, inlinedAt: !590)
!611 = !DILocation(line: 851, column: 28, scope: !573, inlinedAt: !590)
!612 = distinct !{!612, !594, !606, !613}
!613 = !{!"llvm.loop.mustprogress"}
!614 = !DILocation(line: 854, column: 17, scope: !615, inlinedAt: !590)
!615 = distinct !DILexicalBlock(scope: !573, file: !6, line: 854, column: 7)
!616 = !{!609, !539, i64 8}
!617 = !DILocation(line: 854, column: 7, scope: !615, inlinedAt: !590)
!618 = !DILocation(line: 854, column: 7, scope: !573, inlinedAt: !590)
!619 = !DILocation(line: 857, column: 3, scope: !573, inlinedAt: !590)
!620 = !DILocation(line: 861, column: 29, scope: !573, inlinedAt: !590)
!621 = !DILocation(line: 862, column: 7, scope: !622, inlinedAt: !590)
!622 = distinct !DILexicalBlock(scope: !573, file: !6, line: 862, column: 7)
!623 = !DILocation(line: 862, column: 19, scope: !622, inlinedAt: !590)
!624 = !DILocation(line: 862, column: 22, scope: !622, inlinedAt: !590)
!625 = !DILocation(line: 862, column: 7, scope: !573, inlinedAt: !590)
!626 = !DILocation(line: 868, column: 7, scope: !627, inlinedAt: !590)
!627 = distinct !DILexicalBlock(scope: !622, file: !6, line: 863, column: 5)
!628 = !DILocation(line: 870, column: 5, scope: !627, inlinedAt: !590)
!629 = !DILocation(line: 0, scope: !596, inlinedAt: !630)
!630 = distinct !DILocation(line: 874, column: 29, scope: !573, inlinedAt: !590)
!631 = !DILocation(line: 875, column: 3, scope: !573, inlinedAt: !590)
!632 = !DILocation(line: 877, column: 3, scope: !573, inlinedAt: !590)
!633 = !DILocation(line: 879, column: 1, scope: !573, inlinedAt: !590)
!634 = !DILocation(line: 182, column: 3, scope: !529)
!635 = !DISubprogram(name: "dcgettext", scope: !636, file: !636, line: 51, type: !637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!636 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!637 = !DISubroutineType(types: !638)
!638 = !{!50, !58, !58, !53}
!639 = !DISubprogram(name: "fputs_unlocked", scope: !264, file: !264, line: 691, type: !640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!640 = !DISubroutineType(types: !641)
!641 = !{!53, !642, !643}
!642 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !58)
!643 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !131)
!644 = !DILocation(line: 0, scope: !109)
!645 = !DILocation(line: 581, column: 7, scope: !117)
!646 = !{!647, !647, i64 0}
!647 = !{!"int", !540, i64 0}
!648 = !DILocation(line: 581, column: 19, scope: !117)
!649 = !DILocation(line: 581, column: 7, scope: !109)
!650 = !DILocation(line: 585, column: 26, scope: !116)
!651 = !DILocation(line: 0, scope: !116)
!652 = !DILocation(line: 586, column: 23, scope: !116)
!653 = !DILocation(line: 586, column: 28, scope: !116)
!654 = !DILocation(line: 586, column: 32, scope: !116)
!655 = !{!540, !540, i64 0}
!656 = !DILocation(line: 586, column: 38, scope: !116)
!657 = !DILocation(line: 0, scope: !596, inlinedAt: !658)
!658 = distinct !DILocation(line: 586, column: 41, scope: !116)
!659 = !DILocation(line: 1361, column: 11, scope: !596, inlinedAt: !658)
!660 = !DILocation(line: 1361, column: 10, scope: !596, inlinedAt: !658)
!661 = !DILocation(line: 586, column: 19, scope: !116)
!662 = !DILocation(line: 587, column: 5, scope: !116)
!663 = !DILocation(line: 588, column: 7, scope: !664)
!664 = distinct !DILexicalBlock(scope: !109, file: !6, line: 588, column: 7)
!665 = !DILocation(line: 588, column: 7, scope: !109)
!666 = !DILocation(line: 590, column: 7, scope: !667)
!667 = distinct !DILexicalBlock(scope: !664, file: !6, line: 589, column: 5)
!668 = !DILocation(line: 591, column: 7, scope: !667)
!669 = !DILocation(line: 595, column: 37, scope: !109)
!670 = !DILocation(line: 595, column: 35, scope: !109)
!671 = !DILocation(line: 596, column: 29, scope: !109)
!672 = !DILocation(line: 597, column: 8, scope: !124)
!673 = !DILocation(line: 597, column: 7, scope: !109)
!674 = !DILocation(line: 604, column: 24, scope: !123)
!675 = !DILocation(line: 604, column: 12, scope: !124)
!676 = !DILocation(line: 0, scope: !122)
!677 = !DILocation(line: 610, column: 16, scope: !122)
!678 = !DILocation(line: 610, column: 7, scope: !122)
!679 = !DILocation(line: 611, column: 21, scope: !122)
!680 = !{!681, !681, i64 0}
!681 = !{!"short", !540, i64 0}
!682 = !DILocation(line: 611, column: 19, scope: !122)
!683 = !DILocation(line: 611, column: 16, scope: !122)
!684 = !DILocation(line: 610, column: 30, scope: !122)
!685 = distinct !{!685, !678, !679, !613}
!686 = !DILocation(line: 612, column: 18, scope: !687)
!687 = distinct !DILexicalBlock(scope: !122, file: !6, line: 612, column: 11)
!688 = !DILocation(line: 612, column: 11, scope: !122)
!689 = !DILocation(line: 620, column: 23, scope: !109)
!690 = !DILocation(line: 625, column: 39, scope: !109)
!691 = !DILocation(line: 626, column: 3, scope: !109)
!692 = !DILocation(line: 626, column: 10, scope: !109)
!693 = !DILocation(line: 626, column: 21, scope: !109)
!694 = !DILocation(line: 628, column: 44, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !6, line: 628, column: 11)
!696 = distinct !DILexicalBlock(scope: !109, file: !6, line: 627, column: 5)
!697 = !DILocation(line: 628, column: 32, scope: !695)
!698 = !DILocation(line: 628, column: 49, scope: !695)
!699 = !DILocation(line: 628, column: 11, scope: !696)
!700 = !DILocation(line: 630, column: 11, scope: !701)
!701 = distinct !DILexicalBlock(scope: !696, file: !6, line: 630, column: 11)
!702 = !DILocation(line: 630, column: 11, scope: !696)
!703 = !DILocation(line: 632, column: 26, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !6, line: 632, column: 15)
!705 = distinct !DILexicalBlock(scope: !701, file: !6, line: 631, column: 9)
!706 = !DILocation(line: 632, column: 34, scope: !704)
!707 = !DILocation(line: 632, column: 37, scope: !704)
!708 = !DILocation(line: 632, column: 15, scope: !705)
!709 = !DILocation(line: 636, column: 29, scope: !710)
!710 = distinct !DILexicalBlock(scope: !705, file: !6, line: 636, column: 15)
!711 = !DILocation(line: 640, column: 16, scope: !696)
!712 = distinct !{!712, !691, !713, !613}
!713 = !DILocation(line: 641, column: 5, scope: !109)
!714 = !DILocation(line: 644, column: 3, scope: !109)
!715 = !DILocation(line: 0, scope: !596, inlinedAt: !716)
!716 = distinct !DILocation(line: 648, column: 31, scope: !109)
!717 = !DILocation(line: 0, scope: !596, inlinedAt: !718)
!718 = distinct !DILocation(line: 649, column: 31, scope: !109)
!719 = !DILocation(line: 0, scope: !596, inlinedAt: !720)
!720 = distinct !DILocation(line: 650, column: 31, scope: !109)
!721 = !DILocation(line: 0, scope: !596, inlinedAt: !722)
!722 = distinct !DILocation(line: 651, column: 31, scope: !109)
!723 = !DILocation(line: 0, scope: !596, inlinedAt: !724)
!724 = distinct !DILocation(line: 652, column: 31, scope: !109)
!725 = !DILocation(line: 0, scope: !596, inlinedAt: !726)
!726 = distinct !DILocation(line: 653, column: 31, scope: !109)
!727 = !DILocation(line: 0, scope: !596, inlinedAt: !728)
!728 = distinct !DILocation(line: 654, column: 31, scope: !109)
!729 = !DILocation(line: 0, scope: !596, inlinedAt: !730)
!730 = distinct !DILocation(line: 655, column: 31, scope: !109)
!731 = !DILocation(line: 0, scope: !596, inlinedAt: !732)
!732 = distinct !DILocation(line: 656, column: 31, scope: !109)
!733 = !DILocation(line: 0, scope: !596, inlinedAt: !734)
!734 = distinct !DILocation(line: 657, column: 31, scope: !109)
!735 = !DILocation(line: 663, column: 7, scope: !736)
!736 = distinct !DILexicalBlock(scope: !109, file: !6, line: 663, column: 7)
!737 = !DILocation(line: 664, column: 7, scope: !736)
!738 = !DILocation(line: 664, column: 10, scope: !736)
!739 = !DILocation(line: 663, column: 7, scope: !109)
!740 = !DILocation(line: 669, column: 7, scope: !741)
!741 = distinct !DILexicalBlock(scope: !736, file: !6, line: 665, column: 5)
!742 = !DILocation(line: 671, column: 5, scope: !741)
!743 = !DILocation(line: 676, column: 7, scope: !744)
!744 = distinct !DILexicalBlock(scope: !736, file: !6, line: 673, column: 5)
!745 = !DILocation(line: 679, column: 3, scope: !109)
!746 = !DILocation(line: 683, column: 3, scope: !109)
!747 = !DILocation(line: 686, column: 3, scope: !109)
!748 = !DILocation(line: 688, column: 3, scope: !109)
!749 = !DILocation(line: 691, column: 3, scope: !109)
!750 = !DILocation(line: 695, column: 3, scope: !109)
!751 = !DILocation(line: 696, column: 1, scope: !109)
!752 = !DISubprogram(name: "setlocale", scope: !753, file: !753, line: 122, type: !754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!753 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!754 = !DISubroutineType(types: !755)
!755 = !{!50, !53, !58}
!756 = !DISubprogram(name: "getenv", scope: !757, file: !757, line: 641, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!757 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!758 = !DISubroutineType(types: !759)
!759 = !{!50, !58}
!760 = !DISubprogram(name: "fwrite_unlocked", scope: !264, file: !264, line: 704, type: !761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!761 = !DISubroutineType(types: !762)
!762 = !{!55, !763, !55, !55, !643}
!763 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !764)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!766 = !DILocation(line: 0, scope: !72)
!767 = !DILocation(line: 772, column: 21, scope: !72)
!768 = !DILocation(line: 772, column: 3, scope: !72)
!769 = !DILocation(line: 773, column: 3, scope: !72)
!770 = !DILocation(line: 774, column: 3, scope: !72)
!771 = !DILocation(line: 775, column: 3, scope: !72)
!772 = !DILocalVariable(name: "status", arg: 1, scope: !773, file: !6, line: 102, type: !53)
!773 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 102, type: !67, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !774)
!774 = !{!772}
!775 = !DILocation(line: 0, scope: !773, inlinedAt: !776)
!776 = distinct !DILocation(line: 777, column: 3, scope: !72)
!777 = !DILocation(line: 105, column: 18, scope: !778, inlinedAt: !776)
!778 = distinct !DILexicalBlock(scope: !773, file: !6, line: 104, column: 7)
!779 = !DILocation(line: 778, column: 3, scope: !72)
!780 = !DILocation(line: 755, column: 13, scope: !781, inlinedAt: !785)
!781 = distinct !DISubprogram(name: "initialize_signals", scope: !3, file: !3, line: 753, type: !291, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !782)
!782 = !{!783}
!783 = !DILocalVariable(name: "i", scope: !784, file: !3, line: 757, type: !53)
!784 = distinct !DILexicalBlock(scope: !781, file: !3, line: 757, column: 3)
!785 = distinct !DILocation(line: 780, column: 3, scope: !72)
!786 = !DILocation(line: 755, column: 11, scope: !781, inlinedAt: !785)
!787 = !DILocation(line: 0, scope: !784, inlinedAt: !785)
!788 = !DILocation(line: 758, column: 16, scope: !789, inlinedAt: !785)
!789 = distinct !DILexicalBlock(scope: !784, file: !3, line: 757, column: 3)
!790 = !DILocation(line: 783, column: 3, scope: !72)
!791 = !DILocation(line: 769, column: 9, scope: !72)
!792 = !DILocation(line: 768, column: 15, scope: !72)
!793 = !DILocation(line: 783, column: 18, scope: !72)
!794 = distinct !{!794, !790, !795, !613}
!795 = !DILocation(line: 835, column: 5, scope: !72)
!796 = !DILocation(line: 788, column: 19, scope: !797)
!797 = distinct !DILexicalBlock(scope: !798, file: !3, line: 786, column: 9)
!798 = distinct !DILexicalBlock(scope: !72, file: !3, line: 784, column: 5)
!799 = !DILocation(line: 789, column: 11, scope: !797)
!800 = !DILocation(line: 794, column: 29, scope: !797)
!801 = !DILocalVariable(name: "var", arg: 1, scope: !802, file: !3, line: 186, type: !58)
!802 = distinct !DISubprogram(name: "append_unset_var", scope: !3, file: !3, line: 186, type: !566, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !803)
!803 = !{!801}
!804 = !DILocation(line: 0, scope: !802, inlinedAt: !805)
!805 = distinct !DILocation(line: 794, column: 11, scope: !797)
!806 = !DILocation(line: 188, column: 7, scope: !807, inlinedAt: !805)
!807 = distinct !DILexicalBlock(scope: !802, file: !3, line: 188, column: 7)
!808 = !{!809, !809, i64 0}
!809 = !{!"long", !540, i64 0}
!810 = !DILocation(line: 188, column: 22, scope: !807, inlinedAt: !805)
!811 = !DILocation(line: 188, column: 19, scope: !807, inlinedAt: !805)
!812 = !DILocation(line: 188, column: 7, scope: !802, inlinedAt: !805)
!813 = !DILocation(line: 190, column: 3, scope: !802, inlinedAt: !805)
!814 = !DILocation(line: 189, column: 23, scope: !807, inlinedAt: !805)
!815 = !DILocation(line: 189, column: 14, scope: !807, inlinedAt: !805)
!816 = !DILocation(line: 189, column: 12, scope: !807, inlinedAt: !805)
!817 = !DILocation(line: 189, column: 5, scope: !807, inlinedAt: !805)
!818 = !DILocation(line: 190, column: 21, scope: !802, inlinedAt: !805)
!819 = !DILocation(line: 190, column: 25, scope: !802, inlinedAt: !805)
!820 = !DILocation(line: 795, column: 11, scope: !797)
!821 = !DILocation(line: 797, column: 21, scope: !797)
!822 = !DILocation(line: 798, column: 11, scope: !797)
!823 = !DILocation(line: 801, column: 11, scope: !797)
!824 = !DILocation(line: 803, column: 39, scope: !797)
!825 = !DILocation(line: 803, column: 11, scope: !797)
!826 = !DILocation(line: 804, column: 38, scope: !797)
!827 = !DILocation(line: 804, column: 11, scope: !797)
!828 = !DILocation(line: 805, column: 11, scope: !797)
!829 = !DILocation(line: 807, column: 39, scope: !797)
!830 = !DILocation(line: 807, column: 11, scope: !797)
!831 = !DILocation(line: 808, column: 11, scope: !797)
!832 = !DILocation(line: 810, column: 38, scope: !797)
!833 = !DILocation(line: 810, column: 11, scope: !797)
!834 = !DILocation(line: 811, column: 11, scope: !797)
!835 = !DILocation(line: 813, column: 34, scope: !797)
!836 = !DILocation(line: 814, column: 11, scope: !797)
!837 = !DILocation(line: 816, column: 20, scope: !797)
!838 = !DILocation(line: 817, column: 11, scope: !797)
!839 = !DILocation(line: 819, column: 31, scope: !797)
!840 = !DILocalVariable(name: "str", arg: 1, scope: !841, file: !3, line: 526, type: !58)
!841 = distinct !DISubprogram(name: "parse_split_string", scope: !3, file: !3, line: 526, type: !842, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !845)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !58, !202, !202, !844}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!845 = !{!840, !846, !847, !848, !849, !850, !851, !852}
!846 = !DILocalVariable(name: "orig_optind", arg: 2, scope: !841, file: !3, line: 526, type: !202)
!847 = !DILocalVariable(name: "orig_argc", arg: 3, scope: !841, file: !3, line: 527, type: !202)
!848 = !DILocalVariable(name: "orig_argv", arg: 4, scope: !841, file: !3, line: 527, type: !844)
!849 = !DILocalVariable(name: "extra_argc", scope: !841, file: !3, line: 529, type: !53)
!850 = !DILocalVariable(name: "newargc", scope: !841, file: !3, line: 529, type: !53)
!851 = !DILocalVariable(name: "newargv", scope: !841, file: !3, line: 530, type: !75)
!852 = !DILocalVariable(name: "i", scope: !853, file: !3, line: 540, type: !53)
!853 = distinct !DILexicalBlock(scope: !854, file: !3, line: 540, column: 7)
!854 = distinct !DILexicalBlock(scope: !855, file: !3, line: 537, column: 5)
!855 = distinct !DILexicalBlock(scope: !841, file: !3, line: 536, column: 7)
!856 = !DILocation(line: 0, scope: !841, inlinedAt: !857)
!857 = distinct !DILocation(line: 819, column: 11, scope: !797)
!858 = !DILocation(line: 529, column: 33, scope: !841, inlinedAt: !857)
!859 = !DILocation(line: 529, column: 31, scope: !841, inlinedAt: !857)
!860 = !DILocalVariable(name: "str", arg: 1, scope: !861, file: !3, line: 366, type: !58)
!861 = distinct !DISubprogram(name: "build_argv", scope: !3, file: !3, line: 366, type: !862, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !864)
!862 = !DISubroutineType(types: !863)
!863 = !{!75, !58, !53, !202}
!864 = !{!860, !865, !866, !867, !868, !869, !877, !879, !882, !883}
!865 = !DILocalVariable(name: "extra_argc", arg: 2, scope: !861, file: !3, line: 366, type: !53)
!866 = !DILocalVariable(name: "argc", arg: 3, scope: !861, file: !3, line: 366, type: !202)
!867 = !DILocalVariable(name: "dq", scope: !861, file: !3, line: 368, type: !80)
!868 = !DILocalVariable(name: "sq", scope: !861, file: !3, line: 368, type: !80)
!869 = !DILocalVariable(name: "ss", scope: !861, file: !3, line: 369, type: !870)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "splitbuf", file: !3, line: 256, size: 256, elements: !871)
!871 = !{!872, !873, !874, !875, !876}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !870, file: !3, line: 275, baseType: !75, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !870, file: !3, line: 276, baseType: !53, size: 32, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "half_alloc", scope: !870, file: !3, line: 277, baseType: !208, size: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "extra_argc", scope: !870, file: !3, line: 280, baseType: !53, size: 32, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "sep", scope: !870, file: !3, line: 284, baseType: !80, size: 8, offset: 224)
!877 = !DILocalVariable(name: "newc", scope: !878, file: !3, line: 382, type: !51)
!878 = distinct !DILexicalBlock(scope: !861, file: !3, line: 381, column: 5)
!879 = !DILocalVariable(name: "n", scope: !880, file: !3, line: 468, type: !50)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 467, column: 11)
!881 = distinct !DILexicalBlock(scope: !878, file: !3, line: 385, column: 9)
!882 = !DILocalVariable(name: "v", scope: !880, file: !3, line: 474, type: !50)
!883 = !DILabel(scope: !861, name: "eos", file: !3, line: 498)
!884 = !DILocation(line: 0, scope: !861, inlinedAt: !885)
!885 = distinct !DILocation(line: 530, column: 20, scope: !841, inlinedAt: !857)
!886 = !DILocation(line: 369, column: 3, scope: !861, inlinedAt: !885)
!887 = !DILocation(line: 369, column: 19, scope: !861, inlinedAt: !885)
!888 = !DILocation(line: 370, column: 34, scope: !861, inlinedAt: !885)
!889 = !DILocation(line: 370, column: 23, scope: !861, inlinedAt: !885)
!890 = !DILocation(line: 370, column: 13, scope: !861, inlinedAt: !885)
!891 = !DILocation(line: 370, column: 11, scope: !861, inlinedAt: !885)
!892 = !{!893, !539, i64 0}
!893 = !{!"splitbuf", !539, i64 0, !647, i64 8, !809, i64 16, !647, i64 24, !894, i64 28}
!894 = !{!"_Bool", !540, i64 0}
!895 = !DILocation(line: 371, column: 11, scope: !861, inlinedAt: !885)
!896 = !{!893, !647, i64 8}
!897 = !DILocation(line: 372, column: 17, scope: !861, inlinedAt: !885)
!898 = !{!893, !809, i64 16}
!899 = !DILocation(line: 373, column: 17, scope: !861, inlinedAt: !885)
!900 = !{!893, !647, i64 24}
!901 = !DILocation(line: 374, column: 10, scope: !861, inlinedAt: !885)
!902 = !{!893, !894, i64 28}
!903 = !DILocation(line: 375, column: 3, scope: !861, inlinedAt: !885)
!904 = !DILocation(line: 375, column: 20, scope: !861, inlinedAt: !885)
!905 = !DILocation(line: 380, column: 3, scope: !861, inlinedAt: !885)
!906 = !DILocation(line: 380, column: 10, scope: !861, inlinedAt: !885)
!907 = !DILocation(line: 387, column: 15, scope: !881, inlinedAt: !885)
!908 = !DILocation(line: 389, column: 16, scope: !881, inlinedAt: !885)
!909 = !DILocation(line: 390, column: 11, scope: !881, inlinedAt: !885)
!910 = !DILocation(line: 391, column: 11, scope: !881, inlinedAt: !885)
!911 = !DILocation(line: 392, column: 11, scope: !881, inlinedAt: !885)
!912 = !DILocation(line: 395, column: 15, scope: !881, inlinedAt: !885)
!913 = !DILocation(line: 397, column: 16, scope: !881, inlinedAt: !885)
!914 = !DILocation(line: 398, column: 11, scope: !881, inlinedAt: !885)
!915 = !DILocation(line: 399, column: 11, scope: !881, inlinedAt: !885)
!916 = !DILocation(line: 400, column: 11, scope: !881, inlinedAt: !885)
!917 = !DILocation(line: 404, column: 18, scope: !918, inlinedAt: !885)
!918 = distinct !DILexicalBlock(scope: !881, file: !3, line: 404, column: 15)
!919 = !DILocation(line: 406, column: 18, scope: !881, inlinedAt: !885)
!920 = !DILocation(line: 407, column: 18, scope: !881, inlinedAt: !885)
!921 = !DILocation(line: 407, column: 15, scope: !881, inlinedAt: !885)
!922 = !DILocation(line: 408, column: 11, scope: !881, inlinedAt: !885)
!923 = !DILocation(line: 411, column: 19, scope: !924, inlinedAt: !885)
!924 = distinct !DILexicalBlock(scope: !881, file: !3, line: 411, column: 15)
!925 = !{i8 0, i8 2}
!926 = !DILocation(line: 411, column: 15, scope: !881, inlinedAt: !885)
!927 = !DILocation(line: 0, scope: !881, inlinedAt: !885)
!928 = !DILocation(line: 418, column: 18, scope: !929, inlinedAt: !885)
!929 = distinct !DILexicalBlock(scope: !881, file: !3, line: 418, column: 15)
!930 = !DILocation(line: 418, column: 36, scope: !929, inlinedAt: !885)
!931 = !DILocation(line: 0, scope: !878, inlinedAt: !885)
!932 = !DILocation(line: 423, column: 11, scope: !881, inlinedAt: !885)
!933 = !DILocation(line: 430, column: 19, scope: !934, inlinedAt: !885)
!934 = distinct !DILexicalBlock(scope: !881, file: !3, line: 424, column: 13)
!935 = !DILocation(line: 432, column: 19, scope: !936, inlinedAt: !885)
!936 = distinct !DILexicalBlock(scope: !937, file: !3, line: 431, column: 17)
!937 = distinct !DILexicalBlock(scope: !934, file: !3, line: 430, column: 19)
!938 = !DILocation(line: 433, column: 26, scope: !936, inlinedAt: !885)
!939 = !DILocation(line: 434, column: 19, scope: !936, inlinedAt: !885)
!940 = distinct !{!940, !905, !941, !613}
!941 = !DILocation(line: 493, column: 5, scope: !861, inlinedAt: !885)
!942 = !DILocation(line: 440, column: 19, scope: !934, inlinedAt: !885)
!943 = !DILocation(line: 441, column: 17, scope: !944, inlinedAt: !885)
!944 = distinct !DILexicalBlock(scope: !934, file: !3, line: 440, column: 19)
!945 = !DILocation(line: 446, column: 36, scope: !934, inlinedAt: !885)
!946 = !DILocation(line: 447, column: 36, scope: !934, inlinedAt: !885)
!947 = !DILocation(line: 448, column: 36, scope: !934, inlinedAt: !885)
!948 = !DILocation(line: 449, column: 36, scope: !934, inlinedAt: !885)
!949 = !DILocation(line: 452, column: 15, scope: !934, inlinedAt: !885)
!950 = !DILocation(line: 423, column: 19, scope: !881, inlinedAt: !885)
!951 = !DILocation(line: 456, column: 15, scope: !934, inlinedAt: !885)
!952 = !DILocation(line: 463, column: 15, scope: !881, inlinedAt: !885)
!953 = !DILocalVariable(name: "str", arg: 1, scope: !954, file: !3, line: 233, type: !58)
!954 = distinct !DISubprogram(name: "extract_varname", scope: !3, file: !3, line: 233, type: !758, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !955)
!955 = !{!953, !956, !957}
!956 = !DILocalVariable(name: "p", scope: !954, file: !3, line: 235, type: !58)
!957 = !DILocalVariable(name: "i", scope: !954, file: !3, line: 241, type: !208)
!958 = !DILocation(line: 0, scope: !954, inlinedAt: !959)
!959 = distinct !DILocation(line: 468, column: 23, scope: !880, inlinedAt: !885)
!960 = !DILocalVariable(name: "str", arg: 1, scope: !961, file: !3, line: 213, type: !58)
!961 = distinct !DISubprogram(name: "scan_varname", scope: !3, file: !3, line: 213, type: !962, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !964)
!962 = !DISubroutineType(types: !963)
!963 = !{!58, !58}
!964 = !{!960, !965}
!965 = !DILocalVariable(name: "end", scope: !966, file: !3, line: 217, type: !58)
!966 = distinct !DILexicalBlock(scope: !967, file: !3, line: 216, column: 5)
!967 = distinct !DILexicalBlock(scope: !961, file: !3, line: 215, column: 7)
!968 = !DILocation(line: 0, scope: !961, inlinedAt: !969)
!969 = distinct !DILocation(line: 235, column: 19, scope: !954, inlinedAt: !959)
!970 = !DILocation(line: 215, column: 7, scope: !967, inlinedAt: !969)
!971 = !DILocation(line: 215, column: 14, scope: !967, inlinedAt: !969)
!972 = !DILocation(line: 215, column: 21, scope: !967, inlinedAt: !969)
!973 = !DILocation(line: 215, column: 36, scope: !967, inlinedAt: !969)
!974 = !DILocalVariable(name: "c", arg: 1, scope: !975, file: !976, line: 183, type: !53)
!975 = distinct !DISubprogram(name: "c_isalpha", scope: !976, file: !976, line: 183, type: !977, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !979)
!976 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!977 = !DISubroutineType(types: !978)
!978 = !{!80, !53}
!979 = !{!974}
!980 = !DILocation(line: 0, scope: !975, inlinedAt: !981)
!981 = distinct !DILocation(line: 215, column: 25, scope: !967, inlinedAt: !969)
!982 = !DILocation(line: 185, column: 3, scope: !975, inlinedAt: !981)
!983 = !DILocation(line: 217, column: 29, scope: !966, inlinedAt: !969)
!984 = !DILocation(line: 0, scope: !966, inlinedAt: !969)
!985 = !DILocation(line: 218, column: 7, scope: !966, inlinedAt: !969)
!986 = !DILocation(line: 218, column: 25, scope: !966, inlinedAt: !969)
!987 = !DILocation(line: 218, column: 14, scope: !966, inlinedAt: !969)
!988 = !DILocation(line: 218, column: 31, scope: !966, inlinedAt: !969)
!989 = !DILocation(line: 218, column: 34, scope: !966, inlinedAt: !969)
!990 = !DILocation(line: 219, column: 9, scope: !966, inlinedAt: !969)
!991 = distinct !{!991, !985, !992, !613}
!992 = !DILocation(line: 219, column: 11, scope: !966, inlinedAt: !969)
!993 = !DILocation(line: 241, column: 15, scope: !954, inlinedAt: !959)
!994 = !DILocation(line: 241, column: 21, scope: !954, inlinedAt: !959)
!995 = !DILocation(line: 243, column: 12, scope: !996, inlinedAt: !959)
!996 = distinct !DILexicalBlock(scope: !954, file: !3, line: 243, column: 7)
!997 = !DILocation(line: 243, column: 9, scope: !996, inlinedAt: !959)
!998 = !DILocation(line: 243, column: 7, scope: !954, inlinedAt: !959)
!999 = !DILocation(line: 245, column: 7, scope: !1000, inlinedAt: !959)
!1000 = distinct !DILexicalBlock(scope: !996, file: !3, line: 244, column: 5)
!1001 = !DILocation(line: 246, column: 48, scope: !1000, inlinedAt: !959)
!1002 = !DILocation(line: 246, column: 46, scope: !1000, inlinedAt: !959)
!1003 = !DILocation(line: 246, column: 17, scope: !1000, inlinedAt: !959)
!1004 = !DILocation(line: 246, column: 15, scope: !1000, inlinedAt: !959)
!1005 = !DILocation(line: 247, column: 5, scope: !1000, inlinedAt: !959)
!1006 = !DILocation(line: 470, column: 15, scope: !1007, inlinedAt: !885)
!1007 = distinct !DILexicalBlock(scope: !880, file: !3, line: 469, column: 17)
!1008 = !DILocation(line: 249, column: 11, scope: !954, inlinedAt: !959)
!1009 = !DILocalVariable(name: "__dest", arg: 1, scope: !1010, file: !1011, line: 26, type: !1014)
!1010 = distinct !DISubprogram(name: "memcpy", scope: !1011, file: !1011, line: 26, type: !1012, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1015)
!1011 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!52, !1014, !763, !55}
!1014 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!1015 = !{!1009, !1016, !1017}
!1016 = !DILocalVariable(name: "__src", arg: 2, scope: !1010, file: !1011, line: 26, type: !763)
!1017 = !DILocalVariable(name: "__len", arg: 3, scope: !1010, file: !1011, line: 26, type: !55)
!1018 = !DILocation(line: 0, scope: !1010, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 249, column: 3, scope: !954, inlinedAt: !959)
!1020 = !DILocation(line: 29, column: 10, scope: !1010, inlinedAt: !1019)
!1021 = !DILocation(line: 250, column: 3, scope: !954, inlinedAt: !959)
!1022 = !DILocation(line: 250, column: 14, scope: !954, inlinedAt: !959)
!1023 = !DILocation(line: 0, scope: !880, inlinedAt: !885)
!1024 = !DILocation(line: 474, column: 23, scope: !880, inlinedAt: !885)
!1025 = !DILocation(line: 475, column: 17, scope: !1026, inlinedAt: !885)
!1026 = distinct !DILexicalBlock(scope: !880, file: !3, line: 475, column: 17)
!1027 = !DILocation(line: 475, column: 17, scope: !880, inlinedAt: !885)
!1028 = !DILocation(line: 477, column: 17, scope: !1029, inlinedAt: !885)
!1029 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 476, column: 15)
!1030 = !DILocation(line: 478, column: 17, scope: !1031, inlinedAt: !885)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 478, column: 17)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 478, column: 17)
!1033 = !DILocation(line: 478, column: 17, scope: !1032, inlinedAt: !885)
!1034 = !DILocation(line: 479, column: 24, scope: !1035, inlinedAt: !885)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 479, column: 17)
!1036 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 479, column: 17)
!1037 = !DILocation(line: 479, column: 17, scope: !1036, inlinedAt: !885)
!1038 = !DILocation(line: 303, column: 48, scope: !1039, inlinedAt: !1047)
!1039 = distinct !DISubprogram(name: "splitbuf_append_byte", scope: !3, file: !3, line: 301, type: !1040, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1043)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !1042, !51}
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!1043 = !{!1044, !1045, !1046}
!1044 = !DILocalVariable(name: "ss", arg: 1, scope: !1039, file: !3, line: 301, type: !1042)
!1045 = !DILocalVariable(name: "c", arg: 2, scope: !1039, file: !3, line: 301, type: !51)
!1046 = !DILocalVariable(name: "string_bytes", scope: !1039, file: !3, line: 303, type: !208)
!1047 = distinct !DILocation(line: 480, column: 19, scope: !1035, inlinedAt: !885)
!1048 = !DILocation(line: 0, scope: !1039, inlinedAt: !1047)
!1049 = !DILocation(line: 303, column: 39, scope: !1039, inlinedAt: !1047)
!1050 = !DILocation(line: 303, column: 35, scope: !1039, inlinedAt: !1047)
!1051 = !DILocation(line: 303, column: 24, scope: !1039, inlinedAt: !1047)
!1052 = !DILocation(line: 304, column: 11, scope: !1053, inlinedAt: !1047)
!1053 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 304, column: 7)
!1054 = !DILocation(line: 304, column: 22, scope: !1053, inlinedAt: !1047)
!1055 = !DILocation(line: 304, column: 41, scope: !1053, inlinedAt: !1047)
!1056 = !DILocation(line: 304, column: 7, scope: !1039, inlinedAt: !1047)
!1057 = !DILocalVariable(name: "ss", arg: 1, scope: !1058, file: !3, line: 290, type: !1042)
!1058 = distinct !DISubprogram(name: "splitbuf_grow", scope: !3, file: !3, line: 290, type: !1059, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1061)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{null, !1042}
!1061 = !{!1057, !1062, !1063}
!1062 = !DILocalVariable(name: "old_half_alloc", scope: !1058, file: !3, line: 292, type: !208)
!1063 = !DILocalVariable(name: "string_bytes", scope: !1058, file: !3, line: 293, type: !208)
!1064 = !DILocation(line: 0, scope: !1058, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 305, column: 5, scope: !1053, inlinedAt: !1047)
!1066 = !DILocation(line: 294, column: 23, scope: !1058, inlinedAt: !1065)
!1067 = !DILocation(line: 294, column: 14, scope: !1058, inlinedAt: !1065)
!1068 = !DILocation(line: 294, column: 12, scope: !1058, inlinedAt: !1065)
!1069 = !DILocation(line: 296, column: 27, scope: !1058, inlinedAt: !1065)
!1070 = !DILocation(line: 296, column: 21, scope: !1058, inlinedAt: !1065)
!1071 = !DILocation(line: 296, column: 12, scope: !1058, inlinedAt: !1065)
!1072 = !DILocation(line: 296, column: 48, scope: !1058, inlinedAt: !1065)
!1073 = !DILocation(line: 296, column: 39, scope: !1058, inlinedAt: !1065)
!1074 = !DILocalVariable(name: "__dest", arg: 1, scope: !1075, file: !1011, line: 34, type: !52)
!1075 = distinct !DISubprogram(name: "memmove", scope: !1011, file: !1011, line: 34, type: !1076, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1078)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!52, !52, !764, !55}
!1078 = !{!1074, !1079, !1080}
!1079 = !DILocalVariable(name: "__src", arg: 2, scope: !1075, file: !1011, line: 34, type: !764)
!1080 = !DILocalVariable(name: "__len", arg: 3, scope: !1075, file: !1011, line: 34, type: !55)
!1081 = !DILocation(line: 0, scope: !1075, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 296, column: 3, scope: !1058, inlinedAt: !1065)
!1083 = !DILocation(line: 36, column: 10, scope: !1075, inlinedAt: !1082)
!1084 = !DILocation(line: 306, column: 18, scope: !1039, inlinedAt: !1047)
!1085 = !DILocation(line: 306, column: 29, scope: !1039, inlinedAt: !1047)
!1086 = !DILocation(line: 305, column: 5, scope: !1053, inlinedAt: !1047)
!1087 = !DILocation(line: 306, column: 23, scope: !1039, inlinedAt: !1047)
!1088 = !DILocation(line: 306, column: 3, scope: !1039, inlinedAt: !1047)
!1089 = !DILocation(line: 306, column: 56, scope: !1039, inlinedAt: !1047)
!1090 = !DILocation(line: 307, column: 58, scope: !1039, inlinedAt: !1047)
!1091 = !DILocation(line: 307, column: 24, scope: !1039, inlinedAt: !1047)
!1092 = !DILocation(line: 307, column: 7, scope: !1039, inlinedAt: !1047)
!1093 = !DILocation(line: 307, column: 16, scope: !1039, inlinedAt: !1047)
!1094 = !DILocation(line: 307, column: 3, scope: !1039, inlinedAt: !1047)
!1095 = !DILocation(line: 307, column: 22, scope: !1039, inlinedAt: !1047)
!1096 = !DILocation(line: 479, column: 29, scope: !1035, inlinedAt: !885)
!1097 = distinct !{!1097, !1037, !1098, !613}
!1098 = !DILocation(line: 480, column: 48, scope: !1036, inlinedAt: !885)
!1099 = !DILocation(line: 483, column: 15, scope: !1100, inlinedAt: !885)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 483, column: 15)
!1101 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 483, column: 15)
!1102 = !DILocation(line: 483, column: 15, scope: !1101, inlinedAt: !885)
!1103 = !DILocation(line: 485, column: 19, scope: !880, inlinedAt: !885)
!1104 = !DILocation(line: 485, column: 37, scope: !880, inlinedAt: !885)
!1105 = !DILocation(line: 490, column: 7, scope: !878, inlinedAt: !885)
!1106 = !DILocation(line: 0, scope: !1039, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 491, column: 7, scope: !878, inlinedAt: !885)
!1108 = !DILocation(line: 303, column: 39, scope: !1039, inlinedAt: !1107)
!1109 = !DILocation(line: 303, column: 48, scope: !1039, inlinedAt: !1107)
!1110 = !DILocation(line: 303, column: 35, scope: !1039, inlinedAt: !1107)
!1111 = !DILocation(line: 303, column: 24, scope: !1039, inlinedAt: !1107)
!1112 = !DILocation(line: 304, column: 11, scope: !1053, inlinedAt: !1107)
!1113 = !DILocation(line: 304, column: 22, scope: !1053, inlinedAt: !1107)
!1114 = !DILocation(line: 304, column: 41, scope: !1053, inlinedAt: !1107)
!1115 = !DILocation(line: 304, column: 7, scope: !1039, inlinedAt: !1107)
!1116 = !DILocation(line: 0, scope: !1058, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 305, column: 5, scope: !1053, inlinedAt: !1107)
!1118 = !DILocation(line: 294, column: 23, scope: !1058, inlinedAt: !1117)
!1119 = !DILocation(line: 294, column: 14, scope: !1058, inlinedAt: !1117)
!1120 = !DILocation(line: 294, column: 12, scope: !1058, inlinedAt: !1117)
!1121 = !DILocation(line: 296, column: 27, scope: !1058, inlinedAt: !1117)
!1122 = !DILocation(line: 296, column: 21, scope: !1058, inlinedAt: !1117)
!1123 = !DILocation(line: 296, column: 12, scope: !1058, inlinedAt: !1117)
!1124 = !DILocation(line: 296, column: 48, scope: !1058, inlinedAt: !1117)
!1125 = !DILocation(line: 296, column: 39, scope: !1058, inlinedAt: !1117)
!1126 = !DILocation(line: 0, scope: !1075, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 296, column: 3, scope: !1058, inlinedAt: !1117)
!1128 = !DILocation(line: 36, column: 10, scope: !1075, inlinedAt: !1127)
!1129 = !DILocation(line: 306, column: 18, scope: !1039, inlinedAt: !1107)
!1130 = !DILocation(line: 306, column: 29, scope: !1039, inlinedAt: !1107)
!1131 = !DILocation(line: 305, column: 5, scope: !1053, inlinedAt: !1107)
!1132 = !DILocation(line: 306, column: 23, scope: !1039, inlinedAt: !1107)
!1133 = !DILocation(line: 306, column: 3, scope: !1039, inlinedAt: !1107)
!1134 = !DILocation(line: 306, column: 56, scope: !1039, inlinedAt: !1107)
!1135 = !DILocation(line: 307, column: 58, scope: !1039, inlinedAt: !1107)
!1136 = !DILocation(line: 307, column: 24, scope: !1039, inlinedAt: !1107)
!1137 = !DILocation(line: 307, column: 7, scope: !1039, inlinedAt: !1107)
!1138 = !DILocation(line: 307, column: 16, scope: !1039, inlinedAt: !1107)
!1139 = !DILocation(line: 307, column: 3, scope: !1039, inlinedAt: !1107)
!1140 = !DILocation(line: 307, column: 22, scope: !1039, inlinedAt: !1107)
!1141 = !DILocation(line: 492, column: 7, scope: !878, inlinedAt: !885)
!1142 = !DILocation(line: 495, column: 10, scope: !1143, inlinedAt: !885)
!1143 = distinct !DILexicalBlock(scope: !861, file: !3, line: 495, column: 7)
!1144 = !DILocation(line: 496, column: 5, scope: !1143, inlinedAt: !885)
!1145 = !DILocation(line: 498, column: 2, scope: !861, inlinedAt: !885)
!1146 = !DILocation(line: 0, scope: !1039, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 499, column: 3, scope: !861, inlinedAt: !885)
!1148 = !DILocation(line: 303, column: 39, scope: !1039, inlinedAt: !1147)
!1149 = !DILocation(line: 303, column: 48, scope: !1039, inlinedAt: !1147)
!1150 = !DILocation(line: 303, column: 35, scope: !1039, inlinedAt: !1147)
!1151 = !DILocation(line: 303, column: 24, scope: !1039, inlinedAt: !1147)
!1152 = !DILocation(line: 304, column: 11, scope: !1053, inlinedAt: !1147)
!1153 = !DILocation(line: 304, column: 22, scope: !1053, inlinedAt: !1147)
!1154 = !DILocation(line: 304, column: 41, scope: !1053, inlinedAt: !1147)
!1155 = !DILocation(line: 304, column: 7, scope: !1039, inlinedAt: !1147)
!1156 = !DILocation(line: 0, scope: !1058, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 305, column: 5, scope: !1053, inlinedAt: !1147)
!1158 = !DILocation(line: 294, column: 23, scope: !1058, inlinedAt: !1157)
!1159 = !DILocation(line: 294, column: 14, scope: !1058, inlinedAt: !1157)
!1160 = !DILocation(line: 294, column: 12, scope: !1058, inlinedAt: !1157)
!1161 = !DILocation(line: 296, column: 27, scope: !1058, inlinedAt: !1157)
!1162 = !DILocation(line: 296, column: 21, scope: !1058, inlinedAt: !1157)
!1163 = !DILocation(line: 296, column: 12, scope: !1058, inlinedAt: !1157)
!1164 = !DILocation(line: 296, column: 48, scope: !1058, inlinedAt: !1157)
!1165 = !DILocation(line: 296, column: 39, scope: !1058, inlinedAt: !1157)
!1166 = !DILocation(line: 0, scope: !1075, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 296, column: 3, scope: !1058, inlinedAt: !1157)
!1168 = !DILocation(line: 36, column: 10, scope: !1075, inlinedAt: !1167)
!1169 = !DILocation(line: 306, column: 18, scope: !1039, inlinedAt: !1147)
!1170 = !DILocation(line: 306, column: 29, scope: !1039, inlinedAt: !1147)
!1171 = !DILocation(line: 305, column: 5, scope: !1053, inlinedAt: !1147)
!1172 = !DILocation(line: 306, column: 23, scope: !1039, inlinedAt: !1147)
!1173 = !DILocation(line: 306, column: 3, scope: !1039, inlinedAt: !1147)
!1174 = !DILocation(line: 306, column: 56, scope: !1039, inlinedAt: !1147)
!1175 = !DILocation(line: 307, column: 58, scope: !1039, inlinedAt: !1147)
!1176 = !DILocation(line: 307, column: 24, scope: !1039, inlinedAt: !1147)
!1177 = !DILocation(line: 307, column: 7, scope: !1039, inlinedAt: !1147)
!1178 = !DILocation(line: 307, column: 16, scope: !1039, inlinedAt: !1147)
!1179 = !DILocation(line: 307, column: 3, scope: !1039, inlinedAt: !1147)
!1180 = !DILocation(line: 307, column: 22, scope: !1039, inlinedAt: !1147)
!1181 = !DILocalVariable(name: "ss", arg: 1, scope: !1182, file: !3, line: 330, type: !1042)
!1182 = distinct !DISubprogram(name: "splitbuf_finishup", scope: !3, file: !3, line: 330, type: !1183, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1185)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!75, !1042}
!1185 = !{!1181, !1186, !1187, !1188, !1189}
!1186 = !DILocalVariable(name: "argc", scope: !1182, file: !3, line: 332, type: !53)
!1187 = !DILocalVariable(name: "argv", scope: !1182, file: !3, line: 333, type: !75)
!1188 = !DILocalVariable(name: "stringbase", scope: !1182, file: !3, line: 334, type: !50)
!1189 = !DILocalVariable(name: "i", scope: !1190, file: !3, line: 335, type: !53)
!1190 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 335, column: 3)
!1191 = !DILocation(line: 0, scope: !1182, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 501, column: 10, scope: !861, inlinedAt: !885)
!1193 = !DILocation(line: 333, column: 21, scope: !1182, inlinedAt: !1192)
!1194 = !DILocation(line: 334, column: 47, scope: !1182, inlinedAt: !1192)
!1195 = !DILocation(line: 334, column: 41, scope: !1182, inlinedAt: !1192)
!1196 = !DILocation(line: 334, column: 22, scope: !1182, inlinedAt: !1192)
!1197 = !DILocation(line: 0, scope: !1190, inlinedAt: !1192)
!1198 = !DILocation(line: 335, column: 21, scope: !1199, inlinedAt: !1192)
!1199 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 335, column: 3)
!1200 = !DILocation(line: 335, column: 3, scope: !1190, inlinedAt: !1192)
!1201 = !DILocation(line: 502, column: 1, scope: !861, inlinedAt: !885)
!1202 = !DILocation(line: 533, column: 14, scope: !841, inlinedAt: !857)
!1203 = !DILocation(line: 533, column: 12, scope: !841, inlinedAt: !857)
!1204 = !DILocation(line: 536, column: 17, scope: !855, inlinedAt: !857)
!1205 = !DILocation(line: 336, column: 39, scope: !1199, inlinedAt: !1192)
!1206 = !DILocation(line: 336, column: 28, scope: !1199, inlinedAt: !1192)
!1207 = !DILocation(line: 336, column: 13, scope: !1199, inlinedAt: !1192)
!1208 = distinct !{!1208, !1200, !1209, !613, !1210}
!1209 = !DILocation(line: 336, column: 45, scope: !1190, inlinedAt: !1192)
!1210 = !{!"llvm.loop.isvectorized", i32 1}
!1211 = !DILocation(line: 336, column: 26, scope: !1199, inlinedAt: !1192)
!1212 = !DILocation(line: 335, column: 30, scope: !1199, inlinedAt: !1192)
!1213 = distinct !{!1213, !1200, !1209, !613, !1214, !1210}
!1214 = !{!"llvm.loop.unroll.runtime.disable"}
!1215 = !DILocation(line: 536, column: 7, scope: !855, inlinedAt: !857)
!1216 = !DILocation(line: 538, column: 7, scope: !1217, inlinedAt: !857)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 538, column: 7)
!1218 = distinct !DILexicalBlock(scope: !854, file: !3, line: 538, column: 7)
!1219 = !DILocation(line: 539, column: 7, scope: !1220, inlinedAt: !857)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 539, column: 7)
!1221 = distinct !DILexicalBlock(scope: !854, file: !3, line: 539, column: 7)
!1222 = !DILocation(line: 539, column: 7, scope: !1221, inlinedAt: !857)
!1223 = !DILocation(line: 0, scope: !853, inlinedAt: !857)
!1224 = !DILocation(line: 540, column: 25, scope: !1225, inlinedAt: !857)
!1225 = distinct !DILexicalBlock(scope: !853, file: !3, line: 540, column: 7)
!1226 = !DILocation(line: 540, column: 7, scope: !853, inlinedAt: !857)
!1227 = !DILocation(line: 541, column: 9, scope: !1228, inlinedAt: !857)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 541, column: 9)
!1229 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 541, column: 9)
!1230 = !DILocation(line: 541, column: 9, scope: !1229, inlinedAt: !857)
!1231 = !DILocation(line: 540, column: 37, scope: !1225, inlinedAt: !857)
!1232 = distinct !{!1232, !1226, !1233, !613}
!1233 = !DILocation(line: 541, column: 9, scope: !853, inlinedAt: !857)
!1234 = !DILocation(line: 546, column: 19, scope: !841, inlinedAt: !857)
!1235 = !DILocation(line: 546, column: 11, scope: !841, inlinedAt: !857)
!1236 = !DILocation(line: 546, column: 43, scope: !841, inlinedAt: !857)
!1237 = !DILocation(line: 546, column: 41, scope: !841, inlinedAt: !857)
!1238 = !DILocation(line: 546, column: 30, scope: !841, inlinedAt: !857)
!1239 = !DILocation(line: 547, column: 23, scope: !841, inlinedAt: !857)
!1240 = !DILocation(line: 547, column: 11, scope: !841, inlinedAt: !857)
!1241 = !DILocation(line: 547, column: 28, scope: !841, inlinedAt: !857)
!1242 = !DILocation(line: 0, scope: !1010, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 546, column: 3, scope: !841, inlinedAt: !857)
!1244 = !DILocation(line: 29, column: 10, scope: !1010, inlinedAt: !1243)
!1245 = !DILocation(line: 550, column: 24, scope: !841, inlinedAt: !857)
!1246 = !DILocation(line: 552, column: 16, scope: !841, inlinedAt: !857)
!1247 = !DILocation(line: 820, column: 11, scope: !797)
!1248 = !DILocation(line: 826, column: 11, scope: !797)
!1249 = !DILocation(line: 827, column: 11, scope: !797)
!1250 = !DILocation(line: 828, column: 11, scope: !797)
!1251 = !DILocation(line: 830, column: 9, scope: !797)
!1252 = !DILocation(line: 831, column: 9, scope: !797)
!1253 = !DILocation(line: 833, column: 11, scope: !797)
!1254 = !DILocation(line: 837, column: 7, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !72, file: !3, line: 837, column: 7)
!1256 = !DILocation(line: 837, column: 14, scope: !1255)
!1257 = !DILocation(line: 837, column: 21, scope: !1255)
!1258 = !DILocation(line: 837, column: 31, scope: !1255)
!1259 = !DILocation(line: 0, scope: !596, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 837, column: 24, scope: !1255)
!1261 = !DILocation(line: 1361, column: 11, scope: !596, inlinedAt: !1260)
!1262 = !DILocation(line: 1361, column: 10, scope: !596, inlinedAt: !1260)
!1263 = !DILocation(line: 837, column: 7, scope: !72)
!1264 = !DILocation(line: 840, column: 7, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 838, column: 5)
!1266 = !DILocation(line: 843, column: 7, scope: !72)
!1267 = !DILocation(line: 845, column: 7, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 845, column: 7)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 845, column: 7)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 844, column: 5)
!1271 = distinct !DILexicalBlock(scope: !72, file: !3, line: 843, column: 7)
!1272 = !DILocation(line: 845, column: 7, scope: !1269)
!1273 = !DILocation(line: 847, column: 15, scope: !1270)
!1274 = !DILocation(line: 848, column: 5, scope: !1270)
!1275 = !DILocalVariable(name: "i", scope: !1276, file: !3, line: 196, type: !208)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 196, column: 3)
!1277 = distinct !DISubprogram(name: "unset_envvars", scope: !3, file: !3, line: 194, type: !291, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1278)
!1278 = !{!1275}
!1279 = !DILocation(line: 0, scope: !1276, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 850, column: 5, scope: !1271)
!1281 = !DILocation(line: 196, column: 25, scope: !1282, inlinedAt: !1280)
!1282 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 196, column: 3)
!1283 = !DILocation(line: 196, column: 23, scope: !1282, inlinedAt: !1280)
!1284 = !DILocation(line: 196, column: 3, scope: !1276, inlinedAt: !1280)
!1285 = !DILocation(line: 198, column: 7, scope: !1286, inlinedAt: !1280)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 198, column: 7)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 198, column: 7)
!1288 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 197, column: 5)
!1289 = !DILocation(line: 198, column: 7, scope: !1287, inlinedAt: !1280)
!1290 = !DILocation(line: 200, column: 21, scope: !1291, inlinedAt: !1280)
!1291 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 200, column: 11)
!1292 = !DILocation(line: 200, column: 11, scope: !1291, inlinedAt: !1280)
!1293 = !DILocation(line: 200, column: 11, scope: !1288, inlinedAt: !1280)
!1294 = !DILocation(line: 201, column: 9, scope: !1291, inlinedAt: !1280)
!1295 = !DILocation(line: 196, column: 38, scope: !1282, inlinedAt: !1280)
!1296 = distinct !{!1296, !1284, !1297, !613}
!1297 = !DILocation(line: 203, column: 5, scope: !1276, inlinedAt: !1280)
!1298 = !DILocation(line: 853, column: 10, scope: !72)
!1299 = !DILocation(line: 853, column: 17, scope: !72)
!1300 = !DILocation(line: 853, column: 24, scope: !72)
!1301 = !DILocation(line: 853, column: 41, scope: !72)
!1302 = !DILocation(line: 853, column: 33, scope: !72)
!1303 = !DILocation(line: 853, column: 3, scope: !72)
!1304 = !DILocation(line: 855, column: 7, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 855, column: 7)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 855, column: 7)
!1307 = distinct !DILexicalBlock(scope: !72, file: !3, line: 854, column: 5)
!1308 = !DILocation(line: 855, column: 7, scope: !1306)
!1309 = !DILocation(line: 857, column: 24, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 857, column: 11)
!1311 = !DILocation(line: 857, column: 19, scope: !1310)
!1312 = !DILocation(line: 857, column: 11, scope: !1310)
!1313 = !DILocation(line: 857, column: 11, scope: !1307)
!1314 = !DILocation(line: 859, column: 15, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 858, column: 9)
!1316 = !DILocation(line: 860, column: 11, scope: !1315)
!1317 = !DILocation(line: 863, column: 13, scope: !1307)
!1318 = distinct !{!1318, !1303, !1319, !613}
!1319 = !DILocation(line: 864, column: 5, scope: !72)
!1320 = !DILocation(line: 868, column: 32, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !72, file: !3, line: 868, column: 7)
!1322 = !DILocation(line: 870, column: 7, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 869, column: 5)
!1324 = !DILocation(line: 871, column: 7, scope: !1323)
!1325 = !DILocation(line: 874, column: 7, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !72, file: !3, line: 874, column: 7)
!1327 = !DILocation(line: 874, column: 14, scope: !1326)
!1328 = !DILocation(line: 876, column: 7, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 875, column: 5)
!1330 = !DILocation(line: 877, column: 7, scope: !1329)
!1331 = !DILocation(line: 880, column: 7, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !72, file: !3, line: 880, column: 7)
!1333 = !DILocation(line: 880, column: 13, scope: !1332)
!1334 = !DILocation(line: 882, column: 7, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 881, column: 5)
!1336 = !DILocation(line: 883, column: 7, scope: !1335)
!1337 = !DILocation(line: 889, column: 24, scope: !88)
!1338 = !DILocation(line: 0, scope: !88)
!1339 = !DILocation(line: 890, column: 14, scope: !88)
!1340 = !DILocation(line: 890, column: 7, scope: !88)
!1341 = !DILocation(line: 891, column: 9, scope: !88)
!1342 = distinct !{!1342, !1340, !1341, !613}
!1343 = !DILocalVariable(name: "i", scope: !1344, file: !3, line: 591, type: !53)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 591, column: 3)
!1345 = distinct !DISubprogram(name: "reset_signal_handlers", scope: !3, file: !3, line: 589, type: !291, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1346)
!1346 = !{!1343, !1347, !1440, !1441, !1442, !1443}
!1347 = !DILocalVariable(name: "act", scope: !1348, file: !3, line: 593, type: !1350)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 592, column: 5)
!1349 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 591, column: 3)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1351, line: 27, size: 1216, elements: !1352)
!1351 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/sigaction.h", directory: "", checksumkind: CSK_MD5, checksum: "95401d18e887df415f59d7a2cb411c28")
!1352 = !{!1353, !1437, !1438, !1439}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !1350, file: !1351, line: 38, baseType: !1354, size: 64)
!1354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1350, file: !1351, line: 31, size: 64, elements: !1355)
!1355 = !{!1356, !1357}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1354, file: !1351, line: 34, baseType: !64, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !1354, file: !1351, line: 36, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{null, !53, !1361, !52}
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !1363, line: 124, baseType: !1364)
!1363 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/siginfo_t.h", directory: "", checksumkind: CSK_MD5, checksum: "023cf7b0ef843da262cf07900eda0ac5")
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1363, line: 36, size: 1024, elements: !1365)
!1365 = !{!1366, !1367, !1368, !1369, !1370}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1364, file: !1363, line: 38, baseType: !53, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1364, file: !1363, line: 40, baseType: !53, size: 32, offset: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1364, file: !1363, line: 42, baseType: !53, size: 32, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1364, file: !1363, line: 48, baseType: !53, size: 32, offset: 96)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1364, file: !1363, line: 123, baseType: !1371, size: 896, offset: 128)
!1371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1364, file: !1363, line: 51, size: 896, elements: !1372)
!1372 = !{!1373, !1377, !1384, !1396, !1402, !1411, !1426, !1431}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !1371, file: !1363, line: 53, baseType: !1374, size: 896)
!1374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 896, elements: !1375)
!1375 = !{!1376}
!1376 = !DISubrange(count: 28)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1371, file: !1363, line: 60, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !1363, line: 56, size: 64, elements: !1379)
!1379 = !{!1380, !1382}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1378, file: !1363, line: 58, baseType: !1381, size: 32)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !158, line: 154, baseType: !53)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1378, file: !1363, line: 59, baseType: !1383, size: 32, offset: 32)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !158, line: 146, baseType: !7)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1371, file: !1363, line: 68, baseType: !1385, size: 128)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !1363, line: 63, size: 128, elements: !1386)
!1386 = !{!1387, !1388, !1389}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !1385, file: !1363, line: 65, baseType: !53, size: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !1385, file: !1363, line: 66, baseType: !53, size: 32, offset: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1385, file: !1363, line: 67, baseType: !1390, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigval_t", file: !1391, line: 30, baseType: !1392)
!1391 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__sigval_t.h", directory: "", checksumkind: CSK_MD5, checksum: "bc7605d16e396c16f725f8da13f6eb20")
!1392 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1391, line: 24, size: 64, elements: !1393)
!1393 = !{!1394, !1395}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1392, file: !1391, line: 26, baseType: !53, size: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1392, file: !1391, line: 27, baseType: !52, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1371, file: !1363, line: 76, baseType: !1397, size: 128)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !1363, line: 71, size: 128, elements: !1398)
!1398 = !{!1399, !1400, !1401}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1397, file: !1363, line: 73, baseType: !1381, size: 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1397, file: !1363, line: 74, baseType: !1383, size: 32, offset: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1397, file: !1363, line: 75, baseType: !1390, size: 64, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1371, file: !1363, line: 86, baseType: !1403, size: 256)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !1363, line: 79, size: 256, elements: !1404)
!1404 = !{!1405, !1406, !1407, !1408, !1410}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1403, file: !1363, line: 81, baseType: !1381, size: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1403, file: !1363, line: 82, baseType: !1383, size: 32, offset: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !1403, file: !1363, line: 83, baseType: !53, size: 32, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !1403, file: !1363, line: 84, baseType: !1409, size: 64, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !158, line: 156, baseType: !63)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !1403, file: !1363, line: 85, baseType: !1409, size: 64, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1371, file: !1363, line: 105, baseType: !1412, size: 256)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !1363, line: 89, size: 256, elements: !1413)
!1413 = !{!1414, !1415, !1417}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !1412, file: !1363, line: 91, baseType: !52, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !1412, file: !1363, line: 93, baseType: !1416, size: 16, offset: 64)
!1416 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_bounds", scope: !1412, file: !1363, line: 104, baseType: !1418, size: 128, offset: 128)
!1418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1412, file: !1363, line: 94, size: 128, elements: !1419)
!1419 = !{!1420, !1425}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1418, file: !1363, line: 101, baseType: !1421, size: 128)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1418, file: !1363, line: 97, size: 128, elements: !1422)
!1422 = !{!1423, !1424}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1421, file: !1363, line: 99, baseType: !52, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1421, file: !1363, line: 100, baseType: !52, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1418, file: !1363, line: 103, baseType: !315, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1371, file: !1363, line: 112, baseType: !1427, size: 128)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !1363, line: 108, size: 128, elements: !1428)
!1428 = !{!1429, !1430}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !1427, file: !1363, line: 110, baseType: !63, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !1427, file: !1363, line: 111, baseType: !53, size: 32, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1371, file: !1363, line: 121, baseType: !1432, size: 128)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !1363, line: 116, size: 128, elements: !1433)
!1433 = !{!1434, !1435, !1436}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1432, file: !1363, line: 118, baseType: !52, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1432, file: !1363, line: 119, baseType: !53, size: 32, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1432, file: !1363, line: 120, baseType: !7, size: 32, offset: 96)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1350, file: !1351, line: 46, baseType: !220, size: 1024, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1350, file: !1351, line: 49, baseType: !53, size: 32, offset: 1088)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1350, file: !1351, line: 52, baseType: !290, size: 64, offset: 1152)
!1440 = !DILocalVariable(name: "ignore_errors", scope: !1348, file: !3, line: 598, type: !80)
!1441 = !DILocalVariable(name: "set_to_default", scope: !1348, file: !3, line: 601, type: !80)
!1442 = !DILocalVariable(name: "sig_err", scope: !1348, file: !3, line: 604, type: !53)
!1443 = !DILocalVariable(name: "signame", scope: !1444, file: !3, line: 621, type: !1446)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 620, column: 9)
!1445 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 619, column: 11)
!1446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 152, elements: !235)
!1447 = !DILocation(line: 0, scope: !1344, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 895, column: 3, scope: !72)
!1449 = !DILocation(line: 591, column: 3, scope: !1344, inlinedAt: !1448)
!1450 = !DILocation(line: 593, column: 7, scope: !1348, inlinedAt: !1448)
!1451 = !DILocation(line: 593, column: 24, scope: !1348, inlinedAt: !1448)
!1452 = !DILocation(line: 595, column: 11, scope: !1453, inlinedAt: !1448)
!1453 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 595, column: 11)
!1454 = !DILocation(line: 595, column: 11, scope: !1348, inlinedAt: !1448)
!1455 = !DILocation(line: 599, column: 29, scope: !1348, inlinedAt: !1448)
!1456 = !DILocation(line: 0, scope: !1348, inlinedAt: !1448)
!1457 = !DILocation(line: 602, column: 30, scope: !1348, inlinedAt: !1448)
!1458 = !DILocation(line: 604, column: 21, scope: !1348, inlinedAt: !1448)
!1459 = !DILocation(line: 606, column: 11, scope: !1460, inlinedAt: !1448)
!1460 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 606, column: 11)
!1461 = !DILocation(line: 606, column: 19, scope: !1460, inlinedAt: !1448)
!1462 = !DILocation(line: 607, column: 9, scope: !1460, inlinedAt: !1448)
!1463 = !DILocation(line: 610, column: 11, scope: !1348, inlinedAt: !1448)
!1464 = !DILocation(line: 612, column: 28, scope: !1465, inlinedAt: !1448)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 611, column: 9)
!1466 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 610, column: 11)
!1467 = !DILocation(line: 612, column: 26, scope: !1465, inlinedAt: !1448)
!1468 = !DILocation(line: 613, column: 21, scope: !1465, inlinedAt: !1448)
!1469 = !DILocation(line: 614, column: 15, scope: !1470, inlinedAt: !1448)
!1470 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 614, column: 15)
!1471 = !DILocation(line: 614, column: 23, scope: !1470, inlinedAt: !1448)
!1472 = !DILocation(line: 615, column: 13, scope: !1470, inlinedAt: !1448)
!1473 = !DILocation(line: 619, column: 11, scope: !1445, inlinedAt: !1448)
!1474 = !DILocation(line: 619, column: 11, scope: !1348, inlinedAt: !1448)
!1475 = !DILocation(line: 621, column: 11, scope: !1444, inlinedAt: !1448)
!1476 = !DILocation(line: 621, column: 16, scope: !1444, inlinedAt: !1448)
!1477 = !DILocation(line: 622, column: 15, scope: !1478, inlinedAt: !1448)
!1478 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 622, column: 15)
!1479 = !DILocation(line: 622, column: 36, scope: !1478, inlinedAt: !1448)
!1480 = !DILocation(line: 622, column: 15, scope: !1444, inlinedAt: !1448)
!1481 = !DILocation(line: 623, column: 13, scope: !1478, inlinedAt: !1448)
!1482 = !DILocation(line: 624, column: 11, scope: !1483, inlinedAt: !1448)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 624, column: 11)
!1484 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 624, column: 11)
!1485 = !DILocation(line: 624, column: 11, scope: !1484, inlinedAt: !1448)
!1486 = !DILocation(line: 628, column: 9, scope: !1445, inlinedAt: !1448)
!1487 = !DILocation(line: 628, column: 9, scope: !1444, inlinedAt: !1448)
!1488 = !DILocation(line: 629, column: 5, scope: !1349, inlinedAt: !1448)
!1489 = !DILocation(line: 591, column: 39, scope: !1349, inlinedAt: !1448)
!1490 = !DILocation(line: 591, column: 21, scope: !1349, inlinedAt: !1448)
!1491 = distinct !{!1491, !1449, !1492, !613}
!1492 = !DILocation(line: 629, column: 5, scope: !1344, inlinedAt: !1448)
!1493 = !DILocation(line: 896, column: 7, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !72, file: !3, line: 896, column: 7)
!1495 = !DILocation(line: 896, column: 7, scope: !72)
!1496 = !DILocation(line: 686, column: 3, scope: !1497, inlinedAt: !1508)
!1497 = distinct !DISubprogram(name: "set_signal_proc_mask", scope: !3, file: !3, line: 683, type: !291, scopeLine: 684, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1498)
!1498 = !{!1499, !1500, !1502, !1505}
!1499 = !DILocalVariable(name: "set", scope: !1497, file: !3, line: 686, type: !218)
!1500 = !DILocalVariable(name: "i", scope: !1501, file: !3, line: 693, type: !53)
!1501 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 693, column: 3)
!1502 = !DILocalVariable(name: "debug_act", scope: !1503, file: !3, line: 695, type: !58)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 694, column: 5)
!1504 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 693, column: 3)
!1505 = !DILocalVariable(name: "signame", scope: !1506, file: !3, line: 710, type: !1446)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 709, column: 9)
!1507 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 708, column: 11)
!1508 = distinct !DILocation(line: 897, column: 5, scope: !1494)
!1509 = !DILocation(line: 686, column: 12, scope: !1497, inlinedAt: !1508)
!1510 = !DILocation(line: 688, column: 3, scope: !1497, inlinedAt: !1508)
!1511 = !DILocation(line: 690, column: 7, scope: !1512, inlinedAt: !1508)
!1512 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 690, column: 7)
!1513 = !DILocation(line: 690, column: 7, scope: !1497, inlinedAt: !1508)
!1514 = !DILocation(line: 0, scope: !1501, inlinedAt: !1508)
!1515 = !DILocation(line: 693, column: 3, scope: !1501, inlinedAt: !1508)
!1516 = !DILocation(line: 691, column: 5, scope: !1512, inlinedAt: !1508)
!1517 = !DILocation(line: 718, column: 7, scope: !1518, inlinedAt: !1508)
!1518 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 718, column: 7)
!1519 = !DILocation(line: 718, column: 7, scope: !1497, inlinedAt: !1508)
!1520 = !DILocation(line: 0, scope: !1503, inlinedAt: !1508)
!1521 = !DILocation(line: 697, column: 11, scope: !1522, inlinedAt: !1508)
!1522 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 697, column: 11)
!1523 = !DILocation(line: 697, column: 11, scope: !1503, inlinedAt: !1508)
!1524 = !DILocation(line: 699, column: 11, scope: !1525, inlinedAt: !1508)
!1525 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 698, column: 9)
!1526 = !DILocation(line: 701, column: 9, scope: !1525, inlinedAt: !1508)
!1527 = !DILocation(line: 702, column: 16, scope: !1528, inlinedAt: !1508)
!1528 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 702, column: 16)
!1529 = !DILocation(line: 702, column: 16, scope: !1522, inlinedAt: !1508)
!1530 = !DILocation(line: 704, column: 11, scope: !1531, inlinedAt: !1508)
!1531 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 703, column: 9)
!1532 = !DILocation(line: 706, column: 9, scope: !1531, inlinedAt: !1508)
!1533 = !DILocation(line: 708, column: 11, scope: !1507, inlinedAt: !1508)
!1534 = !DILocation(line: 708, column: 21, scope: !1507, inlinedAt: !1508)
!1535 = !DILocation(line: 710, column: 11, scope: !1506, inlinedAt: !1508)
!1536 = !DILocation(line: 710, column: 16, scope: !1506, inlinedAt: !1508)
!1537 = !DILocation(line: 711, column: 15, scope: !1538, inlinedAt: !1508)
!1538 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 711, column: 15)
!1539 = !DILocation(line: 711, column: 36, scope: !1538, inlinedAt: !1508)
!1540 = !DILocation(line: 711, column: 15, scope: !1506, inlinedAt: !1508)
!1541 = !DILocation(line: 712, column: 13, scope: !1538, inlinedAt: !1508)
!1542 = !DILocation(line: 713, column: 11, scope: !1543, inlinedAt: !1508)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 713, column: 11)
!1544 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 713, column: 11)
!1545 = !DILocation(line: 713, column: 11, scope: !1544, inlinedAt: !1508)
!1546 = !DILocation(line: 715, column: 9, scope: !1507, inlinedAt: !1508)
!1547 = !DILocation(line: 715, column: 9, scope: !1506, inlinedAt: !1508)
!1548 = !DILocation(line: 693, column: 39, scope: !1504, inlinedAt: !1508)
!1549 = !DILocation(line: 693, column: 21, scope: !1504, inlinedAt: !1508)
!1550 = distinct !{!1550, !1515, !1551, !613}
!1551 = !DILocation(line: 716, column: 5, scope: !1501, inlinedAt: !1508)
!1552 = !DILocation(line: 719, column: 5, scope: !1518, inlinedAt: !1508)
!1553 = !DILocation(line: 720, column: 1, scope: !1497, inlinedAt: !1508)
!1554 = !DILocation(line: 897, column: 5, scope: !1494)
!1555 = !DILocation(line: 899, column: 7, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !72, file: !3, line: 899, column: 7)
!1557 = !DILocation(line: 899, column: 7, scope: !72)
!1558 = !DILocation(line: 725, column: 3, scope: !1559, inlinedAt: !1571)
!1559 = distinct !DISubprogram(name: "list_signal_handling", scope: !3, file: !3, line: 723, type: !291, scopeLine: 724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1560)
!1560 = !{!1561, !1562, !1564, !1567, !1568, !1569, !1570}
!1561 = !DILocalVariable(name: "set", scope: !1559, file: !3, line: 725, type: !218)
!1562 = !DILocalVariable(name: "i", scope: !1563, file: !3, line: 731, type: !53)
!1563 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 731, column: 3)
!1564 = !DILocalVariable(name: "act", scope: !1565, file: !3, line: 733, type: !1350)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 732, column: 5)
!1566 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 731, column: 3)
!1567 = !DILocalVariable(name: "ignored", scope: !1565, file: !3, line: 737, type: !58)
!1568 = !DILocalVariable(name: "blocked", scope: !1565, file: !3, line: 738, type: !58)
!1569 = !DILocalVariable(name: "connect", scope: !1565, file: !3, line: 739, type: !58)
!1570 = !DILocalVariable(name: "signame", scope: !1565, file: !3, line: 744, type: !1446)
!1571 = distinct !DILocation(line: 900, column: 5, scope: !1556)
!1572 = !DILocation(line: 725, column: 12, scope: !1559, inlinedAt: !1571)
!1573 = !DILocation(line: 727, column: 3, scope: !1559, inlinedAt: !1571)
!1574 = !DILocation(line: 728, column: 7, scope: !1575, inlinedAt: !1571)
!1575 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 728, column: 7)
!1576 = !DILocation(line: 728, column: 7, scope: !1559, inlinedAt: !1571)
!1577 = !DILocation(line: 0, scope: !1563, inlinedAt: !1571)
!1578 = !DILocation(line: 731, column: 3, scope: !1563, inlinedAt: !1571)
!1579 = !DILocation(line: 729, column: 5, scope: !1575, inlinedAt: !1571)
!1580 = !DILocation(line: 733, column: 7, scope: !1565, inlinedAt: !1571)
!1581 = !DILocation(line: 733, column: 24, scope: !1565, inlinedAt: !1571)
!1582 = !DILocation(line: 734, column: 11, scope: !1583, inlinedAt: !1571)
!1583 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 734, column: 11)
!1584 = !DILocation(line: 734, column: 11, scope: !1565, inlinedAt: !1571)
!1585 = !DILocation(line: 737, column: 33, scope: !1565, inlinedAt: !1571)
!1586 = !DILocation(line: 737, column: 44, scope: !1565, inlinedAt: !1571)
!1587 = !DILocation(line: 737, column: 29, scope: !1565, inlinedAt: !1571)
!1588 = !DILocation(line: 0, scope: !1565, inlinedAt: !1571)
!1589 = !DILocation(line: 738, column: 29, scope: !1565, inlinedAt: !1571)
!1590 = !DILocation(line: 739, column: 29, scope: !1565, inlinedAt: !1571)
!1591 = !DILocation(line: 739, column: 38, scope: !1565, inlinedAt: !1571)
!1592 = !DILocation(line: 741, column: 22, scope: !1593, inlinedAt: !1571)
!1593 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 741, column: 11)
!1594 = !DILocation(line: 744, column: 7, scope: !1565, inlinedAt: !1571)
!1595 = !DILocation(line: 744, column: 12, scope: !1565, inlinedAt: !1571)
!1596 = !DILocation(line: 745, column: 11, scope: !1597, inlinedAt: !1571)
!1597 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 745, column: 11)
!1598 = !DILocation(line: 745, column: 32, scope: !1597, inlinedAt: !1571)
!1599 = !DILocation(line: 745, column: 11, scope: !1565, inlinedAt: !1571)
!1600 = !DILocation(line: 746, column: 9, scope: !1597, inlinedAt: !1571)
!1601 = !DILocation(line: 747, column: 7, scope: !1565, inlinedAt: !1571)
!1602 = !DILocation(line: 749, column: 5, scope: !1566, inlinedAt: !1571)
!1603 = !DILocation(line: 731, column: 39, scope: !1566, inlinedAt: !1571)
!1604 = !DILocation(line: 731, column: 21, scope: !1566, inlinedAt: !1571)
!1605 = distinct !{!1605, !1578, !1606, !613}
!1606 = !DILocation(line: 749, column: 5, scope: !1563, inlinedAt: !1571)
!1607 = !DILocation(line: 750, column: 1, scope: !1559, inlinedAt: !1571)
!1608 = !DILocation(line: 900, column: 5, scope: !1556)
!1609 = !DILocation(line: 902, column: 7, scope: !72)
!1610 = !DILocation(line: 904, column: 7, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 904, column: 7)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 904, column: 7)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 903, column: 5)
!1614 = distinct !DILexicalBlock(scope: !72, file: !3, line: 902, column: 7)
!1615 = !DILocation(line: 904, column: 7, scope: !1612)
!1616 = !DILocation(line: 906, column: 11, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 906, column: 11)
!1618 = !DILocation(line: 906, column: 26, scope: !1617)
!1619 = !DILocation(line: 906, column: 11, scope: !1613)
!1620 = !DILocation(line: 907, column: 9, scope: !1617)
!1621 = !DILocation(line: 911, column: 24, scope: !72)
!1622 = !DILocation(line: 911, column: 19, scope: !72)
!1623 = !DILocation(line: 912, column: 7, scope: !72)
!1624 = !DILocation(line: 914, column: 7, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 914, column: 7)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 914, column: 7)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 913, column: 5)
!1628 = distinct !DILexicalBlock(scope: !72, file: !3, line: 912, column: 7)
!1629 = !DILocation(line: 914, column: 7, scope: !1626)
!1630 = !DILocation(line: 915, column: 12, scope: !1627)
!1631 = !DILocation(line: 915, column: 7, scope: !1627)
!1632 = !DILocation(line: 915, column: 20, scope: !1627)
!1633 = !DILocation(line: 916, column: 5, scope: !1627)
!1634 = !DILocation(line: 918, column: 7, scope: !96)
!1635 = !DILocation(line: 918, column: 7, scope: !72)
!1636 = !DILocation(line: 920, column: 7, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 920, column: 7)
!1638 = distinct !DILexicalBlock(scope: !95, file: !3, line: 920, column: 7)
!1639 = !DILocation(line: 921, column: 18, scope: !94)
!1640 = !DILocation(line: 0, scope: !94)
!1641 = !DILocation(line: 921, column: 27, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !94, file: !3, line: 921, column: 7)
!1643 = !DILocation(line: 921, column: 7, scope: !94)
!1644 = !DILocation(line: 922, column: 9, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 922, column: 9)
!1646 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 922, column: 9)
!1647 = !DILocation(line: 922, column: 9, scope: !1646)
!1648 = !DILocation(line: 921, column: 34, scope: !1642)
!1649 = distinct !{!1649, !1643, !1650, !613}
!1650 = !DILocation(line: 922, column: 9, scope: !94)
!1651 = !DILocation(line: 925, column: 26, scope: !72)
!1652 = !DILocation(line: 925, column: 21, scope: !72)
!1653 = !DILocation(line: 925, column: 3, scope: !72)
!1654 = !DILocation(line: 927, column: 21, scope: !72)
!1655 = !DILocation(line: 927, column: 27, scope: !72)
!1656 = !DILocation(line: 928, column: 3, scope: !72)
!1657 = !DILocation(line: 930, column: 34, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !72, file: !3, line: 930, column: 7)
!1659 = !DILocation(line: 930, column: 37, scope: !1658)
!1660 = !DILocation(line: 930, column: 7, scope: !72)
!1661 = !DILocation(line: 931, column: 5, scope: !1658)
!1662 = !DILocation(line: 934, column: 1, scope: !72)
!1663 = !DISubprogram(name: "bindtextdomain", scope: !636, file: !636, line: 86, type: !1664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!50, !58, !58}
!1666 = !DISubprogram(name: "textdomain", scope: !636, file: !636, line: 82, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!1667 = !DISubprogram(name: "atexit", scope: !757, file: !757, line: 602, type: !1668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!53, !290}
!1670 = !DISubprogram(name: "getopt_long", scope: !197, file: !197, line: 66, type: !1671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!53, !53, !90, !58, !1673, !202}
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!1674 = distinct !DISubprogram(name: "parse_signal_action_params", scope: !3, file: !3, line: 556, type: !1675, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1677)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{null, !58, !80}
!1677 = !{!1678, !1679, !1680, !1684, !1685, !1686}
!1678 = !DILocalVariable(name: "arg", arg: 1, scope: !1674, file: !3, line: 556, type: !58)
!1679 = !DILocalVariable(name: "set_default", arg: 2, scope: !1674, file: !3, line: 556, type: !80)
!1680 = !DILocalVariable(name: "i", scope: !1681, file: !3, line: 563, type: !53)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 563, column: 7)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 559, column: 5)
!1683 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 558, column: 7)
!1684 = !DILocalVariable(name: "optarg_writable", scope: !1674, file: !3, line: 568, type: !50)
!1685 = !DILocalVariable(name: "opt_sig", scope: !1674, file: !3, line: 570, type: !50)
!1686 = !DILocalVariable(name: "signum", scope: !1687, file: !3, line: 573, type: !53)
!1687 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 572, column: 5)
!1688 = !DILocation(line: 0, scope: !1674)
!1689 = !DILocation(line: 558, column: 9, scope: !1683)
!1690 = !DILocation(line: 558, column: 7, scope: !1674)
!1691 = !DILocation(line: 0, scope: !1681)
!1692 = !DILocation(line: 564, column: 9, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 563, column: 7)
!1694 = !DILocation(line: 564, column: 20, scope: !1693)
!1695 = !DILocation(line: 586, column: 1, scope: !1674)
!1696 = !DILocation(line: 568, column: 27, scope: !1674)
!1697 = !DILocation(line: 570, column: 19, scope: !1674)
!1698 = !DILocation(line: 571, column: 3, scope: !1674)
!1699 = !DILocation(line: 573, column: 20, scope: !1687)
!1700 = !DILocation(line: 0, scope: !1687)
!1701 = !DILocation(line: 575, column: 18, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 575, column: 11)
!1703 = !DILocation(line: 575, column: 11, scope: !1687)
!1704 = !DILocation(line: 576, column: 9, scope: !1702)
!1705 = !DILocation(line: 577, column: 11, scope: !1687)
!1706 = !DILocation(line: 577, column: 18, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 577, column: 11)
!1708 = !DILocation(line: 578, column: 16, scope: !1707)
!1709 = !DILocation(line: 578, column: 9, scope: !1707)
!1710 = !DILocation(line: 580, column: 7, scope: !1687)
!1711 = !DILocation(line: 580, column: 23, scope: !1687)
!1712 = !DILocation(line: 582, column: 17, scope: !1687)
!1713 = distinct !{!1713, !1698, !1714, !613}
!1714 = !DILocation(line: 583, column: 5, scope: !1674)
!1715 = !DILocation(line: 585, column: 3, scope: !1674)
!1716 = distinct !DISubprogram(name: "parse_block_signal_params", scope: !3, file: !3, line: 634, type: !1675, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1717)
!1717 = !{!1718, !1719, !1720, !1721, !1722}
!1718 = !DILocalVariable(name: "arg", arg: 1, scope: !1716, file: !3, line: 634, type: !58)
!1719 = !DILocalVariable(name: "block", arg: 2, scope: !1716, file: !3, line: 634, type: !80)
!1720 = !DILocalVariable(name: "optarg_writable", scope: !1716, file: !3, line: 654, type: !50)
!1721 = !DILocalVariable(name: "opt_sig", scope: !1716, file: !3, line: 656, type: !50)
!1722 = !DILocalVariable(name: "signum", scope: !1723, file: !3, line: 659, type: !53)
!1723 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 658, column: 5)
!1724 = !DILocation(line: 0, scope: !1716)
!1725 = !DILocation(line: 636, column: 9, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 636, column: 7)
!1727 = !DILocation(line: 636, column: 7, scope: !1716)
!1728 = !DILocation(line: 642, column: 14, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 642, column: 12)
!1730 = !DILocation(line: 642, column: 12, scope: !1726)
!1731 = !DILocation(line: 645, column: 7, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1729, file: !3, line: 643, column: 5)
!1733 = !DILocation(line: 646, column: 7, scope: !1732)
!1734 = !DILocation(line: 647, column: 5, scope: !1732)
!1735 = !DILocation(line: 639, column: 19, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 637, column: 5)
!1737 = !DILocation(line: 639, column: 7, scope: !1736)
!1738 = !DILocation(line: 640, column: 20, scope: !1736)
!1739 = !DILocation(line: 640, column: 7, scope: !1736)
!1740 = !DILocation(line: 649, column: 20, scope: !1716)
!1741 = !DILocation(line: 651, column: 7, scope: !1716)
!1742 = !DILocation(line: 654, column: 27, scope: !1716)
!1743 = !DILocation(line: 656, column: 19, scope: !1716)
!1744 = !DILocation(line: 657, column: 3, scope: !1716)
!1745 = !DILocation(line: 659, column: 20, scope: !1723)
!1746 = !DILocation(line: 0, scope: !1723)
!1747 = !DILocation(line: 661, column: 18, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 661, column: 11)
!1749 = !DILocation(line: 661, column: 11, scope: !1723)
!1750 = !DILocation(line: 662, column: 9, scope: !1748)
!1751 = !DILocation(line: 663, column: 11, scope: !1723)
!1752 = !DILocation(line: 663, column: 18, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 663, column: 11)
!1754 = !DILocation(line: 664, column: 16, scope: !1753)
!1755 = !DILocation(line: 664, column: 9, scope: !1753)
!1756 = !DILocation(line: 666, column: 11, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 666, column: 11)
!1758 = !DILocation(line: 666, column: 73, scope: !1757)
!1759 = !DILocation(line: 666, column: 11, scope: !1723)
!1760 = !DILocation(line: 668, column: 15, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1757, file: !3, line: 667, column: 9)
!1762 = !DILocation(line: 669, column: 13, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 668, column: 15)
!1764 = !DILocation(line: 674, column: 9, scope: !1757)
!1765 = !DILocation(line: 676, column: 17, scope: !1723)
!1766 = distinct !{!1766, !1744, !1767, !613}
!1767 = !DILocation(line: 677, column: 5, scope: !1716)
!1768 = !DILocation(line: 679, column: 3, scope: !1716)
!1769 = !DILocation(line: 680, column: 1, scope: !1716)
!1770 = distinct !DISubprogram(name: "check_start_new_arg", scope: !3, file: !3, line: 313, type: !1059, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1771)
!1771 = !{!1772, !1773}
!1772 = !DILocalVariable(name: "ss", arg: 1, scope: !1770, file: !3, line: 313, type: !1042)
!1773 = !DILocalVariable(name: "argc", scope: !1774, file: !3, line: 318, type: !53)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !3, line: 316, column: 5)
!1775 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 315, column: 7)
!1776 = !DILocation(line: 0, scope: !1770)
!1777 = !DILocation(line: 315, column: 11, scope: !1775)
!1778 = !DILocation(line: 315, column: 7, scope: !1770)
!1779 = !DILocation(line: 0, scope: !1039, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 317, column: 7, scope: !1774)
!1781 = !DILocation(line: 303, column: 39, scope: !1039, inlinedAt: !1780)
!1782 = !DILocation(line: 303, column: 48, scope: !1039, inlinedAt: !1780)
!1783 = !DILocation(line: 303, column: 35, scope: !1039, inlinedAt: !1780)
!1784 = !DILocation(line: 303, column: 24, scope: !1039, inlinedAt: !1780)
!1785 = !DILocation(line: 304, column: 11, scope: !1053, inlinedAt: !1780)
!1786 = !DILocation(line: 304, column: 22, scope: !1053, inlinedAt: !1780)
!1787 = !DILocation(line: 304, column: 41, scope: !1053, inlinedAt: !1780)
!1788 = !DILocation(line: 304, column: 7, scope: !1039, inlinedAt: !1780)
!1789 = !DILocation(line: 0, scope: !1058, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 305, column: 5, scope: !1053, inlinedAt: !1780)
!1791 = !DILocation(line: 294, column: 23, scope: !1058, inlinedAt: !1790)
!1792 = !DILocation(line: 294, column: 14, scope: !1058, inlinedAt: !1790)
!1793 = !DILocation(line: 294, column: 12, scope: !1058, inlinedAt: !1790)
!1794 = !DILocation(line: 296, column: 27, scope: !1058, inlinedAt: !1790)
!1795 = !DILocation(line: 296, column: 21, scope: !1058, inlinedAt: !1790)
!1796 = !DILocation(line: 296, column: 12, scope: !1058, inlinedAt: !1790)
!1797 = !DILocation(line: 296, column: 48, scope: !1058, inlinedAt: !1790)
!1798 = !DILocation(line: 296, column: 39, scope: !1058, inlinedAt: !1790)
!1799 = !DILocation(line: 0, scope: !1075, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 296, column: 3, scope: !1058, inlinedAt: !1790)
!1801 = !DILocation(line: 36, column: 10, scope: !1075, inlinedAt: !1800)
!1802 = !DILocation(line: 306, column: 18, scope: !1039, inlinedAt: !1780)
!1803 = !DILocation(line: 306, column: 29, scope: !1039, inlinedAt: !1780)
!1804 = !DILocation(line: 305, column: 5, scope: !1053, inlinedAt: !1780)
!1805 = !DILocation(line: 306, column: 23, scope: !1039, inlinedAt: !1780)
!1806 = !DILocation(line: 306, column: 3, scope: !1039, inlinedAt: !1780)
!1807 = !DILocation(line: 306, column: 56, scope: !1039, inlinedAt: !1780)
!1808 = !DILocation(line: 307, column: 58, scope: !1039, inlinedAt: !1780)
!1809 = !DILocation(line: 307, column: 24, scope: !1039, inlinedAt: !1780)
!1810 = !DILocation(line: 307, column: 7, scope: !1039, inlinedAt: !1780)
!1811 = !DILocation(line: 307, column: 16, scope: !1039, inlinedAt: !1780)
!1812 = !DILocation(line: 307, column: 3, scope: !1039, inlinedAt: !1780)
!1813 = !DILocation(line: 307, column: 22, scope: !1039, inlinedAt: !1780)
!1814 = !DILocation(line: 0, scope: !1774)
!1815 = !DILocation(line: 319, column: 15, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 319, column: 11)
!1817 = !DILocation(line: 319, column: 40, scope: !1816)
!1818 = !DILocation(line: 319, column: 34, scope: !1816)
!1819 = !DILocation(line: 319, column: 51, scope: !1816)
!1820 = !DILocation(line: 319, column: 29, scope: !1816)
!1821 = !DILocation(line: 319, column: 26, scope: !1816)
!1822 = !DILocation(line: 319, column: 11, scope: !1774)
!1823 = !DILocation(line: 0, scope: !1058, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 320, column: 9, scope: !1816)
!1825 = !DILocation(line: 293, column: 39, scope: !1058, inlinedAt: !1824)
!1826 = !DILocation(line: 293, column: 35, scope: !1058, inlinedAt: !1824)
!1827 = !DILocation(line: 293, column: 24, scope: !1058, inlinedAt: !1824)
!1828 = !DILocation(line: 294, column: 23, scope: !1058, inlinedAt: !1824)
!1829 = !DILocation(line: 294, column: 14, scope: !1058, inlinedAt: !1824)
!1830 = !DILocation(line: 294, column: 12, scope: !1058, inlinedAt: !1824)
!1831 = !DILocation(line: 296, column: 27, scope: !1058, inlinedAt: !1824)
!1832 = !DILocation(line: 296, column: 21, scope: !1058, inlinedAt: !1824)
!1833 = !DILocation(line: 296, column: 12, scope: !1058, inlinedAt: !1824)
!1834 = !DILocation(line: 296, column: 48, scope: !1058, inlinedAt: !1824)
!1835 = !DILocation(line: 296, column: 39, scope: !1058, inlinedAt: !1824)
!1836 = !DILocation(line: 0, scope: !1075, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 296, column: 3, scope: !1058, inlinedAt: !1824)
!1838 = !DILocation(line: 36, column: 10, scope: !1075, inlinedAt: !1837)
!1839 = !DILocation(line: 320, column: 9, scope: !1816)
!1840 = !DILocation(line: 321, column: 32, scope: !1774)
!1841 = !DILocation(line: 321, column: 28, scope: !1774)
!1842 = !DILocation(line: 321, column: 7, scope: !1774)
!1843 = !DILocation(line: 321, column: 26, scope: !1774)
!1844 = !DILocation(line: 322, column: 16, scope: !1774)
!1845 = !DILocation(line: 323, column: 15, scope: !1774)
!1846 = !DILocation(line: 324, column: 5, scope: !1774)
!1847 = !DILocation(line: 325, column: 1, scope: !1770)
!1848 = !DISubprogram(name: "unsetenv", scope: !757, file: !757, line: 664, type: !1849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!53, !58}
!1851 = !DISubprogram(name: "putenv", scope: !757, file: !757, line: 654, type: !1852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!53, !50}
!1854 = !DISubprogram(name: "sigaction", scope: !65, file: !65, line: 243, type: !1855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!53, !53, !1857, !1860}
!1857 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1858)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1350)
!1860 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1861)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1862 = !DISubprogram(name: "sigemptyset", scope: !65, file: !65, line: 199, type: !1863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!53, !1865}
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!1866 = !DISubprogram(name: "sigprocmask", scope: !65, file: !65, line: 232, type: !1867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!53, !53, !1869, !1872}
!1869 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1870)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!1872 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1865)
!1873 = !DISubprogram(name: "sigismember", scope: !65, file: !65, line: 211, type: !1874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!53, !1870, !53}
!1876 = !DISubprogram(name: "sigaddset", scope: !65, file: !65, line: 205, type: !1877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!53, !1865, !53}
!1879 = !DISubprogram(name: "sigdelset", scope: !65, file: !65, line: 208, type: !1877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!1880 = !DISubprogram(name: "chdir", scope: !1881, file: !1881, line: 517, type: !1849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!1881 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1882 = !DISubprogram(name: "execvp", scope: !1881, file: !1881, line: 599, type: !1883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!53, !58, !90}
!1885 = !DISubprogram(name: "sigfillset", scope: !65, file: !65, line: 202, type: !1863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!1886 = distinct !DISubprogram(name: "operand2sig", scope: !455, file: !455, line: 36, type: !1849, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1887)
!1887 = !{!1888, !1889, !1890, !1893, !1894, !1895, !1897}
!1888 = !DILocalVariable(name: "operand", arg: 1, scope: !1886, file: !455, line: 36, type: !58)
!1889 = !DILocalVariable(name: "signum", scope: !1886, file: !455, line: 38, type: !53)
!1890 = !DILocalVariable(name: "endp", scope: !1891, file: !455, line: 53, type: !50)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !455, line: 41, column: 5)
!1892 = distinct !DILexicalBlock(scope: !1886, file: !455, line: 40, column: 7)
!1893 = !DILocalVariable(name: "l", scope: !1891, file: !455, line: 54, type: !63)
!1894 = !DILocalVariable(name: "i", scope: !1891, file: !455, line: 55, type: !53)
!1895 = !DILocalVariable(name: "upcased", scope: !1896, file: !455, line: 70, type: !50)
!1896 = distinct !DILexicalBlock(scope: !1892, file: !455, line: 67, column: 5)
!1897 = !DILocalVariable(name: "p", scope: !1898, file: !455, line: 71, type: !50)
!1898 = distinct !DILexicalBlock(scope: !1896, file: !455, line: 71, column: 7)
!1899 = !DILocation(line: 0, scope: !1886)
!1900 = !DILocation(line: 38, column: 3, scope: !1886)
!1901 = !DILocation(line: 40, column: 18, scope: !1892)
!1902 = !DILocalVariable(name: "c", arg: 1, scope: !1903, file: !976, line: 233, type: !53)
!1903 = distinct !DISubprogram(name: "c_isdigit", scope: !976, file: !976, line: 233, type: !977, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1904)
!1904 = !{!1902}
!1905 = !DILocation(line: 0, scope: !1903, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 40, column: 7, scope: !1892)
!1907 = !DILocation(line: 235, column: 3, scope: !1903, inlinedAt: !1906)
!1908 = !DILocation(line: 40, column: 7, scope: !1886)
!1909 = !DILocation(line: 53, column: 7, scope: !1891)
!1910 = !DILocation(line: 54, column: 21, scope: !1891)
!1911 = !DILocation(line: 54, column: 27, scope: !1891)
!1912 = !DILocation(line: 0, scope: !1891)
!1913 = !DILocation(line: 54, column: 32, scope: !1891)
!1914 = !DILocation(line: 55, column: 15, scope: !1891)
!1915 = !DILocation(line: 56, column: 28, scope: !1891)
!1916 = !DILocation(line: 56, column: 25, scope: !1891)
!1917 = !DILocation(line: 56, column: 33, scope: !1891)
!1918 = !DILocation(line: 56, column: 36, scope: !1891)
!1919 = !DILocation(line: 56, column: 42, scope: !1891)
!1920 = !DILocation(line: 56, column: 45, scope: !1891)
!1921 = !DILocation(line: 56, column: 51, scope: !1891)
!1922 = !DILocation(line: 58, column: 18, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1891, file: !455, line: 58, column: 11)
!1924 = !DILocation(line: 58, column: 11, scope: !1891)
!1925 = !DILocation(line: 65, column: 5, scope: !1892)
!1926 = !DILocation(line: 65, column: 5, scope: !1891)
!1927 = !DILocation(line: 70, column: 23, scope: !1896)
!1928 = !DILocation(line: 0, scope: !1896)
!1929 = !DILocation(line: 0, scope: !1898)
!1930 = !DILocation(line: 71, column: 31, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1898, file: !455, line: 71, column: 7)
!1932 = !DILocation(line: 71, column: 7, scope: !1898)
!1933 = !DILocation(line: 77, column: 13, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1896, file: !455, line: 77, column: 11)
!1935 = !DILocation(line: 77, column: 40, scope: !1934)
!1936 = !DILocation(line: 78, column: 13, scope: !1934)
!1937 = !DILocation(line: 72, column: 51, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1931, file: !455, line: 72, column: 13)
!1939 = !DILocation(line: 72, column: 13, scope: !1938)
!1940 = !DILocation(line: 72, column: 13, scope: !1931)
!1941 = !DILocation(line: 73, column: 14, scope: !1938)
!1942 = !DILocation(line: 73, column: 11, scope: !1938)
!1943 = !DILocation(line: 71, column: 36, scope: !1931)
!1944 = distinct !{!1944, !1932, !1945, !613}
!1945 = !DILocation(line: 73, column: 23, scope: !1898)
!1946 = !DILocation(line: 78, column: 17, scope: !1934)
!1947 = !DILocation(line: 78, column: 28, scope: !1934)
!1948 = !DILocation(line: 78, column: 35, scope: !1934)
!1949 = !DILocation(line: 78, column: 38, scope: !1934)
!1950 = !DILocation(line: 78, column: 49, scope: !1934)
!1951 = !DILocation(line: 78, column: 56, scope: !1934)
!1952 = !DILocation(line: 78, column: 59, scope: !1934)
!1953 = !DILocation(line: 78, column: 70, scope: !1934)
!1954 = !DILocation(line: 79, column: 17, scope: !1934)
!1955 = !DILocation(line: 79, column: 37, scope: !1934)
!1956 = !DILocation(line: 79, column: 20, scope: !1934)
!1957 = !DILocation(line: 79, column: 51, scope: !1934)
!1958 = !DILocation(line: 77, column: 11, scope: !1896)
!1959 = !DILocation(line: 80, column: 16, scope: !1934)
!1960 = !DILocation(line: 80, column: 9, scope: !1934)
!1961 = !DILocation(line: 82, column: 7, scope: !1896)
!1962 = !DILocation(line: 85, column: 11, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1886, file: !455, line: 85, column: 7)
!1964 = !DILocation(line: 85, column: 18, scope: !1963)
!1965 = !DILocation(line: 87, column: 7, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1963, file: !455, line: 86, column: 5)
!1967 = !DILocation(line: 88, column: 7, scope: !1966)
!1968 = !DILocation(line: 92, column: 1, scope: !1886)
!1969 = distinct !DISubprogram(name: "c_isalnum", scope: !976, file: !976, line: 169, type: !977, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1970)
!1970 = !{!1971}
!1971 = !DILocalVariable(name: "c", arg: 1, scope: !1969, file: !976, line: 169, type: !53)
!1972 = !DILocation(line: 0, scope: !1969)
!1973 = !DILocation(line: 171, column: 3, scope: !1969)
!1974 = !DILocation(line: 178, column: 7, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1969, file: !976, line: 172, column: 5)
!1976 = !DILocation(line: 0, scope: !1975)
!1977 = !DILocation(line: 180, column: 1, scope: !1969)
!1978 = distinct !DISubprogram(name: "c_isalpha", scope: !976, file: !976, line: 183, type: !977, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1979)
!1979 = !{!1980}
!1980 = !DILocalVariable(name: "c", arg: 1, scope: !1978, file: !976, line: 183, type: !53)
!1981 = !DILocation(line: 0, scope: !1978)
!1982 = !DILocation(line: 185, column: 3, scope: !1978)
!1983 = !DILocation(line: 193, column: 1, scope: !1978)
!1984 = distinct !DISubprogram(name: "c_isascii", scope: !976, file: !976, line: 198, type: !977, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1985)
!1985 = !{!1986}
!1986 = !DILocalVariable(name: "c", arg: 1, scope: !1984, file: !976, line: 198, type: !53)
!1987 = !DILocation(line: 0, scope: !1984)
!1988 = !DILocation(line: 200, column: 3, scope: !1984)
!1989 = !DILocation(line: 212, column: 1, scope: !1984)
!1990 = distinct !DISubprogram(name: "c_isblank", scope: !976, file: !976, line: 215, type: !977, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1991)
!1991 = !{!1992}
!1992 = !DILocalVariable(name: "c", arg: 1, scope: !1990, file: !976, line: 215, type: !53)
!1993 = !DILocation(line: 0, scope: !1990)
!1994 = !DILocation(line: 217, column: 12, scope: !1990)
!1995 = !DILocation(line: 217, column: 19, scope: !1990)
!1996 = !DILocation(line: 217, column: 3, scope: !1990)
!1997 = distinct !DISubprogram(name: "c_iscntrl", scope: !976, file: !976, line: 221, type: !977, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1998)
!1998 = !{!1999}
!1999 = !DILocalVariable(name: "c", arg: 1, scope: !1997, file: !976, line: 221, type: !53)
!2000 = !DILocation(line: 0, scope: !1997)
!2001 = !DILocation(line: 223, column: 3, scope: !1997)
!2002 = !DILocation(line: 228, column: 7, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1997, file: !976, line: 224, column: 5)
!2004 = !DILocation(line: 0, scope: !2003)
!2005 = !DILocation(line: 230, column: 1, scope: !1997)
!2006 = distinct !DISubprogram(name: "c_isdigit", scope: !976, file: !976, line: 233, type: !977, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2007)
!2007 = !{!2008}
!2008 = !DILocalVariable(name: "c", arg: 1, scope: !2006, file: !976, line: 233, type: !53)
!2009 = !DILocation(line: 0, scope: !2006)
!2010 = !DILocation(line: 235, column: 3, scope: !2006)
!2011 = !DILocation(line: 242, column: 1, scope: !2006)
!2012 = distinct !DISubprogram(name: "c_isgraph", scope: !976, file: !976, line: 245, type: !977, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2013)
!2013 = !{!2014}
!2014 = !DILocalVariable(name: "c", arg: 1, scope: !2012, file: !976, line: 245, type: !53)
!2015 = !DILocation(line: 0, scope: !2012)
!2016 = !DILocation(line: 247, column: 3, scope: !2012)
!2017 = !DILocation(line: 257, column: 1, scope: !2012)
!2018 = distinct !DISubprogram(name: "c_islower", scope: !976, file: !976, line: 260, type: !977, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2019)
!2019 = !{!2020}
!2020 = !DILocalVariable(name: "c", arg: 1, scope: !2018, file: !976, line: 260, type: !53)
!2021 = !DILocation(line: 0, scope: !2018)
!2022 = !DILocation(line: 262, column: 3, scope: !2018)
!2023 = !DILocation(line: 269, column: 1, scope: !2018)
!2024 = distinct !DISubprogram(name: "c_isprint", scope: !976, file: !976, line: 272, type: !977, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2025)
!2025 = !{!2026}
!2026 = !DILocalVariable(name: "c", arg: 1, scope: !2024, file: !976, line: 272, type: !53)
!2027 = !DILocation(line: 0, scope: !2024)
!2028 = !DILocation(line: 274, column: 3, scope: !2024)
!2029 = !DILocation(line: 285, column: 1, scope: !2024)
!2030 = distinct !DISubprogram(name: "c_ispunct", scope: !976, file: !976, line: 288, type: !977, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2031)
!2031 = !{!2032}
!2032 = !DILocalVariable(name: "c", arg: 1, scope: !2030, file: !976, line: 288, type: !53)
!2033 = !DILocation(line: 0, scope: !2030)
!2034 = !DILocation(line: 290, column: 3, scope: !2030)
!2035 = !DILocation(line: 295, column: 7, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2030, file: !976, line: 291, column: 5)
!2037 = !DILocation(line: 0, scope: !2036)
!2038 = !DILocation(line: 297, column: 1, scope: !2030)
!2039 = distinct !DISubprogram(name: "c_isspace", scope: !976, file: !976, line: 300, type: !977, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2040)
!2040 = !{!2041}
!2041 = !DILocalVariable(name: "c", arg: 1, scope: !2039, file: !976, line: 300, type: !53)
!2042 = !DILocation(line: 0, scope: !2039)
!2043 = !DILocation(line: 302, column: 3, scope: !2039)
!2044 = !DILocation(line: 309, column: 1, scope: !2039)
!2045 = distinct !DISubprogram(name: "c_isupper", scope: !976, file: !976, line: 312, type: !977, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2046)
!2046 = !{!2047}
!2047 = !DILocalVariable(name: "c", arg: 1, scope: !2045, file: !976, line: 312, type: !53)
!2048 = !DILocation(line: 0, scope: !2045)
!2049 = !DILocation(line: 314, column: 3, scope: !2045)
!2050 = !DILocation(line: 321, column: 1, scope: !2045)
!2051 = distinct !DISubprogram(name: "c_isxdigit", scope: !976, file: !976, line: 324, type: !977, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2052)
!2052 = !{!2053}
!2053 = !DILocalVariable(name: "c", arg: 1, scope: !2051, file: !976, line: 324, type: !53)
!2054 = !DILocation(line: 0, scope: !2051)
!2055 = !DILocation(line: 326, column: 3, scope: !2051)
!2056 = !DILocation(line: 334, column: 1, scope: !2051)
!2057 = distinct !DISubprogram(name: "c_tolower", scope: !976, file: !976, line: 337, type: !2058, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2060)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!53, !53}
!2060 = !{!2061}
!2061 = !DILocalVariable(name: "c", arg: 1, scope: !2057, file: !976, line: 337, type: !53)
!2062 = !DILocation(line: 0, scope: !2057)
!2063 = !DILocation(line: 339, column: 3, scope: !2057)
!2064 = !DILocation(line: 346, column: 1, scope: !2057)
!2065 = distinct !DISubprogram(name: "c_toupper", scope: !976, file: !976, line: 349, type: !2058, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2066)
!2066 = !{!2067}
!2067 = !DILocalVariable(name: "c", arg: 1, scope: !2065, file: !976, line: 349, type: !53)
!2068 = !DILocation(line: 0, scope: !2065)
!2069 = !DILocation(line: 351, column: 3, scope: !2065)
!2070 = !DILocation(line: 358, column: 1, scope: !2065)
!2071 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !248, file: !248, line: 50, type: !566, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2072)
!2072 = !{!2073}
!2073 = !DILocalVariable(name: "file", arg: 1, scope: !2071, file: !248, line: 50, type: !58)
!2074 = !DILocation(line: 0, scope: !2071)
!2075 = !DILocation(line: 52, column: 13, scope: !2071)
!2076 = !DILocation(line: 53, column: 1, scope: !2071)
!2077 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !248, file: !248, line: 87, type: !2078, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2080)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{null, !80}
!2080 = !{!2081}
!2081 = !DILocalVariable(name: "ignore", arg: 1, scope: !2077, file: !248, line: 87, type: !80)
!2082 = !DILocation(line: 0, scope: !2077)
!2083 = !DILocation(line: 89, column: 16, scope: !2077)
!2084 = !{!894, !894, i64 0}
!2085 = !DILocation(line: 90, column: 1, scope: !2077)
!2086 = distinct !DISubprogram(name: "close_stdout", scope: !248, file: !248, line: 116, type: !291, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2087)
!2087 = !{!2088}
!2088 = !DILocalVariable(name: "write_error", scope: !2089, file: !248, line: 121, type: !58)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !248, line: 120, column: 5)
!2090 = distinct !DILexicalBlock(scope: !2086, file: !248, line: 118, column: 7)
!2091 = !DILocation(line: 118, column: 21, scope: !2090)
!2092 = !DILocation(line: 118, column: 7, scope: !2090)
!2093 = !DILocation(line: 118, column: 29, scope: !2090)
!2094 = !DILocation(line: 119, column: 7, scope: !2090)
!2095 = !DILocation(line: 119, column: 12, scope: !2090)
!2096 = !DILocation(line: 119, column: 25, scope: !2090)
!2097 = !DILocation(line: 119, column: 28, scope: !2090)
!2098 = !DILocation(line: 119, column: 34, scope: !2090)
!2099 = !DILocation(line: 118, column: 7, scope: !2086)
!2100 = !DILocation(line: 121, column: 33, scope: !2089)
!2101 = !DILocation(line: 0, scope: !2089)
!2102 = !DILocation(line: 122, column: 11, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2089, file: !248, line: 122, column: 11)
!2104 = !DILocation(line: 0, scope: !2103)
!2105 = !DILocation(line: 122, column: 11, scope: !2089)
!2106 = !DILocation(line: 123, column: 9, scope: !2103)
!2107 = !DILocation(line: 126, column: 9, scope: !2103)
!2108 = !DILocation(line: 128, column: 14, scope: !2089)
!2109 = !DILocation(line: 128, column: 7, scope: !2089)
!2110 = !DILocation(line: 133, column: 42, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2086, file: !248, line: 133, column: 7)
!2112 = !DILocation(line: 133, column: 28, scope: !2111)
!2113 = !DILocation(line: 133, column: 50, scope: !2111)
!2114 = !DILocation(line: 133, column: 7, scope: !2086)
!2115 = !DILocation(line: 134, column: 12, scope: !2111)
!2116 = !DILocation(line: 134, column: 5, scope: !2111)
!2117 = !DILocation(line: 135, column: 1, scope: !2086)
!2118 = distinct !DISubprogram(name: "verror", scope: !255, file: !255, line: 251, type: !2119, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2121)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{null, !53, !53, !58, !263}
!2121 = !{!2122, !2123, !2124, !2125}
!2122 = !DILocalVariable(name: "status", arg: 1, scope: !2118, file: !255, line: 251, type: !53)
!2123 = !DILocalVariable(name: "errnum", arg: 2, scope: !2118, file: !255, line: 251, type: !53)
!2124 = !DILocalVariable(name: "message", arg: 3, scope: !2118, file: !255, line: 251, type: !58)
!2125 = !DILocalVariable(name: "args", arg: 4, scope: !2118, file: !255, line: 251, type: !263)
!2126 = !DILocation(line: 0, scope: !2118)
!2127 = !DILocation(line: 251, column: 1, scope: !2118)
!2128 = !DILocation(line: 261, column: 3, scope: !2118)
!2129 = !DILocation(line: 265, column: 7, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2118, file: !255, line: 265, column: 7)
!2131 = !DILocation(line: 265, column: 7, scope: !2118)
!2132 = !DILocation(line: 266, column: 5, scope: !2130)
!2133 = !DILocation(line: 272, column: 7, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2130, file: !255, line: 268, column: 5)
!2135 = !DILocation(line: 276, column: 3, scope: !2118)
!2136 = !{i64 0, i64 8, !538, i64 8, i64 8, !538, i64 16, i64 8, !538, i64 24, i64 4, !646, i64 28, i64 4, !646}
!2137 = !DILocation(line: 282, column: 1, scope: !2118)
!2138 = distinct !DISubprogram(name: "flush_stdout", scope: !255, file: !255, line: 163, type: !291, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2139)
!2139 = !{!2140}
!2140 = !DILocalVariable(name: "stdout_fd", scope: !2138, file: !255, line: 166, type: !53)
!2141 = !DILocation(line: 0, scope: !2138)
!2142 = !DILocalVariable(name: "fd", arg: 1, scope: !2143, file: !255, line: 145, type: !53)
!2143 = distinct !DISubprogram(name: "is_open", scope: !255, file: !255, line: 145, type: !2058, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2144)
!2144 = !{!2142}
!2145 = !DILocation(line: 0, scope: !2143, inlinedAt: !2146)
!2146 = distinct !DILocation(line: 182, column: 25, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2138, file: !255, line: 182, column: 7)
!2148 = !DILocation(line: 157, column: 15, scope: !2143, inlinedAt: !2146)
!2149 = !DILocation(line: 182, column: 25, scope: !2147)
!2150 = !DILocation(line: 182, column: 7, scope: !2138)
!2151 = !DILocation(line: 184, column: 5, scope: !2147)
!2152 = !DILocation(line: 185, column: 1, scope: !2138)
!2153 = distinct !DISubprogram(name: "error_tail", scope: !255, file: !255, line: 219, type: !2119, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2154)
!2154 = !{!2155, !2156, !2157, !2158}
!2155 = !DILocalVariable(name: "status", arg: 1, scope: !2153, file: !255, line: 219, type: !53)
!2156 = !DILocalVariable(name: "errnum", arg: 2, scope: !2153, file: !255, line: 219, type: !53)
!2157 = !DILocalVariable(name: "message", arg: 3, scope: !2153, file: !255, line: 219, type: !58)
!2158 = !DILocalVariable(name: "args", arg: 4, scope: !2153, file: !255, line: 219, type: !263)
!2159 = !DILocation(line: 0, scope: !2153)
!2160 = !DILocation(line: 219, column: 1, scope: !2153)
!2161 = !DILocation(line: 229, column: 13, scope: !2153)
!2162 = !DILocation(line: 229, column: 3, scope: !2153)
!2163 = !DILocalVariable(name: "__stream", arg: 1, scope: !2164, file: !2165, line: 132, type: !2168)
!2164 = distinct !DISubprogram(name: "vfprintf", scope: !2165, file: !2165, line: 132, type: !2166, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2203)
!2165 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!53, !2168, !642, !265}
!2168 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2169)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !133, line: 7, baseType: !2171)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !135, line: 49, size: 1728, elements: !2172)
!2172 = !{!2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2171, file: !135, line: 51, baseType: !53, size: 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2171, file: !135, line: 54, baseType: !50, size: 64, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2171, file: !135, line: 55, baseType: !50, size: 64, offset: 128)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2171, file: !135, line: 56, baseType: !50, size: 64, offset: 192)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2171, file: !135, line: 57, baseType: !50, size: 64, offset: 256)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2171, file: !135, line: 58, baseType: !50, size: 64, offset: 320)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2171, file: !135, line: 59, baseType: !50, size: 64, offset: 384)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2171, file: !135, line: 60, baseType: !50, size: 64, offset: 448)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2171, file: !135, line: 61, baseType: !50, size: 64, offset: 512)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2171, file: !135, line: 64, baseType: !50, size: 64, offset: 576)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2171, file: !135, line: 65, baseType: !50, size: 64, offset: 640)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2171, file: !135, line: 66, baseType: !50, size: 64, offset: 704)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2171, file: !135, line: 68, baseType: !150, size: 64, offset: 768)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2171, file: !135, line: 70, baseType: !2187, size: 64, offset: 832)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2171, file: !135, line: 72, baseType: !53, size: 32, offset: 896)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2171, file: !135, line: 73, baseType: !53, size: 32, offset: 928)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2171, file: !135, line: 74, baseType: !157, size: 64, offset: 960)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2171, file: !135, line: 77, baseType: !54, size: 16, offset: 1024)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2171, file: !135, line: 78, baseType: !161, size: 8, offset: 1040)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2171, file: !135, line: 79, baseType: !163, size: 8, offset: 1048)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2171, file: !135, line: 81, baseType: !165, size: 64, offset: 1088)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2171, file: !135, line: 89, baseType: !168, size: 64, offset: 1152)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2171, file: !135, line: 91, baseType: !170, size: 64, offset: 1216)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2171, file: !135, line: 92, baseType: !173, size: 64, offset: 1280)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2171, file: !135, line: 93, baseType: !2187, size: 64, offset: 1344)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2171, file: !135, line: 94, baseType: !52, size: 64, offset: 1408)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2171, file: !135, line: 95, baseType: !55, size: 64, offset: 1472)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2171, file: !135, line: 96, baseType: !53, size: 32, offset: 1536)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2171, file: !135, line: 98, baseType: !180, size: 160, offset: 1568)
!2203 = !{!2163, !2204, !2205}
!2204 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2164, file: !2165, line: 133, type: !642)
!2205 = !DILocalVariable(name: "__ap", arg: 3, scope: !2164, file: !2165, line: 133, type: !265)
!2206 = !DILocation(line: 0, scope: !2164, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 229, column: 3, scope: !2153)
!2208 = !DILocation(line: 135, column: 10, scope: !2164, inlinedAt: !2207)
!2209 = !{!2210, !2212}
!2210 = distinct !{!2210, !2211, !"vfprintf.inline: argument 0"}
!2211 = distinct !{!2211, !"vfprintf.inline"}
!2212 = distinct !{!2212, !2211, !"vfprintf.inline: argument 1"}
!2213 = !DILocation(line: 232, column: 3, scope: !2153)
!2214 = !DILocation(line: 233, column: 7, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2153, file: !255, line: 233, column: 7)
!2216 = !DILocation(line: 233, column: 7, scope: !2153)
!2217 = !DILocalVariable(name: "errnum", arg: 1, scope: !2218, file: !255, line: 188, type: !53)
!2218 = distinct !DISubprogram(name: "print_errno_message", scope: !255, file: !255, line: 188, type: !67, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2219)
!2219 = !{!2217, !2220, !2221}
!2220 = !DILocalVariable(name: "s", scope: !2218, file: !255, line: 190, type: !58)
!2221 = !DILocalVariable(name: "errbuf", scope: !2218, file: !255, line: 193, type: !2222)
!2222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 8192, elements: !2223)
!2223 = !{!2224}
!2224 = !DISubrange(count: 1024)
!2225 = !DILocation(line: 0, scope: !2218, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 234, column: 5, scope: !2215)
!2227 = !DILocation(line: 193, column: 3, scope: !2218, inlinedAt: !2226)
!2228 = !DILocation(line: 193, column: 8, scope: !2218, inlinedAt: !2226)
!2229 = !DILocation(line: 195, column: 7, scope: !2218, inlinedAt: !2226)
!2230 = !DILocation(line: 207, column: 9, scope: !2231, inlinedAt: !2226)
!2231 = distinct !DILexicalBlock(scope: !2218, file: !255, line: 207, column: 7)
!2232 = !DILocation(line: 207, column: 7, scope: !2218, inlinedAt: !2226)
!2233 = !DILocation(line: 208, column: 9, scope: !2231, inlinedAt: !2226)
!2234 = !DILocation(line: 208, column: 5, scope: !2231, inlinedAt: !2226)
!2235 = !DILocation(line: 214, column: 3, scope: !2218, inlinedAt: !2226)
!2236 = !DILocation(line: 216, column: 1, scope: !2218, inlinedAt: !2226)
!2237 = !DILocation(line: 234, column: 5, scope: !2215)
!2238 = !DILocation(line: 238, column: 3, scope: !2153)
!2239 = !DILocalVariable(name: "__c", arg: 1, scope: !2240, file: !2241, line: 101, type: !53)
!2240 = distinct !DISubprogram(name: "putc_unlocked", scope: !2241, file: !2241, line: 101, type: !2242, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2244)
!2241 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!53, !53, !2169}
!2244 = !{!2239, !2245}
!2245 = !DILocalVariable(name: "__stream", arg: 2, scope: !2240, file: !2241, line: 101, type: !2169)
!2246 = !DILocation(line: 0, scope: !2240, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 238, column: 3, scope: !2153)
!2248 = !DILocation(line: 103, column: 10, scope: !2240, inlinedAt: !2247)
!2249 = !{!2250, !539, i64 40}
!2250 = !{!"_IO_FILE", !647, i64 0, !539, i64 8, !539, i64 16, !539, i64 24, !539, i64 32, !539, i64 40, !539, i64 48, !539, i64 56, !539, i64 64, !539, i64 72, !539, i64 80, !539, i64 88, !539, i64 96, !539, i64 104, !647, i64 112, !647, i64 116, !809, i64 120, !681, i64 128, !540, i64 130, !540, i64 131, !539, i64 136, !809, i64 144, !539, i64 152, !539, i64 160, !539, i64 168, !539, i64 176, !809, i64 184, !647, i64 192, !540, i64 196}
!2251 = !{!2250, !539, i64 48}
!2252 = !{!"branch_weights", i32 2000, i32 1}
!2253 = !DILocation(line: 240, column: 3, scope: !2153)
!2254 = !DILocation(line: 241, column: 7, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2153, file: !255, line: 241, column: 7)
!2256 = !DILocation(line: 241, column: 7, scope: !2153)
!2257 = !DILocation(line: 242, column: 5, scope: !2255)
!2258 = !DILocation(line: 243, column: 1, scope: !2153)
!2259 = !DISubprogram(name: "strerror_r", scope: !2260, file: !2260, line: 444, type: !2261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!2260 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!50, !53, !50, !55}
!2263 = !DISubprogram(name: "fflush_unlocked", scope: !264, file: !264, line: 239, type: !2264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!53, !2169}
!2266 = !DISubprogram(name: "fcntl", scope: !2267, file: !2267, line: 149, type: !2268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!2267 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!53, !53, !53, null}
!2270 = distinct !DISubprogram(name: "error", scope: !255, file: !255, line: 285, type: !2271, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2273)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{null, !53, !53, !58, null}
!2273 = !{!2274, !2275, !2276, !2277}
!2274 = !DILocalVariable(name: "status", arg: 1, scope: !2270, file: !255, line: 285, type: !53)
!2275 = !DILocalVariable(name: "errnum", arg: 2, scope: !2270, file: !255, line: 285, type: !53)
!2276 = !DILocalVariable(name: "message", arg: 3, scope: !2270, file: !255, line: 285, type: !58)
!2277 = !DILocalVariable(name: "ap", scope: !2270, file: !255, line: 287, type: !263)
!2278 = !DILocation(line: 0, scope: !2270)
!2279 = !DILocation(line: 287, column: 3, scope: !2270)
!2280 = !DILocation(line: 287, column: 11, scope: !2270)
!2281 = !DILocation(line: 288, column: 3, scope: !2270)
!2282 = !DILocation(line: 289, column: 3, scope: !2270)
!2283 = !DILocation(line: 290, column: 3, scope: !2270)
!2284 = !DILocation(line: 291, column: 1, scope: !2270)
!2285 = !DILocation(line: 0, scope: !260)
!2286 = !DILocation(line: 298, column: 1, scope: !260)
!2287 = !DILocation(line: 302, column: 7, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !260, file: !255, line: 302, column: 7)
!2289 = !DILocation(line: 302, column: 7, scope: !260)
!2290 = !DILocation(line: 307, column: 11, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !255, line: 307, column: 11)
!2292 = distinct !DILexicalBlock(scope: !2288, file: !255, line: 303, column: 5)
!2293 = !DILocation(line: 307, column: 27, scope: !2291)
!2294 = !DILocation(line: 308, column: 11, scope: !2291)
!2295 = !DILocation(line: 308, column: 28, scope: !2291)
!2296 = !DILocation(line: 308, column: 25, scope: !2291)
!2297 = !DILocation(line: 309, column: 15, scope: !2291)
!2298 = !DILocation(line: 309, column: 33, scope: !2291)
!2299 = !DILocation(line: 310, column: 19, scope: !2291)
!2300 = !DILocation(line: 311, column: 22, scope: !2291)
!2301 = !DILocation(line: 311, column: 56, scope: !2291)
!2302 = !DILocation(line: 307, column: 11, scope: !2292)
!2303 = !DILocation(line: 316, column: 21, scope: !2292)
!2304 = !DILocation(line: 317, column: 23, scope: !2292)
!2305 = !DILocation(line: 318, column: 5, scope: !2292)
!2306 = !DILocation(line: 327, column: 3, scope: !260)
!2307 = !DILocation(line: 331, column: 7, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !260, file: !255, line: 331, column: 7)
!2309 = !DILocation(line: 331, column: 7, scope: !260)
!2310 = !DILocation(line: 332, column: 5, scope: !2308)
!2311 = !DILocation(line: 338, column: 7, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2308, file: !255, line: 334, column: 5)
!2313 = !DILocation(line: 346, column: 3, scope: !260)
!2314 = !DILocation(line: 350, column: 3, scope: !260)
!2315 = !DILocation(line: 356, column: 1, scope: !260)
!2316 = distinct !DISubprogram(name: "error_at_line", scope: !255, file: !255, line: 359, type: !2317, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2319)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{null, !53, !53, !58, !7, !58, null}
!2319 = !{!2320, !2321, !2322, !2323, !2324, !2325}
!2320 = !DILocalVariable(name: "status", arg: 1, scope: !2316, file: !255, line: 359, type: !53)
!2321 = !DILocalVariable(name: "errnum", arg: 2, scope: !2316, file: !255, line: 359, type: !53)
!2322 = !DILocalVariable(name: "file_name", arg: 3, scope: !2316, file: !255, line: 359, type: !58)
!2323 = !DILocalVariable(name: "line_number", arg: 4, scope: !2316, file: !255, line: 360, type: !7)
!2324 = !DILocalVariable(name: "message", arg: 5, scope: !2316, file: !255, line: 360, type: !58)
!2325 = !DILocalVariable(name: "ap", scope: !2316, file: !255, line: 362, type: !263)
!2326 = !DILocation(line: 0, scope: !2316)
!2327 = !DILocation(line: 362, column: 3, scope: !2316)
!2328 = !DILocation(line: 362, column: 11, scope: !2316)
!2329 = !DILocation(line: 363, column: 3, scope: !2316)
!2330 = !DILocation(line: 364, column: 3, scope: !2316)
!2331 = !DILocation(line: 366, column: 3, scope: !2316)
!2332 = !DILocation(line: 367, column: 1, scope: !2316)
!2333 = distinct !DISubprogram(name: "getprogname", scope: !459, file: !459, line: 54, type: !2334, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !547)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!58}
!2336 = !DILocation(line: 58, column: 10, scope: !2333)
!2337 = !DILocation(line: 58, column: 3, scope: !2333)
!2338 = distinct !DISubprogram(name: "set_program_name", scope: !296, file: !296, line: 37, type: !566, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !295, retainedNodes: !2339)
!2339 = !{!2340, !2341, !2342}
!2340 = !DILocalVariable(name: "argv0", arg: 1, scope: !2338, file: !296, line: 37, type: !58)
!2341 = !DILocalVariable(name: "slash", scope: !2338, file: !296, line: 44, type: !58)
!2342 = !DILocalVariable(name: "base", scope: !2338, file: !296, line: 45, type: !58)
!2343 = !DILocation(line: 0, scope: !2338)
!2344 = !DILocation(line: 44, column: 23, scope: !2338)
!2345 = !DILocation(line: 45, column: 22, scope: !2338)
!2346 = !DILocation(line: 46, column: 17, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2338, file: !296, line: 46, column: 7)
!2348 = !DILocation(line: 46, column: 9, scope: !2347)
!2349 = !DILocation(line: 46, column: 25, scope: !2347)
!2350 = !DILocation(line: 46, column: 40, scope: !2347)
!2351 = !DILocalVariable(name: "__s1", arg: 1, scope: !2352, file: !597, line: 974, type: !764)
!2352 = distinct !DISubprogram(name: "memeq", scope: !597, file: !597, line: 974, type: !2353, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !295, retainedNodes: !2355)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!80, !764, !764, !55}
!2355 = !{!2351, !2356, !2357}
!2356 = !DILocalVariable(name: "__s2", arg: 2, scope: !2352, file: !597, line: 974, type: !764)
!2357 = !DILocalVariable(name: "__n", arg: 3, scope: !2352, file: !597, line: 974, type: !55)
!2358 = !DILocation(line: 0, scope: !2352, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 46, column: 28, scope: !2347)
!2360 = !DILocation(line: 976, column: 11, scope: !2352, inlinedAt: !2359)
!2361 = !DILocation(line: 976, column: 10, scope: !2352, inlinedAt: !2359)
!2362 = !DILocation(line: 46, column: 7, scope: !2338)
!2363 = !DILocation(line: 49, column: 11, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !296, line: 49, column: 11)
!2365 = distinct !DILexicalBlock(scope: !2347, file: !296, line: 47, column: 5)
!2366 = !DILocation(line: 49, column: 36, scope: !2364)
!2367 = !DILocation(line: 49, column: 11, scope: !2365)
!2368 = !DILocation(line: 65, column: 16, scope: !2338)
!2369 = !DILocation(line: 71, column: 27, scope: !2338)
!2370 = !DILocation(line: 74, column: 33, scope: !2338)
!2371 = !DILocation(line: 76, column: 1, scope: !2338)
!2372 = !DILocation(line: 0, scope: !301)
!2373 = !DILocation(line: 40, column: 29, scope: !301)
!2374 = !DILocation(line: 41, column: 19, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !301, file: !302, line: 41, column: 7)
!2376 = !DILocation(line: 41, column: 7, scope: !301)
!2377 = !DILocation(line: 47, column: 3, scope: !301)
!2378 = !DILocation(line: 48, column: 3, scope: !301)
!2379 = !DILocation(line: 48, column: 13, scope: !301)
!2380 = !DILocalVariable(name: "ps", arg: 1, scope: !2381, file: !2382, line: 1135, type: !2385)
!2381 = distinct !DISubprogram(name: "mbszero", scope: !2382, file: !2382, line: 1135, type: !2383, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !2386)
!2382 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2383 = !DISubroutineType(types: !2384)
!2384 = !{null, !2385}
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!2386 = !{!2380}
!2387 = !DILocation(line: 0, scope: !2381, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 48, column: 18, scope: !301)
!2389 = !DILocalVariable(name: "__dest", arg: 1, scope: !2390, file: !1011, line: 57, type: !52)
!2390 = distinct !DISubprogram(name: "memset", scope: !1011, file: !1011, line: 57, type: !2391, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !2393)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!52, !52, !53, !55}
!2393 = !{!2389, !2394, !2395}
!2394 = !DILocalVariable(name: "__ch", arg: 2, scope: !2390, file: !1011, line: 57, type: !53)
!2395 = !DILocalVariable(name: "__len", arg: 3, scope: !2390, file: !1011, line: 57, type: !55)
!2396 = !DILocation(line: 0, scope: !2390, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 1137, column: 3, scope: !2381, inlinedAt: !2388)
!2398 = !DILocation(line: 59, column: 10, scope: !2390, inlinedAt: !2397)
!2399 = !DILocation(line: 49, column: 7, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !301, file: !302, line: 49, column: 7)
!2401 = !DILocation(line: 49, column: 39, scope: !2400)
!2402 = !DILocation(line: 49, column: 44, scope: !2400)
!2403 = !DILocation(line: 54, column: 1, scope: !301)
!2404 = !DISubprogram(name: "mbrtoc32", scope: !313, file: !313, line: 57, type: !2405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!55, !2407, !642, !55, !2409}
!2407 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2408)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2385)
!2410 = distinct !DISubprogram(name: "clone_quoting_options", scope: !338, file: !338, line: 113, type: !2411, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !2414)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!2413, !2413}
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!2414 = !{!2415, !2416, !2417}
!2415 = !DILocalVariable(name: "o", arg: 1, scope: !2410, file: !338, line: 113, type: !2413)
!2416 = !DILocalVariable(name: "saved_errno", scope: !2410, file: !338, line: 115, type: !53)
!2417 = !DILocalVariable(name: "p", scope: !2410, file: !338, line: 116, type: !2413)
!2418 = !DILocation(line: 0, scope: !2410)
!2419 = !DILocation(line: 115, column: 21, scope: !2410)
!2420 = !DILocation(line: 116, column: 40, scope: !2410)
!2421 = !DILocation(line: 116, column: 31, scope: !2410)
!2422 = !DILocation(line: 118, column: 9, scope: !2410)
!2423 = !DILocation(line: 119, column: 3, scope: !2410)
!2424 = distinct !DISubprogram(name: "get_quoting_style", scope: !338, file: !338, line: 124, type: !2425, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !2429)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!13, !2427}
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!2429 = !{!2430}
!2430 = !DILocalVariable(name: "o", arg: 1, scope: !2424, file: !338, line: 124, type: !2427)
!2431 = !DILocation(line: 0, scope: !2424)
!2432 = !DILocation(line: 126, column: 11, scope: !2424)
!2433 = !DILocation(line: 126, column: 46, scope: !2424)
!2434 = !{!2435, !540, i64 0}
!2435 = !{!"quoting_options", !540, i64 0, !647, i64 4, !540, i64 8, !539, i64 40, !539, i64 48}
!2436 = !DILocation(line: 126, column: 3, scope: !2424)
!2437 = distinct !DISubprogram(name: "set_quoting_style", scope: !338, file: !338, line: 132, type: !2438, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !2440)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{null, !2413, !13}
!2440 = !{!2441, !2442}
!2441 = !DILocalVariable(name: "o", arg: 1, scope: !2437, file: !338, line: 132, type: !2413)
!2442 = !DILocalVariable(name: "s", arg: 2, scope: !2437, file: !338, line: 132, type: !13)
!2443 = !DILocation(line: 0, scope: !2437)
!2444 = !DILocation(line: 134, column: 4, scope: !2437)
!2445 = !DILocation(line: 134, column: 39, scope: !2437)
!2446 = !DILocation(line: 134, column: 45, scope: !2437)
!2447 = !DILocation(line: 135, column: 1, scope: !2437)
!2448 = distinct !DISubprogram(name: "set_char_quoting", scope: !338, file: !338, line: 143, type: !2449, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !2451)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!53, !2413, !51, !53}
!2451 = !{!2452, !2453, !2454, !2455, !2456, !2458, !2459}
!2452 = !DILocalVariable(name: "o", arg: 1, scope: !2448, file: !338, line: 143, type: !2413)
!2453 = !DILocalVariable(name: "c", arg: 2, scope: !2448, file: !338, line: 143, type: !51)
!2454 = !DILocalVariable(name: "i", arg: 3, scope: !2448, file: !338, line: 143, type: !53)
!2455 = !DILocalVariable(name: "uc", scope: !2448, file: !338, line: 145, type: !60)
!2456 = !DILocalVariable(name: "p", scope: !2448, file: !338, line: 146, type: !2457)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2458 = !DILocalVariable(name: "shift", scope: !2448, file: !338, line: 148, type: !53)
!2459 = !DILocalVariable(name: "r", scope: !2448, file: !338, line: 149, type: !7)
!2460 = !DILocation(line: 0, scope: !2448)
!2461 = !DILocation(line: 147, column: 6, scope: !2448)
!2462 = !DILocation(line: 147, column: 62, scope: !2448)
!2463 = !DILocation(line: 147, column: 57, scope: !2448)
!2464 = !DILocation(line: 148, column: 15, scope: !2448)
!2465 = !DILocation(line: 149, column: 21, scope: !2448)
!2466 = !DILocation(line: 149, column: 24, scope: !2448)
!2467 = !DILocation(line: 149, column: 34, scope: !2448)
!2468 = !DILocation(line: 150, column: 13, scope: !2448)
!2469 = !DILocation(line: 150, column: 19, scope: !2448)
!2470 = !DILocation(line: 150, column: 24, scope: !2448)
!2471 = !DILocation(line: 150, column: 6, scope: !2448)
!2472 = !DILocation(line: 151, column: 3, scope: !2448)
!2473 = distinct !DISubprogram(name: "set_quoting_flags", scope: !338, file: !338, line: 159, type: !2474, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !2476)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!53, !2413, !53}
!2476 = !{!2477, !2478, !2479}
!2477 = !DILocalVariable(name: "o", arg: 1, scope: !2473, file: !338, line: 159, type: !2413)
!2478 = !DILocalVariable(name: "i", arg: 2, scope: !2473, file: !338, line: 159, type: !53)
!2479 = !DILocalVariable(name: "r", scope: !2473, file: !338, line: 163, type: !53)
!2480 = !DILocation(line: 0, scope: !2473)
!2481 = !DILocation(line: 161, column: 8, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2473, file: !338, line: 161, column: 7)
!2483 = !DILocation(line: 161, column: 7, scope: !2473)
!2484 = !DILocation(line: 163, column: 14, scope: !2473)
!2485 = !{!2435, !647, i64 4}
!2486 = !DILocation(line: 164, column: 12, scope: !2473)
!2487 = !DILocation(line: 165, column: 3, scope: !2473)
!2488 = distinct !DISubprogram(name: "set_custom_quoting", scope: !338, file: !338, line: 169, type: !2489, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !2491)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{null, !2413, !58, !58}
!2491 = !{!2492, !2493, !2494}
!2492 = !DILocalVariable(name: "o", arg: 1, scope: !2488, file: !338, line: 169, type: !2413)
!2493 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2488, file: !338, line: 170, type: !58)
!2494 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2488, file: !338, line: 170, type: !58)
!2495 = !DILocation(line: 0, scope: !2488)
!2496 = !DILocation(line: 172, column: 8, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2488, file: !338, line: 172, column: 7)
!2498 = !DILocation(line: 172, column: 7, scope: !2488)
!2499 = !DILocation(line: 174, column: 6, scope: !2488)
!2500 = !DILocation(line: 174, column: 12, scope: !2488)
!2501 = !DILocation(line: 175, column: 8, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2488, file: !338, line: 175, column: 7)
!2503 = !DILocation(line: 175, column: 19, scope: !2502)
!2504 = !DILocation(line: 176, column: 5, scope: !2502)
!2505 = !DILocation(line: 177, column: 6, scope: !2488)
!2506 = !DILocation(line: 177, column: 17, scope: !2488)
!2507 = !{!2435, !539, i64 40}
!2508 = !DILocation(line: 178, column: 6, scope: !2488)
!2509 = !DILocation(line: 178, column: 18, scope: !2488)
!2510 = !{!2435, !539, i64 48}
!2511 = !DILocation(line: 179, column: 1, scope: !2488)
!2512 = distinct !DISubprogram(name: "quotearg_buffer", scope: !338, file: !338, line: 774, type: !2513, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !2515)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!55, !50, !55, !58, !55, !2427}
!2515 = !{!2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523}
!2516 = !DILocalVariable(name: "buffer", arg: 1, scope: !2512, file: !338, line: 774, type: !50)
!2517 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2512, file: !338, line: 774, type: !55)
!2518 = !DILocalVariable(name: "arg", arg: 3, scope: !2512, file: !338, line: 775, type: !58)
!2519 = !DILocalVariable(name: "argsize", arg: 4, scope: !2512, file: !338, line: 775, type: !55)
!2520 = !DILocalVariable(name: "o", arg: 5, scope: !2512, file: !338, line: 776, type: !2427)
!2521 = !DILocalVariable(name: "p", scope: !2512, file: !338, line: 778, type: !2427)
!2522 = !DILocalVariable(name: "saved_errno", scope: !2512, file: !338, line: 779, type: !53)
!2523 = !DILocalVariable(name: "r", scope: !2512, file: !338, line: 780, type: !55)
!2524 = !DILocation(line: 0, scope: !2512)
!2525 = !DILocation(line: 778, column: 37, scope: !2512)
!2526 = !DILocation(line: 779, column: 21, scope: !2512)
!2527 = !DILocation(line: 781, column: 43, scope: !2512)
!2528 = !DILocation(line: 781, column: 53, scope: !2512)
!2529 = !DILocation(line: 781, column: 60, scope: !2512)
!2530 = !DILocation(line: 782, column: 43, scope: !2512)
!2531 = !DILocation(line: 782, column: 58, scope: !2512)
!2532 = !DILocation(line: 780, column: 14, scope: !2512)
!2533 = !DILocation(line: 783, column: 9, scope: !2512)
!2534 = !DILocation(line: 784, column: 3, scope: !2512)
!2535 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !338, file: !338, line: 251, type: !2536, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !2540)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!55, !50, !55, !58, !55, !13, !53, !2538, !58, !58}
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2540 = !{!2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2565, !2567, !2570, !2571, !2572, !2573, !2576, !2577, !2580, !2584, !2585, !2593, !2596, !2597, !2599, !2600, !2601, !2602}
!2541 = !DILocalVariable(name: "buffer", arg: 1, scope: !2535, file: !338, line: 251, type: !50)
!2542 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2535, file: !338, line: 251, type: !55)
!2543 = !DILocalVariable(name: "arg", arg: 3, scope: !2535, file: !338, line: 252, type: !58)
!2544 = !DILocalVariable(name: "argsize", arg: 4, scope: !2535, file: !338, line: 252, type: !55)
!2545 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2535, file: !338, line: 253, type: !13)
!2546 = !DILocalVariable(name: "flags", arg: 6, scope: !2535, file: !338, line: 253, type: !53)
!2547 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2535, file: !338, line: 254, type: !2538)
!2548 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2535, file: !338, line: 255, type: !58)
!2549 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2535, file: !338, line: 256, type: !58)
!2550 = !DILocalVariable(name: "unibyte_locale", scope: !2535, file: !338, line: 258, type: !80)
!2551 = !DILocalVariable(name: "len", scope: !2535, file: !338, line: 260, type: !55)
!2552 = !DILocalVariable(name: "orig_buffersize", scope: !2535, file: !338, line: 261, type: !55)
!2553 = !DILocalVariable(name: "quote_string", scope: !2535, file: !338, line: 262, type: !58)
!2554 = !DILocalVariable(name: "quote_string_len", scope: !2535, file: !338, line: 263, type: !55)
!2555 = !DILocalVariable(name: "backslash_escapes", scope: !2535, file: !338, line: 264, type: !80)
!2556 = !DILocalVariable(name: "elide_outer_quotes", scope: !2535, file: !338, line: 265, type: !80)
!2557 = !DILocalVariable(name: "encountered_single_quote", scope: !2535, file: !338, line: 266, type: !80)
!2558 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2535, file: !338, line: 267, type: !80)
!2559 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2535, file: !338, line: 309, type: !80)
!2560 = !DILocalVariable(name: "lq", scope: !2561, file: !338, line: 361, type: !58)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !338, line: 361, column: 11)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !338, line: 360, column: 13)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !338, line: 333, column: 7)
!2564 = distinct !DILexicalBlock(scope: !2535, file: !338, line: 312, column: 5)
!2565 = !DILocalVariable(name: "i", scope: !2566, file: !338, line: 395, type: !55)
!2566 = distinct !DILexicalBlock(scope: !2535, file: !338, line: 395, column: 3)
!2567 = !DILocalVariable(name: "is_right_quote", scope: !2568, file: !338, line: 397, type: !80)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !338, line: 396, column: 5)
!2569 = distinct !DILexicalBlock(scope: !2566, file: !338, line: 395, column: 3)
!2570 = !DILocalVariable(name: "escaping", scope: !2568, file: !338, line: 398, type: !80)
!2571 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2568, file: !338, line: 399, type: !80)
!2572 = !DILocalVariable(name: "c", scope: !2568, file: !338, line: 417, type: !60)
!2573 = !DILocalVariable(name: "m", scope: !2574, file: !338, line: 598, type: !55)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !338, line: 596, column: 11)
!2575 = distinct !DILexicalBlock(scope: !2568, file: !338, line: 419, column: 9)
!2576 = !DILocalVariable(name: "printable", scope: !2574, file: !338, line: 600, type: !80)
!2577 = !DILocalVariable(name: "mbs", scope: !2578, file: !338, line: 609, type: !383)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !338, line: 608, column: 15)
!2579 = distinct !DILexicalBlock(scope: !2574, file: !338, line: 602, column: 17)
!2580 = !DILocalVariable(name: "w", scope: !2581, file: !338, line: 618, type: !312)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !338, line: 617, column: 19)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !338, line: 616, column: 17)
!2583 = distinct !DILexicalBlock(scope: !2578, file: !338, line: 616, column: 17)
!2584 = !DILocalVariable(name: "bytes", scope: !2581, file: !338, line: 619, type: !55)
!2585 = !DILocalVariable(name: "j", scope: !2586, file: !338, line: 648, type: !55)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !338, line: 648, column: 29)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !338, line: 647, column: 27)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !338, line: 645, column: 29)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !338, line: 636, column: 23)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !338, line: 628, column: 30)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !338, line: 623, column: 30)
!2592 = distinct !DILexicalBlock(scope: !2581, file: !338, line: 621, column: 25)
!2593 = !DILocalVariable(name: "ilim", scope: !2594, file: !338, line: 674, type: !55)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !338, line: 671, column: 15)
!2595 = distinct !DILexicalBlock(scope: !2574, file: !338, line: 670, column: 17)
!2596 = !DILabel(scope: !2535, name: "process_input", file: !338, line: 308)
!2597 = !DILabel(scope: !2598, name: "c_and_shell_escape", file: !338, line: 502)
!2598 = distinct !DILexicalBlock(scope: !2575, file: !338, line: 478, column: 9)
!2599 = !DILabel(scope: !2598, name: "c_escape", file: !338, line: 507)
!2600 = !DILabel(scope: !2568, name: "store_escape", file: !338, line: 709)
!2601 = !DILabel(scope: !2568, name: "store_c", file: !338, line: 712)
!2602 = !DILabel(scope: !2535, name: "force_outer_quoting_style", file: !338, line: 753)
!2603 = !DILocation(line: 0, scope: !2535)
!2604 = !DILocation(line: 258, column: 25, scope: !2535)
!2605 = !DILocation(line: 258, column: 36, scope: !2535)
!2606 = !DILocation(line: 267, column: 3, scope: !2535)
!2607 = !DILocation(line: 261, column: 10, scope: !2535)
!2608 = !DILocation(line: 262, column: 15, scope: !2535)
!2609 = !DILocation(line: 263, column: 10, scope: !2535)
!2610 = !DILocation(line: 308, column: 2, scope: !2535)
!2611 = !DILocation(line: 311, column: 3, scope: !2535)
!2612 = !DILocation(line: 318, column: 11, scope: !2564)
!2613 = !DILocation(line: 319, column: 9, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !338, line: 319, column: 9)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !338, line: 319, column: 9)
!2616 = distinct !DILexicalBlock(scope: !2564, file: !338, line: 318, column: 11)
!2617 = !DILocation(line: 319, column: 9, scope: !2615)
!2618 = !DILocation(line: 0, scope: !374, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 357, column: 26, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !338, line: 335, column: 11)
!2621 = distinct !DILexicalBlock(scope: !2563, file: !338, line: 334, column: 13)
!2622 = !DILocation(line: 199, column: 29, scope: !374, inlinedAt: !2619)
!2623 = !DILocation(line: 201, column: 19, scope: !2624, inlinedAt: !2619)
!2624 = distinct !DILexicalBlock(scope: !374, file: !338, line: 201, column: 7)
!2625 = !DILocation(line: 201, column: 7, scope: !374, inlinedAt: !2619)
!2626 = !DILocation(line: 229, column: 3, scope: !374, inlinedAt: !2619)
!2627 = !DILocation(line: 230, column: 3, scope: !374, inlinedAt: !2619)
!2628 = !DILocation(line: 230, column: 13, scope: !374, inlinedAt: !2619)
!2629 = !DILocalVariable(name: "ps", arg: 1, scope: !2630, file: !2382, line: 1135, type: !2633)
!2630 = distinct !DISubprogram(name: "mbszero", scope: !2382, file: !2382, line: 1135, type: !2631, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !2634)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{null, !2633}
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!2634 = !{!2629}
!2635 = !DILocation(line: 0, scope: !2630, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 230, column: 18, scope: !374, inlinedAt: !2619)
!2637 = !DILocalVariable(name: "__dest", arg: 1, scope: !2638, file: !1011, line: 57, type: !52)
!2638 = distinct !DISubprogram(name: "memset", scope: !1011, file: !1011, line: 57, type: !2391, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !2639)
!2639 = !{!2637, !2640, !2641}
!2640 = !DILocalVariable(name: "__ch", arg: 2, scope: !2638, file: !1011, line: 57, type: !53)
!2641 = !DILocalVariable(name: "__len", arg: 3, scope: !2638, file: !1011, line: 57, type: !55)
!2642 = !DILocation(line: 0, scope: !2638, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 1137, column: 3, scope: !2630, inlinedAt: !2636)
!2644 = !DILocation(line: 59, column: 10, scope: !2638, inlinedAt: !2643)
!2645 = !DILocation(line: 231, column: 7, scope: !2646, inlinedAt: !2619)
!2646 = distinct !DILexicalBlock(scope: !374, file: !338, line: 231, column: 7)
!2647 = !DILocation(line: 231, column: 40, scope: !2646, inlinedAt: !2619)
!2648 = !DILocation(line: 231, column: 45, scope: !2646, inlinedAt: !2619)
!2649 = !DILocation(line: 235, column: 1, scope: !374, inlinedAt: !2619)
!2650 = !DILocation(line: 0, scope: !374, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 358, column: 27, scope: !2620)
!2652 = !DILocation(line: 199, column: 29, scope: !374, inlinedAt: !2651)
!2653 = !DILocation(line: 201, column: 19, scope: !2624, inlinedAt: !2651)
!2654 = !DILocation(line: 201, column: 7, scope: !374, inlinedAt: !2651)
!2655 = !DILocation(line: 229, column: 3, scope: !374, inlinedAt: !2651)
!2656 = !DILocation(line: 230, column: 3, scope: !374, inlinedAt: !2651)
!2657 = !DILocation(line: 230, column: 13, scope: !374, inlinedAt: !2651)
!2658 = !DILocation(line: 0, scope: !2630, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 230, column: 18, scope: !374, inlinedAt: !2651)
!2660 = !DILocation(line: 0, scope: !2638, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 1137, column: 3, scope: !2630, inlinedAt: !2659)
!2662 = !DILocation(line: 59, column: 10, scope: !2638, inlinedAt: !2661)
!2663 = !DILocation(line: 231, column: 7, scope: !2646, inlinedAt: !2651)
!2664 = !DILocation(line: 231, column: 40, scope: !2646, inlinedAt: !2651)
!2665 = !DILocation(line: 231, column: 45, scope: !2646, inlinedAt: !2651)
!2666 = !DILocation(line: 235, column: 1, scope: !374, inlinedAt: !2651)
!2667 = !DILocation(line: 360, column: 13, scope: !2563)
!2668 = !DILocation(line: 0, scope: !2561)
!2669 = !DILocation(line: 361, column: 45, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2561, file: !338, line: 361, column: 11)
!2671 = !DILocation(line: 361, column: 11, scope: !2561)
!2672 = !DILocation(line: 362, column: 13, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !338, line: 362, column: 13)
!2674 = distinct !DILexicalBlock(scope: !2670, file: !338, line: 362, column: 13)
!2675 = !DILocation(line: 362, column: 13, scope: !2674)
!2676 = !DILocation(line: 361, column: 52, scope: !2670)
!2677 = distinct !{!2677, !2671, !2678, !613}
!2678 = !DILocation(line: 362, column: 13, scope: !2561)
!2679 = !DILocation(line: 260, column: 10, scope: !2535)
!2680 = !DILocation(line: 365, column: 28, scope: !2563)
!2681 = !DILocation(line: 367, column: 7, scope: !2564)
!2682 = !DILocation(line: 370, column: 7, scope: !2564)
!2683 = !DILocation(line: 376, column: 11, scope: !2564)
!2684 = !DILocation(line: 381, column: 11, scope: !2564)
!2685 = !DILocation(line: 382, column: 9, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !338, line: 382, column: 9)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !338, line: 382, column: 9)
!2688 = distinct !DILexicalBlock(scope: !2564, file: !338, line: 381, column: 11)
!2689 = !DILocation(line: 382, column: 9, scope: !2687)
!2690 = !DILocation(line: 389, column: 7, scope: !2564)
!2691 = !DILocation(line: 392, column: 7, scope: !2564)
!2692 = !DILocation(line: 0, scope: !2566)
!2693 = !DILocation(line: 395, column: 8, scope: !2566)
!2694 = !DILocation(line: 395, column: 34, scope: !2569)
!2695 = !DILocation(line: 395, column: 26, scope: !2569)
!2696 = !DILocation(line: 395, column: 48, scope: !2569)
!2697 = !DILocation(line: 395, column: 55, scope: !2569)
!2698 = !DILocation(line: 395, column: 3, scope: !2566)
!2699 = !DILocation(line: 395, column: 67, scope: !2569)
!2700 = !DILocation(line: 0, scope: !2568)
!2701 = !DILocation(line: 402, column: 11, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2568, file: !338, line: 401, column: 11)
!2703 = !DILocation(line: 404, column: 17, scope: !2702)
!2704 = !DILocation(line: 405, column: 39, scope: !2702)
!2705 = !DILocation(line: 409, column: 32, scope: !2702)
!2706 = !DILocation(line: 405, column: 19, scope: !2702)
!2707 = !DILocation(line: 405, column: 15, scope: !2702)
!2708 = !DILocation(line: 410, column: 11, scope: !2702)
!2709 = !DILocation(line: 410, column: 25, scope: !2702)
!2710 = !DILocalVariable(name: "__s1", arg: 1, scope: !2711, file: !597, line: 974, type: !764)
!2711 = distinct !DISubprogram(name: "memeq", scope: !597, file: !597, line: 974, type: !2353, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !2712)
!2712 = !{!2710, !2713, !2714}
!2713 = !DILocalVariable(name: "__s2", arg: 2, scope: !2711, file: !597, line: 974, type: !764)
!2714 = !DILocalVariable(name: "__n", arg: 3, scope: !2711, file: !597, line: 974, type: !55)
!2715 = !DILocation(line: 0, scope: !2711, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 410, column: 14, scope: !2702)
!2717 = !DILocation(line: 976, column: 11, scope: !2711, inlinedAt: !2716)
!2718 = !DILocation(line: 976, column: 10, scope: !2711, inlinedAt: !2716)
!2719 = !DILocation(line: 401, column: 11, scope: !2568)
!2720 = !DILocation(line: 417, column: 25, scope: !2568)
!2721 = !DILocation(line: 418, column: 7, scope: !2568)
!2722 = !DILocation(line: 421, column: 15, scope: !2575)
!2723 = !DILocation(line: 423, column: 15, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !338, line: 423, column: 15)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !338, line: 422, column: 13)
!2726 = distinct !DILexicalBlock(scope: !2575, file: !338, line: 421, column: 15)
!2727 = !DILocation(line: 423, column: 15, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2724, file: !338, line: 423, column: 15)
!2729 = !DILocation(line: 423, column: 15, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !338, line: 423, column: 15)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !338, line: 423, column: 15)
!2732 = distinct !DILexicalBlock(scope: !2728, file: !338, line: 423, column: 15)
!2733 = !DILocation(line: 423, column: 15, scope: !2731)
!2734 = !DILocation(line: 423, column: 15, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !338, line: 423, column: 15)
!2736 = distinct !DILexicalBlock(scope: !2732, file: !338, line: 423, column: 15)
!2737 = !DILocation(line: 423, column: 15, scope: !2736)
!2738 = !DILocation(line: 423, column: 15, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !338, line: 423, column: 15)
!2740 = distinct !DILexicalBlock(scope: !2732, file: !338, line: 423, column: 15)
!2741 = !DILocation(line: 423, column: 15, scope: !2740)
!2742 = !DILocation(line: 423, column: 15, scope: !2732)
!2743 = !DILocation(line: 423, column: 15, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !338, line: 423, column: 15)
!2745 = distinct !DILexicalBlock(scope: !2724, file: !338, line: 423, column: 15)
!2746 = !DILocation(line: 423, column: 15, scope: !2745)
!2747 = !DILocation(line: 431, column: 19, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2725, file: !338, line: 430, column: 19)
!2749 = !DILocation(line: 431, column: 24, scope: !2748)
!2750 = !DILocation(line: 431, column: 28, scope: !2748)
!2751 = !DILocation(line: 431, column: 38, scope: !2748)
!2752 = !DILocation(line: 431, column: 48, scope: !2748)
!2753 = !DILocation(line: 431, column: 59, scope: !2748)
!2754 = !DILocation(line: 433, column: 19, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !338, line: 433, column: 19)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !338, line: 433, column: 19)
!2757 = distinct !DILexicalBlock(scope: !2748, file: !338, line: 432, column: 17)
!2758 = !DILocation(line: 433, column: 19, scope: !2756)
!2759 = !DILocation(line: 434, column: 19, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !338, line: 434, column: 19)
!2761 = distinct !DILexicalBlock(scope: !2757, file: !338, line: 434, column: 19)
!2762 = !DILocation(line: 434, column: 19, scope: !2761)
!2763 = !DILocation(line: 435, column: 17, scope: !2757)
!2764 = !DILocation(line: 442, column: 20, scope: !2726)
!2765 = !DILocation(line: 447, column: 11, scope: !2575)
!2766 = !DILocation(line: 450, column: 19, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2575, file: !338, line: 448, column: 13)
!2768 = !DILocation(line: 456, column: 19, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2767, file: !338, line: 455, column: 19)
!2770 = !DILocation(line: 456, column: 24, scope: !2769)
!2771 = !DILocation(line: 456, column: 28, scope: !2769)
!2772 = !DILocation(line: 456, column: 38, scope: !2769)
!2773 = !DILocation(line: 456, column: 47, scope: !2769)
!2774 = !DILocation(line: 456, column: 41, scope: !2769)
!2775 = !DILocation(line: 456, column: 52, scope: !2769)
!2776 = !DILocation(line: 455, column: 19, scope: !2767)
!2777 = !DILocation(line: 457, column: 25, scope: !2769)
!2778 = !DILocation(line: 457, column: 17, scope: !2769)
!2779 = !DILocation(line: 464, column: 25, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2769, file: !338, line: 458, column: 19)
!2781 = !DILocation(line: 468, column: 21, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !338, line: 468, column: 21)
!2783 = distinct !DILexicalBlock(scope: !2780, file: !338, line: 468, column: 21)
!2784 = !DILocation(line: 468, column: 21, scope: !2783)
!2785 = !DILocation(line: 469, column: 21, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !338, line: 469, column: 21)
!2787 = distinct !DILexicalBlock(scope: !2780, file: !338, line: 469, column: 21)
!2788 = !DILocation(line: 469, column: 21, scope: !2787)
!2789 = !DILocation(line: 470, column: 21, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !338, line: 470, column: 21)
!2791 = distinct !DILexicalBlock(scope: !2780, file: !338, line: 470, column: 21)
!2792 = !DILocation(line: 470, column: 21, scope: !2791)
!2793 = !DILocation(line: 471, column: 21, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !338, line: 471, column: 21)
!2795 = distinct !DILexicalBlock(scope: !2780, file: !338, line: 471, column: 21)
!2796 = !DILocation(line: 471, column: 21, scope: !2795)
!2797 = !DILocation(line: 472, column: 21, scope: !2780)
!2798 = !DILocation(line: 482, column: 33, scope: !2598)
!2799 = !DILocation(line: 483, column: 33, scope: !2598)
!2800 = !DILocation(line: 485, column: 33, scope: !2598)
!2801 = !DILocation(line: 486, column: 33, scope: !2598)
!2802 = !DILocation(line: 487, column: 33, scope: !2598)
!2803 = !DILocation(line: 490, column: 17, scope: !2598)
!2804 = !DILocation(line: 492, column: 21, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2806, file: !338, line: 491, column: 15)
!2806 = distinct !DILexicalBlock(scope: !2598, file: !338, line: 490, column: 17)
!2807 = !DILocation(line: 499, column: 35, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2598, file: !338, line: 499, column: 17)
!2809 = !DILocation(line: 499, column: 57, scope: !2808)
!2810 = !DILocation(line: 0, scope: !2598)
!2811 = !DILocation(line: 502, column: 11, scope: !2598)
!2812 = !DILocation(line: 504, column: 17, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2598, file: !338, line: 503, column: 17)
!2814 = !DILocation(line: 507, column: 11, scope: !2598)
!2815 = !DILocation(line: 508, column: 17, scope: !2598)
!2816 = !DILocation(line: 517, column: 15, scope: !2575)
!2817 = !DILocation(line: 517, column: 40, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2575, file: !338, line: 517, column: 15)
!2819 = !DILocation(line: 517, column: 47, scope: !2818)
!2820 = !DILocation(line: 517, column: 18, scope: !2818)
!2821 = !DILocation(line: 521, column: 17, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2575, file: !338, line: 521, column: 15)
!2823 = !DILocation(line: 521, column: 15, scope: !2575)
!2824 = !DILocation(line: 525, column: 11, scope: !2575)
!2825 = !DILocation(line: 537, column: 15, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2575, file: !338, line: 536, column: 15)
!2827 = !DILocation(line: 536, column: 15, scope: !2575)
!2828 = !DILocation(line: 544, column: 15, scope: !2575)
!2829 = !DILocation(line: 546, column: 19, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !338, line: 545, column: 13)
!2831 = distinct !DILexicalBlock(scope: !2575, file: !338, line: 544, column: 15)
!2832 = !DILocation(line: 549, column: 19, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2830, file: !338, line: 549, column: 19)
!2834 = !DILocation(line: 549, column: 30, scope: !2833)
!2835 = !DILocation(line: 558, column: 15, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !338, line: 558, column: 15)
!2837 = distinct !DILexicalBlock(scope: !2830, file: !338, line: 558, column: 15)
!2838 = !DILocation(line: 558, column: 15, scope: !2837)
!2839 = !DILocation(line: 559, column: 15, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !338, line: 559, column: 15)
!2841 = distinct !DILexicalBlock(scope: !2830, file: !338, line: 559, column: 15)
!2842 = !DILocation(line: 559, column: 15, scope: !2841)
!2843 = !DILocation(line: 560, column: 15, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !338, line: 560, column: 15)
!2845 = distinct !DILexicalBlock(scope: !2830, file: !338, line: 560, column: 15)
!2846 = !DILocation(line: 560, column: 15, scope: !2845)
!2847 = !DILocation(line: 562, column: 13, scope: !2830)
!2848 = !DILocation(line: 602, column: 17, scope: !2574)
!2849 = !DILocation(line: 0, scope: !2574)
!2850 = !DILocation(line: 605, column: 29, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2579, file: !338, line: 603, column: 15)
!2852 = !DILocation(line: 605, column: 41, scope: !2851)
!2853 = !DILocation(line: 670, column: 23, scope: !2595)
!2854 = !DILocation(line: 609, column: 17, scope: !2578)
!2855 = !DILocation(line: 609, column: 27, scope: !2578)
!2856 = !DILocation(line: 0, scope: !2630, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 609, column: 32, scope: !2578)
!2858 = !DILocation(line: 0, scope: !2638, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 1137, column: 3, scope: !2630, inlinedAt: !2857)
!2860 = !DILocation(line: 59, column: 10, scope: !2638, inlinedAt: !2859)
!2861 = !DILocation(line: 613, column: 29, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2578, file: !338, line: 613, column: 21)
!2863 = !DILocation(line: 613, column: 21, scope: !2578)
!2864 = !DILocation(line: 614, column: 29, scope: !2862)
!2865 = !DILocation(line: 614, column: 19, scope: !2862)
!2866 = !DILocation(line: 618, column: 21, scope: !2581)
!2867 = !DILocation(line: 620, column: 54, scope: !2581)
!2868 = !DILocation(line: 0, scope: !2581)
!2869 = !DILocation(line: 619, column: 36, scope: !2581)
!2870 = !DILocation(line: 621, column: 25, scope: !2581)
!2871 = !DILocation(line: 631, column: 38, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2590, file: !338, line: 629, column: 23)
!2873 = !DILocation(line: 631, column: 48, scope: !2872)
!2874 = !DILocation(line: 665, column: 19, scope: !2582)
!2875 = !DILocation(line: 666, column: 15, scope: !2579)
!2876 = !DILocation(line: 626, column: 25, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2591, file: !338, line: 624, column: 23)
!2878 = !DILocation(line: 631, column: 51, scope: !2872)
!2879 = !DILocation(line: 631, column: 25, scope: !2872)
!2880 = !DILocation(line: 632, column: 28, scope: !2872)
!2881 = !DILocation(line: 631, column: 34, scope: !2872)
!2882 = distinct !{!2882, !2879, !2880, !613}
!2883 = !DILocation(line: 646, column: 29, scope: !2588)
!2884 = !DILocation(line: 0, scope: !2586)
!2885 = !DILocation(line: 649, column: 49, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2586, file: !338, line: 648, column: 29)
!2887 = !DILocation(line: 649, column: 39, scope: !2886)
!2888 = !DILocation(line: 649, column: 31, scope: !2886)
!2889 = !DILocation(line: 648, column: 60, scope: !2886)
!2890 = !DILocation(line: 648, column: 50, scope: !2886)
!2891 = !DILocation(line: 648, column: 29, scope: !2586)
!2892 = distinct !{!2892, !2891, !2893, !613}
!2893 = !DILocation(line: 654, column: 33, scope: !2586)
!2894 = !DILocation(line: 657, column: 43, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2589, file: !338, line: 657, column: 29)
!2896 = !DILocalVariable(name: "wc", arg: 1, scope: !2897, file: !2898, line: 865, type: !2901)
!2897 = distinct !DISubprogram(name: "c32isprint", scope: !2898, file: !2898, line: 865, type: !2899, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !2903)
!2898 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!53, !2901}
!2901 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2902, line: 20, baseType: !7)
!2902 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2903 = !{!2896}
!2904 = !DILocation(line: 0, scope: !2897, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 657, column: 31, scope: !2895)
!2906 = !DILocation(line: 871, column: 10, scope: !2897, inlinedAt: !2905)
!2907 = !DILocation(line: 657, column: 31, scope: !2895)
!2908 = !DILocation(line: 664, column: 23, scope: !2581)
!2909 = !DILocation(line: 753, column: 2, scope: !2535)
!2910 = !DILocation(line: 756, column: 51, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2535, file: !338, line: 756, column: 7)
!2912 = !DILocation(line: 670, column: 19, scope: !2595)
!2913 = !DILocation(line: 670, column: 45, scope: !2595)
!2914 = !DILocation(line: 674, column: 33, scope: !2594)
!2915 = !DILocation(line: 0, scope: !2594)
!2916 = !DILocation(line: 676, column: 17, scope: !2594)
!2917 = !DILocation(line: 398, column: 12, scope: !2568)
!2918 = !DILocation(line: 678, column: 43, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !338, line: 678, column: 25)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !338, line: 677, column: 19)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !338, line: 676, column: 17)
!2922 = distinct !DILexicalBlock(scope: !2594, file: !338, line: 676, column: 17)
!2923 = !DILocation(line: 680, column: 25, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !338, line: 680, column: 25)
!2925 = distinct !DILexicalBlock(scope: !2919, file: !338, line: 679, column: 23)
!2926 = !DILocation(line: 680, column: 25, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2924, file: !338, line: 680, column: 25)
!2928 = !DILocation(line: 680, column: 25, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !338, line: 680, column: 25)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !338, line: 680, column: 25)
!2931 = distinct !DILexicalBlock(scope: !2927, file: !338, line: 680, column: 25)
!2932 = !DILocation(line: 680, column: 25, scope: !2930)
!2933 = !DILocation(line: 680, column: 25, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !338, line: 680, column: 25)
!2935 = distinct !DILexicalBlock(scope: !2931, file: !338, line: 680, column: 25)
!2936 = !DILocation(line: 680, column: 25, scope: !2935)
!2937 = !DILocation(line: 680, column: 25, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !338, line: 680, column: 25)
!2939 = distinct !DILexicalBlock(scope: !2931, file: !338, line: 680, column: 25)
!2940 = !DILocation(line: 680, column: 25, scope: !2939)
!2941 = !DILocation(line: 680, column: 25, scope: !2931)
!2942 = !DILocation(line: 680, column: 25, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2944, file: !338, line: 680, column: 25)
!2944 = distinct !DILexicalBlock(scope: !2924, file: !338, line: 680, column: 25)
!2945 = !DILocation(line: 680, column: 25, scope: !2944)
!2946 = !DILocation(line: 681, column: 25, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2948, file: !338, line: 681, column: 25)
!2948 = distinct !DILexicalBlock(scope: !2925, file: !338, line: 681, column: 25)
!2949 = !DILocation(line: 681, column: 25, scope: !2948)
!2950 = !DILocation(line: 682, column: 25, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !338, line: 682, column: 25)
!2952 = distinct !DILexicalBlock(scope: !2925, file: !338, line: 682, column: 25)
!2953 = !DILocation(line: 682, column: 25, scope: !2952)
!2954 = !DILocation(line: 683, column: 38, scope: !2925)
!2955 = !DILocation(line: 683, column: 33, scope: !2925)
!2956 = !DILocation(line: 684, column: 23, scope: !2925)
!2957 = !DILocation(line: 685, column: 30, scope: !2919)
!2958 = !DILocation(line: 687, column: 25, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !338, line: 687, column: 25)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !338, line: 687, column: 25)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !338, line: 686, column: 23)
!2962 = distinct !DILexicalBlock(scope: !2919, file: !338, line: 685, column: 30)
!2963 = !DILocation(line: 687, column: 25, scope: !2960)
!2964 = !DILocation(line: 689, column: 23, scope: !2961)
!2965 = !DILocation(line: 690, column: 35, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2920, file: !338, line: 690, column: 25)
!2967 = !DILocation(line: 690, column: 30, scope: !2966)
!2968 = !DILocation(line: 690, column: 25, scope: !2920)
!2969 = !DILocation(line: 692, column: 21, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !338, line: 692, column: 21)
!2971 = distinct !DILexicalBlock(scope: !2920, file: !338, line: 692, column: 21)
!2972 = !DILocation(line: 692, column: 21, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !338, line: 692, column: 21)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !338, line: 692, column: 21)
!2975 = distinct !DILexicalBlock(scope: !2970, file: !338, line: 692, column: 21)
!2976 = !DILocation(line: 692, column: 21, scope: !2974)
!2977 = !DILocation(line: 692, column: 21, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !338, line: 692, column: 21)
!2979 = distinct !DILexicalBlock(scope: !2975, file: !338, line: 692, column: 21)
!2980 = !DILocation(line: 692, column: 21, scope: !2979)
!2981 = !DILocation(line: 692, column: 21, scope: !2975)
!2982 = !DILocation(line: 0, scope: !2920)
!2983 = !DILocation(line: 693, column: 21, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !338, line: 693, column: 21)
!2985 = distinct !DILexicalBlock(scope: !2920, file: !338, line: 693, column: 21)
!2986 = !DILocation(line: 693, column: 21, scope: !2985)
!2987 = !DILocation(line: 694, column: 25, scope: !2920)
!2988 = !DILocation(line: 676, column: 17, scope: !2921)
!2989 = distinct !{!2989, !2990, !2991}
!2990 = !DILocation(line: 676, column: 17, scope: !2922)
!2991 = !DILocation(line: 695, column: 19, scope: !2922)
!2992 = !DILocation(line: 409, column: 30, scope: !2702)
!2993 = !DILocation(line: 702, column: 34, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2568, file: !338, line: 702, column: 11)
!2995 = !DILocation(line: 704, column: 14, scope: !2994)
!2996 = !DILocation(line: 705, column: 14, scope: !2994)
!2997 = !DILocation(line: 705, column: 35, scope: !2994)
!2998 = !DILocation(line: 705, column: 17, scope: !2994)
!2999 = !DILocation(line: 705, column: 47, scope: !2994)
!3000 = !DILocation(line: 705, column: 65, scope: !2994)
!3001 = !DILocation(line: 706, column: 11, scope: !2994)
!3002 = !DILocation(line: 702, column: 11, scope: !2568)
!3003 = !DILocation(line: 395, column: 15, scope: !2566)
!3004 = !DILocation(line: 709, column: 5, scope: !2568)
!3005 = !DILocation(line: 710, column: 7, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2568, file: !338, line: 710, column: 7)
!3007 = !DILocation(line: 710, column: 7, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3006, file: !338, line: 710, column: 7)
!3009 = !DILocation(line: 710, column: 7, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !338, line: 710, column: 7)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !338, line: 710, column: 7)
!3012 = distinct !DILexicalBlock(scope: !3008, file: !338, line: 710, column: 7)
!3013 = !DILocation(line: 710, column: 7, scope: !3011)
!3014 = !DILocation(line: 710, column: 7, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !338, line: 710, column: 7)
!3016 = distinct !DILexicalBlock(scope: !3012, file: !338, line: 710, column: 7)
!3017 = !DILocation(line: 710, column: 7, scope: !3016)
!3018 = !DILocation(line: 710, column: 7, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !338, line: 710, column: 7)
!3020 = distinct !DILexicalBlock(scope: !3012, file: !338, line: 710, column: 7)
!3021 = !DILocation(line: 710, column: 7, scope: !3020)
!3022 = !DILocation(line: 710, column: 7, scope: !3012)
!3023 = !DILocation(line: 710, column: 7, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !338, line: 710, column: 7)
!3025 = distinct !DILexicalBlock(scope: !3006, file: !338, line: 710, column: 7)
!3026 = !DILocation(line: 710, column: 7, scope: !3025)
!3027 = !DILocation(line: 712, column: 5, scope: !2568)
!3028 = !DILocation(line: 713, column: 7, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !338, line: 713, column: 7)
!3030 = distinct !DILexicalBlock(scope: !2568, file: !338, line: 713, column: 7)
!3031 = !DILocation(line: 417, column: 21, scope: !2568)
!3032 = !DILocation(line: 713, column: 7, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !338, line: 713, column: 7)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !338, line: 713, column: 7)
!3035 = distinct !DILexicalBlock(scope: !3029, file: !338, line: 713, column: 7)
!3036 = !DILocation(line: 713, column: 7, scope: !3034)
!3037 = !DILocation(line: 713, column: 7, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !338, line: 713, column: 7)
!3039 = distinct !DILexicalBlock(scope: !3035, file: !338, line: 713, column: 7)
!3040 = !DILocation(line: 713, column: 7, scope: !3039)
!3041 = !DILocation(line: 713, column: 7, scope: !3035)
!3042 = !DILocation(line: 714, column: 7, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !338, line: 714, column: 7)
!3044 = distinct !DILexicalBlock(scope: !2568, file: !338, line: 714, column: 7)
!3045 = !DILocation(line: 714, column: 7, scope: !3044)
!3046 = !DILocation(line: 716, column: 11, scope: !2568)
!3047 = !DILocation(line: 718, column: 5, scope: !2569)
!3048 = !DILocation(line: 395, column: 82, scope: !2569)
!3049 = !DILocation(line: 395, column: 3, scope: !2569)
!3050 = distinct !{!3050, !2698, !3051, !613}
!3051 = !DILocation(line: 718, column: 5, scope: !2566)
!3052 = !DILocation(line: 720, column: 11, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !2535, file: !338, line: 720, column: 7)
!3054 = !DILocation(line: 720, column: 16, scope: !3053)
!3055 = !DILocation(line: 728, column: 51, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !2535, file: !338, line: 728, column: 7)
!3057 = !DILocation(line: 731, column: 11, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3056, file: !338, line: 730, column: 5)
!3059 = !DILocation(line: 732, column: 16, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3058, file: !338, line: 731, column: 11)
!3061 = !DILocation(line: 732, column: 9, scope: !3060)
!3062 = !DILocation(line: 736, column: 18, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3060, file: !338, line: 736, column: 16)
!3064 = !DILocation(line: 736, column: 29, scope: !3063)
!3065 = !DILocation(line: 745, column: 7, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !2535, file: !338, line: 745, column: 7)
!3067 = !DILocation(line: 745, column: 20, scope: !3066)
!3068 = !DILocation(line: 746, column: 12, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !338, line: 746, column: 5)
!3070 = distinct !DILexicalBlock(scope: !3066, file: !338, line: 746, column: 5)
!3071 = !DILocation(line: 746, column: 5, scope: !3070)
!3072 = !DILocation(line: 747, column: 7, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !338, line: 747, column: 7)
!3074 = distinct !DILexicalBlock(scope: !3069, file: !338, line: 747, column: 7)
!3075 = !DILocation(line: 747, column: 7, scope: !3074)
!3076 = !DILocation(line: 746, column: 39, scope: !3069)
!3077 = distinct !{!3077, !3071, !3078, !613}
!3078 = !DILocation(line: 747, column: 7, scope: !3070)
!3079 = !DILocation(line: 749, column: 11, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !2535, file: !338, line: 749, column: 7)
!3081 = !DILocation(line: 749, column: 7, scope: !2535)
!3082 = !DILocation(line: 750, column: 5, scope: !3080)
!3083 = !DILocation(line: 750, column: 17, scope: !3080)
!3084 = !DILocation(line: 756, column: 21, scope: !2911)
!3085 = !DILocation(line: 760, column: 42, scope: !2535)
!3086 = !DILocation(line: 758, column: 10, scope: !2535)
!3087 = !DILocation(line: 758, column: 3, scope: !2535)
!3088 = !DILocation(line: 762, column: 1, scope: !2535)
!3089 = !DISubprogram(name: "iswprint", scope: !3090, file: !3090, line: 120, type: !2899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!3090 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3091 = distinct !DISubprogram(name: "quotearg_alloc", scope: !338, file: !338, line: 788, type: !3092, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3094)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!50, !58, !55, !2427}
!3094 = !{!3095, !3096, !3097}
!3095 = !DILocalVariable(name: "arg", arg: 1, scope: !3091, file: !338, line: 788, type: !58)
!3096 = !DILocalVariable(name: "argsize", arg: 2, scope: !3091, file: !338, line: 788, type: !55)
!3097 = !DILocalVariable(name: "o", arg: 3, scope: !3091, file: !338, line: 789, type: !2427)
!3098 = !DILocation(line: 0, scope: !3091)
!3099 = !DILocalVariable(name: "arg", arg: 1, scope: !3100, file: !338, line: 801, type: !58)
!3100 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !338, file: !338, line: 801, type: !3101, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!50, !58, !55, !474, !2427}
!3103 = !{!3099, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111}
!3104 = !DILocalVariable(name: "argsize", arg: 2, scope: !3100, file: !338, line: 801, type: !55)
!3105 = !DILocalVariable(name: "size", arg: 3, scope: !3100, file: !338, line: 801, type: !474)
!3106 = !DILocalVariable(name: "o", arg: 4, scope: !3100, file: !338, line: 802, type: !2427)
!3107 = !DILocalVariable(name: "p", scope: !3100, file: !338, line: 804, type: !2427)
!3108 = !DILocalVariable(name: "saved_errno", scope: !3100, file: !338, line: 805, type: !53)
!3109 = !DILocalVariable(name: "flags", scope: !3100, file: !338, line: 807, type: !53)
!3110 = !DILocalVariable(name: "bufsize", scope: !3100, file: !338, line: 808, type: !55)
!3111 = !DILocalVariable(name: "buf", scope: !3100, file: !338, line: 812, type: !50)
!3112 = !DILocation(line: 0, scope: !3100, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 791, column: 10, scope: !3091)
!3114 = !DILocation(line: 804, column: 37, scope: !3100, inlinedAt: !3113)
!3115 = !DILocation(line: 805, column: 21, scope: !3100, inlinedAt: !3113)
!3116 = !DILocation(line: 807, column: 18, scope: !3100, inlinedAt: !3113)
!3117 = !DILocation(line: 807, column: 24, scope: !3100, inlinedAt: !3113)
!3118 = !DILocation(line: 808, column: 72, scope: !3100, inlinedAt: !3113)
!3119 = !DILocation(line: 809, column: 53, scope: !3100, inlinedAt: !3113)
!3120 = !DILocation(line: 810, column: 49, scope: !3100, inlinedAt: !3113)
!3121 = !DILocation(line: 811, column: 49, scope: !3100, inlinedAt: !3113)
!3122 = !DILocation(line: 808, column: 20, scope: !3100, inlinedAt: !3113)
!3123 = !DILocation(line: 811, column: 62, scope: !3100, inlinedAt: !3113)
!3124 = !DILocation(line: 812, column: 15, scope: !3100, inlinedAt: !3113)
!3125 = !DILocation(line: 813, column: 60, scope: !3100, inlinedAt: !3113)
!3126 = !DILocation(line: 815, column: 32, scope: !3100, inlinedAt: !3113)
!3127 = !DILocation(line: 815, column: 47, scope: !3100, inlinedAt: !3113)
!3128 = !DILocation(line: 813, column: 3, scope: !3100, inlinedAt: !3113)
!3129 = !DILocation(line: 816, column: 9, scope: !3100, inlinedAt: !3113)
!3130 = !DILocation(line: 791, column: 3, scope: !3091)
!3131 = !DILocation(line: 0, scope: !3100)
!3132 = !DILocation(line: 804, column: 37, scope: !3100)
!3133 = !DILocation(line: 805, column: 21, scope: !3100)
!3134 = !DILocation(line: 807, column: 18, scope: !3100)
!3135 = !DILocation(line: 807, column: 27, scope: !3100)
!3136 = !DILocation(line: 807, column: 24, scope: !3100)
!3137 = !DILocation(line: 808, column: 72, scope: !3100)
!3138 = !DILocation(line: 809, column: 53, scope: !3100)
!3139 = !DILocation(line: 810, column: 49, scope: !3100)
!3140 = !DILocation(line: 811, column: 49, scope: !3100)
!3141 = !DILocation(line: 808, column: 20, scope: !3100)
!3142 = !DILocation(line: 811, column: 62, scope: !3100)
!3143 = !DILocation(line: 812, column: 15, scope: !3100)
!3144 = !DILocation(line: 813, column: 60, scope: !3100)
!3145 = !DILocation(line: 815, column: 32, scope: !3100)
!3146 = !DILocation(line: 815, column: 47, scope: !3100)
!3147 = !DILocation(line: 813, column: 3, scope: !3100)
!3148 = !DILocation(line: 816, column: 9, scope: !3100)
!3149 = !DILocation(line: 817, column: 7, scope: !3100)
!3150 = !DILocation(line: 818, column: 11, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3100, file: !338, line: 817, column: 7)
!3152 = !DILocation(line: 818, column: 5, scope: !3151)
!3153 = !DILocation(line: 819, column: 3, scope: !3100)
!3154 = distinct !DISubprogram(name: "quotearg_free", scope: !338, file: !338, line: 837, type: !291, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3155)
!3155 = !{!3156, !3157}
!3156 = !DILocalVariable(name: "sv", scope: !3154, file: !338, line: 839, type: !397)
!3157 = !DILocalVariable(name: "i", scope: !3158, file: !338, line: 840, type: !53)
!3158 = distinct !DILexicalBlock(scope: !3154, file: !338, line: 840, column: 3)
!3159 = !DILocation(line: 839, column: 24, scope: !3154)
!3160 = !DILocation(line: 0, scope: !3154)
!3161 = !DILocation(line: 0, scope: !3158)
!3162 = !DILocation(line: 840, column: 21, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3158, file: !338, line: 840, column: 3)
!3164 = !DILocation(line: 840, column: 3, scope: !3158)
!3165 = !DILocation(line: 842, column: 13, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3154, file: !338, line: 842, column: 7)
!3167 = !{!3168, !539, i64 8}
!3168 = !{!"slotvec", !809, i64 0, !539, i64 8}
!3169 = !DILocation(line: 842, column: 17, scope: !3166)
!3170 = !DILocation(line: 842, column: 7, scope: !3154)
!3171 = !DILocation(line: 841, column: 17, scope: !3163)
!3172 = !DILocation(line: 841, column: 5, scope: !3163)
!3173 = !DILocation(line: 840, column: 32, scope: !3163)
!3174 = distinct !{!3174, !3164, !3175, !613}
!3175 = !DILocation(line: 841, column: 20, scope: !3158)
!3176 = !DILocation(line: 844, column: 7, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3166, file: !338, line: 843, column: 5)
!3178 = !DILocation(line: 845, column: 21, scope: !3177)
!3179 = !{!3168, !809, i64 0}
!3180 = !DILocation(line: 846, column: 20, scope: !3177)
!3181 = !DILocation(line: 847, column: 5, scope: !3177)
!3182 = !DILocation(line: 848, column: 10, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3154, file: !338, line: 848, column: 7)
!3184 = !DILocation(line: 848, column: 7, scope: !3154)
!3185 = !DILocation(line: 850, column: 13, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3183, file: !338, line: 849, column: 5)
!3187 = !DILocation(line: 850, column: 7, scope: !3186)
!3188 = !DILocation(line: 851, column: 15, scope: !3186)
!3189 = !DILocation(line: 852, column: 5, scope: !3186)
!3190 = !DILocation(line: 853, column: 10, scope: !3154)
!3191 = !DILocation(line: 854, column: 1, scope: !3154)
!3192 = distinct !DISubprogram(name: "quotearg_n", scope: !338, file: !338, line: 919, type: !754, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3193)
!3193 = !{!3194, !3195}
!3194 = !DILocalVariable(name: "n", arg: 1, scope: !3192, file: !338, line: 919, type: !53)
!3195 = !DILocalVariable(name: "arg", arg: 2, scope: !3192, file: !338, line: 919, type: !58)
!3196 = !DILocation(line: 0, scope: !3192)
!3197 = !DILocation(line: 921, column: 10, scope: !3192)
!3198 = !DILocation(line: 921, column: 3, scope: !3192)
!3199 = distinct !DISubprogram(name: "quotearg_n_options", scope: !338, file: !338, line: 866, type: !3200, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3202)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!50, !53, !58, !55, !2427}
!3202 = !{!3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3213, !3214, !3216, !3217, !3218}
!3203 = !DILocalVariable(name: "n", arg: 1, scope: !3199, file: !338, line: 866, type: !53)
!3204 = !DILocalVariable(name: "arg", arg: 2, scope: !3199, file: !338, line: 866, type: !58)
!3205 = !DILocalVariable(name: "argsize", arg: 3, scope: !3199, file: !338, line: 866, type: !55)
!3206 = !DILocalVariable(name: "options", arg: 4, scope: !3199, file: !338, line: 867, type: !2427)
!3207 = !DILocalVariable(name: "saved_errno", scope: !3199, file: !338, line: 869, type: !53)
!3208 = !DILocalVariable(name: "sv", scope: !3199, file: !338, line: 871, type: !397)
!3209 = !DILocalVariable(name: "nslots_max", scope: !3199, file: !338, line: 873, type: !53)
!3210 = !DILocalVariable(name: "preallocated", scope: !3211, file: !338, line: 879, type: !80)
!3211 = distinct !DILexicalBlock(scope: !3212, file: !338, line: 878, column: 5)
!3212 = distinct !DILexicalBlock(scope: !3199, file: !338, line: 877, column: 7)
!3213 = !DILocalVariable(name: "new_nslots", scope: !3211, file: !338, line: 880, type: !208)
!3214 = !DILocalVariable(name: "size", scope: !3215, file: !338, line: 891, type: !55)
!3215 = distinct !DILexicalBlock(scope: !3199, file: !338, line: 890, column: 3)
!3216 = !DILocalVariable(name: "val", scope: !3215, file: !338, line: 892, type: !50)
!3217 = !DILocalVariable(name: "flags", scope: !3215, file: !338, line: 894, type: !53)
!3218 = !DILocalVariable(name: "qsize", scope: !3215, file: !338, line: 895, type: !55)
!3219 = !DILocation(line: 0, scope: !3199)
!3220 = !DILocation(line: 869, column: 21, scope: !3199)
!3221 = !DILocation(line: 871, column: 24, scope: !3199)
!3222 = !DILocation(line: 874, column: 17, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3199, file: !338, line: 874, column: 7)
!3224 = !DILocation(line: 875, column: 5, scope: !3223)
!3225 = !DILocation(line: 877, column: 7, scope: !3212)
!3226 = !DILocation(line: 877, column: 14, scope: !3212)
!3227 = !DILocation(line: 877, column: 7, scope: !3199)
!3228 = !DILocation(line: 879, column: 31, scope: !3211)
!3229 = !DILocation(line: 0, scope: !3211)
!3230 = !DILocation(line: 880, column: 7, scope: !3211)
!3231 = !DILocation(line: 880, column: 26, scope: !3211)
!3232 = !DILocation(line: 880, column: 13, scope: !3211)
!3233 = !DILocation(line: 882, column: 31, scope: !3211)
!3234 = !DILocation(line: 883, column: 33, scope: !3211)
!3235 = !DILocation(line: 883, column: 42, scope: !3211)
!3236 = !DILocation(line: 883, column: 31, scope: !3211)
!3237 = !DILocation(line: 882, column: 22, scope: !3211)
!3238 = !DILocation(line: 882, column: 15, scope: !3211)
!3239 = !DILocation(line: 884, column: 11, scope: !3211)
!3240 = !DILocation(line: 885, column: 15, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3211, file: !338, line: 884, column: 11)
!3242 = !{i64 0, i64 8, !808, i64 8, i64 8, !538}
!3243 = !DILocation(line: 885, column: 9, scope: !3241)
!3244 = !DILocation(line: 886, column: 20, scope: !3211)
!3245 = !DILocation(line: 886, column: 18, scope: !3211)
!3246 = !DILocation(line: 886, column: 15, scope: !3211)
!3247 = !DILocation(line: 886, column: 32, scope: !3211)
!3248 = !DILocation(line: 886, column: 43, scope: !3211)
!3249 = !DILocation(line: 886, column: 53, scope: !3211)
!3250 = !DILocation(line: 0, scope: !2638, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 886, column: 7, scope: !3211)
!3252 = !DILocation(line: 59, column: 10, scope: !2638, inlinedAt: !3251)
!3253 = !DILocation(line: 887, column: 16, scope: !3211)
!3254 = !DILocation(line: 887, column: 14, scope: !3211)
!3255 = !DILocation(line: 888, column: 5, scope: !3212)
!3256 = !DILocation(line: 888, column: 5, scope: !3211)
!3257 = !DILocation(line: 891, column: 19, scope: !3215)
!3258 = !DILocation(line: 891, column: 25, scope: !3215)
!3259 = !DILocation(line: 0, scope: !3215)
!3260 = !DILocation(line: 892, column: 23, scope: !3215)
!3261 = !DILocation(line: 894, column: 26, scope: !3215)
!3262 = !DILocation(line: 894, column: 32, scope: !3215)
!3263 = !DILocation(line: 896, column: 55, scope: !3215)
!3264 = !DILocation(line: 897, column: 46, scope: !3215)
!3265 = !DILocation(line: 898, column: 55, scope: !3215)
!3266 = !DILocation(line: 899, column: 55, scope: !3215)
!3267 = !DILocation(line: 895, column: 20, scope: !3215)
!3268 = !DILocation(line: 901, column: 14, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3215, file: !338, line: 901, column: 9)
!3270 = !DILocation(line: 901, column: 9, scope: !3215)
!3271 = !DILocation(line: 903, column: 35, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3269, file: !338, line: 902, column: 7)
!3273 = !DILocation(line: 903, column: 20, scope: !3272)
!3274 = !DILocation(line: 904, column: 17, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3272, file: !338, line: 904, column: 13)
!3276 = !DILocation(line: 904, column: 13, scope: !3272)
!3277 = !DILocation(line: 905, column: 11, scope: !3275)
!3278 = !DILocation(line: 906, column: 27, scope: !3272)
!3279 = !DILocation(line: 906, column: 19, scope: !3272)
!3280 = !DILocation(line: 907, column: 69, scope: !3272)
!3281 = !DILocation(line: 909, column: 44, scope: !3272)
!3282 = !DILocation(line: 910, column: 44, scope: !3272)
!3283 = !DILocation(line: 907, column: 9, scope: !3272)
!3284 = !DILocation(line: 911, column: 7, scope: !3272)
!3285 = !DILocation(line: 913, column: 11, scope: !3215)
!3286 = !DILocation(line: 914, column: 5, scope: !3215)
!3287 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !338, file: !338, line: 925, type: !3288, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3290)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!50, !53, !58, !55}
!3290 = !{!3291, !3292, !3293}
!3291 = !DILocalVariable(name: "n", arg: 1, scope: !3287, file: !338, line: 925, type: !53)
!3292 = !DILocalVariable(name: "arg", arg: 2, scope: !3287, file: !338, line: 925, type: !58)
!3293 = !DILocalVariable(name: "argsize", arg: 3, scope: !3287, file: !338, line: 925, type: !55)
!3294 = !DILocation(line: 0, scope: !3287)
!3295 = !DILocation(line: 927, column: 10, scope: !3287)
!3296 = !DILocation(line: 927, column: 3, scope: !3287)
!3297 = distinct !DISubprogram(name: "quotearg", scope: !338, file: !338, line: 931, type: !758, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3298)
!3298 = !{!3299}
!3299 = !DILocalVariable(name: "arg", arg: 1, scope: !3297, file: !338, line: 931, type: !58)
!3300 = !DILocation(line: 0, scope: !3297)
!3301 = !DILocation(line: 0, scope: !3192, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 933, column: 10, scope: !3297)
!3303 = !DILocation(line: 921, column: 10, scope: !3192, inlinedAt: !3302)
!3304 = !DILocation(line: 933, column: 3, scope: !3297)
!3305 = distinct !DISubprogram(name: "quotearg_mem", scope: !338, file: !338, line: 937, type: !3306, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3308)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!50, !58, !55}
!3308 = !{!3309, !3310}
!3309 = !DILocalVariable(name: "arg", arg: 1, scope: !3305, file: !338, line: 937, type: !58)
!3310 = !DILocalVariable(name: "argsize", arg: 2, scope: !3305, file: !338, line: 937, type: !55)
!3311 = !DILocation(line: 0, scope: !3305)
!3312 = !DILocation(line: 0, scope: !3287, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 939, column: 10, scope: !3305)
!3314 = !DILocation(line: 927, column: 10, scope: !3287, inlinedAt: !3313)
!3315 = !DILocation(line: 939, column: 3, scope: !3305)
!3316 = distinct !DISubprogram(name: "quotearg_n_style", scope: !338, file: !338, line: 943, type: !3317, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3319)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!50, !53, !13, !58}
!3319 = !{!3320, !3321, !3322, !3323}
!3320 = !DILocalVariable(name: "n", arg: 1, scope: !3316, file: !338, line: 943, type: !53)
!3321 = !DILocalVariable(name: "s", arg: 2, scope: !3316, file: !338, line: 943, type: !13)
!3322 = !DILocalVariable(name: "arg", arg: 3, scope: !3316, file: !338, line: 943, type: !58)
!3323 = !DILocalVariable(name: "o", scope: !3316, file: !338, line: 945, type: !2428)
!3324 = !DILocation(line: 0, scope: !3316)
!3325 = !DILocation(line: 945, column: 3, scope: !3316)
!3326 = !DILocation(line: 945, column: 32, scope: !3316)
!3327 = !{!3328}
!3328 = distinct !{!3328, !3329, !"quoting_options_from_style: argument 0"}
!3329 = distinct !{!3329, !"quoting_options_from_style"}
!3330 = !DILocation(line: 945, column: 36, scope: !3316)
!3331 = !DILocalVariable(name: "style", arg: 1, scope: !3332, file: !338, line: 183, type: !13)
!3332 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !338, file: !338, line: 183, type: !3333, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3335)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!355, !13}
!3335 = !{!3331, !3336}
!3336 = !DILocalVariable(name: "o", scope: !3332, file: !338, line: 185, type: !355)
!3337 = !DILocation(line: 0, scope: !3332, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 945, column: 36, scope: !3316)
!3339 = !DILocation(line: 185, column: 26, scope: !3332, inlinedAt: !3338)
!3340 = !DILocation(line: 186, column: 13, scope: !3341, inlinedAt: !3338)
!3341 = distinct !DILexicalBlock(scope: !3332, file: !338, line: 186, column: 7)
!3342 = !DILocation(line: 186, column: 7, scope: !3332, inlinedAt: !3338)
!3343 = !DILocation(line: 187, column: 5, scope: !3341, inlinedAt: !3338)
!3344 = !DILocation(line: 188, column: 5, scope: !3332, inlinedAt: !3338)
!3345 = !DILocation(line: 188, column: 11, scope: !3332, inlinedAt: !3338)
!3346 = !DILocation(line: 946, column: 10, scope: !3316)
!3347 = !DILocation(line: 947, column: 1, scope: !3316)
!3348 = !DILocation(line: 946, column: 3, scope: !3316)
!3349 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !338, file: !338, line: 950, type: !3350, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3352)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!50, !53, !13, !58, !55}
!3352 = !{!3353, !3354, !3355, !3356, !3357}
!3353 = !DILocalVariable(name: "n", arg: 1, scope: !3349, file: !338, line: 950, type: !53)
!3354 = !DILocalVariable(name: "s", arg: 2, scope: !3349, file: !338, line: 950, type: !13)
!3355 = !DILocalVariable(name: "arg", arg: 3, scope: !3349, file: !338, line: 951, type: !58)
!3356 = !DILocalVariable(name: "argsize", arg: 4, scope: !3349, file: !338, line: 951, type: !55)
!3357 = !DILocalVariable(name: "o", scope: !3349, file: !338, line: 953, type: !2428)
!3358 = !DILocation(line: 0, scope: !3349)
!3359 = !DILocation(line: 953, column: 3, scope: !3349)
!3360 = !DILocation(line: 953, column: 32, scope: !3349)
!3361 = !{!3362}
!3362 = distinct !{!3362, !3363, !"quoting_options_from_style: argument 0"}
!3363 = distinct !{!3363, !"quoting_options_from_style"}
!3364 = !DILocation(line: 953, column: 36, scope: !3349)
!3365 = !DILocation(line: 0, scope: !3332, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 953, column: 36, scope: !3349)
!3367 = !DILocation(line: 185, column: 26, scope: !3332, inlinedAt: !3366)
!3368 = !DILocation(line: 186, column: 13, scope: !3341, inlinedAt: !3366)
!3369 = !DILocation(line: 186, column: 7, scope: !3332, inlinedAt: !3366)
!3370 = !DILocation(line: 187, column: 5, scope: !3341, inlinedAt: !3366)
!3371 = !DILocation(line: 188, column: 5, scope: !3332, inlinedAt: !3366)
!3372 = !DILocation(line: 188, column: 11, scope: !3332, inlinedAt: !3366)
!3373 = !DILocation(line: 954, column: 10, scope: !3349)
!3374 = !DILocation(line: 955, column: 1, scope: !3349)
!3375 = !DILocation(line: 954, column: 3, scope: !3349)
!3376 = distinct !DISubprogram(name: "quotearg_style", scope: !338, file: !338, line: 958, type: !3377, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3379)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!50, !13, !58}
!3379 = !{!3380, !3381}
!3380 = !DILocalVariable(name: "s", arg: 1, scope: !3376, file: !338, line: 958, type: !13)
!3381 = !DILocalVariable(name: "arg", arg: 2, scope: !3376, file: !338, line: 958, type: !58)
!3382 = !DILocation(line: 0, scope: !3376)
!3383 = !DILocation(line: 0, scope: !3316, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 960, column: 10, scope: !3376)
!3385 = !DILocation(line: 945, column: 3, scope: !3316, inlinedAt: !3384)
!3386 = !DILocation(line: 945, column: 32, scope: !3316, inlinedAt: !3384)
!3387 = !{!3388}
!3388 = distinct !{!3388, !3389, !"quoting_options_from_style: argument 0"}
!3389 = distinct !{!3389, !"quoting_options_from_style"}
!3390 = !DILocation(line: 945, column: 36, scope: !3316, inlinedAt: !3384)
!3391 = !DILocation(line: 0, scope: !3332, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 945, column: 36, scope: !3316, inlinedAt: !3384)
!3393 = !DILocation(line: 185, column: 26, scope: !3332, inlinedAt: !3392)
!3394 = !DILocation(line: 186, column: 13, scope: !3341, inlinedAt: !3392)
!3395 = !DILocation(line: 186, column: 7, scope: !3332, inlinedAt: !3392)
!3396 = !DILocation(line: 187, column: 5, scope: !3341, inlinedAt: !3392)
!3397 = !DILocation(line: 188, column: 5, scope: !3332, inlinedAt: !3392)
!3398 = !DILocation(line: 188, column: 11, scope: !3332, inlinedAt: !3392)
!3399 = !DILocation(line: 946, column: 10, scope: !3316, inlinedAt: !3384)
!3400 = !DILocation(line: 947, column: 1, scope: !3316, inlinedAt: !3384)
!3401 = !DILocation(line: 960, column: 3, scope: !3376)
!3402 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !338, file: !338, line: 964, type: !3403, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3405)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!50, !13, !58, !55}
!3405 = !{!3406, !3407, !3408}
!3406 = !DILocalVariable(name: "s", arg: 1, scope: !3402, file: !338, line: 964, type: !13)
!3407 = !DILocalVariable(name: "arg", arg: 2, scope: !3402, file: !338, line: 964, type: !58)
!3408 = !DILocalVariable(name: "argsize", arg: 3, scope: !3402, file: !338, line: 964, type: !55)
!3409 = !DILocation(line: 0, scope: !3402)
!3410 = !DILocation(line: 0, scope: !3349, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 966, column: 10, scope: !3402)
!3412 = !DILocation(line: 953, column: 3, scope: !3349, inlinedAt: !3411)
!3413 = !DILocation(line: 953, column: 32, scope: !3349, inlinedAt: !3411)
!3414 = !{!3415}
!3415 = distinct !{!3415, !3416, !"quoting_options_from_style: argument 0"}
!3416 = distinct !{!3416, !"quoting_options_from_style"}
!3417 = !DILocation(line: 953, column: 36, scope: !3349, inlinedAt: !3411)
!3418 = !DILocation(line: 0, scope: !3332, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 953, column: 36, scope: !3349, inlinedAt: !3411)
!3420 = !DILocation(line: 185, column: 26, scope: !3332, inlinedAt: !3419)
!3421 = !DILocation(line: 186, column: 13, scope: !3341, inlinedAt: !3419)
!3422 = !DILocation(line: 186, column: 7, scope: !3332, inlinedAt: !3419)
!3423 = !DILocation(line: 187, column: 5, scope: !3341, inlinedAt: !3419)
!3424 = !DILocation(line: 188, column: 5, scope: !3332, inlinedAt: !3419)
!3425 = !DILocation(line: 188, column: 11, scope: !3332, inlinedAt: !3419)
!3426 = !DILocation(line: 954, column: 10, scope: !3349, inlinedAt: !3411)
!3427 = !DILocation(line: 955, column: 1, scope: !3349, inlinedAt: !3411)
!3428 = !DILocation(line: 966, column: 3, scope: !3402)
!3429 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !338, file: !338, line: 970, type: !3430, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3432)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!50, !58, !55, !51}
!3432 = !{!3433, !3434, !3435, !3436}
!3433 = !DILocalVariable(name: "arg", arg: 1, scope: !3429, file: !338, line: 970, type: !58)
!3434 = !DILocalVariable(name: "argsize", arg: 2, scope: !3429, file: !338, line: 970, type: !55)
!3435 = !DILocalVariable(name: "ch", arg: 3, scope: !3429, file: !338, line: 970, type: !51)
!3436 = !DILocalVariable(name: "options", scope: !3429, file: !338, line: 972, type: !355)
!3437 = !DILocation(line: 0, scope: !3429)
!3438 = !DILocation(line: 972, column: 3, scope: !3429)
!3439 = !DILocation(line: 972, column: 26, scope: !3429)
!3440 = !DILocation(line: 973, column: 13, scope: !3429)
!3441 = !{i64 0, i64 4, !655, i64 4, i64 4, !646, i64 8, i64 32, !655, i64 40, i64 8, !538, i64 48, i64 8, !538}
!3442 = !DILocation(line: 0, scope: !2448, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 974, column: 3, scope: !3429)
!3444 = !DILocation(line: 147, column: 62, scope: !2448, inlinedAt: !3443)
!3445 = !DILocation(line: 147, column: 57, scope: !2448, inlinedAt: !3443)
!3446 = !DILocation(line: 148, column: 15, scope: !2448, inlinedAt: !3443)
!3447 = !DILocation(line: 149, column: 21, scope: !2448, inlinedAt: !3443)
!3448 = !DILocation(line: 149, column: 24, scope: !2448, inlinedAt: !3443)
!3449 = !DILocation(line: 149, column: 34, scope: !2448, inlinedAt: !3443)
!3450 = !DILocation(line: 150, column: 19, scope: !2448, inlinedAt: !3443)
!3451 = !DILocation(line: 150, column: 24, scope: !2448, inlinedAt: !3443)
!3452 = !DILocation(line: 150, column: 6, scope: !2448, inlinedAt: !3443)
!3453 = !DILocation(line: 975, column: 10, scope: !3429)
!3454 = !DILocation(line: 976, column: 1, scope: !3429)
!3455 = !DILocation(line: 975, column: 3, scope: !3429)
!3456 = distinct !DISubprogram(name: "quotearg_char", scope: !338, file: !338, line: 979, type: !3457, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3459)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!50, !58, !51}
!3459 = !{!3460, !3461}
!3460 = !DILocalVariable(name: "arg", arg: 1, scope: !3456, file: !338, line: 979, type: !58)
!3461 = !DILocalVariable(name: "ch", arg: 2, scope: !3456, file: !338, line: 979, type: !51)
!3462 = !DILocation(line: 0, scope: !3456)
!3463 = !DILocation(line: 0, scope: !3429, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 981, column: 10, scope: !3456)
!3465 = !DILocation(line: 972, column: 3, scope: !3429, inlinedAt: !3464)
!3466 = !DILocation(line: 972, column: 26, scope: !3429, inlinedAt: !3464)
!3467 = !DILocation(line: 973, column: 13, scope: !3429, inlinedAt: !3464)
!3468 = !DILocation(line: 0, scope: !2448, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 974, column: 3, scope: !3429, inlinedAt: !3464)
!3470 = !DILocation(line: 147, column: 62, scope: !2448, inlinedAt: !3469)
!3471 = !DILocation(line: 147, column: 57, scope: !2448, inlinedAt: !3469)
!3472 = !DILocation(line: 148, column: 15, scope: !2448, inlinedAt: !3469)
!3473 = !DILocation(line: 149, column: 21, scope: !2448, inlinedAt: !3469)
!3474 = !DILocation(line: 149, column: 24, scope: !2448, inlinedAt: !3469)
!3475 = !DILocation(line: 149, column: 34, scope: !2448, inlinedAt: !3469)
!3476 = !DILocation(line: 150, column: 19, scope: !2448, inlinedAt: !3469)
!3477 = !DILocation(line: 150, column: 24, scope: !2448, inlinedAt: !3469)
!3478 = !DILocation(line: 150, column: 6, scope: !2448, inlinedAt: !3469)
!3479 = !DILocation(line: 975, column: 10, scope: !3429, inlinedAt: !3464)
!3480 = !DILocation(line: 976, column: 1, scope: !3429, inlinedAt: !3464)
!3481 = !DILocation(line: 981, column: 3, scope: !3456)
!3482 = distinct !DISubprogram(name: "quotearg_colon", scope: !338, file: !338, line: 985, type: !758, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3483)
!3483 = !{!3484}
!3484 = !DILocalVariable(name: "arg", arg: 1, scope: !3482, file: !338, line: 985, type: !58)
!3485 = !DILocation(line: 0, scope: !3482)
!3486 = !DILocation(line: 0, scope: !3456, inlinedAt: !3487)
!3487 = distinct !DILocation(line: 987, column: 10, scope: !3482)
!3488 = !DILocation(line: 0, scope: !3429, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 981, column: 10, scope: !3456, inlinedAt: !3487)
!3490 = !DILocation(line: 972, column: 3, scope: !3429, inlinedAt: !3489)
!3491 = !DILocation(line: 972, column: 26, scope: !3429, inlinedAt: !3489)
!3492 = !DILocation(line: 973, column: 13, scope: !3429, inlinedAt: !3489)
!3493 = !DILocation(line: 0, scope: !2448, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 974, column: 3, scope: !3429, inlinedAt: !3489)
!3495 = !DILocation(line: 147, column: 57, scope: !2448, inlinedAt: !3494)
!3496 = !DILocation(line: 149, column: 21, scope: !2448, inlinedAt: !3494)
!3497 = !DILocation(line: 150, column: 6, scope: !2448, inlinedAt: !3494)
!3498 = !DILocation(line: 975, column: 10, scope: !3429, inlinedAt: !3489)
!3499 = !DILocation(line: 976, column: 1, scope: !3429, inlinedAt: !3489)
!3500 = !DILocation(line: 987, column: 3, scope: !3482)
!3501 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !338, file: !338, line: 991, type: !3306, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3502)
!3502 = !{!3503, !3504}
!3503 = !DILocalVariable(name: "arg", arg: 1, scope: !3501, file: !338, line: 991, type: !58)
!3504 = !DILocalVariable(name: "argsize", arg: 2, scope: !3501, file: !338, line: 991, type: !55)
!3505 = !DILocation(line: 0, scope: !3501)
!3506 = !DILocation(line: 0, scope: !3429, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 993, column: 10, scope: !3501)
!3508 = !DILocation(line: 972, column: 3, scope: !3429, inlinedAt: !3507)
!3509 = !DILocation(line: 972, column: 26, scope: !3429, inlinedAt: !3507)
!3510 = !DILocation(line: 973, column: 13, scope: !3429, inlinedAt: !3507)
!3511 = !DILocation(line: 0, scope: !2448, inlinedAt: !3512)
!3512 = distinct !DILocation(line: 974, column: 3, scope: !3429, inlinedAt: !3507)
!3513 = !DILocation(line: 147, column: 57, scope: !2448, inlinedAt: !3512)
!3514 = !DILocation(line: 149, column: 21, scope: !2448, inlinedAt: !3512)
!3515 = !DILocation(line: 150, column: 6, scope: !2448, inlinedAt: !3512)
!3516 = !DILocation(line: 975, column: 10, scope: !3429, inlinedAt: !3507)
!3517 = !DILocation(line: 976, column: 1, scope: !3429, inlinedAt: !3507)
!3518 = !DILocation(line: 993, column: 3, scope: !3501)
!3519 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !338, file: !338, line: 997, type: !3317, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3520)
!3520 = !{!3521, !3522, !3523, !3524}
!3521 = !DILocalVariable(name: "n", arg: 1, scope: !3519, file: !338, line: 997, type: !53)
!3522 = !DILocalVariable(name: "s", arg: 2, scope: !3519, file: !338, line: 997, type: !13)
!3523 = !DILocalVariable(name: "arg", arg: 3, scope: !3519, file: !338, line: 997, type: !58)
!3524 = !DILocalVariable(name: "options", scope: !3519, file: !338, line: 999, type: !355)
!3525 = !DILocation(line: 0, scope: !3519)
!3526 = !DILocation(line: 999, column: 3, scope: !3519)
!3527 = !DILocation(line: 999, column: 26, scope: !3519)
!3528 = !DILocation(line: 0, scope: !3332, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 1000, column: 13, scope: !3519)
!3530 = !DILocation(line: 186, column: 13, scope: !3341, inlinedAt: !3529)
!3531 = !DILocation(line: 186, column: 7, scope: !3332, inlinedAt: !3529)
!3532 = !DILocation(line: 187, column: 5, scope: !3341, inlinedAt: !3529)
!3533 = !{!3534}
!3534 = distinct !{!3534, !3535, !"quoting_options_from_style: argument 0"}
!3535 = distinct !{!3535, !"quoting_options_from_style"}
!3536 = !DILocation(line: 1000, column: 13, scope: !3519)
!3537 = !DILocation(line: 0, scope: !2448, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 1001, column: 3, scope: !3519)
!3539 = !DILocation(line: 147, column: 57, scope: !2448, inlinedAt: !3538)
!3540 = !DILocation(line: 149, column: 21, scope: !2448, inlinedAt: !3538)
!3541 = !DILocation(line: 150, column: 6, scope: !2448, inlinedAt: !3538)
!3542 = !DILocation(line: 1002, column: 10, scope: !3519)
!3543 = !DILocation(line: 1003, column: 1, scope: !3519)
!3544 = !DILocation(line: 1002, column: 3, scope: !3519)
!3545 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !338, file: !338, line: 1006, type: !3546, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3548)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!50, !53, !58, !58, !58}
!3548 = !{!3549, !3550, !3551, !3552}
!3549 = !DILocalVariable(name: "n", arg: 1, scope: !3545, file: !338, line: 1006, type: !53)
!3550 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3545, file: !338, line: 1006, type: !58)
!3551 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3545, file: !338, line: 1007, type: !58)
!3552 = !DILocalVariable(name: "arg", arg: 4, scope: !3545, file: !338, line: 1007, type: !58)
!3553 = !DILocation(line: 0, scope: !3545)
!3554 = !DILocalVariable(name: "n", arg: 1, scope: !3555, file: !338, line: 1014, type: !53)
!3555 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !338, file: !338, line: 1014, type: !3556, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3558)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!50, !53, !58, !58, !58, !55}
!3558 = !{!3554, !3559, !3560, !3561, !3562, !3563}
!3559 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3555, file: !338, line: 1014, type: !58)
!3560 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3555, file: !338, line: 1015, type: !58)
!3561 = !DILocalVariable(name: "arg", arg: 4, scope: !3555, file: !338, line: 1016, type: !58)
!3562 = !DILocalVariable(name: "argsize", arg: 5, scope: !3555, file: !338, line: 1016, type: !55)
!3563 = !DILocalVariable(name: "o", scope: !3555, file: !338, line: 1018, type: !355)
!3564 = !DILocation(line: 0, scope: !3555, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 1009, column: 10, scope: !3545)
!3566 = !DILocation(line: 1018, column: 3, scope: !3555, inlinedAt: !3565)
!3567 = !DILocation(line: 1018, column: 26, scope: !3555, inlinedAt: !3565)
!3568 = !DILocation(line: 1018, column: 30, scope: !3555, inlinedAt: !3565)
!3569 = !DILocation(line: 0, scope: !2488, inlinedAt: !3570)
!3570 = distinct !DILocation(line: 1019, column: 3, scope: !3555, inlinedAt: !3565)
!3571 = !DILocation(line: 174, column: 6, scope: !2488, inlinedAt: !3570)
!3572 = !DILocation(line: 174, column: 12, scope: !2488, inlinedAt: !3570)
!3573 = !DILocation(line: 175, column: 8, scope: !2502, inlinedAt: !3570)
!3574 = !DILocation(line: 175, column: 19, scope: !2502, inlinedAt: !3570)
!3575 = !DILocation(line: 176, column: 5, scope: !2502, inlinedAt: !3570)
!3576 = !DILocation(line: 177, column: 6, scope: !2488, inlinedAt: !3570)
!3577 = !DILocation(line: 177, column: 17, scope: !2488, inlinedAt: !3570)
!3578 = !DILocation(line: 178, column: 6, scope: !2488, inlinedAt: !3570)
!3579 = !DILocation(line: 178, column: 18, scope: !2488, inlinedAt: !3570)
!3580 = !DILocation(line: 1020, column: 10, scope: !3555, inlinedAt: !3565)
!3581 = !DILocation(line: 1021, column: 1, scope: !3555, inlinedAt: !3565)
!3582 = !DILocation(line: 1009, column: 3, scope: !3545)
!3583 = !DILocation(line: 0, scope: !3555)
!3584 = !DILocation(line: 1018, column: 3, scope: !3555)
!3585 = !DILocation(line: 1018, column: 26, scope: !3555)
!3586 = !DILocation(line: 1018, column: 30, scope: !3555)
!3587 = !DILocation(line: 0, scope: !2488, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 1019, column: 3, scope: !3555)
!3589 = !DILocation(line: 174, column: 6, scope: !2488, inlinedAt: !3588)
!3590 = !DILocation(line: 174, column: 12, scope: !2488, inlinedAt: !3588)
!3591 = !DILocation(line: 175, column: 8, scope: !2502, inlinedAt: !3588)
!3592 = !DILocation(line: 175, column: 19, scope: !2502, inlinedAt: !3588)
!3593 = !DILocation(line: 176, column: 5, scope: !2502, inlinedAt: !3588)
!3594 = !DILocation(line: 177, column: 6, scope: !2488, inlinedAt: !3588)
!3595 = !DILocation(line: 177, column: 17, scope: !2488, inlinedAt: !3588)
!3596 = !DILocation(line: 178, column: 6, scope: !2488, inlinedAt: !3588)
!3597 = !DILocation(line: 178, column: 18, scope: !2488, inlinedAt: !3588)
!3598 = !DILocation(line: 1020, column: 10, scope: !3555)
!3599 = !DILocation(line: 1021, column: 1, scope: !3555)
!3600 = !DILocation(line: 1020, column: 3, scope: !3555)
!3601 = distinct !DISubprogram(name: "quotearg_custom", scope: !338, file: !338, line: 1024, type: !3602, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3604)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!50, !58, !58, !58}
!3604 = !{!3605, !3606, !3607}
!3605 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3601, file: !338, line: 1024, type: !58)
!3606 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3601, file: !338, line: 1024, type: !58)
!3607 = !DILocalVariable(name: "arg", arg: 3, scope: !3601, file: !338, line: 1025, type: !58)
!3608 = !DILocation(line: 0, scope: !3601)
!3609 = !DILocation(line: 0, scope: !3545, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 1027, column: 10, scope: !3601)
!3611 = !DILocation(line: 0, scope: !3555, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 1009, column: 10, scope: !3545, inlinedAt: !3610)
!3613 = !DILocation(line: 1018, column: 3, scope: !3555, inlinedAt: !3612)
!3614 = !DILocation(line: 1018, column: 26, scope: !3555, inlinedAt: !3612)
!3615 = !DILocation(line: 1018, column: 30, scope: !3555, inlinedAt: !3612)
!3616 = !DILocation(line: 0, scope: !2488, inlinedAt: !3617)
!3617 = distinct !DILocation(line: 1019, column: 3, scope: !3555, inlinedAt: !3612)
!3618 = !DILocation(line: 174, column: 6, scope: !2488, inlinedAt: !3617)
!3619 = !DILocation(line: 174, column: 12, scope: !2488, inlinedAt: !3617)
!3620 = !DILocation(line: 175, column: 8, scope: !2502, inlinedAt: !3617)
!3621 = !DILocation(line: 175, column: 19, scope: !2502, inlinedAt: !3617)
!3622 = !DILocation(line: 176, column: 5, scope: !2502, inlinedAt: !3617)
!3623 = !DILocation(line: 177, column: 6, scope: !2488, inlinedAt: !3617)
!3624 = !DILocation(line: 177, column: 17, scope: !2488, inlinedAt: !3617)
!3625 = !DILocation(line: 178, column: 6, scope: !2488, inlinedAt: !3617)
!3626 = !DILocation(line: 178, column: 18, scope: !2488, inlinedAt: !3617)
!3627 = !DILocation(line: 1020, column: 10, scope: !3555, inlinedAt: !3612)
!3628 = !DILocation(line: 1021, column: 1, scope: !3555, inlinedAt: !3612)
!3629 = !DILocation(line: 1027, column: 3, scope: !3601)
!3630 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !338, file: !338, line: 1031, type: !3631, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3633)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!50, !58, !58, !58, !55}
!3633 = !{!3634, !3635, !3636, !3637}
!3634 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3630, file: !338, line: 1031, type: !58)
!3635 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3630, file: !338, line: 1031, type: !58)
!3636 = !DILocalVariable(name: "arg", arg: 3, scope: !3630, file: !338, line: 1032, type: !58)
!3637 = !DILocalVariable(name: "argsize", arg: 4, scope: !3630, file: !338, line: 1032, type: !55)
!3638 = !DILocation(line: 0, scope: !3630)
!3639 = !DILocation(line: 0, scope: !3555, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 1034, column: 10, scope: !3630)
!3641 = !DILocation(line: 1018, column: 3, scope: !3555, inlinedAt: !3640)
!3642 = !DILocation(line: 1018, column: 26, scope: !3555, inlinedAt: !3640)
!3643 = !DILocation(line: 1018, column: 30, scope: !3555, inlinedAt: !3640)
!3644 = !DILocation(line: 0, scope: !2488, inlinedAt: !3645)
!3645 = distinct !DILocation(line: 1019, column: 3, scope: !3555, inlinedAt: !3640)
!3646 = !DILocation(line: 174, column: 6, scope: !2488, inlinedAt: !3645)
!3647 = !DILocation(line: 174, column: 12, scope: !2488, inlinedAt: !3645)
!3648 = !DILocation(line: 175, column: 8, scope: !2502, inlinedAt: !3645)
!3649 = !DILocation(line: 175, column: 19, scope: !2502, inlinedAt: !3645)
!3650 = !DILocation(line: 176, column: 5, scope: !2502, inlinedAt: !3645)
!3651 = !DILocation(line: 177, column: 6, scope: !2488, inlinedAt: !3645)
!3652 = !DILocation(line: 177, column: 17, scope: !2488, inlinedAt: !3645)
!3653 = !DILocation(line: 178, column: 6, scope: !2488, inlinedAt: !3645)
!3654 = !DILocation(line: 178, column: 18, scope: !2488, inlinedAt: !3645)
!3655 = !DILocation(line: 1020, column: 10, scope: !3555, inlinedAt: !3640)
!3656 = !DILocation(line: 1021, column: 1, scope: !3555, inlinedAt: !3640)
!3657 = !DILocation(line: 1034, column: 3, scope: !3630)
!3658 = distinct !DISubprogram(name: "quote_n_mem", scope: !338, file: !338, line: 1049, type: !3659, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3661)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!58, !53, !58, !55}
!3661 = !{!3662, !3663, !3664}
!3662 = !DILocalVariable(name: "n", arg: 1, scope: !3658, file: !338, line: 1049, type: !53)
!3663 = !DILocalVariable(name: "arg", arg: 2, scope: !3658, file: !338, line: 1049, type: !58)
!3664 = !DILocalVariable(name: "argsize", arg: 3, scope: !3658, file: !338, line: 1049, type: !55)
!3665 = !DILocation(line: 0, scope: !3658)
!3666 = !DILocation(line: 1051, column: 10, scope: !3658)
!3667 = !DILocation(line: 1051, column: 3, scope: !3658)
!3668 = distinct !DISubprogram(name: "quote_mem", scope: !338, file: !338, line: 1055, type: !3669, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3671)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!58, !58, !55}
!3671 = !{!3672, !3673}
!3672 = !DILocalVariable(name: "arg", arg: 1, scope: !3668, file: !338, line: 1055, type: !58)
!3673 = !DILocalVariable(name: "argsize", arg: 2, scope: !3668, file: !338, line: 1055, type: !55)
!3674 = !DILocation(line: 0, scope: !3668)
!3675 = !DILocation(line: 0, scope: !3658, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 1057, column: 10, scope: !3668)
!3677 = !DILocation(line: 1051, column: 10, scope: !3658, inlinedAt: !3676)
!3678 = !DILocation(line: 1057, column: 3, scope: !3668)
!3679 = distinct !DISubprogram(name: "quote_n", scope: !338, file: !338, line: 1061, type: !3680, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3682)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!58, !53, !58}
!3682 = !{!3683, !3684}
!3683 = !DILocalVariable(name: "n", arg: 1, scope: !3679, file: !338, line: 1061, type: !53)
!3684 = !DILocalVariable(name: "arg", arg: 2, scope: !3679, file: !338, line: 1061, type: !58)
!3685 = !DILocation(line: 0, scope: !3679)
!3686 = !DILocation(line: 0, scope: !3658, inlinedAt: !3687)
!3687 = distinct !DILocation(line: 1063, column: 10, scope: !3679)
!3688 = !DILocation(line: 1051, column: 10, scope: !3658, inlinedAt: !3687)
!3689 = !DILocation(line: 1063, column: 3, scope: !3679)
!3690 = distinct !DISubprogram(name: "quote", scope: !338, file: !338, line: 1067, type: !962, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !3691)
!3691 = !{!3692}
!3692 = !DILocalVariable(name: "arg", arg: 1, scope: !3690, file: !338, line: 1067, type: !58)
!3693 = !DILocation(line: 0, scope: !3690)
!3694 = !DILocation(line: 0, scope: !3679, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 1069, column: 10, scope: !3690)
!3696 = !DILocation(line: 0, scope: !3658, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 1063, column: 10, scope: !3679, inlinedAt: !3695)
!3698 = !DILocation(line: 1051, column: 10, scope: !3658, inlinedAt: !3697)
!3699 = !DILocation(line: 1069, column: 3, scope: !3690)
!3700 = distinct !DISubprogram(name: "str2sig", scope: !413, file: !413, line: 321, type: !3701, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3703)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!53, !58, !202}
!3703 = !{!3704, !3705}
!3704 = !DILocalVariable(name: "signame", arg: 1, scope: !3700, file: !413, line: 321, type: !58)
!3705 = !DILocalVariable(name: "signum", arg: 2, scope: !3700, file: !413, line: 321, type: !202)
!3706 = !DILocation(line: 0, scope: !3700)
!3707 = !DILocalVariable(name: "signame", arg: 1, scope: !3708, file: !413, line: 278, type: !58)
!3708 = distinct !DISubprogram(name: "str2signum", scope: !413, file: !413, line: 278, type: !1849, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3709)
!3709 = !{!3707, !3710, !3713, !3714, !3717, !3719, !3720, !3723, !3724, !3727}
!3710 = !DILocalVariable(name: "endp", scope: !3711, file: !413, line: 282, type: !50)
!3711 = distinct !DILexicalBlock(scope: !3712, file: !413, line: 281, column: 5)
!3712 = distinct !DILexicalBlock(scope: !3708, file: !413, line: 280, column: 7)
!3713 = !DILocalVariable(name: "n", scope: !3711, file: !413, line: 283, type: !63)
!3714 = !DILocalVariable(name: "i", scope: !3715, file: !413, line: 289, type: !7)
!3715 = distinct !DILexicalBlock(scope: !3716, file: !413, line: 289, column: 7)
!3716 = distinct !DILexicalBlock(scope: !3712, file: !413, line: 288, column: 5)
!3717 = !DILocalVariable(name: "rtmin", scope: !3718, file: !413, line: 294, type: !53)
!3718 = distinct !DILexicalBlock(scope: !3716, file: !413, line: 293, column: 7)
!3719 = !DILocalVariable(name: "rtmax", scope: !3718, file: !413, line: 295, type: !53)
!3720 = !DILocalVariable(name: "endp", scope: !3721, file: !413, line: 299, type: !50)
!3721 = distinct !DILexicalBlock(scope: !3722, file: !413, line: 298, column: 11)
!3722 = distinct !DILexicalBlock(scope: !3718, file: !413, line: 297, column: 13)
!3723 = !DILocalVariable(name: "n", scope: !3721, file: !413, line: 300, type: !63)
!3724 = !DILocalVariable(name: "endp", scope: !3725, file: !413, line: 306, type: !50)
!3725 = distinct !DILexicalBlock(scope: !3726, file: !413, line: 305, column: 11)
!3726 = distinct !DILexicalBlock(scope: !3722, file: !413, line: 304, column: 18)
!3727 = !DILocalVariable(name: "n", scope: !3725, file: !413, line: 307, type: !63)
!3728 = !DILocation(line: 0, scope: !3708, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 323, column: 13, scope: !3700)
!3730 = !DILocation(line: 280, column: 7, scope: !3712, inlinedAt: !3729)
!3731 = !DILocation(line: 280, column: 7, scope: !3708, inlinedAt: !3729)
!3732 = !DILocation(line: 282, column: 7, scope: !3711, inlinedAt: !3729)
!3733 = !DILocation(line: 0, scope: !3711, inlinedAt: !3729)
!3734 = !DILocation(line: 283, column: 20, scope: !3711, inlinedAt: !3729)
!3735 = !DILocation(line: 284, column: 14, scope: !3736, inlinedAt: !3729)
!3736 = distinct !DILexicalBlock(scope: !3711, file: !413, line: 284, column: 11)
!3737 = !DILocation(line: 284, column: 13, scope: !3736, inlinedAt: !3729)
!3738 = !DILocation(line: 284, column: 19, scope: !3736, inlinedAt: !3729)
!3739 = !DILocation(line: 286, column: 5, scope: !3712, inlinedAt: !3729)
!3740 = !DILocation(line: 0, scope: !3715, inlinedAt: !3729)
!3741 = !DILocation(line: 290, column: 20, scope: !3742, inlinedAt: !3729)
!3742 = distinct !DILexicalBlock(scope: !3743, file: !413, line: 290, column: 13)
!3743 = distinct !DILexicalBlock(scope: !3715, file: !413, line: 289, column: 7)
!3744 = !DILocalVariable(name: "__s1", arg: 1, scope: !3745, file: !597, line: 1359, type: !58)
!3745 = distinct !DISubprogram(name: "streq", scope: !597, file: !597, line: 1359, type: !598, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3746)
!3746 = !{!3744, !3747}
!3747 = !DILocalVariable(name: "__s2", arg: 2, scope: !3745, file: !597, line: 1359, type: !58)
!3748 = !DILocation(line: 0, scope: !3745, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 290, column: 13, scope: !3742, inlinedAt: !3729)
!3750 = !DILocation(line: 1361, column: 11, scope: !3745, inlinedAt: !3749)
!3751 = !DILocation(line: 1361, column: 10, scope: !3745, inlinedAt: !3749)
!3752 = !DILocation(line: 290, column: 13, scope: !3743, inlinedAt: !3729)
!3753 = !DILocation(line: 289, column: 54, scope: !3743, inlinedAt: !3729)
!3754 = !DILocation(line: 289, column: 34, scope: !3743, inlinedAt: !3729)
!3755 = !DILocation(line: 289, column: 7, scope: !3715, inlinedAt: !3729)
!3756 = distinct !{!3756, !3755, !3757, !613}
!3757 = !DILocation(line: 291, column: 35, scope: !3715, inlinedAt: !3729)
!3758 = !DILocation(line: 289, column: 32, scope: !3743, inlinedAt: !3729)
!3759 = !DILocation(line: 291, column: 35, scope: !3742, inlinedAt: !3729)
!3760 = !{!3761, !647, i64 0}
!3761 = !{!"numname", !647, i64 0, !540, i64 4}
!3762 = !DILocation(line: 294, column: 21, scope: !3718, inlinedAt: !3729)
!3763 = !DILocation(line: 0, scope: !3718, inlinedAt: !3729)
!3764 = !DILocation(line: 295, column: 21, scope: !3718, inlinedAt: !3729)
!3765 = !DILocation(line: 297, column: 15, scope: !3722, inlinedAt: !3729)
!3766 = !DILocation(line: 297, column: 23, scope: !3722, inlinedAt: !3729)
!3767 = !DILocation(line: 297, column: 26, scope: !3722, inlinedAt: !3729)
!3768 = !DILocation(line: 297, column: 56, scope: !3722, inlinedAt: !3729)
!3769 = !DILocation(line: 297, column: 13, scope: !3718, inlinedAt: !3729)
!3770 = !DILocation(line: 299, column: 13, scope: !3721, inlinedAt: !3729)
!3771 = !DILocation(line: 300, column: 42, scope: !3721, inlinedAt: !3729)
!3772 = !DILocation(line: 0, scope: !3721, inlinedAt: !3729)
!3773 = !DILocation(line: 300, column: 26, scope: !3721, inlinedAt: !3729)
!3774 = !DILocation(line: 301, column: 20, scope: !3775, inlinedAt: !3729)
!3775 = distinct !DILexicalBlock(scope: !3721, file: !413, line: 301, column: 17)
!3776 = !DILocation(line: 301, column: 19, scope: !3775, inlinedAt: !3729)
!3777 = !DILocation(line: 301, column: 25, scope: !3775, inlinedAt: !3729)
!3778 = !DILocation(line: 301, column: 49, scope: !3775, inlinedAt: !3729)
!3779 = !DILocation(line: 301, column: 43, scope: !3775, inlinedAt: !3729)
!3780 = !DILocation(line: 301, column: 40, scope: !3775, inlinedAt: !3729)
!3781 = !DILocation(line: 301, column: 17, scope: !3721, inlinedAt: !3729)
!3782 = !DILocation(line: 303, column: 11, scope: !3722, inlinedAt: !3729)
!3783 = !DILocation(line: 302, column: 22, scope: !3775, inlinedAt: !3729)
!3784 = !DILocation(line: 304, column: 20, scope: !3726, inlinedAt: !3729)
!3785 = !DILocation(line: 304, column: 28, scope: !3726, inlinedAt: !3729)
!3786 = !DILocation(line: 304, column: 31, scope: !3726, inlinedAt: !3729)
!3787 = !DILocation(line: 304, column: 61, scope: !3726, inlinedAt: !3729)
!3788 = !DILocation(line: 304, column: 18, scope: !3722, inlinedAt: !3729)
!3789 = !DILocation(line: 306, column: 13, scope: !3725, inlinedAt: !3729)
!3790 = !DILocation(line: 307, column: 42, scope: !3725, inlinedAt: !3729)
!3791 = !DILocation(line: 0, scope: !3725, inlinedAt: !3729)
!3792 = !DILocation(line: 307, column: 26, scope: !3725, inlinedAt: !3729)
!3793 = !DILocation(line: 308, column: 20, scope: !3794, inlinedAt: !3729)
!3794 = distinct !DILexicalBlock(scope: !3725, file: !413, line: 308, column: 17)
!3795 = !DILocation(line: 308, column: 19, scope: !3794, inlinedAt: !3729)
!3796 = !DILocation(line: 308, column: 25, scope: !3794, inlinedAt: !3729)
!3797 = !DILocation(line: 308, column: 34, scope: !3794, inlinedAt: !3729)
!3798 = !DILocation(line: 308, column: 28, scope: !3794, inlinedAt: !3729)
!3799 = !DILocation(line: 308, column: 42, scope: !3794, inlinedAt: !3729)
!3800 = !DILocation(line: 308, column: 47, scope: !3794, inlinedAt: !3729)
!3801 = !DILocation(line: 310, column: 11, scope: !3726, inlinedAt: !3729)
!3802 = !DILocation(line: 309, column: 22, scope: !3794, inlinedAt: !3729)
!3803 = !DILocation(line: 314, column: 3, scope: !3708, inlinedAt: !3729)
!3804 = !DILocation(line: 323, column: 11, scope: !3700)
!3805 = !DILocation(line: 324, column: 10, scope: !3700)
!3806 = !DILocation(line: 324, column: 3, scope: !3700)
!3807 = distinct !DISubprogram(name: "sig2str", scope: !413, file: !413, line: 332, type: !3808, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3810)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!53, !53, !50}
!3810 = !{!3811, !3812, !3813, !3815, !3817, !3818, !3819}
!3811 = !DILocalVariable(name: "signum", arg: 1, scope: !3807, file: !413, line: 332, type: !53)
!3812 = !DILocalVariable(name: "signame", arg: 2, scope: !3807, file: !413, line: 332, type: !50)
!3813 = !DILocalVariable(name: "i", scope: !3814, file: !413, line: 334, type: !7)
!3814 = distinct !DILexicalBlock(scope: !3807, file: !413, line: 334, column: 3)
!3815 = !DILocalVariable(name: "rtmin", scope: !3816, file: !413, line: 342, type: !53)
!3816 = distinct !DILexicalBlock(scope: !3807, file: !413, line: 341, column: 3)
!3817 = !DILocalVariable(name: "rtmax", scope: !3816, file: !413, line: 343, type: !53)
!3818 = !DILocalVariable(name: "base", scope: !3816, file: !413, line: 348, type: !53)
!3819 = !DILocalVariable(name: "delta", scope: !3816, file: !413, line: 360, type: !53)
!3820 = !DILocation(line: 0, scope: !3807)
!3821 = !DILocation(line: 0, scope: !3814)
!3822 = !DILocation(line: 334, column: 3, scope: !3814)
!3823 = !DILocation(line: 335, column: 26, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3825, file: !413, line: 335, column: 9)
!3825 = distinct !DILexicalBlock(scope: !3814, file: !413, line: 334, column: 3)
!3826 = !DILocation(line: 335, column: 30, scope: !3824)
!3827 = !DILocation(line: 335, column: 9, scope: !3825)
!3828 = !DILocation(line: 334, column: 50, scope: !3825)
!3829 = !DILocation(line: 334, column: 30, scope: !3825)
!3830 = distinct !{!3830, !3822, !3831, !613}
!3831 = !DILocation(line: 339, column: 7, scope: !3814)
!3832 = !DILocation(line: 334, column: 28, scope: !3825)
!3833 = !DILocation(line: 337, column: 26, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3824, file: !413, line: 336, column: 7)
!3835 = !DILocalVariable(name: "__dest", arg: 1, scope: !3836, file: !1011, line: 77, type: !3839)
!3836 = distinct !DISubprogram(name: "strcpy", scope: !1011, file: !1011, line: 77, type: !3837, scopeLine: 78, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3840)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!50, !3839, !642}
!3839 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!3840 = !{!3835, !3841}
!3841 = !DILocalVariable(name: "__src", arg: 2, scope: !3836, file: !1011, line: 77, type: !642)
!3842 = !DILocation(line: 0, scope: !3836, inlinedAt: !3843)
!3843 = distinct !DILocation(line: 337, column: 9, scope: !3834)
!3844 = !DILocation(line: 79, column: 10, scope: !3836, inlinedAt: !3843)
!3845 = !DILocation(line: 342, column: 17, scope: !3816)
!3846 = !DILocation(line: 0, scope: !3816)
!3847 = !DILocation(line: 343, column: 17, scope: !3816)
!3848 = !DILocation(line: 345, column: 18, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3816, file: !413, line: 345, column: 9)
!3850 = !DILocation(line: 345, column: 28, scope: !3849)
!3851 = !DILocation(line: 349, column: 34, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3816, file: !413, line: 349, column: 9)
!3853 = !DILocation(line: 349, column: 43, scope: !3852)
!3854 = !DILocation(line: 349, column: 25, scope: !3852)
!3855 = !DILocation(line: 349, column: 16, scope: !3852)
!3856 = !DILocation(line: 0, scope: !3836, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 356, column: 9, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3852, file: !413, line: 355, column: 7)
!3859 = !DILocation(line: 0, scope: !3836, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 351, column: 9, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3852, file: !413, line: 350, column: 7)
!3862 = !DILocation(line: 0, scope: !3852)
!3863 = !DILocation(line: 360, column: 24, scope: !3816)
!3864 = !DILocation(line: 361, column: 15, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3816, file: !413, line: 361, column: 9)
!3866 = !DILocation(line: 361, column: 9, scope: !3816)
!3867 = !DILocation(line: 362, column: 7, scope: !3865)
!3868 = !DILocation(line: 365, column: 1, scope: !3807)
!3869 = distinct !DISubprogram(name: "version_etc_arn", scope: !461, file: !461, line: 61, type: !3870, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3907)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{null, !3872, !58, !58, !58, !3906, !55}
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !133, line: 7, baseType: !3874)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !135, line: 49, size: 1728, elements: !3875)
!3875 = !{!3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3874, file: !135, line: 51, baseType: !53, size: 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3874, file: !135, line: 54, baseType: !50, size: 64, offset: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3874, file: !135, line: 55, baseType: !50, size: 64, offset: 128)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3874, file: !135, line: 56, baseType: !50, size: 64, offset: 192)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3874, file: !135, line: 57, baseType: !50, size: 64, offset: 256)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3874, file: !135, line: 58, baseType: !50, size: 64, offset: 320)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3874, file: !135, line: 59, baseType: !50, size: 64, offset: 384)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3874, file: !135, line: 60, baseType: !50, size: 64, offset: 448)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3874, file: !135, line: 61, baseType: !50, size: 64, offset: 512)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3874, file: !135, line: 64, baseType: !50, size: 64, offset: 576)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3874, file: !135, line: 65, baseType: !50, size: 64, offset: 640)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3874, file: !135, line: 66, baseType: !50, size: 64, offset: 704)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3874, file: !135, line: 68, baseType: !150, size: 64, offset: 768)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3874, file: !135, line: 70, baseType: !3890, size: 64, offset: 832)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3874, file: !135, line: 72, baseType: !53, size: 32, offset: 896)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3874, file: !135, line: 73, baseType: !53, size: 32, offset: 928)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3874, file: !135, line: 74, baseType: !157, size: 64, offset: 960)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3874, file: !135, line: 77, baseType: !54, size: 16, offset: 1024)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3874, file: !135, line: 78, baseType: !161, size: 8, offset: 1040)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3874, file: !135, line: 79, baseType: !163, size: 8, offset: 1048)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3874, file: !135, line: 81, baseType: !165, size: 64, offset: 1088)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3874, file: !135, line: 89, baseType: !168, size: 64, offset: 1152)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3874, file: !135, line: 91, baseType: !170, size: 64, offset: 1216)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3874, file: !135, line: 92, baseType: !173, size: 64, offset: 1280)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3874, file: !135, line: 93, baseType: !3890, size: 64, offset: 1344)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3874, file: !135, line: 94, baseType: !52, size: 64, offset: 1408)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3874, file: !135, line: 95, baseType: !55, size: 64, offset: 1472)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3874, file: !135, line: 96, baseType: !53, size: 32, offset: 1536)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3874, file: !135, line: 98, baseType: !180, size: 160, offset: 1568)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!3907 = !{!3908, !3909, !3910, !3911, !3912, !3913}
!3908 = !DILocalVariable(name: "stream", arg: 1, scope: !3869, file: !461, line: 61, type: !3872)
!3909 = !DILocalVariable(name: "command_name", arg: 2, scope: !3869, file: !461, line: 62, type: !58)
!3910 = !DILocalVariable(name: "package", arg: 3, scope: !3869, file: !461, line: 62, type: !58)
!3911 = !DILocalVariable(name: "version", arg: 4, scope: !3869, file: !461, line: 63, type: !58)
!3912 = !DILocalVariable(name: "authors", arg: 5, scope: !3869, file: !461, line: 64, type: !3906)
!3913 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3869, file: !461, line: 64, type: !55)
!3914 = !DILocation(line: 0, scope: !3869)
!3915 = !DILocation(line: 66, column: 7, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3869, file: !461, line: 66, column: 7)
!3917 = !DILocation(line: 66, column: 7, scope: !3869)
!3918 = !DILocation(line: 67, column: 5, scope: !3916)
!3919 = !DILocation(line: 69, column: 5, scope: !3916)
!3920 = !DILocation(line: 83, column: 3, scope: !3869)
!3921 = !DILocation(line: 85, column: 3, scope: !3869)
!3922 = !DILocation(line: 88, column: 3, scope: !3869)
!3923 = !DILocation(line: 95, column: 3, scope: !3869)
!3924 = !DILocation(line: 97, column: 3, scope: !3869)
!3925 = !DILocation(line: 105, column: 7, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3869, file: !461, line: 98, column: 5)
!3927 = !DILocation(line: 106, column: 7, scope: !3926)
!3928 = !DILocation(line: 109, column: 7, scope: !3926)
!3929 = !DILocation(line: 110, column: 7, scope: !3926)
!3930 = !DILocation(line: 113, column: 7, scope: !3926)
!3931 = !DILocation(line: 115, column: 7, scope: !3926)
!3932 = !DILocation(line: 120, column: 7, scope: !3926)
!3933 = !DILocation(line: 122, column: 7, scope: !3926)
!3934 = !DILocation(line: 127, column: 7, scope: !3926)
!3935 = !DILocation(line: 129, column: 7, scope: !3926)
!3936 = !DILocation(line: 134, column: 7, scope: !3926)
!3937 = !DILocation(line: 137, column: 7, scope: !3926)
!3938 = !DILocation(line: 142, column: 7, scope: !3926)
!3939 = !DILocation(line: 145, column: 7, scope: !3926)
!3940 = !DILocation(line: 150, column: 7, scope: !3926)
!3941 = !DILocation(line: 154, column: 7, scope: !3926)
!3942 = !DILocation(line: 159, column: 7, scope: !3926)
!3943 = !DILocation(line: 163, column: 7, scope: !3926)
!3944 = !DILocation(line: 170, column: 7, scope: !3926)
!3945 = !DILocation(line: 174, column: 7, scope: !3926)
!3946 = !DILocation(line: 176, column: 1, scope: !3869)
!3947 = distinct !DISubprogram(name: "version_etc_ar", scope: !461, file: !461, line: 183, type: !3948, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3950)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{null, !3872, !58, !58, !58, !3906}
!3950 = !{!3951, !3952, !3953, !3954, !3955, !3956}
!3951 = !DILocalVariable(name: "stream", arg: 1, scope: !3947, file: !461, line: 183, type: !3872)
!3952 = !DILocalVariable(name: "command_name", arg: 2, scope: !3947, file: !461, line: 184, type: !58)
!3953 = !DILocalVariable(name: "package", arg: 3, scope: !3947, file: !461, line: 184, type: !58)
!3954 = !DILocalVariable(name: "version", arg: 4, scope: !3947, file: !461, line: 185, type: !58)
!3955 = !DILocalVariable(name: "authors", arg: 5, scope: !3947, file: !461, line: 185, type: !3906)
!3956 = !DILocalVariable(name: "n_authors", scope: !3947, file: !461, line: 187, type: !55)
!3957 = !DILocation(line: 0, scope: !3947)
!3958 = !DILocation(line: 189, column: 8, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3947, file: !461, line: 189, column: 3)
!3960 = !DILocation(line: 0, scope: !3959)
!3961 = !DILocation(line: 189, column: 23, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3959, file: !461, line: 189, column: 3)
!3963 = !DILocation(line: 189, column: 3, scope: !3959)
!3964 = !DILocation(line: 189, column: 52, scope: !3962)
!3965 = distinct !{!3965, !3963, !3966, !613}
!3966 = !DILocation(line: 190, column: 5, scope: !3959)
!3967 = !DILocation(line: 191, column: 3, scope: !3947)
!3968 = !DILocation(line: 192, column: 1, scope: !3947)
!3969 = distinct !DISubprogram(name: "version_etc_va", scope: !461, file: !461, line: 199, type: !3970, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3983)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{null, !3872, !58, !58, !58, !3972}
!3972 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !264, line: 52, baseType: !3973)
!3973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !266, line: 32, baseType: !3974)
!3974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3975, baseType: !3976)
!3975 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !270, size: 256, elements: !3977)
!3977 = !{!3978, !3979, !3980, !3981, !3982}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3976, file: !3975, line: 192, baseType: !52, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3976, file: !3975, line: 192, baseType: !52, size: 64, offset: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3976, file: !3975, line: 192, baseType: !52, size: 64, offset: 128)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3976, file: !3975, line: 192, baseType: !53, size: 32, offset: 192)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3976, file: !3975, line: 192, baseType: !53, size: 32, offset: 224)
!3983 = !{!3984, !3985, !3986, !3987, !3988, !3989, !3990}
!3984 = !DILocalVariable(name: "stream", arg: 1, scope: !3969, file: !461, line: 199, type: !3872)
!3985 = !DILocalVariable(name: "command_name", arg: 2, scope: !3969, file: !461, line: 200, type: !58)
!3986 = !DILocalVariable(name: "package", arg: 3, scope: !3969, file: !461, line: 200, type: !58)
!3987 = !DILocalVariable(name: "version", arg: 4, scope: !3969, file: !461, line: 201, type: !58)
!3988 = !DILocalVariable(name: "authors", arg: 5, scope: !3969, file: !461, line: 201, type: !3972)
!3989 = !DILocalVariable(name: "n_authors", scope: !3969, file: !461, line: 203, type: !55)
!3990 = !DILocalVariable(name: "authtab", scope: !3969, file: !461, line: 204, type: !3991)
!3991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 640, elements: !351)
!3992 = !DILocation(line: 0, scope: !3969)
!3993 = !DILocation(line: 201, column: 46, scope: !3969)
!3994 = !DILocation(line: 204, column: 3, scope: !3969)
!3995 = !DILocation(line: 204, column: 15, scope: !3969)
!3996 = !DILocation(line: 208, column: 35, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3998, file: !461, line: 206, column: 3)
!3998 = distinct !DILexicalBlock(scope: !3969, file: !461, line: 206, column: 3)
!3999 = !DILocation(line: 208, column: 14, scope: !3997)
!4000 = !DILocation(line: 208, column: 33, scope: !3997)
!4001 = !DILocation(line: 208, column: 67, scope: !3997)
!4002 = !DILocation(line: 206, column: 3, scope: !3998)
!4003 = !DILocation(line: 0, scope: !3998)
!4004 = !DILocation(line: 211, column: 3, scope: !3969)
!4005 = !DILocation(line: 213, column: 1, scope: !3969)
!4006 = distinct !DISubprogram(name: "version_etc", scope: !461, file: !461, line: 230, type: !4007, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !4009)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{null, !3872, !58, !58, !58, null}
!4009 = !{!4010, !4011, !4012, !4013, !4014}
!4010 = !DILocalVariable(name: "stream", arg: 1, scope: !4006, file: !461, line: 230, type: !3872)
!4011 = !DILocalVariable(name: "command_name", arg: 2, scope: !4006, file: !461, line: 231, type: !58)
!4012 = !DILocalVariable(name: "package", arg: 3, scope: !4006, file: !461, line: 231, type: !58)
!4013 = !DILocalVariable(name: "version", arg: 4, scope: !4006, file: !461, line: 232, type: !58)
!4014 = !DILocalVariable(name: "authors", scope: !4006, file: !461, line: 234, type: !3972)
!4015 = !DILocation(line: 0, scope: !4006)
!4016 = !DILocation(line: 234, column: 3, scope: !4006)
!4017 = !DILocation(line: 234, column: 11, scope: !4006)
!4018 = !DILocation(line: 235, column: 3, scope: !4006)
!4019 = !DILocation(line: 236, column: 3, scope: !4006)
!4020 = !DILocation(line: 237, column: 3, scope: !4006)
!4021 = !DILocation(line: 238, column: 1, scope: !4006)
!4022 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !461, file: !461, line: 241, type: !291, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !547)
!4023 = !DILocation(line: 243, column: 3, scope: !4022)
!4024 = !DILocation(line: 248, column: 3, scope: !4022)
!4025 = !DILocation(line: 254, column: 3, scope: !4022)
!4026 = !DILocation(line: 259, column: 3, scope: !4022)
!4027 = !DILocation(line: 261, column: 1, scope: !4022)
!4028 = distinct !DISubprogram(name: "xnrealloc", scope: !4029, file: !4029, line: 147, type: !4030, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4032)
!4029 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!52, !52, !55, !55}
!4032 = !{!4033, !4034, !4035}
!4033 = !DILocalVariable(name: "p", arg: 1, scope: !4028, file: !4029, line: 147, type: !52)
!4034 = !DILocalVariable(name: "n", arg: 2, scope: !4028, file: !4029, line: 147, type: !55)
!4035 = !DILocalVariable(name: "s", arg: 3, scope: !4028, file: !4029, line: 147, type: !55)
!4036 = !DILocation(line: 0, scope: !4028)
!4037 = !DILocalVariable(name: "p", arg: 1, scope: !4038, file: !468, line: 83, type: !52)
!4038 = distinct !DISubprogram(name: "xreallocarray", scope: !468, file: !468, line: 83, type: !4030, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4039)
!4039 = !{!4037, !4040, !4041}
!4040 = !DILocalVariable(name: "n", arg: 2, scope: !4038, file: !468, line: 83, type: !55)
!4041 = !DILocalVariable(name: "s", arg: 3, scope: !4038, file: !468, line: 83, type: !55)
!4042 = !DILocation(line: 0, scope: !4038, inlinedAt: !4043)
!4043 = distinct !DILocation(line: 149, column: 10, scope: !4028)
!4044 = !DILocation(line: 85, column: 25, scope: !4038, inlinedAt: !4043)
!4045 = !DILocalVariable(name: "p", arg: 1, scope: !4046, file: !468, line: 37, type: !52)
!4046 = distinct !DISubprogram(name: "check_nonnull", scope: !468, file: !468, line: 37, type: !4047, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4049)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!52, !52}
!4049 = !{!4045}
!4050 = !DILocation(line: 0, scope: !4046, inlinedAt: !4051)
!4051 = distinct !DILocation(line: 85, column: 10, scope: !4038, inlinedAt: !4043)
!4052 = !DILocation(line: 39, column: 8, scope: !4053, inlinedAt: !4051)
!4053 = distinct !DILexicalBlock(scope: !4046, file: !468, line: 39, column: 7)
!4054 = !DILocation(line: 39, column: 7, scope: !4046, inlinedAt: !4051)
!4055 = !DILocation(line: 40, column: 5, scope: !4053, inlinedAt: !4051)
!4056 = !DILocation(line: 149, column: 3, scope: !4028)
!4057 = !DILocation(line: 0, scope: !4038)
!4058 = !DILocation(line: 85, column: 25, scope: !4038)
!4059 = !DILocation(line: 0, scope: !4046, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 85, column: 10, scope: !4038)
!4061 = !DILocation(line: 39, column: 8, scope: !4053, inlinedAt: !4060)
!4062 = !DILocation(line: 39, column: 7, scope: !4046, inlinedAt: !4060)
!4063 = !DILocation(line: 40, column: 5, scope: !4053, inlinedAt: !4060)
!4064 = !DILocation(line: 85, column: 3, scope: !4038)
!4065 = distinct !DISubprogram(name: "xmalloc", scope: !468, file: !468, line: 47, type: !4066, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4068)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!52, !55}
!4068 = !{!4069}
!4069 = !DILocalVariable(name: "s", arg: 1, scope: !4065, file: !468, line: 47, type: !55)
!4070 = !DILocation(line: 0, scope: !4065)
!4071 = !DILocation(line: 49, column: 25, scope: !4065)
!4072 = !DILocation(line: 0, scope: !4046, inlinedAt: !4073)
!4073 = distinct !DILocation(line: 49, column: 10, scope: !4065)
!4074 = !DILocation(line: 39, column: 8, scope: !4053, inlinedAt: !4073)
!4075 = !DILocation(line: 39, column: 7, scope: !4046, inlinedAt: !4073)
!4076 = !DILocation(line: 40, column: 5, scope: !4053, inlinedAt: !4073)
!4077 = !DILocation(line: 49, column: 3, scope: !4065)
!4078 = distinct !DISubprogram(name: "ximalloc", scope: !468, file: !468, line: 53, type: !4079, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4081)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!52, !208}
!4081 = !{!4082}
!4082 = !DILocalVariable(name: "s", arg: 1, scope: !4078, file: !468, line: 53, type: !208)
!4083 = !DILocation(line: 0, scope: !4078)
!4084 = !DILocalVariable(name: "s", arg: 1, scope: !4085, file: !4086, line: 55, type: !208)
!4085 = distinct !DISubprogram(name: "imalloc", scope: !4086, file: !4086, line: 55, type: !4079, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4087)
!4086 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4087 = !{!4084}
!4088 = !DILocation(line: 0, scope: !4085, inlinedAt: !4089)
!4089 = distinct !DILocation(line: 55, column: 25, scope: !4078)
!4090 = !DILocation(line: 57, column: 26, scope: !4085, inlinedAt: !4089)
!4091 = !DILocation(line: 0, scope: !4046, inlinedAt: !4092)
!4092 = distinct !DILocation(line: 55, column: 10, scope: !4078)
!4093 = !DILocation(line: 39, column: 8, scope: !4053, inlinedAt: !4092)
!4094 = !DILocation(line: 39, column: 7, scope: !4046, inlinedAt: !4092)
!4095 = !DILocation(line: 40, column: 5, scope: !4053, inlinedAt: !4092)
!4096 = !DILocation(line: 55, column: 3, scope: !4078)
!4097 = distinct !DISubprogram(name: "xcharalloc", scope: !468, file: !468, line: 59, type: !4098, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4100)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!50, !55}
!4100 = !{!4101}
!4101 = !DILocalVariable(name: "n", arg: 1, scope: !4097, file: !468, line: 59, type: !55)
!4102 = !DILocation(line: 0, scope: !4097)
!4103 = !DILocation(line: 0, scope: !4065, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 61, column: 10, scope: !4097)
!4105 = !DILocation(line: 49, column: 25, scope: !4065, inlinedAt: !4104)
!4106 = !DILocation(line: 0, scope: !4046, inlinedAt: !4107)
!4107 = distinct !DILocation(line: 49, column: 10, scope: !4065, inlinedAt: !4104)
!4108 = !DILocation(line: 39, column: 8, scope: !4053, inlinedAt: !4107)
!4109 = !DILocation(line: 39, column: 7, scope: !4046, inlinedAt: !4107)
!4110 = !DILocation(line: 40, column: 5, scope: !4053, inlinedAt: !4107)
!4111 = !DILocation(line: 61, column: 3, scope: !4097)
!4112 = distinct !DISubprogram(name: "xrealloc", scope: !468, file: !468, line: 68, type: !4113, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4115)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!52, !52, !55}
!4115 = !{!4116, !4117}
!4116 = !DILocalVariable(name: "p", arg: 1, scope: !4112, file: !468, line: 68, type: !52)
!4117 = !DILocalVariable(name: "s", arg: 2, scope: !4112, file: !468, line: 68, type: !55)
!4118 = !DILocation(line: 0, scope: !4112)
!4119 = !DILocalVariable(name: "ptr", arg: 1, scope: !4120, file: !4121, line: 2057, type: !52)
!4120 = distinct !DISubprogram(name: "rpl_realloc", scope: !4121, file: !4121, line: 2057, type: !4113, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4122)
!4121 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4122 = !{!4119, !4123}
!4123 = !DILocalVariable(name: "size", arg: 2, scope: !4120, file: !4121, line: 2057, type: !55)
!4124 = !DILocation(line: 0, scope: !4120, inlinedAt: !4125)
!4125 = distinct !DILocation(line: 70, column: 25, scope: !4112)
!4126 = !DILocation(line: 2059, column: 24, scope: !4120, inlinedAt: !4125)
!4127 = !DILocation(line: 2059, column: 10, scope: !4120, inlinedAt: !4125)
!4128 = !DILocation(line: 0, scope: !4046, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 70, column: 10, scope: !4112)
!4130 = !DILocation(line: 39, column: 8, scope: !4053, inlinedAt: !4129)
!4131 = !DILocation(line: 39, column: 7, scope: !4046, inlinedAt: !4129)
!4132 = !DILocation(line: 40, column: 5, scope: !4053, inlinedAt: !4129)
!4133 = !DILocation(line: 70, column: 3, scope: !4112)
!4134 = distinct !DISubprogram(name: "xirealloc", scope: !468, file: !468, line: 74, type: !4135, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4137)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!52, !52, !208}
!4137 = !{!4138, !4139}
!4138 = !DILocalVariable(name: "p", arg: 1, scope: !4134, file: !468, line: 74, type: !52)
!4139 = !DILocalVariable(name: "s", arg: 2, scope: !4134, file: !468, line: 74, type: !208)
!4140 = !DILocation(line: 0, scope: !4134)
!4141 = !DILocalVariable(name: "p", arg: 1, scope: !4142, file: !4086, line: 66, type: !52)
!4142 = distinct !DISubprogram(name: "irealloc", scope: !4086, file: !4086, line: 66, type: !4135, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4143)
!4143 = !{!4141, !4144}
!4144 = !DILocalVariable(name: "s", arg: 2, scope: !4142, file: !4086, line: 66, type: !208)
!4145 = !DILocation(line: 0, scope: !4142, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 76, column: 25, scope: !4134)
!4147 = !DILocation(line: 0, scope: !4120, inlinedAt: !4148)
!4148 = distinct !DILocation(line: 68, column: 26, scope: !4142, inlinedAt: !4146)
!4149 = !DILocation(line: 2059, column: 24, scope: !4120, inlinedAt: !4148)
!4150 = !DILocation(line: 2059, column: 10, scope: !4120, inlinedAt: !4148)
!4151 = !DILocation(line: 0, scope: !4046, inlinedAt: !4152)
!4152 = distinct !DILocation(line: 76, column: 10, scope: !4134)
!4153 = !DILocation(line: 39, column: 8, scope: !4053, inlinedAt: !4152)
!4154 = !DILocation(line: 39, column: 7, scope: !4046, inlinedAt: !4152)
!4155 = !DILocation(line: 40, column: 5, scope: !4053, inlinedAt: !4152)
!4156 = !DILocation(line: 76, column: 3, scope: !4134)
!4157 = distinct !DISubprogram(name: "xireallocarray", scope: !468, file: !468, line: 89, type: !4158, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4160)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!52, !52, !208, !208}
!4160 = !{!4161, !4162, !4163}
!4161 = !DILocalVariable(name: "p", arg: 1, scope: !4157, file: !468, line: 89, type: !52)
!4162 = !DILocalVariable(name: "n", arg: 2, scope: !4157, file: !468, line: 89, type: !208)
!4163 = !DILocalVariable(name: "s", arg: 3, scope: !4157, file: !468, line: 89, type: !208)
!4164 = !DILocation(line: 0, scope: !4157)
!4165 = !DILocalVariable(name: "p", arg: 1, scope: !4166, file: !4086, line: 98, type: !52)
!4166 = distinct !DISubprogram(name: "ireallocarray", scope: !4086, file: !4086, line: 98, type: !4158, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4167)
!4167 = !{!4165, !4168, !4169}
!4168 = !DILocalVariable(name: "n", arg: 2, scope: !4166, file: !4086, line: 98, type: !208)
!4169 = !DILocalVariable(name: "s", arg: 3, scope: !4166, file: !4086, line: 98, type: !208)
!4170 = !DILocation(line: 0, scope: !4166, inlinedAt: !4171)
!4171 = distinct !DILocation(line: 91, column: 25, scope: !4157)
!4172 = !DILocation(line: 101, column: 13, scope: !4166, inlinedAt: !4171)
!4173 = !DILocation(line: 0, scope: !4046, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 91, column: 10, scope: !4157)
!4175 = !DILocation(line: 39, column: 8, scope: !4053, inlinedAt: !4174)
!4176 = !DILocation(line: 39, column: 7, scope: !4046, inlinedAt: !4174)
!4177 = !DILocation(line: 40, column: 5, scope: !4053, inlinedAt: !4174)
!4178 = !DILocation(line: 91, column: 3, scope: !4157)
!4179 = distinct !DISubprogram(name: "xnmalloc", scope: !468, file: !468, line: 98, type: !4180, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4182)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!52, !55, !55}
!4182 = !{!4183, !4184}
!4183 = !DILocalVariable(name: "n", arg: 1, scope: !4179, file: !468, line: 98, type: !55)
!4184 = !DILocalVariable(name: "s", arg: 2, scope: !4179, file: !468, line: 98, type: !55)
!4185 = !DILocation(line: 0, scope: !4179)
!4186 = !DILocation(line: 0, scope: !4038, inlinedAt: !4187)
!4187 = distinct !DILocation(line: 100, column: 10, scope: !4179)
!4188 = !DILocation(line: 85, column: 25, scope: !4038, inlinedAt: !4187)
!4189 = !DILocation(line: 0, scope: !4046, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 85, column: 10, scope: !4038, inlinedAt: !4187)
!4191 = !DILocation(line: 39, column: 8, scope: !4053, inlinedAt: !4190)
!4192 = !DILocation(line: 39, column: 7, scope: !4046, inlinedAt: !4190)
!4193 = !DILocation(line: 40, column: 5, scope: !4053, inlinedAt: !4190)
!4194 = !DILocation(line: 100, column: 3, scope: !4179)
!4195 = distinct !DISubprogram(name: "xinmalloc", scope: !468, file: !468, line: 104, type: !4196, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4198)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!52, !208, !208}
!4198 = !{!4199, !4200}
!4199 = !DILocalVariable(name: "n", arg: 1, scope: !4195, file: !468, line: 104, type: !208)
!4200 = !DILocalVariable(name: "s", arg: 2, scope: !4195, file: !468, line: 104, type: !208)
!4201 = !DILocation(line: 0, scope: !4195)
!4202 = !DILocation(line: 0, scope: !4157, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 106, column: 10, scope: !4195)
!4204 = !DILocation(line: 0, scope: !4166, inlinedAt: !4205)
!4205 = distinct !DILocation(line: 91, column: 25, scope: !4157, inlinedAt: !4203)
!4206 = !DILocation(line: 101, column: 13, scope: !4166, inlinedAt: !4205)
!4207 = !DILocation(line: 0, scope: !4046, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 91, column: 10, scope: !4157, inlinedAt: !4203)
!4209 = !DILocation(line: 39, column: 8, scope: !4053, inlinedAt: !4208)
!4210 = !DILocation(line: 39, column: 7, scope: !4046, inlinedAt: !4208)
!4211 = !DILocation(line: 40, column: 5, scope: !4053, inlinedAt: !4208)
!4212 = !DILocation(line: 106, column: 3, scope: !4195)
!4213 = distinct !DISubprogram(name: "x2realloc", scope: !468, file: !468, line: 116, type: !4214, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4216)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!52, !52, !474}
!4216 = !{!4217, !4218}
!4217 = !DILocalVariable(name: "p", arg: 1, scope: !4213, file: !468, line: 116, type: !52)
!4218 = !DILocalVariable(name: "ps", arg: 2, scope: !4213, file: !468, line: 116, type: !474)
!4219 = !DILocation(line: 0, scope: !4213)
!4220 = !DILocation(line: 0, scope: !471, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 118, column: 10, scope: !4213)
!4222 = !DILocation(line: 178, column: 14, scope: !471, inlinedAt: !4221)
!4223 = !DILocation(line: 180, column: 9, scope: !4224, inlinedAt: !4221)
!4224 = distinct !DILexicalBlock(scope: !471, file: !468, line: 180, column: 7)
!4225 = !DILocation(line: 180, column: 7, scope: !471, inlinedAt: !4221)
!4226 = !DILocation(line: 182, column: 13, scope: !4227, inlinedAt: !4221)
!4227 = distinct !DILexicalBlock(scope: !4228, file: !468, line: 182, column: 11)
!4228 = distinct !DILexicalBlock(scope: !4224, file: !468, line: 181, column: 5)
!4229 = !DILocation(line: 182, column: 11, scope: !4228, inlinedAt: !4221)
!4230 = !DILocation(line: 197, column: 11, scope: !4231, inlinedAt: !4221)
!4231 = distinct !DILexicalBlock(scope: !4232, file: !468, line: 197, column: 11)
!4232 = distinct !DILexicalBlock(scope: !4224, file: !468, line: 195, column: 5)
!4233 = !DILocation(line: 197, column: 11, scope: !4232, inlinedAt: !4221)
!4234 = !DILocation(line: 198, column: 9, scope: !4231, inlinedAt: !4221)
!4235 = !DILocation(line: 0, scope: !4038, inlinedAt: !4236)
!4236 = distinct !DILocation(line: 201, column: 7, scope: !471, inlinedAt: !4221)
!4237 = !DILocation(line: 85, column: 25, scope: !4038, inlinedAt: !4236)
!4238 = !DILocation(line: 0, scope: !4046, inlinedAt: !4239)
!4239 = distinct !DILocation(line: 85, column: 10, scope: !4038, inlinedAt: !4236)
!4240 = !DILocation(line: 39, column: 8, scope: !4053, inlinedAt: !4239)
!4241 = !DILocation(line: 39, column: 7, scope: !4046, inlinedAt: !4239)
!4242 = !DILocation(line: 40, column: 5, scope: !4053, inlinedAt: !4239)
!4243 = !DILocation(line: 202, column: 7, scope: !471, inlinedAt: !4221)
!4244 = !DILocation(line: 118, column: 3, scope: !4213)
!4245 = !DILocation(line: 0, scope: !471)
!4246 = !DILocation(line: 178, column: 14, scope: !471)
!4247 = !DILocation(line: 180, column: 9, scope: !4224)
!4248 = !DILocation(line: 180, column: 7, scope: !471)
!4249 = !DILocation(line: 182, column: 13, scope: !4227)
!4250 = !DILocation(line: 182, column: 11, scope: !4228)
!4251 = !DILocation(line: 190, column: 30, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4227, file: !468, line: 183, column: 9)
!4253 = !DILocation(line: 191, column: 16, scope: !4252)
!4254 = !DILocation(line: 191, column: 13, scope: !4252)
!4255 = !DILocation(line: 192, column: 9, scope: !4252)
!4256 = !DILocation(line: 197, column: 11, scope: !4231)
!4257 = !DILocation(line: 197, column: 11, scope: !4232)
!4258 = !DILocation(line: 198, column: 9, scope: !4231)
!4259 = !DILocation(line: 0, scope: !4038, inlinedAt: !4260)
!4260 = distinct !DILocation(line: 201, column: 7, scope: !471)
!4261 = !DILocation(line: 85, column: 25, scope: !4038, inlinedAt: !4260)
!4262 = !DILocation(line: 0, scope: !4046, inlinedAt: !4263)
!4263 = distinct !DILocation(line: 85, column: 10, scope: !4038, inlinedAt: !4260)
!4264 = !DILocation(line: 39, column: 8, scope: !4053, inlinedAt: !4263)
!4265 = !DILocation(line: 39, column: 7, scope: !4046, inlinedAt: !4263)
!4266 = !DILocation(line: 40, column: 5, scope: !4053, inlinedAt: !4263)
!4267 = !DILocation(line: 202, column: 7, scope: !471)
!4268 = !DILocation(line: 203, column: 3, scope: !471)
!4269 = !DILocation(line: 0, scope: !483)
!4270 = !DILocation(line: 230, column: 14, scope: !483)
!4271 = !DILocation(line: 238, column: 7, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !483, file: !468, line: 238, column: 7)
!4273 = !DILocation(line: 238, column: 7, scope: !483)
!4274 = !DILocation(line: 240, column: 9, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !483, file: !468, line: 240, column: 7)
!4276 = !DILocation(line: 240, column: 18, scope: !4275)
!4277 = !DILocation(line: 253, column: 8, scope: !483)
!4278 = !DILocation(line: 258, column: 27, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4280, file: !468, line: 257, column: 5)
!4280 = distinct !DILexicalBlock(scope: !483, file: !468, line: 256, column: 7)
!4281 = !DILocation(line: 259, column: 32, scope: !4279)
!4282 = !DILocation(line: 260, column: 5, scope: !4279)
!4283 = !DILocation(line: 262, column: 9, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !483, file: !468, line: 262, column: 7)
!4285 = !DILocation(line: 262, column: 7, scope: !483)
!4286 = !DILocation(line: 263, column: 9, scope: !4284)
!4287 = !DILocation(line: 263, column: 5, scope: !4284)
!4288 = !DILocation(line: 264, column: 9, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !483, file: !468, line: 264, column: 7)
!4290 = !DILocation(line: 264, column: 14, scope: !4289)
!4291 = !DILocation(line: 265, column: 7, scope: !4289)
!4292 = !DILocation(line: 265, column: 11, scope: !4289)
!4293 = !DILocation(line: 266, column: 11, scope: !4289)
!4294 = !DILocation(line: 266, column: 26, scope: !4289)
!4295 = !DILocation(line: 267, column: 14, scope: !4289)
!4296 = !DILocation(line: 264, column: 7, scope: !483)
!4297 = !DILocation(line: 268, column: 5, scope: !4289)
!4298 = !DILocation(line: 0, scope: !4112, inlinedAt: !4299)
!4299 = distinct !DILocation(line: 269, column: 8, scope: !483)
!4300 = !DILocation(line: 0, scope: !4120, inlinedAt: !4301)
!4301 = distinct !DILocation(line: 70, column: 25, scope: !4112, inlinedAt: !4299)
!4302 = !DILocation(line: 2059, column: 24, scope: !4120, inlinedAt: !4301)
!4303 = !DILocation(line: 2059, column: 10, scope: !4120, inlinedAt: !4301)
!4304 = !DILocation(line: 0, scope: !4046, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 70, column: 10, scope: !4112, inlinedAt: !4299)
!4306 = !DILocation(line: 39, column: 8, scope: !4053, inlinedAt: !4305)
!4307 = !DILocation(line: 39, column: 7, scope: !4046, inlinedAt: !4305)
!4308 = !DILocation(line: 40, column: 5, scope: !4053, inlinedAt: !4305)
!4309 = !DILocation(line: 270, column: 7, scope: !483)
!4310 = !DILocation(line: 271, column: 3, scope: !483)
!4311 = distinct !DISubprogram(name: "xzalloc", scope: !468, file: !468, line: 279, type: !4066, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4312)
!4312 = !{!4313}
!4313 = !DILocalVariable(name: "s", arg: 1, scope: !4311, file: !468, line: 279, type: !55)
!4314 = !DILocation(line: 0, scope: !4311)
!4315 = !DILocalVariable(name: "n", arg: 1, scope: !4316, file: !468, line: 294, type: !55)
!4316 = distinct !DISubprogram(name: "xcalloc", scope: !468, file: !468, line: 294, type: !4180, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4317)
!4317 = !{!4315, !4318}
!4318 = !DILocalVariable(name: "s", arg: 2, scope: !4316, file: !468, line: 294, type: !55)
!4319 = !DILocation(line: 0, scope: !4316, inlinedAt: !4320)
!4320 = distinct !DILocation(line: 281, column: 10, scope: !4311)
!4321 = !DILocation(line: 296, column: 25, scope: !4316, inlinedAt: !4320)
!4322 = !DILocation(line: 0, scope: !4046, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 296, column: 10, scope: !4316, inlinedAt: !4320)
!4324 = !DILocation(line: 39, column: 8, scope: !4053, inlinedAt: !4323)
!4325 = !DILocation(line: 39, column: 7, scope: !4046, inlinedAt: !4323)
!4326 = !DILocation(line: 40, column: 5, scope: !4053, inlinedAt: !4323)
!4327 = !DILocation(line: 281, column: 3, scope: !4311)
!4328 = !DILocation(line: 0, scope: !4316)
!4329 = !DILocation(line: 296, column: 25, scope: !4316)
!4330 = !DILocation(line: 0, scope: !4046, inlinedAt: !4331)
!4331 = distinct !DILocation(line: 296, column: 10, scope: !4316)
!4332 = !DILocation(line: 39, column: 8, scope: !4053, inlinedAt: !4331)
!4333 = !DILocation(line: 39, column: 7, scope: !4046, inlinedAt: !4331)
!4334 = !DILocation(line: 40, column: 5, scope: !4053, inlinedAt: !4331)
!4335 = !DILocation(line: 296, column: 3, scope: !4316)
!4336 = distinct !DISubprogram(name: "xizalloc", scope: !468, file: !468, line: 285, type: !4079, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4337)
!4337 = !{!4338}
!4338 = !DILocalVariable(name: "s", arg: 1, scope: !4336, file: !468, line: 285, type: !208)
!4339 = !DILocation(line: 0, scope: !4336)
!4340 = !DILocalVariable(name: "n", arg: 1, scope: !4341, file: !468, line: 300, type: !208)
!4341 = distinct !DISubprogram(name: "xicalloc", scope: !468, file: !468, line: 300, type: !4196, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4342)
!4342 = !{!4340, !4343}
!4343 = !DILocalVariable(name: "s", arg: 2, scope: !4341, file: !468, line: 300, type: !208)
!4344 = !DILocation(line: 0, scope: !4341, inlinedAt: !4345)
!4345 = distinct !DILocation(line: 287, column: 10, scope: !4336)
!4346 = !DILocalVariable(name: "n", arg: 1, scope: !4347, file: !4086, line: 77, type: !208)
!4347 = distinct !DISubprogram(name: "icalloc", scope: !4086, file: !4086, line: 77, type: !4196, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4348)
!4348 = !{!4346, !4349}
!4349 = !DILocalVariable(name: "s", arg: 2, scope: !4347, file: !4086, line: 77, type: !208)
!4350 = !DILocation(line: 0, scope: !4347, inlinedAt: !4351)
!4351 = distinct !DILocation(line: 302, column: 25, scope: !4341, inlinedAt: !4345)
!4352 = !DILocation(line: 91, column: 10, scope: !4347, inlinedAt: !4351)
!4353 = !DILocation(line: 0, scope: !4046, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 302, column: 10, scope: !4341, inlinedAt: !4345)
!4355 = !DILocation(line: 39, column: 8, scope: !4053, inlinedAt: !4354)
!4356 = !DILocation(line: 39, column: 7, scope: !4046, inlinedAt: !4354)
!4357 = !DILocation(line: 40, column: 5, scope: !4053, inlinedAt: !4354)
!4358 = !DILocation(line: 287, column: 3, scope: !4336)
!4359 = !DILocation(line: 0, scope: !4341)
!4360 = !DILocation(line: 0, scope: !4347, inlinedAt: !4361)
!4361 = distinct !DILocation(line: 302, column: 25, scope: !4341)
!4362 = !DILocation(line: 91, column: 10, scope: !4347, inlinedAt: !4361)
!4363 = !DILocation(line: 0, scope: !4046, inlinedAt: !4364)
!4364 = distinct !DILocation(line: 302, column: 10, scope: !4341)
!4365 = !DILocation(line: 39, column: 8, scope: !4053, inlinedAt: !4364)
!4366 = !DILocation(line: 39, column: 7, scope: !4046, inlinedAt: !4364)
!4367 = !DILocation(line: 40, column: 5, scope: !4053, inlinedAt: !4364)
!4368 = !DILocation(line: 302, column: 3, scope: !4341)
!4369 = distinct !DISubprogram(name: "xmemdup", scope: !468, file: !468, line: 310, type: !4370, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4372)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{!52, !764, !55}
!4372 = !{!4373, !4374}
!4373 = !DILocalVariable(name: "p", arg: 1, scope: !4369, file: !468, line: 310, type: !764)
!4374 = !DILocalVariable(name: "s", arg: 2, scope: !4369, file: !468, line: 310, type: !55)
!4375 = !DILocation(line: 0, scope: !4369)
!4376 = !DILocation(line: 0, scope: !4065, inlinedAt: !4377)
!4377 = distinct !DILocation(line: 312, column: 18, scope: !4369)
!4378 = !DILocation(line: 49, column: 25, scope: !4065, inlinedAt: !4377)
!4379 = !DILocation(line: 0, scope: !4046, inlinedAt: !4380)
!4380 = distinct !DILocation(line: 49, column: 10, scope: !4065, inlinedAt: !4377)
!4381 = !DILocation(line: 39, column: 8, scope: !4053, inlinedAt: !4380)
!4382 = !DILocation(line: 39, column: 7, scope: !4046, inlinedAt: !4380)
!4383 = !DILocation(line: 40, column: 5, scope: !4053, inlinedAt: !4380)
!4384 = !DILocalVariable(name: "__dest", arg: 1, scope: !4385, file: !1011, line: 26, type: !1014)
!4385 = distinct !DISubprogram(name: "memcpy", scope: !1011, file: !1011, line: 26, type: !1012, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4386)
!4386 = !{!4384, !4387, !4388}
!4387 = !DILocalVariable(name: "__src", arg: 2, scope: !4385, file: !1011, line: 26, type: !763)
!4388 = !DILocalVariable(name: "__len", arg: 3, scope: !4385, file: !1011, line: 26, type: !55)
!4389 = !DILocation(line: 0, scope: !4385, inlinedAt: !4390)
!4390 = distinct !DILocation(line: 312, column: 10, scope: !4369)
!4391 = !DILocation(line: 29, column: 10, scope: !4385, inlinedAt: !4390)
!4392 = !DILocation(line: 312, column: 3, scope: !4369)
!4393 = distinct !DISubprogram(name: "ximemdup", scope: !468, file: !468, line: 316, type: !4394, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4396)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!52, !764, !208}
!4396 = !{!4397, !4398}
!4397 = !DILocalVariable(name: "p", arg: 1, scope: !4393, file: !468, line: 316, type: !764)
!4398 = !DILocalVariable(name: "s", arg: 2, scope: !4393, file: !468, line: 316, type: !208)
!4399 = !DILocation(line: 0, scope: !4393)
!4400 = !DILocation(line: 0, scope: !4078, inlinedAt: !4401)
!4401 = distinct !DILocation(line: 318, column: 18, scope: !4393)
!4402 = !DILocation(line: 0, scope: !4085, inlinedAt: !4403)
!4403 = distinct !DILocation(line: 55, column: 25, scope: !4078, inlinedAt: !4401)
!4404 = !DILocation(line: 57, column: 26, scope: !4085, inlinedAt: !4403)
!4405 = !DILocation(line: 0, scope: !4046, inlinedAt: !4406)
!4406 = distinct !DILocation(line: 55, column: 10, scope: !4078, inlinedAt: !4401)
!4407 = !DILocation(line: 39, column: 8, scope: !4053, inlinedAt: !4406)
!4408 = !DILocation(line: 39, column: 7, scope: !4046, inlinedAt: !4406)
!4409 = !DILocation(line: 40, column: 5, scope: !4053, inlinedAt: !4406)
!4410 = !DILocation(line: 0, scope: !4385, inlinedAt: !4411)
!4411 = distinct !DILocation(line: 318, column: 10, scope: !4393)
!4412 = !DILocation(line: 29, column: 10, scope: !4385, inlinedAt: !4411)
!4413 = !DILocation(line: 318, column: 3, scope: !4393)
!4414 = distinct !DISubprogram(name: "ximemdup0", scope: !468, file: !468, line: 325, type: !4415, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4417)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!50, !764, !208}
!4417 = !{!4418, !4419, !4420}
!4418 = !DILocalVariable(name: "p", arg: 1, scope: !4414, file: !468, line: 325, type: !764)
!4419 = !DILocalVariable(name: "s", arg: 2, scope: !4414, file: !468, line: 325, type: !208)
!4420 = !DILocalVariable(name: "result", scope: !4414, file: !468, line: 327, type: !50)
!4421 = !DILocation(line: 0, scope: !4414)
!4422 = !DILocation(line: 327, column: 30, scope: !4414)
!4423 = !DILocation(line: 0, scope: !4078, inlinedAt: !4424)
!4424 = distinct !DILocation(line: 327, column: 18, scope: !4414)
!4425 = !DILocation(line: 0, scope: !4085, inlinedAt: !4426)
!4426 = distinct !DILocation(line: 55, column: 25, scope: !4078, inlinedAt: !4424)
!4427 = !DILocation(line: 57, column: 26, scope: !4085, inlinedAt: !4426)
!4428 = !DILocation(line: 0, scope: !4046, inlinedAt: !4429)
!4429 = distinct !DILocation(line: 55, column: 10, scope: !4078, inlinedAt: !4424)
!4430 = !DILocation(line: 39, column: 8, scope: !4053, inlinedAt: !4429)
!4431 = !DILocation(line: 39, column: 7, scope: !4046, inlinedAt: !4429)
!4432 = !DILocation(line: 40, column: 5, scope: !4053, inlinedAt: !4429)
!4433 = !DILocation(line: 328, column: 3, scope: !4414)
!4434 = !DILocation(line: 328, column: 13, scope: !4414)
!4435 = !DILocation(line: 0, scope: !4385, inlinedAt: !4436)
!4436 = distinct !DILocation(line: 329, column: 10, scope: !4414)
!4437 = !DILocation(line: 29, column: 10, scope: !4385, inlinedAt: !4436)
!4438 = !DILocation(line: 329, column: 3, scope: !4414)
!4439 = distinct !DISubprogram(name: "xstrdup", scope: !468, file: !468, line: 335, type: !758, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !4440)
!4440 = !{!4441}
!4441 = !DILocalVariable(name: "string", arg: 1, scope: !4439, file: !468, line: 335, type: !58)
!4442 = !DILocation(line: 0, scope: !4439)
!4443 = !DILocation(line: 337, column: 27, scope: !4439)
!4444 = !DILocation(line: 337, column: 43, scope: !4439)
!4445 = !DILocation(line: 0, scope: !4369, inlinedAt: !4446)
!4446 = distinct !DILocation(line: 337, column: 10, scope: !4439)
!4447 = !DILocation(line: 0, scope: !4065, inlinedAt: !4448)
!4448 = distinct !DILocation(line: 312, column: 18, scope: !4369, inlinedAt: !4446)
!4449 = !DILocation(line: 49, column: 25, scope: !4065, inlinedAt: !4448)
!4450 = !DILocation(line: 0, scope: !4046, inlinedAt: !4451)
!4451 = distinct !DILocation(line: 49, column: 10, scope: !4065, inlinedAt: !4448)
!4452 = !DILocation(line: 39, column: 8, scope: !4053, inlinedAt: !4451)
!4453 = !DILocation(line: 39, column: 7, scope: !4046, inlinedAt: !4451)
!4454 = !DILocation(line: 40, column: 5, scope: !4053, inlinedAt: !4451)
!4455 = !DILocation(line: 0, scope: !4385, inlinedAt: !4456)
!4456 = distinct !DILocation(line: 312, column: 10, scope: !4369, inlinedAt: !4446)
!4457 = !DILocation(line: 29, column: 10, scope: !4385, inlinedAt: !4456)
!4458 = !DILocation(line: 337, column: 3, scope: !4439)
!4459 = distinct !DISubprogram(name: "xalloc_die", scope: !499, file: !499, line: 32, type: !291, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !4460)
!4460 = !{!4461}
!4461 = !DILocalVariable(name: "__errstatus", scope: !4462, file: !499, line: 34, type: !4463)
!4462 = distinct !DILexicalBlock(scope: !4459, file: !499, line: 34, column: 3)
!4463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!4464 = !DILocation(line: 34, column: 3, scope: !4462)
!4465 = !DILocation(line: 0, scope: !4462)
!4466 = !DILocation(line: 40, column: 3, scope: !4459)
!4467 = distinct !DISubprogram(name: "close_stream", scope: !501, file: !501, line: 55, type: !4468, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !4504)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{!53, !4470}
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !133, line: 7, baseType: !4472)
!4472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !135, line: 49, size: 1728, elements: !4473)
!4473 = !{!4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4472, file: !135, line: 51, baseType: !53, size: 32)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4472, file: !135, line: 54, baseType: !50, size: 64, offset: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4472, file: !135, line: 55, baseType: !50, size: 64, offset: 128)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4472, file: !135, line: 56, baseType: !50, size: 64, offset: 192)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4472, file: !135, line: 57, baseType: !50, size: 64, offset: 256)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4472, file: !135, line: 58, baseType: !50, size: 64, offset: 320)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4472, file: !135, line: 59, baseType: !50, size: 64, offset: 384)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4472, file: !135, line: 60, baseType: !50, size: 64, offset: 448)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4472, file: !135, line: 61, baseType: !50, size: 64, offset: 512)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4472, file: !135, line: 64, baseType: !50, size: 64, offset: 576)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4472, file: !135, line: 65, baseType: !50, size: 64, offset: 640)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4472, file: !135, line: 66, baseType: !50, size: 64, offset: 704)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4472, file: !135, line: 68, baseType: !150, size: 64, offset: 768)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4472, file: !135, line: 70, baseType: !4488, size: 64, offset: 832)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4472, file: !135, line: 72, baseType: !53, size: 32, offset: 896)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4472, file: !135, line: 73, baseType: !53, size: 32, offset: 928)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4472, file: !135, line: 74, baseType: !157, size: 64, offset: 960)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4472, file: !135, line: 77, baseType: !54, size: 16, offset: 1024)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4472, file: !135, line: 78, baseType: !161, size: 8, offset: 1040)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4472, file: !135, line: 79, baseType: !163, size: 8, offset: 1048)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4472, file: !135, line: 81, baseType: !165, size: 64, offset: 1088)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4472, file: !135, line: 89, baseType: !168, size: 64, offset: 1152)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4472, file: !135, line: 91, baseType: !170, size: 64, offset: 1216)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4472, file: !135, line: 92, baseType: !173, size: 64, offset: 1280)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4472, file: !135, line: 93, baseType: !4488, size: 64, offset: 1344)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4472, file: !135, line: 94, baseType: !52, size: 64, offset: 1408)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4472, file: !135, line: 95, baseType: !55, size: 64, offset: 1472)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4472, file: !135, line: 96, baseType: !53, size: 32, offset: 1536)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4472, file: !135, line: 98, baseType: !180, size: 160, offset: 1568)
!4504 = !{!4505, !4506, !4508, !4509}
!4505 = !DILocalVariable(name: "stream", arg: 1, scope: !4467, file: !501, line: 55, type: !4470)
!4506 = !DILocalVariable(name: "some_pending", scope: !4467, file: !501, line: 57, type: !4507)
!4507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!4508 = !DILocalVariable(name: "prev_fail", scope: !4467, file: !501, line: 58, type: !4507)
!4509 = !DILocalVariable(name: "fclose_fail", scope: !4467, file: !501, line: 59, type: !4507)
!4510 = !DILocation(line: 0, scope: !4467)
!4511 = !DILocation(line: 57, column: 30, scope: !4467)
!4512 = !DILocalVariable(name: "__stream", arg: 1, scope: !4513, file: !2241, line: 135, type: !4470)
!4513 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2241, file: !2241, line: 135, type: !4468, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !4514)
!4514 = !{!4512}
!4515 = !DILocation(line: 0, scope: !4513, inlinedAt: !4516)
!4516 = distinct !DILocation(line: 58, column: 27, scope: !4467)
!4517 = !DILocation(line: 137, column: 10, scope: !4513, inlinedAt: !4516)
!4518 = !{!2250, !647, i64 0}
!4519 = !DILocation(line: 58, column: 43, scope: !4467)
!4520 = !DILocation(line: 59, column: 29, scope: !4467)
!4521 = !DILocation(line: 59, column: 45, scope: !4467)
!4522 = !DILocation(line: 69, column: 17, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4467, file: !501, line: 69, column: 7)
!4524 = !DILocation(line: 57, column: 50, scope: !4467)
!4525 = !DILocation(line: 69, column: 33, scope: !4523)
!4526 = !DILocation(line: 69, column: 53, scope: !4523)
!4527 = !DILocation(line: 69, column: 59, scope: !4523)
!4528 = !DILocation(line: 69, column: 7, scope: !4467)
!4529 = !DILocation(line: 71, column: 11, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4523, file: !501, line: 70, column: 5)
!4531 = !DILocation(line: 72, column: 9, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4530, file: !501, line: 71, column: 11)
!4533 = !DILocation(line: 72, column: 15, scope: !4532)
!4534 = !DILocation(line: 77, column: 1, scope: !4467)
!4535 = distinct !DISubprogram(name: "rpl_fclose", scope: !503, file: !503, line: 58, type: !4536, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !4572)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!53, !4538}
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !133, line: 7, baseType: !4540)
!4540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !135, line: 49, size: 1728, elements: !4541)
!4541 = !{!4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4540, file: !135, line: 51, baseType: !53, size: 32)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4540, file: !135, line: 54, baseType: !50, size: 64, offset: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4540, file: !135, line: 55, baseType: !50, size: 64, offset: 128)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4540, file: !135, line: 56, baseType: !50, size: 64, offset: 192)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4540, file: !135, line: 57, baseType: !50, size: 64, offset: 256)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4540, file: !135, line: 58, baseType: !50, size: 64, offset: 320)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4540, file: !135, line: 59, baseType: !50, size: 64, offset: 384)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4540, file: !135, line: 60, baseType: !50, size: 64, offset: 448)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4540, file: !135, line: 61, baseType: !50, size: 64, offset: 512)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4540, file: !135, line: 64, baseType: !50, size: 64, offset: 576)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4540, file: !135, line: 65, baseType: !50, size: 64, offset: 640)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4540, file: !135, line: 66, baseType: !50, size: 64, offset: 704)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4540, file: !135, line: 68, baseType: !150, size: 64, offset: 768)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4540, file: !135, line: 70, baseType: !4556, size: 64, offset: 832)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4540, file: !135, line: 72, baseType: !53, size: 32, offset: 896)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4540, file: !135, line: 73, baseType: !53, size: 32, offset: 928)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4540, file: !135, line: 74, baseType: !157, size: 64, offset: 960)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4540, file: !135, line: 77, baseType: !54, size: 16, offset: 1024)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4540, file: !135, line: 78, baseType: !161, size: 8, offset: 1040)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4540, file: !135, line: 79, baseType: !163, size: 8, offset: 1048)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4540, file: !135, line: 81, baseType: !165, size: 64, offset: 1088)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4540, file: !135, line: 89, baseType: !168, size: 64, offset: 1152)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4540, file: !135, line: 91, baseType: !170, size: 64, offset: 1216)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4540, file: !135, line: 92, baseType: !173, size: 64, offset: 1280)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4540, file: !135, line: 93, baseType: !4556, size: 64, offset: 1344)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4540, file: !135, line: 94, baseType: !52, size: 64, offset: 1408)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4540, file: !135, line: 95, baseType: !55, size: 64, offset: 1472)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4540, file: !135, line: 96, baseType: !53, size: 32, offset: 1536)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4540, file: !135, line: 98, baseType: !180, size: 160, offset: 1568)
!4572 = !{!4573, !4574, !4575, !4576}
!4573 = !DILocalVariable(name: "fp", arg: 1, scope: !4535, file: !503, line: 58, type: !4538)
!4574 = !DILocalVariable(name: "saved_errno", scope: !4535, file: !503, line: 60, type: !53)
!4575 = !DILocalVariable(name: "fd", scope: !4535, file: !503, line: 63, type: !53)
!4576 = !DILocalVariable(name: "result", scope: !4535, file: !503, line: 74, type: !53)
!4577 = !DILocation(line: 0, scope: !4535)
!4578 = !DILocation(line: 63, column: 12, scope: !4535)
!4579 = !DILocation(line: 64, column: 10, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4535, file: !503, line: 64, column: 7)
!4581 = !DILocation(line: 64, column: 7, scope: !4535)
!4582 = !DILocation(line: 65, column: 12, scope: !4580)
!4583 = !DILocation(line: 65, column: 5, scope: !4580)
!4584 = !DILocation(line: 70, column: 9, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4535, file: !503, line: 70, column: 7)
!4586 = !DILocation(line: 70, column: 23, scope: !4585)
!4587 = !DILocation(line: 70, column: 33, scope: !4585)
!4588 = !DILocation(line: 70, column: 26, scope: !4585)
!4589 = !DILocation(line: 70, column: 59, scope: !4585)
!4590 = !DILocation(line: 71, column: 7, scope: !4585)
!4591 = !DILocation(line: 71, column: 10, scope: !4585)
!4592 = !DILocation(line: 70, column: 7, scope: !4535)
!4593 = !DILocation(line: 100, column: 12, scope: !4535)
!4594 = !DILocation(line: 105, column: 7, scope: !4535)
!4595 = !DILocation(line: 72, column: 19, scope: !4585)
!4596 = !DILocation(line: 105, column: 19, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4535, file: !503, line: 105, column: 7)
!4598 = !DILocation(line: 107, column: 13, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4597, file: !503, line: 106, column: 5)
!4600 = !DILocation(line: 109, column: 5, scope: !4599)
!4601 = !DILocation(line: 112, column: 1, scope: !4535)
!4602 = !DISubprogram(name: "fileno", scope: !264, file: !264, line: 809, type: !4536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!4603 = !DISubprogram(name: "fclose", scope: !264, file: !264, line: 178, type: !4536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!4604 = !DISubprogram(name: "lseek", scope: !1881, file: !1881, line: 339, type: !4605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!157, !53, !157, !53}
!4607 = distinct !DISubprogram(name: "rpl_fflush", scope: !505, file: !505, line: 130, type: !4608, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !504, retainedNodes: !4644)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!53, !4610}
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !133, line: 7, baseType: !4612)
!4612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !135, line: 49, size: 1728, elements: !4613)
!4613 = !{!4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4612, file: !135, line: 51, baseType: !53, size: 32)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4612, file: !135, line: 54, baseType: !50, size: 64, offset: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4612, file: !135, line: 55, baseType: !50, size: 64, offset: 128)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4612, file: !135, line: 56, baseType: !50, size: 64, offset: 192)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4612, file: !135, line: 57, baseType: !50, size: 64, offset: 256)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4612, file: !135, line: 58, baseType: !50, size: 64, offset: 320)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4612, file: !135, line: 59, baseType: !50, size: 64, offset: 384)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4612, file: !135, line: 60, baseType: !50, size: 64, offset: 448)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4612, file: !135, line: 61, baseType: !50, size: 64, offset: 512)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4612, file: !135, line: 64, baseType: !50, size: 64, offset: 576)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4612, file: !135, line: 65, baseType: !50, size: 64, offset: 640)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4612, file: !135, line: 66, baseType: !50, size: 64, offset: 704)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4612, file: !135, line: 68, baseType: !150, size: 64, offset: 768)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4612, file: !135, line: 70, baseType: !4628, size: 64, offset: 832)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4612, file: !135, line: 72, baseType: !53, size: 32, offset: 896)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4612, file: !135, line: 73, baseType: !53, size: 32, offset: 928)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4612, file: !135, line: 74, baseType: !157, size: 64, offset: 960)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4612, file: !135, line: 77, baseType: !54, size: 16, offset: 1024)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4612, file: !135, line: 78, baseType: !161, size: 8, offset: 1040)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4612, file: !135, line: 79, baseType: !163, size: 8, offset: 1048)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4612, file: !135, line: 81, baseType: !165, size: 64, offset: 1088)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4612, file: !135, line: 89, baseType: !168, size: 64, offset: 1152)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4612, file: !135, line: 91, baseType: !170, size: 64, offset: 1216)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4612, file: !135, line: 92, baseType: !173, size: 64, offset: 1280)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4612, file: !135, line: 93, baseType: !4628, size: 64, offset: 1344)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4612, file: !135, line: 94, baseType: !52, size: 64, offset: 1408)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4612, file: !135, line: 95, baseType: !55, size: 64, offset: 1472)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4612, file: !135, line: 96, baseType: !53, size: 32, offset: 1536)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4612, file: !135, line: 98, baseType: !180, size: 160, offset: 1568)
!4644 = !{!4645}
!4645 = !DILocalVariable(name: "stream", arg: 1, scope: !4607, file: !505, line: 130, type: !4610)
!4646 = !DILocation(line: 0, scope: !4607)
!4647 = !DILocation(line: 151, column: 14, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4607, file: !505, line: 151, column: 7)
!4649 = !DILocation(line: 151, column: 22, scope: !4648)
!4650 = !DILocation(line: 151, column: 27, scope: !4648)
!4651 = !DILocation(line: 151, column: 7, scope: !4607)
!4652 = !DILocation(line: 152, column: 12, scope: !4648)
!4653 = !DILocation(line: 152, column: 5, scope: !4648)
!4654 = !DILocalVariable(name: "fp", arg: 1, scope: !4655, file: !505, line: 42, type: !4610)
!4655 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !505, file: !505, line: 42, type: !4656, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !504, retainedNodes: !4658)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{null, !4610}
!4658 = !{!4654}
!4659 = !DILocation(line: 0, scope: !4655, inlinedAt: !4660)
!4660 = distinct !DILocation(line: 157, column: 3, scope: !4607)
!4661 = !DILocation(line: 44, column: 12, scope: !4662, inlinedAt: !4660)
!4662 = distinct !DILexicalBlock(scope: !4655, file: !505, line: 44, column: 7)
!4663 = !DILocation(line: 44, column: 19, scope: !4662, inlinedAt: !4660)
!4664 = !DILocation(line: 44, column: 7, scope: !4655, inlinedAt: !4660)
!4665 = !DILocation(line: 46, column: 5, scope: !4662, inlinedAt: !4660)
!4666 = !DILocation(line: 159, column: 10, scope: !4607)
!4667 = !DILocation(line: 159, column: 3, scope: !4607)
!4668 = !DILocation(line: 236, column: 1, scope: !4607)
!4669 = !DISubprogram(name: "fflush", scope: !264, file: !264, line: 230, type: !4608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!4670 = distinct !DISubprogram(name: "rpl_fseeko", scope: !507, file: !507, line: 28, type: !4671, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !4708)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!53, !4673, !4707, !53}
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !133, line: 7, baseType: !4675)
!4675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !135, line: 49, size: 1728, elements: !4676)
!4676 = !{!4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4675, file: !135, line: 51, baseType: !53, size: 32)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4675, file: !135, line: 54, baseType: !50, size: 64, offset: 64)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4675, file: !135, line: 55, baseType: !50, size: 64, offset: 128)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4675, file: !135, line: 56, baseType: !50, size: 64, offset: 192)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4675, file: !135, line: 57, baseType: !50, size: 64, offset: 256)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4675, file: !135, line: 58, baseType: !50, size: 64, offset: 320)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4675, file: !135, line: 59, baseType: !50, size: 64, offset: 384)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4675, file: !135, line: 60, baseType: !50, size: 64, offset: 448)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4675, file: !135, line: 61, baseType: !50, size: 64, offset: 512)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4675, file: !135, line: 64, baseType: !50, size: 64, offset: 576)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4675, file: !135, line: 65, baseType: !50, size: 64, offset: 640)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4675, file: !135, line: 66, baseType: !50, size: 64, offset: 704)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4675, file: !135, line: 68, baseType: !150, size: 64, offset: 768)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4675, file: !135, line: 70, baseType: !4691, size: 64, offset: 832)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4675, file: !135, line: 72, baseType: !53, size: 32, offset: 896)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4675, file: !135, line: 73, baseType: !53, size: 32, offset: 928)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4675, file: !135, line: 74, baseType: !157, size: 64, offset: 960)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4675, file: !135, line: 77, baseType: !54, size: 16, offset: 1024)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4675, file: !135, line: 78, baseType: !161, size: 8, offset: 1040)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4675, file: !135, line: 79, baseType: !163, size: 8, offset: 1048)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4675, file: !135, line: 81, baseType: !165, size: 64, offset: 1088)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4675, file: !135, line: 89, baseType: !168, size: 64, offset: 1152)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4675, file: !135, line: 91, baseType: !170, size: 64, offset: 1216)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4675, file: !135, line: 92, baseType: !173, size: 64, offset: 1280)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4675, file: !135, line: 93, baseType: !4691, size: 64, offset: 1344)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4675, file: !135, line: 94, baseType: !52, size: 64, offset: 1408)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4675, file: !135, line: 95, baseType: !55, size: 64, offset: 1472)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4675, file: !135, line: 96, baseType: !53, size: 32, offset: 1536)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4675, file: !135, line: 98, baseType: !180, size: 160, offset: 1568)
!4707 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !264, line: 63, baseType: !157)
!4708 = !{!4709, !4710, !4711, !4712}
!4709 = !DILocalVariable(name: "fp", arg: 1, scope: !4670, file: !507, line: 28, type: !4673)
!4710 = !DILocalVariable(name: "offset", arg: 2, scope: !4670, file: !507, line: 28, type: !4707)
!4711 = !DILocalVariable(name: "whence", arg: 3, scope: !4670, file: !507, line: 28, type: !53)
!4712 = !DILocalVariable(name: "pos", scope: !4713, file: !507, line: 123, type: !4707)
!4713 = distinct !DILexicalBlock(scope: !4714, file: !507, line: 119, column: 5)
!4714 = distinct !DILexicalBlock(scope: !4670, file: !507, line: 55, column: 7)
!4715 = !DILocation(line: 0, scope: !4670)
!4716 = !DILocation(line: 55, column: 12, scope: !4714)
!4717 = !{!2250, !539, i64 16}
!4718 = !DILocation(line: 55, column: 33, scope: !4714)
!4719 = !{!2250, !539, i64 8}
!4720 = !DILocation(line: 55, column: 25, scope: !4714)
!4721 = !DILocation(line: 56, column: 7, scope: !4714)
!4722 = !DILocation(line: 56, column: 15, scope: !4714)
!4723 = !DILocation(line: 56, column: 37, scope: !4714)
!4724 = !{!2250, !539, i64 32}
!4725 = !DILocation(line: 56, column: 29, scope: !4714)
!4726 = !DILocation(line: 57, column: 7, scope: !4714)
!4727 = !DILocation(line: 57, column: 15, scope: !4714)
!4728 = !{!2250, !539, i64 72}
!4729 = !DILocation(line: 57, column: 29, scope: !4714)
!4730 = !DILocation(line: 55, column: 7, scope: !4670)
!4731 = !DILocation(line: 123, column: 26, scope: !4713)
!4732 = !DILocation(line: 123, column: 19, scope: !4713)
!4733 = !DILocation(line: 0, scope: !4713)
!4734 = !DILocation(line: 124, column: 15, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4713, file: !507, line: 124, column: 11)
!4736 = !DILocation(line: 124, column: 11, scope: !4713)
!4737 = !DILocation(line: 135, column: 12, scope: !4713)
!4738 = !DILocation(line: 135, column: 19, scope: !4713)
!4739 = !DILocation(line: 136, column: 12, scope: !4713)
!4740 = !DILocation(line: 136, column: 20, scope: !4713)
!4741 = !{!2250, !809, i64 144}
!4742 = !DILocation(line: 167, column: 7, scope: !4713)
!4743 = !DILocation(line: 169, column: 10, scope: !4670)
!4744 = !DILocation(line: 169, column: 3, scope: !4670)
!4745 = !DILocation(line: 170, column: 1, scope: !4670)
!4746 = !DISubprogram(name: "fseeko", scope: !264, file: !264, line: 736, type: !4747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!53, !4673, !157, !53}
!4749 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !441, file: !441, line: 100, type: !4750, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !4753)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!55, !2408, !58, !55, !4752}
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!4753 = !{!4754, !4755, !4756, !4757, !4758}
!4754 = !DILocalVariable(name: "pwc", arg: 1, scope: !4749, file: !441, line: 100, type: !2408)
!4755 = !DILocalVariable(name: "s", arg: 2, scope: !4749, file: !441, line: 100, type: !58)
!4756 = !DILocalVariable(name: "n", arg: 3, scope: !4749, file: !441, line: 100, type: !55)
!4757 = !DILocalVariable(name: "ps", arg: 4, scope: !4749, file: !441, line: 100, type: !4752)
!4758 = !DILocalVariable(name: "ret", scope: !4749, file: !441, line: 130, type: !55)
!4759 = !DILocation(line: 0, scope: !4749)
!4760 = !DILocation(line: 105, column: 9, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4749, file: !441, line: 105, column: 7)
!4762 = !DILocation(line: 105, column: 7, scope: !4749)
!4763 = !DILocation(line: 117, column: 10, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4749, file: !441, line: 117, column: 7)
!4765 = !DILocation(line: 117, column: 7, scope: !4749)
!4766 = !DILocation(line: 130, column: 16, scope: !4749)
!4767 = !DILocation(line: 135, column: 11, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4749, file: !441, line: 135, column: 7)
!4769 = !DILocation(line: 135, column: 25, scope: !4768)
!4770 = !DILocation(line: 135, column: 30, scope: !4768)
!4771 = !DILocation(line: 135, column: 7, scope: !4749)
!4772 = !DILocalVariable(name: "ps", arg: 1, scope: !4773, file: !2382, line: 1135, type: !4752)
!4773 = distinct !DISubprogram(name: "mbszero", scope: !2382, file: !2382, line: 1135, type: !4774, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !4776)
!4774 = !DISubroutineType(types: !4775)
!4775 = !{null, !4752}
!4776 = !{!4772}
!4777 = !DILocation(line: 0, scope: !4773, inlinedAt: !4778)
!4778 = distinct !DILocation(line: 137, column: 5, scope: !4768)
!4779 = !DILocalVariable(name: "__dest", arg: 1, scope: !4780, file: !1011, line: 57, type: !52)
!4780 = distinct !DISubprogram(name: "memset", scope: !1011, file: !1011, line: 57, type: !2391, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !4781)
!4781 = !{!4779, !4782, !4783}
!4782 = !DILocalVariable(name: "__ch", arg: 2, scope: !4780, file: !1011, line: 57, type: !53)
!4783 = !DILocalVariable(name: "__len", arg: 3, scope: !4780, file: !1011, line: 57, type: !55)
!4784 = !DILocation(line: 0, scope: !4780, inlinedAt: !4785)
!4785 = distinct !DILocation(line: 1137, column: 3, scope: !4773, inlinedAt: !4778)
!4786 = !DILocation(line: 59, column: 10, scope: !4780, inlinedAt: !4785)
!4787 = !DILocation(line: 137, column: 5, scope: !4768)
!4788 = !DILocation(line: 138, column: 11, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4749, file: !441, line: 138, column: 7)
!4790 = !DILocation(line: 138, column: 7, scope: !4749)
!4791 = !DILocation(line: 139, column: 5, scope: !4789)
!4792 = !DILocation(line: 143, column: 26, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4749, file: !441, line: 143, column: 7)
!4794 = !DILocation(line: 143, column: 41, scope: !4793)
!4795 = !DILocation(line: 143, column: 7, scope: !4749)
!4796 = !DILocation(line: 145, column: 15, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4798, file: !441, line: 145, column: 11)
!4798 = distinct !DILexicalBlock(scope: !4793, file: !441, line: 144, column: 5)
!4799 = !DILocation(line: 145, column: 11, scope: !4798)
!4800 = !DILocation(line: 146, column: 32, scope: !4797)
!4801 = !DILocation(line: 146, column: 16, scope: !4797)
!4802 = !DILocation(line: 146, column: 14, scope: !4797)
!4803 = !DILocation(line: 146, column: 9, scope: !4797)
!4804 = !DILocation(line: 286, column: 1, scope: !4749)
!4805 = !DISubprogram(name: "mbsinit", scope: !4806, file: !4806, line: 293, type: !4807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !547)
!4806 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!53, !4809}
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!4811 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !509, file: !509, line: 27, type: !4030, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !4812)
!4812 = !{!4813, !4814, !4815, !4816}
!4813 = !DILocalVariable(name: "ptr", arg: 1, scope: !4811, file: !509, line: 27, type: !52)
!4814 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4811, file: !509, line: 27, type: !55)
!4815 = !DILocalVariable(name: "size", arg: 3, scope: !4811, file: !509, line: 27, type: !55)
!4816 = !DILocalVariable(name: "nbytes", scope: !4811, file: !509, line: 29, type: !55)
!4817 = !DILocation(line: 0, scope: !4811)
!4818 = !DILocation(line: 30, column: 7, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4811, file: !509, line: 30, column: 7)
!4820 = !DILocalVariable(name: "ptr", arg: 1, scope: !4821, file: !4121, line: 2057, type: !52)
!4821 = distinct !DISubprogram(name: "rpl_realloc", scope: !4121, file: !4121, line: 2057, type: !4113, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !4822)
!4822 = !{!4820, !4823}
!4823 = !DILocalVariable(name: "size", arg: 2, scope: !4821, file: !4121, line: 2057, type: !55)
!4824 = !DILocation(line: 0, scope: !4821, inlinedAt: !4825)
!4825 = distinct !DILocation(line: 37, column: 10, scope: !4811)
!4826 = !DILocation(line: 2059, column: 24, scope: !4821, inlinedAt: !4825)
!4827 = !DILocation(line: 2059, column: 10, scope: !4821, inlinedAt: !4825)
!4828 = !DILocation(line: 37, column: 3, scope: !4811)
!4829 = !DILocation(line: 32, column: 7, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4819, file: !509, line: 31, column: 5)
!4831 = !DILocation(line: 32, column: 13, scope: !4830)
!4832 = !DILocation(line: 33, column: 7, scope: !4830)
!4833 = !DILocation(line: 38, column: 1, scope: !4811)
!4834 = distinct !DISubprogram(name: "hard_locale", scope: !512, file: !512, line: 28, type: !977, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !4835)
!4835 = !{!4836, !4837}
!4836 = !DILocalVariable(name: "category", arg: 1, scope: !4834, file: !512, line: 28, type: !53)
!4837 = !DILocalVariable(name: "locale", scope: !4834, file: !512, line: 30, type: !4838)
!4838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 2056, elements: !4839)
!4839 = !{!4840}
!4840 = !DISubrange(count: 257)
!4841 = !DILocation(line: 0, scope: !4834)
!4842 = !DILocation(line: 30, column: 3, scope: !4834)
!4843 = !DILocation(line: 30, column: 8, scope: !4834)
!4844 = !DILocation(line: 32, column: 7, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4834, file: !512, line: 32, column: 7)
!4846 = !DILocation(line: 32, column: 7, scope: !4834)
!4847 = !DILocalVariable(name: "__s1", arg: 1, scope: !4848, file: !597, line: 1359, type: !58)
!4848 = distinct !DISubprogram(name: "streq", scope: !597, file: !597, line: 1359, type: !598, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !4849)
!4849 = !{!4847, !4850}
!4850 = !DILocalVariable(name: "__s2", arg: 2, scope: !4848, file: !597, line: 1359, type: !58)
!4851 = !DILocation(line: 0, scope: !4848, inlinedAt: !4852)
!4852 = distinct !DILocation(line: 35, column: 9, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4834, file: !512, line: 35, column: 7)
!4854 = !DILocation(line: 1361, column: 11, scope: !4848, inlinedAt: !4852)
!4855 = !DILocation(line: 1361, column: 10, scope: !4848, inlinedAt: !4852)
!4856 = !DILocation(line: 35, column: 29, scope: !4853)
!4857 = !DILocation(line: 0, scope: !4848, inlinedAt: !4858)
!4858 = distinct !DILocation(line: 35, column: 32, scope: !4853)
!4859 = !DILocation(line: 1361, column: 11, scope: !4848, inlinedAt: !4858)
!4860 = !DILocation(line: 1361, column: 10, scope: !4848, inlinedAt: !4858)
!4861 = !DILocation(line: 35, column: 7, scope: !4834)
!4862 = !DILocation(line: 46, column: 3, scope: !4834)
!4863 = !DILocation(line: 47, column: 1, scope: !4834)
!4864 = distinct !DISubprogram(name: "setlocale_null_r", scope: !514, file: !514, line: 154, type: !4865, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4867)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{!53, !53, !50, !55}
!4867 = !{!4868, !4869, !4870}
!4868 = !DILocalVariable(name: "category", arg: 1, scope: !4864, file: !514, line: 154, type: !53)
!4869 = !DILocalVariable(name: "buf", arg: 2, scope: !4864, file: !514, line: 154, type: !50)
!4870 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4864, file: !514, line: 154, type: !55)
!4871 = !DILocation(line: 0, scope: !4864)
!4872 = !DILocation(line: 159, column: 10, scope: !4864)
!4873 = !DILocation(line: 159, column: 3, scope: !4864)
!4874 = distinct !DISubprogram(name: "setlocale_null", scope: !514, file: !514, line: 186, type: !4875, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4877)
!4875 = !DISubroutineType(types: !4876)
!4876 = !{!58, !53}
!4877 = !{!4878}
!4878 = !DILocalVariable(name: "category", arg: 1, scope: !4874, file: !514, line: 186, type: !53)
!4879 = !DILocation(line: 0, scope: !4874)
!4880 = !DILocation(line: 189, column: 10, scope: !4874)
!4881 = !DILocation(line: 189, column: 3, scope: !4874)
!4882 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !516, file: !516, line: 35, type: !4875, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4883)
!4883 = !{!4884, !4885}
!4884 = !DILocalVariable(name: "category", arg: 1, scope: !4882, file: !516, line: 35, type: !53)
!4885 = !DILocalVariable(name: "result", scope: !4882, file: !516, line: 37, type: !58)
!4886 = !DILocation(line: 0, scope: !4882)
!4887 = !DILocation(line: 37, column: 24, scope: !4882)
!4888 = !DILocation(line: 62, column: 3, scope: !4882)
!4889 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !516, file: !516, line: 66, type: !4865, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4890)
!4890 = !{!4891, !4892, !4893, !4894, !4895}
!4891 = !DILocalVariable(name: "category", arg: 1, scope: !4889, file: !516, line: 66, type: !53)
!4892 = !DILocalVariable(name: "buf", arg: 2, scope: !4889, file: !516, line: 66, type: !50)
!4893 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4889, file: !516, line: 66, type: !55)
!4894 = !DILocalVariable(name: "result", scope: !4889, file: !516, line: 111, type: !58)
!4895 = !DILocalVariable(name: "length", scope: !4896, file: !516, line: 125, type: !55)
!4896 = distinct !DILexicalBlock(scope: !4897, file: !516, line: 124, column: 5)
!4897 = distinct !DILexicalBlock(scope: !4889, file: !516, line: 113, column: 7)
!4898 = !DILocation(line: 0, scope: !4889)
!4899 = !DILocation(line: 0, scope: !4882, inlinedAt: !4900)
!4900 = distinct !DILocation(line: 111, column: 24, scope: !4889)
!4901 = !DILocation(line: 37, column: 24, scope: !4882, inlinedAt: !4900)
!4902 = !DILocation(line: 113, column: 14, scope: !4897)
!4903 = !DILocation(line: 113, column: 7, scope: !4889)
!4904 = !DILocation(line: 116, column: 19, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4906, file: !516, line: 116, column: 11)
!4906 = distinct !DILexicalBlock(scope: !4897, file: !516, line: 114, column: 5)
!4907 = !DILocation(line: 116, column: 11, scope: !4906)
!4908 = !DILocation(line: 120, column: 16, scope: !4905)
!4909 = !DILocation(line: 120, column: 9, scope: !4905)
!4910 = !DILocation(line: 125, column: 23, scope: !4896)
!4911 = !DILocation(line: 0, scope: !4896)
!4912 = !DILocation(line: 126, column: 18, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4896, file: !516, line: 126, column: 11)
!4914 = !DILocation(line: 126, column: 11, scope: !4896)
!4915 = !DILocation(line: 128, column: 39, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4913, file: !516, line: 127, column: 9)
!4917 = !DILocalVariable(name: "__dest", arg: 1, scope: !4918, file: !1011, line: 26, type: !1014)
!4918 = distinct !DISubprogram(name: "memcpy", scope: !1011, file: !1011, line: 26, type: !1012, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4919)
!4919 = !{!4917, !4920, !4921}
!4920 = !DILocalVariable(name: "__src", arg: 2, scope: !4918, file: !1011, line: 26, type: !763)
!4921 = !DILocalVariable(name: "__len", arg: 3, scope: !4918, file: !1011, line: 26, type: !55)
!4922 = !DILocation(line: 0, scope: !4918, inlinedAt: !4923)
!4923 = distinct !DILocation(line: 128, column: 11, scope: !4916)
!4924 = !DILocation(line: 29, column: 10, scope: !4918, inlinedAt: !4923)
!4925 = !DILocation(line: 129, column: 11, scope: !4916)
!4926 = !DILocation(line: 133, column: 23, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4928, file: !516, line: 133, column: 15)
!4928 = distinct !DILexicalBlock(scope: !4913, file: !516, line: 132, column: 9)
!4929 = !DILocation(line: 133, column: 15, scope: !4928)
!4930 = !DILocation(line: 138, column: 44, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4927, file: !516, line: 134, column: 13)
!4932 = !DILocation(line: 0, scope: !4918, inlinedAt: !4933)
!4933 = distinct !DILocation(line: 138, column: 15, scope: !4931)
!4934 = !DILocation(line: 29, column: 10, scope: !4918, inlinedAt: !4933)
!4935 = !DILocation(line: 139, column: 15, scope: !4931)
!4936 = !DILocation(line: 139, column: 32, scope: !4931)
!4937 = !DILocation(line: 140, column: 13, scope: !4931)
!4938 = !DILocation(line: 0, scope: !4897)
!4939 = !DILocation(line: 145, column: 1, scope: !4889)
